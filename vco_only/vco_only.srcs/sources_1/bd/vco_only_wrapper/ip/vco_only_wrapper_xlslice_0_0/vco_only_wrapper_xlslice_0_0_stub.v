// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Fri Mar 31 16:15:07 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /home/bma/git/fpga_design/redpitaya/vco_only/vco_only.srcs/sources_1/bd/vco_only_wrapper/ip/vco_only_wrapper_xlslice_0_0/vco_only_wrapper_xlslice_0_0_stub.v
// Design      : vco_only_wrapper_xlslice_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlslice,Vivado 2016.4" *)
module vco_only_wrapper_xlslice_0_0(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[27:0],Dout[13:0]" */;
  input [27:0]Din;
  output [13:0]Dout;
endmodule
