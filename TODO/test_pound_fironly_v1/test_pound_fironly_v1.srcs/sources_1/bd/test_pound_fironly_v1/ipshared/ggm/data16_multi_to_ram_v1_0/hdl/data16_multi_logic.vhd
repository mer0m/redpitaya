library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity data16_multi_to_ram_logic is
	generic (
		DATA_SIZE : natural := 16  ;
		RAM_ADDR_SIZE : natural := 10;
		ACQUIS_SIZE : natural := 2048
	);
	port (
		clk_i : in std_logic;
		rst_i : in std_logic;
		-- hmcad interface
		
		data_available_i : in	std_logic;
		data_eof_i	: in std_logic;
		data_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		-- ram
		ram_addr_o : out std_logic_vector(RAM_ADDR_SIZE-1 downto 0);
		ram_data_o : out std_logic_vector(DATA_SIZE-1 downto 0);
		ram_en_o : out std_logic;
		start_acquisition_i : in std_logic;
		busy_o : out std_logic
	);
end data16_multi_to_ram_logic;

architecture Behavioral of data16_multi_to_ram_logic is
	-- fsm
	-- data reception and storage
	type acquis_type is (acquis_idle, --acquis_wait_eof, 
		acquis);
	signal acquis_reg : acquis_type;

	-- ram
	signal ram_data_s : std_logic_vector(DATA_SIZE-1 downto 0);
	signal ram_addr_s: std_logic_vector(RAM_ADDR_SIZE-1 downto 0);
	signal counter : integer range 0 to ACQUIS_SIZE-1;
	signal busy_s : std_logic;
	signal start_s : std_logic;
	signal cpt_s, cpt_next : natural range 0 to 2**10-1; 
begin
	busy_o <= busy_s;

	ram_addr_o <= ram_addr_s;
	ram_data_o <= ram_data_s;
	
	process(clk_i)
	begin
		if rising_edge(clk_i) then
			if rst_i = '1' then
				counter <= 0;
				acquis_reg <= acquis_idle;
				ram_en_o <= '0';
				ram_data_s <= (others => '0');
				ram_addr_s <= (others => '0');
				busy_s <= '0';
			else
				busy_s <= busy_s;
				ram_en_o <= '0';
				ram_data_s <= ram_data_s;
				ram_addr_s <= ram_addr_s;
				counter <= counter;
				acquis_reg <= acquis_reg;
				case acquis_reg is
				when acquis_idle =>
					if start_acquisition_i = '1' then
						acquis_reg <= acquis;--_wait_eof;
						counter <= 0;
						ram_addr_s <= (others => '0');
						busy_s <= '1';
					end if;
				--when acquis_wait_eof =>
				--	if data_eof_i = '1' then
				--		acquis_reg <= acquis;
				--	end if;
				when acquis =>
					if data_available_i = '1' then
						counter <= counter + 1;
						ram_en_o <= '1';
						ram_addr_s <= 
							std_logic_vector(to_unsigned(counter, RAM_ADDR_SIZE));
						ram_data_s <= data_i;
						if (counter = ACQUIS_SIZE -1) then
							busy_s <= '0';
							acquis_reg <= acquis_idle;
						else
							acquis_reg <= acquis;
						end if;
					end if;
				end case;
			end if;
		end if;
	end process;

end Behavioral;

