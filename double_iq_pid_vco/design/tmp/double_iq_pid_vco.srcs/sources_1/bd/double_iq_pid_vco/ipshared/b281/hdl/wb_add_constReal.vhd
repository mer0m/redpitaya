library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity wb_add_constReal is 
    generic(
		DEFAULT_OFFSET 	: natural := 0;
		FORMAT 			: string := "signed";
		DATA_SIZE 		: natural := 16;
        id        		: natural := 1;
        wb_size   		: natural := 16 -- Data port size for wishbone
    );
    port (
		-- Syscon signals
		reset     : in std_logic;
		clk       : in std_logic;
		-- Wishbone signals
		wbs_add       : in std_logic_vector(1 downto 0);
		wbs_write     : in std_logic;
		wbs_writedata : in std_logic_vector(wb_size-1 downto 0);
		wbs_read      : in std_logic;
		wbs_readdata  : out std_logic_vector(wb_size-1 downto 0);
		offset_o      : out std_logic_vector(DATA_SIZE-1 downto 0)
    );
end entity wb_add_constReal;


-----------------------------------------------------------------------
Architecture wb_add_constReal_1 of wb_add_constReal is
-----------------------------------------------------------------------
	constant REG_ID       : std_logic_vector := "00";
	constant REG_OFFSET_L : std_logic_vector := "01";
	constant REG_OFFSET_H : std_logic_vector := "10";
	signal offset_l_s     : std_logic_vector(wb_size-1 downto 0);
	signal offset_s       : std_logic_vector((2*wb_size)-1 downto 0);
	signal readdata_s     : std_logic_vector(wb_size-1 downto 0);
	signal off_read_s     : std_logic_vector(wb_size-1 downto 0);
begin
	wbs_readdata <= readdata_s;
	offset_o <= offset_s(DATA_SIZE-1 downto 0);

	-- manage register
	write_bloc : process(clk, reset)
	begin
		if reset = '1' then 
			offset_l_s <= (others => '0');
			offset_s <= std_logic_vector(to_unsigned(DEFAULT_OFFSET, 2*wb_size));
		elsif rising_edge(clk) then
			offset_l_s <= offset_l_s;
			offset_s <= offset_s;
			if (wbs_write = '1' ) then
				case wbs_add is
				when REG_OFFSET_L =>
					offset_l_s <= wbs_writedata;
				when REG_OFFSET_H =>
					offset_s <= wbs_writedata & offset_l_s;
				when others =>
				end case;
			  end if;
		 end if;
	end process write_bloc;

	read_bloc : process(clk, reset)
	begin
		if reset = '1' then
			readdata_s <= (others => '0');
		elsif rising_edge(clk) then
			readdata_s <= readdata_s;
			if (wbs_read = '1') then
				case wbs_add is
				when REG_ID =>
					readdata_s <= std_logic_vector(to_unsigned(id,wb_size));
				when REG_OFFSET_L =>
					readdata_s <= offset_s(wb_size-1 downto 0);
				when REG_OFFSET_H =>
					readdata_s <= offset_s((2*wb_size)-1 downto wb_size);
				when others =>
					readdata_s <= (others => '1');
				end case;
			end if;
		end if;
	end process read_bloc;

end architecture wb_add_constReal_1;

