// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Wed May 16 11:57:21 2018
// Host        : ux305 running 64-bit Debian GNU/Linux testing/unstable
// Command     : write_verilog -force -mode synth_stub
//               /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_ltc2145_0_0/demod_pid_vco_amp_mod_pid_only_wrapper_ltc2145_0_0_stub.v
// Design      : demod_pid_vco_amp_mod_pid_only_wrapper_ltc2145_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ltc2145,Vivado 2016.4" *)
module demod_pid_vco_amp_mod_pid_only_wrapper_ltc2145_0_0(processing_rst_i, resetn, adc_cdcs, adc_clk_i, 
  adc_data_a_i, adc_data_b_i, adc_clk, data_a_en_o, data_a_clk_o, data_a_rst_o, data_a_o, 
  data_b_en_o, data_b_clk_o, data_b_rst_o, data_b_o)
/* synthesis syn_black_box black_box_pad_pin="processing_rst_i,resetn,adc_cdcs,adc_clk_i,adc_data_a_i[13:0],adc_data_b_i[13:0],adc_clk,data_a_en_o,data_a_clk_o,data_a_rst_o,data_a_o[13:0],data_b_en_o,data_b_clk_o,data_b_rst_o,data_b_o[13:0]" */;
  input processing_rst_i;
  input resetn;
  output adc_cdcs;
  input adc_clk_i;
  input [13:0]adc_data_a_i;
  input [13:0]adc_data_b_i;
  output adc_clk;
  output data_a_en_o;
  output data_a_clk_o;
  output data_a_rst_o;
  output [13:0]data_a_o;
  output data_b_en_o;
  output data_b_clk_o;
  output data_b_rst_o;
  output [13:0]data_b_o;
endmodule
