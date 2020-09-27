// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri May 15 18:42:10 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_iq_pid_vco_shifterReal_2_0_stub.v
// Design      : double_iq_pid_vco_shifterReal_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "shifterReal,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(data_i, data_en_i, data_eof_i, data_clk_i, 
  data_rst_i, data_o, data_en_o, data_eof_o, data_rst_o, data_clk_o)
/* synthesis syn_black_box black_box_pad_pin="data_i[18:0],data_en_i,data_eof_i,data_clk_i,data_rst_i,data_o[39:0],data_en_o,data_eof_o,data_rst_o,data_clk_o" */;
  input [18:0]data_i;
  input data_en_i;
  input data_eof_i;
  input data_clk_i;
  input data_rst_i;
  output [39:0]data_o;
  output data_en_o;
  output data_eof_o;
  output data_rst_o;
  output data_clk_o;
endmodule
