library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE std.textio.ALL;

entity nco_counter_logic is
	generic (
		TEST : boolean := false;
		RESET_ACCUM : boolean := false;
		LUT_SIZE : natural := 10;
		COUNTER_SIZE : natural := 32;
		DATA_SIZE : natural := 16
	);
	port (
		cpu_clk_i : in std_logic;
		clk_i : in std_logic;
		rst_i : in std_logic;
		-- configuration (wishbone)
		max_accum_i : in std_logic_vector(COUNTER_SIZE-1 downto 0);
		cpt_off_i : in std_logic_vector(LUT_SIZE-1 downto 0) := (others => '0');		
		cpt_step_i : in std_logic_vector(COUNTER_SIZE-1 downto 0) := (others => '0');		
		test_o : out std_logic;
		-- next
		--step_scale_o : out std_logic_vector(LUT_SIZE-1 downto 0);
		cos_o : out std_logic_vector(DATA_SIZE -1 downto 0);
		sin_o : out std_logic_vector(DATA_SIZE -1 downto 0);
		sin_fake_o : out std_logic;
		wave_en_o : out std_logic;
		cos_fake_o : out std_logic
	);
end nco_counter_logic;

architecture Behavioral of nco_counter_logic is
	signal ready_s, ready2_s : std_logic := '0';
	signal counter_next_s, counter_s : std_logic_vector(COUNTER_SIZE-1 downto 0);
	signal counter_sin_s : std_logic_vector(COUNTER_SIZE-1 downto 0);

	signal counter_scale_s : std_logic_vector(LUT_SIZE-1 downto 0);
	signal counter_sin_scale_s : std_logic_vector(LUT_SIZE-1 downto 0);
	signal counter_sin_off_s : std_logic_vector(LUT_SIZE-1 downto 0);
	signal counter_cos_off_s : std_logic_vector(LUT_SIZE-1 downto 0);
	signal sin_next, cos_next : std_logic;
	signal cos_s, sin_s : std_logic_vector(15 downto 0);
	--signal cpt_test_s : natural range 0 to 200;
	-- synchro
	signal cpt_off_s, cpt_off2_s, cpt_off1_s : std_logic_vector(LUT_SIZE-1 downto 0);
	signal cpt_inc_s, cpt_inc2_s, cpt_inc1_s : std_logic_vector(COUNTER_SIZE-1 downto 0);
	file final_result_file: text open write_mode is "./toto.txt";
	signal cos_scale_del_s : std_logic_vector(LUT_SIZE-1 downto 0);
	signal cos_del_s : std_logic_vector(COUNTER_SIZE-1 downto 0);


	-- reset accum
	signal rst_accum_s : std_logic := '0';
	--signal cpt_s : natural range 0 to 2**COUNTER_SIZE-1; -- := 0;
	signal cpt_s : std_logic_vector(COUNTER_SIZE-1 downto 0);
begin
	-- in fact the enable signal is alwais true
	wave_en_o <= ready_s;
	process(clk_i)
	begin
		if rising_edge(clk_i) then
			if rst_i = '1' then
				ready_s <= '0';
				ready2_s <= '1';
			else
				ready2_s <= ready2_s;
				ready_s <= ready2_s;
			end if;
		end if;
	end process;
	
	counter_sin_s <=
		std_logic_vector(unsigned(counter_s)-(2**(COUNTER_SIZE-2)));
	cos_next <= counter_s(COUNTER_SIZE-1);
	sin_next <= counter_sin_s(COUNTER_SIZE-1);

	test_o <= '1' when unsigned(counter_scale_s) < 10 else '0';
 	
	sin_cos_proc: process(clk_i)
	begin
		if rising_edge(clk_i) then
			if rst_i = '1' then
				cos_fake_o <= '1';
				sin_fake_o <= '1';
			else
				cos_fake_o <= cos_next;
				sin_fake_o <= sin_next;
			end if;
		end if;
	end process sin_cos_proc;
 	
	-- for sin waveform
	counter_next_s <= std_logic_vector(unsigned(counter_s) +
					unsigned(cpt_inc_s)) when rst_accum_s = '0' else
					(others => '0');
	cpt_sin_proc: process(clk_i)
	begin
		if rising_edge(clk_i) then
			if ready_s = '0' or rst_i = '1' then
				counter_s <= (others => '0');
			else
				--if rst_accum_s = '1' then
				--	counter_s <= (others => '0');
				--else
					counter_s <= counter_next_s;
				--end if;
			end if;
		end if;
	end process cpt_sin_proc;
	counter_scale_s <= counter_s(COUNTER_SIZE-1 downto COUNTER_SIZE-LUT_SIZE);
	counter_sin_scale_s <= counter_sin_s(COUNTER_SIZE-1 downto COUNTER_SIZE-LUT_SIZE);


	use_rst_accum : if RESET_ACCUM = true generate
		process(clk_i)
		begin
			if rising_edge(clk_i) then
				if ready_s = '0' or rst_i = '1' then
					--cpt_s <= 0;
					cpt_s <= (others => '0');
					rst_accum_s <= '0';
				else
					rst_accum_s <= '0';
					--if cpt_s = 2**COUNTER_SIZE-1 then
					--	cpt_s <= 0;
					--else
					--if cpt_s < 2**COUNTER_SIZE-1 then
						if unsigned(cpt_s) = unsigned(max_accum_i)-1 then
							cpt_s <= (others => '0');
							rst_accum_s <= '1';
						else
							cpt_s <= std_logic_vector(unsigned(cpt_s) + 1);
						end if;
					--else
					--	cpt_s <= 0;
					--end if;
				end if;
			end if;
		end process;
	end generate use_rst_accum;
				

	
	-- maybe use a synchronous before ROM --
	--step_scale_o <= counter_scale_s;
	counter_cos_off_s <= std_logic_vector(
		unsigned(counter_scale_s) + unsigned(cpt_off_s));
	counter_sin_off_s <= std_logic_vector(
		unsigned(counter_sin_scale_s) + unsigned(cpt_off_s));

	rom_10 : if LUT_SIZE = 10 generate
	rom10_inst : entity work.nco_counter_cos_rom
	port map (
		clk => clk_i,
		addr_a => counter_cos_off_s,
		addr_b => counter_sin_off_s,
		data_a => cos_s,
		data_b => sin_s
	);
	end generate rom_10;

	rom_12 : if LUT_SIZE = 12 generate
	rom12_inst : entity work.nco_counter_cos_rom_a12_d16
	port map (
		clk => clk_i,
		addr_a => counter_cos_off_s,
		addr_b => counter_sin_off_s,
		data_a => cos_s,
		data_b => sin_s
	);
	end generate rom_12;
	rom_16 : if LUT_SIZE = 16 generate
	rom_inst : entity work.nco_counter_cos_rom_a16_d16
	port map (
		clk => clk_i,
		addr_a => counter_cos_off_s,
		addr_b => counter_sin_off_s,
		data_a => cos_s,
		data_b => sin_s
	);
	end generate rom_16;
	
	same_size: if DATA_SIZE = 16 generate
	   cos_o <= cos_s;
	   sin_o <= sin_s;
	end generate same_size;
	
	diff_size: if DATA_SIZE < 16 generate
	   cos_o <= cos_s(15 downto 16-DATA_SIZE);
	   sin_o <= sin_s(15 downto 16-DATA_SIZE);
	end generate diff_size;
	process(clk_i) begin
		if rising_edge(clk_i) then
			--rst_sync_m1_s <= preset_s;
			--rst_sync_s <= rst_sync_m1_s;
			--rst_s <= rst_sync_s;
			cpt_off1_s <= cpt_off_i;
			cpt_off2_s <= cpt_off1_s;
			cpt_off_s <= cpt_off2_s;
			cpt_inc1_s <= cpt_step_i;
			cpt_inc2_s <= cpt_inc1_s;
			cpt_inc_s <= cpt_inc2_s;
		end if;
	end process;


--store_result : process(clk_i)
--    variable lp: line;
--    variable pv: std_logic;
--begin
--    if rising_edge(clk_i) then
--		if (rst_i = '1') then
--			cos_del_s <= (others => '0');
--			cos_scale_del_s <= (others => '0');
--		else
--			cos_del_s <= counter_s;
--			cos_scale_del_s <= counter_cos_off_s;
--			if ready_s = '1' then
--				write(lp, integer'image(to_integer(unsigned(cos_del_s(31 downto 16)))));
--        		write(lp, string'(" "));
--				write(lp, integer'image(to_integer(unsigned(cos_del_s(15 downto 0)))));
--        		write(lp, string'(" "));
--				write(lp, integer'image(to_integer(unsigned(cos_scale_del_s))));
--        		write(lp, string'(" "));
--        		write(lp, integer'image(to_integer(signed(cos_s))));
--        		writeline(final_result_file, lp);
--			end if;
--		end if;
--    end if;
--end process;

end Behavioral;

