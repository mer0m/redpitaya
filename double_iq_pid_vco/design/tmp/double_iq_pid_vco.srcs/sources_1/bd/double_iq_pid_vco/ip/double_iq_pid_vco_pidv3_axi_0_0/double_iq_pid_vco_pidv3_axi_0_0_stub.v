// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri May 15 18:40:16 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub
//               /home/bma/git/github/oscimpDigital/app/redpitaya/double_iq_pid_vco/design/tmp/double_iq_pid_vco.srcs/sources_1/bd/double_iq_pid_vco/ip/double_iq_pid_vco_pidv3_axi_0_0/double_iq_pid_vco_pidv3_axi_0_0_stub.v
// Design      : double_iq_pid_vco_pidv3_axi_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pidv3_axi,Vivado 2019.2" *)
module double_iq_pid_vco_pidv3_axi_0_0(data_i, data_en_i, data_clk_i, data_rst_i, 
  setpoint_i, kp_i, ki_i, kd_i, sign_i, int_rst_i, data_o, data_en_o, data_clk_o, data_rst_o, 
  s00_axi_aclk, s00_axi_reset, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, 
  s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, 
  s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, 
  s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, 
  s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="data_i[13:0],data_en_i,data_clk_i,data_rst_i,setpoint_i[13:0],kp_i[13:0],ki_i[17:0],kd_i[13:0],sign_i,int_rst_i,data_o[13:0],data_en_o,data_clk_o,data_rst_o,s00_axi_aclk,s00_axi_reset,s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */;
  input [13:0]data_i;
  input data_en_i;
  input data_clk_i;
  input data_rst_i;
  input [13:0]setpoint_i;
  input [13:0]kp_i;
  input [17:0]ki_i;
  input [13:0]kd_i;
  input sign_i;
  input int_rst_i;
  output [13:0]data_o;
  output data_en_o;
  output data_clk_o;
  output data_rst_o;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [4:0]s00_axi_awaddr;
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
  input [4:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule