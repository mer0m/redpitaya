library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity nco_counter_logic is
	generic (
		COUNTER_SIZE : natural := 32;
		DATA_SIZE : natural := 16
	);
	port (
		clk_i : in std_logic;
		rst_i : in std_logic;
		-- configuration (wishbone)
		cpt_off_i : in std_logic_vector(COUNTER_SIZE-1 downto 0) := (others => '0');		
		cpt_step_i : in std_logic_vector(COUNTER_SIZE-1 downto 0) := (others => '0');		
		test_o : out std_logic;
		-- next
		cos_o : out std_logic_vector(DATA_SIZE -1 downto 0);
		sin_o : out std_logic_vector(DATA_SIZE -1 downto 0);
		sin_fake_o : out std_logic;
		wave_en_o : out std_logic;
		cos_fake_o : out std_logic
	);
end nco_counter_logic;

architecture Behavioral of nco_counter_logic is
	signal counter_next_s, counter_s : std_logic_vector(COUNTER_SIZE-1 downto 0);
	signal counter_sin_s : std_logic_vector(COUNTER_SIZE-1 downto 0);
	signal counter_sin_off_s : std_logic_vector(COUNTER_SIZE-1 downto 0);
	signal counter_cos_off_s : std_logic_vector(COUNTER_SIZE-1 downto 0);
	signal sin_next, cos_next : std_logic;
	signal cos_s, sin_s : std_logic_vector(15 downto 0);
begin
	-- in fact the enable signal is alwais true
	wave_en_o <= '1';
	
	counter_sin_s <=
		std_logic_vector(unsigned(counter_s)-(2**(COUNTER_SIZE-2)));
	cos_next <= counter_s(COUNTER_SIZE-1);
	sin_next <= counter_sin_s(COUNTER_SIZE-1);
	test_o <= '1' when unsigned(counter_s) < 10 else '0';
 	
	sin_cos_proc: process(clk_i, rst_i)
	begin
		if rst_i = '1' then
			cos_fake_o <= '1';
			sin_fake_o <= '1';
		elsif rising_edge(clk_i) then
			cos_fake_o <= cos_next;
			sin_fake_o <= sin_next;
		end if;
	end process sin_cos_proc;
 	
	-- for sin waveform
	counter_next_s <= std_logic_vector(unsigned(counter_s) +
					unsigned(cpt_step_i));
	cpt_sin_proc: process(clk_i, rst_i)
	begin
		if rst_i = '1' then
			counter_s <= (others => '0');
		elsif rising_edge(clk_i) then
			counter_s <= counter_next_s;
		end if;
	end process cpt_sin_proc;

	counter_cos_off_s <= std_logic_vector(
		unsigned(counter_s) + unsigned(cpt_off_i));
	counter_sin_off_s <= std_logic_vector(
		unsigned(counter_sin_s) + unsigned(cpt_off_i));

	rom_inst : entity work.nco_counter_cos_rom
	port map (
		clk => clk_i,
		addr_a => counter_cos_off_s,
		addr_b => counter_sin_off_s,
		data_a => cos_s,
		data_b => sin_s
	);
	
	same_size: if DATA_SIZE = 16 generate
	   cos_o <= cos_s;
	   sin_o <= sin_s;
	end generate same_size;
	
	diff_size: if DATA_SIZE < 16 generate
       cos_o <= cos_s(15 downto 16-DATA_SIZE);
       sin_o <= sin_s(15 downto 16-DATA_SIZE);
    end generate diff_size;

end Behavioral;

