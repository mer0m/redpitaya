// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun May 31 18:55:26 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub -rename_top double_dds_nco_counter_2_0 -prefix
//               double_dds_nco_counter_2_0_ double_dds_nco_counter_3_0_stub.v
// Design      : double_dds_nco_counter_3_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "nco_counter,Vivado 2019.2" *)
module double_dds_nco_counter_2_0(ref_clk_i, ref_rst_i, s00_axi_aclk, 
  s00_axi_reset, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, 
  s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, 
  s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, 
  s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, sync_i, 
  pinc_i, pinc_en_i, pinc_rst_i, pinc_clk_i, poff_i, poff_en_i, poff_rst_i, poff_clk_i, dds_cos_o, 
  dds_sin_o, dds_en_o, dds_clk_o, dds_rst_o, trigger_o, cos_fake_o, sin_fake_o, wave_clk_o, 
  wave_rst_o, wave_en_o)
/* synthesis syn_black_box black_box_pad_pin="ref_clk_i,ref_rst_i,s00_axi_aclk,s00_axi_reset,s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,sync_i,pinc_i[39:0],pinc_en_i,pinc_rst_i,pinc_clk_i,poff_i[11:0],poff_en_i,poff_rst_i,poff_clk_i,dds_cos_o[15:0],dds_sin_o[15:0],dds_en_o,dds_clk_o,dds_rst_o,trigger_o,cos_fake_o,sin_fake_o,wave_clk_o,wave_rst_o,wave_en_o" */;
  input ref_clk_i;
  input ref_rst_i;
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
  input sync_i;
  input [39:0]pinc_i;
  input pinc_en_i;
  input pinc_rst_i;
  input pinc_clk_i;
  input [11:0]poff_i;
  input poff_en_i;
  input poff_rst_i;
  input poff_clk_i;
  output [15:0]dds_cos_o;
  output [15:0]dds_sin_o;
  output dds_en_o;
  output dds_clk_o;
  output dds_rst_o;
  output trigger_o;
  output cos_fake_o;
  output sin_fake_o;
  output wave_clk_o;
  output wave_rst_o;
  output wave_en_o;
endmodule
