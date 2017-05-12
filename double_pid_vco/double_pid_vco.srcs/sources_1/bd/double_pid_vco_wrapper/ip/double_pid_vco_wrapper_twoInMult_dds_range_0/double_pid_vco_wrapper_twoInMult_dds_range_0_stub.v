// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Fri Apr 21 09:24:06 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /home/bma/git/fpga_design/redpitaya/double_pid_vco/double_pid_vco.srcs/sources_1/bd/double_pid_vco_wrapper/ip/double_pid_vco_wrapper_twoInMult_dds_range_0/double_pid_vco_wrapper_twoInMult_dds_range_0_stub.v
// Design      : double_pid_vco_wrapper_twoInMult_dds_range_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "twoInMult,Vivado 2016.4" *)
module double_pid_vco_wrapper_twoInMult_dds_range_0(data1_i, data1_en_i, data1_clk_i, data2_i, 
  data2_en_i, data2_clk_i, data_o, data_en_o, data_clk_o)
/* synthesis syn_black_box black_box_pad_pin="data1_i[13:0],data1_en_i,data1_clk_i,data2_i[13:0],data2_en_i,data2_clk_i,data_o[27:0],data_en_o,data_clk_o" */;
  input [13:0]data1_i;
  input data1_en_i;
  input data1_clk_i;
  input [13:0]data2_i;
  input data2_en_i;
  input data2_clk_i;
  output [27:0]data_o;
  output data_en_o;
  output data_clk_o;
endmodule