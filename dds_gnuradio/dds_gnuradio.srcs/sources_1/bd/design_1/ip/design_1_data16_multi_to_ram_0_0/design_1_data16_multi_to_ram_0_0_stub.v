// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Tue Mar 28 17:44:01 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /home/bma/git/fpga_design/redpitaya/dds_gnuradio/dds_gnuradio.srcs/sources_1/bd/design_1/ip/design_1_data16_multi_to_ram_0_0/design_1_data16_multi_to_ram_0_0_stub.v
// Design      : design_1_data16_multi_to_ram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "data16_multi_to_ram,Vivado 2016.4" *)
module design_1_data16_multi_to_ram_0_0(data1_i, data1_en_i, data1_clk_i, data1_rst_i, 
  data1_eof_i, data2_i, data2_en_i, data2_clk_i, data2_rst_i, data2_eof_i, s00_axi_aclk, 
  s00_axi_reset, s00_axi_awaddr, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, 
  s00_axi_wvalid, s00_axi_wready, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, 
  s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, 
  s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="data1_i[15:0],data1_en_i,data1_clk_i,data1_rst_i,data1_eof_i,data2_i[15:0],data2_en_i,data2_clk_i,data2_rst_i,data2_eof_i,s00_axi_aclk,s00_axi_reset,s00_axi_awaddr[5:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[5:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */;
  input [15:0]data1_i;
  input data1_en_i;
  input data1_clk_i;
  input data1_rst_i;
  input data1_eof_i;
  input [15:0]data2_i;
  input data2_en_i;
  input data2_clk_i;
  input data2_rst_i;
  input data2_eof_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [5:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [5:0]s00_axi_araddr;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
