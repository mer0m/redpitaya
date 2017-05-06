// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Sat May  6 08:56:52 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode funcsim
//               /home/bma/git/fpga_design/redpitaya/pid_vco_pid_only/pid_vco_pid_only.srcs/sources_1/bd/pid_vco_pid_only_wrapper/ip/pid_vco_pid_only_wrapper_pid2_0/pid_vco_pid_only_wrapper_pid2_0_sim_netlist.v
// Design      : pid_vco_pid_only_wrapper_pid2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pid_vco_pid_only_wrapper_pid2_0,red_pitaya_pidv3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "red_pitaya_pidv3,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module pid_vco_pid_only_wrapper_pid2_0
   (data_i,
    data_en_i,
    data_clk_i,
    data_rst_i,
    setpoint_i,
    kp_i,
    ki_i,
    kd_i,
    sign_i,
    int_rst_i,
    data_o,
    data_en_o,
    data_clk_o,
    data_rst_o);
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA" *) input [13:0]data_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_EN" *) input data_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_CLK" *) input data_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_RST" *) input data_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 coeffs SETPOINT_I" *) input [13:0]setpoint_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 coeffs KP_I" *) input [13:0]kp_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 coeffs KI_I" *) input [13:0]ki_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 coeffs DATA" *) input [13:0]kd_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 coeffs SIGN_I" *) input sign_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 coeffs INT_RST_I" *) input int_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA" *) output [13:0]data_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EN" *) output data_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_CLK" *) output data_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_RST" *) output data_rst_o;

  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire [13:0]data_i;
  wire [13:0]data_o;
  wire data_rst_i;
  wire int_rst_i;
  wire [13:0]ki_i;
  wire [13:0]kp_i;
  wire sign_i;

  assign data_clk_o = data_clk_i;
  assign data_rst_o = data_rst_i;
  pid_vco_pid_only_wrapper_pid2_0_red_pitaya_pidv3 U0
       (.data_clk_i(data_clk_i),
        .data_en_i(data_en_i),
        .data_en_o(data_en_o),
        .data_i(data_i),
        .data_o(data_o),
        .data_rst_i(data_rst_i),
        .int_rst_i(int_rst_i),
        .ki_i(ki_i),
        .kp_i(kp_i),
        .sign_i(sign_i));
endmodule

(* ORIG_REF_NAME = "red_pitaya_pidv3" *) 
module pid_vco_pid_only_wrapper_pid2_0_red_pitaya_pidv3
   (data_o,
    data_en_o,
    data_i,
    data_en_i,
    data_clk_i,
    data_rst_i,
    ki_i,
    int_rst_i,
    kp_i,
    sign_i);
  output [13:0]data_o;
  output data_en_o;
  input [13:0]data_i;
  input data_en_i;
  input data_clk_i;
  input data_rst_i;
  input [13:0]ki_i;
  input int_rst_i;
  input [13:0]kp_i;
  input sign_i;

  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire [13:0]data_i;
  wire [13:0]data_o;
  wire data_rst_i;
  wire int_rst_i;
  wire [13:0]ki_i;
  wire [13:0]kp_i;
  wire sign_i;

  pid_vco_pid_only_wrapper_pid2_0_red_pitaya_pidv3_logic red_pitaya_pidv3Logic
       (.data_clk_i(data_clk_i),
        .data_en_i(data_en_i),
        .data_en_o(data_en_o),
        .data_i(data_i),
        .data_o(data_o),
        .data_rst_i(data_rst_i),
        .int_rst_i(int_rst_i),
        .ki_i(ki_i),
        .kp_i(kp_i),
        .sign_i(sign_i));
endmodule

(* ORIG_REF_NAME = "red_pitaya_pidv3_logic" *) 
module pid_vco_pid_only_wrapper_pid2_0_red_pitaya_pidv3_logic
   (data_o,
    data_en_o,
    data_i,
    data_en_i,
    data_clk_i,
    data_rst_i,
    ki_i,
    int_rst_i,
    kp_i,
    sign_i);
  output [13:0]data_o;
  output data_en_o;
  input [13:0]data_i;
  input data_en_i;
  input data_clk_i;
  input data_rst_i;
  input [13:0]ki_i;
  input int_rst_i;
  input [13:0]kp_i;
  input sign_i;

  wire [14:0]A;
  wire [13:0]I_s;
  wire \I_s[0]_i_1_n_0 ;
  wire \I_s[10]_i_1_n_0 ;
  wire \I_s[11]_i_1_n_0 ;
  wire \I_s[12]_i_1_n_0 ;
  wire \I_s[12]_i_2_n_0 ;
  wire \I_s[12]_i_3_n_0 ;
  wire \I_s[13]_i_1_n_0 ;
  wire \I_s[1]_i_1_n_0 ;
  wire \I_s[2]_i_1_n_0 ;
  wire \I_s[3]_i_1_n_0 ;
  wire \I_s[4]_i_1_n_0 ;
  wire \I_s[5]_i_1_n_0 ;
  wire \I_s[6]_i_1_n_0 ;
  wire \I_s[7]_i_1_n_0 ;
  wire \I_s[8]_i_1_n_0 ;
  wire \I_s[9]_i_1_n_0 ;
  wire I_sum_s_i_10_n_0;
  wire I_sum_s_i_15_n_0;
  wire I_sum_s_i_16_n_0;
  wire I_sum_s_i_17_n_0;
  wire I_sum_s_i_18_n_0;
  wire I_sum_s_i_1_n_0;
  wire I_sum_s_i_23_n_0;
  wire I_sum_s_i_24_n_0;
  wire I_sum_s_i_25_n_0;
  wire I_sum_s_i_26_n_0;
  wire I_sum_s_i_2_n_2;
  wire I_sum_s_i_2_n_3;
  wire I_sum_s_i_31_n_0;
  wire I_sum_s_i_32_n_0;
  wire I_sum_s_i_33_n_0;
  wire I_sum_s_i_34_n_0;
  wire I_sum_s_i_3_n_0;
  wire I_sum_s_i_3_n_1;
  wire I_sum_s_i_3_n_2;
  wire I_sum_s_i_3_n_3;
  wire I_sum_s_i_4_n_0;
  wire I_sum_s_i_4_n_1;
  wire I_sum_s_i_4_n_2;
  wire I_sum_s_i_4_n_3;
  wire I_sum_s_i_5_n_0;
  wire I_sum_s_i_5_n_1;
  wire I_sum_s_i_5_n_2;
  wire I_sum_s_i_5_n_3;
  wire I_sum_s_i_8_n_0;
  wire I_sum_s_i_9_n_0;
  wire I_sum_s_n_100;
  wire I_sum_s_n_101;
  wire I_sum_s_n_102;
  wire I_sum_s_n_103;
  wire I_sum_s_n_104;
  wire I_sum_s_n_105;
  wire I_sum_s_n_3;
  wire I_sum_s_n_4;
  wire I_sum_s_n_79;
  wire I_sum_s_n_80;
  wire I_sum_s_n_81;
  wire I_sum_s_n_82;
  wire I_sum_s_n_83;
  wire I_sum_s_n_84;
  wire I_sum_s_n_85;
  wire I_sum_s_n_86;
  wire I_sum_s_n_87;
  wire I_sum_s_n_88;
  wire I_sum_s_n_89;
  wire I_sum_s_n_90;
  wire I_sum_s_n_91;
  wire I_sum_s_n_92;
  wire I_sum_s_n_93;
  wire I_sum_s_n_94;
  wire I_sum_s_n_95;
  wire I_sum_s_n_96;
  wire I_sum_s_n_97;
  wire I_sum_s_n_98;
  wire I_sum_s_n_99;
  wire I_temp_s;
  wire [13:0]P_s;
  wire P_temp_s_n_100;
  wire P_temp_s_n_101;
  wire P_temp_s_n_102;
  wire P_temp_s_n_103;
  wire P_temp_s_n_104;
  wire P_temp_s_n_105;
  wire P_temp_s_n_91;
  wire P_temp_s_n_92;
  wire P_temp_s_n_93;
  wire P_temp_s_n_94;
  wire P_temp_s_n_95;
  wire P_temp_s_n_96;
  wire P_temp_s_n_97;
  wire P_temp_s_n_98;
  wire P_temp_s_n_99;
  wire data2_en_s;
  wire data2_en_s_i_1_n_0;
  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire data_en_o_i_1_n_0;
  wire data_en_s;
  wire data_en_s_i_1_n_0;
  wire [13:0]data_i;
  wire [13:0]data_o;
  wire data_rst_i;
  wire int_rst_i;
  wire [13:0]ki_i;
  wire [13:0]kp_i;
  wire [1:0]p_0_in;
  wire [14:0]p_1_in;
  wire \pid_out_s[0]_i_1_n_0 ;
  wire \pid_out_s[10]_i_1_n_0 ;
  wire \pid_out_s[11]_i_1_n_0 ;
  wire \pid_out_s[12]_i_1_n_0 ;
  wire \pid_out_s[12]_i_2_n_0 ;
  wire \pid_out_s[13]_i_1_n_0 ;
  wire \pid_out_s[1]_i_1_n_0 ;
  wire \pid_out_s[2]_i_1_n_0 ;
  wire \pid_out_s[3]_i_1_n_0 ;
  wire \pid_out_s[4]_i_1_n_0 ;
  wire \pid_out_s[5]_i_1_n_0 ;
  wire \pid_out_s[6]_i_1_n_0 ;
  wire \pid_out_s[7]_i_1_n_0 ;
  wire \pid_out_s[8]_i_1_n_0 ;
  wire \pid_out_s[9]_i_1_n_0 ;
  wire [13:0]pid_sum_s;
  wire pid_sum_s_carry__0_i_1_n_0;
  wire pid_sum_s_carry__0_i_2_n_0;
  wire pid_sum_s_carry__0_i_3_n_0;
  wire pid_sum_s_carry__0_i_4_n_0;
  wire pid_sum_s_carry__0_n_0;
  wire pid_sum_s_carry__0_n_1;
  wire pid_sum_s_carry__0_n_2;
  wire pid_sum_s_carry__0_n_3;
  wire pid_sum_s_carry__1_i_1_n_0;
  wire pid_sum_s_carry__1_i_2_n_0;
  wire pid_sum_s_carry__1_i_3_n_0;
  wire pid_sum_s_carry__1_i_4_n_0;
  wire pid_sum_s_carry__1_n_0;
  wire pid_sum_s_carry__1_n_1;
  wire pid_sum_s_carry__1_n_2;
  wire pid_sum_s_carry__1_n_3;
  wire pid_sum_s_carry__2_i_1_n_0;
  wire pid_sum_s_carry__2_i_2_n_0;
  wire pid_sum_s_carry__2_n_3;
  wire pid_sum_s_carry_i_1_n_0;
  wire pid_sum_s_carry_i_2_n_0;
  wire pid_sum_s_carry_i_3_n_0;
  wire pid_sum_s_carry_i_4_n_0;
  wire pid_sum_s_carry_n_0;
  wire pid_sum_s_carry_n_1;
  wire pid_sum_s_carry_n_2;
  wire pid_sum_s_carry_n_3;
  wire sign_i;
  wire NLW_I_sum_s_CARRYCASCOUT_UNCONNECTED;
  wire NLW_I_sum_s_MULTSIGNOUT_UNCONNECTED;
  wire NLW_I_sum_s_OVERFLOW_UNCONNECTED;
  wire NLW_I_sum_s_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_I_sum_s_ACOUT_UNCONNECTED;
  wire [17:0]NLW_I_sum_s_BCOUT_UNCONNECTED;
  wire [3:0]NLW_I_sum_s_CARRYOUT_UNCONNECTED;
  wire [47:29]NLW_I_sum_s_P_UNCONNECTED;
  wire [47:0]NLW_I_sum_s_PCOUT_UNCONNECTED;
  wire [3:2]NLW_I_sum_s_i_2_CO_UNCONNECTED;
  wire [3:3]NLW_I_sum_s_i_2_O_UNCONNECTED;
  wire NLW_P_temp_s_CARRYCASCOUT_UNCONNECTED;
  wire NLW_P_temp_s_MULTSIGNOUT_UNCONNECTED;
  wire NLW_P_temp_s_OVERFLOW_UNCONNECTED;
  wire NLW_P_temp_s_PATTERNBDETECT_UNCONNECTED;
  wire NLW_P_temp_s_PATTERNDETECT_UNCONNECTED;
  wire NLW_P_temp_s_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_P_temp_s_ACOUT_UNCONNECTED;
  wire [17:0]NLW_P_temp_s_BCOUT_UNCONNECTED;
  wire [3:0]NLW_P_temp_s_CARRYOUT_UNCONNECTED;
  wire [47:29]NLW_P_temp_s_P_UNCONNECTED;
  wire [47:0]NLW_P_temp_s_PCOUT_UNCONNECTED;
  wire [3:1]NLW_pid_sum_s_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_pid_sum_s_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h02)) 
    \/i_ 
       (.I0(data_en_s),
        .I1(I_sum_s_n_4),
        .I2(I_sum_s_n_3),
        .O(I_temp_s));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \I_s[0]_i_1 
       (.I0(I_sum_s_n_3),
        .I1(I_sum_s_n_90),
        .I2(I_sum_s_n_4),
        .O(\I_s[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \I_s[10]_i_1 
       (.I0(I_sum_s_n_3),
        .I1(I_sum_s_n_80),
        .I2(I_sum_s_n_4),
        .O(\I_s[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \I_s[11]_i_1 
       (.I0(I_sum_s_n_3),
        .I1(I_sum_s_n_79),
        .I2(I_sum_s_n_4),
        .O(\I_s[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \I_s[12]_i_1 
       (.I0(data_rst_i),
        .I1(int_rst_i),
        .O(\I_s[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \I_s[12]_i_2 
       (.I0(int_rst_i),
        .I1(data_rst_i),
        .I2(data_en_s),
        .O(\I_s[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \I_s[12]_i_3 
       (.I0(I_sum_s_n_3),
        .I1(p_0_in[0]),
        .I2(I_sum_s_n_4),
        .O(\I_s[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000E00FF000E0000)) 
    \I_s[13]_i_1 
       (.I0(p_0_in[1]),
        .I1(I_sum_s_n_4),
        .I2(I_sum_s_n_3),
        .I3(I_sum_s_i_1_n_0),
        .I4(data_en_s),
        .I5(I_s[13]),
        .O(\I_s[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \I_s[1]_i_1 
       (.I0(I_sum_s_n_3),
        .I1(I_sum_s_n_89),
        .I2(I_sum_s_n_4),
        .O(\I_s[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \I_s[2]_i_1 
       (.I0(I_sum_s_n_3),
        .I1(I_sum_s_n_88),
        .I2(I_sum_s_n_4),
        .O(\I_s[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \I_s[3]_i_1 
       (.I0(I_sum_s_n_3),
        .I1(I_sum_s_n_87),
        .I2(I_sum_s_n_4),
        .O(\I_s[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \I_s[4]_i_1 
       (.I0(I_sum_s_n_3),
        .I1(I_sum_s_n_86),
        .I2(I_sum_s_n_4),
        .O(\I_s[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \I_s[5]_i_1 
       (.I0(I_sum_s_n_3),
        .I1(I_sum_s_n_85),
        .I2(I_sum_s_n_4),
        .O(\I_s[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \I_s[6]_i_1 
       (.I0(I_sum_s_n_3),
        .I1(I_sum_s_n_84),
        .I2(I_sum_s_n_4),
        .O(\I_s[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \I_s[7]_i_1 
       (.I0(I_sum_s_n_3),
        .I1(I_sum_s_n_83),
        .I2(I_sum_s_n_4),
        .O(\I_s[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \I_s[8]_i_1 
       (.I0(I_sum_s_n_3),
        .I1(I_sum_s_n_82),
        .I2(I_sum_s_n_4),
        .O(\I_s[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \I_s[9]_i_1 
       (.I0(I_sum_s_n_3),
        .I1(I_sum_s_n_81),
        .I2(I_sum_s_n_4),
        .O(\I_s[9]_i_1_n_0 ));
  FDRE \I_s_reg[0] 
       (.C(data_clk_i),
        .CE(\I_s[12]_i_2_n_0 ),
        .D(\I_s[0]_i_1_n_0 ),
        .Q(I_s[0]),
        .R(\I_s[12]_i_1_n_0 ));
  FDRE \I_s_reg[10] 
       (.C(data_clk_i),
        .CE(\I_s[12]_i_2_n_0 ),
        .D(\I_s[10]_i_1_n_0 ),
        .Q(I_s[10]),
        .R(\I_s[12]_i_1_n_0 ));
  FDRE \I_s_reg[11] 
       (.C(data_clk_i),
        .CE(\I_s[12]_i_2_n_0 ),
        .D(\I_s[11]_i_1_n_0 ),
        .Q(I_s[11]),
        .R(\I_s[12]_i_1_n_0 ));
  FDRE \I_s_reg[12] 
       (.C(data_clk_i),
        .CE(\I_s[12]_i_2_n_0 ),
        .D(\I_s[12]_i_3_n_0 ),
        .Q(I_s[12]),
        .R(\I_s[12]_i_1_n_0 ));
  FDRE \I_s_reg[13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\I_s[13]_i_1_n_0 ),
        .Q(I_s[13]),
        .R(1'b0));
  FDRE \I_s_reg[1] 
       (.C(data_clk_i),
        .CE(\I_s[12]_i_2_n_0 ),
        .D(\I_s[1]_i_1_n_0 ),
        .Q(I_s[1]),
        .R(\I_s[12]_i_1_n_0 ));
  FDRE \I_s_reg[2] 
       (.C(data_clk_i),
        .CE(\I_s[12]_i_2_n_0 ),
        .D(\I_s[2]_i_1_n_0 ),
        .Q(I_s[2]),
        .R(\I_s[12]_i_1_n_0 ));
  FDRE \I_s_reg[3] 
       (.C(data_clk_i),
        .CE(\I_s[12]_i_2_n_0 ),
        .D(\I_s[3]_i_1_n_0 ),
        .Q(I_s[3]),
        .R(\I_s[12]_i_1_n_0 ));
  FDRE \I_s_reg[4] 
       (.C(data_clk_i),
        .CE(\I_s[12]_i_2_n_0 ),
        .D(\I_s[4]_i_1_n_0 ),
        .Q(I_s[4]),
        .R(\I_s[12]_i_1_n_0 ));
  FDRE \I_s_reg[5] 
       (.C(data_clk_i),
        .CE(\I_s[12]_i_2_n_0 ),
        .D(\I_s[5]_i_1_n_0 ),
        .Q(I_s[5]),
        .R(\I_s[12]_i_1_n_0 ));
  FDRE \I_s_reg[6] 
       (.C(data_clk_i),
        .CE(\I_s[12]_i_2_n_0 ),
        .D(\I_s[6]_i_1_n_0 ),
        .Q(I_s[6]),
        .R(\I_s[12]_i_1_n_0 ));
  FDRE \I_s_reg[7] 
       (.C(data_clk_i),
        .CE(\I_s[12]_i_2_n_0 ),
        .D(\I_s[7]_i_1_n_0 ),
        .Q(I_s[7]),
        .R(\I_s[12]_i_1_n_0 ));
  FDRE \I_s_reg[8] 
       (.C(data_clk_i),
        .CE(\I_s[12]_i_2_n_0 ),
        .D(\I_s[8]_i_1_n_0 ),
        .Q(I_s[8]),
        .R(\I_s[12]_i_1_n_0 ));
  FDRE \I_s_reg[9] 
       (.C(data_clk_i),
        .CE(\I_s[12]_i_2_n_0 ),
        .D(\I_s[9]_i_1_n_0 ),
        .Q(I_s[9]),
        .R(\I_s[12]_i_1_n_0 ));
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
    .MASK(48'hFFFFE7FFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'hFFFFF7FFFFFF),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("PATDET"),
    .USE_SIMD("ONE48")) 
    I_sum_s
       (.A({A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_I_sum_s_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({ki_i[13],ki_i[13],ki_i[13],ki_i[13],ki_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_I_sum_s_BCOUT_UNCONNECTED[17:0]),
        .C({p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in[1],p_0_in,I_sum_s_n_79,I_sum_s_n_80,I_sum_s_n_81,I_sum_s_n_82,I_sum_s_n_83,I_sum_s_n_84,I_sum_s_n_85,I_sum_s_n_86,I_sum_s_n_87,I_sum_s_n_88,I_sum_s_n_89,I_sum_s_n_90,I_sum_s_n_91,I_sum_s_n_92,I_sum_s_n_93,I_sum_s_n_94,I_sum_s_n_95,I_sum_s_n_96,I_sum_s_n_97,I_sum_s_n_98,I_sum_s_n_99,I_sum_s_n_100,I_sum_s_n_101,I_sum_s_n_102,I_sum_s_n_103,I_sum_s_n_104,I_sum_s_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_I_sum_s_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_I_sum_s_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_en_i),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(I_temp_s),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_I_sum_s_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_I_sum_s_OVERFLOW_UNCONNECTED),
        .P({NLW_I_sum_s_P_UNCONNECTED[47:29],p_0_in,I_sum_s_n_79,I_sum_s_n_80,I_sum_s_n_81,I_sum_s_n_82,I_sum_s_n_83,I_sum_s_n_84,I_sum_s_n_85,I_sum_s_n_86,I_sum_s_n_87,I_sum_s_n_88,I_sum_s_n_89,I_sum_s_n_90,I_sum_s_n_91,I_sum_s_n_92,I_sum_s_n_93,I_sum_s_n_94,I_sum_s_n_95,I_sum_s_n_96,I_sum_s_n_97,I_sum_s_n_98,I_sum_s_n_99,I_sum_s_n_100,I_sum_s_n_101,I_sum_s_n_102,I_sum_s_n_103,I_sum_s_n_104,I_sum_s_n_105}),
        .PATTERNBDETECT(I_sum_s_n_3),
        .PATTERNDETECT(I_sum_s_n_4),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_I_sum_s_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(I_sum_s_i_1_n_0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_I_sum_s_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'hE)) 
    I_sum_s_i_1
       (.I0(data_rst_i),
        .I1(int_rst_i),
        .O(I_sum_s_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_10
       (.I0(data_i[12]),
        .O(I_sum_s_i_10_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    I_sum_s_i_11
       (.I0(data_i[11]),
        .I1(sign_i),
        .O(p_1_in[11]));
  LUT2 #(
    .INIT(4'h7)) 
    I_sum_s_i_12
       (.I0(data_i[10]),
        .I1(sign_i),
        .O(p_1_in[10]));
  LUT2 #(
    .INIT(4'h7)) 
    I_sum_s_i_13
       (.I0(data_i[9]),
        .I1(sign_i),
        .O(p_1_in[9]));
  LUT2 #(
    .INIT(4'h7)) 
    I_sum_s_i_14
       (.I0(data_i[8]),
        .I1(sign_i),
        .O(p_1_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_15
       (.I0(data_i[11]),
        .O(I_sum_s_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_16
       (.I0(data_i[10]),
        .O(I_sum_s_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_17
       (.I0(data_i[9]),
        .O(I_sum_s_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_18
       (.I0(data_i[8]),
        .O(I_sum_s_i_18_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    I_sum_s_i_19
       (.I0(data_i[7]),
        .I1(sign_i),
        .O(p_1_in[7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 I_sum_s_i_2
       (.CI(I_sum_s_i_3_n_0),
        .CO({NLW_I_sum_s_i_2_CO_UNCONNECTED[3:2],I_sum_s_i_2_n_2,I_sum_s_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_1_in[14],p_1_in[12]}),
        .O({NLW_I_sum_s_i_2_O_UNCONNECTED[3],A[14:12]}),
        .S({1'b0,I_sum_s_i_8_n_0,I_sum_s_i_9_n_0,I_sum_s_i_10_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    I_sum_s_i_20
       (.I0(data_i[6]),
        .I1(sign_i),
        .O(p_1_in[6]));
  LUT2 #(
    .INIT(4'h7)) 
    I_sum_s_i_21
       (.I0(data_i[5]),
        .I1(sign_i),
        .O(p_1_in[5]));
  LUT2 #(
    .INIT(4'h7)) 
    I_sum_s_i_22
       (.I0(data_i[4]),
        .I1(sign_i),
        .O(p_1_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_23
       (.I0(data_i[7]),
        .O(I_sum_s_i_23_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_24
       (.I0(data_i[6]),
        .O(I_sum_s_i_24_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_25
       (.I0(data_i[5]),
        .O(I_sum_s_i_25_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_26
       (.I0(data_i[4]),
        .O(I_sum_s_i_26_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    I_sum_s_i_27
       (.I0(data_i[3]),
        .I1(sign_i),
        .O(p_1_in[3]));
  LUT2 #(
    .INIT(4'h7)) 
    I_sum_s_i_28
       (.I0(data_i[2]),
        .I1(sign_i),
        .O(p_1_in[2]));
  LUT2 #(
    .INIT(4'h7)) 
    I_sum_s_i_29
       (.I0(data_i[1]),
        .I1(sign_i),
        .O(p_1_in[1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 I_sum_s_i_3
       (.CI(I_sum_s_i_4_n_0),
        .CO({I_sum_s_i_3_n_0,I_sum_s_i_3_n_1,I_sum_s_i_3_n_2,I_sum_s_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_in[11:8]),
        .O(A[11:8]),
        .S({I_sum_s_i_15_n_0,I_sum_s_i_16_n_0,I_sum_s_i_17_n_0,I_sum_s_i_18_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    I_sum_s_i_30
       (.I0(data_i[0]),
        .I1(sign_i),
        .O(p_1_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_31
       (.I0(data_i[3]),
        .O(I_sum_s_i_31_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_32
       (.I0(data_i[2]),
        .O(I_sum_s_i_32_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_33
       (.I0(data_i[1]),
        .O(I_sum_s_i_33_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_34
       (.I0(data_i[0]),
        .O(I_sum_s_i_34_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 I_sum_s_i_4
       (.CI(I_sum_s_i_5_n_0),
        .CO({I_sum_s_i_4_n_0,I_sum_s_i_4_n_1,I_sum_s_i_4_n_2,I_sum_s_i_4_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_in[7:4]),
        .O(A[7:4]),
        .S({I_sum_s_i_23_n_0,I_sum_s_i_24_n_0,I_sum_s_i_25_n_0,I_sum_s_i_26_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 I_sum_s_i_5
       (.CI(1'b0),
        .CO({I_sum_s_i_5_n_0,I_sum_s_i_5_n_1,I_sum_s_i_5_n_2,I_sum_s_i_5_n_3}),
        .CYINIT(1'b1),
        .DI(p_1_in[3:0]),
        .O(A[3:0]),
        .S({I_sum_s_i_31_n_0,I_sum_s_i_32_n_0,I_sum_s_i_33_n_0,I_sum_s_i_34_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    I_sum_s_i_6
       (.I0(data_i[13]),
        .I1(sign_i),
        .O(p_1_in[14]));
  LUT2 #(
    .INIT(4'h7)) 
    I_sum_s_i_7
       (.I0(data_i[12]),
        .I1(sign_i),
        .O(p_1_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_8
       (.I0(data_i[13]),
        .O(I_sum_s_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    I_sum_s_i_9
       (.I0(data_i[13]),
        .O(I_sum_s_i_9_n_0));
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
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    P_temp_s
       (.A({A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_P_temp_s_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({kp_i[13],kp_i[13],kp_i[13],kp_i[13],kp_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_P_temp_s_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_P_temp_s_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_P_temp_s_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_en_i),
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
        .CEP(data_en_s),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_P_temp_s_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_P_temp_s_OVERFLOW_UNCONNECTED),
        .P({NLW_P_temp_s_P_UNCONNECTED[47:29],P_s,P_temp_s_n_91,P_temp_s_n_92,P_temp_s_n_93,P_temp_s_n_94,P_temp_s_n_95,P_temp_s_n_96,P_temp_s_n_97,P_temp_s_n_98,P_temp_s_n_99,P_temp_s_n_100,P_temp_s_n_101,P_temp_s_n_102,P_temp_s_n_103,P_temp_s_n_104,P_temp_s_n_105}),
        .PATTERNBDETECT(NLW_P_temp_s_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_P_temp_s_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_P_temp_s_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_P_temp_s_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    data2_en_s_i_1
       (.I0(data_en_s),
        .I1(data_rst_i),
        .O(data2_en_s_i_1_n_0));
  FDRE data2_en_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data2_en_s_i_1_n_0),
        .Q(data2_en_s),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    data_en_o_i_1
       (.I0(data2_en_s),
        .I1(data_rst_i),
        .O(data_en_o_i_1_n_0));
  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_o_i_1_n_0),
        .Q(data_en_o),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    data_en_s_i_1
       (.I0(data_en_i),
        .I1(data_rst_i),
        .O(data_en_s_i_1_n_0));
  FDRE data_en_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_s_i_1_n_0),
        .Q(data_en_s),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \pid_out_s[0]_i_1 
       (.I0(pid_sum_s[0]),
        .I1(pid_sum_s[13]),
        .I2(pid_sum_s[12]),
        .O(\pid_out_s[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \pid_out_s[10]_i_1 
       (.I0(pid_sum_s[10]),
        .I1(pid_sum_s[13]),
        .I2(pid_sum_s[12]),
        .O(\pid_out_s[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \pid_out_s[11]_i_1 
       (.I0(pid_sum_s[11]),
        .I1(pid_sum_s[13]),
        .I2(pid_sum_s[12]),
        .O(\pid_out_s[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pid_out_s[12]_i_1 
       (.I0(data_rst_i),
        .I1(data2_en_s),
        .O(\pid_out_s[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pid_out_s[12]_i_2 
       (.I0(pid_sum_s[12]),
        .O(\pid_out_s[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2320)) 
    \pid_out_s[13]_i_1 
       (.I0(pid_sum_s[13]),
        .I1(data_rst_i),
        .I2(data2_en_s),
        .I3(data_o[13]),
        .O(\pid_out_s[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \pid_out_s[1]_i_1 
       (.I0(pid_sum_s[1]),
        .I1(pid_sum_s[13]),
        .I2(pid_sum_s[12]),
        .O(\pid_out_s[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \pid_out_s[2]_i_1 
       (.I0(pid_sum_s[2]),
        .I1(pid_sum_s[13]),
        .I2(pid_sum_s[12]),
        .O(\pid_out_s[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \pid_out_s[3]_i_1 
       (.I0(pid_sum_s[3]),
        .I1(pid_sum_s[13]),
        .I2(pid_sum_s[12]),
        .O(\pid_out_s[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \pid_out_s[4]_i_1 
       (.I0(pid_sum_s[4]),
        .I1(pid_sum_s[13]),
        .I2(pid_sum_s[12]),
        .O(\pid_out_s[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \pid_out_s[5]_i_1 
       (.I0(pid_sum_s[5]),
        .I1(pid_sum_s[13]),
        .I2(pid_sum_s[12]),
        .O(\pid_out_s[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \pid_out_s[6]_i_1 
       (.I0(pid_sum_s[6]),
        .I1(pid_sum_s[13]),
        .I2(pid_sum_s[12]),
        .O(\pid_out_s[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \pid_out_s[7]_i_1 
       (.I0(pid_sum_s[7]),
        .I1(pid_sum_s[13]),
        .I2(pid_sum_s[12]),
        .O(\pid_out_s[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \pid_out_s[8]_i_1 
       (.I0(pid_sum_s[8]),
        .I1(pid_sum_s[13]),
        .I2(pid_sum_s[12]),
        .O(\pid_out_s[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \pid_out_s[9]_i_1 
       (.I0(pid_sum_s[9]),
        .I1(pid_sum_s[13]),
        .I2(pid_sum_s[12]),
        .O(\pid_out_s[9]_i_1_n_0 ));
  FDRE \pid_out_s_reg[0] 
       (.C(data_clk_i),
        .CE(\pid_out_s[12]_i_1_n_0 ),
        .D(\pid_out_s[0]_i_1_n_0 ),
        .Q(data_o[0]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[10] 
       (.C(data_clk_i),
        .CE(\pid_out_s[12]_i_1_n_0 ),
        .D(\pid_out_s[10]_i_1_n_0 ),
        .Q(data_o[10]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[11] 
       (.C(data_clk_i),
        .CE(\pid_out_s[12]_i_1_n_0 ),
        .D(\pid_out_s[11]_i_1_n_0 ),
        .Q(data_o[11]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[12] 
       (.C(data_clk_i),
        .CE(\pid_out_s[12]_i_1_n_0 ),
        .D(\pid_out_s[12]_i_2_n_0 ),
        .Q(data_o[12]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\pid_out_s[13]_i_1_n_0 ),
        .Q(data_o[13]),
        .R(1'b0));
  FDRE \pid_out_s_reg[1] 
       (.C(data_clk_i),
        .CE(\pid_out_s[12]_i_1_n_0 ),
        .D(\pid_out_s[1]_i_1_n_0 ),
        .Q(data_o[1]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[2] 
       (.C(data_clk_i),
        .CE(\pid_out_s[12]_i_1_n_0 ),
        .D(\pid_out_s[2]_i_1_n_0 ),
        .Q(data_o[2]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[3] 
       (.C(data_clk_i),
        .CE(\pid_out_s[12]_i_1_n_0 ),
        .D(\pid_out_s[3]_i_1_n_0 ),
        .Q(data_o[3]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[4] 
       (.C(data_clk_i),
        .CE(\pid_out_s[12]_i_1_n_0 ),
        .D(\pid_out_s[4]_i_1_n_0 ),
        .Q(data_o[4]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[5] 
       (.C(data_clk_i),
        .CE(\pid_out_s[12]_i_1_n_0 ),
        .D(\pid_out_s[5]_i_1_n_0 ),
        .Q(data_o[5]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[6] 
       (.C(data_clk_i),
        .CE(\pid_out_s[12]_i_1_n_0 ),
        .D(\pid_out_s[6]_i_1_n_0 ),
        .Q(data_o[6]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[7] 
       (.C(data_clk_i),
        .CE(\pid_out_s[12]_i_1_n_0 ),
        .D(\pid_out_s[7]_i_1_n_0 ),
        .Q(data_o[7]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[8] 
       (.C(data_clk_i),
        .CE(\pid_out_s[12]_i_1_n_0 ),
        .D(\pid_out_s[8]_i_1_n_0 ),
        .Q(data_o[8]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[9] 
       (.C(data_clk_i),
        .CE(\pid_out_s[12]_i_1_n_0 ),
        .D(\pid_out_s[9]_i_1_n_0 ),
        .Q(data_o[9]),
        .R(data_rst_i));
  CARRY4 pid_sum_s_carry
       (.CI(1'b0),
        .CO({pid_sum_s_carry_n_0,pid_sum_s_carry_n_1,pid_sum_s_carry_n_2,pid_sum_s_carry_n_3}),
        .CYINIT(1'b0),
        .DI(P_s[3:0]),
        .O(pid_sum_s[3:0]),
        .S({pid_sum_s_carry_i_1_n_0,pid_sum_s_carry_i_2_n_0,pid_sum_s_carry_i_3_n_0,pid_sum_s_carry_i_4_n_0}));
  CARRY4 pid_sum_s_carry__0
       (.CI(pid_sum_s_carry_n_0),
        .CO({pid_sum_s_carry__0_n_0,pid_sum_s_carry__0_n_1,pid_sum_s_carry__0_n_2,pid_sum_s_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(P_s[7:4]),
        .O(pid_sum_s[7:4]),
        .S({pid_sum_s_carry__0_i_1_n_0,pid_sum_s_carry__0_i_2_n_0,pid_sum_s_carry__0_i_3_n_0,pid_sum_s_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__0_i_1
       (.I0(P_s[7]),
        .I1(I_s[7]),
        .O(pid_sum_s_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__0_i_2
       (.I0(P_s[6]),
        .I1(I_s[6]),
        .O(pid_sum_s_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__0_i_3
       (.I0(P_s[5]),
        .I1(I_s[5]),
        .O(pid_sum_s_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__0_i_4
       (.I0(P_s[4]),
        .I1(I_s[4]),
        .O(pid_sum_s_carry__0_i_4_n_0));
  CARRY4 pid_sum_s_carry__1
       (.CI(pid_sum_s_carry__0_n_0),
        .CO({pid_sum_s_carry__1_n_0,pid_sum_s_carry__1_n_1,pid_sum_s_carry__1_n_2,pid_sum_s_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(P_s[11:8]),
        .O(pid_sum_s[11:8]),
        .S({pid_sum_s_carry__1_i_1_n_0,pid_sum_s_carry__1_i_2_n_0,pid_sum_s_carry__1_i_3_n_0,pid_sum_s_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__1_i_1
       (.I0(P_s[11]),
        .I1(I_s[11]),
        .O(pid_sum_s_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__1_i_2
       (.I0(P_s[10]),
        .I1(I_s[10]),
        .O(pid_sum_s_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__1_i_3
       (.I0(P_s[9]),
        .I1(I_s[9]),
        .O(pid_sum_s_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__1_i_4
       (.I0(P_s[8]),
        .I1(I_s[8]),
        .O(pid_sum_s_carry__1_i_4_n_0));
  CARRY4 pid_sum_s_carry__2
       (.CI(pid_sum_s_carry__1_n_0),
        .CO({NLW_pid_sum_s_carry__2_CO_UNCONNECTED[3:1],pid_sum_s_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,P_s[12]}),
        .O({NLW_pid_sum_s_carry__2_O_UNCONNECTED[3:2],pid_sum_s[13:12]}),
        .S({1'b0,1'b0,pid_sum_s_carry__2_i_1_n_0,pid_sum_s_carry__2_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__2_i_1
       (.I0(P_s[13]),
        .I1(I_s[13]),
        .O(pid_sum_s_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__2_i_2
       (.I0(P_s[12]),
        .I1(I_s[12]),
        .O(pid_sum_s_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry_i_1
       (.I0(P_s[3]),
        .I1(I_s[3]),
        .O(pid_sum_s_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry_i_2
       (.I0(P_s[2]),
        .I1(I_s[2]),
        .O(pid_sum_s_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry_i_3
       (.I0(P_s[1]),
        .I1(I_s[1]),
        .O(pid_sum_s_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry_i_4
       (.I0(P_s[0]),
        .I1(I_s[0]),
        .O(pid_sum_s_carry_i_4_n_0));
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
