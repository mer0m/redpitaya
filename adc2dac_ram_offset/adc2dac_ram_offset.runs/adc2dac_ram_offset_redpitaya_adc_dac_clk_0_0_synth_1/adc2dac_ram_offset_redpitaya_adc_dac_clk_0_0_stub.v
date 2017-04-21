// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Thu Feb  9 10:16:26 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adc2dac_ram_offset_redpitaya_adc_dac_clk_0_0_stub.v
// Design      : adc2dac_ram_offset_redpitaya_adc_dac_clk_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "redpitaya_adc_dac_clk,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(adc_clk_p_i, adc_clk_n_i, dac_clk_o, 
  dac_2clk_o, dac_2ph_o, dac_locked_o, adc_clk_o, adc_rst_i, ser_clk_o)
/* synthesis syn_black_box black_box_pad_pin="adc_clk_p_i,adc_clk_n_i,dac_clk_o,dac_2clk_o,dac_2ph_o,dac_locked_o,adc_clk_o,adc_rst_i,ser_clk_o" */;
  input adc_clk_p_i;
  input adc_clk_n_i;
  output dac_clk_o;
  output dac_2clk_o;
  output dac_2ph_o;
  output dac_locked_o;
  output adc_clk_o;
  input adc_rst_i;
  output ser_clk_o;
endmodule
