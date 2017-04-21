library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity data16_multi_resizer is
	generic (
		INPUT_SIZE : natural := 32;
		OUTPUT_SIZE : natural := 32;
		DATA_FORMAT : string := "signed"
	);
	port (
		data_i : in std_logic_vector(INPUT_SIZE-1 downto 0);
		data_o : out std_logic_vector(OUTPUT_SIZE-1 downto 0)
	);
end data16_multi_resizer;

architecture bhv of data16_multi_resizer is
begin

	same_size_gen : if INPUT_SIZE = OUTPUT_SIZE generate
		data_o <= data_i;
	end generate same_size_gen;
	diff_size_gen : if INPUT_SIZE < OUTPUT_SIZE generate
		data_signed : if DATA_FORMAT = "signed" generate
			data_o <= (OUTPUT_SIZE-1 downto INPUT_SIZE =>
							data_i(INPUT_SIZE-1)) & data_i;
		end generate data_signed;
		data_unsigned : if DATA_FORMAT = "unsigned" generate
			data_o <= (OUTPUT_SIZE-1 downto INPUT_SIZE => '0') & data_i;
		end generate data_unsigned;
	end generate diff_size_gen;
end architecture bhv;
