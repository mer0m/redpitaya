library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity fir16OITM_global is 
	generic (
		coeff_format : string := "signed";
		USE_OPMODE_REG_AND_PCEN_RST : natural := 0;

		PROCESS_PERIOD : natural := 130;
		NB_COEFF : natural := 128;
		DECIMATE_FACTOR : natural := 32;
		COEFF_SIZE : natural := 16;
		DATA_SIZE : natural := 8;
		DATA_OUT_SIZE : natural := 39
	);
	port 
	(
		-- Syscon signals
		dsp_reset	 : in std_logic;
		reset		 : in std_logic;
		clk		   : in std_logic;
		-- input data
		enable_accum_i : in std_logic;
		coeff_i : in std_logic_vector(COEFF_SIZE-1 downto 0);
		coeff_en_i : in std_logic;
		coeff_next_o : out std_logic_vector(COEFF_SIZE-1 downto 0);
		data_en_i : in std_logic;
		data_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		reset_accum_i : in std_logic;
		reset_next_o : out std_logic;
		enable_next_i : in std_logic;
		enable_next_o : out std_logic;
		-- for the next component
		data_o  : out std_logic_vector(DATA_OUT_SIZE-1 downto 0);
		data_en_o : out std_logic
	);
end entity;

---------------------------------------------------------------------------
Architecture fir16OITM_global_1 of fir16OITM_global is
---------------------------------------------------------------------------
	type data_tab is array (natural range <>) of std_logic_vector(7 downto 0);
	type result_tab is array (natural range <>) of std_logic_vector(47 downto 0);
	signal counter_s, counter_next_s : natural range 0 to DECIMATE_FACTOR-1;

	signal result_en_s : std_logic;
	signal result_s : std_logic_vector(DATA_OUT_SIZE-1 downto 0);
	signal data_out_s : std_logic_vector(DATA_OUT_SIZE-1 downto 0);
	signal reset_accum_s : std_logic;
	signal data_en_s : std_logic;
	signal enable_accum_s : std_logic;
	signal cpt, cpt_next : natural range 0 to PROCESS_PERIOD-1;
	signal process2_en_s : std_logic;
	signal t, t_next, t_nextn: std_logic;
	signal clear_counter_s : std_logic;

	--new 
	signal coeff_delay_s : std_logic_vector(COEFF_SIZE-1 downto 0);
	signal enable_cpt_incr_s : std_logic;
begin
	data_o <= data_out_s;
	--enable_next_o <= (data_en_i and t);
	data_en_s <= (process2_en_s and data_en_i);
	enable_cpt_incr_s <= data_en_i and enable_next_i;
	
	coeff_next_o <= coeff_delay_s;

	coeff_reg_delay: entity work.fir16OITM_reg_delay
	generic map (DELAY=>DECIMATE_FACTOR, DATA_SIZE => COEFF_SIZE)
	port map (reset=>reset, clk=>clk, data_i=>coeff_i, data_en_i => coeff_en_i,
		data_o => coeff_delay_s	);

	process(clk)
	begin
		if rising_edge(clk) then
			data_en_o <= '0';
			data_out_s <= data_out_s;
			if result_en_s = '1' then
				data_out_s <= result_s;
				data_en_o <= '1';
			end if;
		end if;
	end process;

	reset_delay: entity work.fir16OITM_bit_delay
	generic map (DELAY=>DECIMATE_FACTOR)
	port map (reset=>reset, clk=>clk, 
		bit_i=>reset_accum_i, data_en_i => data_en_i,
		bit_o => reset_accum_s);

	reset_next_o <= reset_accum_s;
	
	enable_accum_s <= not(enable_accum_i);

	fir_proc_inst : entity work.fir16OITM_proc
	generic map (
		coeff_format => coeff_format,
		USE_OPMODE_REG_AND_PCEN_RST => USE_OPMODE_REG_AND_PCEN_RST,
		DATA_OUT_SIZE => DATA_OUT_SIZE,
		DATA_SIZE => DATA_SIZE)
	port map (
		-- Syscon signals
		dsp_reset	=> dsp_reset,
		reset		=> reset,
		clk			=> clk,
		-- input datas
		clear_accum_i => enable_accum_s,
		coeff_i => coeff_delay_s,
		data_i => data_i,
		data_en_i => data_en_s,
		reset_accum_i => reset_accum_s,
		-- for the output
		data_o	=> result_s,
		data_en_o	=> result_en_s
	);

	-- wait for decimate factor before
	-- starting processing
	t_next <= '1' when counter_s = DECIMATE_FACTOR-1
		else t;
	process (clk, reset)
	begin
		if rising_edge(clk) then
			enable_next_o <= data_en_i and t_next;
			if reset = '1' then
				t <= '0';
			else
				t <= t_next;
			end if;
		end if;
	end process;

	process(clk)
	begin
		if rising_edge(clk) then
			process2_en_s <= '0';
			if t_next = '1' then
				if cpt < NB_COEFF then
					process2_en_s <= '1';
				end if;
			end if;
		end if;
	end process;

	t_nextn <= not t_next or reset;
	cpt_next <= cpt + 1 ;
	process(clk)--, reset)
	begin
		if rising_edge(clk) then
			if t_nextn = '1' then--reset = '1' then
				cpt <= 0;
			else
				cpt <= cpt;
				if t_next = '1' then
					--cpt <= cpt + 1;
					if cpt >= PROCESS_PERIOD -1 then
						cpt <= 0;
					else
						cpt <= cpt_next;
					end if;
				--else
				--	cpt <= 0;
				end if;
			end if;
		end if;
	end process; 

	clear_counter_s <= reset or not enable_accum_i;

	process (clk)--, reset)
	begin
		if rising_edge(clk) then
			if clear_counter_s = '1' then
				counter_s <= 0;
			else
				counter_s <= counter_next_s;
			end if;
		end if;
	end process;
	counter_next_s <= counter_s + 1 when (enable_cpt_incr_s)= '1'
									else 0 when enable_accum_i = '0'
									else counter_s;
end architecture fir16OITM_global_1;

