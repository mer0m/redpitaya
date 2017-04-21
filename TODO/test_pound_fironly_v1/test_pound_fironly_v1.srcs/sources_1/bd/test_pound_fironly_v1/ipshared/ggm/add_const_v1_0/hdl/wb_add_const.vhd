library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity wb_add_const is 
    generic(
		DEFAULT_OFFSET 	: natural := 0;
		FORMAT 			: string := "signed";
		DATA_SIZE 		: natural := 16;
        id        		: natural := 1;
        wb_size   		: natural := 16 -- Data port size for wishbone
    );
    port 
    (
		-- Syscon signals
		reset     : in std_logic ;
		clk       : in std_logic ;
		-- Wishbone signals
		wbs_add       : in std_logic_vector(1 downto 0);
		wbs_write     : in std_logic ;
		wbs_writedata : in std_logic_vector( wb_size-1 downto 0);
		wbs_read     : in std_logic ;
		wbs_readdata  : out std_logic_vector( wb_size-1 downto 0);
		offset_o : out std_logic_vector(DATA_SIZE-1 downto 0)
    );
end entity wb_add_const;


-----------------------------------------------------------------------
Architecture wb_add_const_1 of wb_add_const is
-----------------------------------------------------------------------
	constant REG_ID     : std_logic_vector := "00";
	constant REG_OFFSET : std_logic_vector :="01";
	signal offset_s : std_logic_vector(DATA_SIZE-1 downto 0);
	signal readdata_s : std_logic_vector(wb_size-1 downto 0);
	signal off_read_s : std_logic_vector(wb_size-1 downto 0);
begin
	wbs_readdata <= readdata_s;
	offset_o <= offset_s;

	signed_prod: if FORMAT = "signed" generate
		off_read_s <= (wb_size-1 downto DATA_SIZE => offset_s(DATA_SIZE-1))
			& offset_s;
	end generate signed_prod;
	unsigned_prod: if FORMAT /= "signed" generate
		off_read_s <= (wb_size-1 downto DATA_SIZE => '0')
			& offset_s;
	end generate unsigned_prod;

	-- manage register
	write_bloc : process(clk, reset)
	begin
		 if reset = '1' then 
			offset_s <= std_logic_vector(to_unsigned(DEFAULT_OFFSET, DATA_SIZE));
		 elsif rising_edge(clk) then
			offset_s <= offset_s;
			if (wbs_write = '1' ) then
				if wbs_add = REG_OFFSET then
					offset_s <= wbs_writedata(DATA_SIZE-1 downto 0);
				end if;
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
				if (wbs_add = REG_ID) then
					readdata_s <= std_logic_vector(to_unsigned(id,wb_size));
				elsif wbs_add = REG_OFFSET then
					readdata_s <= off_read_s;
				end if;
			end if;
		end if;
	end process read_bloc;

end architecture wb_add_const_1;

