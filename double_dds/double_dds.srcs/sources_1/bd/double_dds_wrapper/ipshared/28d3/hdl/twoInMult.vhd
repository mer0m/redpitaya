library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity twoInMult is 
	generic (
		format : string := "signed";
		DATA_SIZE : natural := 16
	);
	port (
		-- input data
		data1_i				: in std_logic_vector(DATA_SIZE-1 downto 0);
		data1_en_i			: in std_logic;
		data1_clk_i			: in std_logic;
		data2_i				: in std_logic_vector(DATA_SIZE-1 downto 0);
		data2_en_i			: in std_logic;
		data2_clk_i			: in std_logic;
		-- for the next component
		data_o				: out std_logic_vector((2*DATA_SIZE)-1 downto 0);		
		data_en_o			: out std_logic;
		data_clk_o			: out std_logic
	);
end entity;
Architecture twoInMult_1 of twoInMult is
	-- lock input data
	signal data1_in_s, data2_in_s : std_logic_vector(DATA_SIZE-1 downto 0);
	signal data1_en_s, data2_en_s : std_logic;
	-- temporary data
	signal data_in_s, data_s : std_logic_vector((2*DATA_SIZE)-1 downto 0);
	signal data_en_s : std_logic;
begin
	data_clk_o <= data1_clk_i;
	data_o <= data_s;

	process(data1_clk_i)
	begin
		if rising_edge(data1_clk_i) then
			data1_en_s <= data1_en_i;
			data2_en_s <= data2_en_i;
			data1_in_s <= data1_i;
			data2_in_s <= data2_i;
		end if;
	end process;


	data_en_s <= data1_en_s and data2_en_s;
	signed_prod: if format = "signed" generate
		data_in_s <= std_logic_vector(signed(data1_in_s) * signed(data2_in_s));
	end generate signed_prod;
	unsigned_prod: if format /= "signed" generate
		data_in_s <= std_logic_vector(unsigned(data1_in_s) * unsigned(data2_in_s));
	end generate unsigned_prod;

	process(data1_clk_i)
	begin
		if rising_edge(data1_clk_i) then
			data_s <= data_s;
			data_en_o <= data_en_s;
			if data_en_s = '1' then
				data_s <= data_in_s;
			end if;
		end if;
	end process;
end architecture twoInMult_1;
