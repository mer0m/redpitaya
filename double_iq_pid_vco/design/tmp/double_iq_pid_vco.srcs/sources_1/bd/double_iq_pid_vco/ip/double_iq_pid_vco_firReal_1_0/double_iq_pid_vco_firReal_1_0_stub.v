// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Jan 29 17:04:27 2021
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub -rename_top double_iq_pid_vco_firReal_1_0 -prefix
//               double_iq_pid_vco_firReal_1_0_ double_iq_pid_vco_firReal_0_0_stub.v
// Design      : double_iq_pid_vco_firReal_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "firReal,Vivado 2019.2" *)
module double_iq_pid_vco_firReal_1_0(data_i, data_en_i, data_clk_i, data_rst_i, 
  data_o, data_en_o, data_clk_o, data_rst_o, tick_o, s00_axi_aclk, s00_axi_reset, s00_axi_awaddr, 
  s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wvalid, s00_axi_wready, 
  s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arvalid, 
  s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="data_i[13:0],data_en_i,data_clk_i,data_rst_i,data_o[31:0],data_en_o,data_clk_o,data_rst_o,tick_o,s00_axi_aclk,s00_axi_reset,s00_axi_awaddr[3:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */;
  input [13:0]data_i;
  input data_en_i;
  input data_clk_i;
  input data_rst_i;
  output [31:0]data_o;
  output data_en_o;
  output data_clk_o;
  output data_rst_o;
  output tick_o;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [3:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
