library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity nco_counter is
	generic (
		id : natural := 1;
		DATA_SIZE : natural := 16;
		LUT_SIZE : natural := 10;
		COUNTER_SIZE : natural := 28;
		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Syscon signals
		ref_clk_i : in std_logic;
		ref_rst_i : in std_logic;
		-- Wishbone signals
		s00_axi_aclk	: in std_logic;
		s00_axi_reset	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic;
		-- hardware pinc and poff
		pinc_i : in std_logic_vector(COUNTER_SIZE-1 downto 0) := (COUNTER_SIZE-1 downto 0 => '0');
		pinc_en_i : in std_logic := '0';
		pinc_rst_i : in std_logic := '0';
		pinc_clk_i : in std_logic := '0';
		poff_i : in std_logic_vector(LUT_SIZE-1 downto 0) := (LUT_SIZE-1 downto 0 => '0');
		poff_en_i : in std_logic := '0';
		poff_rst_i : in std_logic := '0';
		poff_clk_i : in std_logic := '0';
		-- output data bit3
		dds_cos_o : out std_logic_vector(DATA_SIZE-1 downto 0);
		dds_sin_o : out std_logic_vector(DATA_SIZE-1 downto 0);
		dds_en_o : out std_logic;
		dds_clk_o : out std_logic;
		dds_rst_o : out std_logic;
		test_o : out std_logic;
		
		-- output single bit3
		cos_fake_o : out std_logic;
		sin_fake_o : out std_logic;
		wave_clk_o : out std_logic;
		wave_rst_o : out std_logic;
		wave_en_o : out std_logic
	);
end nco_counter;

architecture Behavioral of nco_counter is
	constant INTERNAL_ADDR_WIDTH : integer := 2;
	signal cpt_step_s 	: std_logic_vector(COUNTER_SIZE-1 downto 0);
	signal cpt_off_s 	: std_logic_vector(LUT_SIZE-1 downto 0);
	signal cpt_step_mux_s 	: std_logic_vector(COUNTER_SIZE-1 downto 0);
	signal cpt_off_mux_s 	: std_logic_vector(LUT_SIZE-1 downto 0);
	signal pinc_sw_s, pinc_sw1_s, pinc_sw2_s, pinc_sw3_s 	: std_logic;
	signal poff_sw_s, poff_sw1_s, poff_sw2_s, poff_sw3_s 	: std_logic;
	-- comm
	signal addr_s : std_logic_vector(1 downto 0);
	signal write_en_s, read_en_s : std_logic;
	signal wave_en_s : std_logic;
	signal step_scale_s : std_logic_vector(LUT_SIZE-1 downto 0);
	-- reset
begin
	dds_rst_o <= ref_rst_i;
	wave_rst_o <= ref_rst_i;
	dds_en_o <= wave_en_s;
	wave_en_o <= wave_en_s;
	wave_clk_o <= ref_clk_i;
	dds_clk_o <= ref_clk_i;
	
	nco_inst1 : entity work.nco_counter_logic
	generic map (
		COUNTER_SIZE => COUNTER_SIZE,
		LUT_SIZE => LUT_SIZE,
		DATA_SIZE => DATA_SIZE
	)
	port map(
		cpu_clk_i => s00_axi_aclk,
		clk_i => ref_clk_i,
		rst_i => ref_rst_i,
		--configuration (wishbone)
		cpt_step_i => cpt_step_mux_s,
		cpt_off_i => cpt_off_mux_s,
		cos_o => dds_cos_o,
		sin_o => dds_sin_o,
		test_o => test_o,
		step_scale_o => open, --step_scale_s,
		--output
		sin_fake_o => sin_fake_o,
		wave_en_o => wave_en_s,
		cos_fake_o => cos_fake_o
	);

	cpt_step_mux_s <= cpt_step_s when pinc_sw2_s = '1' else
					pinc_i;
	cpt_off_mux_s <= cpt_off_s when poff_sw2_s = '1' else
					poff_i;

	process(ref_clk_i)
	begin
		if rising_edge(ref_clk_i) then
			pinc_sw1_s <= pinc_sw_s;
			pinc_sw2_s <= pinc_sw1_s;
			pinc_sw3_s <= pinc_sw2_s;
			poff_sw1_s <= poff_sw_s;
			poff_sw2_s <= poff_sw1_s;
			poff_sw3_s <= poff_sw2_s;
		end if;
	end process;

	wb_nco_inst : entity work.wb_nco_counter
    generic map(
		COUNTER_SIZE => COUNTER_SIZE,
		LUT_SIZE => LUT_SIZE,
        id        => id,
        wb_size   => C_S00_AXI_DATA_WIDTH -- Data port size for wishbone
    )
    port map(
		-- Syscon signals
		reset     => s00_axi_reset,
		clk       => s00_axi_aclk,
		-- Wishbone signals
		wbs_add       => addr_s,       
		wbs_write     => write_en_s,     
		wbs_writedata => s00_axi_wdata, 
		wbs_read     => read_en_s,     
		wbs_readdata  => s00_axi_rdata,  
		--reset_nco_o   => reset_nco_s,
		step_scale_i => step_scale_s,
		pinc_sw_o => pinc_sw_s,
		poff_sw_o => poff_sw_s,
		cpt_off_o => cpt_off_s,
		cpt_step_o => cpt_step_s
    );

	-- Instantiation of Axi Bus Interface S00_AXI
	handle_comm : entity work.nco_counter_handcomm
	generic map (C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH,
		INTERNAL_ADDR_WIDTH => INTERNAL_ADDR_WIDTH) 
	port map (
		S_AXI_ACLK		=> s00_axi_aclk,
		S_AXI_RESET		=> s00_axi_reset,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready,
		read_en_o => read_en_s,
		write_en_o => write_en_s,
		addr_o => addr_s);
end Behavioral;

