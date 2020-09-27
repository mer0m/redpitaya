// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri May 15 18:42:11 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/bma/git/github/oscimpDigital/app/redpitaya/double_iq_pid_vco/design/tmp/double_iq_pid_vco.srcs/sources_1/bd/double_iq_pid_vco/ip/double_iq_pid_vco_shifterReal_2_0/double_iq_pid_vco_shifterReal_2_0_sim_netlist.v
// Design      : double_iq_pid_vco_shifterReal_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "double_iq_pid_vco_shifterReal_2_0,shifterReal,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shifterReal,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module double_iq_pid_vco_shifterReal_2_0
   (data_i,
    data_en_i,
    data_eof_i,
    data_clk_i,
    data_rst_i,
    data_o,
    data_en_o,
    data_eof_o,
    data_rst_o,
    data_clk_o);
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA" *) input [18:0]data_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_EN" *) input data_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_EOF" *) input data_eof_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_CLK" *) input data_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_RST" *) input data_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA" *) output [39:0]data_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EN" *) output data_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EOF" *) output data_eof_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_RST" *) output data_rst_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_CLK" *) output data_clk_o;

  wire \<const0> ;
  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire data_eof_i;
  wire data_eof_o;
  wire [18:0]data_i;
  wire [39:21]\^data_o ;
  wire data_rst_i;

  assign data_clk_o = data_clk_i;
  assign data_o[39:21] = \^data_o [39:21];
  assign data_o[20] = \<const0> ;
  assign data_o[19] = \<const0> ;
  assign data_o[18] = \<const0> ;
  assign data_o[17] = \<const0> ;
  assign data_o[16] = \<const0> ;
  assign data_o[15] = \<const0> ;
  assign data_o[14] = \<const0> ;
  assign data_o[13] = \<const0> ;
  assign data_o[12] = \<const0> ;
  assign data_o[11] = \<const0> ;
  assign data_o[10] = \<const0> ;
  assign data_o[9] = \<const0> ;
  assign data_o[8] = \<const0> ;
  assign data_o[7] = \<const0> ;
  assign data_o[6] = \<const0> ;
  assign data_o[5] = \<const0> ;
  assign data_o[4] = \<const0> ;
  assign data_o[3] = \<const0> ;
  assign data_o[2] = \<const0> ;
  assign data_o[1] = \<const0> ;
  assign data_o[0] = \<const0> ;
  assign data_rst_o = data_rst_i;
  GND GND
       (.G(\<const0> ));
  double_iq_pid_vco_shifterReal_2_0_shifterReal U0
       (.data_clk_i(data_clk_i),
        .data_en_i(data_en_i),
        .data_en_o(data_en_o),
        .data_eof_i(data_eof_i),
        .data_eof_o(data_eof_o),
        .data_i(data_i),
        .data_o(\^data_o ));
endmodule

(* ORIG_REF_NAME = "shifterReal" *) 
module double_iq_pid_vco_shifterReal_2_0_shifterReal
   (data_o,
    data_en_o,
    data_eof_o,
    data_en_i,
    data_i,
    data_clk_i,
    data_eof_i);
  output [18:0]data_o;
  output data_en_o;
  output data_eof_o;
  input data_en_i;
  input [18:0]data_i;
  input data_clk_i;
  input data_eof_i;

  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire data_eof_i;
  wire data_eof_o;
  wire data_eof_o_i_1_n_0;
  wire [18:0]data_i;
  wire [18:0]data_o;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_i),
        .Q(data_en_o),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    data_eof_o_i_1
       (.I0(data_en_i),
        .I1(data_eof_i),
        .O(data_eof_o_i_1_n_0));
  FDRE data_eof_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_eof_o_i_1_n_0),
        .Q(data_eof_o),
        .R(1'b0));
  FDRE \data_s_reg[21] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[0]),
        .Q(data_o[0]),
        .R(1'b0));
  FDRE \data_s_reg[22] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[1]),
        .Q(data_o[1]),
        .R(1'b0));
  FDRE \data_s_reg[23] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[2]),
        .Q(data_o[2]),
        .R(1'b0));
  FDRE \data_s_reg[24] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[3]),
        .Q(data_o[3]),
        .R(1'b0));
  FDRE \data_s_reg[25] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[4]),
        .Q(data_o[4]),
        .R(1'b0));
  FDRE \data_s_reg[26] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[5]),
        .Q(data_o[5]),
        .R(1'b0));
  FDRE \data_s_reg[27] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[6]),
        .Q(data_o[6]),
        .R(1'b0));
  FDRE \data_s_reg[28] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[7]),
        .Q(data_o[7]),
        .R(1'b0));
  FDRE \data_s_reg[29] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[8]),
        .Q(data_o[8]),
        .R(1'b0));
  FDRE \data_s_reg[30] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[9]),
        .Q(data_o[9]),
        .R(1'b0));
  FDRE \data_s_reg[31] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[10]),
        .Q(data_o[10]),
        .R(1'b0));
  FDRE \data_s_reg[32] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[11]),
        .Q(data_o[11]),
        .R(1'b0));
  FDRE \data_s_reg[33] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[12]),
        .Q(data_o[12]),
        .R(1'b0));
  FDRE \data_s_reg[34] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[13]),
        .Q(data_o[13]),
        .R(1'b0));
  FDRE \data_s_reg[35] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[14]),
        .Q(data_o[14]),
        .R(1'b0));
  FDRE \data_s_reg[36] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[15]),
        .Q(data_o[15]),
        .R(1'b0));
  FDRE \data_s_reg[37] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[16]),
        .Q(data_o[16]),
        .R(1'b0));
  FDRE \data_s_reg[38] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[17]),
        .Q(data_o[17]),
        .R(1'b0));
  FDRE \data_s_reg[39] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[18]),
        .Q(data_o[18]),
        .R(1'b0));
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
