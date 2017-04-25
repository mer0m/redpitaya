// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Fri Apr 21 17:08:26 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ iq_pid_vco_wrapper_ltc2145_0_0_sim_netlist.v
// Design      : iq_pid_vco_wrapper_ltc2145_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "iq_pid_vco_wrapper_ltc2145_0_0,ltc2145,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "ltc2145,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (processing_rst_i,
    resetn,
    adc_cdcs,
    adc_clk_i,
    adc_data_a_i,
    adc_data_b_i,
    adc_clk,
    data_a_en_o,
    data_a_clk_o,
    data_a_rst_o,
    data_a_o,
    data_b_en_o,
    data_b_clk_o,
    data_b_rst_o,
    data_b_o);
  input processing_rst_i;
  input resetn;
  output adc_cdcs;
  input adc_clk_i;
  input [13:0]adc_data_a_i;
  input [13:0]adc_data_b_i;
  output adc_clk;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_a DATA_EN" *) output data_a_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_a DATA_CLK" *) output data_a_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_a DATA_RST" *) output data_a_rst_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_a DATA" *) output [13:0]data_a_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_b DATA_EN" *) output data_b_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_b DATA_CLK" *) output data_b_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_b DATA_RST" *) output data_b_rst_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_b DATA" *) output [13:0]data_b_o;

  wire \<const1> ;
  wire adc_clk_i;
  wire [13:0]adc_data_a_i;
  wire [13:0]adc_data_b_i;
  wire [13:0]data_a_o;
  wire data_b_en_o;
  wire [13:0]data_b_o;
  wire processing_rst_i;
  wire resetn;

  assign adc_cdcs = \<const1> ;
  assign adc_clk = adc_clk_i;
  assign data_a_clk_o = adc_clk_i;
  assign data_a_en_o = data_b_en_o;
  assign data_a_rst_o = processing_rst_i;
  assign data_b_clk_o = adc_clk_i;
  assign data_b_rst_o = processing_rst_i;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ltc2145 U0
       (.adc_clk_i(adc_clk_i),
        .adc_data_a_i(adc_data_a_i),
        .adc_data_b_i(adc_data_b_i),
        .data_a_o(data_a_o),
        .data_b_en_o(data_b_en_o),
        .data_b_o(data_b_o),
        .resetn(resetn));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ltc2145
   (data_b_en_o,
    data_a_o,
    data_b_o,
    adc_clk_i,
    adc_data_a_i,
    adc_data_b_i,
    resetn);
  output data_b_en_o;
  output [13:0]data_a_o;
  output [13:0]data_b_o;
  input adc_clk_i;
  input [13:0]adc_data_a_i;
  input [13:0]adc_data_b_i;
  input resetn;

  wire adc_clk_i;
  wire [13:0]adc_data_a_i;
  wire [13:0]adc_data_b_i;
  wire [13:0]data_a_o;
  wire data_b_en_o;
  wire [13:0]data_b_o;
  wire resetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ltc2145_cmos_capture ltc2145_capture_inst
       (.adc_clk_i(adc_clk_i),
        .adc_data_a_i(adc_data_a_i),
        .adc_data_b_i(adc_data_b_i),
        .data_a_o(data_a_o),
        .data_b_en_o(data_b_en_o),
        .data_b_o(data_b_o),
        .resetn(resetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ltc2145_cmos_capture
   (data_b_en_o,
    data_a_o,
    data_b_o,
    adc_clk_i,
    adc_data_a_i,
    adc_data_b_i,
    resetn);
  output data_b_en_o;
  output [13:0]data_a_o;
  output [13:0]data_b_o;
  input adc_clk_i;
  input [13:0]adc_data_a_i;
  input [13:0]adc_data_b_i;
  input resetn;

  wire adc_clk_i;
  wire [13:0]adc_data_a_i;
  wire [13:0]adc_data_b_i;
  wire adc_data_en_i_1_n_0;
  wire [13:0]data_a_o;
  wire data_b_en_o;
  wire [13:0]data_b_o;
  wire \data_b_s[0]_i_1_n_0 ;
  wire \data_b_s[10]_i_1_n_0 ;
  wire \data_b_s[11]_i_1_n_0 ;
  wire \data_b_s[12]_i_1_n_0 ;
  wire \data_b_s[1]_i_1_n_0 ;
  wire \data_b_s[2]_i_1_n_0 ;
  wire \data_b_s[3]_i_1_n_0 ;
  wire \data_b_s[4]_i_1_n_0 ;
  wire \data_b_s[5]_i_1_n_0 ;
  wire \data_b_s[6]_i_1_n_0 ;
  wire \data_b_s[7]_i_1_n_0 ;
  wire \data_b_s[8]_i_1_n_0 ;
  wire \data_b_s[9]_i_1_n_0 ;
  wire [12:0]p_1_out;
  wire resetn;

  LUT1 #(
    .INIT(2'h1)) 
    adc_data_en_i_1
       (.I0(resetn),
        .O(adc_data_en_i_1_n_0));
  FDCE adc_data_en_reg
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(1'b1),
        .Q(data_b_en_o));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[0]_i_1 
       (.I0(adc_data_a_i[0]),
        .O(p_1_out[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[10]_i_1 
       (.I0(adc_data_a_i[10]),
        .O(p_1_out[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[11]_i_1 
       (.I0(adc_data_a_i[11]),
        .O(p_1_out[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[12]_i_1 
       (.I0(adc_data_a_i[12]),
        .O(p_1_out[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[1]_i_1 
       (.I0(adc_data_a_i[1]),
        .O(p_1_out[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[2]_i_1 
       (.I0(adc_data_a_i[2]),
        .O(p_1_out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[3]_i_1 
       (.I0(adc_data_a_i[3]),
        .O(p_1_out[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[4]_i_1 
       (.I0(adc_data_a_i[4]),
        .O(p_1_out[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[5]_i_1 
       (.I0(adc_data_a_i[5]),
        .O(p_1_out[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[6]_i_1 
       (.I0(adc_data_a_i[6]),
        .O(p_1_out[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[7]_i_1 
       (.I0(adc_data_a_i[7]),
        .O(p_1_out[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[8]_i_1 
       (.I0(adc_data_a_i[8]),
        .O(p_1_out[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[9]_i_1 
       (.I0(adc_data_a_i[9]),
        .O(p_1_out[9]));
  FDCE \data_a_s_reg[0] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(p_1_out[0]),
        .Q(data_a_o[0]));
  FDCE \data_a_s_reg[10] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(p_1_out[10]),
        .Q(data_a_o[10]));
  FDCE \data_a_s_reg[11] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(p_1_out[11]),
        .Q(data_a_o[11]));
  FDCE \data_a_s_reg[12] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(p_1_out[12]),
        .Q(data_a_o[12]));
  FDCE \data_a_s_reg[13] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(adc_data_a_i[13]),
        .Q(data_a_o[13]));
  FDCE \data_a_s_reg[1] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(p_1_out[1]),
        .Q(data_a_o[1]));
  FDCE \data_a_s_reg[2] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(p_1_out[2]),
        .Q(data_a_o[2]));
  FDCE \data_a_s_reg[3] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(p_1_out[3]),
        .Q(data_a_o[3]));
  FDCE \data_a_s_reg[4] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(p_1_out[4]),
        .Q(data_a_o[4]));
  FDCE \data_a_s_reg[5] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(p_1_out[5]),
        .Q(data_a_o[5]));
  FDCE \data_a_s_reg[6] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(p_1_out[6]),
        .Q(data_a_o[6]));
  FDCE \data_a_s_reg[7] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(p_1_out[7]),
        .Q(data_a_o[7]));
  FDCE \data_a_s_reg[8] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(p_1_out[8]),
        .Q(data_a_o[8]));
  FDCE \data_a_s_reg[9] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(p_1_out[9]),
        .Q(data_a_o[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_b_s[0]_i_1 
       (.I0(adc_data_b_i[0]),
        .O(\data_b_s[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_b_s[10]_i_1 
       (.I0(adc_data_b_i[10]),
        .O(\data_b_s[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_b_s[11]_i_1 
       (.I0(adc_data_b_i[11]),
        .O(\data_b_s[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_b_s[12]_i_1 
       (.I0(adc_data_b_i[12]),
        .O(\data_b_s[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_b_s[1]_i_1 
       (.I0(adc_data_b_i[1]),
        .O(\data_b_s[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_b_s[2]_i_1 
       (.I0(adc_data_b_i[2]),
        .O(\data_b_s[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_b_s[3]_i_1 
       (.I0(adc_data_b_i[3]),
        .O(\data_b_s[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_b_s[4]_i_1 
       (.I0(adc_data_b_i[4]),
        .O(\data_b_s[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_b_s[5]_i_1 
       (.I0(adc_data_b_i[5]),
        .O(\data_b_s[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_b_s[6]_i_1 
       (.I0(adc_data_b_i[6]),
        .O(\data_b_s[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_b_s[7]_i_1 
       (.I0(adc_data_b_i[7]),
        .O(\data_b_s[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_b_s[8]_i_1 
       (.I0(adc_data_b_i[8]),
        .O(\data_b_s[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_b_s[9]_i_1 
       (.I0(adc_data_b_i[9]),
        .O(\data_b_s[9]_i_1_n_0 ));
  FDCE \data_b_s_reg[0] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(\data_b_s[0]_i_1_n_0 ),
        .Q(data_b_o[0]));
  FDCE \data_b_s_reg[10] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(\data_b_s[10]_i_1_n_0 ),
        .Q(data_b_o[10]));
  FDCE \data_b_s_reg[11] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(\data_b_s[11]_i_1_n_0 ),
        .Q(data_b_o[11]));
  FDCE \data_b_s_reg[12] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(\data_b_s[12]_i_1_n_0 ),
        .Q(data_b_o[12]));
  FDCE \data_b_s_reg[13] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(adc_data_b_i[13]),
        .Q(data_b_o[13]));
  FDCE \data_b_s_reg[1] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(\data_b_s[1]_i_1_n_0 ),
        .Q(data_b_o[1]));
  FDCE \data_b_s_reg[2] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(\data_b_s[2]_i_1_n_0 ),
        .Q(data_b_o[2]));
  FDCE \data_b_s_reg[3] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(\data_b_s[3]_i_1_n_0 ),
        .Q(data_b_o[3]));
  FDCE \data_b_s_reg[4] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(\data_b_s[4]_i_1_n_0 ),
        .Q(data_b_o[4]));
  FDCE \data_b_s_reg[5] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(\data_b_s[5]_i_1_n_0 ),
        .Q(data_b_o[5]));
  FDCE \data_b_s_reg[6] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(\data_b_s[6]_i_1_n_0 ),
        .Q(data_b_o[6]));
  FDCE \data_b_s_reg[7] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(\data_b_s[7]_i_1_n_0 ),
        .Q(data_b_o[7]));
  FDCE \data_b_s_reg[8] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(\data_b_s[8]_i_1_n_0 ),
        .Q(data_b_o[8]));
  FDCE \data_b_s_reg[9] 
       (.C(adc_clk_i),
        .CE(1'b1),
        .CLR(adc_data_en_i_1_n_0),
        .D(\data_b_s[9]_i_1_n_0 ),
        .Q(data_b_o[9]));
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
