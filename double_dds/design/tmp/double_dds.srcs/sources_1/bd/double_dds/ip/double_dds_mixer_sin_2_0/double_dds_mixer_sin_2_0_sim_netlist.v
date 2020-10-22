// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu Oct 22 19:48:42 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim -rename_top double_dds_mixer_sin_2_0 -prefix
//               double_dds_mixer_sin_2_0_ double_dds_mixer_sin_1_0_sim_netlist.v
// Design      : double_dds_mixer_sin_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "double_dds_mixer_sin_1_0,multiplierReal,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "multiplierReal,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module double_dds_mixer_sin_2_0
   (data1_i,
    data1_en_i,
    data1_eof_i,
    data1_sof_i,
    data1_clk_i,
    data1_rst_i,
    data2_i,
    data2_en_i,
    data2_eof_i,
    data2_sof_i,
    data2_clk_i,
    data2_rst_i,
    data_o,
    data_en_o,
    data_eof_o,
    data_sof_o,
    data_clk_o,
    data_rst_o);
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1_in DATA" *) input [13:0]data1_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1_in DATA_EN" *) input data1_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1_in DATA_EOF" *) input data1_eof_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1_in DATA_SOF" *) input data1_sof_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1_in DATA_CLK" *) input data1_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1_in DATA_RST" *) input data1_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2_in DATA" *) input [15:0]data2_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2_in DATA_EN" *) input data2_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2_in DATA_EOF" *) input data2_eof_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2_in DATA_SOF" *) input data2_sof_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2_in DATA_CLK" *) input data2_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2_in DATA_RST" *) input data2_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA" *) output [13:0]data_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EN" *) output data_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EOF" *) output data_eof_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_SOF" *) output data_sof_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_CLK" *) output data_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_RST" *) output data_rst_o;

  wire data1_clk_i;
  wire data1_en_i;
  wire [13:0]data1_i;
  wire data1_rst_i;
  wire data2_clk_i;
  wire data2_en_i;
  wire [15:0]data2_i;
  wire data2_rst_i;
  wire [13:0]data_o;
  wire data_sof_o;

  assign data_clk_o = data1_clk_i;
  assign data_en_o = data_sof_o;
  assign data_eof_o = data_sof_o;
  assign data_rst_o = data1_rst_i;
  double_dds_mixer_sin_2_0_multiplierReal U0
       (.data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_i(data1_i),
        .data1_rst_i(data1_rst_i),
        .data2_clk_i(data2_clk_i),
        .data2_en_i(data2_en_i),
        .data2_i(data2_i),
        .data2_rst_i(data2_rst_i),
        .data_o(data_o),
        .data_sof_o(data_sof_o));
endmodule

module double_dds_mixer_sin_2_0_multiplierReal
   (data_sof_o,
    data_o,
    data1_rst_i,
    data1_clk_i,
    data1_i,
    data2_clk_i,
    data2_rst_i,
    data2_i,
    data1_en_i,
    data2_en_i);
  output data_sof_o;
  output [13:0]data_o;
  input data1_rst_i;
  input data1_clk_i;
  input [13:0]data1_i;
  input data2_clk_i;
  input data2_rst_i;
  input [15:0]data2_i;
  input data1_en_i;
  input data2_en_i;

  wire [13:0]SHIFT_RIGHT;
  wire data1_clk_i;
  wire data1_en_i;
  wire [13:0]data1_i;
  wire data1_in_en_s;
  wire [13:0]data1_in_s;
  wire data1_rst_i;
  wire data2_clk_i;
  wire data2_en_i;
  wire [15:0]data2_i;
  wire data2_in_en_s;
  wire data2_in_en_s_i_1_n_0;
  wire data2_rst_i;
  wire [13:0]data_o;
  wire data_s_n_100;
  wire data_s_n_101;
  wire data_s_n_102;
  wire data_s_n_103;
  wire data_s_n_104;
  wire data_s_n_105;
  wire data_s_n_90;
  wire data_s_n_91;
  wire data_s_n_92;
  wire data_s_n_93;
  wire data_s_n_94;
  wire data_s_n_95;
  wire data_s_n_96;
  wire data_s_n_97;
  wire data_s_n_98;
  wire data_s_n_99;
  wire data_sof_o;
  wire is_null_d0_s;
  wire NLW_data_s_CARRYCASCOUT_UNCONNECTED;
  wire NLW_data_s_MULTSIGNOUT_UNCONNECTED;
  wire NLW_data_s_OVERFLOW_UNCONNECTED;
  wire NLW_data_s_PATTERNBDETECT_UNCONNECTED;
  wire NLW_data_s_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_data_s_ACOUT_UNCONNECTED;
  wire [17:0]NLW_data_s_BCOUT_UNCONNECTED;
  wire [3:0]NLW_data_s_CARRYOUT_UNCONNECTED;
  wire [47:30]NLW_data_s_P_UNCONNECTED;
  wire [47:0]NLW_data_s_PCOUT_UNCONNECTED;

  FDRE data1_in_en_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_en_i),
        .Q(data1_in_en_s),
        .R(data1_rst_i));
  FDRE \data1_in_s_reg[0] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_i[0]),
        .Q(data1_in_s[0]),
        .R(data1_rst_i));
  FDRE \data1_in_s_reg[10] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_i[10]),
        .Q(data1_in_s[10]),
        .R(data1_rst_i));
  FDRE \data1_in_s_reg[11] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_i[11]),
        .Q(data1_in_s[11]),
        .R(data1_rst_i));
  FDRE \data1_in_s_reg[12] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_i[12]),
        .Q(data1_in_s[12]),
        .R(data1_rst_i));
  FDRE \data1_in_s_reg[13] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_i[13]),
        .Q(data1_in_s[13]),
        .R(data1_rst_i));
  FDRE \data1_in_s_reg[1] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_i[1]),
        .Q(data1_in_s[1]),
        .R(data1_rst_i));
  FDRE \data1_in_s_reg[2] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_i[2]),
        .Q(data1_in_s[2]),
        .R(data1_rst_i));
  FDRE \data1_in_s_reg[3] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_i[3]),
        .Q(data1_in_s[3]),
        .R(data1_rst_i));
  FDRE \data1_in_s_reg[4] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_i[4]),
        .Q(data1_in_s[4]),
        .R(data1_rst_i));
  FDRE \data1_in_s_reg[5] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_i[5]),
        .Q(data1_in_s[5]),
        .R(data1_rst_i));
  FDRE \data1_in_s_reg[6] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_i[6]),
        .Q(data1_in_s[6]),
        .R(data1_rst_i));
  FDRE \data1_in_s_reg[7] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_i[7]),
        .Q(data1_in_s[7]),
        .R(data1_rst_i));
  FDRE \data1_in_s_reg[8] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_i[8]),
        .Q(data1_in_s[8]),
        .R(data1_rst_i));
  FDRE \data1_in_s_reg[9] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_i[9]),
        .Q(data1_in_s[9]),
        .R(data1_rst_i));
  LUT2 #(
    .INIT(4'h2)) 
    data2_in_en_s_i_1
       (.I0(data2_en_i),
        .I1(data2_rst_i),
        .O(data2_in_en_s_i_1_n_0));
  FDRE data2_in_en_s_reg
       (.C(data2_clk_i),
        .CE(1'b1),
        .D(data2_in_en_s_i_1_n_0),
        .Q(data2_in_en_s),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'hFFFFFFFF0000),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'hFFFFFFFF0000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("PATDET"),
    .USE_SIMD("ONE48")) 
    data_s
       (.A({data2_i[15],data2_i[15],data2_i[15],data2_i[15],data2_i[15],data2_i[15],data2_i[15],data2_i[15],data2_i[15],data2_i[15],data2_i[15],data2_i[15],data2_i[15],data2_i[15],data2_i}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_data_s_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data1_in_s[13],data1_in_s[13],data1_in_s[13],data1_in_s[13],data1_in_s}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_data_s_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_data_s_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_data_s_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(data2_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_data_s_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_data_s_OVERFLOW_UNCONNECTED),
        .P({NLW_data_s_P_UNCONNECTED[47:30],SHIFT_RIGHT,data_s_n_90,data_s_n_91,data_s_n_92,data_s_n_93,data_s_n_94,data_s_n_95,data_s_n_96,data_s_n_97,data_s_n_98,data_s_n_99,data_s_n_100,data_s_n_101,data_s_n_102,data_s_n_103,data_s_n_104,data_s_n_105}),
        .PATTERNBDETECT(NLW_data_s_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(is_null_d0_s),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_data_s_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data2_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_data_s_UNDERFLOW_UNCONNECTED));
  double_dds_mixer_sin_2_0_multiplierReal_redim redim_inst
       (.P(SHIFT_RIGHT),
        .data1_clk_i(data1_clk_i),
        .data1_in_en_s(data1_in_en_s),
        .data1_rst_i(data1_rst_i),
        .data2_in_en_s(data2_in_en_s),
        .data_o(data_o),
        .data_sof_o(data_sof_o),
        .is_null_d0_s(is_null_d0_s));
endmodule

module double_dds_mixer_sin_2_0_multiplierReal_redim
   (data_sof_o,
    data_o,
    data1_rst_i,
    data1_clk_i,
    is_null_d0_s,
    P,
    data1_in_en_s,
    data2_in_en_s);
  output data_sof_o;
  output [13:0]data_o;
  input data1_rst_i;
  input data1_clk_i;
  input is_null_d0_s;
  input [13:0]P;
  input data1_in_en_s;
  input data2_in_en_s;

  wire [13:0]P;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__1_n_0 ;
  wire \_inferred__0/i__carry__1_n_1 ;
  wire \_inferred__0/i__carry__1_n_2 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry__2_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire data1_clk_i;
  wire data1_in_en_s;
  wire data1_rst_i;
  wire data2_in_en_s;
  wire data_en_in_s;
  wire data_en_s;
  wire [13:0]data_in_s;
  wire [13:0]data_o;
  wire data_sof_o;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire is_null_d0_s;
  wire is_null_s;
  wire [13:0]p_0_in;
  wire [3:1]\NLW__inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__0/i__carry__2_O_UNCONNECTED ;

  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({data_in_s[2],i__carry_i_1_n_0,1'b0,data_in_s[0]}),
        .O(p_0_in[3:0]),
        .S({i__carry_i_2_n_0,data_in_s[2:1],i__carry_i_3_n_0}));
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(data_in_s[6:3]),
        .O(p_0_in[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\_inferred__0/i__carry__1_n_0 ,\_inferred__0/i__carry__1_n_1 ,\_inferred__0/i__carry__1_n_2 ,\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_in_s[10:7]),
        .O(p_0_in[11:8]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW__inferred__0/i__carry__2_CO_UNCONNECTED [3:1],\_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,data_in_s[11]}),
        .O({\NLW__inferred__0/i__carry__2_O_UNCONNECTED [3:2],p_0_in[13:12]}),
        .S({1'b0,1'b0,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0}));
  FDRE data_en_out_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data_en_in_s),
        .Q(data_sof_o),
        .R(data1_rst_i));
  FDRE \data_out_s_reg[0] 
       (.C(data1_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[0]),
        .Q(data_o[0]),
        .R(data1_rst_i));
  FDRE \data_out_s_reg[10] 
       (.C(data1_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[10]),
        .Q(data_o[10]),
        .R(data1_rst_i));
  FDRE \data_out_s_reg[11] 
       (.C(data1_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[11]),
        .Q(data_o[11]),
        .R(data1_rst_i));
  FDRE \data_out_s_reg[12] 
       (.C(data1_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[12]),
        .Q(data_o[12]),
        .R(data1_rst_i));
  FDRE \data_out_s_reg[13] 
       (.C(data1_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[13]),
        .Q(data_o[13]),
        .R(data1_rst_i));
  FDRE \data_out_s_reg[1] 
       (.C(data1_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[1]),
        .Q(data_o[1]),
        .R(data1_rst_i));
  FDRE \data_out_s_reg[2] 
       (.C(data1_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[2]),
        .Q(data_o[2]),
        .R(data1_rst_i));
  FDRE \data_out_s_reg[3] 
       (.C(data1_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[3]),
        .Q(data_o[3]),
        .R(data1_rst_i));
  FDRE \data_out_s_reg[4] 
       (.C(data1_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[4]),
        .Q(data_o[4]),
        .R(data1_rst_i));
  FDRE \data_out_s_reg[5] 
       (.C(data1_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[5]),
        .Q(data_o[5]),
        .R(data1_rst_i));
  FDRE \data_out_s_reg[6] 
       (.C(data1_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[6]),
        .Q(data_o[6]),
        .R(data1_rst_i));
  FDRE \data_out_s_reg[7] 
       (.C(data1_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[7]),
        .Q(data_o[7]),
        .R(data1_rst_i));
  FDRE \data_out_s_reg[8] 
       (.C(data1_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[8]),
        .Q(data_o[8]),
        .R(data1_rst_i));
  FDRE \data_out_s_reg[9] 
       (.C(data1_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[9]),
        .Q(data_o[9]),
        .R(data1_rst_i));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(data_in_s[6]),
        .I1(data_in_s[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(data_in_s[5]),
        .I1(data_in_s[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(data_in_s[4]),
        .I1(data_in_s[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(data_in_s[3]),
        .I1(data_in_s[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1
       (.I0(data_in_s[10]),
        .I1(data_in_s[11]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(data_in_s[9]),
        .I1(data_in_s[10]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(data_in_s[8]),
        .I1(data_in_s[9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(data_in_s[7]),
        .I1(data_in_s[8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(data_in_s[12]),
        .I1(data_in_s[13]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2
       (.I0(data_in_s[11]),
        .I1(data_in_s[12]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(data_in_s[2]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(data_in_s[2]),
        .I1(data_in_s[3]),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    i__carry_i_3
       (.I0(is_null_s),
        .I1(data_in_s[13]),
        .I2(data_in_s[0]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \shift_data.data_en_in_s_i_1 
       (.I0(data1_in_en_s),
        .I1(data2_in_en_s),
        .O(data_en_s));
  FDRE \shift_data.data_en_in_s_reg 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data_en_s),
        .Q(data_en_in_s),
        .R(data1_rst_i));
  FDRE \shift_data.data_in_s_reg[0] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(P[0]),
        .Q(data_in_s[0]),
        .R(data1_rst_i));
  FDRE \shift_data.data_in_s_reg[10] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(P[10]),
        .Q(data_in_s[10]),
        .R(data1_rst_i));
  FDRE \shift_data.data_in_s_reg[11] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(P[11]),
        .Q(data_in_s[11]),
        .R(data1_rst_i));
  FDRE \shift_data.data_in_s_reg[12] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(P[12]),
        .Q(data_in_s[12]),
        .R(data1_rst_i));
  FDRE \shift_data.data_in_s_reg[13] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(P[13]),
        .Q(data_in_s[13]),
        .R(data1_rst_i));
  FDRE \shift_data.data_in_s_reg[1] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(P[1]),
        .Q(data_in_s[1]),
        .R(data1_rst_i));
  FDRE \shift_data.data_in_s_reg[2] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(P[2]),
        .Q(data_in_s[2]),
        .R(data1_rst_i));
  FDRE \shift_data.data_in_s_reg[3] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(P[3]),
        .Q(data_in_s[3]),
        .R(data1_rst_i));
  FDRE \shift_data.data_in_s_reg[4] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(P[4]),
        .Q(data_in_s[4]),
        .R(data1_rst_i));
  FDRE \shift_data.data_in_s_reg[5] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(P[5]),
        .Q(data_in_s[5]),
        .R(data1_rst_i));
  FDRE \shift_data.data_in_s_reg[6] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(P[6]),
        .Q(data_in_s[6]),
        .R(data1_rst_i));
  FDRE \shift_data.data_in_s_reg[7] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(P[7]),
        .Q(data_in_s[7]),
        .R(data1_rst_i));
  FDRE \shift_data.data_in_s_reg[8] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(P[8]),
        .Q(data_in_s[8]),
        .R(data1_rst_i));
  FDRE \shift_data.data_in_s_reg[9] 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(P[9]),
        .Q(data_in_s[9]),
        .R(data1_rst_i));
  FDRE \shift_data.is_null_s_reg 
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(is_null_d0_s),
        .Q(is_null_s),
        .R(data1_rst_i));
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
