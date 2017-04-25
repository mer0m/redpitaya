library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity fir16OITM_reg_delay is 
	generic (
		DELAY : natural := 32;
		DATA_SIZE : natural := 8
	);
	port 
	(
		-- Syscon signals
		reset		 : in std_logic;
		clk		   : in std_logic;
		-- input data
		data_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data_en_i: in std_logic;
		-- for the next component
		data_o  : out std_logic_vector(DATA_SIZE-1 downto 0)
	);
end entity;

---------------------------------------------------------------------------
Architecture fir16OITM_reg_delay_1 of fir16OITM_reg_delay is
---------------------------------------------------------------------------
	type data_tab is array (natural range <>) of std_logic_vector(DATA_SIZE-1 downto 0);

	signal data_tab_s, data_tab_next_s 	: data_tab(DELAY-1 downto 0);
begin
	data_o <= data_tab_s(DELAY-1);
	
	process(clk)--, reset)
	begin
		if rising_edge(clk) then
			--if reset = '1' then
			--	data_tab_s <= (others => (others => '0'));
			--else
			--	data_tab_s <= data_tab_next_s;
			if data_en_i = '1' then
				data_tab_s <= data_tab_s(DELAY-2 downto 0) & data_i;
			else
				data_tab_s <= data_tab_s;
			end if;
		end if;
	end process;

	data_tab_next_s(DELAY-1 downto 1) <= 
					data_tab_s(DELAY-2 downto 0) when data_en_i = '1'
					else data_tab_s(DELAY-1 downto 1);
	data_tab_next_s(0) <= data_i when data_en_i = '1' else data_tab_s(0);

end architecture fir16OITM_reg_delay_1;

