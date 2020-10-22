//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Thu Oct 22 18:43:53 2020
//Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
//Command     : generate_target double_dds.bd
//Design      : double_dds
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "double_dds,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=double_dds,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=27,numReposBlks=17,numNonXlnxBlks=13,numHierBlks=10,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "double_dds.hwdef" *) 
module double_dds
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    phys_interface_0_adc_a,
    phys_interface_0_adc_b,
    phys_interface_0_adc_cdcs,
    phys_interface_0_clk_n,
    phys_interface_0_clk_p,
    phys_interface_0_dac_clk,
    phys_interface_0_dac_dat,
    phys_interface_0_dac_rst,
    phys_interface_0_dac_sel,
    phys_interface_0_dac_wrt);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "ggm:interface:redpitaya_converters_if:1.0 phys_interface_0 ADC_A" *) input [13:0]phys_interface_0_adc_a;
  (* X_INTERFACE_INFO = "ggm:interface:redpitaya_converters_if:1.0 phys_interface_0 ADC_B" *) input [13:0]phys_interface_0_adc_b;
  (* X_INTERFACE_INFO = "ggm:interface:redpitaya_converters_if:1.0 phys_interface_0 ADC_CDCS" *) output phys_interface_0_adc_cdcs;
  (* X_INTERFACE_INFO = "ggm:interface:redpitaya_converters_if:1.0 phys_interface_0 CLK_N" *) input phys_interface_0_clk_n;
  (* X_INTERFACE_INFO = "ggm:interface:redpitaya_converters_if:1.0 phys_interface_0 CLK_P" *) input phys_interface_0_clk_p;
  (* X_INTERFACE_INFO = "ggm:interface:redpitaya_converters_if:1.0 phys_interface_0 DAC_CLK" *) output phys_interface_0_dac_clk;
  (* X_INTERFACE_INFO = "ggm:interface:redpitaya_converters_if:1.0 phys_interface_0 DAC_DAT" *) output [13:0]phys_interface_0_dac_dat;
  (* X_INTERFACE_INFO = "ggm:interface:redpitaya_converters_if:1.0 phys_interface_0 DAC_RST" *) output phys_interface_0_dac_rst;
  (* X_INTERFACE_INFO = "ggm:interface:redpitaya_converters_if:1.0 phys_interface_0 DAC_SEL" *) output phys_interface_0_dac_sel;
  (* X_INTERFACE_INFO = "ggm:interface:redpitaya_converters_if:1.0 phys_interface_0 DAC_WRT" *) output phys_interface_0_dac_wrt;

  wire [13:0]adc1_offset_data_out_DATA;
  wire adc1_offset_data_out_DATA_CLK;
  wire adc1_offset_data_out_DATA_EN;
  wire adc1_offset_data_out_DATA_RST;
  wire [13:0]adc2_offset_data_out_DATA;
  wire adc2_offset_data_out_DATA_CLK;
  wire adc2_offset_data_out_DATA_EN;
  wire adc2_offset_data_out_DATA_RST;
  wire [15:0]conv_nco_counter_1_dataI_out_DATA;
  wire conv_nco_counter_1_dataI_out_DATA_CLK;
  wire conv_nco_counter_1_dataI_out_DATA_EN;
  wire conv_nco_counter_1_dataI_out_DATA_EOF;
  wire conv_nco_counter_1_dataI_out_DATA_RST;
  wire [15:0]conv_nco_counter_2_dataI_out_DATA;
  wire conv_nco_counter_2_dataI_out_DATA_CLK;
  wire conv_nco_counter_2_dataI_out_DATA_EN;
  wire conv_nco_counter_2_dataI_out_DATA_EOF;
  wire conv_nco_counter_2_dataI_out_DATA_RST;
  wire [13:0]dds1_offset_data_out_DATA;
  wire dds1_offset_data_out_DATA_EN;
  wire dds1_offset_data_out_DATA_RST;
  wire [13:0]dds2_offset_data_out_DATA;
  wire dds2_offset_data_out_DATA_EN;
  wire dds2_offset_data_out_DATA_RST;
  wire [13:0]dds_ampl_dataA_out_DATA;
  wire dds_ampl_dataA_out_DATA_CLK;
  wire dds_ampl_dataA_out_DATA_EN;
  wire dds_ampl_dataA_out_DATA_EOF;
  wire dds_ampl_dataA_out_DATA_RST;
  wire [13:0]dds_ampl_dataB_out_DATA;
  wire dds_ampl_dataB_out_DATA_CLK;
  wire dds_ampl_dataB_out_DATA_EN;
  wire dds_ampl_dataB_out_DATA_EOF;
  wire dds_ampl_dataB_out_DATA_RST;
  wire [13:0]mixer_sin_1_data_out_DATA;
  wire mixer_sin_1_data_out_DATA_CLK;
  wire mixer_sin_1_data_out_DATA_EN;
  wire mixer_sin_1_data_out_DATA_RST;
  wire [13:0]mixer_sin_2_data_out_DATA;
  wire mixer_sin_2_data_out_DATA_CLK;
  wire mixer_sin_2_data_out_DATA_EN;
  wire mixer_sin_2_data_out_DATA_RST;
  wire nco_counter_1_sine_out_DATA_CLK;
  wire nco_counter_1_sine_out_DATA_EN;
  wire [15:0]nco_counter_1_sine_out_DATA_I;
  wire [15:0]nco_counter_1_sine_out_DATA_Q;
  wire nco_counter_1_sine_out_DATA_RST;
  wire nco_counter_2_sine_out_DATA_CLK;
  wire nco_counter_2_sine_out_DATA_EN;
  wire [15:0]nco_counter_2_sine_out_DATA_I;
  wire [15:0]nco_counter_2_sine_out_DATA_Q;
  wire nco_counter_2_sine_out_DATA_RST;
  wire [13:0]phys_interface_0_1_ADC_A;
  wire [13:0]phys_interface_0_1_ADC_B;
  wire phys_interface_0_1_ADC_CDCS;
  wire phys_interface_0_1_CLK_N;
  wire phys_interface_0_1_CLK_P;
  wire phys_interface_0_1_DAC_CLK;
  wire [13:0]phys_interface_0_1_DAC_DAT;
  wire phys_interface_0_1_DAC_RST;
  wire phys_interface_0_1_DAC_SEL;
  wire phys_interface_0_1_DAC_WRT;
  wire [14:0]ps7_DDR_ADDR;
  wire [2:0]ps7_DDR_BA;
  wire ps7_DDR_CAS_N;
  wire ps7_DDR_CKE;
  wire ps7_DDR_CK_N;
  wire ps7_DDR_CK_P;
  wire ps7_DDR_CS_N;
  wire [3:0]ps7_DDR_DM;
  wire [31:0]ps7_DDR_DQ;
  wire [3:0]ps7_DDR_DQS_N;
  wire [3:0]ps7_DDR_DQS_P;
  wire ps7_DDR_ODT;
  wire ps7_DDR_RAS_N;
  wire ps7_DDR_RESET_N;
  wire ps7_DDR_WE_N;
  wire ps7_FCLK_CLK0;
  wire ps7_FCLK_RESET0_N;
  wire ps7_FIXED_IO_DDR_VRN;
  wire ps7_FIXED_IO_DDR_VRP;
  wire [53:0]ps7_FIXED_IO_MIO;
  wire ps7_FIXED_IO_PS_CLK;
  wire ps7_FIXED_IO_PS_PORB;
  wire ps7_FIXED_IO_PS_SRSTB;
  wire [31:0]ps7_M_AXI_GP0_ARADDR;
  wire [1:0]ps7_M_AXI_GP0_ARBURST;
  wire [3:0]ps7_M_AXI_GP0_ARCACHE;
  wire [11:0]ps7_M_AXI_GP0_ARID;
  wire [3:0]ps7_M_AXI_GP0_ARLEN;
  wire [1:0]ps7_M_AXI_GP0_ARLOCK;
  wire [2:0]ps7_M_AXI_GP0_ARPROT;
  wire [3:0]ps7_M_AXI_GP0_ARQOS;
  wire ps7_M_AXI_GP0_ARREADY;
  wire [2:0]ps7_M_AXI_GP0_ARSIZE;
  wire ps7_M_AXI_GP0_ARVALID;
  wire [31:0]ps7_M_AXI_GP0_AWADDR;
  wire [1:0]ps7_M_AXI_GP0_AWBURST;
  wire [3:0]ps7_M_AXI_GP0_AWCACHE;
  wire [11:0]ps7_M_AXI_GP0_AWID;
  wire [3:0]ps7_M_AXI_GP0_AWLEN;
  wire [1:0]ps7_M_AXI_GP0_AWLOCK;
  wire [2:0]ps7_M_AXI_GP0_AWPROT;
  wire [3:0]ps7_M_AXI_GP0_AWQOS;
  wire ps7_M_AXI_GP0_AWREADY;
  wire [2:0]ps7_M_AXI_GP0_AWSIZE;
  wire ps7_M_AXI_GP0_AWVALID;
  wire [11:0]ps7_M_AXI_GP0_BID;
  wire ps7_M_AXI_GP0_BREADY;
  wire [1:0]ps7_M_AXI_GP0_BRESP;
  wire ps7_M_AXI_GP0_BVALID;
  wire [31:0]ps7_M_AXI_GP0_RDATA;
  wire [11:0]ps7_M_AXI_GP0_RID;
  wire ps7_M_AXI_GP0_RLAST;
  wire ps7_M_AXI_GP0_RREADY;
  wire [1:0]ps7_M_AXI_GP0_RRESP;
  wire ps7_M_AXI_GP0_RVALID;
  wire [31:0]ps7_M_AXI_GP0_WDATA;
  wire [11:0]ps7_M_AXI_GP0_WID;
  wire ps7_M_AXI_GP0_WLAST;
  wire ps7_M_AXI_GP0_WREADY;
  wire [3:0]ps7_M_AXI_GP0_WSTRB;
  wire ps7_M_AXI_GP0_WVALID;
  wire [31:0]ps7_axi_M00_AXI_ARADDR;
  wire [2:0]ps7_axi_M00_AXI_ARPROT;
  wire ps7_axi_M00_AXI_ARREADY;
  wire [0:0]ps7_axi_M00_AXI_ARVALID;
  wire [31:0]ps7_axi_M00_AXI_AWADDR;
  wire [2:0]ps7_axi_M00_AXI_AWPROT;
  wire ps7_axi_M00_AXI_AWREADY;
  wire [0:0]ps7_axi_M00_AXI_AWVALID;
  wire [0:0]ps7_axi_M00_AXI_BREADY;
  wire [1:0]ps7_axi_M00_AXI_BRESP;
  wire ps7_axi_M00_AXI_BVALID;
  wire [31:0]ps7_axi_M00_AXI_RDATA;
  wire [0:0]ps7_axi_M00_AXI_RREADY;
  wire [1:0]ps7_axi_M00_AXI_RRESP;
  wire ps7_axi_M00_AXI_RVALID;
  wire [31:0]ps7_axi_M00_AXI_WDATA;
  wire ps7_axi_M00_AXI_WREADY;
  wire [3:0]ps7_axi_M00_AXI_WSTRB;
  wire [0:0]ps7_axi_M00_AXI_WVALID;
  wire [31:0]ps7_axi_M01_AXI_ARADDR;
  wire [2:0]ps7_axi_M01_AXI_ARPROT;
  wire ps7_axi_M01_AXI_ARREADY;
  wire ps7_axi_M01_AXI_ARVALID;
  wire [31:0]ps7_axi_M01_AXI_AWADDR;
  wire [2:0]ps7_axi_M01_AXI_AWPROT;
  wire ps7_axi_M01_AXI_AWREADY;
  wire ps7_axi_M01_AXI_AWVALID;
  wire ps7_axi_M01_AXI_BREADY;
  wire [1:0]ps7_axi_M01_AXI_BRESP;
  wire ps7_axi_M01_AXI_BVALID;
  wire [31:0]ps7_axi_M01_AXI_RDATA;
  wire ps7_axi_M01_AXI_RREADY;
  wire [1:0]ps7_axi_M01_AXI_RRESP;
  wire ps7_axi_M01_AXI_RVALID;
  wire [31:0]ps7_axi_M01_AXI_WDATA;
  wire ps7_axi_M01_AXI_WREADY;
  wire [3:0]ps7_axi_M01_AXI_WSTRB;
  wire ps7_axi_M01_AXI_WVALID;
  wire [31:0]ps7_axi_M02_AXI_ARADDR;
  wire [2:0]ps7_axi_M02_AXI_ARPROT;
  wire ps7_axi_M02_AXI_ARREADY;
  wire ps7_axi_M02_AXI_ARVALID;
  wire [31:0]ps7_axi_M02_AXI_AWADDR;
  wire [2:0]ps7_axi_M02_AXI_AWPROT;
  wire ps7_axi_M02_AXI_AWREADY;
  wire ps7_axi_M02_AXI_AWVALID;
  wire ps7_axi_M02_AXI_BREADY;
  wire [1:0]ps7_axi_M02_AXI_BRESP;
  wire ps7_axi_M02_AXI_BVALID;
  wire [31:0]ps7_axi_M02_AXI_RDATA;
  wire ps7_axi_M02_AXI_RREADY;
  wire [1:0]ps7_axi_M02_AXI_RRESP;
  wire ps7_axi_M02_AXI_RVALID;
  wire [31:0]ps7_axi_M02_AXI_WDATA;
  wire ps7_axi_M02_AXI_WREADY;
  wire [3:0]ps7_axi_M02_AXI_WSTRB;
  wire ps7_axi_M02_AXI_WVALID;
  wire [31:0]ps7_axi_M03_AXI_ARADDR;
  wire [2:0]ps7_axi_M03_AXI_ARPROT;
  wire ps7_axi_M03_AXI_ARREADY;
  wire ps7_axi_M03_AXI_ARVALID;
  wire [31:0]ps7_axi_M03_AXI_AWADDR;
  wire [2:0]ps7_axi_M03_AXI_AWPROT;
  wire ps7_axi_M03_AXI_AWREADY;
  wire ps7_axi_M03_AXI_AWVALID;
  wire ps7_axi_M03_AXI_BREADY;
  wire [1:0]ps7_axi_M03_AXI_BRESP;
  wire ps7_axi_M03_AXI_BVALID;
  wire [31:0]ps7_axi_M03_AXI_RDATA;
  wire ps7_axi_M03_AXI_RREADY;
  wire [1:0]ps7_axi_M03_AXI_RRESP;
  wire ps7_axi_M03_AXI_RVALID;
  wire [31:0]ps7_axi_M03_AXI_WDATA;
  wire ps7_axi_M03_AXI_WREADY;
  wire [3:0]ps7_axi_M03_AXI_WSTRB;
  wire ps7_axi_M03_AXI_WVALID;
  wire [31:0]ps7_axi_M04_AXI_ARADDR;
  wire [2:0]ps7_axi_M04_AXI_ARPROT;
  wire ps7_axi_M04_AXI_ARREADY;
  wire ps7_axi_M04_AXI_ARVALID;
  wire [31:0]ps7_axi_M04_AXI_AWADDR;
  wire [2:0]ps7_axi_M04_AXI_AWPROT;
  wire ps7_axi_M04_AXI_AWREADY;
  wire ps7_axi_M04_AXI_AWVALID;
  wire ps7_axi_M04_AXI_BREADY;
  wire [1:0]ps7_axi_M04_AXI_BRESP;
  wire ps7_axi_M04_AXI_BVALID;
  wire [31:0]ps7_axi_M04_AXI_RDATA;
  wire ps7_axi_M04_AXI_RREADY;
  wire [1:0]ps7_axi_M04_AXI_RRESP;
  wire ps7_axi_M04_AXI_RVALID;
  wire [31:0]ps7_axi_M04_AXI_WDATA;
  wire ps7_axi_M04_AXI_WREADY;
  wire [3:0]ps7_axi_M04_AXI_WSTRB;
  wire ps7_axi_M04_AXI_WVALID;
  wire [31:0]ps7_axi_M05_AXI_ARADDR;
  wire [2:0]ps7_axi_M05_AXI_ARPROT;
  wire ps7_axi_M05_AXI_ARREADY;
  wire ps7_axi_M05_AXI_ARVALID;
  wire [31:0]ps7_axi_M05_AXI_AWADDR;
  wire [2:0]ps7_axi_M05_AXI_AWPROT;
  wire ps7_axi_M05_AXI_AWREADY;
  wire ps7_axi_M05_AXI_AWVALID;
  wire ps7_axi_M05_AXI_BREADY;
  wire [1:0]ps7_axi_M05_AXI_BRESP;
  wire ps7_axi_M05_AXI_BVALID;
  wire [31:0]ps7_axi_M05_AXI_RDATA;
  wire ps7_axi_M05_AXI_RREADY;
  wire [1:0]ps7_axi_M05_AXI_RRESP;
  wire ps7_axi_M05_AXI_RVALID;
  wire [31:0]ps7_axi_M05_AXI_WDATA;
  wire ps7_axi_M05_AXI_WREADY;
  wire [3:0]ps7_axi_M05_AXI_WSTRB;
  wire ps7_axi_M05_AXI_WVALID;
  wire [31:0]ps7_axi_M06_AXI_ARADDR;
  wire [2:0]ps7_axi_M06_AXI_ARPROT;
  wire ps7_axi_M06_AXI_ARREADY;
  wire ps7_axi_M06_AXI_ARVALID;
  wire [31:0]ps7_axi_M06_AXI_AWADDR;
  wire [2:0]ps7_axi_M06_AXI_AWPROT;
  wire ps7_axi_M06_AXI_AWREADY;
  wire ps7_axi_M06_AXI_AWVALID;
  wire ps7_axi_M06_AXI_BREADY;
  wire [1:0]ps7_axi_M06_AXI_BRESP;
  wire ps7_axi_M06_AXI_BVALID;
  wire [31:0]ps7_axi_M06_AXI_RDATA;
  wire ps7_axi_M06_AXI_RREADY;
  wire [1:0]ps7_axi_M06_AXI_RRESP;
  wire ps7_axi_M06_AXI_RVALID;
  wire [31:0]ps7_axi_M06_AXI_WDATA;
  wire ps7_axi_M06_AXI_WREADY;
  wire [3:0]ps7_axi_M06_AXI_WSTRB;
  wire ps7_axi_M06_AXI_WVALID;
  wire [31:0]ps7_axi_M07_AXI_ARADDR;
  wire [2:0]ps7_axi_M07_AXI_ARPROT;
  wire ps7_axi_M07_AXI_ARREADY;
  wire ps7_axi_M07_AXI_ARVALID;
  wire [31:0]ps7_axi_M07_AXI_AWADDR;
  wire [2:0]ps7_axi_M07_AXI_AWPROT;
  wire ps7_axi_M07_AXI_AWREADY;
  wire ps7_axi_M07_AXI_AWVALID;
  wire ps7_axi_M07_AXI_BREADY;
  wire [1:0]ps7_axi_M07_AXI_BRESP;
  wire ps7_axi_M07_AXI_BVALID;
  wire [31:0]ps7_axi_M07_AXI_RDATA;
  wire ps7_axi_M07_AXI_RREADY;
  wire [1:0]ps7_axi_M07_AXI_RRESP;
  wire ps7_axi_M07_AXI_RVALID;
  wire [31:0]ps7_axi_M07_AXI_WDATA;
  wire ps7_axi_M07_AXI_WREADY;
  wire [3:0]ps7_axi_M07_AXI_WSTRB;
  wire ps7_axi_M07_AXI_WVALID;
  wire [0:0]ps7_rst_interconnect_aresetn;
  wire [0:0]ps7_rst_peripheral_aresetn;
  wire [0:0]ps7_rst_peripheral_reset;
  wire redpitaya_converters_0_clk_o;
  wire [13:0]redpitaya_converters_0_dataA_out_DATA;
  wire redpitaya_converters_0_dataA_out_DATA_CLK;
  wire redpitaya_converters_0_dataA_out_DATA_EN;
  wire redpitaya_converters_0_dataA_out_DATA_RST;
  wire [13:0]redpitaya_converters_0_dataB_out_DATA;
  wire redpitaya_converters_0_dataB_out_DATA_CLK;
  wire redpitaya_converters_0_dataB_out_DATA_EN;
  wire redpitaya_converters_0_dataB_out_DATA_RST;
  wire redpitaya_converters_0_rst_o;

  assign phys_interface_0_1_ADC_A = phys_interface_0_adc_a[13:0];
  assign phys_interface_0_1_ADC_B = phys_interface_0_adc_b[13:0];
  assign phys_interface_0_1_CLK_N = phys_interface_0_clk_n;
  assign phys_interface_0_1_CLK_P = phys_interface_0_clk_p;
  assign phys_interface_0_adc_cdcs = phys_interface_0_1_ADC_CDCS;
  assign phys_interface_0_dac_clk = phys_interface_0_1_DAC_CLK;
  assign phys_interface_0_dac_dat[13:0] = phys_interface_0_1_DAC_DAT;
  assign phys_interface_0_dac_rst = phys_interface_0_1_DAC_RST;
  assign phys_interface_0_dac_sel = phys_interface_0_1_DAC_SEL;
  assign phys_interface_0_dac_wrt = phys_interface_0_1_DAC_WRT;
  double_dds_adc1_offset_0 adc1_offset
       (.data_clk_i(redpitaya_converters_0_dataA_out_DATA_CLK),
        .data_clk_o(adc1_offset_data_out_DATA_CLK),
        .data_en_i(redpitaya_converters_0_dataA_out_DATA_EN),
        .data_en_o(adc1_offset_data_out_DATA_EN),
        .data_i(redpitaya_converters_0_dataA_out_DATA),
        .data_o(adc1_offset_data_out_DATA),
        .data_rst_i(redpitaya_converters_0_dataA_out_DATA_RST),
        .data_rst_o(adc1_offset_data_out_DATA_RST),
        .s00_axi_aclk(ps7_FCLK_CLK0),
        .s00_axi_araddr(ps7_axi_M05_AXI_ARADDR[3:0]),
        .s00_axi_arprot(ps7_axi_M05_AXI_ARPROT),
        .s00_axi_arready(ps7_axi_M05_AXI_ARREADY),
        .s00_axi_arvalid(ps7_axi_M05_AXI_ARVALID),
        .s00_axi_awaddr(ps7_axi_M05_AXI_AWADDR[3:0]),
        .s00_axi_awprot(ps7_axi_M05_AXI_AWPROT),
        .s00_axi_awready(ps7_axi_M05_AXI_AWREADY),
        .s00_axi_awvalid(ps7_axi_M05_AXI_AWVALID),
        .s00_axi_bready(ps7_axi_M05_AXI_BREADY),
        .s00_axi_bresp(ps7_axi_M05_AXI_BRESP),
        .s00_axi_bvalid(ps7_axi_M05_AXI_BVALID),
        .s00_axi_rdata(ps7_axi_M05_AXI_RDATA),
        .s00_axi_reset(ps7_rst_peripheral_reset),
        .s00_axi_rready(ps7_axi_M05_AXI_RREADY),
        .s00_axi_rresp(ps7_axi_M05_AXI_RRESP),
        .s00_axi_rvalid(ps7_axi_M05_AXI_RVALID),
        .s00_axi_wdata(ps7_axi_M05_AXI_WDATA),
        .s00_axi_wready(ps7_axi_M05_AXI_WREADY),
        .s00_axi_wstrb(ps7_axi_M05_AXI_WSTRB),
        .s00_axi_wvalid(ps7_axi_M05_AXI_WVALID));
  double_dds_adc2_offset_0 adc2_offset
       (.data_clk_i(redpitaya_converters_0_dataB_out_DATA_CLK),
        .data_clk_o(adc2_offset_data_out_DATA_CLK),
        .data_en_i(redpitaya_converters_0_dataB_out_DATA_EN),
        .data_en_o(adc2_offset_data_out_DATA_EN),
        .data_i(redpitaya_converters_0_dataB_out_DATA),
        .data_o(adc2_offset_data_out_DATA),
        .data_rst_i(redpitaya_converters_0_dataB_out_DATA_RST),
        .data_rst_o(adc2_offset_data_out_DATA_RST),
        .s00_axi_aclk(ps7_FCLK_CLK0),
        .s00_axi_araddr(ps7_axi_M06_AXI_ARADDR[3:0]),
        .s00_axi_arprot(ps7_axi_M06_AXI_ARPROT),
        .s00_axi_arready(ps7_axi_M06_AXI_ARREADY),
        .s00_axi_arvalid(ps7_axi_M06_AXI_ARVALID),
        .s00_axi_awaddr(ps7_axi_M06_AXI_AWADDR[3:0]),
        .s00_axi_awprot(ps7_axi_M06_AXI_AWPROT),
        .s00_axi_awready(ps7_axi_M06_AXI_AWREADY),
        .s00_axi_awvalid(ps7_axi_M06_AXI_AWVALID),
        .s00_axi_bready(ps7_axi_M06_AXI_BREADY),
        .s00_axi_bresp(ps7_axi_M06_AXI_BRESP),
        .s00_axi_bvalid(ps7_axi_M06_AXI_BVALID),
        .s00_axi_rdata(ps7_axi_M06_AXI_RDATA),
        .s00_axi_reset(ps7_rst_peripheral_reset),
        .s00_axi_rready(ps7_axi_M06_AXI_RREADY),
        .s00_axi_rresp(ps7_axi_M06_AXI_RRESP),
        .s00_axi_rvalid(ps7_axi_M06_AXI_RVALID),
        .s00_axi_wdata(ps7_axi_M06_AXI_WDATA),
        .s00_axi_wready(ps7_axi_M06_AXI_WREADY),
        .s00_axi_wstrb(ps7_axi_M06_AXI_WSTRB),
        .s00_axi_wvalid(ps7_axi_M06_AXI_WVALID));
  double_dds_conv_nco_counter_1_0 conv_nco_counter_1
       (.data1_clk_o(conv_nco_counter_1_dataI_out_DATA_CLK),
        .data1_en_o(conv_nco_counter_1_dataI_out_DATA_EN),
        .data1_eof_o(conv_nco_counter_1_dataI_out_DATA_EOF),
        .data1_o(conv_nco_counter_1_dataI_out_DATA),
        .data1_rst_o(conv_nco_counter_1_dataI_out_DATA_RST),
        .data_clk_i(nco_counter_1_sine_out_DATA_CLK),
        .data_en_i(nco_counter_1_sine_out_DATA_EN),
        .data_eof_i(1'b0),
        .data_i_i(nco_counter_1_sine_out_DATA_I),
        .data_q_i(nco_counter_1_sine_out_DATA_Q),
        .data_rst_i(nco_counter_1_sine_out_DATA_RST));
  double_dds_conv_nco_counter_2_0 conv_nco_counter_2
       (.data1_clk_o(conv_nco_counter_2_dataI_out_DATA_CLK),
        .data1_en_o(conv_nco_counter_2_dataI_out_DATA_EN),
        .data1_eof_o(conv_nco_counter_2_dataI_out_DATA_EOF),
        .data1_o(conv_nco_counter_2_dataI_out_DATA),
        .data1_rst_o(conv_nco_counter_2_dataI_out_DATA_RST),
        .data_clk_i(nco_counter_2_sine_out_DATA_CLK),
        .data_en_i(nco_counter_2_sine_out_DATA_EN),
        .data_eof_i(1'b0),
        .data_i_i(nco_counter_2_sine_out_DATA_I),
        .data_q_i(nco_counter_2_sine_out_DATA_Q),
        .data_rst_i(nco_counter_2_sine_out_DATA_RST));
  double_dds_dataReal_to_ram_1_0 dataReal_to_ram_1
       (.data1_clk_i(adc1_offset_data_out_DATA_CLK),
        .data1_en_i(adc1_offset_data_out_DATA_EN),
        .data1_eof_i(1'b0),
        .data1_i(adc1_offset_data_out_DATA),
        .data1_rst_i(adc1_offset_data_out_DATA_RST),
        .data2_clk_i(adc2_offset_data_out_DATA_CLK),
        .data2_en_i(adc2_offset_data_out_DATA_EN),
        .data2_eof_i(1'b0),
        .data2_i(adc2_offset_data_out_DATA),
        .data2_rst_i(adc2_offset_data_out_DATA_RST),
        .s00_axi_aclk(ps7_FCLK_CLK0),
        .s00_axi_araddr(ps7_axi_M07_AXI_ARADDR[3:0]),
        .s00_axi_arprot(ps7_axi_M07_AXI_ARPROT),
        .s00_axi_arready(ps7_axi_M07_AXI_ARREADY),
        .s00_axi_arvalid(ps7_axi_M07_AXI_ARVALID),
        .s00_axi_awaddr(ps7_axi_M07_AXI_AWADDR[3:0]),
        .s00_axi_awprot(ps7_axi_M07_AXI_AWPROT),
        .s00_axi_awready(ps7_axi_M07_AXI_AWREADY),
        .s00_axi_awvalid(ps7_axi_M07_AXI_AWVALID),
        .s00_axi_bready(ps7_axi_M07_AXI_BREADY),
        .s00_axi_bresp(ps7_axi_M07_AXI_BRESP),
        .s00_axi_bvalid(ps7_axi_M07_AXI_BVALID),
        .s00_axi_rdata(ps7_axi_M07_AXI_RDATA),
        .s00_axi_reset(ps7_rst_peripheral_reset),
        .s00_axi_rready(ps7_axi_M07_AXI_RREADY),
        .s00_axi_rresp(ps7_axi_M07_AXI_RRESP),
        .s00_axi_rvalid(ps7_axi_M07_AXI_RVALID),
        .s00_axi_wdata(ps7_axi_M07_AXI_WDATA),
        .s00_axi_wready(ps7_axi_M07_AXI_WREADY),
        .s00_axi_wstrb(ps7_axi_M07_AXI_WSTRB),
        .s00_axi_wvalid(ps7_axi_M07_AXI_WVALID));
  double_dds_dds1_offset_0 dds1_offset
       (.data_clk_i(mixer_sin_1_data_out_DATA_CLK),
        .data_en_i(mixer_sin_1_data_out_DATA_EN),
        .data_en_o(dds1_offset_data_out_DATA_EN),
        .data_i(mixer_sin_1_data_out_DATA),
        .data_o(dds1_offset_data_out_DATA),
        .data_rst_i(mixer_sin_1_data_out_DATA_RST),
        .data_rst_o(dds1_offset_data_out_DATA_RST),
        .s00_axi_aclk(ps7_FCLK_CLK0),
        .s00_axi_araddr(ps7_axi_M03_AXI_ARADDR[3:0]),
        .s00_axi_arprot(ps7_axi_M03_AXI_ARPROT),
        .s00_axi_arready(ps7_axi_M03_AXI_ARREADY),
        .s00_axi_arvalid(ps7_axi_M03_AXI_ARVALID),
        .s00_axi_awaddr(ps7_axi_M03_AXI_AWADDR[3:0]),
        .s00_axi_awprot(ps7_axi_M03_AXI_AWPROT),
        .s00_axi_awready(ps7_axi_M03_AXI_AWREADY),
        .s00_axi_awvalid(ps7_axi_M03_AXI_AWVALID),
        .s00_axi_bready(ps7_axi_M03_AXI_BREADY),
        .s00_axi_bresp(ps7_axi_M03_AXI_BRESP),
        .s00_axi_bvalid(ps7_axi_M03_AXI_BVALID),
        .s00_axi_rdata(ps7_axi_M03_AXI_RDATA),
        .s00_axi_reset(ps7_rst_peripheral_reset),
        .s00_axi_rready(ps7_axi_M03_AXI_RREADY),
        .s00_axi_rresp(ps7_axi_M03_AXI_RRESP),
        .s00_axi_rvalid(ps7_axi_M03_AXI_RVALID),
        .s00_axi_wdata(ps7_axi_M03_AXI_WDATA),
        .s00_axi_wready(ps7_axi_M03_AXI_WREADY),
        .s00_axi_wstrb(ps7_axi_M03_AXI_WSTRB),
        .s00_axi_wvalid(ps7_axi_M03_AXI_WVALID));
  double_dds_dds2_offset_0 dds2_offset
       (.data_clk_i(mixer_sin_2_data_out_DATA_CLK),
        .data_en_i(mixer_sin_2_data_out_DATA_EN),
        .data_en_o(dds2_offset_data_out_DATA_EN),
        .data_i(mixer_sin_2_data_out_DATA),
        .data_o(dds2_offset_data_out_DATA),
        .data_rst_i(mixer_sin_2_data_out_DATA_RST),
        .data_rst_o(dds2_offset_data_out_DATA_RST),
        .s00_axi_aclk(ps7_FCLK_CLK0),
        .s00_axi_araddr(ps7_axi_M04_AXI_ARADDR[3:0]),
        .s00_axi_arprot(ps7_axi_M04_AXI_ARPROT),
        .s00_axi_arready(ps7_axi_M04_AXI_ARREADY),
        .s00_axi_arvalid(ps7_axi_M04_AXI_ARVALID),
        .s00_axi_awaddr(ps7_axi_M04_AXI_AWADDR[3:0]),
        .s00_axi_awprot(ps7_axi_M04_AXI_AWPROT),
        .s00_axi_awready(ps7_axi_M04_AXI_AWREADY),
        .s00_axi_awvalid(ps7_axi_M04_AXI_AWVALID),
        .s00_axi_bready(ps7_axi_M04_AXI_BREADY),
        .s00_axi_bresp(ps7_axi_M04_AXI_BRESP),
        .s00_axi_bvalid(ps7_axi_M04_AXI_BVALID),
        .s00_axi_rdata(ps7_axi_M04_AXI_RDATA),
        .s00_axi_reset(ps7_rst_peripheral_reset),
        .s00_axi_rready(ps7_axi_M04_AXI_RREADY),
        .s00_axi_rresp(ps7_axi_M04_AXI_RRESP),
        .s00_axi_rvalid(ps7_axi_M04_AXI_RVALID),
        .s00_axi_wdata(ps7_axi_M04_AXI_WDATA),
        .s00_axi_wready(ps7_axi_M04_AXI_WREADY),
        .s00_axi_wstrb(ps7_axi_M04_AXI_WSTRB),
        .s00_axi_wvalid(ps7_axi_M04_AXI_WVALID));
  double_dds_dds_ampl_0 dds_ampl
       (.dataA_clk_o(dds_ampl_dataA_out_DATA_CLK),
        .dataA_en_o(dds_ampl_dataA_out_DATA_EN),
        .dataA_eof_o(dds_ampl_dataA_out_DATA_EOF),
        .dataA_o(dds_ampl_dataA_out_DATA),
        .dataA_rst_o(dds_ampl_dataA_out_DATA_RST),
        .dataB_clk_o(dds_ampl_dataB_out_DATA_CLK),
        .dataB_en_o(dds_ampl_dataB_out_DATA_EN),
        .dataB_eof_o(dds_ampl_dataB_out_DATA_EOF),
        .dataB_o(dds_ampl_dataB_out_DATA),
        .dataB_rst_o(dds_ampl_dataB_out_DATA_RST),
        .ref_clk_i(redpitaya_converters_0_clk_o),
        .ref_rst_i(redpitaya_converters_0_rst_o),
        .s00_axi_aclk(ps7_FCLK_CLK0),
        .s00_axi_araddr(ps7_axi_M00_AXI_ARADDR[3:0]),
        .s00_axi_arprot(ps7_axi_M00_AXI_ARPROT),
        .s00_axi_arready(ps7_axi_M00_AXI_ARREADY),
        .s00_axi_arvalid(ps7_axi_M00_AXI_ARVALID),
        .s00_axi_awaddr(ps7_axi_M00_AXI_AWADDR[3:0]),
        .s00_axi_awprot(ps7_axi_M00_AXI_AWPROT),
        .s00_axi_awready(ps7_axi_M00_AXI_AWREADY),
        .s00_axi_awvalid(ps7_axi_M00_AXI_AWVALID),
        .s00_axi_bready(ps7_axi_M00_AXI_BREADY),
        .s00_axi_bresp(ps7_axi_M00_AXI_BRESP),
        .s00_axi_bvalid(ps7_axi_M00_AXI_BVALID),
        .s00_axi_rdata(ps7_axi_M00_AXI_RDATA),
        .s00_axi_reset(ps7_rst_peripheral_reset),
        .s00_axi_rready(ps7_axi_M00_AXI_RREADY),
        .s00_axi_rresp(ps7_axi_M00_AXI_RRESP),
        .s00_axi_rvalid(ps7_axi_M00_AXI_RVALID),
        .s00_axi_wdata(ps7_axi_M00_AXI_WDATA),
        .s00_axi_wready(ps7_axi_M00_AXI_WREADY),
        .s00_axi_wstrb(ps7_axi_M00_AXI_WSTRB),
        .s00_axi_wvalid(ps7_axi_M00_AXI_WVALID));
  double_dds_mixer_sin_1_0 mixer_sin_1
       (.data1_clk_i(dds_ampl_dataA_out_DATA_CLK),
        .data1_en_i(dds_ampl_dataA_out_DATA_EN),
        .data1_eof_i(dds_ampl_dataA_out_DATA_EOF),
        .data1_i(dds_ampl_dataA_out_DATA),
        .data1_rst_i(dds_ampl_dataA_out_DATA_RST),
        .data1_sof_i(1'b0),
        .data2_clk_i(conv_nco_counter_1_dataI_out_DATA_CLK),
        .data2_en_i(conv_nco_counter_1_dataI_out_DATA_EN),
        .data2_eof_i(conv_nco_counter_1_dataI_out_DATA_EOF),
        .data2_i(conv_nco_counter_1_dataI_out_DATA),
        .data2_rst_i(conv_nco_counter_1_dataI_out_DATA_RST),
        .data2_sof_i(1'b0),
        .data_clk_o(mixer_sin_1_data_out_DATA_CLK),
        .data_en_o(mixer_sin_1_data_out_DATA_EN),
        .data_o(mixer_sin_1_data_out_DATA),
        .data_rst_o(mixer_sin_1_data_out_DATA_RST));
  double_dds_mixer_sin_2_0 mixer_sin_2
       (.data1_clk_i(dds_ampl_dataB_out_DATA_CLK),
        .data1_en_i(dds_ampl_dataB_out_DATA_EN),
        .data1_eof_i(dds_ampl_dataB_out_DATA_EOF),
        .data1_i(dds_ampl_dataB_out_DATA),
        .data1_rst_i(dds_ampl_dataB_out_DATA_RST),
        .data1_sof_i(1'b0),
        .data2_clk_i(conv_nco_counter_2_dataI_out_DATA_CLK),
        .data2_en_i(conv_nco_counter_2_dataI_out_DATA_EN),
        .data2_eof_i(conv_nco_counter_2_dataI_out_DATA_EOF),
        .data2_i(conv_nco_counter_2_dataI_out_DATA),
        .data2_rst_i(conv_nco_counter_2_dataI_out_DATA_RST),
        .data2_sof_i(1'b0),
        .data_clk_o(mixer_sin_2_data_out_DATA_CLK),
        .data_en_o(mixer_sin_2_data_out_DATA_EN),
        .data_o(mixer_sin_2_data_out_DATA),
        .data_rst_o(mixer_sin_2_data_out_DATA_RST));
  double_dds_nco_counter_1_0 nco_counter_1
       (.dds_clk_o(nco_counter_1_sine_out_DATA_CLK),
        .dds_cos_o(nco_counter_1_sine_out_DATA_I),
        .dds_en_o(nco_counter_1_sine_out_DATA_EN),
        .dds_rst_o(nco_counter_1_sine_out_DATA_RST),
        .dds_sin_o(nco_counter_1_sine_out_DATA_Q),
        .pinc_clk_i(1'b0),
        .pinc_en_i(1'b0),
        .pinc_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pinc_rst_i(1'b0),
        .poff_clk_i(1'b0),
        .poff_en_i(1'b0),
        .poff_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .poff_rst_i(1'b0),
        .ref_clk_i(redpitaya_converters_0_clk_o),
        .ref_rst_i(redpitaya_converters_0_rst_o),
        .s00_axi_aclk(ps7_FCLK_CLK0),
        .s00_axi_araddr(ps7_axi_M01_AXI_ARADDR[4:0]),
        .s00_axi_arprot(ps7_axi_M01_AXI_ARPROT),
        .s00_axi_arready(ps7_axi_M01_AXI_ARREADY),
        .s00_axi_arvalid(ps7_axi_M01_AXI_ARVALID),
        .s00_axi_awaddr(ps7_axi_M01_AXI_AWADDR[4:0]),
        .s00_axi_awprot(ps7_axi_M01_AXI_AWPROT),
        .s00_axi_awready(ps7_axi_M01_AXI_AWREADY),
        .s00_axi_awvalid(ps7_axi_M01_AXI_AWVALID),
        .s00_axi_bready(ps7_axi_M01_AXI_BREADY),
        .s00_axi_bresp(ps7_axi_M01_AXI_BRESP),
        .s00_axi_bvalid(ps7_axi_M01_AXI_BVALID),
        .s00_axi_rdata(ps7_axi_M01_AXI_RDATA),
        .s00_axi_reset(ps7_rst_peripheral_reset),
        .s00_axi_rready(ps7_axi_M01_AXI_RREADY),
        .s00_axi_rresp(ps7_axi_M01_AXI_RRESP),
        .s00_axi_rvalid(ps7_axi_M01_AXI_RVALID),
        .s00_axi_wdata(ps7_axi_M01_AXI_WDATA),
        .s00_axi_wready(ps7_axi_M01_AXI_WREADY),
        .s00_axi_wstrb(ps7_axi_M01_AXI_WSTRB),
        .s00_axi_wvalid(ps7_axi_M01_AXI_WVALID),
        .sync_i(1'b0));
  double_dds_nco_counter_2_0 nco_counter_2
       (.dds_clk_o(nco_counter_2_sine_out_DATA_CLK),
        .dds_cos_o(nco_counter_2_sine_out_DATA_I),
        .dds_en_o(nco_counter_2_sine_out_DATA_EN),
        .dds_rst_o(nco_counter_2_sine_out_DATA_RST),
        .dds_sin_o(nco_counter_2_sine_out_DATA_Q),
        .pinc_clk_i(1'b0),
        .pinc_en_i(1'b0),
        .pinc_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pinc_rst_i(1'b0),
        .poff_clk_i(1'b0),
        .poff_en_i(1'b0),
        .poff_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .poff_rst_i(1'b0),
        .ref_clk_i(redpitaya_converters_0_clk_o),
        .ref_rst_i(redpitaya_converters_0_rst_o),
        .s00_axi_aclk(ps7_FCLK_CLK0),
        .s00_axi_araddr(ps7_axi_M02_AXI_ARADDR[4:0]),
        .s00_axi_arprot(ps7_axi_M02_AXI_ARPROT),
        .s00_axi_arready(ps7_axi_M02_AXI_ARREADY),
        .s00_axi_arvalid(ps7_axi_M02_AXI_ARVALID),
        .s00_axi_awaddr(ps7_axi_M02_AXI_AWADDR[4:0]),
        .s00_axi_awprot(ps7_axi_M02_AXI_AWPROT),
        .s00_axi_awready(ps7_axi_M02_AXI_AWREADY),
        .s00_axi_awvalid(ps7_axi_M02_AXI_AWVALID),
        .s00_axi_bready(ps7_axi_M02_AXI_BREADY),
        .s00_axi_bresp(ps7_axi_M02_AXI_BRESP),
        .s00_axi_bvalid(ps7_axi_M02_AXI_BVALID),
        .s00_axi_rdata(ps7_axi_M02_AXI_RDATA),
        .s00_axi_reset(ps7_rst_peripheral_reset),
        .s00_axi_rready(ps7_axi_M02_AXI_RREADY),
        .s00_axi_rresp(ps7_axi_M02_AXI_RRESP),
        .s00_axi_rvalid(ps7_axi_M02_AXI_RVALID),
        .s00_axi_wdata(ps7_axi_M02_AXI_WDATA),
        .s00_axi_wready(ps7_axi_M02_AXI_WREADY),
        .s00_axi_wstrb(ps7_axi_M02_AXI_WSTRB),
        .s00_axi_wvalid(ps7_axi_M02_AXI_WVALID),
        .sync_i(1'b0));
  double_dds_ps7_0 ps7
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .ENET0_MDIO_I(1'b0),
        .FCLK_CLK0(ps7_FCLK_CLK0),
        .FCLK_RESET0_N(ps7_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(ps7_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(ps7_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(ps7_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(ps7_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(ps7_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(ps7_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(ps7_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(ps7_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(ps7_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(ps7_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(ps7_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(ps7_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(ps7_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(ps7_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(ps7_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(ps7_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(ps7_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(ps7_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(ps7_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(ps7_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(ps7_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(ps7_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(ps7_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(ps7_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(ps7_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(ps7_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(ps7_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(ps7_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(ps7_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(ps7_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(ps7_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(ps7_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(ps7_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(ps7_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(ps7_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(ps7_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(ps7_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(ps7_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(ps7_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SPI0_MISO_I(1'b0),
        .SPI0_MOSI_I(1'b0),
        .SPI0_SCLK_I(1'b0),
        .SPI0_SS_I(1'b0),
        .USB0_VBUS_PWRFAULT(1'b0));
  double_dds_ps7_axi_0 ps7_axi
       (.ACLK(ps7_FCLK_CLK0),
        .ARESETN(ps7_rst_interconnect_aresetn),
        .M00_ACLK(ps7_FCLK_CLK0),
        .M00_ARESETN(ps7_rst_peripheral_aresetn),
        .M00_AXI_araddr(ps7_axi_M00_AXI_ARADDR),
        .M00_AXI_arprot(ps7_axi_M00_AXI_ARPROT),
        .M00_AXI_arready(ps7_axi_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps7_axi_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps7_axi_M00_AXI_AWADDR),
        .M00_AXI_awprot(ps7_axi_M00_AXI_AWPROT),
        .M00_AXI_awready(ps7_axi_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps7_axi_M00_AXI_AWVALID),
        .M00_AXI_bready(ps7_axi_M00_AXI_BREADY),
        .M00_AXI_bresp(ps7_axi_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps7_axi_M00_AXI_BVALID),
        .M00_AXI_rdata(ps7_axi_M00_AXI_RDATA),
        .M00_AXI_rready(ps7_axi_M00_AXI_RREADY),
        .M00_AXI_rresp(ps7_axi_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps7_axi_M00_AXI_RVALID),
        .M00_AXI_wdata(ps7_axi_M00_AXI_WDATA),
        .M00_AXI_wready(ps7_axi_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps7_axi_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps7_axi_M00_AXI_WVALID),
        .M01_ACLK(ps7_FCLK_CLK0),
        .M01_ARESETN(ps7_rst_peripheral_aresetn),
        .M01_AXI_araddr(ps7_axi_M01_AXI_ARADDR),
        .M01_AXI_arprot(ps7_axi_M01_AXI_ARPROT),
        .M01_AXI_arready(ps7_axi_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps7_axi_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps7_axi_M01_AXI_AWADDR),
        .M01_AXI_awprot(ps7_axi_M01_AXI_AWPROT),
        .M01_AXI_awready(ps7_axi_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps7_axi_M01_AXI_AWVALID),
        .M01_AXI_bready(ps7_axi_M01_AXI_BREADY),
        .M01_AXI_bresp(ps7_axi_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps7_axi_M01_AXI_BVALID),
        .M01_AXI_rdata(ps7_axi_M01_AXI_RDATA),
        .M01_AXI_rready(ps7_axi_M01_AXI_RREADY),
        .M01_AXI_rresp(ps7_axi_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps7_axi_M01_AXI_RVALID),
        .M01_AXI_wdata(ps7_axi_M01_AXI_WDATA),
        .M01_AXI_wready(ps7_axi_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps7_axi_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps7_axi_M01_AXI_WVALID),
        .M02_ACLK(ps7_FCLK_CLK0),
        .M02_ARESETN(ps7_rst_peripheral_aresetn),
        .M02_AXI_araddr(ps7_axi_M02_AXI_ARADDR),
        .M02_AXI_arprot(ps7_axi_M02_AXI_ARPROT),
        .M02_AXI_arready(ps7_axi_M02_AXI_ARREADY),
        .M02_AXI_arvalid(ps7_axi_M02_AXI_ARVALID),
        .M02_AXI_awaddr(ps7_axi_M02_AXI_AWADDR),
        .M02_AXI_awprot(ps7_axi_M02_AXI_AWPROT),
        .M02_AXI_awready(ps7_axi_M02_AXI_AWREADY),
        .M02_AXI_awvalid(ps7_axi_M02_AXI_AWVALID),
        .M02_AXI_bready(ps7_axi_M02_AXI_BREADY),
        .M02_AXI_bresp(ps7_axi_M02_AXI_BRESP),
        .M02_AXI_bvalid(ps7_axi_M02_AXI_BVALID),
        .M02_AXI_rdata(ps7_axi_M02_AXI_RDATA),
        .M02_AXI_rready(ps7_axi_M02_AXI_RREADY),
        .M02_AXI_rresp(ps7_axi_M02_AXI_RRESP),
        .M02_AXI_rvalid(ps7_axi_M02_AXI_RVALID),
        .M02_AXI_wdata(ps7_axi_M02_AXI_WDATA),
        .M02_AXI_wready(ps7_axi_M02_AXI_WREADY),
        .M02_AXI_wstrb(ps7_axi_M02_AXI_WSTRB),
        .M02_AXI_wvalid(ps7_axi_M02_AXI_WVALID),
        .M03_ACLK(ps7_FCLK_CLK0),
        .M03_ARESETN(ps7_rst_peripheral_aresetn),
        .M03_AXI_araddr(ps7_axi_M03_AXI_ARADDR),
        .M03_AXI_arprot(ps7_axi_M03_AXI_ARPROT),
        .M03_AXI_arready(ps7_axi_M03_AXI_ARREADY),
        .M03_AXI_arvalid(ps7_axi_M03_AXI_ARVALID),
        .M03_AXI_awaddr(ps7_axi_M03_AXI_AWADDR),
        .M03_AXI_awprot(ps7_axi_M03_AXI_AWPROT),
        .M03_AXI_awready(ps7_axi_M03_AXI_AWREADY),
        .M03_AXI_awvalid(ps7_axi_M03_AXI_AWVALID),
        .M03_AXI_bready(ps7_axi_M03_AXI_BREADY),
        .M03_AXI_bresp(ps7_axi_M03_AXI_BRESP),
        .M03_AXI_bvalid(ps7_axi_M03_AXI_BVALID),
        .M03_AXI_rdata(ps7_axi_M03_AXI_RDATA),
        .M03_AXI_rready(ps7_axi_M03_AXI_RREADY),
        .M03_AXI_rresp(ps7_axi_M03_AXI_RRESP),
        .M03_AXI_rvalid(ps7_axi_M03_AXI_RVALID),
        .M03_AXI_wdata(ps7_axi_M03_AXI_WDATA),
        .M03_AXI_wready(ps7_axi_M03_AXI_WREADY),
        .M03_AXI_wstrb(ps7_axi_M03_AXI_WSTRB),
        .M03_AXI_wvalid(ps7_axi_M03_AXI_WVALID),
        .M04_ACLK(ps7_FCLK_CLK0),
        .M04_ARESETN(ps7_rst_peripheral_aresetn),
        .M04_AXI_araddr(ps7_axi_M04_AXI_ARADDR),
        .M04_AXI_arprot(ps7_axi_M04_AXI_ARPROT),
        .M04_AXI_arready(ps7_axi_M04_AXI_ARREADY),
        .M04_AXI_arvalid(ps7_axi_M04_AXI_ARVALID),
        .M04_AXI_awaddr(ps7_axi_M04_AXI_AWADDR),
        .M04_AXI_awprot(ps7_axi_M04_AXI_AWPROT),
        .M04_AXI_awready(ps7_axi_M04_AXI_AWREADY),
        .M04_AXI_awvalid(ps7_axi_M04_AXI_AWVALID),
        .M04_AXI_bready(ps7_axi_M04_AXI_BREADY),
        .M04_AXI_bresp(ps7_axi_M04_AXI_BRESP),
        .M04_AXI_bvalid(ps7_axi_M04_AXI_BVALID),
        .M04_AXI_rdata(ps7_axi_M04_AXI_RDATA),
        .M04_AXI_rready(ps7_axi_M04_AXI_RREADY),
        .M04_AXI_rresp(ps7_axi_M04_AXI_RRESP),
        .M04_AXI_rvalid(ps7_axi_M04_AXI_RVALID),
        .M04_AXI_wdata(ps7_axi_M04_AXI_WDATA),
        .M04_AXI_wready(ps7_axi_M04_AXI_WREADY),
        .M04_AXI_wstrb(ps7_axi_M04_AXI_WSTRB),
        .M04_AXI_wvalid(ps7_axi_M04_AXI_WVALID),
        .M05_ACLK(ps7_FCLK_CLK0),
        .M05_ARESETN(ps7_rst_peripheral_aresetn),
        .M05_AXI_araddr(ps7_axi_M05_AXI_ARADDR),
        .M05_AXI_arprot(ps7_axi_M05_AXI_ARPROT),
        .M05_AXI_arready(ps7_axi_M05_AXI_ARREADY),
        .M05_AXI_arvalid(ps7_axi_M05_AXI_ARVALID),
        .M05_AXI_awaddr(ps7_axi_M05_AXI_AWADDR),
        .M05_AXI_awprot(ps7_axi_M05_AXI_AWPROT),
        .M05_AXI_awready(ps7_axi_M05_AXI_AWREADY),
        .M05_AXI_awvalid(ps7_axi_M05_AXI_AWVALID),
        .M05_AXI_bready(ps7_axi_M05_AXI_BREADY),
        .M05_AXI_bresp(ps7_axi_M05_AXI_BRESP),
        .M05_AXI_bvalid(ps7_axi_M05_AXI_BVALID),
        .M05_AXI_rdata(ps7_axi_M05_AXI_RDATA),
        .M05_AXI_rready(ps7_axi_M05_AXI_RREADY),
        .M05_AXI_rresp(ps7_axi_M05_AXI_RRESP),
        .M05_AXI_rvalid(ps7_axi_M05_AXI_RVALID),
        .M05_AXI_wdata(ps7_axi_M05_AXI_WDATA),
        .M05_AXI_wready(ps7_axi_M05_AXI_WREADY),
        .M05_AXI_wstrb(ps7_axi_M05_AXI_WSTRB),
        .M05_AXI_wvalid(ps7_axi_M05_AXI_WVALID),
        .M06_ACLK(ps7_FCLK_CLK0),
        .M06_ARESETN(ps7_rst_peripheral_aresetn),
        .M06_AXI_araddr(ps7_axi_M06_AXI_ARADDR),
        .M06_AXI_arprot(ps7_axi_M06_AXI_ARPROT),
        .M06_AXI_arready(ps7_axi_M06_AXI_ARREADY),
        .M06_AXI_arvalid(ps7_axi_M06_AXI_ARVALID),
        .M06_AXI_awaddr(ps7_axi_M06_AXI_AWADDR),
        .M06_AXI_awprot(ps7_axi_M06_AXI_AWPROT),
        .M06_AXI_awready(ps7_axi_M06_AXI_AWREADY),
        .M06_AXI_awvalid(ps7_axi_M06_AXI_AWVALID),
        .M06_AXI_bready(ps7_axi_M06_AXI_BREADY),
        .M06_AXI_bresp(ps7_axi_M06_AXI_BRESP),
        .M06_AXI_bvalid(ps7_axi_M06_AXI_BVALID),
        .M06_AXI_rdata(ps7_axi_M06_AXI_RDATA),
        .M06_AXI_rready(ps7_axi_M06_AXI_RREADY),
        .M06_AXI_rresp(ps7_axi_M06_AXI_RRESP),
        .M06_AXI_rvalid(ps7_axi_M06_AXI_RVALID),
        .M06_AXI_wdata(ps7_axi_M06_AXI_WDATA),
        .M06_AXI_wready(ps7_axi_M06_AXI_WREADY),
        .M06_AXI_wstrb(ps7_axi_M06_AXI_WSTRB),
        .M06_AXI_wvalid(ps7_axi_M06_AXI_WVALID),
        .M07_ACLK(ps7_FCLK_CLK0),
        .M07_ARESETN(ps7_rst_peripheral_aresetn),
        .M07_AXI_araddr(ps7_axi_M07_AXI_ARADDR),
        .M07_AXI_arprot(ps7_axi_M07_AXI_ARPROT),
        .M07_AXI_arready(ps7_axi_M07_AXI_ARREADY),
        .M07_AXI_arvalid(ps7_axi_M07_AXI_ARVALID),
        .M07_AXI_awaddr(ps7_axi_M07_AXI_AWADDR),
        .M07_AXI_awprot(ps7_axi_M07_AXI_AWPROT),
        .M07_AXI_awready(ps7_axi_M07_AXI_AWREADY),
        .M07_AXI_awvalid(ps7_axi_M07_AXI_AWVALID),
        .M07_AXI_bready(ps7_axi_M07_AXI_BREADY),
        .M07_AXI_bresp(ps7_axi_M07_AXI_BRESP),
        .M07_AXI_bvalid(ps7_axi_M07_AXI_BVALID),
        .M07_AXI_rdata(ps7_axi_M07_AXI_RDATA),
        .M07_AXI_rready(ps7_axi_M07_AXI_RREADY),
        .M07_AXI_rresp(ps7_axi_M07_AXI_RRESP),
        .M07_AXI_rvalid(ps7_axi_M07_AXI_RVALID),
        .M07_AXI_wdata(ps7_axi_M07_AXI_WDATA),
        .M07_AXI_wready(ps7_axi_M07_AXI_WREADY),
        .M07_AXI_wstrb(ps7_axi_M07_AXI_WSTRB),
        .M07_AXI_wvalid(ps7_axi_M07_AXI_WVALID),
        .S00_ACLK(ps7_FCLK_CLK0),
        .S00_ARESETN(ps7_rst_peripheral_aresetn),
        .S00_AXI_araddr(ps7_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(ps7_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(ps7_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(ps7_M_AXI_GP0_ARID),
        .S00_AXI_arlen(ps7_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(ps7_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(ps7_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(ps7_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(ps7_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(ps7_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(ps7_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(ps7_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(ps7_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(ps7_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(ps7_M_AXI_GP0_AWID),
        .S00_AXI_awlen(ps7_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(ps7_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(ps7_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(ps7_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(ps7_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(ps7_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(ps7_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(ps7_M_AXI_GP0_BID),
        .S00_AXI_bready(ps7_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(ps7_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(ps7_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(ps7_M_AXI_GP0_RDATA),
        .S00_AXI_rid(ps7_M_AXI_GP0_RID),
        .S00_AXI_rlast(ps7_M_AXI_GP0_RLAST),
        .S00_AXI_rready(ps7_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(ps7_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(ps7_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(ps7_M_AXI_GP0_WDATA),
        .S00_AXI_wid(ps7_M_AXI_GP0_WID),
        .S00_AXI_wlast(ps7_M_AXI_GP0_WLAST),
        .S00_AXI_wready(ps7_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(ps7_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(ps7_M_AXI_GP0_WVALID));
  double_dds_ps7_rst_0 ps7_rst
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ps7_FCLK_RESET0_N),
        .interconnect_aresetn(ps7_rst_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(ps7_rst_peripheral_aresetn),
        .peripheral_reset(ps7_rst_peripheral_reset),
        .slowest_sync_clk(ps7_FCLK_CLK0));
  double_dds_redpitaya_converters_0_0 redpitaya_converters_0
       (.adc_cdcs(phys_interface_0_1_ADC_CDCS),
        .adc_clk_n_i(phys_interface_0_1_CLK_N),
        .adc_clk_p_i(phys_interface_0_1_CLK_P),
        .adc_data_a_i(phys_interface_0_1_ADC_A),
        .adc_data_b_i(phys_interface_0_1_ADC_B),
        .adc_rst_i(ps7_rst_peripheral_reset),
        .clk_o(redpitaya_converters_0_clk_o),
        .dac_clk_o(phys_interface_0_1_DAC_CLK),
        .dac_dat_a_en_i(dds1_offset_data_out_DATA_EN),
        .dac_dat_a_i(dds1_offset_data_out_DATA),
        .dac_dat_a_rst_i(dds1_offset_data_out_DATA_RST),
        .dac_dat_b_en_i(dds2_offset_data_out_DATA_EN),
        .dac_dat_b_i(dds2_offset_data_out_DATA),
        .dac_dat_b_rst_i(dds2_offset_data_out_DATA_RST),
        .dac_dat_o(phys_interface_0_1_DAC_DAT),
        .dac_rst_o(phys_interface_0_1_DAC_RST),
        .dac_sel_o(phys_interface_0_1_DAC_SEL),
        .dac_wrt_o(phys_interface_0_1_DAC_WRT),
        .data_a_clk_o(redpitaya_converters_0_dataA_out_DATA_CLK),
        .data_a_en_o(redpitaya_converters_0_dataA_out_DATA_EN),
        .data_a_o(redpitaya_converters_0_dataA_out_DATA),
        .data_a_rst_o(redpitaya_converters_0_dataA_out_DATA_RST),
        .data_b_clk_o(redpitaya_converters_0_dataB_out_DATA_CLK),
        .data_b_en_o(redpitaya_converters_0_dataB_out_DATA_EN),
        .data_b_o(redpitaya_converters_0_dataB_out_DATA),
        .data_b_rst_o(redpitaya_converters_0_dataB_out_DATA_RST),
        .rst_o(redpitaya_converters_0_rst_o));
endmodule

module double_dds_ps7_axi_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arprot,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awprot,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  output [2:0]M06_AXI_arprot;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  output [2:0]M06_AXI_awprot;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  output [2:0]M07_AXI_arprot;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  output [2:0]M07_AXI_awprot;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_ps7_axi_ARADDR;
  wire [2:0]m00_couplers_to_ps7_axi_ARPROT;
  wire [0:0]m00_couplers_to_ps7_axi_ARREADY;
  wire [0:0]m00_couplers_to_ps7_axi_ARVALID;
  wire [31:0]m00_couplers_to_ps7_axi_AWADDR;
  wire [2:0]m00_couplers_to_ps7_axi_AWPROT;
  wire [0:0]m00_couplers_to_ps7_axi_AWREADY;
  wire [0:0]m00_couplers_to_ps7_axi_AWVALID;
  wire [0:0]m00_couplers_to_ps7_axi_BREADY;
  wire [1:0]m00_couplers_to_ps7_axi_BRESP;
  wire [0:0]m00_couplers_to_ps7_axi_BVALID;
  wire [31:0]m00_couplers_to_ps7_axi_RDATA;
  wire [0:0]m00_couplers_to_ps7_axi_RREADY;
  wire [1:0]m00_couplers_to_ps7_axi_RRESP;
  wire [0:0]m00_couplers_to_ps7_axi_RVALID;
  wire [31:0]m00_couplers_to_ps7_axi_WDATA;
  wire [0:0]m00_couplers_to_ps7_axi_WREADY;
  wire [3:0]m00_couplers_to_ps7_axi_WSTRB;
  wire [0:0]m00_couplers_to_ps7_axi_WVALID;
  wire [31:0]m01_couplers_to_ps7_axi_ARADDR;
  wire [2:0]m01_couplers_to_ps7_axi_ARPROT;
  wire m01_couplers_to_ps7_axi_ARREADY;
  wire m01_couplers_to_ps7_axi_ARVALID;
  wire [31:0]m01_couplers_to_ps7_axi_AWADDR;
  wire [2:0]m01_couplers_to_ps7_axi_AWPROT;
  wire m01_couplers_to_ps7_axi_AWREADY;
  wire m01_couplers_to_ps7_axi_AWVALID;
  wire m01_couplers_to_ps7_axi_BREADY;
  wire [1:0]m01_couplers_to_ps7_axi_BRESP;
  wire m01_couplers_to_ps7_axi_BVALID;
  wire [31:0]m01_couplers_to_ps7_axi_RDATA;
  wire m01_couplers_to_ps7_axi_RREADY;
  wire [1:0]m01_couplers_to_ps7_axi_RRESP;
  wire m01_couplers_to_ps7_axi_RVALID;
  wire [31:0]m01_couplers_to_ps7_axi_WDATA;
  wire m01_couplers_to_ps7_axi_WREADY;
  wire [3:0]m01_couplers_to_ps7_axi_WSTRB;
  wire m01_couplers_to_ps7_axi_WVALID;
  wire [31:0]m02_couplers_to_ps7_axi_ARADDR;
  wire [2:0]m02_couplers_to_ps7_axi_ARPROT;
  wire m02_couplers_to_ps7_axi_ARREADY;
  wire m02_couplers_to_ps7_axi_ARVALID;
  wire [31:0]m02_couplers_to_ps7_axi_AWADDR;
  wire [2:0]m02_couplers_to_ps7_axi_AWPROT;
  wire m02_couplers_to_ps7_axi_AWREADY;
  wire m02_couplers_to_ps7_axi_AWVALID;
  wire m02_couplers_to_ps7_axi_BREADY;
  wire [1:0]m02_couplers_to_ps7_axi_BRESP;
  wire m02_couplers_to_ps7_axi_BVALID;
  wire [31:0]m02_couplers_to_ps7_axi_RDATA;
  wire m02_couplers_to_ps7_axi_RREADY;
  wire [1:0]m02_couplers_to_ps7_axi_RRESP;
  wire m02_couplers_to_ps7_axi_RVALID;
  wire [31:0]m02_couplers_to_ps7_axi_WDATA;
  wire m02_couplers_to_ps7_axi_WREADY;
  wire [3:0]m02_couplers_to_ps7_axi_WSTRB;
  wire m02_couplers_to_ps7_axi_WVALID;
  wire [31:0]m03_couplers_to_ps7_axi_ARADDR;
  wire [2:0]m03_couplers_to_ps7_axi_ARPROT;
  wire m03_couplers_to_ps7_axi_ARREADY;
  wire m03_couplers_to_ps7_axi_ARVALID;
  wire [31:0]m03_couplers_to_ps7_axi_AWADDR;
  wire [2:0]m03_couplers_to_ps7_axi_AWPROT;
  wire m03_couplers_to_ps7_axi_AWREADY;
  wire m03_couplers_to_ps7_axi_AWVALID;
  wire m03_couplers_to_ps7_axi_BREADY;
  wire [1:0]m03_couplers_to_ps7_axi_BRESP;
  wire m03_couplers_to_ps7_axi_BVALID;
  wire [31:0]m03_couplers_to_ps7_axi_RDATA;
  wire m03_couplers_to_ps7_axi_RREADY;
  wire [1:0]m03_couplers_to_ps7_axi_RRESP;
  wire m03_couplers_to_ps7_axi_RVALID;
  wire [31:0]m03_couplers_to_ps7_axi_WDATA;
  wire m03_couplers_to_ps7_axi_WREADY;
  wire [3:0]m03_couplers_to_ps7_axi_WSTRB;
  wire m03_couplers_to_ps7_axi_WVALID;
  wire [31:0]m04_couplers_to_ps7_axi_ARADDR;
  wire [2:0]m04_couplers_to_ps7_axi_ARPROT;
  wire m04_couplers_to_ps7_axi_ARREADY;
  wire m04_couplers_to_ps7_axi_ARVALID;
  wire [31:0]m04_couplers_to_ps7_axi_AWADDR;
  wire [2:0]m04_couplers_to_ps7_axi_AWPROT;
  wire m04_couplers_to_ps7_axi_AWREADY;
  wire m04_couplers_to_ps7_axi_AWVALID;
  wire m04_couplers_to_ps7_axi_BREADY;
  wire [1:0]m04_couplers_to_ps7_axi_BRESP;
  wire m04_couplers_to_ps7_axi_BVALID;
  wire [31:0]m04_couplers_to_ps7_axi_RDATA;
  wire m04_couplers_to_ps7_axi_RREADY;
  wire [1:0]m04_couplers_to_ps7_axi_RRESP;
  wire m04_couplers_to_ps7_axi_RVALID;
  wire [31:0]m04_couplers_to_ps7_axi_WDATA;
  wire m04_couplers_to_ps7_axi_WREADY;
  wire [3:0]m04_couplers_to_ps7_axi_WSTRB;
  wire m04_couplers_to_ps7_axi_WVALID;
  wire [31:0]m05_couplers_to_ps7_axi_ARADDR;
  wire [2:0]m05_couplers_to_ps7_axi_ARPROT;
  wire m05_couplers_to_ps7_axi_ARREADY;
  wire m05_couplers_to_ps7_axi_ARVALID;
  wire [31:0]m05_couplers_to_ps7_axi_AWADDR;
  wire [2:0]m05_couplers_to_ps7_axi_AWPROT;
  wire m05_couplers_to_ps7_axi_AWREADY;
  wire m05_couplers_to_ps7_axi_AWVALID;
  wire m05_couplers_to_ps7_axi_BREADY;
  wire [1:0]m05_couplers_to_ps7_axi_BRESP;
  wire m05_couplers_to_ps7_axi_BVALID;
  wire [31:0]m05_couplers_to_ps7_axi_RDATA;
  wire m05_couplers_to_ps7_axi_RREADY;
  wire [1:0]m05_couplers_to_ps7_axi_RRESP;
  wire m05_couplers_to_ps7_axi_RVALID;
  wire [31:0]m05_couplers_to_ps7_axi_WDATA;
  wire m05_couplers_to_ps7_axi_WREADY;
  wire [3:0]m05_couplers_to_ps7_axi_WSTRB;
  wire m05_couplers_to_ps7_axi_WVALID;
  wire [31:0]m06_couplers_to_ps7_axi_ARADDR;
  wire [2:0]m06_couplers_to_ps7_axi_ARPROT;
  wire m06_couplers_to_ps7_axi_ARREADY;
  wire m06_couplers_to_ps7_axi_ARVALID;
  wire [31:0]m06_couplers_to_ps7_axi_AWADDR;
  wire [2:0]m06_couplers_to_ps7_axi_AWPROT;
  wire m06_couplers_to_ps7_axi_AWREADY;
  wire m06_couplers_to_ps7_axi_AWVALID;
  wire m06_couplers_to_ps7_axi_BREADY;
  wire [1:0]m06_couplers_to_ps7_axi_BRESP;
  wire m06_couplers_to_ps7_axi_BVALID;
  wire [31:0]m06_couplers_to_ps7_axi_RDATA;
  wire m06_couplers_to_ps7_axi_RREADY;
  wire [1:0]m06_couplers_to_ps7_axi_RRESP;
  wire m06_couplers_to_ps7_axi_RVALID;
  wire [31:0]m06_couplers_to_ps7_axi_WDATA;
  wire m06_couplers_to_ps7_axi_WREADY;
  wire [3:0]m06_couplers_to_ps7_axi_WSTRB;
  wire m06_couplers_to_ps7_axi_WVALID;
  wire [31:0]m07_couplers_to_ps7_axi_ARADDR;
  wire [2:0]m07_couplers_to_ps7_axi_ARPROT;
  wire m07_couplers_to_ps7_axi_ARREADY;
  wire m07_couplers_to_ps7_axi_ARVALID;
  wire [31:0]m07_couplers_to_ps7_axi_AWADDR;
  wire [2:0]m07_couplers_to_ps7_axi_AWPROT;
  wire m07_couplers_to_ps7_axi_AWREADY;
  wire m07_couplers_to_ps7_axi_AWVALID;
  wire m07_couplers_to_ps7_axi_BREADY;
  wire [1:0]m07_couplers_to_ps7_axi_BRESP;
  wire m07_couplers_to_ps7_axi_BVALID;
  wire [31:0]m07_couplers_to_ps7_axi_RDATA;
  wire m07_couplers_to_ps7_axi_RREADY;
  wire [1:0]m07_couplers_to_ps7_axi_RRESP;
  wire m07_couplers_to_ps7_axi_RVALID;
  wire [31:0]m07_couplers_to_ps7_axi_WDATA;
  wire m07_couplers_to_ps7_axi_WREADY;
  wire [3:0]m07_couplers_to_ps7_axi_WSTRB;
  wire m07_couplers_to_ps7_axi_WVALID;
  wire ps7_axi_ACLK_net;
  wire ps7_axi_ARESETN_net;
  wire [31:0]ps7_axi_to_s00_couplers_ARADDR;
  wire [1:0]ps7_axi_to_s00_couplers_ARBURST;
  wire [3:0]ps7_axi_to_s00_couplers_ARCACHE;
  wire [11:0]ps7_axi_to_s00_couplers_ARID;
  wire [3:0]ps7_axi_to_s00_couplers_ARLEN;
  wire [1:0]ps7_axi_to_s00_couplers_ARLOCK;
  wire [2:0]ps7_axi_to_s00_couplers_ARPROT;
  wire [3:0]ps7_axi_to_s00_couplers_ARQOS;
  wire ps7_axi_to_s00_couplers_ARREADY;
  wire [2:0]ps7_axi_to_s00_couplers_ARSIZE;
  wire ps7_axi_to_s00_couplers_ARVALID;
  wire [31:0]ps7_axi_to_s00_couplers_AWADDR;
  wire [1:0]ps7_axi_to_s00_couplers_AWBURST;
  wire [3:0]ps7_axi_to_s00_couplers_AWCACHE;
  wire [11:0]ps7_axi_to_s00_couplers_AWID;
  wire [3:0]ps7_axi_to_s00_couplers_AWLEN;
  wire [1:0]ps7_axi_to_s00_couplers_AWLOCK;
  wire [2:0]ps7_axi_to_s00_couplers_AWPROT;
  wire [3:0]ps7_axi_to_s00_couplers_AWQOS;
  wire ps7_axi_to_s00_couplers_AWREADY;
  wire [2:0]ps7_axi_to_s00_couplers_AWSIZE;
  wire ps7_axi_to_s00_couplers_AWVALID;
  wire [11:0]ps7_axi_to_s00_couplers_BID;
  wire ps7_axi_to_s00_couplers_BREADY;
  wire [1:0]ps7_axi_to_s00_couplers_BRESP;
  wire ps7_axi_to_s00_couplers_BVALID;
  wire [31:0]ps7_axi_to_s00_couplers_RDATA;
  wire [11:0]ps7_axi_to_s00_couplers_RID;
  wire ps7_axi_to_s00_couplers_RLAST;
  wire ps7_axi_to_s00_couplers_RREADY;
  wire [1:0]ps7_axi_to_s00_couplers_RRESP;
  wire ps7_axi_to_s00_couplers_RVALID;
  wire [31:0]ps7_axi_to_s00_couplers_WDATA;
  wire [11:0]ps7_axi_to_s00_couplers_WID;
  wire ps7_axi_to_s00_couplers_WLAST;
  wire ps7_axi_to_s00_couplers_WREADY;
  wire [3:0]ps7_axi_to_s00_couplers_WSTRB;
  wire ps7_axi_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_ps7_axi_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_ps7_axi_ARPROT;
  assign M00_AXI_arvalid[0] = m00_couplers_to_ps7_axi_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_ps7_axi_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_ps7_axi_AWPROT;
  assign M00_AXI_awvalid[0] = m00_couplers_to_ps7_axi_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_ps7_axi_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_ps7_axi_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps7_axi_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_ps7_axi_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_ps7_axi_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_ps7_axi_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_ps7_axi_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_ps7_axi_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_ps7_axi_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_ps7_axi_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_ps7_axi_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_ps7_axi_BREADY;
  assign M01_AXI_rready = m01_couplers_to_ps7_axi_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps7_axi_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ps7_axi_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_ps7_axi_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_ps7_axi_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_ps7_axi_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_ps7_axi_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_ps7_axi_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_ps7_axi_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_ps7_axi_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_ps7_axi_BREADY;
  assign M02_AXI_rready = m02_couplers_to_ps7_axi_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_ps7_axi_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_ps7_axi_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_ps7_axi_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_ps7_axi_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_ps7_axi_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_ps7_axi_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_ps7_axi_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_ps7_axi_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_ps7_axi_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_ps7_axi_BREADY;
  assign M03_AXI_rready = m03_couplers_to_ps7_axi_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_ps7_axi_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_ps7_axi_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_ps7_axi_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_ps7_axi_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_ps7_axi_ARPROT;
  assign M04_AXI_arvalid = m04_couplers_to_ps7_axi_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_ps7_axi_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_ps7_axi_AWPROT;
  assign M04_AXI_awvalid = m04_couplers_to_ps7_axi_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_ps7_axi_BREADY;
  assign M04_AXI_rready = m04_couplers_to_ps7_axi_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_ps7_axi_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_ps7_axi_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_ps7_axi_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_ps7_axi_ARADDR;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_ps7_axi_ARPROT;
  assign M05_AXI_arvalid = m05_couplers_to_ps7_axi_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_ps7_axi_AWADDR;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_ps7_axi_AWPROT;
  assign M05_AXI_awvalid = m05_couplers_to_ps7_axi_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_ps7_axi_BREADY;
  assign M05_AXI_rready = m05_couplers_to_ps7_axi_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_ps7_axi_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_ps7_axi_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_ps7_axi_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_ps7_axi_ARADDR;
  assign M06_AXI_arprot[2:0] = m06_couplers_to_ps7_axi_ARPROT;
  assign M06_AXI_arvalid = m06_couplers_to_ps7_axi_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_ps7_axi_AWADDR;
  assign M06_AXI_awprot[2:0] = m06_couplers_to_ps7_axi_AWPROT;
  assign M06_AXI_awvalid = m06_couplers_to_ps7_axi_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_ps7_axi_BREADY;
  assign M06_AXI_rready = m06_couplers_to_ps7_axi_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_ps7_axi_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_ps7_axi_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_ps7_axi_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[31:0] = m07_couplers_to_ps7_axi_ARADDR;
  assign M07_AXI_arprot[2:0] = m07_couplers_to_ps7_axi_ARPROT;
  assign M07_AXI_arvalid = m07_couplers_to_ps7_axi_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_ps7_axi_AWADDR;
  assign M07_AXI_awprot[2:0] = m07_couplers_to_ps7_axi_AWPROT;
  assign M07_AXI_awvalid = m07_couplers_to_ps7_axi_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_ps7_axi_BREADY;
  assign M07_AXI_rready = m07_couplers_to_ps7_axi_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_ps7_axi_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_ps7_axi_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_ps7_axi_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps7_axi_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps7_axi_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = ps7_axi_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps7_axi_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps7_axi_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps7_axi_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = ps7_axi_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps7_axi_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps7_axi_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps7_axi_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps7_axi_to_s00_couplers_WREADY;
  assign m00_couplers_to_ps7_axi_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_ps7_axi_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_ps7_axi_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps7_axi_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_ps7_axi_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps7_axi_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps7_axi_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_ps7_axi_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_ps7_axi_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_ps7_axi_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_ps7_axi_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps7_axi_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_ps7_axi_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps7_axi_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps7_axi_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_ps7_axi_WREADY = M01_AXI_wready;
  assign m02_couplers_to_ps7_axi_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_ps7_axi_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_ps7_axi_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_ps7_axi_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_ps7_axi_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_ps7_axi_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_ps7_axi_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_ps7_axi_WREADY = M02_AXI_wready;
  assign m03_couplers_to_ps7_axi_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_ps7_axi_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_ps7_axi_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_ps7_axi_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_ps7_axi_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_ps7_axi_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_ps7_axi_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_ps7_axi_WREADY = M03_AXI_wready;
  assign m04_couplers_to_ps7_axi_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_ps7_axi_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_ps7_axi_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_ps7_axi_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_ps7_axi_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_ps7_axi_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_ps7_axi_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_ps7_axi_WREADY = M04_AXI_wready;
  assign m05_couplers_to_ps7_axi_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_ps7_axi_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_ps7_axi_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_ps7_axi_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_ps7_axi_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_ps7_axi_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_ps7_axi_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_ps7_axi_WREADY = M05_AXI_wready;
  assign m06_couplers_to_ps7_axi_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_ps7_axi_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_ps7_axi_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_ps7_axi_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_ps7_axi_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_ps7_axi_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_ps7_axi_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_ps7_axi_WREADY = M06_AXI_wready;
  assign m07_couplers_to_ps7_axi_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_ps7_axi_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_ps7_axi_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_ps7_axi_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_ps7_axi_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_ps7_axi_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_ps7_axi_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_ps7_axi_WREADY = M07_AXI_wready;
  assign ps7_axi_ACLK_net = ACLK;
  assign ps7_axi_ARESETN_net = ARESETN;
  assign ps7_axi_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ps7_axi_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps7_axi_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps7_axi_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign ps7_axi_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign ps7_axi_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign ps7_axi_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps7_axi_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps7_axi_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps7_axi_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps7_axi_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ps7_axi_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps7_axi_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps7_axi_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign ps7_axi_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign ps7_axi_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign ps7_axi_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps7_axi_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps7_axi_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps7_axi_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps7_axi_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps7_axi_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps7_axi_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps7_axi_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign ps7_axi_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps7_axi_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps7_axi_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_1HPR6XM m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_ps7_axi_ARADDR),
        .M_AXI_arprot(m00_couplers_to_ps7_axi_ARPROT),
        .M_AXI_arready(m00_couplers_to_ps7_axi_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ps7_axi_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps7_axi_AWADDR),
        .M_AXI_awprot(m00_couplers_to_ps7_axi_AWPROT),
        .M_AXI_awready(m00_couplers_to_ps7_axi_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ps7_axi_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps7_axi_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps7_axi_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps7_axi_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps7_axi_RDATA),
        .M_AXI_rready(m00_couplers_to_ps7_axi_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps7_axi_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps7_axi_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps7_axi_WDATA),
        .M_AXI_wready(m00_couplers_to_ps7_axi_WREADY),
        .M_AXI_wstrb(m00_couplers_to_ps7_axi_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_ps7_axi_WVALID),
        .S_ACLK(ps7_axi_ACLK_net),
        .S_ARESETN(ps7_axi_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_19S3VRW m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_ps7_axi_ARADDR),
        .M_AXI_arprot(m01_couplers_to_ps7_axi_ARPROT),
        .M_AXI_arready(m01_couplers_to_ps7_axi_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps7_axi_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps7_axi_AWADDR),
        .M_AXI_awprot(m01_couplers_to_ps7_axi_AWPROT),
        .M_AXI_awready(m01_couplers_to_ps7_axi_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps7_axi_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps7_axi_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps7_axi_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps7_axi_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps7_axi_RDATA),
        .M_AXI_rready(m01_couplers_to_ps7_axi_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps7_axi_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps7_axi_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps7_axi_WDATA),
        .M_AXI_wready(m01_couplers_to_ps7_axi_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ps7_axi_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ps7_axi_WVALID),
        .S_ACLK(ps7_axi_ACLK_net),
        .S_ARESETN(ps7_axi_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_359106 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_ps7_axi_ARADDR),
        .M_AXI_arprot(m02_couplers_to_ps7_axi_ARPROT),
        .M_AXI_arready(m02_couplers_to_ps7_axi_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_ps7_axi_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ps7_axi_AWADDR),
        .M_AXI_awprot(m02_couplers_to_ps7_axi_AWPROT),
        .M_AXI_awready(m02_couplers_to_ps7_axi_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_ps7_axi_AWVALID),
        .M_AXI_bready(m02_couplers_to_ps7_axi_BREADY),
        .M_AXI_bresp(m02_couplers_to_ps7_axi_BRESP),
        .M_AXI_bvalid(m02_couplers_to_ps7_axi_BVALID),
        .M_AXI_rdata(m02_couplers_to_ps7_axi_RDATA),
        .M_AXI_rready(m02_couplers_to_ps7_axi_RREADY),
        .M_AXI_rresp(m02_couplers_to_ps7_axi_RRESP),
        .M_AXI_rvalid(m02_couplers_to_ps7_axi_RVALID),
        .M_AXI_wdata(m02_couplers_to_ps7_axi_WDATA),
        .M_AXI_wready(m02_couplers_to_ps7_axi_WREADY),
        .M_AXI_wstrb(m02_couplers_to_ps7_axi_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_ps7_axi_WVALID),
        .S_ACLK(ps7_axi_ACLK_net),
        .S_ARESETN(ps7_axi_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_UKOJKG m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_ps7_axi_ARADDR),
        .M_AXI_arprot(m03_couplers_to_ps7_axi_ARPROT),
        .M_AXI_arready(m03_couplers_to_ps7_axi_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_ps7_axi_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_ps7_axi_AWADDR),
        .M_AXI_awprot(m03_couplers_to_ps7_axi_AWPROT),
        .M_AXI_awready(m03_couplers_to_ps7_axi_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_ps7_axi_AWVALID),
        .M_AXI_bready(m03_couplers_to_ps7_axi_BREADY),
        .M_AXI_bresp(m03_couplers_to_ps7_axi_BRESP),
        .M_AXI_bvalid(m03_couplers_to_ps7_axi_BVALID),
        .M_AXI_rdata(m03_couplers_to_ps7_axi_RDATA),
        .M_AXI_rready(m03_couplers_to_ps7_axi_RREADY),
        .M_AXI_rresp(m03_couplers_to_ps7_axi_RRESP),
        .M_AXI_rvalid(m03_couplers_to_ps7_axi_RVALID),
        .M_AXI_wdata(m03_couplers_to_ps7_axi_WDATA),
        .M_AXI_wready(m03_couplers_to_ps7_axi_WREADY),
        .M_AXI_wstrb(m03_couplers_to_ps7_axi_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_ps7_axi_WVALID),
        .S_ACLK(ps7_axi_ACLK_net),
        .S_ARESETN(ps7_axi_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_13SZJ43 m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_ps7_axi_ARADDR),
        .M_AXI_arprot(m04_couplers_to_ps7_axi_ARPROT),
        .M_AXI_arready(m04_couplers_to_ps7_axi_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_ps7_axi_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_ps7_axi_AWADDR),
        .M_AXI_awprot(m04_couplers_to_ps7_axi_AWPROT),
        .M_AXI_awready(m04_couplers_to_ps7_axi_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_ps7_axi_AWVALID),
        .M_AXI_bready(m04_couplers_to_ps7_axi_BREADY),
        .M_AXI_bresp(m04_couplers_to_ps7_axi_BRESP),
        .M_AXI_bvalid(m04_couplers_to_ps7_axi_BVALID),
        .M_AXI_rdata(m04_couplers_to_ps7_axi_RDATA),
        .M_AXI_rready(m04_couplers_to_ps7_axi_RREADY),
        .M_AXI_rresp(m04_couplers_to_ps7_axi_RRESP),
        .M_AXI_rvalid(m04_couplers_to_ps7_axi_RVALID),
        .M_AXI_wdata(m04_couplers_to_ps7_axi_WDATA),
        .M_AXI_wready(m04_couplers_to_ps7_axi_WREADY),
        .M_AXI_wstrb(m04_couplers_to_ps7_axi_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_ps7_axi_WVALID),
        .S_ACLK(ps7_axi_ACLK_net),
        .S_ARESETN(ps7_axi_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1SY3GLH m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_ps7_axi_ARADDR),
        .M_AXI_arprot(m05_couplers_to_ps7_axi_ARPROT),
        .M_AXI_arready(m05_couplers_to_ps7_axi_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_ps7_axi_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_ps7_axi_AWADDR),
        .M_AXI_awprot(m05_couplers_to_ps7_axi_AWPROT),
        .M_AXI_awready(m05_couplers_to_ps7_axi_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_ps7_axi_AWVALID),
        .M_AXI_bready(m05_couplers_to_ps7_axi_BREADY),
        .M_AXI_bresp(m05_couplers_to_ps7_axi_BRESP),
        .M_AXI_bvalid(m05_couplers_to_ps7_axi_BVALID),
        .M_AXI_rdata(m05_couplers_to_ps7_axi_RDATA),
        .M_AXI_rready(m05_couplers_to_ps7_axi_RREADY),
        .M_AXI_rresp(m05_couplers_to_ps7_axi_RRESP),
        .M_AXI_rvalid(m05_couplers_to_ps7_axi_RVALID),
        .M_AXI_wdata(m05_couplers_to_ps7_axi_WDATA),
        .M_AXI_wready(m05_couplers_to_ps7_axi_WREADY),
        .M_AXI_wstrb(m05_couplers_to_ps7_axi_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_ps7_axi_WVALID),
        .S_ACLK(ps7_axi_ACLK_net),
        .S_ARESETN(ps7_axi_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_JCJH1R m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_ps7_axi_ARADDR),
        .M_AXI_arprot(m06_couplers_to_ps7_axi_ARPROT),
        .M_AXI_arready(m06_couplers_to_ps7_axi_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_ps7_axi_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_ps7_axi_AWADDR),
        .M_AXI_awprot(m06_couplers_to_ps7_axi_AWPROT),
        .M_AXI_awready(m06_couplers_to_ps7_axi_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_ps7_axi_AWVALID),
        .M_AXI_bready(m06_couplers_to_ps7_axi_BREADY),
        .M_AXI_bresp(m06_couplers_to_ps7_axi_BRESP),
        .M_AXI_bvalid(m06_couplers_to_ps7_axi_BVALID),
        .M_AXI_rdata(m06_couplers_to_ps7_axi_RDATA),
        .M_AXI_rready(m06_couplers_to_ps7_axi_RREADY),
        .M_AXI_rresp(m06_couplers_to_ps7_axi_RRESP),
        .M_AXI_rvalid(m06_couplers_to_ps7_axi_RVALID),
        .M_AXI_wdata(m06_couplers_to_ps7_axi_WDATA),
        .M_AXI_wready(m06_couplers_to_ps7_axi_WREADY),
        .M_AXI_wstrb(m06_couplers_to_ps7_axi_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_ps7_axi_WVALID),
        .S_ACLK(ps7_axi_ACLK_net),
        .S_ARESETN(ps7_axi_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_948ZM1 m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_ps7_axi_ARADDR),
        .M_AXI_arprot(m07_couplers_to_ps7_axi_ARPROT),
        .M_AXI_arready(m07_couplers_to_ps7_axi_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_ps7_axi_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_ps7_axi_AWADDR),
        .M_AXI_awprot(m07_couplers_to_ps7_axi_AWPROT),
        .M_AXI_awready(m07_couplers_to_ps7_axi_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_ps7_axi_AWVALID),
        .M_AXI_bready(m07_couplers_to_ps7_axi_BREADY),
        .M_AXI_bresp(m07_couplers_to_ps7_axi_BRESP),
        .M_AXI_bvalid(m07_couplers_to_ps7_axi_BVALID),
        .M_AXI_rdata(m07_couplers_to_ps7_axi_RDATA),
        .M_AXI_rready(m07_couplers_to_ps7_axi_RREADY),
        .M_AXI_rresp(m07_couplers_to_ps7_axi_RRESP),
        .M_AXI_rvalid(m07_couplers_to_ps7_axi_RVALID),
        .M_AXI_wdata(m07_couplers_to_ps7_axi_WDATA),
        .M_AXI_wready(m07_couplers_to_ps7_axi_WREADY),
        .M_AXI_wstrb(m07_couplers_to_ps7_axi_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_ps7_axi_WVALID),
        .S_ACLK(ps7_axi_ACLK_net),
        .S_ARESETN(ps7_axi_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  s00_couplers_imp_19GSL5N s00_couplers
       (.M_ACLK(ps7_axi_ACLK_net),
        .M_ARESETN(ps7_axi_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps7_axi_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps7_axi_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps7_axi_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps7_axi_to_s00_couplers_ARID),
        .S_AXI_arlen(ps7_axi_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps7_axi_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps7_axi_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps7_axi_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps7_axi_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps7_axi_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps7_axi_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps7_axi_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps7_axi_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps7_axi_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps7_axi_to_s00_couplers_AWID),
        .S_AXI_awlen(ps7_axi_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps7_axi_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps7_axi_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps7_axi_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps7_axi_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps7_axi_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps7_axi_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps7_axi_to_s00_couplers_BID),
        .S_AXI_bready(ps7_axi_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps7_axi_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps7_axi_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps7_axi_to_s00_couplers_RDATA),
        .S_AXI_rid(ps7_axi_to_s00_couplers_RID),
        .S_AXI_rlast(ps7_axi_to_s00_couplers_RLAST),
        .S_AXI_rready(ps7_axi_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps7_axi_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps7_axi_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps7_axi_to_s00_couplers_WDATA),
        .S_AXI_wid(ps7_axi_to_s00_couplers_WID),
        .S_AXI_wlast(ps7_axi_to_s00_couplers_WLAST),
        .S_AXI_wready(ps7_axi_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps7_axi_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps7_axi_to_s00_couplers_WVALID));
  double_dds_xbar_0 xbar
       (.aclk(ps7_axi_ACLK_net),
        .aresetn(ps7_axi_ARESETN_net),
        .m_axi_araddr({xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_1HPR6XM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_19S3VRW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_359106
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_UKOJKG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_13SZJ43
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [2:0]m04_couplers_to_m04_couplers_ARPROT;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [2:0]m04_couplers_to_m04_couplers_AWPROT;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_1SY3GLH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [2:0]m05_couplers_to_m05_couplers_ARPROT;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [2:0]m05_couplers_to_m05_couplers_AWPROT;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m05_couplers_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m05_couplers_to_m05_couplers_AWPROT;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m06_couplers_imp_JCJH1R
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m06_couplers_to_m06_couplers_ARADDR;
  wire [2:0]m06_couplers_to_m06_couplers_ARPROT;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire [31:0]m06_couplers_to_m06_couplers_AWADDR;
  wire [2:0]m06_couplers_to_m06_couplers_AWPROT;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m06_couplers_to_m06_couplers_ARPROT;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m06_couplers_to_m06_couplers_AWPROT;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module m07_couplers_imp_948ZM1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m07_couplers_to_m07_couplers_ARADDR;
  wire [2:0]m07_couplers_to_m07_couplers_ARPROT;
  wire m07_couplers_to_m07_couplers_ARREADY;
  wire m07_couplers_to_m07_couplers_ARVALID;
  wire [31:0]m07_couplers_to_m07_couplers_AWADDR;
  wire [2:0]m07_couplers_to_m07_couplers_AWPROT;
  wire m07_couplers_to_m07_couplers_AWREADY;
  wire m07_couplers_to_m07_couplers_AWVALID;
  wire m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m07_couplers_to_m07_couplers_ARPROT;
  assign M_AXI_arvalid = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m07_couplers_to_m07_couplers_AWPROT;
  assign M_AXI_awvalid = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_m07_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready;
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_m07_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready;
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready;
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready;
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_19GSL5N
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  double_dds_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
