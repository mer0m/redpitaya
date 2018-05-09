// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Wed May  9 14:48:17 2018
// Host        : ux305 running 64-bit Debian GNU/Linux testing/unstable
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_
//               pid_vco_amp_mod_pid_only_wrapper_adder_substracter_0_0_sim_netlist.v
// Design      : pid_vco_amp_mod_pid_only_wrapper_adder_substracter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_substracter
   (data_o,
    data_en_o,
    data_eof_o,
    data2_en_i,
    data2_clk_i,
    data1_en_i,
    data1_clk_i,
    data2_i,
    data1_i,
    data2_eof_i,
    data1_eof_i);
  output [14:0]data_o;
  output data_en_o;
  output data_eof_o;
  input data2_en_i;
  input data2_clk_i;
  input data1_en_i;
  input data1_clk_i;
  input [13:0]data2_i;
  input [13:0]data1_i;
  input data2_eof_i;
  input data1_eof_i;

  wire d1_en_s;
  wire d1_en_s_i_1_n_0;
  wire d1_eof_s;
  wire d1_eof_s_i_1_n_0;
  wire d2_en_s;
  wire d2_en_s_i_1_n_0;
  wire d2_eof_s;
  wire d2_eof_s_i_2_n_0;
  wire d2_eof_s_reg_n_0;
  wire data11_en_s;
  wire data11_eof_s;
  wire data11_eof_s_reg_n_0;
  wire [13:0]data11_s;
  wire data1_clk_i;
  wire data1_en_i;
  wire data1_eof_i;
  wire [13:0]data1_i;
  wire [13:0]data1_s;
  wire data21_en_s;
  wire data21_eof_s;
  wire data21_eof_s_reg_n_0;
  wire [13:0]data21_s;
  wire data2_clk_i;
  wire data2_en_i;
  wire data2_eof_i;
  wire [13:0]data2_i;
  wire [13:0]data2_s;
  wire data_en_o;
  wire data_en_s;
  wire data_en_s_i_1_n_0;
  wire data_eof_o;
  wire data_eof_o_i_1_n_0;
  wire data_eof_s;
  wire data_eof_s_i_1_n_0;
  wire data_eof_s_i_2_n_0;
  wire data_eof_s_i_3_n_0;
  wire [14:0]data_in_s;
  wire [14:0]data_o;
  wire \data_s[11]_i_2_n_0 ;
  wire \data_s[11]_i_3_n_0 ;
  wire \data_s[11]_i_4_n_0 ;
  wire \data_s[11]_i_5_n_0 ;
  wire \data_s[14]_i_2_n_0 ;
  wire \data_s[14]_i_3_n_0 ;
  wire \data_s[14]_i_4_n_0 ;
  wire \data_s[3]_i_2_n_0 ;
  wire \data_s[3]_i_3_n_0 ;
  wire \data_s[3]_i_4_n_0 ;
  wire \data_s[3]_i_5_n_0 ;
  wire \data_s[7]_i_2_n_0 ;
  wire \data_s[7]_i_3_n_0 ;
  wire \data_s[7]_i_4_n_0 ;
  wire \data_s[7]_i_5_n_0 ;
  wire \data_s_reg[11]_i_1_n_0 ;
  wire \data_s_reg[11]_i_1_n_1 ;
  wire \data_s_reg[11]_i_1_n_2 ;
  wire \data_s_reg[11]_i_1_n_3 ;
  wire \data_s_reg[14]_i_1_n_2 ;
  wire \data_s_reg[14]_i_1_n_3 ;
  wire \data_s_reg[3]_i_1_n_0 ;
  wire \data_s_reg[3]_i_1_n_1 ;
  wire \data_s_reg[3]_i_1_n_2 ;
  wire \data_s_reg[3]_i_1_n_3 ;
  wire \data_s_reg[7]_i_1_n_0 ;
  wire \data_s_reg[7]_i_1_n_1 ;
  wire \data_s_reg[7]_i_1_n_2 ;
  wire \data_s_reg[7]_i_1_n_3 ;
  wire [3:2]\NLW_data_s_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_data_s_reg[14]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0704)) 
    d1_en_s_i_1
       (.I0(d2_en_s),
        .I1(data11_en_s),
        .I2(data21_en_s),
        .I3(d1_en_s),
        .O(d1_en_s_i_1_n_0));
  FDRE d1_en_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(d1_en_s_i_1_n_0),
        .Q(d1_en_s),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0737040403330000)) 
    d1_eof_s_i_1
       (.I0(d2_en_s),
        .I1(data11_en_s),
        .I2(data21_en_s),
        .I3(d1_en_s),
        .I4(d1_eof_s),
        .I5(data11_eof_s_reg_n_0),
        .O(d1_eof_s_i_1_n_0));
  FDRE d1_eof_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(d1_eof_s_i_1_n_0),
        .Q(d1_eof_s),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0232)) 
    d2_en_s_i_1
       (.I0(d2_en_s),
        .I1(data11_en_s),
        .I2(data21_en_s),
        .I3(d1_en_s),
        .O(d2_en_s_i_1_n_0));
  FDRE d2_en_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(d2_en_s_i_1_n_0),
        .Q(d2_en_s),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF8C8)) 
    d2_eof_s_i_1
       (.I0(d2_en_s),
        .I1(data11_en_s),
        .I2(data21_en_s),
        .I3(d1_en_s),
        .O(d2_eof_s));
  LUT3 #(
    .INIT(8'hB8)) 
    d2_eof_s_i_2
       (.I0(data21_eof_s_reg_n_0),
        .I1(data21_en_s),
        .I2(d2_eof_s_reg_n_0),
        .O(d2_eof_s_i_2_n_0));
  FDRE d2_eof_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(d2_eof_s_i_2_n_0),
        .Q(d2_eof_s_reg_n_0),
        .R(d2_eof_s));
  FDRE data11_en_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data1_en_i),
        .Q(data11_en_s),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    data11_eof_s_i_1
       (.I0(data1_en_i),
        .I1(data1_eof_i),
        .O(data11_eof_s));
  FDRE data11_eof_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data11_eof_s),
        .Q(data11_eof_s_reg_n_0),
        .R(1'b0));
  FDRE \data11_s_reg[0] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(data1_i[0]),
        .Q(data11_s[0]),
        .R(1'b0));
  FDRE \data11_s_reg[10] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(data1_i[10]),
        .Q(data11_s[10]),
        .R(1'b0));
  FDRE \data11_s_reg[11] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(data1_i[11]),
        .Q(data11_s[11]),
        .R(1'b0));
  FDRE \data11_s_reg[12] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(data1_i[12]),
        .Q(data11_s[12]),
        .R(1'b0));
  FDRE \data11_s_reg[13] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(data1_i[13]),
        .Q(data11_s[13]),
        .R(1'b0));
  FDRE \data11_s_reg[1] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(data1_i[1]),
        .Q(data11_s[1]),
        .R(1'b0));
  FDRE \data11_s_reg[2] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(data1_i[2]),
        .Q(data11_s[2]),
        .R(1'b0));
  FDRE \data11_s_reg[3] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(data1_i[3]),
        .Q(data11_s[3]),
        .R(1'b0));
  FDRE \data11_s_reg[4] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(data1_i[4]),
        .Q(data11_s[4]),
        .R(1'b0));
  FDRE \data11_s_reg[5] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(data1_i[5]),
        .Q(data11_s[5]),
        .R(1'b0));
  FDRE \data11_s_reg[6] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(data1_i[6]),
        .Q(data11_s[6]),
        .R(1'b0));
  FDRE \data11_s_reg[7] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(data1_i[7]),
        .Q(data11_s[7]),
        .R(1'b0));
  FDRE \data11_s_reg[8] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(data1_i[8]),
        .Q(data11_s[8]),
        .R(1'b0));
  FDRE \data11_s_reg[9] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(data1_i[9]),
        .Q(data11_s[9]),
        .R(1'b0));
  FDRE \data1_s_reg[0] 
       (.C(data1_clk_i),
        .CE(data11_en_s),
        .D(data11_s[0]),
        .Q(data1_s[0]),
        .R(1'b0));
  FDRE \data1_s_reg[10] 
       (.C(data1_clk_i),
        .CE(data11_en_s),
        .D(data11_s[10]),
        .Q(data1_s[10]),
        .R(1'b0));
  FDRE \data1_s_reg[11] 
       (.C(data1_clk_i),
        .CE(data11_en_s),
        .D(data11_s[11]),
        .Q(data1_s[11]),
        .R(1'b0));
  FDRE \data1_s_reg[12] 
       (.C(data1_clk_i),
        .CE(data11_en_s),
        .D(data11_s[12]),
        .Q(data1_s[12]),
        .R(1'b0));
  FDRE \data1_s_reg[13] 
       (.C(data1_clk_i),
        .CE(data11_en_s),
        .D(data11_s[13]),
        .Q(data1_s[13]),
        .R(1'b0));
  FDRE \data1_s_reg[1] 
       (.C(data1_clk_i),
        .CE(data11_en_s),
        .D(data11_s[1]),
        .Q(data1_s[1]),
        .R(1'b0));
  FDRE \data1_s_reg[2] 
       (.C(data1_clk_i),
        .CE(data11_en_s),
        .D(data11_s[2]),
        .Q(data1_s[2]),
        .R(1'b0));
  FDRE \data1_s_reg[3] 
       (.C(data1_clk_i),
        .CE(data11_en_s),
        .D(data11_s[3]),
        .Q(data1_s[3]),
        .R(1'b0));
  FDRE \data1_s_reg[4] 
       (.C(data1_clk_i),
        .CE(data11_en_s),
        .D(data11_s[4]),
        .Q(data1_s[4]),
        .R(1'b0));
  FDRE \data1_s_reg[5] 
       (.C(data1_clk_i),
        .CE(data11_en_s),
        .D(data11_s[5]),
        .Q(data1_s[5]),
        .R(1'b0));
  FDRE \data1_s_reg[6] 
       (.C(data1_clk_i),
        .CE(data11_en_s),
        .D(data11_s[6]),
        .Q(data1_s[6]),
        .R(1'b0));
  FDRE \data1_s_reg[7] 
       (.C(data1_clk_i),
        .CE(data11_en_s),
        .D(data11_s[7]),
        .Q(data1_s[7]),
        .R(1'b0));
  FDRE \data1_s_reg[8] 
       (.C(data1_clk_i),
        .CE(data11_en_s),
        .D(data11_s[8]),
        .Q(data1_s[8]),
        .R(1'b0));
  FDRE \data1_s_reg[9] 
       (.C(data1_clk_i),
        .CE(data11_en_s),
        .D(data11_s[9]),
        .Q(data1_s[9]),
        .R(1'b0));
  FDRE data21_en_s_reg
       (.C(data2_clk_i),
        .CE(1'b1),
        .D(data2_en_i),
        .Q(data21_en_s),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    data21_eof_s_i_1
       (.I0(data2_en_i),
        .I1(data2_eof_i),
        .O(data21_eof_s));
  FDRE data21_eof_s_reg
       (.C(data2_clk_i),
        .CE(1'b1),
        .D(data21_eof_s),
        .Q(data21_eof_s_reg_n_0),
        .R(1'b0));
  FDRE \data21_s_reg[0] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(data2_i[0]),
        .Q(data21_s[0]),
        .R(1'b0));
  FDRE \data21_s_reg[10] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(data2_i[10]),
        .Q(data21_s[10]),
        .R(1'b0));
  FDRE \data21_s_reg[11] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(data2_i[11]),
        .Q(data21_s[11]),
        .R(1'b0));
  FDRE \data21_s_reg[12] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(data2_i[12]),
        .Q(data21_s[12]),
        .R(1'b0));
  FDRE \data21_s_reg[13] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(data2_i[13]),
        .Q(data21_s[13]),
        .R(1'b0));
  FDRE \data21_s_reg[1] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(data2_i[1]),
        .Q(data21_s[1]),
        .R(1'b0));
  FDRE \data21_s_reg[2] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(data2_i[2]),
        .Q(data21_s[2]),
        .R(1'b0));
  FDRE \data21_s_reg[3] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(data2_i[3]),
        .Q(data21_s[3]),
        .R(1'b0));
  FDRE \data21_s_reg[4] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(data2_i[4]),
        .Q(data21_s[4]),
        .R(1'b0));
  FDRE \data21_s_reg[5] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(data2_i[5]),
        .Q(data21_s[5]),
        .R(1'b0));
  FDRE \data21_s_reg[6] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(data2_i[6]),
        .Q(data21_s[6]),
        .R(1'b0));
  FDRE \data21_s_reg[7] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(data2_i[7]),
        .Q(data21_s[7]),
        .R(1'b0));
  FDRE \data21_s_reg[8] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(data2_i[8]),
        .Q(data21_s[8]),
        .R(1'b0));
  FDRE \data21_s_reg[9] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(data2_i[9]),
        .Q(data21_s[9]),
        .R(1'b0));
  FDRE \data2_s_reg[0] 
       (.C(data1_clk_i),
        .CE(data21_en_s),
        .D(data21_s[0]),
        .Q(data2_s[0]),
        .R(1'b0));
  FDRE \data2_s_reg[10] 
       (.C(data1_clk_i),
        .CE(data21_en_s),
        .D(data21_s[10]),
        .Q(data2_s[10]),
        .R(1'b0));
  FDRE \data2_s_reg[11] 
       (.C(data1_clk_i),
        .CE(data21_en_s),
        .D(data21_s[11]),
        .Q(data2_s[11]),
        .R(1'b0));
  FDRE \data2_s_reg[12] 
       (.C(data1_clk_i),
        .CE(data21_en_s),
        .D(data21_s[12]),
        .Q(data2_s[12]),
        .R(1'b0));
  FDRE \data2_s_reg[13] 
       (.C(data1_clk_i),
        .CE(data21_en_s),
        .D(data21_s[13]),
        .Q(data2_s[13]),
        .R(1'b0));
  FDRE \data2_s_reg[1] 
       (.C(data1_clk_i),
        .CE(data21_en_s),
        .D(data21_s[1]),
        .Q(data2_s[1]),
        .R(1'b0));
  FDRE \data2_s_reg[2] 
       (.C(data1_clk_i),
        .CE(data21_en_s),
        .D(data21_s[2]),
        .Q(data2_s[2]),
        .R(1'b0));
  FDRE \data2_s_reg[3] 
       (.C(data1_clk_i),
        .CE(data21_en_s),
        .D(data21_s[3]),
        .Q(data2_s[3]),
        .R(1'b0));
  FDRE \data2_s_reg[4] 
       (.C(data1_clk_i),
        .CE(data21_en_s),
        .D(data21_s[4]),
        .Q(data2_s[4]),
        .R(1'b0));
  FDRE \data2_s_reg[5] 
       (.C(data1_clk_i),
        .CE(data21_en_s),
        .D(data21_s[5]),
        .Q(data2_s[5]),
        .R(1'b0));
  FDRE \data2_s_reg[6] 
       (.C(data1_clk_i),
        .CE(data21_en_s),
        .D(data21_s[6]),
        .Q(data2_s[6]),
        .R(1'b0));
  FDRE \data2_s_reg[7] 
       (.C(data1_clk_i),
        .CE(data21_en_s),
        .D(data21_s[7]),
        .Q(data2_s[7]),
        .R(1'b0));
  FDRE \data2_s_reg[8] 
       (.C(data1_clk_i),
        .CE(data21_en_s),
        .D(data21_s[8]),
        .Q(data2_s[8]),
        .R(1'b0));
  FDRE \data2_s_reg[9] 
       (.C(data1_clk_i),
        .CE(data21_en_s),
        .D(data21_s[9]),
        .Q(data2_s[9]),
        .R(1'b0));
  FDRE data_en_o_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data_en_s),
        .Q(data_en_o),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEAC8)) 
    data_en_s_i_1
       (.I0(data21_en_s),
        .I1(data11_en_s),
        .I2(d2_en_s),
        .I3(d1_en_s),
        .O(data_en_s_i_1_n_0));
  FDRE data_en_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data_en_s_i_1_n_0),
        .Q(data_en_s),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    data_eof_o_i_1
       (.I0(data_en_s),
        .I1(data_eof_s),
        .O(data_eof_o_i_1_n_0));
  FDRE data_eof_o_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data_eof_o_i_1_n_0),
        .Q(data_eof_o),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF8C80000)) 
    data_eof_s_i_1
       (.I0(d2_en_s),
        .I1(data11_en_s),
        .I2(data21_en_s),
        .I3(d1_en_s),
        .I4(data_eof_s_i_2_n_0),
        .O(data_eof_s_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    data_eof_s_i_2
       (.I0(d2_eof_s_reg_n_0),
        .I1(data11_eof_s_reg_n_0),
        .I2(d2_en_s),
        .I3(data11_en_s),
        .I4(data_eof_s_i_3_n_0),
        .I5(data21_eof_s_reg_n_0),
        .O(data_eof_s_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000EA2AEA2AEA2A)) 
    data_eof_s_i_3
       (.I0(data11_eof_s_reg_n_0),
        .I1(d1_en_s),
        .I2(data21_en_s),
        .I3(d1_eof_s),
        .I4(d2_en_s),
        .I5(data11_en_s),
        .O(data_eof_s_i_3_n_0));
  FDRE data_eof_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(data_eof_s_i_1_n_0),
        .Q(data_eof_s),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[11]_i_2 
       (.I0(data1_s[11]),
        .I1(data2_s[11]),
        .O(\data_s[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[11]_i_3 
       (.I0(data1_s[10]),
        .I1(data2_s[10]),
        .O(\data_s[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[11]_i_4 
       (.I0(data1_s[9]),
        .I1(data2_s[9]),
        .O(\data_s[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[11]_i_5 
       (.I0(data1_s[8]),
        .I1(data2_s[8]),
        .O(\data_s[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_s[14]_i_2 
       (.I0(data1_s[13]),
        .O(\data_s[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[14]_i_3 
       (.I0(data1_s[13]),
        .I1(data2_s[13]),
        .O(\data_s[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[14]_i_4 
       (.I0(data1_s[12]),
        .I1(data2_s[12]),
        .O(\data_s[14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[3]_i_2 
       (.I0(data1_s[3]),
        .I1(data2_s[3]),
        .O(\data_s[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[3]_i_3 
       (.I0(data1_s[2]),
        .I1(data2_s[2]),
        .O(\data_s[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[3]_i_4 
       (.I0(data1_s[1]),
        .I1(data2_s[1]),
        .O(\data_s[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[3]_i_5 
       (.I0(data1_s[0]),
        .I1(data2_s[0]),
        .O(\data_s[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[7]_i_2 
       (.I0(data1_s[7]),
        .I1(data2_s[7]),
        .O(\data_s[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[7]_i_3 
       (.I0(data1_s[6]),
        .I1(data2_s[6]),
        .O(\data_s[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[7]_i_4 
       (.I0(data1_s[5]),
        .I1(data2_s[5]),
        .O(\data_s[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[7]_i_5 
       (.I0(data1_s[4]),
        .I1(data2_s[4]),
        .O(\data_s[7]_i_5_n_0 ));
  FDRE \data_s_reg[0] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[0]),
        .Q(data_o[0]),
        .R(1'b0));
  FDRE \data_s_reg[10] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[10]),
        .Q(data_o[10]),
        .R(1'b0));
  FDRE \data_s_reg[11] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[11]),
        .Q(data_o[11]),
        .R(1'b0));
  CARRY4 \data_s_reg[11]_i_1 
       (.CI(\data_s_reg[7]_i_1_n_0 ),
        .CO({\data_s_reg[11]_i_1_n_0 ,\data_s_reg[11]_i_1_n_1 ,\data_s_reg[11]_i_1_n_2 ,\data_s_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data1_s[11:8]),
        .O(data_in_s[11:8]),
        .S({\data_s[11]_i_2_n_0 ,\data_s[11]_i_3_n_0 ,\data_s[11]_i_4_n_0 ,\data_s[11]_i_5_n_0 }));
  FDRE \data_s_reg[12] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[12]),
        .Q(data_o[12]),
        .R(1'b0));
  FDRE \data_s_reg[13] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[13]),
        .Q(data_o[13]),
        .R(1'b0));
  FDRE \data_s_reg[14] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[14]),
        .Q(data_o[14]),
        .R(1'b0));
  CARRY4 \data_s_reg[14]_i_1 
       (.CI(\data_s_reg[11]_i_1_n_0 ),
        .CO({\NLW_data_s_reg[14]_i_1_CO_UNCONNECTED [3:2],\data_s_reg[14]_i_1_n_2 ,\data_s_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\data_s[14]_i_2_n_0 ,data1_s[12]}),
        .O({\NLW_data_s_reg[14]_i_1_O_UNCONNECTED [3],data_in_s[14:12]}),
        .S({1'b0,1'b1,\data_s[14]_i_3_n_0 ,\data_s[14]_i_4_n_0 }));
  FDRE \data_s_reg[1] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[1]),
        .Q(data_o[1]),
        .R(1'b0));
  FDRE \data_s_reg[2] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[2]),
        .Q(data_o[2]),
        .R(1'b0));
  FDRE \data_s_reg[3] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[3]),
        .Q(data_o[3]),
        .R(1'b0));
  CARRY4 \data_s_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\data_s_reg[3]_i_1_n_0 ,\data_s_reg[3]_i_1_n_1 ,\data_s_reg[3]_i_1_n_2 ,\data_s_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data1_s[3:0]),
        .O(data_in_s[3:0]),
        .S({\data_s[3]_i_2_n_0 ,\data_s[3]_i_3_n_0 ,\data_s[3]_i_4_n_0 ,\data_s[3]_i_5_n_0 }));
  FDRE \data_s_reg[4] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[4]),
        .Q(data_o[4]),
        .R(1'b0));
  FDRE \data_s_reg[5] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[5]),
        .Q(data_o[5]),
        .R(1'b0));
  FDRE \data_s_reg[6] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[6]),
        .Q(data_o[6]),
        .R(1'b0));
  FDRE \data_s_reg[7] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[7]),
        .Q(data_o[7]),
        .R(1'b0));
  CARRY4 \data_s_reg[7]_i_1 
       (.CI(\data_s_reg[3]_i_1_n_0 ),
        .CO({\data_s_reg[7]_i_1_n_0 ,\data_s_reg[7]_i_1_n_1 ,\data_s_reg[7]_i_1_n_2 ,\data_s_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data1_s[7:4]),
        .O(data_in_s[7:4]),
        .S({\data_s[7]_i_2_n_0 ,\data_s[7]_i_3_n_0 ,\data_s[7]_i_4_n_0 ,\data_s[7]_i_5_n_0 }));
  FDRE \data_s_reg[8] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[8]),
        .Q(data_o[8]),
        .R(1'b0));
  FDRE \data_s_reg[9] 
       (.C(data1_clk_i),
        .CE(data_en_s),
        .D(data_in_s[9]),
        .Q(data_o[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "pid_vco_amp_mod_pid_only_wrapper_adder_substracter_0_0,adder_substracter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "adder_substracter,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (data1_i,
    data1_en_i,
    data1_eof_i,
    data1_clk_i,
    data1_rst_i,
    data2_i,
    data2_en_i,
    data2_eof_i,
    data2_clk_i,
    data2_rst_i,
    data_o,
    data_en_o,
    data_eof_o,
    data_clk_o,
    data_rst_o);
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1 DATA" *) input [13:0]data1_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1 DATA_EN" *) input data1_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1 DATA_EOF" *) input data1_eof_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1 DATA_CLK" *) input data1_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1 DATA_RST" *) input data1_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2 DATA" *) input [13:0]data2_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2 DATA_EN" *) input data2_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2 DATA_EOF" *) input data2_eof_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2 DATA_CLK" *) input data2_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2 DATA_RST" *) input data2_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA" *) output [14:0]data_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EN" *) output data_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EOF" *) output data_eof_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_CLK" *) output data_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_RST" *) output data_rst_o;

  wire data1_clk_i;
  wire data1_en_i;
  wire data1_eof_i;
  wire [13:0]data1_i;
  wire data1_rst_i;
  wire data2_clk_i;
  wire data2_en_i;
  wire data2_eof_i;
  wire [13:0]data2_i;
  wire data_en_o;
  wire data_eof_o;
  wire [14:0]data_o;

  assign data_clk_o = data1_clk_i;
  assign data_rst_o = data1_rst_i;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_substracter U0
       (.data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_eof_i(data1_eof_i),
        .data1_i(data1_i),
        .data2_clk_i(data2_clk_i),
        .data2_en_i(data2_en_i),
        .data2_eof_i(data2_eof_i),
        .data2_i(data2_i),
        .data_en_o(data_en_o),
        .data_eof_o(data_eof_o),
        .data_o(data_o));
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
