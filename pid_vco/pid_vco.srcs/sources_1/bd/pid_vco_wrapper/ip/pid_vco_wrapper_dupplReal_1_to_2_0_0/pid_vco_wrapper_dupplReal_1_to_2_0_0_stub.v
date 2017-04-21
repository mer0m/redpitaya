// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Tue Apr 11 10:27:33 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /home/bma/git/fpga_design/redpitaya/pid_vco/pid_vco.srcs/sources_1/bd/pid_vco_wrapper/ip/pid_vco_wrapper_dupplReal_1_to_2_0_0/pid_vco_wrapper_dupplReal_1_to_2_0_0_stub.v
// Design      : pid_vco_wrapper_dupplReal_1_to_2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dupplReal_1_to_2,Vivado 2016.4" *)
module pid_vco_wrapper_dupplReal_1_to_2_0_0(data_en_i, data_eof_i, data_clk_i, data_rst_i, 
  data_i, data1_en_o, data1_eof_o, data1_clk_o, data1_rst_o, data1_o, data2_en_o, data2_eof_o, 
  data2_clk_o, data2_rst_o, data2_o)
/* synthesis syn_black_box black_box_pad_pin="data_en_i,data_eof_i,data_clk_i,data_rst_i,data_i[13:0],data1_en_o,data1_eof_o,data1_clk_o,data1_rst_o,data1_o[13:0],data2_en_o,data2_eof_o,data2_clk_o,data2_rst_o,data2_o[13:0]" */;
  input data_en_i;
  input data_eof_i;
  input data_clk_i;
  input data_rst_i;
  input [13:0]data_i;
  output data1_en_o;
  output data1_eof_o;
  output data1_clk_o;
  output data1_rst_o;
  output [13:0]data1_o;
  output data2_en_o;
  output data2_eof_o;
  output data2_clk_o;
  output data2_rst_o;
  output [13:0]data2_o;
endmodule
