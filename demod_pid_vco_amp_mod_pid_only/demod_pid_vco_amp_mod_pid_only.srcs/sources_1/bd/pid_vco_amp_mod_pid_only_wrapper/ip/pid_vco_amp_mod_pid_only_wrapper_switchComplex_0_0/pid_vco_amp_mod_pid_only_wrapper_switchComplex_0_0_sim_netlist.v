// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Wed May  9 11:10:25 2018
// Host        : ux305 running 64-bit Debian GNU/Linux testing/unstable
// Command     : write_verilog -force -mode funcsim
//               /home/bma/git/fpga_design/redpitaya/pid_vco_amp_mod_pid_only/pid_vco_amp_mod_pid_only.srcs/sources_1/bd/pid_vco_amp_mod_pid_only_wrapper/ip/pid_vco_amp_mod_pid_only_wrapper_switchComplex_0_0/pid_vco_amp_mod_pid_only_wrapper_switchComplex_0_0_sim_netlist.v
// Design      : pid_vco_amp_mod_pid_only_wrapper_switchComplex_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pid_vco_amp_mod_pid_only_wrapper_switchComplex_0_0,switchComplex,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "switchComplex,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module pid_vco_amp_mod_pid_only_wrapper_switchComplex_0_0
   (data1_i_i,
    data1_q_i,
    data1_eof_i,
    data1_rst_i,
    data1_en_i,
    data1_clk_i,
    data2_i_i,
    data2_q_i,
    data2_eof_i,
    data2_rst_i,
    data2_en_i,
    data2_clk_i,
    data_i_o,
    data_q_o,
    data_eof_o,
    data_rst_o,
    data_en_o,
    data_clk_o,
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
    s00_axi_rready);
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data1_in DATA_I" *) input [13:0]data1_i_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data1_in DATA_Q" *) input [13:0]data1_q_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data1_in DATA_EOF" *) input data1_eof_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data1_in DATA_RST" *) input data1_rst_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data1_in DATA_EN" *) input data1_en_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data1_in DATA_CLK" *) input data1_clk_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data2_in DATA_I" *) input [13:0]data2_i_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data2_in DATA_Q" *) input [13:0]data2_q_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data2_in DATA_EOF" *) input data2_eof_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data2_in DATA_RST" *) input data2_rst_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data2_in DATA_EN" *) input data2_en_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data2_in DATA_CLK" *) input data2_clk_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_I" *) output [13:0]data_i_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_Q" *) output [13:0]data_q_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_EOF" *) output data_eof_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_RST" *) output data_rst_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_EN" *) output data_en_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_CLK" *) output data_clk_o;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_signal_clock CLK" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_signal_reset RST" *) input s00_axi_reset;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) input [3:0]s00_axi_awaddr;
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

  wire \<const0> ;
  wire data1_clk_i;
  wire data1_en_i;
  wire data1_eof_i;
  wire [13:0]data1_i_i;
  wire [13:0]data1_q_i;
  wire data1_rst_i;
  wire data2_en_i;
  wire data2_eof_i;
  wire [13:0]data2_i_i;
  wire [13:0]data2_q_i;
  wire data_en_o;
  wire data_eof_o;
  wire [13:0]data_i_o;
  wire [13:0]data_q_o;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [0:0]\^s00_axi_rdata ;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;

  assign data_clk_o = data1_clk_i;
  assign data_rst_o = data1_rst_i;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \<const0> ;
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \<const0> ;
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \<const0> ;
  assign s00_axi_rdata[25] = \<const0> ;
  assign s00_axi_rdata[24] = \<const0> ;
  assign s00_axi_rdata[23] = \<const0> ;
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \<const0> ;
  assign s00_axi_rdata[20] = \<const0> ;
  assign s00_axi_rdata[19] = \<const0> ;
  assign s00_axi_rdata[18] = \<const0> ;
  assign s00_axi_rdata[17] = \<const0> ;
  assign s00_axi_rdata[16] = \<const0> ;
  assign s00_axi_rdata[15] = \<const0> ;
  assign s00_axi_rdata[14] = \<const0> ;
  assign s00_axi_rdata[13] = \<const0> ;
  assign s00_axi_rdata[12] = \<const0> ;
  assign s00_axi_rdata[11] = \<const0> ;
  assign s00_axi_rdata[10] = \<const0> ;
  assign s00_axi_rdata[9] = \<const0> ;
  assign s00_axi_rdata[8] = \<const0> ;
  assign s00_axi_rdata[7] = \<const0> ;
  assign s00_axi_rdata[6] = \<const0> ;
  assign s00_axi_rdata[5] = \<const0> ;
  assign s00_axi_rdata[4] = \<const0> ;
  assign s00_axi_rdata[3] = \<const0> ;
  assign s00_axi_rdata[2] = \<const0> ;
  assign s00_axi_rdata[1] = \<const0> ;
  assign s00_axi_rdata[0] = \^s00_axi_rdata [0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  pid_vco_amp_mod_pid_only_wrapper_switchComplex_0_0_switchComplex U0
       (.data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_eof_i(data1_eof_i),
        .data1_i_i(data1_i_i),
        .data1_q_i(data1_q_i),
        .data2_en_i(data2_en_i),
        .data2_eof_i(data2_eof_i),
        .data2_i_i(data2_i_i),
        .data2_q_i(data2_q_i),
        .data_en_o(data_en_o),
        .data_eof_o(data_eof_o),
        .data_i_o(data_i_o),
        .data_q_o(data_q_o),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(\^s00_axi_rdata ),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[0]),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "switchComplex" *) 
module pid_vco_amp_mod_pid_only_wrapper_switchComplex_0_0_switchComplex
   (s00_axi_arready,
    s00_axi_rdata,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_rvalid,
    data_i_o,
    data_q_o,
    data_en_o,
    data_eof_o,
    s00_axi_bvalid,
    data1_clk_i,
    s00_axi_arvalid,
    s00_axi_reset,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_araddr,
    data2_i_i,
    data1_i_i,
    data2_q_i,
    data1_q_i,
    data2_en_i,
    data1_en_i,
    data2_eof_i,
    data1_eof_i,
    s00_axi_wdata,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_arready;
  output [0:0]s00_axi_rdata;
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_rvalid;
  output [13:0]data_i_o;
  output [13:0]data_q_o;
  output data_en_o;
  output data_eof_o;
  output s00_axi_bvalid;
  input data1_clk_i;
  input s00_axi_arvalid;
  input s00_axi_reset;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [1:0]s00_axi_araddr;
  input [13:0]data2_i_i;
  input [13:0]data1_i_i;
  input [13:0]data2_q_i;
  input [13:0]data1_q_i;
  input data2_en_i;
  input data1_en_i;
  input data2_eof_i;
  input data1_eof_i;
  input [0:0]s00_axi_wdata;
  input s00_axi_bready;
  input s00_axi_rready;

  wire data1_clk_i;
  wire data1_en_i;
  wire data1_eof_i;
  wire [13:0]data1_i_i;
  wire [13:0]data1_q_i;
  wire data2_en_i;
  wire data2_eof_i;
  wire [13:0]data2_i_i;
  wire [13:0]data2_q_i;
  wire data_en_o;
  wire data_eof_o;
  wire [13:0]data_i_o;
  wire [13:0]data_q_o;
  wire handle_comm_n_10;
  wire handle_comm_n_5;
  wire handle_comm_n_7;
  wire handle_comm_n_9;
  wire [1:1]read_addr_s;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [0:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [0:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire witchIn;
  wire witchIn2_reg_srl2_n_0;
  wire witchIn3;
  wire [1:1]write_addr_s;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_en_o_INST_0
       (.I0(data2_en_i),
        .I1(witchIn3),
        .I2(data1_en_i),
        .O(data_en_o));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_eof_o_INST_0
       (.I0(data2_eof_i),
        .I1(witchIn3),
        .I2(data1_eof_i),
        .O(data_eof_o));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_i_o[0]_INST_0 
       (.I0(data2_i_i[0]),
        .I1(data1_i_i[0]),
        .I2(witchIn3),
        .O(data_i_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_i_o[10]_INST_0 
       (.I0(data2_i_i[10]),
        .I1(data1_i_i[10]),
        .I2(witchIn3),
        .O(data_i_o[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_i_o[11]_INST_0 
       (.I0(data2_i_i[11]),
        .I1(data1_i_i[11]),
        .I2(witchIn3),
        .O(data_i_o[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_i_o[12]_INST_0 
       (.I0(data2_i_i[12]),
        .I1(data1_i_i[12]),
        .I2(witchIn3),
        .O(data_i_o[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_i_o[13]_INST_0 
       (.I0(data2_i_i[13]),
        .I1(data1_i_i[13]),
        .I2(witchIn3),
        .O(data_i_o[13]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_i_o[1]_INST_0 
       (.I0(data2_i_i[1]),
        .I1(data1_i_i[1]),
        .I2(witchIn3),
        .O(data_i_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_i_o[2]_INST_0 
       (.I0(data2_i_i[2]),
        .I1(data1_i_i[2]),
        .I2(witchIn3),
        .O(data_i_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_i_o[3]_INST_0 
       (.I0(data2_i_i[3]),
        .I1(data1_i_i[3]),
        .I2(witchIn3),
        .O(data_i_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_i_o[4]_INST_0 
       (.I0(data2_i_i[4]),
        .I1(data1_i_i[4]),
        .I2(witchIn3),
        .O(data_i_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_i_o[5]_INST_0 
       (.I0(data2_i_i[5]),
        .I1(data1_i_i[5]),
        .I2(witchIn3),
        .O(data_i_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_i_o[6]_INST_0 
       (.I0(data2_i_i[6]),
        .I1(data1_i_i[6]),
        .I2(witchIn3),
        .O(data_i_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_i_o[7]_INST_0 
       (.I0(data2_i_i[7]),
        .I1(data1_i_i[7]),
        .I2(witchIn3),
        .O(data_i_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_i_o[8]_INST_0 
       (.I0(data2_i_i[8]),
        .I1(data1_i_i[8]),
        .I2(witchIn3),
        .O(data_i_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_i_o[9]_INST_0 
       (.I0(data2_i_i[9]),
        .I1(data1_i_i[9]),
        .I2(witchIn3),
        .O(data_i_o[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_q_o[0]_INST_0 
       (.I0(data2_q_i[0]),
        .I1(data1_q_i[0]),
        .I2(witchIn3),
        .O(data_q_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_q_o[10]_INST_0 
       (.I0(data2_q_i[10]),
        .I1(data1_q_i[10]),
        .I2(witchIn3),
        .O(data_q_o[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_q_o[11]_INST_0 
       (.I0(data2_q_i[11]),
        .I1(data1_q_i[11]),
        .I2(witchIn3),
        .O(data_q_o[11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_q_o[12]_INST_0 
       (.I0(data2_q_i[12]),
        .I1(data1_q_i[12]),
        .I2(witchIn3),
        .O(data_q_o[12]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_q_o[13]_INST_0 
       (.I0(data2_q_i[13]),
        .I1(data1_q_i[13]),
        .I2(witchIn3),
        .O(data_q_o[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_q_o[1]_INST_0 
       (.I0(data2_q_i[1]),
        .I1(data1_q_i[1]),
        .I2(witchIn3),
        .O(data_q_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_q_o[2]_INST_0 
       (.I0(data2_q_i[2]),
        .I1(data1_q_i[2]),
        .I2(witchIn3),
        .O(data_q_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_q_o[3]_INST_0 
       (.I0(data2_q_i[3]),
        .I1(data1_q_i[3]),
        .I2(witchIn3),
        .O(data_q_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_q_o[4]_INST_0 
       (.I0(data2_q_i[4]),
        .I1(data1_q_i[4]),
        .I2(witchIn3),
        .O(data_q_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_q_o[5]_INST_0 
       (.I0(data2_q_i[5]),
        .I1(data1_q_i[5]),
        .I2(witchIn3),
        .O(data_q_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_q_o[6]_INST_0 
       (.I0(data2_q_i[6]),
        .I1(data1_q_i[6]),
        .I2(witchIn3),
        .O(data_q_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_q_o[7]_INST_0 
       (.I0(data2_q_i[7]),
        .I1(data1_q_i[7]),
        .I2(witchIn3),
        .O(data_q_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_q_o[8]_INST_0 
       (.I0(data2_q_i[8]),
        .I1(data1_q_i[8]),
        .I2(witchIn3),
        .O(data_q_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_q_o[9]_INST_0 
       (.I0(data2_q_i[9]),
        .I1(data1_q_i[9]),
        .I2(witchIn3),
        .O(data_q_o[9]));
  pid_vco_amp_mod_pid_only_wrapper_switchComplex_0_0_switchComplex_handComm handle_comm
       (.\axi_araddr_reg[3]_0 (read_addr_s),
        .\axi_awaddr_reg[3]_0 (write_addr_s),
        .\readdata_s_reg[0] (handle_comm_n_9),
        .\readdata_s_reg[0]_0 (handle_comm_n_10),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid),
        .witchIn(witchIn),
        .witchInput_s_reg(handle_comm_n_5),
        .witchInput_s_reg_0(handle_comm_n_7));
  pid_vco_amp_mod_pid_only_wrapper_switchComplex_0_0_switchComplex_wb switchComplexWb_inst
       (.\axi_araddr_reg[2] (handle_comm_n_9),
        .\axi_araddr_reg[3] (read_addr_s),
        .\axi_awaddr_reg[3] (handle_comm_n_5),
        .\axi_awaddr_reg[3]_0 (write_addr_s),
        .axi_awready_reg(handle_comm_n_7),
        .axi_rvalid_reg(handle_comm_n_10),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_reset(s00_axi_reset),
        .witchIn(witchIn));
  (* srl_name = "\U0/witchIn2_reg_srl2 " *) 
  SRL16E witchIn2_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(data1_clk_i),
        .D(witchIn),
        .Q(witchIn2_reg_srl2_n_0));
  FDRE witchIn3_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(witchIn2_reg_srl2_n_0),
        .Q(witchIn3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "switchComplex_handComm" *) 
module pid_vco_amp_mod_pid_only_wrapper_switchComplex_0_0_switchComplex_handComm
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    witchInput_s_reg,
    \axi_awaddr_reg[3]_0 ,
    witchInput_s_reg_0,
    \axi_araddr_reg[3]_0 ,
    \readdata_s_reg[0] ,
    \readdata_s_reg[0]_0 ,
    s00_axi_reset,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_wdata,
    witchIn,
    s00_axi_bready,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output witchInput_s_reg;
  output [0:0]\axi_awaddr_reg[3]_0 ;
  output witchInput_s_reg_0;
  output [0:0]\axi_araddr_reg[3]_0 ;
  output \readdata_s_reg[0] ;
  output \readdata_s_reg[0]_0 ;
  input s00_axi_reset;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input [0:0]s00_axi_wdata;
  input witchIn;
  input s00_axi_bready;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;

  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire [0:0]\axi_araddr_reg[3]_0 ;
  wire axi_arready_i_1_n_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire [0:0]\axi_awaddr_reg[3]_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [0:0]read_addr_s;
  wire \readdata_s_reg[0] ;
  wire \readdata_s_reg[0]_0 ;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [0:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire witchIn;
  wire witchInput_s_reg;
  wire witchInput_s_reg_0;
  wire [0:0]write_addr_s;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(read_addr_s),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(\axi_araddr_reg[3]_0 ),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(read_addr_s),
        .S(s00_axi_reset));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(\axi_araddr_reg[3]_0 ),
        .S(s00_axi_reset));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s00_axi_arready),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .I4(write_addr_s),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .I4(\axi_awaddr_reg[3]_0 ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(write_addr_s),
        .R(s00_axi_reset));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg[3]_0 ),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(s00_axi_reset));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wready),
        .I5(s00_axi_awready),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5C50)) 
    axi_rvalid_i_1
       (.I0(s00_axi_rready),
        .I1(s00_axi_arready),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_arvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(s00_axi_reset));
  LUT6 #(
    .INIT(64'h010101010000000F)) 
    \readdata_s[0]_i_2 
       (.I0(read_addr_s),
        .I1(\axi_araddr_reg[3]_0 ),
        .I2(\readdata_s_reg[0]_0 ),
        .I3(\axi_awaddr_reg[3]_0 ),
        .I4(write_addr_s),
        .I5(witchInput_s_reg_0),
        .O(\readdata_s_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \readdata_s[0]_i_4 
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(s00_axi_arready),
        .O(\readdata_s_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    witchInput_s_i_1
       (.I0(s00_axi_wdata),
        .I1(\axi_awaddr_reg[3]_0 ),
        .I2(write_addr_s),
        .I3(witchInput_s_reg_0),
        .I4(witchIn),
        .O(witchInput_s_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    witchInput_s_i_2
       (.I0(s00_axi_awready),
        .I1(s00_axi_wready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(witchInput_s_reg_0));
endmodule

(* ORIG_REF_NAME = "switchComplex_wb" *) 
module pid_vco_amp_mod_pid_only_wrapper_switchComplex_0_0_switchComplex_wb
   (witchIn,
    s00_axi_rdata,
    s00_axi_reset,
    \axi_awaddr_reg[3] ,
    s00_axi_aclk,
    \axi_araddr_reg[2] ,
    axi_awready_reg,
    \axi_awaddr_reg[3]_0 ,
    axi_rvalid_reg,
    \axi_araddr_reg[3] );
  output witchIn;
  output [0:0]s00_axi_rdata;
  input s00_axi_reset;
  input \axi_awaddr_reg[3] ;
  input s00_axi_aclk;
  input \axi_araddr_reg[2] ;
  input axi_awready_reg;
  input [0:0]\axi_awaddr_reg[3]_0 ;
  input axi_rvalid_reg;
  input [0:0]\axi_araddr_reg[3] ;

  wire \axi_araddr_reg[2] ;
  wire [0:0]\axi_araddr_reg[3] ;
  wire \axi_awaddr_reg[3] ;
  wire [0:0]\axi_awaddr_reg[3]_0 ;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire \readdata_s[0]_i_1_n_0 ;
  wire \readdata_s[0]_i_3_n_0 ;
  wire s00_axi_aclk;
  wire [0:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire witchIn;

  LUT4 #(
    .INIT(16'hEFE0)) 
    \readdata_s[0]_i_1 
       (.I0(witchIn),
        .I1(\axi_araddr_reg[2] ),
        .I2(\readdata_s[0]_i_3_n_0 ),
        .I3(s00_axi_rdata),
        .O(\readdata_s[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h010B)) 
    \readdata_s[0]_i_3 
       (.I0(axi_awready_reg),
        .I1(\axi_awaddr_reg[3]_0 ),
        .I2(axi_rvalid_reg),
        .I3(\axi_araddr_reg[3] ),
        .O(\readdata_s[0]_i_3_n_0 ));
  FDRE \readdata_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\readdata_s[0]_i_1_n_0 ),
        .Q(s00_axi_rdata),
        .R(s00_axi_reset));
  FDRE witchInput_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr_reg[3] ),
        .Q(witchIn),
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
