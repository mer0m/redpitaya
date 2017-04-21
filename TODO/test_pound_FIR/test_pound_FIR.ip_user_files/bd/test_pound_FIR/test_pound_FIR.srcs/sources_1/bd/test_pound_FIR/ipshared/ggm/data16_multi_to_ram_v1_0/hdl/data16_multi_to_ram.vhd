library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity data16_multi_to_ram is
	generic (
		id : natural := 1;
		NB_INPUT : natural := 12;
		DATA_FORMAT : string := "signed";
		DATA_SIZE : natural := 16;
		ADDR_SIZE : natural := 12;
		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 6
	);
	port (
		data1_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data1_en_i : in std_logic;
		data1_clk_i : in std_logic;
		data1_rst_i : in std_logic := '0';
		data1_eof_i : in std_logic := '0';
		data2_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data2_en_i : in std_logic;
		data2_clk_i : in std_logic;
		data2_rst_i : in std_logic := '0';
		data2_eof_i : in std_logic := '0';
		data3_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data3_en_i : in std_logic;
		data3_clk_i : in std_logic;
		data3_rst_i : in std_logic := '0';
		data3_eof_i : in std_logic := '0';
		data4_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data4_en_i : in std_logic;
		data4_clk_i : in std_logic;
		data4_rst_i : in std_logic := '0';
		data4_eof_i : in std_logic := '0';
		data5_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data5_en_i : in std_logic;
		data5_clk_i : in std_logic;
		data5_rst_i : in std_logic := '0';
		data5_eof_i : in std_logic := '0';
		data6_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data6_en_i : in std_logic;
		data6_clk_i : in std_logic;
		data6_rst_i : in std_logic := '0';
		data6_eof_i : in std_logic := '0';
		data7_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data7_en_i : in std_logic;
		data7_clk_i : in std_logic;
		data7_rst_i : in std_logic := '0';
		data7_eof_i : in std_logic := '0';
		data8_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data8_en_i : in std_logic;
		data8_clk_i : in std_logic;
		data8_rst_i : in std_logic := '0';
		data8_eof_i : in std_logic := '0';
		data9_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data9_en_i : in std_logic;
		data9_clk_i : in std_logic;
		data9_rst_i : in std_logic := '0';
		data9_eof_i : in std_logic := '0';
		data10_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data10_en_i : in std_logic;
		data10_clk_i : in std_logic;
		data10_rst_i : in std_logic := '0';
		data10_eof_i : in std_logic := '0';
		data11_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data11_en_i : in std_logic;
		data11_clk_i : in std_logic;
		data11_rst_i : in std_logic := '0';
		data11_eof_i : in std_logic := '0';
		data12_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data12_en_i : in std_logic;
		data12_clk_i : in std_logic;
		data12_rst_i : in std_logic := '0';
		data12_eof_i : in std_logic := '0';
		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_reset	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		--s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end data16_multi_to_ram;

architecture Behavioral of data16_multi_to_ram is
	constant MAX_WAY : natural := 12;
    constant ADDR_WIDTH_OUT : natural := 4;
	constant INTERNAL_DATA_SIZE : natural := 16;
	constant SEL_IN_SIZE : natural := 3 ; -- divided by two

	signal start_acquisition_s: std_logic;
	signal busy_s : std_logic;
	signal busy_all_s : std_logic_vector(NB_INPUT-1 downto 0);

	--axi
	signal addr_s : std_logic_vector(ADDR_WIDTH_OUT-1 downto 0);
	signal write_en_s, read_en_s : std_logic;

	-- comm
	signal res_s : std_logic_vector((2*INTERNAL_DATA_SIZE)-1 downto 0);
	signal res_addr_s : std_logic_vector(ADDR_SIZE-1 downto 0);
	signal ram_select_input_s: std_logic_vector(SEL_IN_SIZE-1 downto 0);
	-- new
	signal data_s : std_logic_vector((MAX_WAY * DATA_SIZE)-1 downto 0);
	signal rst_s : std_logic_vector(MAX_WAY-1 downto 0);
begin

	data_s <= data12_i & data11_i & data10_i & data9_i &
		data8_i & data7_i & data6_i & data5_i & data4_i & data3_i &
		data2_i & data1_i;

	rst_s <= data12_rst_i & data11_rst_i & data10_rst_i & data9_rst_i & 
		data8_rst_i & data7_rst_i & data6_rst_i & data5_rst_i & 
		data4_rst_i & data3_rst_i & data2_rst_i & data1_rst_i;

	data32_top_inst : entity work.data16_multi_to_ram_top
	generic map(DATA_FORMAT => DATA_FORMAT, INPUT_SIZE => DATA_SIZE,
		MAX_WAY => MAX_WAY, NB_WAY => NB_INPUT, SEL_IN_SIZE => SEL_IN_SIZE,
		DATA_SIZE => INTERNAL_DATA_SIZE, ADDR_SIZE => ADDR_SIZE)
	port map (
		-- Syscon signals
		processing1_clk_i => data1_clk_i, processing2_clk_i => data2_clk_i,
		processing3_clk_i => data3_clk_i, processing4_clk_i => data4_clk_i,
		processing5_clk_i => data5_clk_i, processing6_clk_i => data6_clk_i,
		processing7_clk_i => data7_clk_i, processing8_clk_i => data8_clk_i,
		processing9_clk_i => data9_clk_i, processing10_clk_i => data10_clk_i,
		processing11_clk_i => data11_clk_i, processing12_clk_i => data12_clk_i,
		processing_rst_i => rst_s,
		cpu_clk_i => s00_axi_aclk, rst_i => s00_axi_reset,
		-- communication signals
		-- config
		start_acquisition_i => start_acquisition_s, busy_o => busy_s,
		busy_all_o => busy_all_s,
	-- results
		result_addr_i => res_addr_s, ram_select_input_i => ram_select_input_s,
		res_o => res_s,
		-- input
		data_i => data_s,
		data1_en_i => data1_en_i, data2_en_i => data2_en_i,
		data3_en_i => data3_en_i, data4_en_i => data4_en_i,
		data5_en_i => data5_en_i, data6_en_i => data6_en_i,
		data7_en_i => data7_en_i, data8_en_i => data8_en_i,
		data9_en_i => data9_en_i, data10_en_i => data10_en_i,
		data11_en_i => data11_en_i, data12_en_i => data12_en_i,
		data1_eof_i => data1_eof_i, data2_eof_i => data2_eof_i,
		data3_eof_i => data3_eof_i, data4_eof_i => data4_eof_i,
		data5_eof_i => data5_eof_i, data6_eof_i => data6_eof_i,
		data7_eof_i => data7_eof_i, data8_eof_i => data8_eof_i,
		data9_eof_i => data9_eof_i, data10_eof_i => data10_eof_i,
		data11_eof_i => data11_eof_i, data12_eof_i => data12_eof_i);

	wb_inst : entity work.wb_data16_multi_to_ram
	generic map(
		id		=> id,
		NB_INPUT => NB_INPUT, SEL_IN_SIZE => SEL_IN_SIZE,
		RAM_ADDR_SIZE => ADDR_SIZE,
		wb_size   => C_S00_AXI_DATA_WIDTH
	)
	port map (reset	=> s00_axi_reset, clk => s00_axi_aclk,
		wbs_add => addr_s, wbs_writedata => s00_axi_wdata,
		wbs_readdata => s00_axi_rdata, wbs_read => read_en_s,
		wbs_read_ack => s00_axi_rvalid, wbs_write => write_en_s,
		--data 
		ram_data_i => res_s,
		ram_addr_o => res_addr_s,
		ram_select_input_o => ram_select_input_s,
		busy_all_i => busy_all_s,
		busy_i => busy_s,
		start_o => start_acquisition_s);

	-- Instantiation of Axi Bus Interface S00_AXI
	handle_comm : entity work.data16_multi_to_ram_handCom
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH,
		ADDR_WIDTH_OUT => ADDR_WIDTH_OUT
	)
	port map (
		S_AXI_ACLK		=> s00_axi_aclk,
		S_AXI_RESET		=> s00_axi_reset,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		--S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> open,--s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready,
		read_en_o => read_en_s,
		write_en_o => write_en_s,
		addr_o => addr_s
	);

end Behavioral;

