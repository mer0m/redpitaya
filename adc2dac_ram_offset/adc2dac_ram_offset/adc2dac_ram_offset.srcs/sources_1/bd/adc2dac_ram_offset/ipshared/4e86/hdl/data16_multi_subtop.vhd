library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity data16_multi_to_ram_subtop is
	generic (
		DATA_FORMAT : string := "signed";
		INPUT_SIZE : natural := 32;
		DATA_SIZE : natural := 16;
		ADDR_SIZE : natural := 12
	);
	port (
		cpu_clk_i : in std_logic;
		rst_i : in std_logic;
		-- Syscon signals
		processing_clk_i       : in std_logic ;
		processing_rst_i       : in std_logic ;
		--communication signals
		--config
		start_acquisition_i : std_logic;
		busy_o : out std_logic;
		result_o : out std_logic_vector(DATA_SIZE-1 downto 0);
		result_addr_i : in std_logic_vector(ADDR_SIZE-1 downto 0);
		-- results
		data_i : in std_logic_vector(INPUT_SIZE-1 downto 0);
		data_en_i : in std_logic;
		data_eof_i : in std_logic
	);
end data16_multi_to_ram_subtop;

architecture Behavioral of data16_multi_to_ram_subtop is
	constant RAM_SIZE : natural := INPUT_SIZE;
	signal start_acquisition2_s: std_logic;
	signal start_acquisition3_s: std_logic;
	signal start_acquisition4_s: std_logic;
	signal busy_s : std_logic;
	-- ram write
	signal data_s : std_logic_vector(INPUT_SIZE-1 downto 0);
	signal ram_data_s : std_logic_vector(INPUT_SIZE-1 downto 0);
	signal ram_addr_w_s : std_logic_vector(ADDR_SIZE-1 downto 0);
	signal ram_data_r_s, ram_data_w_s : std_logic_vector(INPUT_SIZE-1 downto 0);
	signal ram_en_s : std_logic;

-- interrupts --
begin
	busy_o <= busy_s;

	data_resizer : entity work.data16_multi_resizer
		generic map (INPUT_SIZE => INPUT_SIZE,
			OUTPUT_SIZE => DATA_SIZE, DATA_FORMAT => DATA_FORMAT)
		port map (data_i => data_s, data_o => result_o);
	

	data_s <= ram_data_r_s;

	process(cpu_clk_i)
	begin
		if rising_edge(cpu_clk_i) then
			if rst_i = '1' then
				start_acquisition2_s <= '0';
			else
				start_acquisition2_s <= start_acquisition2_s;
				if start_acquisition_i = '1' then
					start_acquisition2_s <= '1';
				end if;
				if busy_s = '1' then
					start_acquisition2_s <= '0';
				end if;
			end if;
		end if;
	end process;

	process(processing_clk_i)
	begin
		if rising_edge(processing_clk_i) then
			start_acquisition3_s <= start_acquisition2_s;
			start_acquisition4_s <= start_acquisition3_s;
		end if;
	end process;
	
	acquisition_fsm_inst : entity work.data16_multi_to_ram_logic
	generic map(DATA_SIZE => INPUT_SIZE, RAM_ADDR_SIZE => ADDR_SIZE,
		ACQUIS_SIZE => 2**ADDR_SIZE)
	port map(clk_i => processing_clk_i, rst_i => processing_rst_i,
		-- hmcad interface
		data_available_i => data_en_i, data_eof_i => data_eof_i,
		data_i => data_i,
		-- ram
		ram_addr_o => ram_addr_w_s, ram_en_o => ram_en_s,
		ram_data_o => ram_data_w_s,
		start_acquisition_i => start_acquisition4_s,
		busy_o => busy_s);

	ram_msb: entity work.data16_multi_to_ram_storage
	generic map (DATA => RAM_SIZE, ADDR => ADDR_SIZE)
	port map (clk_a => processing_clk_i, clk_b => cpu_clk_i,
		-- state machine interface
		we_a   => ram_en_s, addr_a => ram_addr_w_s,
		din_a  => ram_data_w_s, dout_a => open,
		we_b => '0', addr_b => result_addr_i, 
		din_b => (RAM_SIZE-1 downto 0 => '0'),
		dout_b => ram_data_r_s);

end Behavioral;

