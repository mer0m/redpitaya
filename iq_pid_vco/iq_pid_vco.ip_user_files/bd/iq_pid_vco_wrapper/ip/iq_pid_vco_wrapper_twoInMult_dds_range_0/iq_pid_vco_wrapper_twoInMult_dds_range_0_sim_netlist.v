// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Fri Apr 21 16:59:20 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode funcsim
//               /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_twoInMult_dds_range_0/iq_pid_vco_wrapper_twoInMult_dds_range_0_sim_netlist.v
// Design      : iq_pid_vco_wrapper_twoInMult_dds_range_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "iq_pid_vco_wrapper_twoInMult_dds_range_0,twoInMult,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "twoInMult,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module iq_pid_vco_wrapper_twoInMult_dds_range_0
   (data1_i,
    data1_en_i,
    data1_clk_i,
    data2_i,
    data2_en_i,
    data2_clk_i,
    data_o,
    data_en_o,
    data_clk_o);
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1 DATA" *) input [13:0]data1_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1 DATA_EN" *) input data1_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1 DATA_CLK" *) input data1_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2 DATA" *) input [13:0]data2_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2 DATA_EN" *) input data2_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2 DATA_CLK" *) input data2_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA" *) output [27:0]data_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EN" *) output data_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_CLK" *) output data_clk_o;

  wire data1_clk_i;
  wire data1_en_i;
  wire [13:0]data1_i;
  wire data2_en_i;
  wire [13:0]data2_i;
  wire data_en_o;
  wire [27:0]data_o;

  assign data_clk_o = data1_clk_i;
  iq_pid_vco_wrapper_twoInMult_dds_range_0_twoInMult U0
       (.data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_i(data1_i),
        .data2_en_i(data2_en_i),
        .data2_i(data2_i),
        .data_en_o(data_en_o),
        .data_o(data_o));
endmodule

(* ORIG_REF_NAME = "twoInMult" *) 
module iq_pid_vco_wrapper_twoInMult_dds_range_0_twoInMult
   (data_o,
    data_en_o,
    data2_en_i,
    data1_clk_i,
    data1_en_i,
    data2_i,
    data1_i);
  output [27:0]data_o;
  output data_en_o;
  input data2_en_i;
  input data1_clk_i;
  input data1_en_i;
  input [13:0]data2_i;
  input [13:0]data1_i;

  wire data1_clk_i;
  wire data1_en_i;
  wire data1_en_s;
  wire [13:0]data1_i;
  wire data2_en_i;
  wire data2_en_s;
  wire [13:0]data2_i;
  wire data_en_o;
  wire data_en_s;
  wire [27:0]data_o;
  wire NLW_data_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_data_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_data_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_data_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_data_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_data_s_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_data_s_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_data_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_data_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:28]NLW_data_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_data_s_reg_PCOUT_UNCONNECTED;

  FDRE data1_en_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_en_i),
        .Q(data1_en_s),
        .R(1'b0));
  FDRE data2_en_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data2_en_i),
        .Q(data2_en_s),
        .R(1'b0));
  FDRE data_en_o_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data_en_s),
        .Q(data_en_o),
        .R(1'b0));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    data_s_reg
       (.A({data1_i[13],data1_i[13],data1_i[13],data1_i[13],data1_i[13],data1_i[13],data1_i[13],data1_i[13],data1_i[13],data1_i[13],data1_i[13],data1_i[13],data1_i[13],data1_i[13],data1_i[13],data1_i[13],data1_i}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_data_s_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data2_i[13],data2_i[13],data2_i[13],data2_i[13],data2_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_data_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_data_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_data_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(data_en_s),
        .CEP(1'b0),
        .CLK(data1_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_data_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_data_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_data_s_reg_P_UNCONNECTED[47:28],data_o}),
        .PATTERNBDETECT(NLW_data_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_data_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_data_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_data_s_reg_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    data_s_reg_i_1
       (.I0(data1_en_s),
        .I1(data2_en_s),
        .O(data_en_s));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
