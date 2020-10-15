// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri May 15 18:33:22 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/bma/git/github/oscimpDigital/app/redpitaya/double_iq_pid_vco/design/tmp/double_iq_pid_vco.srcs/sources_1/bd/double_iq_pid_vco/ip/double_iq_pid_vco_expanderReal_2_0/double_iq_pid_vco_expanderReal_2_0_sim_netlist.v
// Design      : double_iq_pid_vco_expanderReal_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "double_iq_pid_vco_expanderReal_2_0,expanderReal,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "expanderReal,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module double_iq_pid_vco_expanderReal_2_0
   (data_i,
    data_en_i,
    data_sof_i,
    data_eof_i,
    data_rst_i,
    data_clk_i,
    data_o,
    data_en_o,
    data_sof_o,
    data_eof_o,
    data_rst_o,
    data_clk_o);
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA" *) input [13:0]data_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_EN" *) input data_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_SOF" *) input data_sof_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_EOF" *) input data_eof_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_RST" *) input data_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_CLK" *) input data_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA" *) output [18:0]data_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EN" *) output data_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_SOF" *) output data_sof_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EOF" *) output data_eof_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_RST" *) output data_rst_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_CLK" *) output data_clk_o;

  wire data_clk_i;
  wire data_en_i;
  wire data_eof_i;
  wire [13:0]data_i;
  wire data_rst_i;
  wire data_sof_i;

  assign data_clk_o = data_clk_i;
  assign data_en_o = data_en_i;
  assign data_eof_o = data_eof_i;
  assign data_o[18] = data_i[13];
  assign data_o[17] = data_i[13];
  assign data_o[16] = data_i[13];
  assign data_o[15] = data_i[13];
  assign data_o[14] = data_i[13];
  assign data_o[13:0] = data_i;
  assign data_rst_o = data_rst_i;
  assign data_sof_o = data_sof_i;
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif