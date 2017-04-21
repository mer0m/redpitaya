library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity wb_pseudoGenReal is 
    generic(
		DEFAULT_PRESCALER : natural := 100;
        id        : natural := 1;
        wb_size   : natural := 16 -- Data port size for wishbone
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
		prescaler_o : out std_logic_vector(wb_size-1 downto 0)
    );
end entity wb_pseudoGenReal;


-----------------------------------------------------------------------
Architecture wb_pseudoGenReal_1 of wb_pseudoGenReal is
-----------------------------------------------------------------------
	constant REG_ID     : std_logic_vector := "00";
	constant REG_NB_HALF_PERIOD : std_logic_vector :="01";
	signal prescaler_s : std_logic_vector(wb_size-1 downto 0);
	signal readdata_s : std_logic_vector(wb_size-1 downto 0);
begin
	wbs_readdata <= readdata_s;
	prescaler_o <= prescaler_s;
	-- manage register
	write_bloc : process(clk, reset)
	begin
		 if reset = '1' then 
			prescaler_s <= std_logic_vector(to_unsigned(DEFAULT_PRESCALER, wb_size));
		 elsif rising_edge(clk) then
			prescaler_s <= prescaler_s;
			if (wbs_write = '1' ) then
				if wbs_add = REG_NB_HALF_PERIOD then
					prescaler_s <= wbs_writedata;
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
				elsif wbs_add = REG_NB_HALF_PERIOD then
					readdata_s <= prescaler_s;
				end if;
			end if;
		end if;
	end process read_bloc;

end architecture wb_pseudoGenReal_1;

