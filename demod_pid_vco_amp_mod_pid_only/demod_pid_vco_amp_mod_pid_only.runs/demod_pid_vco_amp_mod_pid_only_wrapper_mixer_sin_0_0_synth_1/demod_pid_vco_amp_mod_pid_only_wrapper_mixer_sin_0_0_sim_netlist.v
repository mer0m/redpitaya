// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Wed May 16 14:26:10 2018
// Host        : ux305 running 64-bit Debian GNU/Linux testing/unstable
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_
//               demod_pid_vco_amp_mod_pid_only_wrapper_mixer_sin_0_0_sim_netlist.v
// Design      : demod_pid_vco_amp_mod_pid_only_wrapper_mixer_sin_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "demod_pid_vco_amp_mod_pid_only_wrapper_mixer_sin_0_0,mixer_sin,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mixer_sin,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (data_en_i,
    data_clk_i,
    data_rst_i,
    data_i,
    nco_i_i,
    nco_q_i,
    nco_en_i,
    nco_rst_i,
    nco_clk_i,
    data_en_o,
    data_clk_o,
    data_rst_o,
    data_i_o,
    data_q_o);
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_EN" *) input data_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_CLK" *) input data_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_RST, xilinx.com:signal:reset:1.0 processing_rst RST" *) input data_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA" *) input [13:0]data_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 nco_in DATA_I" *) input [13:0]nco_i_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 nco_in DATA_Q" *) input [13:0]nco_q_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 nco_in DATA_EN" *) input nco_en_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 nco_in DATA_RST" *) input nco_rst_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 nco_in DATA_CLK" *) input nco_clk_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_EN" *) output data_en_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_CLK" *) output data_clk_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_RST" *) output data_rst_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_I" *) output [13:0]data_i_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_Q" *) output [13:0]data_q_o;

  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire [13:0]data_i;
  wire [13:0]data_i_o;
  wire [13:0]data_q_o;
  wire data_rst_i;
  wire nco_clk_i;
  wire nco_en_i;
  wire [13:0]nco_i_i;
  wire [13:0]nco_q_i;
  wire nco_rst_i;

  assign data_clk_o = data_clk_i;
  assign data_rst_o = data_rst_i;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mixer_sin U0
       (.data_clk_i(data_clk_i),
        .data_en_i(data_en_i),
        .data_en_o(data_en_o),
        .data_i(data_i),
        .data_i_o(data_i_o),
        .data_q_o(data_q_o),
        .data_rst_i(data_rst_i),
        .nco_clk_i(nco_clk_i),
        .nco_en_i(nco_en_i),
        .nco_i_i(nco_i_i),
        .nco_q_i(nco_q_i),
        .nco_rst_i(nco_rst_i));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mixer_sin
   (data_i_o,
    data_q_o,
    data_en_o,
    nco_rst_i,
    nco_en_i,
    nco_i_i,
    nco_clk_i,
    data_en_i,
    data_clk_i,
    data_rst_i,
    data_i,
    nco_q_i);
  output [13:0]data_i_o;
  output [13:0]data_q_o;
  output data_en_o;
  input nco_rst_i;
  input nco_en_i;
  input [13:0]nco_i_i;
  input nco_clk_i;
  input data_en_i;
  input data_clk_i;
  input data_rst_i;
  input [13:0]data_i;
  input [13:0]nco_q_i;

  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire data_en_out_s_i_1_n_0;
  wire data_en_s;
  wire data_en_s_i_1_n_0;
  wire [13:0]data_i;
  wire [13:0]data_i_o;
  wire data_i_out_s_reg_n_100;
  wire data_i_out_s_reg_n_101;
  wire data_i_out_s_reg_n_102;
  wire data_i_out_s_reg_n_103;
  wire data_i_out_s_reg_n_104;
  wire data_i_out_s_reg_n_105;
  wire data_i_out_s_reg_n_93;
  wire data_i_out_s_reg_n_94;
  wire data_i_out_s_reg_n_95;
  wire data_i_out_s_reg_n_96;
  wire data_i_out_s_reg_n_97;
  wire data_i_out_s_reg_n_98;
  wire data_i_out_s_reg_n_99;
  wire [13:0]data_q_o;
  wire data_q_out_s_reg_n_100;
  wire data_q_out_s_reg_n_101;
  wire data_q_out_s_reg_n_102;
  wire data_q_out_s_reg_n_103;
  wire data_q_out_s_reg_n_104;
  wire data_q_out_s_reg_n_105;
  wire data_q_out_s_reg_n_93;
  wire data_q_out_s_reg_n_94;
  wire data_q_out_s_reg_n_95;
  wire data_q_out_s_reg_n_96;
  wire data_q_out_s_reg_n_97;
  wire data_q_out_s_reg_n_98;
  wire data_q_out_s_reg_n_99;
  wire data_rst_i;
  wire nco_clk_i;
  wire nco_en_i;
  wire [13:0]nco_i_i;
  wire [13:0]nco_i_s;
  wire [13:0]nco_q_i;
  wire [13:0]nco_q_s;
  wire nco_rst_i;
  wire NLW_data_i_out_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_data_i_out_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_data_i_out_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_data_i_out_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_data_i_out_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_data_i_out_s_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_data_i_out_s_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_data_i_out_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_data_i_out_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_data_i_out_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_data_i_out_s_reg_PCOUT_UNCONNECTED;
  wire NLW_data_q_out_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_data_q_out_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_data_q_out_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_data_q_out_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_data_q_out_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_data_q_out_s_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_data_q_out_s_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_data_q_out_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_data_q_out_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_data_q_out_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_data_q_out_s_reg_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    data_en_out_s_i_1
       (.I0(data_en_s),
        .I1(data_rst_i),
        .O(data_en_out_s_i_1_n_0));
  FDRE data_en_out_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_out_s_i_1_n_0),
        .Q(data_en_o),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    data_en_s_i_1
       (.I0(data_en_s),
        .I1(data_en_i),
        .I2(data_rst_i),
        .O(data_en_s_i_1_n_0));
  FDRE data_en_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_s_i_1_n_0),
        .Q(data_en_s),
        .R(1'b0));
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
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
    data_i_out_s_reg
       (.A({nco_i_s[13],nco_i_s[13],nco_i_s[13],nco_i_s[13],nco_i_s[13],nco_i_s[13],nco_i_s[13],nco_i_s[13],nco_i_s[13],nco_i_s[13],nco_i_s[13],nco_i_s[13],nco_i_s[13],nco_i_s[13],nco_i_s[13],nco_i_s[13],nco_i_s}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_data_i_out_s_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_data_i_out_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_data_i_out_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_data_i_out_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(data_en_i),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(data_en_s),
        .CEP(1'b0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_data_i_out_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_data_i_out_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_data_i_out_s_reg_P_UNCONNECTED[47:27],data_i_o,data_i_out_s_reg_n_93,data_i_out_s_reg_n_94,data_i_out_s_reg_n_95,data_i_out_s_reg_n_96,data_i_out_s_reg_n_97,data_i_out_s_reg_n_98,data_i_out_s_reg_n_99,data_i_out_s_reg_n_100,data_i_out_s_reg_n_101,data_i_out_s_reg_n_102,data_i_out_s_reg_n_103,data_i_out_s_reg_n_104,data_i_out_s_reg_n_105}),
        .PATTERNBDETECT(NLW_data_i_out_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_data_i_out_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_data_i_out_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(data_rst_i),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_data_i_out_s_reg_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
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
    data_q_out_s_reg
       (.A({nco_q_s[13],nco_q_s[13],nco_q_s[13],nco_q_s[13],nco_q_s[13],nco_q_s[13],nco_q_s[13],nco_q_s[13],nco_q_s[13],nco_q_s[13],nco_q_s[13],nco_q_s[13],nco_q_s[13],nco_q_s[13],nco_q_s[13],nco_q_s[13],nco_q_s}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_data_q_out_s_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_data_q_out_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_data_q_out_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_data_q_out_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(data_en_i),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(data_en_s),
        .CEP(1'b0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_data_q_out_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_data_q_out_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_data_q_out_s_reg_P_UNCONNECTED[47:27],data_q_o,data_q_out_s_reg_n_93,data_q_out_s_reg_n_94,data_q_out_s_reg_n_95,data_q_out_s_reg_n_96,data_q_out_s_reg_n_97,data_q_out_s_reg_n_98,data_q_out_s_reg_n_99,data_q_out_s_reg_n_100,data_q_out_s_reg_n_101,data_q_out_s_reg_n_102,data_q_out_s_reg_n_103,data_q_out_s_reg_n_104,data_q_out_s_reg_n_105}),
        .PATTERNBDETECT(NLW_data_q_out_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_data_q_out_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_data_q_out_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(data_rst_i),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_data_q_out_s_reg_UNDERFLOW_UNCONNECTED));
  FDRE \nco_i_s_reg[0] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_i_i[0]),
        .Q(nco_i_s[0]),
        .R(nco_rst_i));
  FDRE \nco_i_s_reg[10] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_i_i[10]),
        .Q(nco_i_s[10]),
        .R(nco_rst_i));
  FDRE \nco_i_s_reg[11] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_i_i[11]),
        .Q(nco_i_s[11]),
        .R(nco_rst_i));
  FDRE \nco_i_s_reg[12] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_i_i[12]),
        .Q(nco_i_s[12]),
        .R(nco_rst_i));
  FDRE \nco_i_s_reg[13] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_i_i[13]),
        .Q(nco_i_s[13]),
        .R(nco_rst_i));
  FDRE \nco_i_s_reg[1] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_i_i[1]),
        .Q(nco_i_s[1]),
        .R(nco_rst_i));
  FDRE \nco_i_s_reg[2] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_i_i[2]),
        .Q(nco_i_s[2]),
        .R(nco_rst_i));
  FDRE \nco_i_s_reg[3] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_i_i[3]),
        .Q(nco_i_s[3]),
        .R(nco_rst_i));
  FDRE \nco_i_s_reg[4] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_i_i[4]),
        .Q(nco_i_s[4]),
        .R(nco_rst_i));
  FDRE \nco_i_s_reg[5] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_i_i[5]),
        .Q(nco_i_s[5]),
        .R(nco_rst_i));
  FDRE \nco_i_s_reg[6] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_i_i[6]),
        .Q(nco_i_s[6]),
        .R(nco_rst_i));
  FDRE \nco_i_s_reg[7] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_i_i[7]),
        .Q(nco_i_s[7]),
        .R(nco_rst_i));
  FDRE \nco_i_s_reg[8] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_i_i[8]),
        .Q(nco_i_s[8]),
        .R(nco_rst_i));
  FDRE \nco_i_s_reg[9] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_i_i[9]),
        .Q(nco_i_s[9]),
        .R(nco_rst_i));
  FDRE \nco_q_s_reg[0] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_q_i[0]),
        .Q(nco_q_s[0]),
        .R(nco_rst_i));
  FDRE \nco_q_s_reg[10] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_q_i[10]),
        .Q(nco_q_s[10]),
        .R(nco_rst_i));
  FDRE \nco_q_s_reg[11] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_q_i[11]),
        .Q(nco_q_s[11]),
        .R(nco_rst_i));
  FDRE \nco_q_s_reg[12] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_q_i[12]),
        .Q(nco_q_s[12]),
        .R(nco_rst_i));
  FDRE \nco_q_s_reg[13] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_q_i[13]),
        .Q(nco_q_s[13]),
        .R(nco_rst_i));
  FDRE \nco_q_s_reg[1] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_q_i[1]),
        .Q(nco_q_s[1]),
        .R(nco_rst_i));
  FDRE \nco_q_s_reg[2] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_q_i[2]),
        .Q(nco_q_s[2]),
        .R(nco_rst_i));
  FDRE \nco_q_s_reg[3] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_q_i[3]),
        .Q(nco_q_s[3]),
        .R(nco_rst_i));
  FDRE \nco_q_s_reg[4] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_q_i[4]),
        .Q(nco_q_s[4]),
        .R(nco_rst_i));
  FDRE \nco_q_s_reg[5] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_q_i[5]),
        .Q(nco_q_s[5]),
        .R(nco_rst_i));
  FDRE \nco_q_s_reg[6] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_q_i[6]),
        .Q(nco_q_s[6]),
        .R(nco_rst_i));
  FDRE \nco_q_s_reg[7] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_q_i[7]),
        .Q(nco_q_s[7]),
        .R(nco_rst_i));
  FDRE \nco_q_s_reg[8] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_q_i[8]),
        .Q(nco_q_s[8]),
        .R(nco_rst_i));
  FDRE \nco_q_s_reg[9] 
       (.C(nco_clk_i),
        .CE(nco_en_i),
        .D(nco_q_i[9]),
        .Q(nco_q_s[9]),
        .R(nco_rst_i));
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
