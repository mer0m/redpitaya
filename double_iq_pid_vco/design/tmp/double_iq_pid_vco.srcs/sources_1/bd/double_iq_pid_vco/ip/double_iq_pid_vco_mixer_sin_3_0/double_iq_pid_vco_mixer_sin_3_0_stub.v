// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri May 15 18:38:32 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub -rename_top double_iq_pid_vco_mixer_sin_3_0 -prefix
//               double_iq_pid_vco_mixer_sin_3_0_ double_iq_pid_vco_mixer_sin_2_0_stub.v
// Design      : double_iq_pid_vco_mixer_sin_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "multiplierReal,Vivado 2019.2" *)
module double_iq_pid_vco_mixer_sin_3_0(data1_i, data1_en_i, data1_eof_i, data1_sof_i, 
  data1_clk_i, data1_rst_i, data2_i, data2_en_i, data2_eof_i, data2_sof_i, data2_clk_i, 
  data2_rst_i, data_o, data_en_o, data_eof_o, data_sof_o, data_clk_o, data_rst_o)
/* synthesis syn_black_box black_box_pad_pin="data1_i[13:0],data1_en_i,data1_eof_i,data1_sof_i,data1_clk_i,data1_rst_i,data2_i[13:0],data2_en_i,data2_eof_i,data2_sof_i,data2_clk_i,data2_rst_i,data_o[13:0],data_en_o,data_eof_o,data_sof_o,data_clk_o,data_rst_o" */;
  input [13:0]data1_i;
  input data1_en_i;
  input data1_eof_i;
  input data1_sof_i;
  input data1_clk_i;
  input data1_rst_i;
  input [13:0]data2_i;
  input data2_en_i;
  input data2_eof_i;
  input data2_sof_i;
  input data2_clk_i;
  input data2_rst_i;
  output [13:0]data_o;
  output data_en_o;
  output data_eof_o;
  output data_sof_o;
  output data_clk_o;
  output data_rst_o;
endmodule
