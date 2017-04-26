library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

	Entity wb_data16_multi_to_ram is 
	generic(
		id		: natural := 1;
		SEL_IN_SIZE : natural := 3;
		NB_INPUT : natural := 4;
		RAM_ADDR_SIZE: natural := 10;
		wb_size   : natural := 16 -- Data port size for wishbone
	);
	port 
	(
		-- Syscon signals
		reset	 : in std_logic ;
		clk	   : in std_logic ;
		-- Wishbone signals
		wbs_add	   : in std_logic_vector(3 downto 0);
		wbs_writedata : in std_logic_vector(wb_size-1 downto 0);
		wbs_readdata  : out std_logic_vector(wb_size-1 downto 0);
		wbs_read	  : in std_logic ;
		wbs_read_ack  : out std_logic;
		wbs_write	 : in std_logic ;
		-- results
		ram_data_i 	: in std_logic_vector(wb_size-1 downto 0);
		ram_addr_o 		: out std_logic_vector(RAM_ADDR_SIZE-1 downto 0);
		ram_select_input_o : out std_logic_vector(SEL_IN_SIZE-1 downto 0);
		ack_irq : out std_logic;
		busy_all_i : in std_logic_vector(NB_INPUT-1 downto 0);
		busy_i : in std_logic;
		start_o: out std_logic
	);
end entity wb_data16_multi_to_ram;

-----------------------------------------------------------------------
Architecture wb_data16_multi_to_ram_1 of wb_data16_multi_to_ram is
-----------------------------------------------------------------------
	constant INTERNAL_NB_INPUT : natural := NB_INPUT/2;
	constant REG_ID	 : std_logic_vector(3 downto 0) := "0000";
	constant REG_START  : std_logic_vector(3 downto 0) := "0001";
	constant REG_STAT   : std_logic_vector(3 downto 0) := "0010";
	constant REG_DATA1	: std_logic_vector(3 downto 0):= "0011";
	constant REG_RESET : std_logic_vector(3 downto 0):= "0100";
	constant REG_NB_INPUT : std_logic_vector(3 downto 0):= "0110";
	
	signal ram_addr_s : std_logic_vector(RAM_ADDR_SIZE-1 downto 0);
	signal ram_select_input_s : std_logic_vector(SEL_IN_SIZE-1 downto 0);
	signal readdata_s : std_logic_vector(wb_size-1 downto 0);
begin
	wbs_readdata <= readdata_s;
	ram_addr_o <= ram_addr_s;
	ram_select_input_o <= ram_select_input_s;
	-- manage register
	write_bloc : process(clk)   -- write DEPUIS l'iMx
	begin
		 if rising_edge(clk) then
			 if reset = '1' then 
				start_o <= '0';
		 	else
				start_o <= '0';
				if (wbs_write = '1' ) then
					case wbs_add is
					when REG_START =>
						start_o <= '1';
					when others => 
					end case;
				  end if;
			end if;
		 end if;
	end process write_bloc;

	read_bloc : process(clk)
	begin
		 if rising_edge(clk) then
			 if reset = '1' then
				readdata_s <= (others => '0');
				ram_addr_s <= (others => '0');
				ram_select_input_s <= (others => '0');
				ack_irq <= '0';
				wbs_read_ack <= '0';
			 else
				wbs_read_ack <= '0';
			 	readdata_s <= readdata_s;
				ack_irq <= '0';
				ram_addr_s <= ram_addr_s;
				ram_select_input_s <= ram_select_input_s;
				if (wbs_read = '1') then
					wbs_read_ack <= '1';
					case wbs_add is
					when REG_ID =>
						 readdata_s <= std_logic_vector(to_unsigned(id,wb_size));
					when REG_STAT		=>			
						readdata_s(wb_size-1 downto 1) <= 
							(wb_size-1 downto 1 => '0');
						--readdata_s(wb_size-1 downto NB_INPUT+1) <= 
						--	(wb_size-1 downto NB_INPUT+1 => '0');
						--readdata_s(NB_INPUT downto 1) <= busy_all_i;
						readdata_s(0) <= busy_i;
					when REG_DATA1 =>
						ack_irq <= '1';
						readdata_s <= ram_data_i;
						if (unsigned(ram_select_input_s) < INTERNAL_NB_INPUT-1) then
							ram_select_input_s <= std_logic_vector(
								unsigned(ram_select_input_s) + 1);
						else
							ram_addr_s <= std_logic_vector(unsigned(ram_addr_s)+1);
							ram_select_input_s <= (others => '0');
						end if;
					when REG_RESET => 
						ram_addr_s <= (others => '0');
						ram_select_input_s <= (others => '0');
					when others =>
						readdata_s <= x"4433AA55";  -- lecture dans reg inconnu
					end case;
				  end if;
			end if;
		 end if;
	end process read_bloc;

end architecture wb_data16_multi_to_ram_1;

