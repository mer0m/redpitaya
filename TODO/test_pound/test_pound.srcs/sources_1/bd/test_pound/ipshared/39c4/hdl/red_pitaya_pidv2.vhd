library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

Entity red_pitaya_pidv2 is 
	generic (
		P_SIZE : integer := 16;
		PSR : integer := 12; --PSR_SIZE
		I_SIZE : integer := 16;
		ISR : integer := 18;
		D_SIZE : integer := 16;
		DSR : integer := 10;
		DATA_IN_SIZE : natural := 14;
		DATA_OUT_SIZE : natural := 14;
		id : natural := 1;
		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH    : integer       := 32;
		C_S00_AXI_ADDR_WIDTH    : integer       := 5
	);
	port (
		s00_axi_aclk    : in std_logic;
		s00_axi_reset   : in std_logic;
		-- Axi signals
		s00_axi_awaddr  : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot  : in std_logic_vector(2 downto 0);
		s00_axi_awvalid : in std_logic;
		s00_axi_awready : out std_logic;
		s00_axi_wdata   : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb   : in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid  : in std_logic;
		s00_axi_wready  : out std_logic;
		s00_axi_bresp   : out std_logic_vector(1 downto 0);
		s00_axi_bvalid  : out std_logic;
		s00_axi_bready  : in std_logic;
		s00_axi_araddr  : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot  : in std_logic_vector(2 downto 0);
		s00_axi_arvalid : in std_logic;
		s00_axi_arready : out std_logic;
		s00_axi_rdata   : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp   : out std_logic_vector(1 downto 0);
		s00_axi_rvalid  : out std_logic;
		s00_axi_rready  : in std_logic;
		-- block signals
		data_i	 	: in std_logic_vector(DATA_IN_SIZE-1 downto 0);
		data_en_i	: in std_logic;
		data_clk_i 	: in std_logic;
		data_rst_i 	: in std_logic;
		data_o   	: out std_logic_vector(DATA_OUT_SIZE-1 downto 0);
		data_en_o	: out std_logic;
		data_clk_o 	: out std_logic;
		data_rst_o 	: out std_logic
	);
end red_pitaya_pidv2;

Architecture Behavioral of red_pitaya_pidv2 is
	signal setpoint_s : std_logic_vector(DATA_IN_SIZE-1 downto 0);
	signal kp_s       : std_logic_vector(P_SIZE-1 downto 0);
	signal ki_s       : std_logic_vector(I_SIZE-1 downto 0);
	signal kd_s       : std_logic_vector(D_SIZE-1 downto 0);
	signal sign_s     : std_logic;
	signal int_rst_s  : std_logic;
	--comm
	signal addr_s : std_logic_vector(2 downto 0);
	signal write_en_s, read_en_s : std_logic;
begin
	data_clk_o <= data_clk_i;
	data_rst_o <= data_rst_i;
	
	
	red_pitaya_pidv2Logic : entity work.red_pitaya_pidv2_logic
	generic map(DATA_IN_SIZE => DATA_IN_SIZE, DATA_OUT_SIZE => DATA_OUT_SIZE,
	P_SIZE => P_SIZE, I_SIZE => I_SIZE, D_SIZE => D_SIZE,
	ISR => ISR, PSR => PSR, DSR => DSR)
	port map (clk_i => data_clk_i, reset => data_rst_i,
		data_i => data_i, data_en_i  => data_en_i,
		data_o => data_o, data_en_o=> data_en_o,
		setpoint_i => setpoint_s, 
		kp_i => kp_s, ki_i => ki_s, kd_i => kd_s,
		sign_i => sign_s, int_rst_i => int_rst_s 
		);


	axi_red_pitaya_pidv2_inst : entity work.axi_red_pitaya_pidv2
	generic map (id => id, axi_size => C_S00_AXI_DATA_WIDTH,
		P_SIZE => P_SIZE, I_SIZE => I_SIZE, D_SIZE => D_SIZE,
		DATA_SIZE => DATA_IN_SIZE
	)
	port map (clk_i => s00_axi_aclk, rstn_i => s00_axi_reset,
		axi_add       => addr_s,
		axi_write     => write_en_s,
		axi_writedata => s00_axi_wdata,
		axi_read     => read_en_s,
		axi_readdata  => s00_axi_rdata,
		setpoint_o => setpoint_s,
		kp_o => kp_s, ki_o => ki_s, kd_o => kd_s,
		sign_o => sign_s, int_rst_o => int_rst_s 
	);


	red_pitaya_pidv2handComm : entity work.red_pitaya_pidv2_handComm
	generic map (
                C_S_AXI_DATA_WIDTH      => C_S00_AXI_DATA_WIDTH,
                C_S_AXI_ADDR_WIDTH      => C_S00_AXI_ADDR_WIDTH
        )
        port map (
                S_AXI_ACLK     	=> s00_axi_aclk,
                S_AXI_RESET     => s00_axi_reset,
                S_AXI_AWADDR    => s00_axi_awaddr,
                S_AXI_AWPROT    => s00_axi_awprot,
                S_AXI_AWVALID   => s00_axi_awvalid,
                S_AXI_AWREADY   => s00_axi_awready,
                S_AXI_WSTRB     => s00_axi_wstrb,
                S_AXI_WVALID    => s00_axi_wvalid,
                S_AXI_WREADY    => s00_axi_wready,
                S_AXI_BRESP     => s00_axi_bresp,
                S_AXI_BVALID    => s00_axi_bvalid,
                S_AXI_BREADY    => s00_axi_bready,
                S_AXI_ARADDR    => s00_axi_araddr,
                S_AXI_ARPROT    => s00_axi_arprot,
                S_AXI_ARVALID   => s00_axi_arvalid,
                S_AXI_ARREADY   => s00_axi_arready,
                S_AXI_RRESP     => s00_axi_rresp,
                S_AXI_RVALID    => s00_axi_rvalid,
                S_AXI_RREADY    => s00_axi_rready,
                read_en_o => read_en_s,
                write_en_o => write_en_s,
                addr_o => addr_s
        );


end Behavioral;
