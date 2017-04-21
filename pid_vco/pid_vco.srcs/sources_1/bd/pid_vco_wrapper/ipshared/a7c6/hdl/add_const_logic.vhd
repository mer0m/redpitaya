library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity add_const_logic is 
	generic (
		format : string := "signed";
		DATA_OUT_SIZE: natural := 18;
		DATA_IN_SIZE : natural := 16
	);
	port 
	(
		-- Syscon signals
		rst_i	: in std_logic;
		clk_i	: in std_logic;
		-- config
		add_val : in std_logic_vector(DATA_IN_SIZE-1 downto 0);
		-- input data
		data_i			: in std_logic_vector(DATA_IN_SIZE-1 downto 0);
		data_en_i		: in std_logic;
		-- for the next component
		data_o			: out std_logic_vector(DATA_OUT_SIZE-1 downto 0);		
		data_en_o		: out std_logic
	);
end entity;
Architecture bhv of add_const_logic is
	signal data_in_s, data_s : std_logic_vector(DATA_OUT_SIZE-1 downto 0);
	signal data_in_resize_s : std_logic_vector(DATA_IN_SIZE-1 downto 0);
	--signal rst_s : std_logic;
	signal add_val_s,add_val2_s : std_logic_vector(DATA_IN_SIZE-1 downto 0);
begin
    data_in_resize_s <= data_i;
--	signed_prod: if format = "signed" generate
--		data_in_resize_s <= data_i(DATA_IN_SIZE-1) & data_i;
--	end generate signed_prod;
--	unsigned_prod: if format /= "signed" generate
--		data_in_resize_s <= '0' & data_i;
--	end generate unsigned_prod;

	process(clk_i) begin
		if rising_edge(clk_i) then
			add_val_s <= add_val;
			add_val2_s <= add_val_s;
		end if;
	end process;

	data_in_s <= std_logic_vector(signed(data_in_resize_s) 
			+ signed(add_val2_s));

	data_o <= data_s(DATA_OUT_SIZE-1 downto 0);

	process(clk_i)
	begin
		if rising_edge(clk_i) then
			if rst_i = '1' then
				data_s <= (others => '0');
				data_en_o <= '0';
			else
				data_s <= data_s;
				data_en_o <= '0';
				if data_en_i = '1' then
					data_s <= data_in_s;
					data_en_o <= '1';
				end if;
			end if;
		end if;
	end process;

	--rst_inst : entity work.add_const_rst
	--port map (rst_i => rst_i, clk_i => clk_i, rst_o => rst_s);
end architecture bhv;

