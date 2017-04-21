library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity data16_multi_to_ram_top is
	generic (
		DATA_FORMAT : string := "signed";
		SEL_IN_SIZE : natural := 3;
		MAX_WAY : natural := 4;
		NB_WAY : natural := 4;
		INPUT_SIZE : natural := 32;
		DATA_SIZE : natural := 16;
		ADDR_SIZE : natural := 12
	);
	port (
		cpu_clk_i : in std_logic;
		rst_i : in std_logic;
		-- Syscon signals
		processing1_clk_i       : in std_logic;
		processing2_clk_i       : in std_logic;
		processing3_clk_i       : in std_logic;
		processing4_clk_i       : in std_logic;
		processing5_clk_i       : in std_logic;
		processing6_clk_i       : in std_logic;
		processing7_clk_i       : in std_logic;
		processing8_clk_i       : in std_logic;
		processing9_clk_i       : in std_logic;
		processing10_clk_i      : in std_logic;
		processing11_clk_i      : in std_logic;
		processing12_clk_i      : in std_logic;
		processing_rst_i 	    : in std_logic_vector(MAX_WAY-1 downto 0);
		--communication signals
		--config
		start_acquisition_i : std_logic;
		busy_o : out std_logic;
		busy_all_o : out std_logic_vector(NB_WAY-1 downto 0);
		-- results
		res_o : out std_logic_vector((2*DATA_SIZE)-1 downto 0);
		result_addr_i : in std_logic_vector(ADDR_SIZE-1 downto 0);
		ram_select_input_i : in std_logic_vector(SEL_IN_SIZE-1 downto 0);
		-- input
		data_i : in std_logic_vector((MAX_WAY*INPUT_SIZE)-1 downto 0);
		data1_en_i : in std_logic;
		data2_en_i : in std_logic;
		data3_en_i : in std_logic;
		data4_en_i : in std_logic;
		data5_en_i : in std_logic;
		data6_en_i : in std_logic;
		data7_en_i : in std_logic;
		data8_en_i : in std_logic;
		data9_en_i : in std_logic;
		data10_en_i : in std_logic;
		data11_en_i : in std_logic;
		data12_en_i : in std_logic;
		data1_eof_i : in std_logic;
		data2_eof_i : in std_logic;
		data3_eof_i : in std_logic;
		data4_eof_i : in std_logic;
		data5_eof_i : in std_logic;
		data6_eof_i : in std_logic;
		data7_eof_i : in std_logic;
		data8_eof_i : in std_logic;
		data9_eof_i : in std_logic;
		data10_eof_i : in std_logic;
		data11_eof_i : in std_logic;
		data12_eof_i : in std_logic
	);
end data16_multi_to_ram_top;

architecture Behavioral of data16_multi_to_ram_top is
	signal busy_s : std_logic_vector(NB_WAY-1 downto 0);
	signal processing_clk_s: std_logic_vector(NB_WAY-1 downto 0);
	signal data_en_s : std_logic_vector(NB_WAY-1 downto 0);
	signal data_eof_s : std_logic_vector(NB_WAY-1 downto 0);
	signal res_out_s : std_logic_vector((2*DATA_SIZE)-1 downto 0);
	type res_tab is array (natural range <>) of std_logic_vector(DATA_SIZE-1 downto 0);
	signal res_s : res_tab(NB_WAY-1 downto 0);
	signal ram_select_input_s : std_logic_vector(SEL_IN_SIZE downto 0);
begin
	ram_select_input_s <= ram_select_input_i&'0';

	res_o <= res_out_s;

	busy_all_o <= busy_s;
	busy_o <= '0' when busy_s = (NB_WAY-1 downto 0 => '0') else '1'; 

	subtop_loop : for i in 0 to NB_WAY-1 generate
		data_subtop_inst : entity work.data16_multi_to_ram_subtop
		generic map(DATA_SIZE => DATA_SIZE, ADDR_SIZE => ADDR_SIZE,
			DATA_FORMAT => DATA_FORMAT, INPUT_SIZE => INPUT_SIZE)
		port map (processing_clk_i => processing_clk_s(i), cpu_clk_i => cpu_clk_i,
			rst_i => rst_i, processing_rst_i => processing_rst_i(i),
			start_acquisition_i => start_acquisition_i, busy_o => busy_s(i),
			result_addr_i => result_addr_i, result_o => res_s(i),
			-- results
			data_i => data_i(((i+1)*INPUT_SIZE)-1 downto i*INPUT_SIZE),
			data_en_i => data_en_s(i), data_eof_i => data_eof_s(i));
	end generate subtop_loop;

	res_out_s <= res_s(to_integer(unsigned(ram_select_input_s)+1))
		& res_s(to_integer(unsigned(ram_select_input_s)));

	processing_clk_s(0) <= processing1_clk_i;
	data_en_s(0) <= data1_en_i;
	data_eof_s(0) <= data1_eof_i;

	way2_gen: if NB_WAY > 1 generate
		processing_clk_s(1) <= processing2_clk_i;
		data_en_s(1) <= data2_en_i;
		data_eof_s(1) <= data2_eof_i;
	end generate way2_gen;

	way3_gen : if NB_WAY > 2 generate
		processing_clk_s(2) <= processing3_clk_i;
		data_en_s(2) <= data3_en_i;
		data_eof_s(2) <= data3_eof_i;
	end generate way3_gen;

	way4_gen : if NB_WAY > 3 generate
		processing_clk_s(3) <= processing4_clk_i;
		data_en_s(3) <= data4_en_i;
		data_eof_s(3) <= data4_eof_i;
	end generate way4_gen;

	way5_gen : if NB_WAY > 4 generate
		processing_clk_s(4) <= processing5_clk_i;
		data_en_s(4) <= data5_en_i;
		data_eof_s(4) <= data5_eof_i;
	end generate way5_gen;

	way6_gen : if NB_WAY > 5 generate
		processing_clk_s(5) <= processing6_clk_i;
		data_en_s(5) <= data6_en_i;
		data_eof_s(5) <= data6_eof_i;
	end generate way6_gen;

	way7_gen : if NB_WAY > 6 generate
		processing_clk_s(6) <= processing7_clk_i;
		data_en_s(6) <= data7_en_i;
		data_eof_s(6) <= data7_eof_i;
	end generate way7_gen;

	way8_gen : if NB_WAY > 7 generate
		processing_clk_s(7) <= processing8_clk_i;
		data_en_s(7) <= data8_en_i;
		data_eof_s(7) <= data8_eof_i;
	end generate way8_gen;

	way9_gen : if NB_WAY > 8 generate
		processing_clk_s(8) <= processing9_clk_i;
		data_en_s(8) <= data9_en_i;
		data_eof_s(8) <= data9_eof_i;
	end generate way9_gen;

	way10_gen : if NB_WAY > 9 generate
		processing_clk_s(9) <= processing10_clk_i;
		data_en_s(9) <= data10_en_i;
		data_eof_s(9) <= data10_eof_i;
	end generate way10_gen;

	way11_gen : if NB_WAY > 10 generate
		processing_clk_s(10) <= processing11_clk_i;
		data_en_s(10) <= data11_en_i;
		data_eof_s(10) <= data11_eof_i;
	end generate way11_gen;

	way12_gen : if NB_WAY > 11 generate
		processing_clk_s(11) <= processing12_clk_i;
		data_en_s(11) <= data12_en_i;
		data_eof_s(11) <= data12_eof_i;
	end generate way12_gen;

end Behavioral;

