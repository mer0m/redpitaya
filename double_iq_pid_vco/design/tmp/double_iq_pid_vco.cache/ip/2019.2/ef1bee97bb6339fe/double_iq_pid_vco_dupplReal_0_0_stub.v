// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sat May 30 19:57:30 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_iq_pid_vco_dupplReal_0_0_stub.v
// Design      : double_iq_pid_vco_dupplReal_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dupplReal,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(data_en_i, data_clk_i, data_rst_i, data_eof_i, 
  data_sof_i, data_i, data1_en_o, data1_clk_o, data1_rst_o, data1_eof_o, data1_sof_o, data1_o, 
  data2_en_o, data2_clk_o, data2_rst_o, data2_eof_o, data2_sof_o, data2_o, data3_en_o, 
  data3_clk_o, data3_rst_o, data3_eof_o, data3_sof_o, data3_o)
/* synthesis syn_black_box black_box_pad_pin="data_en_i,data_clk_i,data_rst_i,data_eof_i,data_sof_i,data_i[39:0],data1_en_o,data1_clk_o,data1_rst_o,data1_eof_o,data1_sof_o,data1_o[39:0],data2_en_o,data2_clk_o,data2_rst_o,data2_eof_o,data2_sof_o,data2_o[39:0],data3_en_o,data3_clk_o,data3_rst_o,data3_eof_o,data3_sof_o,data3_o[39:0]" */;
  input data_en_i;
  input data_clk_i;
  input data_rst_i;
  input data_eof_i;
  input data_sof_i;
  input [39:0]data_i;
  output data1_en_o;
  output data1_clk_o;
  output data1_rst_o;
  output data1_eof_o;
  output data1_sof_o;
  output [39:0]data1_o;
  output data2_en_o;
  output data2_clk_o;
  output data2_rst_o;
  output data2_eof_o;
  output data2_sof_o;
  output [39:0]data2_o;
  output data3_en_o;
  output data3_clk_o;
  output data3_rst_o;
  output data3_eof_o;
  output data3_sof_o;
  output [39:0]data3_o;
endmodule
