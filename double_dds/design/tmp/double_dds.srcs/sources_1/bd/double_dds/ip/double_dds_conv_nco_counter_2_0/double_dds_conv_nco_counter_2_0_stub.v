// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu Oct 22 18:49:22 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub -rename_top double_dds_conv_nco_counter_2_0 -prefix
//               double_dds_conv_nco_counter_2_0_ double_dds_conv_nco_counter_1_0_stub.v
// Design      : double_dds_conv_nco_counter_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "convertComplexToReal,Vivado 2019.2" *)
module double_dds_conv_nco_counter_2_0(data1_o, data1_en_o, data1_eof_o, data1_clk_o, 
  data1_rst_o, data2_o, data2_en_o, data2_eof_o, data2_clk_o, data2_rst_o, data_i_i, data_q_i, 
  data_eof_i, data_en_i, data_rst_i, data_clk_i)
/* synthesis syn_black_box black_box_pad_pin="data1_o[15:0],data1_en_o,data1_eof_o,data1_clk_o,data1_rst_o,data2_o[15:0],data2_en_o,data2_eof_o,data2_clk_o,data2_rst_o,data_i_i[15:0],data_q_i[15:0],data_eof_i,data_en_i,data_rst_i,data_clk_i" */;
  output [15:0]data1_o;
  output data1_en_o;
  output data1_eof_o;
  output data1_clk_o;
  output data1_rst_o;
  output [15:0]data2_o;
  output data2_en_o;
  output data2_eof_o;
  output data2_clk_o;
  output data2_rst_o;
  input [15:0]data_i_i;
  input [15:0]data_q_i;
  input data_eof_i;
  input data_en_i;
  input data_rst_i;
  input data_clk_i;
endmodule
