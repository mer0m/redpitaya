library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity limiteur is 
	generic (
		DATA_IN_SIZE : natural := 32;
		DATA_OUT_SIZE : natural := 16
	);
	port 
	(
		-- input data
		data_i : in std_logic_vector(DATA_IN_SIZE-1 downto 0);
		data_en_i: in std_logic;
		data_eof_i: in std_logic;
		data_clk_i: in std_logic;
		data_rst_i: in std_logic;
		-- for the next component
		data_o  : out std_logic_vector(DATA_OUT_SIZE-1 downto 0);		
		data_en_o : out std_logic;
		data_eof_o : out std_logic;
		data_rst_o : out std_logic;
		data_clk_o : out std_logic
	);
end entity;
Architecture limiteur_1 of limiteur is
	signal data_s : std_logic_vector(DATA_IN_SIZE-1 downto 0);
	signal data_en_s: std_logic;

	constant lim_high : std_logic_vector(DATA_IN_SIZE-1 downto 0) :=
		(DATA_IN_SIZE-1 downto DATA_OUT_SIZE-1 => '0')&
		(DATA_OUT_SIZE-2 downto 0 => '1');
	constant lim_low : std_logic_vector(DATA_IN_SIZE-1 downto 0) :=
		(DATA_IN_SIZE-1 downto DATA_OUT_SIZE-1 => '1')&
		(DATA_OUT_SIZE-2 downto 0 => '0');
begin
	data_o <= data_s(DATA_OUT_SIZE-1 downto 0);
	data_clk_o <= data_clk_i;
	data_rst_o <= data_rst_i;

	process(data_clk_i)
	begin
		if rising_edge(data_clk_i) then
			data_s <= data_s;
			data_en_o <= '0';
			data_eof_o <= '0';
			if data_en_i = '1' then
				if signed(data_i) > signed(lim_high) then
					data_s <= lim_high;
				elsif signed(data_i) < signed(lim_low) then
					data_s <= lim_high;
				else
					data_s <= data_i;
				end if;
				data_en_o <= '1';
				data_eof_o <= data_eof_i;
			end if;
		end if;
	end process;
end architecture limiteur_1;

