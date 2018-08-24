library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity fir16bitsOneInTwoMult_ng_top is 
	generic (
		coeff_format : string := "signed";
		NB_FIR : natural := 8;
		NB_COEFF : natural := 128;
		DECIMATE_FACTOR : natural := 10;
		DATA_IN_SIZE : natural := 16;
		DATA_OUT_SIZE: natural := 39
	);
	port 
	(
		-- Syscon signals
		processing_clk_i		   : in std_logic;
		reset		 : in std_logic;
		clk : in std_logic;
		cpu_rst : in std_logic;
		-- coeff
		coeff_data_i : std_logic_vector(15 downto 0);
		coeff_addr_i : std_logic_vector(9 downto 0);
		coeff_en_i : std_logic;
		-- input data
		data_i : in std_logic_vector(DATA_IN_SIZE-1 downto 0);
		data_en_i: std_logic;
		-- for the next component
		data_o  : out std_logic_vector(DATA_OUT_SIZE-1 downto 0);
		data_en_o : out std_logic
	);
end entity;

---------------------------------------------------------------------------
Architecture fir16bitsOneInTwoMult_ng_1 of fir16bitsOneInTwoMult_ng_top is
---------------------------------------------------------------------------
	constant PROCESS_PERIOD : natural := (DECIMATE_FACTOR * NB_FIR);
	
	type data_tab is array (natural range <>) of std_logic_vector(DATA_IN_SIZE-1 downto 0);
	type result_tab is array (natural range <>) of std_logic_vector(DATA_OUT_SIZE-1 downto 0);
	type coeff_tab is array (natural range <>) of std_logic_vector(15 downto 0);
	
	--compter	
	signal cpt_overflow_s : std_logic;
	signal counter_ram_s : std_logic_vector(9 downto 0);
	-- data reception
	signal enable_s : std_logic;
	signal data_s : std_logic_vector(DATA_IN_SIZE-1 downto 0);
	-- coeff for read
	signal ram_val_s : std_logic_vector(15 downto 0);
	signal coeff_s : coeff_tab(NB_FIR downto 0);
	-- communication between fir
	signal enable_next_s : std_logic_vector(NB_FIR downto 0);
	
	-- data output
	signal data_out_s, data_out_next : std_logic_vector(DATA_OUT_SIZE-1 downto 0);
	-- for reseting multiplier
	signal reset_store_s : std_logic_vector(NB_FIR downto 0);
	signal reset_store2_s, reset_store3_s : std_logic;
	
	-- result
	signal result_en_s : std_logic_vector(NB_FIR-1 downto 0);
	signal result_s : result_tab(NB_FIR-1 downto 0);
	signal t, t_next : std_logic;
	--signal cpt_valid_s: std_logic;
	signal data_en_next : std_logic;
	signal preset_s, rst_sync_m1_s, rst_sync_s, rst_s : std_logic;
begin
	data_o <= data_out_s;


	-- add one clk delay 
	process(processing_clk_i)
	begin
		if rising_edge(processing_clk_i) then
			data_s <= data_s;
			enable_s <= '0';
			if data_en_i = '1' then
				enable_s <= '1';
				data_s <= data_i;
			end if;
		end if;
	end process;
	
	-- output one IQ data from one of NB_FIR 
	-- blocks
	process(processing_clk_i)
	begin
		if rising_edge(processing_clk_i) then
			data_en_o <= '0';
			data_out_s <= data_out_s;
			if data_en_next = '1' then
				data_out_s <= data_out_next;
				data_en_o <=  '1';
			end if;
		end if;
	end process;

	data_en_next <= '1' when result_en_s /= (NB_FIR-1 downto 0 => '0') else '0';

	process(data_out_s, result_s, result_en_s)
		variable tmp : std_logic_vector(DATA_OUT_SIZE-1 downto 0);
	begin
		tmp := data_out_s;
		boucle_test :for i in 0 to NB_FIR-1 loop
			if result_en_s(i) = '1' then
				tmp := result_s(i);
			end if;
		end loop;
		data_out_next <= tmp;
	end process;

	delai_reset_store : process(processing_clk_i)
	begin
		if rising_edge(processing_clk_i) then
			reset_store2_s <= cpt_overflow_s;
			reset_store3_s <= reset_store2_s;
		end if;
	end process;

	t_proc : process(processing_clk_i)
	begin
		if rising_edge(processing_clk_i) then
			if rst_s = '1' then
				t <= '0';
			else
				t <= t_next;
			end if;
		end if;
	end process;

	t_next <= '1' when result_en_s(0) = '1' else t;

	coeff_s(0) <= ram_val_s ;
	enable_next_s(0) <= '1';
	reset_store_s(0) <= reset_store3_s;

	generate_fir : for i in 0 to NB_FIR-1 generate
		fir_glob_inst : entity work.fir16OITM_global
		generic map (
			coeff_format => coeff_format,
			USE_OPMODE_REG_AND_PCEN_RST => NB_COEFF mod NB_FIR,

			PROCESS_PERIOD => PROCESS_PERIOD,
			NB_COEFF => NB_COEFF,
			DATA_SIZE => DATA_IN_SIZE,
			DATA_OUT_SIZE => DATA_OUT_SIZE,
			DECIMATE_FACTOR => DECIMATE_FACTOR
		)
		port map
		(
			-- Syscon signals
			dsp_reset	=> rst_s,
			reset		=> rst_s,
			clk			=> processing_clk_i,
			-- input datas
			coeff_i => coeff_s(i),
			coeff_en_i => enable_s,
			coeff_next_o => coeff_s(i+1),
			enable_accum_i => '1',
			data_i => data_s,
			data_en_i => enable_s,
			reset_accum_i => reset_store_s(i),
			reset_next_o => reset_store_s(i+1),
			enable_next_i => enable_next_s(i),
			enable_next_o => enable_next_s(i+1),
			-- for the output
			data_o	=> result_s(i),
			data_en_o	=> result_en_s(i)
		);
	end generate generate_fir;

	-- donne l'offset pour les RAMS
	cpt_ram : entity work.fir16OITM_cpt
	generic map(NB_BITS => 10, THRESH => NB_COEFF, MAX_VAL => PROCESS_PERIOD)
	port map (
		-- Syscon signals
		reset_i 	=> rst_s,
		clk_i		=> processing_clk_i,
		enable_counter_i => '1',
		-- input datas
		cpt_en		=> data_en_i,
		cpt_overflow_o	=> cpt_overflow_s,
		--cpt_valid_o	=> cpt_valid_s,
		cpt_val_o	=> counter_ram_s
	);	

	ram1 : entity work.fir16OITM_ram
	generic map (DATA => 16, ADDR => 10)
	port map (clk_a => clk, clk_b => processing_clk_i,
		reset_a => reset, reset_b => rst_s,
		-- input
		we_a => coeff_en_i, addr_a => coeff_addr_i,
		din_a => coeff_data_i, dout_a => open,
		-- output
		we_b => '0', addr_b => counter_ram_s,
		din_b => (15 downto 0 => '0'),
		dout_b => ram_val_s);

    -- reset fpga_clk => processing_clk
	--process(clk) begin
	--	if rising_edge(clk) then
	--		preset_s <= reset;
	--	end if;
	--end process;
	--process(processing_clk_i) begin
	--	if rising_edge(processing_clk_i) then
	--		rst_sync_m1_s <= preset_s;
	--		rst_sync_s <= rst_sync_m1_s;
	--		rst_s <= rst_sync_s;
	--	end if;
	--end process;
	rst_s <= reset;

end architecture fir16bitsOneInTwoMult_ng_1;

