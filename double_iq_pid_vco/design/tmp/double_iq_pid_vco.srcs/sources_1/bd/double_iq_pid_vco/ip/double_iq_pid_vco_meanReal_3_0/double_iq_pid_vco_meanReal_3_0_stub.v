// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sat May 30 19:55:56 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub -rename_top double_iq_pid_vco_meanReal_3_0 -prefix
//               double_iq_pid_vco_meanReal_3_0_ double_iq_pid_vco_meanReal_2_0_stub.v
// Design      : double_iq_pid_vco_meanReal_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "meanReal,Vivado 2019.2" *)
module double_iq_pid_vco_meanReal_3_0(data_i, data_en_i, data_clk_i, data_rst_i, 
  data_o, data_clk_o, data_rst_o, data_en_o)
/* synthesis syn_black_box black_box_pad_pin="data_i[39:0],data_en_i,data_clk_i,data_rst_i,data_o[63:0],data_clk_o,data_rst_o,data_en_o" */;
  input [39:0]data_i;
  input data_en_i;
  input data_clk_i;
  input data_rst_i;
  output [63:0]data_o;
  output data_clk_o;
  output data_rst_o;
  output data_en_o;
endmodule
