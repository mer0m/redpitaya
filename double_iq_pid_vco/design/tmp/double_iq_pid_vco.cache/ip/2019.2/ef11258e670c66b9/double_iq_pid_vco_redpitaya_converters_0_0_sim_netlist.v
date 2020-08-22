// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri May 15 18:51:21 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_iq_pid_vco_redpitaya_converters_0_0_sim_netlist.v
// Design      : double_iq_pid_vco_redpitaya_converters_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad9767
   (dac_clk_o,
    dac_wrt_o,
    dac_sel_o,
    dac_rst_o,
    dac_dat_o,
    dac_2ph_s,
    dac_2clk_s,
    CLK,
    p_0_in,
    dac_dat_b_en_i,
    dac_dat_b_i,
    dac_dat_a_en_i,
    dac_dat_a_i);
  output dac_clk_o;
  output dac_wrt_o;
  output dac_sel_o;
  output dac_rst_o;
  output [13:0]dac_dat_o;
  input dac_2ph_s;
  input dac_2clk_s;
  input CLK;
  input p_0_in;
  input dac_dat_b_en_i;
  input [13:0]dac_dat_b_i;
  input dac_dat_a_en_i;
  input [13:0]dac_dat_a_i;

  wire CLK;
  wire dac_2clk_s;
  wire dac_2ph_s;
  wire dac_clk_o;
  wire [13:0]dac_dat_a;
  wire \dac_dat_a[0]_i_1_n_0 ;
  wire \dac_dat_a[10]_i_1_n_0 ;
  wire \dac_dat_a[11]_i_1_n_0 ;
  wire \dac_dat_a[12]_i_1_n_0 ;
  wire \dac_dat_a[1]_i_1_n_0 ;
  wire \dac_dat_a[2]_i_1_n_0 ;
  wire \dac_dat_a[3]_i_1_n_0 ;
  wire \dac_dat_a[4]_i_1_n_0 ;
  wire \dac_dat_a[5]_i_1_n_0 ;
  wire \dac_dat_a[6]_i_1_n_0 ;
  wire \dac_dat_a[7]_i_1_n_0 ;
  wire \dac_dat_a[8]_i_1_n_0 ;
  wire \dac_dat_a[9]_i_1_n_0 ;
  wire dac_dat_a_en_i;
  wire [13:0]dac_dat_a_i;
  wire [13:0]dac_dat_a_s;
  wire [13:0]dac_dat_b;
  wire dac_dat_b_en_i;
  wire [13:0]dac_dat_b_i;
  wire [13:0]dac_dat_b_s;
  wire [13:0]dac_dat_o;
  wire dac_rst;
  wire dac_rst_o;
  wire dac_sel_o;
  wire dac_wrt_o;
  wire p_0_in;
  wire [12:0]p_1_out;
  wire NLW_i_dac_0_S_UNCONNECTED;
  wire NLW_i_dac_1_S_UNCONNECTED;
  wire NLW_i_dac_10_S_UNCONNECTED;
  wire NLW_i_dac_11_S_UNCONNECTED;
  wire NLW_i_dac_12_S_UNCONNECTED;
  wire NLW_i_dac_13_S_UNCONNECTED;
  wire NLW_i_dac_2_S_UNCONNECTED;
  wire NLW_i_dac_3_S_UNCONNECTED;
  wire NLW_i_dac_4_S_UNCONNECTED;
  wire NLW_i_dac_5_S_UNCONNECTED;
  wire NLW_i_dac_6_S_UNCONNECTED;
  wire NLW_i_dac_7_S_UNCONNECTED;
  wire NLW_i_dac_8_S_UNCONNECTED;
  wire NLW_i_dac_9_S_UNCONNECTED;
  wire NLW_i_dac_clk_S_UNCONNECTED;
  wire NLW_i_dac_rst_R_UNCONNECTED;
  wire NLW_i_dac_rst_S_UNCONNECTED;
  wire NLW_i_dac_sel_S_UNCONNECTED;
  wire NLW_i_dac_wrt_S_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[0]_i_1 
       (.I0(dac_dat_a_s[0]),
        .O(\dac_dat_a[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[10]_i_1 
       (.I0(dac_dat_a_s[10]),
        .O(\dac_dat_a[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[11]_i_1 
       (.I0(dac_dat_a_s[11]),
        .O(\dac_dat_a[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[12]_i_1 
       (.I0(dac_dat_a_s[12]),
        .O(\dac_dat_a[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[1]_i_1 
       (.I0(dac_dat_a_s[1]),
        .O(\dac_dat_a[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[2]_i_1 
       (.I0(dac_dat_a_s[2]),
        .O(\dac_dat_a[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[3]_i_1 
       (.I0(dac_dat_a_s[3]),
        .O(\dac_dat_a[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[4]_i_1 
       (.I0(dac_dat_a_s[4]),
        .O(\dac_dat_a[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[5]_i_1 
       (.I0(dac_dat_a_s[5]),
        .O(\dac_dat_a[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[6]_i_1 
       (.I0(dac_dat_a_s[6]),
        .O(\dac_dat_a[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[7]_i_1 
       (.I0(dac_dat_a_s[7]),
        .O(\dac_dat_a[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[8]_i_1 
       (.I0(dac_dat_a_s[8]),
        .O(\dac_dat_a[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[9]_i_1 
       (.I0(dac_dat_a_s[9]),
        .O(\dac_dat_a[9]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dac_dat_a[0]_i_1_n_0 ),
        .Q(dac_dat_a[0]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dac_dat_a[10]_i_1_n_0 ),
        .Q(dac_dat_a[10]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dac_dat_a[11]_i_1_n_0 ),
        .Q(dac_dat_a[11]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dac_dat_a[12]_i_1_n_0 ),
        .Q(dac_dat_a[12]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(dac_dat_a_s[13]),
        .Q(dac_dat_a[13]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dac_dat_a[1]_i_1_n_0 ),
        .Q(dac_dat_a[1]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dac_dat_a[2]_i_1_n_0 ),
        .Q(dac_dat_a[2]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dac_dat_a[3]_i_1_n_0 ),
        .Q(dac_dat_a[3]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dac_dat_a[4]_i_1_n_0 ),
        .Q(dac_dat_a[4]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dac_dat_a[5]_i_1_n_0 ),
        .Q(dac_dat_a[5]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dac_dat_a[6]_i_1_n_0 ),
        .Q(dac_dat_a[6]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dac_dat_a[7]_i_1_n_0 ),
        .Q(dac_dat_a[7]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dac_dat_a[8]_i_1_n_0 ),
        .Q(dac_dat_a[8]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dac_dat_a[9]_i_1_n_0 ),
        .Q(dac_dat_a[9]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[0] 
       (.C(CLK),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[0]),
        .Q(dac_dat_a_s[0]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[10] 
       (.C(CLK),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[10]),
        .Q(dac_dat_a_s[10]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[11] 
       (.C(CLK),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[11]),
        .Q(dac_dat_a_s[11]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[12] 
       (.C(CLK),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[12]),
        .Q(dac_dat_a_s[12]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[13] 
       (.C(CLK),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[13]),
        .Q(dac_dat_a_s[13]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[1] 
       (.C(CLK),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[1]),
        .Q(dac_dat_a_s[1]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[2] 
       (.C(CLK),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[2]),
        .Q(dac_dat_a_s[2]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[3] 
       (.C(CLK),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[3]),
        .Q(dac_dat_a_s[3]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[4] 
       (.C(CLK),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[4]),
        .Q(dac_dat_a_s[4]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[5] 
       (.C(CLK),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[5]),
        .Q(dac_dat_a_s[5]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[6] 
       (.C(CLK),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[6]),
        .Q(dac_dat_a_s[6]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[7] 
       (.C(CLK),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[7]),
        .Q(dac_dat_a_s[7]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[8] 
       (.C(CLK),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[8]),
        .Q(dac_dat_a_s[8]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[9] 
       (.C(CLK),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[9]),
        .Q(dac_dat_a_s[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[0]_i_1 
       (.I0(dac_dat_b_s[0]),
        .O(p_1_out[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[10]_i_1 
       (.I0(dac_dat_b_s[10]),
        .O(p_1_out[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[11]_i_1 
       (.I0(dac_dat_b_s[11]),
        .O(p_1_out[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[12]_i_1 
       (.I0(dac_dat_b_s[12]),
        .O(p_1_out[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[1]_i_1 
       (.I0(dac_dat_b_s[1]),
        .O(p_1_out[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[2]_i_1 
       (.I0(dac_dat_b_s[2]),
        .O(p_1_out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[3]_i_1 
       (.I0(dac_dat_b_s[3]),
        .O(p_1_out[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[4]_i_1 
       (.I0(dac_dat_b_s[4]),
        .O(p_1_out[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[5]_i_1 
       (.I0(dac_dat_b_s[5]),
        .O(p_1_out[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[6]_i_1 
       (.I0(dac_dat_b_s[6]),
        .O(p_1_out[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[7]_i_1 
       (.I0(dac_dat_b_s[7]),
        .O(p_1_out[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[8]_i_1 
       (.I0(dac_dat_b_s[8]),
        .O(p_1_out[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[9]_i_1 
       (.I0(dac_dat_b_s[9]),
        .O(p_1_out[9]));
  FDRE \dac_dat_b_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out[0]),
        .Q(dac_dat_b[0]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out[10]),
        .Q(dac_dat_b[10]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out[11]),
        .Q(dac_dat_b[11]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out[12]),
        .Q(dac_dat_b[12]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(dac_dat_b_s[13]),
        .Q(dac_dat_b[13]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out[1]),
        .Q(dac_dat_b[1]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out[2]),
        .Q(dac_dat_b[2]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out[3]),
        .Q(dac_dat_b[3]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out[4]),
        .Q(dac_dat_b[4]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out[5]),
        .Q(dac_dat_b[5]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out[6]),
        .Q(dac_dat_b[6]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out[7]),
        .Q(dac_dat_b[7]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out[8]),
        .Q(dac_dat_b[8]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out[9]),
        .Q(dac_dat_b[9]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[0] 
       (.C(CLK),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[0]),
        .Q(dac_dat_b_s[0]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[10] 
       (.C(CLK),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[10]),
        .Q(dac_dat_b_s[10]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[11] 
       (.C(CLK),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[11]),
        .Q(dac_dat_b_s[11]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[12] 
       (.C(CLK),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[12]),
        .Q(dac_dat_b_s[12]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[13] 
       (.C(CLK),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[13]),
        .Q(dac_dat_b_s[13]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[1] 
       (.C(CLK),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[1]),
        .Q(dac_dat_b_s[1]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[2] 
       (.C(CLK),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[2]),
        .Q(dac_dat_b_s[2]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[3] 
       (.C(CLK),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[3]),
        .Q(dac_dat_b_s[3]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[4] 
       (.C(CLK),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[4]),
        .Q(dac_dat_b_s[4]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[5] 
       (.C(CLK),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[5]),
        .Q(dac_dat_b_s[5]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[6] 
       (.C(CLK),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[6]),
        .Q(dac_dat_b_s[6]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[7] 
       (.C(CLK),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[7]),
        .Q(dac_dat_b_s[7]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[8] 
       (.C(CLK),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[8]),
        .Q(dac_dat_b_s[8]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[9] 
       (.C(CLK),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[9]),
        .Q(dac_dat_b_s[9]),
        .R(1'b0));
  FDRE dac_rst_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(dac_rst),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_0
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_dat_b[0]),
        .D2(dac_dat_a[0]),
        .Q(dac_dat_o[0]),
        .R(dac_rst),
        .S(NLW_i_dac_0_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_1
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_dat_b[1]),
        .D2(dac_dat_a[1]),
        .Q(dac_dat_o[1]),
        .R(dac_rst),
        .S(NLW_i_dac_1_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_10
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_dat_b[10]),
        .D2(dac_dat_a[10]),
        .Q(dac_dat_o[10]),
        .R(dac_rst),
        .S(NLW_i_dac_10_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_11
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_dat_b[11]),
        .D2(dac_dat_a[11]),
        .Q(dac_dat_o[11]),
        .R(dac_rst),
        .S(NLW_i_dac_11_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_12
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_dat_b[12]),
        .D2(dac_dat_a[12]),
        .Q(dac_dat_o[12]),
        .R(dac_rst),
        .S(NLW_i_dac_12_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_13
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_dat_b[13]),
        .D2(dac_dat_a[13]),
        .Q(dac_dat_o[13]),
        .R(dac_rst),
        .S(NLW_i_dac_13_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_2
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_dat_b[2]),
        .D2(dac_dat_a[2]),
        .Q(dac_dat_o[2]),
        .R(dac_rst),
        .S(NLW_i_dac_2_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_3
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_dat_b[3]),
        .D2(dac_dat_a[3]),
        .Q(dac_dat_o[3]),
        .R(dac_rst),
        .S(NLW_i_dac_3_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_4
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_dat_b[4]),
        .D2(dac_dat_a[4]),
        .Q(dac_dat_o[4]),
        .R(dac_rst),
        .S(NLW_i_dac_4_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_5
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_dat_b[5]),
        .D2(dac_dat_a[5]),
        .Q(dac_dat_o[5]),
        .R(dac_rst),
        .S(NLW_i_dac_5_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_6
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_dat_b[6]),
        .D2(dac_dat_a[6]),
        .Q(dac_dat_o[6]),
        .R(dac_rst),
        .S(NLW_i_dac_6_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_7
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_dat_b[7]),
        .D2(dac_dat_a[7]),
        .Q(dac_dat_o[7]),
        .R(dac_rst),
        .S(NLW_i_dac_7_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_8
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_dat_b[8]),
        .D2(dac_dat_a[8]),
        .Q(dac_dat_o[8]),
        .R(dac_rst),
        .S(NLW_i_dac_8_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_9
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_dat_b[9]),
        .D2(dac_dat_a[9]),
        .Q(dac_dat_o[9]),
        .R(dac_rst),
        .S(NLW_i_dac_9_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_clk
       (.C(dac_2ph_s),
        .CE(1'b1),
        .D1(1'b0),
        .D2(1'b1),
        .Q(dac_clk_o),
        .R(dac_rst),
        .S(NLW_i_dac_clk_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_rst
       (.C(CLK),
        .CE(1'b1),
        .D1(dac_rst),
        .D2(dac_rst),
        .Q(dac_rst_o),
        .R(NLW_i_dac_rst_R_UNCONNECTED),
        .S(NLW_i_dac_rst_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_sel
       (.C(CLK),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(dac_sel_o),
        .R(dac_rst),
        .S(NLW_i_dac_sel_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_wrt
       (.C(dac_2clk_s),
        .CE(1'b1),
        .D1(1'b0),
        .D2(1'b1),
        .Q(dac_wrt_o),
        .R(dac_rst),
        .S(NLW_i_dac_wrt_S_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "double_iq_pid_vco_redpitaya_converters_0_0,redpitaya_converters,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "redpitaya_converters,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (adc_rst_i,
    clk_o,
    rst_o,
    rstn_o,
    adc_clk_p_i,
    adc_clk_n_i,
    adc_data_a_i,
    adc_data_b_i,
    adc_cdcs,
    data_a_o,
    data_a_en_o,
    data_a_clk_o,
    data_a_rst_o,
    data_b_o,
    data_b_en_o,
    data_b_clk_o,
    data_b_rst_o,
    dac_dat_a_en_i,
    dac_dat_a_rst_i,
    dac_dat_a_i,
    dac_dat_b_en_i,
    dac_dat_b_rst_i,
    dac_dat_b_i,
    dac_dat_o,
    dac_wrt_o,
    dac_sel_o,
    dac_clk_o,
    dac_rst_o);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 adc_rst_i RST" *) (* x_interface_parameter = "XIL_INTERFACENAME adc_rst_i, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input adc_rst_i;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_o CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_o, ASSOCIATED_BUSIF dataA_out:dataB_out:dataA_in:dataB_in, ASSOCIATED_RESET rst_o:rstn_o, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_redpitaya_converters_0_0_clk_o, INSERT_VIP 0" *) output clk_o;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_o RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_o, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) output rst_o;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rstn_o RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rstn_o, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output rstn_o;
  (* x_interface_info = "ggm:interface:redpitaya_converters_if:1.0 phys_interface CLK_P" *) input adc_clk_p_i;
  (* x_interface_info = "ggm:interface:redpitaya_converters_if:1.0 phys_interface CLK_N" *) input adc_clk_n_i;
  (* x_interface_info = "ggm:interface:redpitaya_converters_if:1.0 phys_interface ADC_A" *) input [13:0]adc_data_a_i;
  (* x_interface_info = "ggm:interface:redpitaya_converters_if:1.0 phys_interface ADC_B" *) input [13:0]adc_data_b_i;
  (* x_interface_info = "ggm:interface:redpitaya_converters_if:1.0 phys_interface ADC_CDCS" *) output adc_cdcs;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataA_out DATA" *) output [13:0]data_a_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataA_out DATA_EN" *) output data_a_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataA_out DATA_CLK" *) output data_a_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataA_out DATA_RST" *) output data_a_rst_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataB_out DATA" *) output [13:0]data_b_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataB_out DATA_EN" *) output data_b_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataB_out DATA_CLK" *) output data_b_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataB_out DATA_RST" *) output data_b_rst_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataA_in DATA_EN" *) input dac_dat_a_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataA_in DATA_RST" *) input dac_dat_a_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataA_in DATA" *) input [13:0]dac_dat_a_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataB_in DATA_EN" *) input dac_dat_b_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataB_in DATA_RST" *) input dac_dat_b_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 dataB_in DATA" *) input [13:0]dac_dat_b_i;
  (* x_interface_info = "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_DAT" *) output [13:0]dac_dat_o;
  (* x_interface_info = "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_WRT" *) output dac_wrt_o;
  (* x_interface_info = "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_SEL" *) output dac_sel_o;
  (* x_interface_info = "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_CLK" *) output dac_clk_o;
  (* x_interface_info = "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_RST" *) output dac_rst_o;

  wire adc_cdcs;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_n_i;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_p_i;
  wire [13:0]adc_data_a_i;
  wire [13:0]adc_data_b_i;
  wire adc_rst_i;
  wire clk_o;
  wire dac_clk_o;
  wire dac_dat_a_en_i;
  wire [13:0]dac_dat_a_i;
  wire dac_dat_a_rst_i;
  wire dac_dat_b_en_i;
  wire [13:0]dac_dat_b_i;
  wire dac_dat_b_rst_i;
  wire [13:0]dac_dat_o;
  wire dac_rst_o;
  wire dac_sel_o;
  wire dac_wrt_o;
  wire data_a_clk_o;
  wire data_a_en_o;
  wire [13:0]data_a_o;
  wire data_a_rst_o;
  wire data_b_clk_o;
  wire data_b_en_o;
  wire [13:0]data_b_o;
  wire data_b_rst_o;
  wire rst_o;
  wire rstn_o;

  (* ADC_EN = "TRUE" *) 
  (* ADC_SIZE = "14" *) 
  (* CLOCK_DUTY_CYCLE_STABILIZER_EN = "FALSE" *) 
  (* DAC_EN = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_redpitaya_converters U0
       (.adc_cdcs(adc_cdcs),
        .adc_clk_n_i(adc_clk_n_i),
        .adc_clk_p_i(adc_clk_p_i),
        .adc_data_a_i(adc_data_a_i),
        .adc_data_b_i(adc_data_b_i),
        .adc_rst_i(adc_rst_i),
        .clk_o(clk_o),
        .dac_clk_o(dac_clk_o),
        .dac_dat_a_en_i(dac_dat_a_en_i),
        .dac_dat_a_i(dac_dat_a_i),
        .dac_dat_a_rst_i(dac_dat_a_rst_i),
        .dac_dat_b_en_i(dac_dat_b_en_i),
        .dac_dat_b_i(dac_dat_b_i),
        .dac_dat_b_rst_i(dac_dat_b_rst_i),
        .dac_dat_o(dac_dat_o),
        .dac_rst_o(dac_rst_o),
        .dac_sel_o(dac_sel_o),
        .dac_wrt_o(dac_wrt_o),
        .data_a_clk_o(data_a_clk_o),
        .data_a_en_o(data_a_en_o),
        .data_a_o(data_a_o),
        .data_a_rst_o(data_a_rst_o),
        .data_b_clk_o(data_b_clk_o),
        .data_b_en_o(data_b_en_o),
        .data_b_o(data_b_o),
        .data_b_rst_o(data_b_rst_o),
        .rst_o(rst_o),
        .rstn_o(rstn_o));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_redpitaya_adc_cmos_capture
   (data_a_en_o,
    data_a_o,
    data_b_o,
    CLK,
    rst_o,
    adc_data_a_i,
    adc_data_b_i);
  output data_a_en_o;
  output [13:0]data_a_o;
  output [13:0]data_b_o;
  input CLK;
  input rst_o;
  input [13:0]adc_data_a_i;
  input [13:0]adc_data_b_i;

  wire CLK;
  wire [13:0]adc_data_a_i;
  wire [13:0]adc_data_b_i;
  wire data_a_en_o;
  wire [13:0]data_a_o;
  wire \data_a_s[0]_i_1_n_0 ;
  wire \data_a_s[10]_i_1_n_0 ;
  wire \data_a_s[11]_i_1_n_0 ;
  wire \data_a_s[12]_i_1_n_0 ;
  wire \data_a_s[1]_i_1_n_0 ;
  wire \data_a_s[2]_i_1_n_0 ;
  wire \data_a_s[3]_i_1_n_0 ;
  wire \data_a_s[4]_i_1_n_0 ;
  wire \data_a_s[5]_i_1_n_0 ;
  wire \data_a_s[6]_i_1_n_0 ;
  wire \data_a_s[7]_i_1_n_0 ;
  wire \data_a_s[8]_i_1_n_0 ;
  wire \data_a_s[9]_i_1_n_0 ;
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
  wire rst_o;

  FDCE adc_data_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(1'b1),
        .Q(data_a_en_o));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[0]_i_1 
       (.I0(adc_data_a_i[0]),
        .O(\data_a_s[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[10]_i_1 
       (.I0(adc_data_a_i[10]),
        .O(\data_a_s[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[11]_i_1 
       (.I0(adc_data_a_i[11]),
        .O(\data_a_s[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[12]_i_1 
       (.I0(adc_data_a_i[12]),
        .O(\data_a_s[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[1]_i_1 
       (.I0(adc_data_a_i[1]),
        .O(\data_a_s[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[2]_i_1 
       (.I0(adc_data_a_i[2]),
        .O(\data_a_s[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[3]_i_1 
       (.I0(adc_data_a_i[3]),
        .O(\data_a_s[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[4]_i_1 
       (.I0(adc_data_a_i[4]),
        .O(\data_a_s[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[5]_i_1 
       (.I0(adc_data_a_i[5]),
        .O(\data_a_s[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[6]_i_1 
       (.I0(adc_data_a_i[6]),
        .O(\data_a_s[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[7]_i_1 
       (.I0(adc_data_a_i[7]),
        .O(\data_a_s[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[8]_i_1 
       (.I0(adc_data_a_i[8]),
        .O(\data_a_s[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_a_s[9]_i_1 
       (.I0(adc_data_a_i[9]),
        .O(\data_a_s[9]_i_1_n_0 ));
  FDCE \data_a_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_a_s[0]_i_1_n_0 ),
        .Q(data_a_o[0]));
  FDCE \data_a_s_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_a_s[10]_i_1_n_0 ),
        .Q(data_a_o[10]));
  FDCE \data_a_s_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_a_s[11]_i_1_n_0 ),
        .Q(data_a_o[11]));
  FDCE \data_a_s_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_a_s[12]_i_1_n_0 ),
        .Q(data_a_o[12]));
  FDCE \data_a_s_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(adc_data_a_i[13]),
        .Q(data_a_o[13]));
  FDCE \data_a_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_a_s[1]_i_1_n_0 ),
        .Q(data_a_o[1]));
  FDCE \data_a_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_a_s[2]_i_1_n_0 ),
        .Q(data_a_o[2]));
  FDCE \data_a_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_a_s[3]_i_1_n_0 ),
        .Q(data_a_o[3]));
  FDCE \data_a_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_a_s[4]_i_1_n_0 ),
        .Q(data_a_o[4]));
  FDCE \data_a_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_a_s[5]_i_1_n_0 ),
        .Q(data_a_o[5]));
  FDCE \data_a_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_a_s[6]_i_1_n_0 ),
        .Q(data_a_o[6]));
  FDCE \data_a_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_a_s[7]_i_1_n_0 ),
        .Q(data_a_o[7]));
  FDCE \data_a_s_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_a_s[8]_i_1_n_0 ),
        .Q(data_a_o[8]));
  FDCE \data_a_s_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_a_s[9]_i_1_n_0 ),
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
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_b_s[0]_i_1_n_0 ),
        .Q(data_b_o[0]));
  FDCE \data_b_s_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_b_s[10]_i_1_n_0 ),
        .Q(data_b_o[10]));
  FDCE \data_b_s_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_b_s[11]_i_1_n_0 ),
        .Q(data_b_o[11]));
  FDCE \data_b_s_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_b_s[12]_i_1_n_0 ),
        .Q(data_b_o[12]));
  FDCE \data_b_s_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(adc_data_b_i[13]),
        .Q(data_b_o[13]));
  FDCE \data_b_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_b_s[1]_i_1_n_0 ),
        .Q(data_b_o[1]));
  FDCE \data_b_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_b_s[2]_i_1_n_0 ),
        .Q(data_b_o[2]));
  FDCE \data_b_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_b_s[3]_i_1_n_0 ),
        .Q(data_b_o[3]));
  FDCE \data_b_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_b_s[4]_i_1_n_0 ),
        .Q(data_b_o[4]));
  FDCE \data_b_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_b_s[5]_i_1_n_0 ),
        .Q(data_b_o[5]));
  FDCE \data_b_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_b_s[6]_i_1_n_0 ),
        .Q(data_b_o[6]));
  FDCE \data_b_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_b_s[7]_i_1_n_0 ),
        .Q(data_b_o[7]));
  FDCE \data_b_s_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_b_s[8]_i_1_n_0 ),
        .Q(data_b_o[8]));
  FDCE \data_b_s_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_o),
        .D(\data_b_s[9]_i_1_n_0 ),
        .Q(data_b_o[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_redpitaya_adc_dac_clk
   (CLK,
    adc_rst_i_0,
    dac_2clk_s,
    dac_2ph_s,
    rst_o,
    rstn_o,
    p_0_in,
    adc_clk_p_i,
    adc_clk_n_i,
    adc_rst_i);
  output CLK;
  output adc_rst_i_0;
  output dac_2clk_s;
  output dac_2ph_s;
  output rst_o;
  output rstn_o;
  output p_0_in;
  input adc_clk_p_i;
  input adc_clk_n_i;
  input adc_rst_i;

  wire CLK;
  wire adc_clk_in;
  wire adc_clk_n_i;
  wire adc_clk_p_i;
  wire adc_rst_i;
  wire adc_rst_i_0;
  wire dac_2clk_out;
  wire dac_2clk_s;
  wire dac_2ph_out;
  wire dac_2ph_s;
  wire dac_clk_fb;
  wire dac_clk_fb_buf;
  wire dac_clk_out;
  wire dac_locked_s;
  wire i_ser_buf_n_0;
  wire p_0_in;
  wire rstn_o;
  wire ser_clk_out;
  (* async_reg = "true" *) wire \value[0]_0 ;
  (* async_reg = "true" *) wire \value[1]_2 ;
  (* async_reg = "true" *) wire \value[2]_3 ;
  wire NLW_i_dac_plle2_CLKOUT4_UNCONNECTED;
  wire NLW_i_dac_plle2_CLKOUT5_UNCONNECTED;
  wire NLW_i_dac_plle2_DRDY_UNCONNECTED;
  wire [15:0]NLW_i_dac_plle2_DO_UNCONNECTED;

  assign rst_o = \value[2]_3 ;
  LUT1 #(
    .INIT(2'h1)) 
    dac_rst_i_1
       (.I0(dac_locked_s),
        .O(p_0_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_adc_buf
       (.I(adc_clk_in),
        .O(CLK));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    i_clk
       (.I(adc_clk_p_i),
        .IB(adc_clk_n_i),
        .O(adc_clk_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_dac1_buf
       (.I(dac_clk_out),
        .O(adc_rst_i_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_dac2_buf
       (.I(dac_2clk_out),
        .O(dac_2clk_s));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_dac2ph_buf
       (.I(dac_2ph_out),
        .O(dac_2ph_s));
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
        .CLKIN1(CLK),
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
        .LOCKED(dac_locked_s),
        .PWRDWN(1'b0),
        .RST(adc_rst_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_dacfb_buf
       (.I(dac_clk_fb),
        .O(dac_clk_fb_buf));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_ser_buf
       (.I(ser_clk_out),
        .O(i_ser_buf_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rstn_o_INST_0
       (.I0(\value[2]_3 ),
        .O(rstn_o));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \stages[0].value_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(\value[0]_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \stages[1].value_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\value[0]_0 ),
        .Q(\value[1]_2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \stages[2].value_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\value[1]_2 ),
        .Q(\value[2]_3 ),
        .R(1'b0));
endmodule

(* ADC_EN = "TRUE" *) (* ADC_SIZE = "14" *) (* CLOCK_DUTY_CYCLE_STABILIZER_EN = "FALSE" *) 
(* DAC_EN = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_redpitaya_converters
   (adc_rst_i,
    clk_o,
    rst_o,
    rstn_o,
    adc_clk_p_i,
    adc_clk_n_i,
    adc_data_a_i,
    adc_data_b_i,
    adc_cdcs,
    data_a_o,
    data_a_en_o,
    data_a_clk_o,
    data_a_rst_o,
    data_b_o,
    data_b_en_o,
    data_b_clk_o,
    data_b_rst_o,
    dac_dat_a_en_i,
    dac_dat_a_rst_i,
    dac_dat_a_i,
    dac_dat_b_en_i,
    dac_dat_b_rst_i,
    dac_dat_b_i,
    dac_dat_o,
    dac_wrt_o,
    dac_sel_o,
    dac_clk_o,
    dac_rst_o);
  input adc_rst_i;
  output clk_o;
  output rst_o;
  output rstn_o;
  input adc_clk_p_i;
  input adc_clk_n_i;
  input [13:0]adc_data_a_i;
  input [13:0]adc_data_b_i;
  output adc_cdcs;
  output [13:0]data_a_o;
  output data_a_en_o;
  output data_a_clk_o;
  output data_a_rst_o;
  output [13:0]data_b_o;
  output data_b_en_o;
  output data_b_clk_o;
  output data_b_rst_o;
  input dac_dat_a_en_i;
  input dac_dat_a_rst_i;
  input [13:0]dac_dat_a_i;
  input dac_dat_b_en_i;
  input dac_dat_b_rst_i;
  input [13:0]dac_dat_b_i;
  output [13:0]dac_dat_o;
  output dac_wrt_o;
  output dac_sel_o;
  output dac_clk_o;
  output dac_rst_o;

  wire \<const0> ;
  wire adc_clk_n_i;
  wire adc_clk_p_i;
  wire [13:0]adc_data_a_i;
  wire [13:0]adc_data_b_i;
  wire adc_rst_i;
  wire clk_o;
  wire dac_2clk_s;
  wire dac_2ph_s;
  wire dac_clk_o;
  wire dac_clk_s;
  wire dac_dat_a_en_i;
  wire [13:0]dac_dat_a_i;
  wire dac_dat_b_en_i;
  wire [13:0]dac_dat_b_i;
  wire [13:0]dac_dat_o;
  wire dac_rst_o;
  wire dac_sel_o;
  wire dac_wrt_o;
  wire data_a_en_o;
  wire [13:0]data_a_o;
  wire [13:0]data_b_o;
  wire p_0_in;
  wire rst_o;
  wire rstn_o;

  assign adc_cdcs = \<const0> ;
  assign data_a_clk_o = clk_o;
  assign data_a_rst_o = rst_o;
  assign data_b_clk_o = clk_o;
  assign data_b_en_o = data_a_en_o;
  assign data_b_rst_o = rst_o;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_redpitaya_adc_cmos_capture \enable_adc.redpitaya_adc_capture_inst 
       (.CLK(clk_o),
        .adc_data_a_i(adc_data_a_i),
        .adc_data_b_i(adc_data_b_i),
        .data_a_en_o(data_a_en_o),
        .data_a_o(data_a_o),
        .data_b_o(data_b_o),
        .rst_o(rst_o));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad9767 \enable_dac.redpitaya_dac 
       (.CLK(dac_clk_s),
        .dac_2clk_s(dac_2clk_s),
        .dac_2ph_s(dac_2ph_s),
        .dac_clk_o(dac_clk_o),
        .dac_dat_a_en_i(dac_dat_a_en_i),
        .dac_dat_a_i(dac_dat_a_i),
        .dac_dat_b_en_i(dac_dat_b_en_i),
        .dac_dat_b_i(dac_dat_b_i),
        .dac_dat_o(dac_dat_o),
        .dac_rst_o(dac_rst_o),
        .dac_sel_o(dac_sel_o),
        .dac_wrt_o(dac_wrt_o),
        .p_0_in(p_0_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_redpitaya_adc_dac_clk redpitaya_clk
       (.CLK(clk_o),
        .adc_clk_n_i(adc_clk_n_i),
        .adc_clk_p_i(adc_clk_p_i),
        .adc_rst_i(adc_rst_i),
        .adc_rst_i_0(dac_clk_s),
        .dac_2clk_s(dac_2clk_s),
        .dac_2ph_s(dac_2ph_s),
        .p_0_in(p_0_in),
        .rst_o(rst_o),
        .rstn_o(rstn_o));
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
