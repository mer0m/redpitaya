// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Thu Apr 20 08:14:29 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ iq_demod_only_wrapper_mixer_sin_0_0_stub.v
// Design      : iq_demod_only_wrapper_mixer_sin_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mixer_sin,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(data_en_i, data_clk_i, data_rst_i, data_i, 
  nco_i_i, nco_q_i, nco_en_i, nco_rst_i, nco_clk_i, data_en_o, data_clk_o, data_rst_o, data_i_o, 
  data_q_o)
/* synthesis syn_black_box black_box_pad_pin="data_en_i,data_clk_i,data_rst_i,data_i[13:0],nco_i_i[13:0],nco_q_i[13:0],nco_en_i,nco_rst_i,nco_clk_i,data_en_o,data_clk_o,data_rst_o,data_i_o[13:0],data_q_o[13:0]" */;
  input data_en_i;
  input data_clk_i;
  input data_rst_i;
  input [13:0]data_i;
  input [13:0]nco_i_i;
  input [13:0]nco_q_i;
  input nco_en_i;
  input nco_rst_i;
  input nco_clk_i;
  output data_en_o;
  output data_clk_o;
  output data_rst_o;
  output [13:0]data_i_o;
  output [13:0]data_q_o;
endmodule
