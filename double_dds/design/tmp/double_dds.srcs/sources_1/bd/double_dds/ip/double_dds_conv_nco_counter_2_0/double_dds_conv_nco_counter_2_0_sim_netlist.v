// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Oct 11 16:16:01 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim -rename_top double_dds_conv_nco_counter_2_0 -prefix
//               double_dds_conv_nco_counter_2_0_ double_dds_conv_nco_counter_1_0_sim_netlist.v
// Design      : double_dds_conv_nco_counter_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "double_dds_conv_nco_counter_1_0,convertComplexToReal,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "convertComplexToReal,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module double_dds_conv_nco_counter_2_0
   (data1_o,
    data1_en_o,
    data1_eof_o,
    data1_clk_o,
    data1_rst_o,
    data2_o,
    data2_en_o,
    data2_eof_o,
    data2_clk_o,
    data2_rst_o,
    data_i_i,
    data_q_i,
    data_eof_i,
    data_en_i,
    data_rst_i,
    data_clk_i);
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataI_out DATA" *) output [15:0]data1_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataI_out DATA_EN" *) output data1_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataI_out DATA_EOF" *) output data1_eof_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataI_out DATA_CLK" *) output data1_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataI_out DATA_RST" *) output data1_rst_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataQ_out DATA" *) output [15:0]data2_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataQ_out DATA_EN" *) output data2_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataQ_out DATA_EOF" *) output data2_eof_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataQ_out DATA_CLK" *) output data2_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataQ_out DATA_RST" *) output data2_rst_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_in DATA_I" *) input [15:0]data_i_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_in DATA_Q" *) input [15:0]data_q_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_in DATA_EOF" *) input data_eof_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_in DATA_EN" *) input data_en_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_in DATA_RST" *) input data_rst_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_in DATA_CLK" *) input data_clk_i;

  wire data_clk_i;
  wire data_en_i;
  wire data_eof_i;
  wire [15:0]data_i_i;
  wire [15:0]data_q_i;
  wire data_rst_i;

  assign data1_clk_o = data_clk_i;
  assign data1_en_o = data_en_i;
  assign data1_eof_o = data_eof_i;
  assign data1_o[15:0] = data_i_i;
  assign data1_rst_o = data_rst_i;
  assign data2_clk_o = data_clk_i;
  assign data2_en_o = data_en_i;
  assign data2_eof_o = data_eof_i;
  assign data2_o[15:0] = data_q_i;
  assign data2_rst_o = data_rst_i;
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