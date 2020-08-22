// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun May 31 18:47:34 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub
//               /home/bma/git/fpga_design/redpitaya/double_dds/design/tmp/double_dds.srcs/sources_1/bd/double_dds/ip/double_dds_redpitaya_converters_0_0/double_dds_redpitaya_converters_0_0_stub.v
// Design      : double_dds_redpitaya_converters_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "redpitaya_converters,Vivado 2019.2" *)
module double_dds_redpitaya_converters_0_0(adc_rst_i, clk_o, rst_o, rstn_o, adc_clk_p_i, 
  adc_clk_n_i, adc_data_a_i, adc_data_b_i, adc_cdcs, data_a_o, data_a_en_o, data_a_clk_o, 
  data_a_rst_o, data_b_o, data_b_en_o, data_b_clk_o, data_b_rst_o, dac_dat_a_en_i, 
  dac_dat_a_rst_i, dac_dat_a_i, dac_dat_b_en_i, dac_dat_b_rst_i, dac_dat_b_i, dac_dat_o, 
  dac_wrt_o, dac_sel_o, dac_clk_o, dac_rst_o)
/* synthesis syn_black_box black_box_pad_pin="adc_rst_i,clk_o,rst_o,rstn_o,adc_clk_p_i,adc_clk_n_i,adc_data_a_i[13:0],adc_data_b_i[13:0],adc_cdcs,data_a_o[13:0],data_a_en_o,data_a_clk_o,data_a_rst_o,data_b_o[13:0],data_b_en_o,data_b_clk_o,data_b_rst_o,dac_dat_a_en_i,dac_dat_a_rst_i,dac_dat_a_i[13:0],dac_dat_b_en_i,dac_dat_b_rst_i,dac_dat_b_i[13:0],dac_dat_o[13:0],dac_wrt_o,dac_sel_o,dac_clk_o,dac_rst_o" */;
  input adc_rst_i;
  output clk_o;
  output rst_o;
  output rstn_o;
  input adc_clk_p_i;
  input adc_clk_n_i;
  input [13:0]adc_data_a_i;
  input [13:0]adc_data_b_i;
  output adc_cdcs;
  output [13:0]data_a_o;
  output data_a_en_o;
  output data_a_clk_o;
  output data_a_rst_o;
  output [13:0]data_b_o;
  output data_b_en_o;
  output data_b_clk_o;
  output data_b_rst_o;
  input dac_dat_a_en_i;
  input dac_dat_a_rst_i;
  input [13:0]dac_dat_a_i;
  input dac_dat_b_en_i;
  input dac_dat_b_rst_i;
  input [13:0]dac_dat_b_i;
  output [13:0]dac_dat_o;
  output dac_wrt_o;
  output dac_sel_o;
  output dac_clk_o;
  output dac_rst_o;
endmodule
