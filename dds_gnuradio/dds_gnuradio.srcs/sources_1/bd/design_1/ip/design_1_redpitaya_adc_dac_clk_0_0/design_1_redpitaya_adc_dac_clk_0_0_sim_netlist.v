// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Fri Mar 24 11:41:09 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode funcsim
//               /home/bma/git/fpga_design/redpitaya/dds_gnuradio/dds_gnuradio.srcs/sources_1/bd/design_1/ip/design_1_redpitaya_adc_dac_clk_0_0/design_1_redpitaya_adc_dac_clk_0_0_sim_netlist.v
// Design      : design_1_redpitaya_adc_dac_clk_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_redpitaya_adc_dac_clk_0_0,redpitaya_adc_dac_clk,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "redpitaya_adc_dac_clk,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module design_1_redpitaya_adc_dac_clk_0_0
   (adc_clk_p_i,
    adc_clk_n_i,
    dac_clk_o,
    dac_2clk_o,
    dac_2ph_o,
    dac_locked_o,
    adc_clk_o,
    adc_rst_i,
    ser_clk_o);
  input adc_clk_p_i;
  input adc_clk_n_i;
  output dac_clk_o;
  output dac_2clk_o;
  output dac_2ph_o;
  output dac_locked_o;
  output adc_clk_o;
  input adc_rst_i;
  output ser_clk_o;

  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_n_i;
  wire adc_clk_o;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_p_i;
  wire adc_rst_i;
  wire dac_2clk_o;
  wire dac_2ph_o;
  wire dac_clk_o;
  wire dac_locked_o;
  wire ser_clk_o;

  design_1_redpitaya_adc_dac_clk_0_0_redpitaya_adc_dac_clk inst
       (.adc_clk_n_i(adc_clk_n_i),
        .adc_clk_o(adc_clk_o),
        .adc_clk_p_i(adc_clk_p_i),
        .adc_rst_i(adc_rst_i),
        .clk_i(1'b0),
        .dac_2clk_o(dac_2clk_o),
        .dac_2ph_o(dac_2ph_o),
        .dac_clk_o(dac_clk_o),
        .dac_locked_o(dac_locked_o),
        .ser_clk_o(ser_clk_o));
endmodule

(* ORIG_REF_NAME = "redpitaya_adc_dac_clk" *) 
module design_1_redpitaya_adc_dac_clk_0_0_redpitaya_adc_dac_clk
   (adc_clk_p_i,
    adc_clk_n_i,
    dac_clk_o,
    dac_2clk_o,
    dac_2ph_o,
    dac_locked_o,
    adc_clk_o,
    adc_rst_i,
    clk_i,
    ser_clk_o);
  input adc_clk_p_i;
  input adc_clk_n_i;
  output dac_clk_o;
  output dac_2clk_o;
  output dac_2ph_o;
  output dac_locked_o;
  output adc_clk_o;
  input adc_rst_i;
  input clk_i;
  output ser_clk_o;

  wire adc_clk_in;
  wire adc_clk_n_i;
  wire adc_clk_o;
  wire adc_clk_p_i;
  wire adc_rst_i;
  wire dac_2clk_o;
  wire dac_2clk_out;
  wire dac_2ph_o;
  wire dac_2ph_out;
  wire dac_clk_fb;
  wire dac_clk_fb_buf;
  wire dac_clk_o;
  wire dac_clk_out;
  wire dac_locked_o;
  wire ser_clk_o;
  wire ser_clk_out;
  wire NLW_i_dac_plle2_CLKOUT4_UNCONNECTED;
  wire NLW_i_dac_plle2_CLKOUT5_UNCONNECTED;
  wire NLW_i_dac_plle2_DRDY_UNCONNECTED;
  wire [15:0]NLW_i_dac_plle2_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_adc_buf
       (.I(adc_clk_in),
        .O(adc_clk_o));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DQS_BIAS("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    i_clk
       (.I(adc_clk_p_i),
        .IB(adc_clk_n_i),
        .O(adc_clk_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_dac1_buf
       (.I(dac_clk_out),
        .O(dac_clk_o));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_dac2_buf
       (.I(dac_2clk_out),
        .O(dac_2clk_o));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_dac2ph_buf
       (.I(dac_2ph_out),
        .O(dac_2ph_o));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(8),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(8.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE(8),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(4),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(4),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(-45.000000),
    .CLKOUT3_DIVIDE(4),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("BUF_IN"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    i_dac_plle2
       (.CLKFBIN(dac_clk_fb_buf),
        .CLKFBOUT(dac_clk_fb),
        .CLKIN1(adc_clk_o),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(dac_clk_out),
        .CLKOUT1(dac_2clk_out),
        .CLKOUT2(dac_2ph_out),
        .CLKOUT3(ser_clk_out),
        .CLKOUT4(NLW_i_dac_plle2_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_i_dac_plle2_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_i_dac_plle2_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_i_dac_plle2_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(dac_locked_o),
        .PWRDWN(1'b0),
        .RST(adc_rst_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_dacfb_buf
       (.I(dac_clk_fb),
        .O(dac_clk_fb_buf));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_ser_buf
       (.I(ser_clk_out),
        .O(ser_clk_o));
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
