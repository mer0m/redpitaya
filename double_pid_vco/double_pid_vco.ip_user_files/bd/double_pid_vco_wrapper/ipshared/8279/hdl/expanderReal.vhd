library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity expanderReal is 
	generic (
		format : string := "signed";
		DATA_IN_SIZE : natural := 16;
		DATA_OUT_SIZE : natural := 16
	);
	port (
		-- input data
		data_i				: in std_logic_vector(DATA_IN_SIZE-1 downto 0);
		data_en_i			: in std_logic;
		data_eof_i			: in std_logic;
		data_rst_i			: in std_logic;
		data_clk_i			: in std_logic;
		-- for the next component
		data_o				: out std_logic_vector(DATA_OUT_SIZE-1 downto 0);		
		data_en_o			: out std_logic;
		data_eof_o			: out std_logic;
		data_rst_o			: out std_logic;
		data_clk_o			: out std_logic
	);
end entity;
Architecture expanderReal_1 of expanderReal is
begin
	data_clk_o <= data_clk_i;
	data_en_o <= data_en_i;
	data_eof_o <= data_eof_i;
	data_rst_o <= data_rst_i;

	same_size_gen: if DATA_IN_SIZE = DATA_OUT_SIZE generate
		data_o <= data_i;
	end generate same_size_gen;

	diff_size_gen: if DATA_IN_SIZE < DATA_OUT_SIZE generate
		signed_data: if format = "signed" generate
			data_o <= 
				(DATA_OUT_SIZE-1 downto DATA_IN_SIZE => data_i(DATA_IN_SIZE-1)) &
				data_i;
		end generate signed_data;
		unsigned_data: if format /= "signed" generate
			data_o <= 
				(DATA_OUT_SIZE-1 downto DATA_IN_SIZE => '0') & data_i;
		end generate unsigned_data;
	end generate diff_size_gen;

end architecture expanderReal_1;
