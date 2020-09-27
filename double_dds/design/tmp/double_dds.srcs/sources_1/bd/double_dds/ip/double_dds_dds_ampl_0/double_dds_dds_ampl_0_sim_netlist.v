// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun May 31 18:48:08 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/bma/git/fpga_design/redpitaya/double_dds/design/tmp/double_dds.srcs/sources_1/bd/double_dds/ip/double_dds_dds_ampl_0/double_dds_dds_ampl_0_sim_netlist.v
// Design      : double_dds_dds_ampl_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "double_dds_dds_ampl_0,axi_to_dac,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "axi_to_dac,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module double_dds_dds_ampl_0
   (ref_clk_i,
    ref_rst_i,
    s00_axi_aclk,
    s00_axi_reset,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    dataA_o,
    dataA_en_o,
    dataA_eof_o,
    dataA_clk_o,
    dataA_rst_o,
    dataB_o,
    dataB_en_o,
    dataB_eof_o,
    dataB_clk_o,
    dataB_rst_o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ref_clk_i CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ref_clk_i, ASSOCIATED_BUSIF dataA_out:dataB_out, ASSOCIATED_RESET ref_rst_i, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_dds_redpitaya_converters_0_0_clk_o, INSERT_VIP 0" *) input ref_clk_i;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ref_rst_i RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ref_rst_i, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ref_rst_i;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_dds_ps7_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input s00_axi_reset;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_dds_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataA_out DATA" *) output [13:0]dataA_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataA_out DATA_EN" *) output dataA_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataA_out DATA_EOF" *) output dataA_eof_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataA_out DATA_CLK" *) output dataA_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataA_out DATA_RST" *) output dataA_rst_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataB_out DATA" *) output [13:0]dataB_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataB_out DATA_EN" *) output dataB_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataB_out DATA_EOF" *) output dataB_eof_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataB_out DATA_CLK" *) output dataB_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataB_out DATA_RST" *) output dataB_rst_o;

  wire dataA_clk_o;
  wire dataA_en_o;
  wire dataA_eof_o;
  wire [13:0]dataA_o;
  wire dataA_rst_o;
  wire dataB_clk_o;
  wire dataB_en_o;
  wire dataB_eof_o;
  wire [13:0]dataB_o;
  wire dataB_rst_o;
  wire ref_clk_i;
  wire ref_rst_i;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire [2:0]s00_axi_arprot;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire [2:0]s00_axi_awprot;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [1:0]s00_axi_bresp;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire [1:0]s00_axi_rresp;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  (* C_S00_AXI_ADDR_WIDTH = "4" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  (* DATAA_DEFAULT_OUT = "0" *) 
  (* DATAA_EN_ALWAYS_HIGH = "FALSE" *) 
  (* DATAB_DEFAULT_OUT = "0" *) 
  (* DATAB_EN_ALWAYS_HIGH = "FALSE" *) 
  (* DATA_SIZE = "14" *) 
  (* SYNCHRONIZE_CHAN = "FALSE" *) 
  (* id = "1" *) 
  double_dds_dds_ampl_0_axi_to_dac U0
       (.dataA_clk_o(dataA_clk_o),
        .dataA_en_o(dataA_en_o),
        .dataA_eof_o(dataA_eof_o),
        .dataA_o(dataA_o),
        .dataA_rst_o(dataA_rst_o),
        .dataB_clk_o(dataB_clk_o),
        .dataB_en_o(dataB_en_o),
        .dataB_eof_o(dataB_eof_o),
        .dataB_o(dataB_o),
        .dataB_rst_o(dataB_rst_o),
        .ref_clk_i(ref_clk_i),
        .ref_rst_i(ref_rst_i),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_arprot(s00_axi_arprot),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awprot(s00_axi_awprot),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bresp(s00_axi_bresp),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rresp(s00_axi_rresp),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* C_S00_AXI_ADDR_WIDTH = "4" *) (* C_S00_AXI_DATA_WIDTH = "32" *) (* DATAA_DEFAULT_OUT = "0" *) 
(* DATAA_EN_ALWAYS_HIGH = "FALSE" *) (* DATAB_DEFAULT_OUT = "0" *) (* DATAB_EN_ALWAYS_HIGH = "FALSE" *) 
(* DATA_SIZE = "14" *) (* ORIG_REF_NAME = "axi_to_dac" *) (* SYNCHRONIZE_CHAN = "FALSE" *) 
(* id = "1" *) 
module double_dds_dds_ampl_0_axi_to_dac
   (ref_clk_i,
    ref_rst_i,
    s00_axi_aclk,
    s00_axi_reset,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    dataA_o,
    dataA_en_o,
    dataA_eof_o,
    dataA_clk_o,
    dataA_rst_o,
    dataB_o,
    dataB_en_o,
    dataB_eof_o,
    dataB_clk_o,
    dataB_rst_o);
  input ref_clk_i;
  input ref_rst_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  output [13:0]dataA_o;
  output dataA_en_o;
  output dataA_eof_o;
  output dataA_clk_o;
  output dataA_rst_o;
  output [13:0]dataB_o;
  output dataB_en_o;
  output dataB_eof_o;
  output dataB_clk_o;
  output dataB_rst_o;

  wire \<const0> ;
  wire [1:0]addr_s;
  wire [4:0]bit_i;
  wire conf_sync_n_2;
  wire conf_sync_n_3;
  wire dataA_en_o;
  wire [13:0]dataA_o;
  wire dataB_en_o;
  wire [13:0]dataB_o;
  wire data_a_en_next_s;
  wire [13:0]data_a_s;
  wire data_a_s_0;
  wire [13:0]data_a_sync_s;
  wire data_b_en_sync_s;
  wire [13:0]data_b_s;
  wire data_b_s_1;
  wire [13:0]data_b_sync_s;
  wire handle_comm_n_10;
  wire handle_comm_n_11;
  wire handle_comm_n_12;
  wire handle_comm_n_13;
  wire handle_comm_n_14;
  wire read_en_s;
  wire ref_clk_i;
  wire ref_rst_i;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;

  assign dataA_clk_o = ref_clk_i;
  assign dataA_eof_o = \<const0> ;
  assign dataA_rst_o = ref_rst_i;
  assign dataB_clk_o = ref_clk_i;
  assign dataB_eof_o = \<const0> ;
  assign dataB_rst_o = ref_rst_i;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  double_dds_dds_ampl_0_axi_to_dac_sync_vect__parameterized0 conf_sync
       (.D(bit_i),
        .E(data_a_en_next_s),
        .\flipflops_vect_reg[2][3]_0 (conf_sync_n_3),
        .\flipflops_vect_reg[2][4]_0 (conf_sync_n_2),
        .out(data_b_en_sync_s),
        .ref_clk_i(ref_clk_i),
        .ref_rst_i(ref_rst_i),
        .s00_axi_aclk(s00_axi_aclk));
  FDRE dataA_en_o_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(conf_sync_n_2),
        .Q(dataA_en_o),
        .R(1'b0));
  double_dds_dds_ampl_0_axi_to_dac_sync_vect__xdcDup__1 dataA_sync
       (.D(data_a_sync_s),
        .Q(data_a_s),
        .ref_clk_i(ref_clk_i),
        .s00_axi_aclk(s00_axi_aclk));
  FDRE dataB_en_o_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(conf_sync_n_3),
        .Q(dataB_en_o),
        .R(1'b0));
  double_dds_dds_ampl_0_axi_to_dac_sync_vect dataB_sync
       (.D(data_b_sync_s),
        .Q(data_b_s),
        .ref_clk_i(ref_clk_i),
        .s00_axi_aclk(s00_axi_aclk));
  FDRE \data_a_out_s_reg[0] 
       (.C(ref_clk_i),
        .CE(data_a_en_next_s),
        .D(data_a_sync_s[0]),
        .Q(dataA_o[0]),
        .R(ref_rst_i));
  FDRE \data_a_out_s_reg[10] 
       (.C(ref_clk_i),
        .CE(data_a_en_next_s),
        .D(data_a_sync_s[10]),
        .Q(dataA_o[10]),
        .R(ref_rst_i));
  FDRE \data_a_out_s_reg[11] 
       (.C(ref_clk_i),
        .CE(data_a_en_next_s),
        .D(data_a_sync_s[11]),
        .Q(dataA_o[11]),
        .R(ref_rst_i));
  FDRE \data_a_out_s_reg[12] 
       (.C(ref_clk_i),
        .CE(data_a_en_next_s),
        .D(data_a_sync_s[12]),
        .Q(dataA_o[12]),
        .R(ref_rst_i));
  FDRE \data_a_out_s_reg[13] 
       (.C(ref_clk_i),
        .CE(data_a_en_next_s),
        .D(data_a_sync_s[13]),
        .Q(dataA_o[13]),
        .R(ref_rst_i));
  FDRE \data_a_out_s_reg[1] 
       (.C(ref_clk_i),
        .CE(data_a_en_next_s),
        .D(data_a_sync_s[1]),
        .Q(dataA_o[1]),
        .R(ref_rst_i));
  FDRE \data_a_out_s_reg[2] 
       (.C(ref_clk_i),
        .CE(data_a_en_next_s),
        .D(data_a_sync_s[2]),
        .Q(dataA_o[2]),
        .R(ref_rst_i));
  FDRE \data_a_out_s_reg[3] 
       (.C(ref_clk_i),
        .CE(data_a_en_next_s),
        .D(data_a_sync_s[3]),
        .Q(dataA_o[3]),
        .R(ref_rst_i));
  FDRE \data_a_out_s_reg[4] 
       (.C(ref_clk_i),
        .CE(data_a_en_next_s),
        .D(data_a_sync_s[4]),
        .Q(dataA_o[4]),
        .R(ref_rst_i));
  FDRE \data_a_out_s_reg[5] 
       (.C(ref_clk_i),
        .CE(data_a_en_next_s),
        .D(data_a_sync_s[5]),
        .Q(dataA_o[5]),
        .R(ref_rst_i));
  FDRE \data_a_out_s_reg[6] 
       (.C(ref_clk_i),
        .CE(data_a_en_next_s),
        .D(data_a_sync_s[6]),
        .Q(dataA_o[6]),
        .R(ref_rst_i));
  FDRE \data_a_out_s_reg[7] 
       (.C(ref_clk_i),
        .CE(data_a_en_next_s),
        .D(data_a_sync_s[7]),
        .Q(dataA_o[7]),
        .R(ref_rst_i));
  FDRE \data_a_out_s_reg[8] 
       (.C(ref_clk_i),
        .CE(data_a_en_next_s),
        .D(data_a_sync_s[8]),
        .Q(dataA_o[8]),
        .R(ref_rst_i));
  FDRE \data_a_out_s_reg[9] 
       (.C(ref_clk_i),
        .CE(data_a_en_next_s),
        .D(data_a_sync_s[9]),
        .Q(dataA_o[9]),
        .R(ref_rst_i));
  FDRE \data_b_out_s_reg[0] 
       (.C(ref_clk_i),
        .CE(data_b_en_sync_s),
        .D(data_b_sync_s[0]),
        .Q(dataB_o[0]),
        .R(ref_rst_i));
  FDRE \data_b_out_s_reg[10] 
       (.C(ref_clk_i),
        .CE(data_b_en_sync_s),
        .D(data_b_sync_s[10]),
        .Q(dataB_o[10]),
        .R(ref_rst_i));
  FDRE \data_b_out_s_reg[11] 
       (.C(ref_clk_i),
        .CE(data_b_en_sync_s),
        .D(data_b_sync_s[11]),
        .Q(dataB_o[11]),
        .R(ref_rst_i));
  FDRE \data_b_out_s_reg[12] 
       (.C(ref_clk_i),
        .CE(data_b_en_sync_s),
        .D(data_b_sync_s[12]),
        .Q(dataB_o[12]),
        .R(ref_rst_i));
  FDRE \data_b_out_s_reg[13] 
       (.C(ref_clk_i),
        .CE(data_b_en_sync_s),
        .D(data_b_sync_s[13]),
        .Q(dataB_o[13]),
        .R(ref_rst_i));
  FDRE \data_b_out_s_reg[1] 
       (.C(ref_clk_i),
        .CE(data_b_en_sync_s),
        .D(data_b_sync_s[1]),
        .Q(dataB_o[1]),
        .R(ref_rst_i));
  FDRE \data_b_out_s_reg[2] 
       (.C(ref_clk_i),
        .CE(data_b_en_sync_s),
        .D(data_b_sync_s[2]),
        .Q(dataB_o[2]),
        .R(ref_rst_i));
  FDRE \data_b_out_s_reg[3] 
       (.C(ref_clk_i),
        .CE(data_b_en_sync_s),
        .D(data_b_sync_s[3]),
        .Q(dataB_o[3]),
        .R(ref_rst_i));
  FDRE \data_b_out_s_reg[4] 
       (.C(ref_clk_i),
        .CE(data_b_en_sync_s),
        .D(data_b_sync_s[4]),
        .Q(dataB_o[4]),
        .R(ref_rst_i));
  FDRE \data_b_out_s_reg[5] 
       (.C(ref_clk_i),
        .CE(data_b_en_sync_s),
        .D(data_b_sync_s[5]),
        .Q(dataB_o[5]),
        .R(ref_rst_i));
  FDRE \data_b_out_s_reg[6] 
       (.C(ref_clk_i),
        .CE(data_b_en_sync_s),
        .D(data_b_sync_s[6]),
        .Q(dataB_o[6]),
        .R(ref_rst_i));
  FDRE \data_b_out_s_reg[7] 
       (.C(ref_clk_i),
        .CE(data_b_en_sync_s),
        .D(data_b_sync_s[7]),
        .Q(dataB_o[7]),
        .R(ref_rst_i));
  FDRE \data_b_out_s_reg[8] 
       (.C(ref_clk_i),
        .CE(data_b_en_sync_s),
        .D(data_b_sync_s[8]),
        .Q(dataB_o[8]),
        .R(ref_rst_i));
  FDRE \data_b_out_s_reg[9] 
       (.C(ref_clk_i),
        .CE(data_b_en_sync_s),
        .D(data_b_sync_s[9]),
        .Q(dataB_o[9]),
        .R(ref_rst_i));
  double_dds_dds_ampl_0_axi_to_dac_handcomm handle_comm
       (.D(bit_i[2:0]),
        .E(data_b_s_1),
        .addr_s(addr_s),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_wready_reg_0(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_arvalid_0(read_en_s),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_awvalid_0(data_a_s_0),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_reset_0(handle_comm_n_13),
        .s00_axi_reset_1(handle_comm_n_14),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[2:0]),
        .s00_axi_wdata_0_sp_1(handle_comm_n_12),
        .s00_axi_wdata_1_sp_1(handle_comm_n_10),
        .s00_axi_wdata_2_sp_1(handle_comm_n_11),
        .s00_axi_wvalid(s00_axi_wvalid));
  double_dds_dds_ampl_0_wb_axi_to_dac wb_atd_inst
       (.D(bit_i),
        .E(data_a_s_0),
        .Q(data_a_s),
        .addr_s(addr_s),
        .data_a_en_always_high_s_reg_0(handle_comm_n_10),
        .data_a_en_o_reg_0(handle_comm_n_13),
        .data_b_en_always_high_s_reg_0(handle_comm_n_11),
        .data_b_en_o_reg_0(handle_comm_n_14),
        .\data_b_s_reg[13]_0 (data_b_s),
        .\data_b_s_reg[31]_0 (data_b_s_1),
        .\readdata_s_reg[31]_0 (read_en_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_wdata(s00_axi_wdata),
        .synchronize_chan_s_reg_0(handle_comm_n_12));
endmodule

(* ORIG_REF_NAME = "axi_to_dac_handcomm" *) 
module double_dds_dds_ampl_0_axi_to_dac_handcomm
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_rvalid,
    E,
    addr_s,
    s00_axi_awvalid_0,
    s00_axi_arvalid_0,
    s00_axi_wdata_1_sp_1,
    s00_axi_wdata_2_sp_1,
    s00_axi_wdata_0_sp_1,
    s00_axi_reset_0,
    s00_axi_reset_1,
    s00_axi_reset,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_wdata,
    D,
    s00_axi_awaddr,
    s00_axi_araddr);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [0:0]E;
  output [1:0]addr_s;
  output [0:0]s00_axi_awvalid_0;
  output [0:0]s00_axi_arvalid_0;
  output s00_axi_wdata_1_sp_1;
  output s00_axi_wdata_2_sp_1;
  output s00_axi_wdata_0_sp_1;
  output s00_axi_reset_0;
  output s00_axi_reset_1;
  input s00_axi_reset;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input [2:0]s00_axi_wdata;
  input [2:0]D;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;

  wire [2:0]D;
  wire [0:0]E;
  wire [1:0]addr_reg;
  wire [1:0]addr_s;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [1:0]read_addr_s;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_arvalid;
  wire [0:0]s00_axi_arvalid_0;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire [0:0]s00_axi_awvalid_0;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire s00_axi_reset;
  wire s00_axi_reset_0;
  wire s00_axi_reset_1;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [2:0]s00_axi_wdata;
  wire s00_axi_wdata_0_sn_1;
  wire s00_axi_wdata_1_sn_1;
  wire s00_axi_wdata_2_sn_1;
  wire s00_axi_wvalid;
  wire [1:0]write_addr_s;
  wire write_en_s;

  assign s00_axi_wdata_0_sp_1 = s00_axi_wdata_0_sn_1;
  assign s00_axi_wdata_1_sp_1 = s00_axi_wdata_1_sn_1;
  assign s00_axi_wdata_2_sp_1 = s00_axi_wdata_2_sn_1;
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addr_reg[0]_i_1 
       (.I0(write_addr_s[0]),
        .I1(write_en_s),
        .I2(read_addr_s[0]),
        .I3(s00_axi_arvalid_0),
        .I4(addr_reg[0]),
        .O(addr_s[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addr_reg[1]_i_1 
       (.I0(write_addr_s[1]),
        .I1(write_en_s),
        .I2(read_addr_s[1]),
        .I3(s00_axi_arvalid_0),
        .I4(addr_reg[1]),
        .O(addr_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_reg[1]_i_2 
       (.I0(axi_awready_reg_0),
        .I1(axi_wready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(write_en_s));
  FDRE \addr_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(addr_s[0]),
        .Q(addr_reg[0]),
        .R(1'b0));
  FDRE \addr_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(addr_s[1]),
        .Q(addr_reg[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(read_addr_s[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(read_addr_s[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(read_addr_s[0]),
        .S(s00_axi_reset));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(read_addr_s[1]),
        .S(s00_axi_reset));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(write_addr_s[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(write_addr_s[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(write_addr_s[0]),
        .R(s00_axi_reset));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(write_addr_s[1]),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(s00_axi_reset));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(s00_axi_reset));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    data_a_en_always_high_s_i_1
       (.I0(s00_axi_wdata[1]),
        .I1(write_en_s),
        .I2(addr_s[1]),
        .I3(addr_s[0]),
        .I4(D[2]),
        .O(s00_axi_wdata_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    data_a_en_o_i_1
       (.I0(addr_s[1]),
        .I1(addr_s[0]),
        .I2(write_en_s),
        .I3(s00_axi_reset),
        .O(s00_axi_reset_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \data_a_s[31]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(addr_s[1]),
        .I5(addr_s[0]),
        .O(s00_axi_awvalid_0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    data_b_en_always_high_s_i_1
       (.I0(s00_axi_wdata[2]),
        .I1(write_en_s),
        .I2(addr_s[1]),
        .I3(addr_s[0]),
        .I4(D[1]),
        .O(s00_axi_wdata_2_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    data_b_en_o_i_1
       (.I0(addr_s[0]),
        .I1(addr_s[1]),
        .I2(write_en_s),
        .I3(s00_axi_reset),
        .O(s00_axi_reset_1));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \data_b_s[31]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(addr_s[0]),
        .I5(addr_s[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \readdata_s[31]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rvalid),
        .O(s00_axi_arvalid_0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    synchronize_chan_s_i_1
       (.I0(s00_axi_wdata[0]),
        .I1(write_en_s),
        .I2(addr_s[1]),
        .I3(addr_s[0]),
        .I4(D[0]),
        .O(s00_axi_wdata_0_sn_1));
endmodule

(* ORIG_REF_NAME = "axi_to_dac_sync_vect" *) 
module double_dds_dds_ampl_0_axi_to_dac_sync_vect
   (D,
    Q,
    s00_axi_aclk,
    ref_clk_i);
  output [13:0]D;
  input [13:0]Q;
  input s00_axi_aclk;
  input ref_clk_i;

  wire [13:0]Q;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[2]_2 ;
  wire ref_clk_i;
  wire s00_axi_aclk;
  wire [13:0]sync_vect_stage0_s;

  assign D[13:0] = \flipflops_vect[2]_2 ;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[0]),
        .Q(\flipflops_vect[0]_0 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[10]),
        .Q(\flipflops_vect[0]_0 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[11]),
        .Q(\flipflops_vect[0]_0 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[12]),
        .Q(\flipflops_vect[0]_0 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[13]),
        .Q(\flipflops_vect[0]_0 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[1]),
        .Q(\flipflops_vect[0]_0 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[2]),
        .Q(\flipflops_vect[0]_0 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[3]),
        .Q(\flipflops_vect[0]_0 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[4]),
        .Q(\flipflops_vect[0]_0 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[5]),
        .Q(\flipflops_vect[0]_0 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[6]),
        .Q(\flipflops_vect[0]_0 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[7]),
        .Q(\flipflops_vect[0]_0 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[8]),
        .Q(\flipflops_vect[0]_0 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[9]),
        .Q(\flipflops_vect[0]_0 [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [0]),
        .Q(\flipflops_vect[1]_1 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [10]),
        .Q(\flipflops_vect[1]_1 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [11]),
        .Q(\flipflops_vect[1]_1 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [12]),
        .Q(\flipflops_vect[1]_1 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [13]),
        .Q(\flipflops_vect[1]_1 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [1]),
        .Q(\flipflops_vect[1]_1 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [2]),
        .Q(\flipflops_vect[1]_1 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [3]),
        .Q(\flipflops_vect[1]_1 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [4]),
        .Q(\flipflops_vect[1]_1 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [5]),
        .Q(\flipflops_vect[1]_1 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [6]),
        .Q(\flipflops_vect[1]_1 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [7]),
        .Q(\flipflops_vect[1]_1 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [8]),
        .Q(\flipflops_vect[1]_1 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [9]),
        .Q(\flipflops_vect[1]_1 [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [0]),
        .Q(\flipflops_vect[2]_2 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [10]),
        .Q(\flipflops_vect[2]_2 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [11]),
        .Q(\flipflops_vect[2]_2 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [12]),
        .Q(\flipflops_vect[2]_2 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [13]),
        .Q(\flipflops_vect[2]_2 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [1]),
        .Q(\flipflops_vect[2]_2 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [2]),
        .Q(\flipflops_vect[2]_2 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [3]),
        .Q(\flipflops_vect[2]_2 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [4]),
        .Q(\flipflops_vect[2]_2 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [5]),
        .Q(\flipflops_vect[2]_2 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [6]),
        .Q(\flipflops_vect[2]_2 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [7]),
        .Q(\flipflops_vect[2]_2 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [8]),
        .Q(\flipflops_vect[2]_2 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [9]),
        .Q(\flipflops_vect[2]_2 [9]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(sync_vect_stage0_s[0]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(sync_vect_stage0_s[10]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(sync_vect_stage0_s[11]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(sync_vect_stage0_s[12]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(sync_vect_stage0_s[13]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(sync_vect_stage0_s[1]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(sync_vect_stage0_s[2]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(sync_vect_stage0_s[3]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(sync_vect_stage0_s[4]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(sync_vect_stage0_s[5]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(sync_vect_stage0_s[6]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(sync_vect_stage0_s[7]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(sync_vect_stage0_s[8]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(sync_vect_stage0_s[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_to_dac_sync_vect" *) 
module double_dds_dds_ampl_0_axi_to_dac_sync_vect__parameterized0
   (out,
    E,
    \flipflops_vect_reg[2][4]_0 ,
    \flipflops_vect_reg[2][3]_0 ,
    ref_rst_i,
    D,
    s00_axi_aclk,
    ref_clk_i);
  output [0:0]out;
  output [0:0]E;
  output \flipflops_vect_reg[2][4]_0 ;
  output \flipflops_vect_reg[2][3]_0 ;
  input ref_rst_i;
  input [4:0]D;
  input s00_axi_aclk;
  input ref_clk_i;

  wire [4:0]D;
  wire [0:0]E;
  (* async_reg = "true" *) wire [4:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [4:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [4:0]\flipflops_vect[2]_2 ;
  wire \flipflops_vect_reg[2][3]_0 ;
  wire \flipflops_vect_reg[2][4]_0 ;
  wire ref_clk_i;
  wire ref_rst_i;
  wire s00_axi_aclk;
  wire [4:0]sync_vect_stage0_s;

  assign out[0] = \flipflops_vect[2]_2 [3];
  LUT5 #(
    .INIT(32'h0000FFE2)) 
    dataA_en_o_i_1
       (.I0(\flipflops_vect[2]_2 [4]),
        .I1(\flipflops_vect[2]_2 [0]),
        .I2(\flipflops_vect[2]_2 [3]),
        .I3(\flipflops_vect[2]_2 [2]),
        .I4(ref_rst_i),
        .O(\flipflops_vect_reg[2][4]_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    dataB_en_o_i_1
       (.I0(\flipflops_vect[2]_2 [3]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(ref_rst_i),
        .O(\flipflops_vect_reg[2][3]_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \data_a_out_s[13]_i_1 
       (.I0(\flipflops_vect[2]_2 [4]),
        .I1(\flipflops_vect[2]_2 [0]),
        .I2(\flipflops_vect[2]_2 [3]),
        .O(E));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[0]),
        .Q(\flipflops_vect[0]_0 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[1]),
        .Q(\flipflops_vect[0]_0 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[2]),
        .Q(\flipflops_vect[0]_0 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[3]),
        .Q(\flipflops_vect[0]_0 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[4]),
        .Q(\flipflops_vect[0]_0 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [0]),
        .Q(\flipflops_vect[1]_1 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [1]),
        .Q(\flipflops_vect[1]_1 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [2]),
        .Q(\flipflops_vect[1]_1 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [3]),
        .Q(\flipflops_vect[1]_1 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [4]),
        .Q(\flipflops_vect[1]_1 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [0]),
        .Q(\flipflops_vect[2]_2 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [1]),
        .Q(\flipflops_vect[2]_2 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [2]),
        .Q(\flipflops_vect[2]_2 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [3]),
        .Q(\flipflops_vect[2]_2 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [4]),
        .Q(\flipflops_vect[2]_2 [4]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(sync_vect_stage0_s[0]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(sync_vect_stage0_s[1]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(sync_vect_stage0_s[2]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(sync_vect_stage0_s[3]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(sync_vect_stage0_s[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_to_dac_sync_vect" *) 
module double_dds_dds_ampl_0_axi_to_dac_sync_vect__xdcDup__1
   (D,
    Q,
    s00_axi_aclk,
    ref_clk_i);
  output [13:0]D;
  input [13:0]Q;
  input s00_axi_aclk;
  input ref_clk_i;

  wire [13:0]Q;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[2]_2 ;
  wire ref_clk_i;
  wire s00_axi_aclk;
  wire [13:0]sync_vect_stage0_s;

  assign D[13:0] = \flipflops_vect[2]_2 ;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[0]),
        .Q(\flipflops_vect[0]_0 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[10]),
        .Q(\flipflops_vect[0]_0 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[11]),
        .Q(\flipflops_vect[0]_0 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[12]),
        .Q(\flipflops_vect[0]_0 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[13]),
        .Q(\flipflops_vect[0]_0 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[1]),
        .Q(\flipflops_vect[0]_0 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[2]),
        .Q(\flipflops_vect[0]_0 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[3]),
        .Q(\flipflops_vect[0]_0 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[4]),
        .Q(\flipflops_vect[0]_0 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[5]),
        .Q(\flipflops_vect[0]_0 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[6]),
        .Q(\flipflops_vect[0]_0 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[7]),
        .Q(\flipflops_vect[0]_0 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[8]),
        .Q(\flipflops_vect[0]_0 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[9]),
        .Q(\flipflops_vect[0]_0 [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [0]),
        .Q(\flipflops_vect[1]_1 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [10]),
        .Q(\flipflops_vect[1]_1 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [11]),
        .Q(\flipflops_vect[1]_1 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [12]),
        .Q(\flipflops_vect[1]_1 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [13]),
        .Q(\flipflops_vect[1]_1 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [1]),
        .Q(\flipflops_vect[1]_1 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [2]),
        .Q(\flipflops_vect[1]_1 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [3]),
        .Q(\flipflops_vect[1]_1 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [4]),
        .Q(\flipflops_vect[1]_1 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [5]),
        .Q(\flipflops_vect[1]_1 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [6]),
        .Q(\flipflops_vect[1]_1 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [7]),
        .Q(\flipflops_vect[1]_1 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [8]),
        .Q(\flipflops_vect[1]_1 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [9]),
        .Q(\flipflops_vect[1]_1 [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [0]),
        .Q(\flipflops_vect[2]_2 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [10]),
        .Q(\flipflops_vect[2]_2 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [11]),
        .Q(\flipflops_vect[2]_2 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [12]),
        .Q(\flipflops_vect[2]_2 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [13]),
        .Q(\flipflops_vect[2]_2 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [1]),
        .Q(\flipflops_vect[2]_2 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [2]),
        .Q(\flipflops_vect[2]_2 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [3]),
        .Q(\flipflops_vect[2]_2 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [4]),
        .Q(\flipflops_vect[2]_2 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [5]),
        .Q(\flipflops_vect[2]_2 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [6]),
        .Q(\flipflops_vect[2]_2 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [7]),
        .Q(\flipflops_vect[2]_2 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [8]),
        .Q(\flipflops_vect[2]_2 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [9]),
        .Q(\flipflops_vect[2]_2 [9]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(sync_vect_stage0_s[0]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(sync_vect_stage0_s[10]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(sync_vect_stage0_s[11]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(sync_vect_stage0_s[12]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(sync_vect_stage0_s[13]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(sync_vect_stage0_s[1]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(sync_vect_stage0_s[2]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(sync_vect_stage0_s[3]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(sync_vect_stage0_s[4]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(sync_vect_stage0_s[5]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(sync_vect_stage0_s[6]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(sync_vect_stage0_s[7]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(sync_vect_stage0_s[8]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(sync_vect_stage0_s[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "wb_axi_to_dac" *) 
module double_dds_dds_ampl_0_wb_axi_to_dac
   (D,
    Q,
    \data_b_s_reg[13]_0 ,
    s00_axi_rdata,
    s00_axi_reset,
    synchronize_chan_s_reg_0,
    s00_axi_aclk,
    data_b_en_always_high_s_reg_0,
    data_a_en_always_high_s_reg_0,
    data_b_en_o_reg_0,
    data_a_en_o_reg_0,
    addr_s,
    E,
    s00_axi_wdata,
    \data_b_s_reg[31]_0 ,
    \readdata_s_reg[31]_0 );
  output [4:0]D;
  output [13:0]Q;
  output [13:0]\data_b_s_reg[13]_0 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_reset;
  input synchronize_chan_s_reg_0;
  input s00_axi_aclk;
  input data_b_en_always_high_s_reg_0;
  input data_a_en_always_high_s_reg_0;
  input data_b_en_o_reg_0;
  input data_a_en_o_reg_0;
  input [1:0]addr_s;
  input [0:0]E;
  input [31:0]s00_axi_wdata;
  input [0:0]\data_b_s_reg[31]_0 ;
  input [0:0]\readdata_s_reg[31]_0 ;

  wire [4:0]D;
  wire [0:0]E;
  wire [13:0]Q;
  wire [1:0]addr_s;
  wire data_a_en_always_high_s_reg_0;
  wire data_a_en_o_reg_0;
  wire [31:14]data_a_s;
  wire data_b_en_always_high_s_reg_0;
  wire data_b_en_o_reg_0;
  wire [31:14]data_b_s;
  wire [13:0]\data_b_s_reg[13]_0 ;
  wire [0:0]\data_b_s_reg[31]_0 ;
  wire [31:0]readdata_next_s;
  wire [0:0]\readdata_s_reg[31]_0 ;
  wire s00_axi_aclk;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire [31:0]s00_axi_wdata;
  wire synchronize_chan_s_reg_0;

  FDRE data_a_en_always_high_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_a_en_always_high_s_reg_0),
        .Q(D[2]),
        .R(s00_axi_reset));
  FDRE data_a_en_o_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_a_en_o_reg_0),
        .Q(D[4]),
        .R(1'b0));
  FDRE \data_a_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[10]),
        .Q(Q[10]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[11]),
        .Q(Q[11]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[12]),
        .Q(Q[12]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[13]),
        .Q(Q[13]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[14]),
        .Q(data_a_s[14]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[15]),
        .Q(data_a_s[15]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[16]),
        .Q(data_a_s[16]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[17]),
        .Q(data_a_s[17]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[18]),
        .Q(data_a_s[18]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[19]),
        .Q(data_a_s[19]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[20]),
        .Q(data_a_s[20]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[21]),
        .Q(data_a_s[21]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[22]),
        .Q(data_a_s[22]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[23]),
        .Q(data_a_s[23]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[24]),
        .Q(data_a_s[24]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[25]),
        .Q(data_a_s[25]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[26]),
        .Q(data_a_s[26]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[27]),
        .Q(data_a_s[27]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[28]),
        .Q(data_a_s[28]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[29]),
        .Q(data_a_s[29]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[30]),
        .Q(data_a_s[30]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[31]),
        .Q(data_a_s[31]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[5]),
        .Q(Q[5]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[6]),
        .Q(Q[6]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[7]),
        .Q(Q[7]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[8]),
        .Q(Q[8]),
        .R(s00_axi_reset));
  FDRE \data_a_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[9]),
        .Q(Q[9]),
        .R(s00_axi_reset));
  FDRE data_b_en_always_high_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_b_en_always_high_s_reg_0),
        .Q(D[1]),
        .R(s00_axi_reset));
  FDRE data_b_en_o_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_b_en_o_reg_0),
        .Q(D[3]),
        .R(1'b0));
  FDRE \data_b_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\data_b_s_reg[13]_0 [0]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\data_b_s_reg[13]_0 [10]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\data_b_s_reg[13]_0 [11]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\data_b_s_reg[13]_0 [12]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\data_b_s_reg[13]_0 [13]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[14]),
        .Q(data_b_s[14]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[15]),
        .Q(data_b_s[15]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[16]),
        .Q(data_b_s[16]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[17]),
        .Q(data_b_s[17]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[18]),
        .Q(data_b_s[18]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[19]),
        .Q(data_b_s[19]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\data_b_s_reg[13]_0 [1]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[20]),
        .Q(data_b_s[20]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[21]),
        .Q(data_b_s[21]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[22]),
        .Q(data_b_s[22]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[23]),
        .Q(data_b_s[23]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[24]),
        .Q(data_b_s[24]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[25]),
        .Q(data_b_s[25]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[26]),
        .Q(data_b_s[26]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[27]),
        .Q(data_b_s[27]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[28]),
        .Q(data_b_s[28]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[29]),
        .Q(data_b_s[29]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\data_b_s_reg[13]_0 [2]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[30]),
        .Q(data_b_s[30]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[31]),
        .Q(data_b_s[31]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\data_b_s_reg[13]_0 [3]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\data_b_s_reg[13]_0 [4]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\data_b_s_reg[13]_0 [5]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\data_b_s_reg[13]_0 [6]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\data_b_s_reg[13]_0 [7]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\data_b_s_reg[13]_0 [8]),
        .R(s00_axi_reset));
  FDRE \data_b_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\data_b_s_reg[31]_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\data_b_s_reg[13]_0 [9]),
        .R(s00_axi_reset));
  LUT5 #(
    .INIT(32'hEEF322F3)) 
    \readdata_s[0]_i_1 
       (.I0(Q[0]),
        .I1(addr_s[1]),
        .I2(\data_b_s_reg[13]_0 [0]),
        .I3(addr_s[0]),
        .I4(D[0]),
        .O(readdata_next_s[0]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[10]_i_1 
       (.I0(Q[10]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\data_b_s_reg[13]_0 [10]),
        .O(readdata_next_s[10]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[11]_i_1 
       (.I0(Q[11]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\data_b_s_reg[13]_0 [11]),
        .O(readdata_next_s[11]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[12]_i_1 
       (.I0(Q[12]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\data_b_s_reg[13]_0 [12]),
        .O(readdata_next_s[12]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[13]_i_1 
       (.I0(Q[13]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\data_b_s_reg[13]_0 [13]),
        .O(readdata_next_s[13]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[14]_i_1 
       (.I0(data_a_s[14]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[14]),
        .O(readdata_next_s[14]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[15]_i_1 
       (.I0(data_a_s[15]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[15]),
        .O(readdata_next_s[15]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[16]_i_1 
       (.I0(data_a_s[16]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[16]),
        .O(readdata_next_s[16]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[17]_i_1 
       (.I0(data_a_s[17]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[17]),
        .O(readdata_next_s[17]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[18]_i_1 
       (.I0(data_a_s[18]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[18]),
        .O(readdata_next_s[18]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[19]_i_1 
       (.I0(data_a_s[19]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[19]),
        .O(readdata_next_s[19]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \readdata_s[1]_i_1 
       (.I0(D[1]),
        .I1(Q[1]),
        .I2(addr_s[0]),
        .I3(addr_s[1]),
        .I4(\data_b_s_reg[13]_0 [1]),
        .O(readdata_next_s[1]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[20]_i_1 
       (.I0(data_a_s[20]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[20]),
        .O(readdata_next_s[20]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[21]_i_1 
       (.I0(data_a_s[21]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[21]),
        .O(readdata_next_s[21]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[22]_i_1 
       (.I0(data_a_s[22]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[22]),
        .O(readdata_next_s[22]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[23]_i_1 
       (.I0(data_a_s[23]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[23]),
        .O(readdata_next_s[23]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[24]_i_1 
       (.I0(data_a_s[24]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[24]),
        .O(readdata_next_s[24]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[25]_i_1 
       (.I0(data_a_s[25]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[25]),
        .O(readdata_next_s[25]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[26]_i_1 
       (.I0(data_a_s[26]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[26]),
        .O(readdata_next_s[26]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[27]_i_1 
       (.I0(data_a_s[27]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[27]),
        .O(readdata_next_s[27]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[28]_i_1 
       (.I0(data_a_s[28]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[28]),
        .O(readdata_next_s[28]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[29]_i_1 
       (.I0(data_a_s[29]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[29]),
        .O(readdata_next_s[29]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \readdata_s[2]_i_1 
       (.I0(D[2]),
        .I1(Q[2]),
        .I2(addr_s[0]),
        .I3(addr_s[1]),
        .I4(\data_b_s_reg[13]_0 [2]),
        .O(readdata_next_s[2]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[30]_i_1 
       (.I0(data_a_s[30]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[30]),
        .O(readdata_next_s[30]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[31]_i_2 
       (.I0(data_a_s[31]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(data_b_s[31]),
        .O(readdata_next_s[31]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[3]_i_1 
       (.I0(Q[3]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\data_b_s_reg[13]_0 [3]),
        .O(readdata_next_s[3]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[4]_i_1 
       (.I0(Q[4]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\data_b_s_reg[13]_0 [4]),
        .O(readdata_next_s[4]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[5]_i_1 
       (.I0(Q[5]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\data_b_s_reg[13]_0 [5]),
        .O(readdata_next_s[5]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[6]_i_1 
       (.I0(Q[6]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\data_b_s_reg[13]_0 [6]),
        .O(readdata_next_s[6]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[7]_i_1 
       (.I0(Q[7]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\data_b_s_reg[13]_0 [7]),
        .O(readdata_next_s[7]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[8]_i_1 
       (.I0(Q[8]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\data_b_s_reg[13]_0 [8]),
        .O(readdata_next_s[8]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[9]_i_1 
       (.I0(Q[9]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\data_b_s_reg[13]_0 [9]),
        .O(readdata_next_s[9]));
  FDRE \readdata_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[0]),
        .Q(s00_axi_rdata[0]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[10]),
        .Q(s00_axi_rdata[10]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[11]),
        .Q(s00_axi_rdata[11]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[12]),
        .Q(s00_axi_rdata[12]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[13]),
        .Q(s00_axi_rdata[13]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[14]),
        .Q(s00_axi_rdata[14]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[15]),
        .Q(s00_axi_rdata[15]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[16]),
        .Q(s00_axi_rdata[16]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[17]),
        .Q(s00_axi_rdata[17]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[18]),
        .Q(s00_axi_rdata[18]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[19]),
        .Q(s00_axi_rdata[19]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[1]),
        .Q(s00_axi_rdata[1]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[20]),
        .Q(s00_axi_rdata[20]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[21]),
        .Q(s00_axi_rdata[21]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[22]),
        .Q(s00_axi_rdata[22]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[23]),
        .Q(s00_axi_rdata[23]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[24]),
        .Q(s00_axi_rdata[24]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[25]),
        .Q(s00_axi_rdata[25]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[26]),
        .Q(s00_axi_rdata[26]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[27]),
        .Q(s00_axi_rdata[27]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[28]),
        .Q(s00_axi_rdata[28]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[29]),
        .Q(s00_axi_rdata[29]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[2]),
        .Q(s00_axi_rdata[2]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[30]),
        .Q(s00_axi_rdata[30]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[31]),
        .Q(s00_axi_rdata[31]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[3]),
        .Q(s00_axi_rdata[3]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[4]),
        .Q(s00_axi_rdata[4]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[5]),
        .Q(s00_axi_rdata[5]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[6]),
        .Q(s00_axi_rdata[6]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[7]),
        .Q(s00_axi_rdata[7]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[8]),
        .Q(s00_axi_rdata[8]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_next_s[9]),
        .Q(s00_axi_rdata[9]),
        .R(s00_axi_reset));
  FDRE synchronize_chan_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(synchronize_chan_s_reg_0),
        .Q(D[0]),
        .R(s00_axi_reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
