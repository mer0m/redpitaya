library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cordic is
	generic (
		NB_ITER : natural := 30;
		DATA_SIZE: natural := 16;
		OUTPUT_SIZE: natural := 16;
		--ATAN_SIZE : natural := 16;
		--SHIFT_FACTOR : natural := 16;
		PI_VALUE : natural := 205887;
		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- input data
		data_i_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data_q_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		data_en_i: in std_logic;
		data_clk_i : in std_logic;
		data_rst_i : in std_logic;
		-- for the next component
		atan_o  : out std_logic_vector(OUTPUT_SIZE-1 downto 0);
		atan_en_o : out std_logic;
		atan_clk_o : out std_logic;
		atan_rst_o : out std_logic;

		-- Ports of Axi Slave Bus Interface S00_AXI
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
		s00_axi_rready	: in std_logic
	);
end cordic;

architecture arch_imp of cordic is
	constant ATAN_SIZE : natural := NB_ITER-1;
	constant SHIFT_FACTOR : natural := NB_ITER-1;
	-- axi
	signal addr_s : std_logic_vector(1 downto 0);
	signal write_en_s, read_en_s : std_logic;

	signal coeff_en_s : std_logic;
    signal coeff_addr_s : std_logic_vector(9 downto 0);

	signal r_coeff_addr_s : std_logic_vector(9 downto 0);
	signal r_coeff_val_s : std_logic_vector(15 downto 0);

	-- value for iteration
	signal val_alpha_en_s : std_logic_vector(NB_ITER-1 downto 0);
	signal val_alpha_s : std_logic_vector(ATAN_SIZE-1 downto 0);
begin
	atan_clk_o <= data_clk_i;
	atan_rst_o <= data_rst_i;

	generate_alpha_en: for i in 0 to NB_ITER-1 generate
		val_alpha_en_s(i) <= coeff_en_s when
		unsigned(coeff_addr_s) = unsigned(to_unsigned(i, 10))
			else '0';
	end generate;

	cordic_top_inst : entity work.cordic_top
	generic map (
		NB_ITER => NB_ITER,
		ATAN_SIZE => ATAN_SIZE,
		DATA_SIZE => DATA_SIZE,
		OUTPUT_SIZE => OUTPUT_SIZE,
		SHIFT_FACTOR => SHIFT_FACTOR, 
		PI_VALUE => PI_VALUE
	)
	port map (
		-- Syscon signals
		reset			=> data_rst_i,
		clk				=> data_clk_i,
		fpga_clk 		=> s00_axi_aclk,
		fpga_rst 		=> s00_axi_reset,
		--simulation
		val_alpha_i		=> val_alpha_s,
		val_alpha_en_i	=> val_alpha_en_s,
		-- input data
		data_en_i		=> data_en_i,
		data_i_i		=> data_i_i,
		data_q_i		=> data_q_i,
		-- for the next component
		atan_o			=> atan_o,
		atan_en_o		=> atan_en_o
	);

	-- Instantiation of Axi Bus Interface S00_AXI
	cordic_comm_inst : entity work.cordic_comm
	generic map (ATAN_SIZE => ATAN_SIZE,
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH)
	port map (S_AXI_ACLK => s00_axi_aclk, reset	=> s00_axi_reset,
        addr_i => addr_s, write_en_i => write_en_s,
		writedata => s00_axi_wdata, read_en_i => read_en_s,
		read_ack_o => s00_axi_rvalid, readdata => s00_axi_rdata,
		-- end
		coeff_en_o => coeff_en_s, coeff_val_o => val_alpha_s,
        coeff_addr_o => coeff_addr_s);

	-- Instantiation of Axi Bus Interface S00_AXI
	handle_comm : entity work.cordic_handCom
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
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
		S_AXI_RVALID	=> open,--s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready,
		read_en_o => read_en_s,
		write_en_o => write_en_s,
		addr_o => addr_s
	);

end arch_imp;
