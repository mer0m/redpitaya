library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity fir16OITM_proc is 
	generic (
		coeff_format : string := "signed";
		USE_OPMODE_REG_AND_PCEN_RST : natural := 0;
		COEFF_SIZE		: natural := 16;
		DATA_SIZE		: natural := 8
	);
	port 
	(
		-- Syscon signals
		dsp_reset		: in std_logic;
		reset			: in std_logic;
		clk				: in std_logic;
		-- input datas
		clear_accum_i : in std_logic;
		coeff_i			: in std_logic_vector(COEFF_SIZE-1 downto 0);
		data_i_i		: in std_logic_vector(DATA_SIZE-1 downto 0);
		data_q_i		: in std_logic_vector(DATA_SIZE-1 downto 0);
		data_en_i		: in std_logic;
		reset_accum_i	: in std_logic;
		-- output result
		data_i_o		: out std_logic_vector(47 downto 0);
		data_q_o		: out std_logic_vector(47 downto 0);
		data_en_o		: out std_logic
	);
end entity;

---------------------------------------------------------------------------
Architecture fir16OITM_proc_1 of fir16OITM_proc is
---------------------------------------------------------------------------
	signal data2_i_s, data2_q_s : std_logic_vector(29 downto 0);
	signal coeff_s : std_logic_vector(17 downto 0);
	signal reset_accum_s: std_logic;
	signal result_i_s, result_q_s : std_logic_vector(47 downto 0);
	signal result_i, result_q : std_logic_vector(47 downto 0);
	--new
	signal reset_accum_in_s, clear_accum_in_s : std_logic;
	signal data3_i_s, data3_q_s : std_logic_vector(DATA_SIZE-1 downto 0);
	signal data_en_s : std_logic;
	signal coeff_in_s : std_logic_vector(17 downto 0);
begin
	reset_accum_s <= clear_accum_in_s or reset_accum_in_s;
	data_i_o <= result_i_s;
	data_q_o <= result_q_s;
	
	-- add delay for all signals
	process(clk)
	begin
		if rising_edge(clk) then
			reset_accum_in_s <= reset_accum_i;
			clear_accum_in_s <= clear_accum_i;
			--data2_i_s <= data3_i_s;
			--data2_q_s <= data3_q_s;
			data3_i_s <= data_i_i;
			data3_q_s <= data_q_i;
			data_en_s <= data_en_i;
			coeff_s <= coeff_in_s;
		end if;
	end process;

	process(clk)
	begin
		if rising_edge(clk) then
			data_en_o <= '0';
			result_i_s <= result_i_s;
			result_q_s <= result_q_s;
			if reset_accum_s = '1' then
				data_en_o <= '1';
				result_i_s <= result_i;
				result_q_s <= result_q;
			end if;
		end if;
	end process;

	data2_i_s <= (29 downto DATA_SIZE => data3_i_s(DATA_SIZE-1))&data3_i_s;
	data2_q_s <= (29 downto DATA_SIZE => data3_q_s(DATA_SIZE-1))&data3_q_s;

	coeff_signed : if coeff_format = "signed" generate
		coeff_in_s <= (17 downto COEFF_SIZE => coeff_i(COEFF_SIZE-1))&coeff_i;
	end generate coeff_signed;
	coeff_unsigned : if coeff_format /= "signed" generate
		coeff_in_s <= (17 downto COEFF_SIZE => '0')&coeff_i;
	end generate coeff_unsigned;
	
	multiplier_i : entity work.fir16OITM_multiplier
	generic map(
		USE_OPMODE_REG_AND_PCEN_RST => USE_OPMODE_REG_AND_PCEN_RST,
		carryin_cfg => '0', carryout_cfg => '0',
		-- Z : P, Y & X = M
		opmode => b"0100101", carryinsel => "000")
	port map (reset => '0',--dsp_reset,
		clock => clk, rst_accum => reset_accum_s,
		en_a => data_en_s, en_b => data_en_s,
		in_a => data2_i_s, in_b => coeff_s, result => result_i);

	multiplier_q : entity work.fir16OITM_multiplier
	generic map(
		USE_OPMODE_REG_AND_PCEN_RST => USE_OPMODE_REG_AND_PCEN_RST,
		carryin_cfg => '0', carryout_cfg => '0',
		-- Z : P, Y & X = M
		opmode => b"0100101", carryinsel => "000")
	port map (reset => '0',--dsp_reset,
		clock => clk, rst_accum => reset_accum_s,
		en_a => data_en_s, en_b => data_en_s,
		in_a => data2_q_s, in_b => coeff_s, result => result_q);
end architecture fir16OITM_proc_1;

