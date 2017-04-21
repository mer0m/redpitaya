// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Thu Mar 30 09:07:12 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds_gnuradio_wrapper_ad9767_0_0_sim_netlist.v
// Design      : dds_gnuradio_wrapper_ad9767_0_0
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
    dac_2ph_i,
    dac_2clk_i,
    dac_clk_i,
    dac_dat_b_en_i,
    dac_dat_b_i,
    dac_dat_a_en_i,
    dac_dat_a_i,
    dac_locked_i);
  output dac_clk_o;
  output dac_wrt_o;
  output dac_sel_o;
  output dac_rst_o;
  output [13:0]dac_dat_o;
  input dac_2ph_i;
  input dac_2clk_i;
  input dac_clk_i;
  input dac_dat_b_en_i;
  input [13:0]dac_dat_b_i;
  input dac_dat_a_en_i;
  input [13:0]dac_dat_a_i;
  input dac_locked_i;

  wire dac_2clk_i;
  wire dac_2ph_i;
  wire dac_clk_i;
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
  wire dac_locked_i;
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
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(\dac_dat_a[0]_i_1_n_0 ),
        .Q(dac_dat_a[0]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[10] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(\dac_dat_a[10]_i_1_n_0 ),
        .Q(dac_dat_a[10]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[11] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(\dac_dat_a[11]_i_1_n_0 ),
        .Q(dac_dat_a[11]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[12] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(\dac_dat_a[12]_i_1_n_0 ),
        .Q(dac_dat_a[12]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[13] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(dac_dat_a_s[13]),
        .Q(dac_dat_a[13]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[1] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(\dac_dat_a[1]_i_1_n_0 ),
        .Q(dac_dat_a[1]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[2] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(\dac_dat_a[2]_i_1_n_0 ),
        .Q(dac_dat_a[2]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[3] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(\dac_dat_a[3]_i_1_n_0 ),
        .Q(dac_dat_a[3]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[4] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(\dac_dat_a[4]_i_1_n_0 ),
        .Q(dac_dat_a[4]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[5] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(\dac_dat_a[5]_i_1_n_0 ),
        .Q(dac_dat_a[5]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[6] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(\dac_dat_a[6]_i_1_n_0 ),
        .Q(dac_dat_a[6]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[7] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(\dac_dat_a[7]_i_1_n_0 ),
        .Q(dac_dat_a[7]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[8] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(\dac_dat_a[8]_i_1_n_0 ),
        .Q(dac_dat_a[8]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[9] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(\dac_dat_a[9]_i_1_n_0 ),
        .Q(dac_dat_a[9]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[0] 
       (.C(dac_clk_i),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[0]),
        .Q(dac_dat_a_s[0]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[10] 
       (.C(dac_clk_i),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[10]),
        .Q(dac_dat_a_s[10]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[11] 
       (.C(dac_clk_i),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[11]),
        .Q(dac_dat_a_s[11]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[12] 
       (.C(dac_clk_i),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[12]),
        .Q(dac_dat_a_s[12]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[13] 
       (.C(dac_clk_i),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[13]),
        .Q(dac_dat_a_s[13]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[1] 
       (.C(dac_clk_i),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[1]),
        .Q(dac_dat_a_s[1]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[2] 
       (.C(dac_clk_i),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[2]),
        .Q(dac_dat_a_s[2]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[3] 
       (.C(dac_clk_i),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[3]),
        .Q(dac_dat_a_s[3]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[4] 
       (.C(dac_clk_i),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[4]),
        .Q(dac_dat_a_s[4]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[5] 
       (.C(dac_clk_i),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[5]),
        .Q(dac_dat_a_s[5]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[6] 
       (.C(dac_clk_i),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[6]),
        .Q(dac_dat_a_s[6]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[7] 
       (.C(dac_clk_i),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[7]),
        .Q(dac_dat_a_s[7]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[8] 
       (.C(dac_clk_i),
        .CE(dac_dat_a_en_i),
        .D(dac_dat_a_i[8]),
        .Q(dac_dat_a_s[8]),
        .R(1'b0));
  FDRE \dac_dat_a_s_reg[9] 
       (.C(dac_clk_i),
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
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(p_1_out[0]),
        .Q(dac_dat_b[0]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[10] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(p_1_out[10]),
        .Q(dac_dat_b[10]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[11] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(p_1_out[11]),
        .Q(dac_dat_b[11]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[12] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(p_1_out[12]),
        .Q(dac_dat_b[12]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[13] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(dac_dat_b_s[13]),
        .Q(dac_dat_b[13]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[1] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(p_1_out[1]),
        .Q(dac_dat_b[1]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[2] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(p_1_out[2]),
        .Q(dac_dat_b[2]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[3] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(p_1_out[3]),
        .Q(dac_dat_b[3]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[4] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(p_1_out[4]),
        .Q(dac_dat_b[4]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[5] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(p_1_out[5]),
        .Q(dac_dat_b[5]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[6] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(p_1_out[6]),
        .Q(dac_dat_b[6]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[7] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(p_1_out[7]),
        .Q(dac_dat_b[7]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[8] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(p_1_out[8]),
        .Q(dac_dat_b[8]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[9] 
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(p_1_out[9]),
        .Q(dac_dat_b[9]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[0] 
       (.C(dac_clk_i),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[0]),
        .Q(dac_dat_b_s[0]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[10] 
       (.C(dac_clk_i),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[10]),
        .Q(dac_dat_b_s[10]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[11] 
       (.C(dac_clk_i),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[11]),
        .Q(dac_dat_b_s[11]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[12] 
       (.C(dac_clk_i),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[12]),
        .Q(dac_dat_b_s[12]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[13] 
       (.C(dac_clk_i),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[13]),
        .Q(dac_dat_b_s[13]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[1] 
       (.C(dac_clk_i),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[1]),
        .Q(dac_dat_b_s[1]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[2] 
       (.C(dac_clk_i),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[2]),
        .Q(dac_dat_b_s[2]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[3] 
       (.C(dac_clk_i),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[3]),
        .Q(dac_dat_b_s[3]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[4] 
       (.C(dac_clk_i),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[4]),
        .Q(dac_dat_b_s[4]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[5] 
       (.C(dac_clk_i),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[5]),
        .Q(dac_dat_b_s[5]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[6] 
       (.C(dac_clk_i),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[6]),
        .Q(dac_dat_b_s[6]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[7] 
       (.C(dac_clk_i),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[7]),
        .Q(dac_dat_b_s[7]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[8] 
       (.C(dac_clk_i),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[8]),
        .Q(dac_dat_b_s[8]),
        .R(1'b0));
  FDRE \dac_dat_b_s_reg[9] 
       (.C(dac_clk_i),
        .CE(dac_dat_b_en_i),
        .D(dac_dat_b_i[9]),
        .Q(dac_dat_b_s[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    dac_rst_i_1
       (.I0(dac_locked_i),
        .O(p_0_in));
  FDRE dac_rst_reg
       (.C(dac_clk_i),
        .CE(1'b1),
        .D(p_0_in),
        .Q(dac_rst),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_0
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_dat_b[0]),
        .D2(dac_dat_a[0]),
        .Q(dac_dat_o[0]),
        .R(dac_rst),
        .S(NLW_i_dac_0_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_1
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_dat_b[1]),
        .D2(dac_dat_a[1]),
        .Q(dac_dat_o[1]),
        .R(dac_rst),
        .S(NLW_i_dac_1_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_10
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_dat_b[10]),
        .D2(dac_dat_a[10]),
        .Q(dac_dat_o[10]),
        .R(dac_rst),
        .S(NLW_i_dac_10_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_11
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_dat_b[11]),
        .D2(dac_dat_a[11]),
        .Q(dac_dat_o[11]),
        .R(dac_rst),
        .S(NLW_i_dac_11_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_12
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_dat_b[12]),
        .D2(dac_dat_a[12]),
        .Q(dac_dat_o[12]),
        .R(dac_rst),
        .S(NLW_i_dac_12_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_13
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_dat_b[13]),
        .D2(dac_dat_a[13]),
        .Q(dac_dat_o[13]),
        .R(dac_rst),
        .S(NLW_i_dac_13_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_2
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_dat_b[2]),
        .D2(dac_dat_a[2]),
        .Q(dac_dat_o[2]),
        .R(dac_rst),
        .S(NLW_i_dac_2_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_3
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_dat_b[3]),
        .D2(dac_dat_a[3]),
        .Q(dac_dat_o[3]),
        .R(dac_rst),
        .S(NLW_i_dac_3_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_4
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_dat_b[4]),
        .D2(dac_dat_a[4]),
        .Q(dac_dat_o[4]),
        .R(dac_rst),
        .S(NLW_i_dac_4_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_5
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_dat_b[5]),
        .D2(dac_dat_a[5]),
        .Q(dac_dat_o[5]),
        .R(dac_rst),
        .S(NLW_i_dac_5_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_6
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_dat_b[6]),
        .D2(dac_dat_a[6]),
        .Q(dac_dat_o[6]),
        .R(dac_rst),
        .S(NLW_i_dac_6_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_7
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_dat_b[7]),
        .D2(dac_dat_a[7]),
        .Q(dac_dat_o[7]),
        .R(dac_rst),
        .S(NLW_i_dac_7_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_8
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_dat_b[8]),
        .D2(dac_dat_a[8]),
        .Q(dac_dat_o[8]),
        .R(dac_rst),
        .S(NLW_i_dac_8_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_9
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_dat_b[9]),
        .D2(dac_dat_a[9]),
        .Q(dac_dat_o[9]),
        .R(dac_rst),
        .S(NLW_i_dac_9_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_clk
       (.C(dac_2ph_i),
        .CE(1'b1),
        .D1(1'b0),
        .D2(1'b1),
        .Q(dac_clk_o),
        .R(dac_rst),
        .S(NLW_i_dac_clk_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_rst
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(dac_rst),
        .D2(dac_rst),
        .Q(dac_rst_o),
        .R(NLW_i_dac_rst_R_UNCONNECTED),
        .S(NLW_i_dac_rst_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_sel
       (.C(dac_clk_i),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(dac_sel_o),
        .R(dac_rst),
        .S(NLW_i_dac_sel_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_wrt
       (.C(dac_2clk_i),
        .CE(1'b1),
        .D1(1'b0),
        .D2(1'b1),
        .Q(dac_wrt_o),
        .R(dac_rst),
        .S(NLW_i_dac_wrt_S_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "dds_gnuradio_wrapper_ad9767_0_0,ad9767,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "ad9767,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (dac_clk_i,
    dac_2clk_i,
    dac_2ph_i,
    dac_locked_i,
    dac_dat_o,
    dac_wrt_o,
    dac_sel_o,
    dac_clk_o,
    dac_rst_o,
    dac_dat_a_en_i,
    dac_dat_a_rst_i,
    dac_dat_a_i,
    dac_dat_b_en_i,
    dac_dat_b_rst_i,
    dac_dat_b_i);
  input dac_clk_i;
  input dac_2clk_i;
  input dac_2ph_i;
  input dac_locked_i;
  output [13:0]dac_dat_o;
  output dac_wrt_o;
  output dac_sel_o;
  output dac_clk_o;
  output dac_rst_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 dataA DATA_EN" *) input dac_dat_a_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 dataA DATA_RST" *) input dac_dat_a_rst_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 dataA DATA" *) input [13:0]dac_dat_a_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 dataB DATA_EN" *) input dac_dat_b_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 dataB DATA_RST" *) input dac_dat_b_rst_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 dataB DATA" *) input [13:0]dac_dat_b_i;

  wire dac_2clk_i;
  wire dac_2ph_i;
  wire dac_clk_i;
  wire dac_clk_o;
  wire dac_dat_a_en_i;
  wire [13:0]dac_dat_a_i;
  wire dac_dat_b_en_i;
  wire [13:0]dac_dat_b_i;
  wire [13:0]dac_dat_o;
  wire dac_locked_i;
  wire dac_rst_o;
  wire dac_sel_o;
  wire dac_wrt_o;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad9767 inst
       (.dac_2clk_i(dac_2clk_i),
        .dac_2ph_i(dac_2ph_i),
        .dac_clk_i(dac_clk_i),
        .dac_clk_o(dac_clk_o),
        .dac_dat_a_en_i(dac_dat_a_en_i),
        .dac_dat_a_i(dac_dat_a_i),
        .dac_dat_b_en_i(dac_dat_b_en_i),
        .dac_dat_b_i(dac_dat_b_i),
        .dac_dat_o(dac_dat_o),
        .dac_locked_i(dac_locked_i),
        .dac_rst_o(dac_rst_o),
        .dac_sel_o(dac_sel_o),
        .dac_wrt_o(dac_wrt_o));
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
