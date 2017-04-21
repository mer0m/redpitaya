// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Fri Mar 24 11:39:22 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /home/bma/git/fpga_design/redpitaya/dds_gnuradio/dds_gnuradio.srcs/sources_1/bd/design_1/ip/design_1_ad9767_0_0/design_1_ad9767_0_0_stub.v
// Design      : design_1_ad9767_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ad9767,Vivado 2016.4" *)
module design_1_ad9767_0_0(dac_clk_i, dac_2clk_i, dac_2ph_i, dac_locked_i, 
  dac_dat_o, dac_wrt_o, dac_sel_o, dac_clk_o, dac_rst_o, dac_dat_a_en_i, dac_dat_a_rst_i, 
  dac_dat_a_i, dac_dat_b_en_i, dac_dat_b_rst_i, dac_dat_b_i)
/* synthesis syn_black_box black_box_pad_pin="dac_clk_i,dac_2clk_i,dac_2ph_i,dac_locked_i,dac_dat_o[13:0],dac_wrt_o,dac_sel_o,dac_clk_o,dac_rst_o,dac_dat_a_en_i,dac_dat_a_rst_i,dac_dat_a_i[13:0],dac_dat_b_en_i,dac_dat_b_rst_i,dac_dat_b_i[13:0]" */;
  input dac_clk_i;
  input dac_2clk_i;
  input dac_2ph_i;
  input dac_locked_i;
  output [13:0]dac_dat_o;
  output dac_wrt_o;
  output dac_sel_o;
  output dac_clk_o;
  output dac_rst_o;
  input dac_dat_a_en_i;
  input dac_dat_a_rst_i;
  input [13:0]dac_dat_a_i;
  input dac_dat_b_en_i;
  input dac_dat_b_rst_i;
  input [13:0]dac_dat_b_i;
endmodule
