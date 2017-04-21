library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity pseudo_generateur_real_logic is
	generic (
		DATA_SIZE : natural := 32
	);
	port (
		clk : in std_logic;
		reset : in std_logic;
		prescaler_i : in std_logic_vector(15 downto 0);
		data_en_o : out std_logic;
		data_o : out std_logic_vector(DATA_SIZE-1 downto 0)
	);
end pseudo_generateur_real_logic;

architecture Behavioral of pseudo_generateur_real_logic is
	signal cpt_s, prescaler_s : natural range 0 to 2**16-1;
	signal tick_s : std_logic;
	signal data_s, data_out_s : std_logic_vector(DATA_SIZE-1 downto 0);
begin
	prescaler_s <= to_integer(unsigned(prescaler_i));

	process(clk, reset)
	begin
		if reset = '1' then
			tick_s <= '0';
			cpt_s <= 0;
		elsif rising_edge(clk) then
			tick_s <= '0';
			if cpt_s < prescaler_s-1 then
				cpt_s <= cpt_s + 1;
			else
				cpt_s <= 0;
				tick_s <= '1';
			end if;
		end if;
	end process;

	process(clk, reset)
	begin
		if reset = '1' then
			data_s <= (others => '0');
			data_en_o <= '0';
			data_out_s <= (others => '0');
		elsif rising_edge(clk) then
			data_s <= data_s;
			data_out_s <= data_out_s;
			data_en_o <= '0';
			if tick_s = '1' then
				data_out_s <= data_s;
				data_s <= std_logic_vector(unsigned(data_s) + 1);
				data_en_o <= '1';
			end if;
		end if;
	end process;

	data_o <=  data_s;
end Behavioral;

