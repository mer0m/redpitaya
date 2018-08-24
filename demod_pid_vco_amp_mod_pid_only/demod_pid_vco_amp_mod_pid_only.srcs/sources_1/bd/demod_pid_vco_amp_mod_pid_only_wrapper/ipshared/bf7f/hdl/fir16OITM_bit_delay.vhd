library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity fir16OITM_bit_delay is 
	generic (
		DELAY : natural := 32
	);
	port 
	(
		-- Syscon signals
		reset		 : in std_logic;
		clk		   : in std_logic;
		-- input data
		bit_i : in std_logic;
		data_en_i : in std_logic;
		-- for the next component
		bit_o  : out std_logic
	);
end entity;

---------------------------------------------------------------------------
Architecture fir16OITM_bit_delay_1 of fir16OITM_bit_delay is
---------------------------------------------------------------------------

	signal bit_tab_s, bit_tab_next_s 	: std_logic_vector(DELAY-1 downto 0);
begin
	bit_o <= bit_tab_s(DELAY-1);
	
	process(clk)
	begin
		if rising_edge(clk) then
			--if reset = '1' then
			--	bit_tab_s <= (others => '0');
			--else
			if data_en_i = '1' then
				bit_tab_s <= bit_tab_s(DELAY-2 downto 0) & bit_i;
			else
				bit_tab_s <= bit_tab_s;
			end if;
		end if;
	end process;

	bit_tab_next_s(DELAY-1 downto 1) <= 
					bit_tab_s(DELAY-2 downto 0) when data_en_i = '1'
					else bit_tab_s(DELAY-1 downto 1);
	bit_tab_next_s(0) <= bit_i when data_en_i = '1' else bit_tab_s(0);

end architecture fir16OITM_bit_delay_1;

