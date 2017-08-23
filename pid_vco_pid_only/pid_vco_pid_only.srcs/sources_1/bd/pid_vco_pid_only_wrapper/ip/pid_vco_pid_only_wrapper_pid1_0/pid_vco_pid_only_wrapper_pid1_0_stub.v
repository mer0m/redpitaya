// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Wed Aug 23 09:22:22 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.1 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /home/bma/git/fpga_design/redpitaya/pid_vco_pid_only/pid_vco_pid_only.srcs/sources_1/bd/pid_vco_pid_only_wrapper/ip/pid_vco_pid_only_wrapper_pid1_0/pid_vco_pid_only_wrapper_pid1_0_stub.v
// Design      : pid_vco_pid_only_wrapper_pid1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "red_pitaya_pidv3,Vivado 2016.4" *)
module pid_vco_pid_only_wrapper_pid1_0(data_i, data_en_i, data_clk_i, data_rst_i, 
  setpoint_i, kp_i, ki_i, kd_i, sign_i, int_rst_i, data_o, data_en_o, data_clk_o, data_rst_o)
/* synthesis syn_black_box black_box_pad_pin="data_i[13:0],data_en_i,data_clk_i,data_rst_i,setpoint_i[13:0],kp_i[13:0],ki_i[17:0],kd_i[13:0],sign_i,int_rst_i,data_o[13:0],data_en_o,data_clk_o,data_rst_o" */;
  input [13:0]data_i;
  input data_en_i;
  input data_clk_i;
  input data_rst_i;
  input [13:0]setpoint_i;
  input [13:0]kp_i;
  input [17:0]ki_i;
  input [13:0]kd_i;
  input sign_i;
  input int_rst_i;
  output [13:0]data_o;
  output data_en_o;
  output data_clk_o;
  output data_rst_o;
endmodule
