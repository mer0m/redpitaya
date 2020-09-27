// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sat May 30 19:55:55 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_iq_pid_vco_meanReal_0_0_sim_netlist.v
// Design      : double_iq_pid_vco_meanReal_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "double_iq_pid_vco_meanReal_0_0,meanReal,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "meanReal,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (data_i,
    data_en_i,
    data_clk_i,
    data_rst_i,
    data_o,
    data_clk_o,
    data_rst_o,
    data_en_o);
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA" *) input [39:0]data_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_EN" *) input data_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_CLK" *) input data_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_RST" *) input data_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA" *) output [63:0]data_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_CLK" *) output data_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_RST" *) output data_rst_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EN" *) output data_en_o;

  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire [39:0]data_i;
  wire [63:0]data_o;
  wire data_rst_i;

  assign data_clk_o = data_clk_i;
  assign data_rst_o = data_rst_i;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_meanReal U0
       (.data_clk_i(data_clk_i),
        .data_en_i(data_en_i),
        .data_en_o(data_en_o),
        .data_i(data_i),
        .data_o(data_o),
        .data_rst_i(data_rst_i));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_meanReal
   (data_o,
    data_en_o,
    data_i,
    data_rst_i,
    data_clk_i,
    data_en_i);
  output [63:0]data_o;
  output data_en_o;
  input [39:0]data_i;
  input data_rst_i;
  input data_clk_i;
  input data_en_i;

  wire accum_next_s_carry__0_i_1_n_0;
  wire accum_next_s_carry__0_i_2_n_0;
  wire accum_next_s_carry__0_i_3_n_0;
  wire accum_next_s_carry__0_i_4_n_0;
  wire accum_next_s_carry__0_n_0;
  wire accum_next_s_carry__0_n_1;
  wire accum_next_s_carry__0_n_2;
  wire accum_next_s_carry__0_n_3;
  wire accum_next_s_carry__10_i_1_n_0;
  wire accum_next_s_carry__10_i_2_n_0;
  wire accum_next_s_carry__10_i_3_n_0;
  wire accum_next_s_carry__10_i_4_n_0;
  wire accum_next_s_carry__10_n_0;
  wire accum_next_s_carry__10_n_1;
  wire accum_next_s_carry__10_n_2;
  wire accum_next_s_carry__10_n_3;
  wire accum_next_s_carry__11_i_1_n_0;
  wire accum_next_s_carry__11_i_2_n_0;
  wire accum_next_s_carry__11_i_3_n_0;
  wire accum_next_s_carry__11_i_4_n_0;
  wire accum_next_s_carry__11_n_0;
  wire accum_next_s_carry__11_n_1;
  wire accum_next_s_carry__11_n_2;
  wire accum_next_s_carry__11_n_3;
  wire accum_next_s_carry__12_i_1_n_0;
  wire accum_next_s_carry__12_i_2_n_0;
  wire accum_next_s_carry__12_i_3_n_0;
  wire accum_next_s_carry__12_i_4_n_0;
  wire accum_next_s_carry__12_n_0;
  wire accum_next_s_carry__12_n_1;
  wire accum_next_s_carry__12_n_2;
  wire accum_next_s_carry__12_n_3;
  wire accum_next_s_carry__13_i_1_n_0;
  wire accum_next_s_carry__13_i_2_n_0;
  wire accum_next_s_carry__13_i_3_n_0;
  wire accum_next_s_carry__13_i_4_n_0;
  wire accum_next_s_carry__13_n_0;
  wire accum_next_s_carry__13_n_1;
  wire accum_next_s_carry__13_n_2;
  wire accum_next_s_carry__13_n_3;
  wire accum_next_s_carry__14_i_1_n_0;
  wire accum_next_s_carry__14_i_2_n_0;
  wire accum_next_s_carry__14_i_3_n_0;
  wire accum_next_s_carry__14_i_4_n_0;
  wire accum_next_s_carry__14_n_0;
  wire accum_next_s_carry__14_n_1;
  wire accum_next_s_carry__14_n_2;
  wire accum_next_s_carry__14_n_3;
  wire accum_next_s_carry__15_i_1_n_0;
  wire accum_next_s_carry__15_i_2_n_0;
  wire accum_next_s_carry__15_i_3_n_0;
  wire accum_next_s_carry__15_i_4_n_0;
  wire accum_next_s_carry__15_n_0;
  wire accum_next_s_carry__15_n_1;
  wire accum_next_s_carry__15_n_2;
  wire accum_next_s_carry__15_n_3;
  wire accum_next_s_carry__16_i_1_n_0;
  wire accum_next_s_carry__16_i_2_n_0;
  wire accum_next_s_carry__16_i_3_n_0;
  wire accum_next_s_carry__16_n_2;
  wire accum_next_s_carry__16_n_3;
  wire accum_next_s_carry__1_i_1_n_0;
  wire accum_next_s_carry__1_i_2_n_0;
  wire accum_next_s_carry__1_i_3_n_0;
  wire accum_next_s_carry__1_i_4_n_0;
  wire accum_next_s_carry__1_n_0;
  wire accum_next_s_carry__1_n_1;
  wire accum_next_s_carry__1_n_2;
  wire accum_next_s_carry__1_n_3;
  wire accum_next_s_carry__2_i_1_n_0;
  wire accum_next_s_carry__2_i_2_n_0;
  wire accum_next_s_carry__2_i_3_n_0;
  wire accum_next_s_carry__2_i_4_n_0;
  wire accum_next_s_carry__2_n_0;
  wire accum_next_s_carry__2_n_1;
  wire accum_next_s_carry__2_n_2;
  wire accum_next_s_carry__2_n_3;
  wire accum_next_s_carry__3_i_1_n_0;
  wire accum_next_s_carry__3_i_2_n_0;
  wire accum_next_s_carry__3_i_3_n_0;
  wire accum_next_s_carry__3_i_4_n_0;
  wire accum_next_s_carry__3_n_0;
  wire accum_next_s_carry__3_n_1;
  wire accum_next_s_carry__3_n_2;
  wire accum_next_s_carry__3_n_3;
  wire accum_next_s_carry__4_i_1_n_0;
  wire accum_next_s_carry__4_i_2_n_0;
  wire accum_next_s_carry__4_i_3_n_0;
  wire accum_next_s_carry__4_i_4_n_0;
  wire accum_next_s_carry__4_n_0;
  wire accum_next_s_carry__4_n_1;
  wire accum_next_s_carry__4_n_2;
  wire accum_next_s_carry__4_n_3;
  wire accum_next_s_carry__5_i_1_n_0;
  wire accum_next_s_carry__5_i_2_n_0;
  wire accum_next_s_carry__5_i_3_n_0;
  wire accum_next_s_carry__5_i_4_n_0;
  wire accum_next_s_carry__5_n_0;
  wire accum_next_s_carry__5_n_1;
  wire accum_next_s_carry__5_n_2;
  wire accum_next_s_carry__5_n_3;
  wire accum_next_s_carry__6_i_1_n_0;
  wire accum_next_s_carry__6_i_2_n_0;
  wire accum_next_s_carry__6_i_3_n_0;
  wire accum_next_s_carry__6_i_4_n_0;
  wire accum_next_s_carry__6_n_0;
  wire accum_next_s_carry__6_n_1;
  wire accum_next_s_carry__6_n_2;
  wire accum_next_s_carry__6_n_3;
  wire accum_next_s_carry__7_i_1_n_0;
  wire accum_next_s_carry__7_i_2_n_0;
  wire accum_next_s_carry__7_i_3_n_0;
  wire accum_next_s_carry__7_i_4_n_0;
  wire accum_next_s_carry__7_n_0;
  wire accum_next_s_carry__7_n_1;
  wire accum_next_s_carry__7_n_2;
  wire accum_next_s_carry__7_n_3;
  wire accum_next_s_carry__8_i_1_n_0;
  wire accum_next_s_carry__8_i_2_n_0;
  wire accum_next_s_carry__8_i_3_n_0;
  wire accum_next_s_carry__8_i_4_n_0;
  wire accum_next_s_carry__8_i_5_n_0;
  wire accum_next_s_carry__8_n_0;
  wire accum_next_s_carry__8_n_1;
  wire accum_next_s_carry__8_n_2;
  wire accum_next_s_carry__8_n_3;
  wire accum_next_s_carry__9_i_1_n_0;
  wire accum_next_s_carry__9_i_2_n_0;
  wire accum_next_s_carry__9_i_3_n_0;
  wire accum_next_s_carry__9_i_4_n_0;
  wire accum_next_s_carry__9_n_0;
  wire accum_next_s_carry__9_n_1;
  wire accum_next_s_carry__9_n_2;
  wire accum_next_s_carry__9_n_3;
  wire accum_next_s_carry_i_1_n_0;
  wire accum_next_s_carry_i_2_n_0;
  wire accum_next_s_carry_i_3_n_0;
  wire accum_next_s_carry_i_4_n_0;
  wire accum_next_s_carry_n_0;
  wire accum_next_s_carry_n_1;
  wire accum_next_s_carry_n_2;
  wire accum_next_s_carry_n_3;
  wire \accum_s[0]_i_2_n_0 ;
  wire \accum_s[0]_i_3_n_0 ;
  wire \accum_s[0]_i_4_n_0 ;
  wire \accum_s[0]_i_5_n_0 ;
  wire \accum_s[12]_i_2_n_0 ;
  wire \accum_s[12]_i_3_n_0 ;
  wire \accum_s[12]_i_4_n_0 ;
  wire \accum_s[12]_i_5_n_0 ;
  wire \accum_s[16]_i_2_n_0 ;
  wire \accum_s[16]_i_3_n_0 ;
  wire \accum_s[16]_i_4_n_0 ;
  wire \accum_s[16]_i_5_n_0 ;
  wire \accum_s[20]_i_2_n_0 ;
  wire \accum_s[20]_i_3_n_0 ;
  wire \accum_s[20]_i_4_n_0 ;
  wire \accum_s[20]_i_5_n_0 ;
  wire \accum_s[24]_i_2_n_0 ;
  wire \accum_s[24]_i_3_n_0 ;
  wire \accum_s[24]_i_4_n_0 ;
  wire \accum_s[24]_i_5_n_0 ;
  wire \accum_s[28]_i_2_n_0 ;
  wire \accum_s[28]_i_3_n_0 ;
  wire \accum_s[28]_i_4_n_0 ;
  wire \accum_s[28]_i_5_n_0 ;
  wire \accum_s[32]_i_2_n_0 ;
  wire \accum_s[32]_i_3_n_0 ;
  wire \accum_s[32]_i_4_n_0 ;
  wire \accum_s[32]_i_5_n_0 ;
  wire \accum_s[36]_i_2_n_0 ;
  wire \accum_s[36]_i_3_n_0 ;
  wire \accum_s[36]_i_4_n_0 ;
  wire \accum_s[36]_i_5_n_0 ;
  wire \accum_s[40]_i_2_n_0 ;
  wire \accum_s[40]_i_3_n_0 ;
  wire \accum_s[40]_i_4_n_0 ;
  wire \accum_s[40]_i_5_n_0 ;
  wire \accum_s[44]_i_2_n_0 ;
  wire \accum_s[44]_i_3_n_0 ;
  wire \accum_s[44]_i_4_n_0 ;
  wire \accum_s[44]_i_5_n_0 ;
  wire \accum_s[48]_i_2_n_0 ;
  wire \accum_s[48]_i_3_n_0 ;
  wire \accum_s[48]_i_4_n_0 ;
  wire \accum_s[48]_i_5_n_0 ;
  wire \accum_s[4]_i_2_n_0 ;
  wire \accum_s[4]_i_3_n_0 ;
  wire \accum_s[4]_i_4_n_0 ;
  wire \accum_s[4]_i_5_n_0 ;
  wire \accum_s[52]_i_2_n_0 ;
  wire \accum_s[52]_i_3_n_0 ;
  wire \accum_s[52]_i_4_n_0 ;
  wire \accum_s[52]_i_5_n_0 ;
  wire \accum_s[56]_i_2_n_0 ;
  wire \accum_s[56]_i_3_n_0 ;
  wire \accum_s[56]_i_4_n_0 ;
  wire \accum_s[56]_i_5_n_0 ;
  wire \accum_s[60]_i_2_n_0 ;
  wire \accum_s[60]_i_3_n_0 ;
  wire \accum_s[60]_i_4_n_0 ;
  wire \accum_s[60]_i_5_n_0 ;
  wire \accum_s[64]_i_2_n_0 ;
  wire \accum_s[64]_i_3_n_0 ;
  wire \accum_s[64]_i_4_n_0 ;
  wire \accum_s[64]_i_5_n_0 ;
  wire \accum_s[68]_i_2_n_0 ;
  wire \accum_s[68]_i_3_n_0 ;
  wire \accum_s[68]_i_4_n_0 ;
  wire \accum_s[8]_i_2_n_0 ;
  wire \accum_s[8]_i_3_n_0 ;
  wire \accum_s[8]_i_4_n_0 ;
  wire \accum_s[8]_i_5_n_0 ;
  wire [70:0]accum_s_reg;
  wire \accum_s_reg[0]_i_1_n_0 ;
  wire \accum_s_reg[0]_i_1_n_1 ;
  wire \accum_s_reg[0]_i_1_n_2 ;
  wire \accum_s_reg[0]_i_1_n_3 ;
  wire \accum_s_reg[0]_i_1_n_4 ;
  wire \accum_s_reg[0]_i_1_n_5 ;
  wire \accum_s_reg[0]_i_1_n_6 ;
  wire \accum_s_reg[0]_i_1_n_7 ;
  wire \accum_s_reg[12]_i_1_n_0 ;
  wire \accum_s_reg[12]_i_1_n_1 ;
  wire \accum_s_reg[12]_i_1_n_2 ;
  wire \accum_s_reg[12]_i_1_n_3 ;
  wire \accum_s_reg[12]_i_1_n_4 ;
  wire \accum_s_reg[12]_i_1_n_5 ;
  wire \accum_s_reg[12]_i_1_n_6 ;
  wire \accum_s_reg[12]_i_1_n_7 ;
  wire \accum_s_reg[16]_i_1_n_0 ;
  wire \accum_s_reg[16]_i_1_n_1 ;
  wire \accum_s_reg[16]_i_1_n_2 ;
  wire \accum_s_reg[16]_i_1_n_3 ;
  wire \accum_s_reg[16]_i_1_n_4 ;
  wire \accum_s_reg[16]_i_1_n_5 ;
  wire \accum_s_reg[16]_i_1_n_6 ;
  wire \accum_s_reg[16]_i_1_n_7 ;
  wire \accum_s_reg[20]_i_1_n_0 ;
  wire \accum_s_reg[20]_i_1_n_1 ;
  wire \accum_s_reg[20]_i_1_n_2 ;
  wire \accum_s_reg[20]_i_1_n_3 ;
  wire \accum_s_reg[20]_i_1_n_4 ;
  wire \accum_s_reg[20]_i_1_n_5 ;
  wire \accum_s_reg[20]_i_1_n_6 ;
  wire \accum_s_reg[20]_i_1_n_7 ;
  wire \accum_s_reg[24]_i_1_n_0 ;
  wire \accum_s_reg[24]_i_1_n_1 ;
  wire \accum_s_reg[24]_i_1_n_2 ;
  wire \accum_s_reg[24]_i_1_n_3 ;
  wire \accum_s_reg[24]_i_1_n_4 ;
  wire \accum_s_reg[24]_i_1_n_5 ;
  wire \accum_s_reg[24]_i_1_n_6 ;
  wire \accum_s_reg[24]_i_1_n_7 ;
  wire \accum_s_reg[28]_i_1_n_0 ;
  wire \accum_s_reg[28]_i_1_n_1 ;
  wire \accum_s_reg[28]_i_1_n_2 ;
  wire \accum_s_reg[28]_i_1_n_3 ;
  wire \accum_s_reg[28]_i_1_n_4 ;
  wire \accum_s_reg[28]_i_1_n_5 ;
  wire \accum_s_reg[28]_i_1_n_6 ;
  wire \accum_s_reg[28]_i_1_n_7 ;
  wire \accum_s_reg[32]_i_1_n_0 ;
  wire \accum_s_reg[32]_i_1_n_1 ;
  wire \accum_s_reg[32]_i_1_n_2 ;
  wire \accum_s_reg[32]_i_1_n_3 ;
  wire \accum_s_reg[32]_i_1_n_4 ;
  wire \accum_s_reg[32]_i_1_n_5 ;
  wire \accum_s_reg[32]_i_1_n_6 ;
  wire \accum_s_reg[32]_i_1_n_7 ;
  wire \accum_s_reg[36]_i_1_n_0 ;
  wire \accum_s_reg[36]_i_1_n_1 ;
  wire \accum_s_reg[36]_i_1_n_2 ;
  wire \accum_s_reg[36]_i_1_n_3 ;
  wire \accum_s_reg[36]_i_1_n_4 ;
  wire \accum_s_reg[36]_i_1_n_5 ;
  wire \accum_s_reg[36]_i_1_n_6 ;
  wire \accum_s_reg[36]_i_1_n_7 ;
  wire \accum_s_reg[40]_i_1_n_0 ;
  wire \accum_s_reg[40]_i_1_n_1 ;
  wire \accum_s_reg[40]_i_1_n_2 ;
  wire \accum_s_reg[40]_i_1_n_3 ;
  wire \accum_s_reg[40]_i_1_n_4 ;
  wire \accum_s_reg[40]_i_1_n_5 ;
  wire \accum_s_reg[40]_i_1_n_6 ;
  wire \accum_s_reg[40]_i_1_n_7 ;
  wire \accum_s_reg[44]_i_1_n_0 ;
  wire \accum_s_reg[44]_i_1_n_1 ;
  wire \accum_s_reg[44]_i_1_n_2 ;
  wire \accum_s_reg[44]_i_1_n_3 ;
  wire \accum_s_reg[44]_i_1_n_4 ;
  wire \accum_s_reg[44]_i_1_n_5 ;
  wire \accum_s_reg[44]_i_1_n_6 ;
  wire \accum_s_reg[44]_i_1_n_7 ;
  wire \accum_s_reg[48]_i_1_n_0 ;
  wire \accum_s_reg[48]_i_1_n_1 ;
  wire \accum_s_reg[48]_i_1_n_2 ;
  wire \accum_s_reg[48]_i_1_n_3 ;
  wire \accum_s_reg[48]_i_1_n_4 ;
  wire \accum_s_reg[48]_i_1_n_5 ;
  wire \accum_s_reg[48]_i_1_n_6 ;
  wire \accum_s_reg[48]_i_1_n_7 ;
  wire \accum_s_reg[4]_i_1_n_0 ;
  wire \accum_s_reg[4]_i_1_n_1 ;
  wire \accum_s_reg[4]_i_1_n_2 ;
  wire \accum_s_reg[4]_i_1_n_3 ;
  wire \accum_s_reg[4]_i_1_n_4 ;
  wire \accum_s_reg[4]_i_1_n_5 ;
  wire \accum_s_reg[4]_i_1_n_6 ;
  wire \accum_s_reg[4]_i_1_n_7 ;
  wire \accum_s_reg[52]_i_1_n_0 ;
  wire \accum_s_reg[52]_i_1_n_1 ;
  wire \accum_s_reg[52]_i_1_n_2 ;
  wire \accum_s_reg[52]_i_1_n_3 ;
  wire \accum_s_reg[52]_i_1_n_4 ;
  wire \accum_s_reg[52]_i_1_n_5 ;
  wire \accum_s_reg[52]_i_1_n_6 ;
  wire \accum_s_reg[52]_i_1_n_7 ;
  wire \accum_s_reg[56]_i_1_n_0 ;
  wire \accum_s_reg[56]_i_1_n_1 ;
  wire \accum_s_reg[56]_i_1_n_2 ;
  wire \accum_s_reg[56]_i_1_n_3 ;
  wire \accum_s_reg[56]_i_1_n_4 ;
  wire \accum_s_reg[56]_i_1_n_5 ;
  wire \accum_s_reg[56]_i_1_n_6 ;
  wire \accum_s_reg[56]_i_1_n_7 ;
  wire \accum_s_reg[60]_i_1_n_0 ;
  wire \accum_s_reg[60]_i_1_n_1 ;
  wire \accum_s_reg[60]_i_1_n_2 ;
  wire \accum_s_reg[60]_i_1_n_3 ;
  wire \accum_s_reg[60]_i_1_n_4 ;
  wire \accum_s_reg[60]_i_1_n_5 ;
  wire \accum_s_reg[60]_i_1_n_6 ;
  wire \accum_s_reg[60]_i_1_n_7 ;
  wire \accum_s_reg[64]_i_1_n_0 ;
  wire \accum_s_reg[64]_i_1_n_1 ;
  wire \accum_s_reg[64]_i_1_n_2 ;
  wire \accum_s_reg[64]_i_1_n_3 ;
  wire \accum_s_reg[64]_i_1_n_4 ;
  wire \accum_s_reg[64]_i_1_n_5 ;
  wire \accum_s_reg[64]_i_1_n_6 ;
  wire \accum_s_reg[64]_i_1_n_7 ;
  wire \accum_s_reg[68]_i_1_n_2 ;
  wire \accum_s_reg[68]_i_1_n_3 ;
  wire \accum_s_reg[68]_i_1_n_5 ;
  wire \accum_s_reg[68]_i_1_n_6 ;
  wire \accum_s_reg[68]_i_1_n_7 ;
  wire \accum_s_reg[8]_i_1_n_0 ;
  wire \accum_s_reg[8]_i_1_n_1 ;
  wire \accum_s_reg[8]_i_1_n_2 ;
  wire \accum_s_reg[8]_i_1_n_3 ;
  wire \accum_s_reg[8]_i_1_n_4 ;
  wire \accum_s_reg[8]_i_1_n_5 ;
  wire \accum_s_reg[8]_i_1_n_6 ;
  wire \accum_s_reg[8]_i_1_n_7 ;
  wire cpt;
  wire [6:0]cpt_reg;
  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire data_en_o_i_1_n_0;
  wire [39:0]data_i;
  wire [63:0]data_o;
  wire data_rst_i;
  wire \final_s[63]_i_1_n_0 ;
  wire \final_s[63]_i_2_n_0 ;
  wire [63:0]p_0_in;
  wire [6:0]p_0_in__0;
  wire [3:0]NLW_accum_next_s_carry_O_UNCONNECTED;
  wire [2:0]NLW_accum_next_s_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_accum_next_s_carry__16_CO_UNCONNECTED;
  wire [3:3]NLW_accum_next_s_carry__16_O_UNCONNECTED;
  wire [3:2]\NLW_accum_s_reg[68]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_accum_s_reg[68]_i_1_O_UNCONNECTED ;

  CARRY4 accum_next_s_carry
       (.CI(1'b0),
        .CO({accum_next_s_carry_n_0,accum_next_s_carry_n_1,accum_next_s_carry_n_2,accum_next_s_carry_n_3}),
        .CYINIT(1'b0),
        .DI(data_i[3:0]),
        .O(NLW_accum_next_s_carry_O_UNCONNECTED[3:0]),
        .S({accum_next_s_carry_i_1_n_0,accum_next_s_carry_i_2_n_0,accum_next_s_carry_i_3_n_0,accum_next_s_carry_i_4_n_0}));
  CARRY4 accum_next_s_carry__0
       (.CI(accum_next_s_carry_n_0),
        .CO({accum_next_s_carry__0_n_0,accum_next_s_carry__0_n_1,accum_next_s_carry__0_n_2,accum_next_s_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(data_i[7:4]),
        .O({p_0_in[0],NLW_accum_next_s_carry__0_O_UNCONNECTED[2:0]}),
        .S({accum_next_s_carry__0_i_1_n_0,accum_next_s_carry__0_i_2_n_0,accum_next_s_carry__0_i_3_n_0,accum_next_s_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__0_i_1
       (.I0(data_i[7]),
        .I1(accum_s_reg[7]),
        .O(accum_next_s_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__0_i_2
       (.I0(data_i[6]),
        .I1(accum_s_reg[6]),
        .O(accum_next_s_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__0_i_3
       (.I0(data_i[5]),
        .I1(accum_s_reg[5]),
        .O(accum_next_s_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__0_i_4
       (.I0(data_i[4]),
        .I1(accum_s_reg[4]),
        .O(accum_next_s_carry__0_i_4_n_0));
  CARRY4 accum_next_s_carry__1
       (.CI(accum_next_s_carry__0_n_0),
        .CO({accum_next_s_carry__1_n_0,accum_next_s_carry__1_n_1,accum_next_s_carry__1_n_2,accum_next_s_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(data_i[11:8]),
        .O(p_0_in[4:1]),
        .S({accum_next_s_carry__1_i_1_n_0,accum_next_s_carry__1_i_2_n_0,accum_next_s_carry__1_i_3_n_0,accum_next_s_carry__1_i_4_n_0}));
  CARRY4 accum_next_s_carry__10
       (.CI(accum_next_s_carry__9_n_0),
        .CO({accum_next_s_carry__10_n_0,accum_next_s_carry__10_n_1,accum_next_s_carry__10_n_2,accum_next_s_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI(accum_s_reg[46:43]),
        .O(p_0_in[40:37]),
        .S({accum_next_s_carry__10_i_1_n_0,accum_next_s_carry__10_i_2_n_0,accum_next_s_carry__10_i_3_n_0,accum_next_s_carry__10_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__10_i_1
       (.I0(accum_s_reg[46]),
        .I1(accum_s_reg[47]),
        .O(accum_next_s_carry__10_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__10_i_2
       (.I0(accum_s_reg[45]),
        .I1(accum_s_reg[46]),
        .O(accum_next_s_carry__10_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__10_i_3
       (.I0(accum_s_reg[44]),
        .I1(accum_s_reg[45]),
        .O(accum_next_s_carry__10_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__10_i_4
       (.I0(accum_s_reg[43]),
        .I1(accum_s_reg[44]),
        .O(accum_next_s_carry__10_i_4_n_0));
  CARRY4 accum_next_s_carry__11
       (.CI(accum_next_s_carry__10_n_0),
        .CO({accum_next_s_carry__11_n_0,accum_next_s_carry__11_n_1,accum_next_s_carry__11_n_2,accum_next_s_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI(accum_s_reg[50:47]),
        .O(p_0_in[44:41]),
        .S({accum_next_s_carry__11_i_1_n_0,accum_next_s_carry__11_i_2_n_0,accum_next_s_carry__11_i_3_n_0,accum_next_s_carry__11_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__11_i_1
       (.I0(accum_s_reg[50]),
        .I1(accum_s_reg[51]),
        .O(accum_next_s_carry__11_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__11_i_2
       (.I0(accum_s_reg[49]),
        .I1(accum_s_reg[50]),
        .O(accum_next_s_carry__11_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__11_i_3
       (.I0(accum_s_reg[48]),
        .I1(accum_s_reg[49]),
        .O(accum_next_s_carry__11_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__11_i_4
       (.I0(accum_s_reg[47]),
        .I1(accum_s_reg[48]),
        .O(accum_next_s_carry__11_i_4_n_0));
  CARRY4 accum_next_s_carry__12
       (.CI(accum_next_s_carry__11_n_0),
        .CO({accum_next_s_carry__12_n_0,accum_next_s_carry__12_n_1,accum_next_s_carry__12_n_2,accum_next_s_carry__12_n_3}),
        .CYINIT(1'b0),
        .DI(accum_s_reg[54:51]),
        .O(p_0_in[48:45]),
        .S({accum_next_s_carry__12_i_1_n_0,accum_next_s_carry__12_i_2_n_0,accum_next_s_carry__12_i_3_n_0,accum_next_s_carry__12_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__12_i_1
       (.I0(accum_s_reg[54]),
        .I1(accum_s_reg[55]),
        .O(accum_next_s_carry__12_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__12_i_2
       (.I0(accum_s_reg[53]),
        .I1(accum_s_reg[54]),
        .O(accum_next_s_carry__12_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__12_i_3
       (.I0(accum_s_reg[52]),
        .I1(accum_s_reg[53]),
        .O(accum_next_s_carry__12_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__12_i_4
       (.I0(accum_s_reg[51]),
        .I1(accum_s_reg[52]),
        .O(accum_next_s_carry__12_i_4_n_0));
  CARRY4 accum_next_s_carry__13
       (.CI(accum_next_s_carry__12_n_0),
        .CO({accum_next_s_carry__13_n_0,accum_next_s_carry__13_n_1,accum_next_s_carry__13_n_2,accum_next_s_carry__13_n_3}),
        .CYINIT(1'b0),
        .DI(accum_s_reg[58:55]),
        .O(p_0_in[52:49]),
        .S({accum_next_s_carry__13_i_1_n_0,accum_next_s_carry__13_i_2_n_0,accum_next_s_carry__13_i_3_n_0,accum_next_s_carry__13_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__13_i_1
       (.I0(accum_s_reg[58]),
        .I1(accum_s_reg[59]),
        .O(accum_next_s_carry__13_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__13_i_2
       (.I0(accum_s_reg[57]),
        .I1(accum_s_reg[58]),
        .O(accum_next_s_carry__13_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__13_i_3
       (.I0(accum_s_reg[56]),
        .I1(accum_s_reg[57]),
        .O(accum_next_s_carry__13_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__13_i_4
       (.I0(accum_s_reg[55]),
        .I1(accum_s_reg[56]),
        .O(accum_next_s_carry__13_i_4_n_0));
  CARRY4 accum_next_s_carry__14
       (.CI(accum_next_s_carry__13_n_0),
        .CO({accum_next_s_carry__14_n_0,accum_next_s_carry__14_n_1,accum_next_s_carry__14_n_2,accum_next_s_carry__14_n_3}),
        .CYINIT(1'b0),
        .DI(accum_s_reg[62:59]),
        .O(p_0_in[56:53]),
        .S({accum_next_s_carry__14_i_1_n_0,accum_next_s_carry__14_i_2_n_0,accum_next_s_carry__14_i_3_n_0,accum_next_s_carry__14_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__14_i_1
       (.I0(accum_s_reg[62]),
        .I1(accum_s_reg[63]),
        .O(accum_next_s_carry__14_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__14_i_2
       (.I0(accum_s_reg[61]),
        .I1(accum_s_reg[62]),
        .O(accum_next_s_carry__14_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__14_i_3
       (.I0(accum_s_reg[60]),
        .I1(accum_s_reg[61]),
        .O(accum_next_s_carry__14_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__14_i_4
       (.I0(accum_s_reg[59]),
        .I1(accum_s_reg[60]),
        .O(accum_next_s_carry__14_i_4_n_0));
  CARRY4 accum_next_s_carry__15
       (.CI(accum_next_s_carry__14_n_0),
        .CO({accum_next_s_carry__15_n_0,accum_next_s_carry__15_n_1,accum_next_s_carry__15_n_2,accum_next_s_carry__15_n_3}),
        .CYINIT(1'b0),
        .DI(accum_s_reg[66:63]),
        .O(p_0_in[60:57]),
        .S({accum_next_s_carry__15_i_1_n_0,accum_next_s_carry__15_i_2_n_0,accum_next_s_carry__15_i_3_n_0,accum_next_s_carry__15_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__15_i_1
       (.I0(accum_s_reg[66]),
        .I1(accum_s_reg[67]),
        .O(accum_next_s_carry__15_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__15_i_2
       (.I0(accum_s_reg[65]),
        .I1(accum_s_reg[66]),
        .O(accum_next_s_carry__15_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__15_i_3
       (.I0(accum_s_reg[64]),
        .I1(accum_s_reg[65]),
        .O(accum_next_s_carry__15_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__15_i_4
       (.I0(accum_s_reg[63]),
        .I1(accum_s_reg[64]),
        .O(accum_next_s_carry__15_i_4_n_0));
  CARRY4 accum_next_s_carry__16
       (.CI(accum_next_s_carry__15_n_0),
        .CO({NLW_accum_next_s_carry__16_CO_UNCONNECTED[3:2],accum_next_s_carry__16_n_2,accum_next_s_carry__16_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,accum_s_reg[68:67]}),
        .O({NLW_accum_next_s_carry__16_O_UNCONNECTED[3],p_0_in[63:61]}),
        .S({1'b0,accum_next_s_carry__16_i_1_n_0,accum_next_s_carry__16_i_2_n_0,accum_next_s_carry__16_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__16_i_1
       (.I0(accum_s_reg[69]),
        .I1(accum_s_reg[70]),
        .O(accum_next_s_carry__16_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__16_i_2
       (.I0(accum_s_reg[68]),
        .I1(accum_s_reg[69]),
        .O(accum_next_s_carry__16_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__16_i_3
       (.I0(accum_s_reg[67]),
        .I1(accum_s_reg[68]),
        .O(accum_next_s_carry__16_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__1_i_1
       (.I0(data_i[11]),
        .I1(accum_s_reg[11]),
        .O(accum_next_s_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__1_i_2
       (.I0(data_i[10]),
        .I1(accum_s_reg[10]),
        .O(accum_next_s_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__1_i_3
       (.I0(data_i[9]),
        .I1(accum_s_reg[9]),
        .O(accum_next_s_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__1_i_4
       (.I0(data_i[8]),
        .I1(accum_s_reg[8]),
        .O(accum_next_s_carry__1_i_4_n_0));
  CARRY4 accum_next_s_carry__2
       (.CI(accum_next_s_carry__1_n_0),
        .CO({accum_next_s_carry__2_n_0,accum_next_s_carry__2_n_1,accum_next_s_carry__2_n_2,accum_next_s_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(data_i[15:12]),
        .O(p_0_in[8:5]),
        .S({accum_next_s_carry__2_i_1_n_0,accum_next_s_carry__2_i_2_n_0,accum_next_s_carry__2_i_3_n_0,accum_next_s_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__2_i_1
       (.I0(data_i[15]),
        .I1(accum_s_reg[15]),
        .O(accum_next_s_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__2_i_2
       (.I0(data_i[14]),
        .I1(accum_s_reg[14]),
        .O(accum_next_s_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__2_i_3
       (.I0(data_i[13]),
        .I1(accum_s_reg[13]),
        .O(accum_next_s_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__2_i_4
       (.I0(data_i[12]),
        .I1(accum_s_reg[12]),
        .O(accum_next_s_carry__2_i_4_n_0));
  CARRY4 accum_next_s_carry__3
       (.CI(accum_next_s_carry__2_n_0),
        .CO({accum_next_s_carry__3_n_0,accum_next_s_carry__3_n_1,accum_next_s_carry__3_n_2,accum_next_s_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(data_i[19:16]),
        .O(p_0_in[12:9]),
        .S({accum_next_s_carry__3_i_1_n_0,accum_next_s_carry__3_i_2_n_0,accum_next_s_carry__3_i_3_n_0,accum_next_s_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__3_i_1
       (.I0(data_i[19]),
        .I1(accum_s_reg[19]),
        .O(accum_next_s_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__3_i_2
       (.I0(data_i[18]),
        .I1(accum_s_reg[18]),
        .O(accum_next_s_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__3_i_3
       (.I0(data_i[17]),
        .I1(accum_s_reg[17]),
        .O(accum_next_s_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__3_i_4
       (.I0(data_i[16]),
        .I1(accum_s_reg[16]),
        .O(accum_next_s_carry__3_i_4_n_0));
  CARRY4 accum_next_s_carry__4
       (.CI(accum_next_s_carry__3_n_0),
        .CO({accum_next_s_carry__4_n_0,accum_next_s_carry__4_n_1,accum_next_s_carry__4_n_2,accum_next_s_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(data_i[23:20]),
        .O(p_0_in[16:13]),
        .S({accum_next_s_carry__4_i_1_n_0,accum_next_s_carry__4_i_2_n_0,accum_next_s_carry__4_i_3_n_0,accum_next_s_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__4_i_1
       (.I0(data_i[23]),
        .I1(accum_s_reg[23]),
        .O(accum_next_s_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__4_i_2
       (.I0(data_i[22]),
        .I1(accum_s_reg[22]),
        .O(accum_next_s_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__4_i_3
       (.I0(data_i[21]),
        .I1(accum_s_reg[21]),
        .O(accum_next_s_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__4_i_4
       (.I0(data_i[20]),
        .I1(accum_s_reg[20]),
        .O(accum_next_s_carry__4_i_4_n_0));
  CARRY4 accum_next_s_carry__5
       (.CI(accum_next_s_carry__4_n_0),
        .CO({accum_next_s_carry__5_n_0,accum_next_s_carry__5_n_1,accum_next_s_carry__5_n_2,accum_next_s_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(data_i[27:24]),
        .O(p_0_in[20:17]),
        .S({accum_next_s_carry__5_i_1_n_0,accum_next_s_carry__5_i_2_n_0,accum_next_s_carry__5_i_3_n_0,accum_next_s_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__5_i_1
       (.I0(data_i[27]),
        .I1(accum_s_reg[27]),
        .O(accum_next_s_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__5_i_2
       (.I0(data_i[26]),
        .I1(accum_s_reg[26]),
        .O(accum_next_s_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__5_i_3
       (.I0(data_i[25]),
        .I1(accum_s_reg[25]),
        .O(accum_next_s_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__5_i_4
       (.I0(data_i[24]),
        .I1(accum_s_reg[24]),
        .O(accum_next_s_carry__5_i_4_n_0));
  CARRY4 accum_next_s_carry__6
       (.CI(accum_next_s_carry__5_n_0),
        .CO({accum_next_s_carry__6_n_0,accum_next_s_carry__6_n_1,accum_next_s_carry__6_n_2,accum_next_s_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(data_i[31:28]),
        .O(p_0_in[24:21]),
        .S({accum_next_s_carry__6_i_1_n_0,accum_next_s_carry__6_i_2_n_0,accum_next_s_carry__6_i_3_n_0,accum_next_s_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__6_i_1
       (.I0(data_i[31]),
        .I1(accum_s_reg[31]),
        .O(accum_next_s_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__6_i_2
       (.I0(data_i[30]),
        .I1(accum_s_reg[30]),
        .O(accum_next_s_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__6_i_3
       (.I0(data_i[29]),
        .I1(accum_s_reg[29]),
        .O(accum_next_s_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__6_i_4
       (.I0(data_i[28]),
        .I1(accum_s_reg[28]),
        .O(accum_next_s_carry__6_i_4_n_0));
  CARRY4 accum_next_s_carry__7
       (.CI(accum_next_s_carry__6_n_0),
        .CO({accum_next_s_carry__7_n_0,accum_next_s_carry__7_n_1,accum_next_s_carry__7_n_2,accum_next_s_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI(data_i[35:32]),
        .O(p_0_in[28:25]),
        .S({accum_next_s_carry__7_i_1_n_0,accum_next_s_carry__7_i_2_n_0,accum_next_s_carry__7_i_3_n_0,accum_next_s_carry__7_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__7_i_1
       (.I0(data_i[35]),
        .I1(accum_s_reg[35]),
        .O(accum_next_s_carry__7_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__7_i_2
       (.I0(data_i[34]),
        .I1(accum_s_reg[34]),
        .O(accum_next_s_carry__7_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__7_i_3
       (.I0(data_i[33]),
        .I1(accum_s_reg[33]),
        .O(accum_next_s_carry__7_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__7_i_4
       (.I0(data_i[32]),
        .I1(accum_s_reg[32]),
        .O(accum_next_s_carry__7_i_4_n_0));
  CARRY4 accum_next_s_carry__8
       (.CI(accum_next_s_carry__7_n_0),
        .CO({accum_next_s_carry__8_n_0,accum_next_s_carry__8_n_1,accum_next_s_carry__8_n_2,accum_next_s_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({accum_next_s_carry__8_i_1_n_0,data_i[38:36]}),
        .O(p_0_in[32:29]),
        .S({accum_next_s_carry__8_i_2_n_0,accum_next_s_carry__8_i_3_n_0,accum_next_s_carry__8_i_4_n_0,accum_next_s_carry__8_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    accum_next_s_carry__8_i_1
       (.I0(accum_s_reg[39]),
        .O(accum_next_s_carry__8_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__8_i_2
       (.I0(accum_s_reg[39]),
        .I1(data_i[39]),
        .O(accum_next_s_carry__8_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__8_i_3
       (.I0(data_i[38]),
        .I1(accum_s_reg[38]),
        .O(accum_next_s_carry__8_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__8_i_4
       (.I0(data_i[37]),
        .I1(accum_s_reg[37]),
        .O(accum_next_s_carry__8_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__8_i_5
       (.I0(data_i[36]),
        .I1(accum_s_reg[36]),
        .O(accum_next_s_carry__8_i_5_n_0));
  CARRY4 accum_next_s_carry__9
       (.CI(accum_next_s_carry__8_n_0),
        .CO({accum_next_s_carry__9_n_0,accum_next_s_carry__9_n_1,accum_next_s_carry__9_n_2,accum_next_s_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI(accum_s_reg[42:39]),
        .O(p_0_in[36:33]),
        .S({accum_next_s_carry__9_i_1_n_0,accum_next_s_carry__9_i_2_n_0,accum_next_s_carry__9_i_3_n_0,accum_next_s_carry__9_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__9_i_1
       (.I0(accum_s_reg[42]),
        .I1(accum_s_reg[43]),
        .O(accum_next_s_carry__9_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__9_i_2
       (.I0(accum_s_reg[41]),
        .I1(accum_s_reg[42]),
        .O(accum_next_s_carry__9_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__9_i_3
       (.I0(accum_s_reg[40]),
        .I1(accum_s_reg[41]),
        .O(accum_next_s_carry__9_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__9_i_4
       (.I0(accum_s_reg[39]),
        .I1(accum_s_reg[40]),
        .O(accum_next_s_carry__9_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry_i_1
       (.I0(data_i[3]),
        .I1(accum_s_reg[3]),
        .O(accum_next_s_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry_i_2
       (.I0(data_i[2]),
        .I1(accum_s_reg[2]),
        .O(accum_next_s_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry_i_3
       (.I0(data_i[1]),
        .I1(accum_s_reg[1]),
        .O(accum_next_s_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry_i_4
       (.I0(data_i[0]),
        .I1(accum_s_reg[0]),
        .O(accum_next_s_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[0]_i_2 
       (.I0(data_i[3]),
        .I1(accum_s_reg[3]),
        .O(\accum_s[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[0]_i_3 
       (.I0(data_i[2]),
        .I1(accum_s_reg[2]),
        .O(\accum_s[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[0]_i_4 
       (.I0(data_i[1]),
        .I1(accum_s_reg[1]),
        .O(\accum_s[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[0]_i_5 
       (.I0(data_i[0]),
        .I1(accum_s_reg[0]),
        .O(\accum_s[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[12]_i_2 
       (.I0(data_i[15]),
        .I1(accum_s_reg[15]),
        .O(\accum_s[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[12]_i_3 
       (.I0(data_i[14]),
        .I1(accum_s_reg[14]),
        .O(\accum_s[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[12]_i_4 
       (.I0(data_i[13]),
        .I1(accum_s_reg[13]),
        .O(\accum_s[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[12]_i_5 
       (.I0(data_i[12]),
        .I1(accum_s_reg[12]),
        .O(\accum_s[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[16]_i_2 
       (.I0(data_i[19]),
        .I1(accum_s_reg[19]),
        .O(\accum_s[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[16]_i_3 
       (.I0(data_i[18]),
        .I1(accum_s_reg[18]),
        .O(\accum_s[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[16]_i_4 
       (.I0(data_i[17]),
        .I1(accum_s_reg[17]),
        .O(\accum_s[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[16]_i_5 
       (.I0(data_i[16]),
        .I1(accum_s_reg[16]),
        .O(\accum_s[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[20]_i_2 
       (.I0(data_i[23]),
        .I1(accum_s_reg[23]),
        .O(\accum_s[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[20]_i_3 
       (.I0(data_i[22]),
        .I1(accum_s_reg[22]),
        .O(\accum_s[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[20]_i_4 
       (.I0(data_i[21]),
        .I1(accum_s_reg[21]),
        .O(\accum_s[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[20]_i_5 
       (.I0(data_i[20]),
        .I1(accum_s_reg[20]),
        .O(\accum_s[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[24]_i_2 
       (.I0(data_i[27]),
        .I1(accum_s_reg[27]),
        .O(\accum_s[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[24]_i_3 
       (.I0(data_i[26]),
        .I1(accum_s_reg[26]),
        .O(\accum_s[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[24]_i_4 
       (.I0(data_i[25]),
        .I1(accum_s_reg[25]),
        .O(\accum_s[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[24]_i_5 
       (.I0(data_i[24]),
        .I1(accum_s_reg[24]),
        .O(\accum_s[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[28]_i_2 
       (.I0(data_i[31]),
        .I1(accum_s_reg[31]),
        .O(\accum_s[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[28]_i_3 
       (.I0(data_i[30]),
        .I1(accum_s_reg[30]),
        .O(\accum_s[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[28]_i_4 
       (.I0(data_i[29]),
        .I1(accum_s_reg[29]),
        .O(\accum_s[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[28]_i_5 
       (.I0(data_i[28]),
        .I1(accum_s_reg[28]),
        .O(\accum_s[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[32]_i_2 
       (.I0(data_i[35]),
        .I1(accum_s_reg[35]),
        .O(\accum_s[32]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[32]_i_3 
       (.I0(data_i[34]),
        .I1(accum_s_reg[34]),
        .O(\accum_s[32]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[32]_i_4 
       (.I0(data_i[33]),
        .I1(accum_s_reg[33]),
        .O(\accum_s[32]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[32]_i_5 
       (.I0(data_i[32]),
        .I1(accum_s_reg[32]),
        .O(\accum_s[32]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[36]_i_2 
       (.I0(data_i[39]),
        .I1(accum_s_reg[39]),
        .O(\accum_s[36]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[36]_i_3 
       (.I0(data_i[38]),
        .I1(accum_s_reg[38]),
        .O(\accum_s[36]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[36]_i_4 
       (.I0(data_i[37]),
        .I1(accum_s_reg[37]),
        .O(\accum_s[36]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[36]_i_5 
       (.I0(data_i[36]),
        .I1(accum_s_reg[36]),
        .O(\accum_s[36]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[40]_i_2 
       (.I0(data_i[39]),
        .I1(accum_s_reg[43]),
        .O(\accum_s[40]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[40]_i_3 
       (.I0(data_i[39]),
        .I1(accum_s_reg[42]),
        .O(\accum_s[40]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[40]_i_4 
       (.I0(data_i[39]),
        .I1(accum_s_reg[41]),
        .O(\accum_s[40]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[40]_i_5 
       (.I0(data_i[39]),
        .I1(accum_s_reg[40]),
        .O(\accum_s[40]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[44]_i_2 
       (.I0(data_i[39]),
        .I1(accum_s_reg[47]),
        .O(\accum_s[44]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[44]_i_3 
       (.I0(data_i[39]),
        .I1(accum_s_reg[46]),
        .O(\accum_s[44]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[44]_i_4 
       (.I0(data_i[39]),
        .I1(accum_s_reg[45]),
        .O(\accum_s[44]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[44]_i_5 
       (.I0(data_i[39]),
        .I1(accum_s_reg[44]),
        .O(\accum_s[44]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[48]_i_2 
       (.I0(data_i[39]),
        .I1(accum_s_reg[51]),
        .O(\accum_s[48]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[48]_i_3 
       (.I0(data_i[39]),
        .I1(accum_s_reg[50]),
        .O(\accum_s[48]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[48]_i_4 
       (.I0(data_i[39]),
        .I1(accum_s_reg[49]),
        .O(\accum_s[48]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[48]_i_5 
       (.I0(data_i[39]),
        .I1(accum_s_reg[48]),
        .O(\accum_s[48]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[4]_i_2 
       (.I0(data_i[7]),
        .I1(accum_s_reg[7]),
        .O(\accum_s[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[4]_i_3 
       (.I0(data_i[6]),
        .I1(accum_s_reg[6]),
        .O(\accum_s[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[4]_i_4 
       (.I0(data_i[5]),
        .I1(accum_s_reg[5]),
        .O(\accum_s[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[4]_i_5 
       (.I0(data_i[4]),
        .I1(accum_s_reg[4]),
        .O(\accum_s[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[52]_i_2 
       (.I0(data_i[39]),
        .I1(accum_s_reg[55]),
        .O(\accum_s[52]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[52]_i_3 
       (.I0(data_i[39]),
        .I1(accum_s_reg[54]),
        .O(\accum_s[52]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[52]_i_4 
       (.I0(data_i[39]),
        .I1(accum_s_reg[53]),
        .O(\accum_s[52]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[52]_i_5 
       (.I0(data_i[39]),
        .I1(accum_s_reg[52]),
        .O(\accum_s[52]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[56]_i_2 
       (.I0(data_i[39]),
        .I1(accum_s_reg[59]),
        .O(\accum_s[56]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[56]_i_3 
       (.I0(data_i[39]),
        .I1(accum_s_reg[58]),
        .O(\accum_s[56]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[56]_i_4 
       (.I0(data_i[39]),
        .I1(accum_s_reg[57]),
        .O(\accum_s[56]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[56]_i_5 
       (.I0(data_i[39]),
        .I1(accum_s_reg[56]),
        .O(\accum_s[56]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[60]_i_2 
       (.I0(data_i[39]),
        .I1(accum_s_reg[63]),
        .O(\accum_s[60]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[60]_i_3 
       (.I0(data_i[39]),
        .I1(accum_s_reg[62]),
        .O(\accum_s[60]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[60]_i_4 
       (.I0(data_i[39]),
        .I1(accum_s_reg[61]),
        .O(\accum_s[60]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[60]_i_5 
       (.I0(data_i[39]),
        .I1(accum_s_reg[60]),
        .O(\accum_s[60]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[64]_i_2 
       (.I0(data_i[39]),
        .I1(accum_s_reg[67]),
        .O(\accum_s[64]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[64]_i_3 
       (.I0(data_i[39]),
        .I1(accum_s_reg[66]),
        .O(\accum_s[64]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[64]_i_4 
       (.I0(data_i[39]),
        .I1(accum_s_reg[65]),
        .O(\accum_s[64]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[64]_i_5 
       (.I0(data_i[39]),
        .I1(accum_s_reg[64]),
        .O(\accum_s[64]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[68]_i_2 
       (.I0(data_i[39]),
        .I1(accum_s_reg[70]),
        .O(\accum_s[68]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[68]_i_3 
       (.I0(data_i[39]),
        .I1(accum_s_reg[69]),
        .O(\accum_s[68]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[68]_i_4 
       (.I0(data_i[39]),
        .I1(accum_s_reg[68]),
        .O(\accum_s[68]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[8]_i_2 
       (.I0(data_i[11]),
        .I1(accum_s_reg[11]),
        .O(\accum_s[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[8]_i_3 
       (.I0(data_i[10]),
        .I1(accum_s_reg[10]),
        .O(\accum_s[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[8]_i_4 
       (.I0(data_i[9]),
        .I1(accum_s_reg[9]),
        .O(\accum_s[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[8]_i_5 
       (.I0(data_i[8]),
        .I1(accum_s_reg[8]),
        .O(\accum_s[8]_i_5_n_0 ));
  FDRE \accum_s_reg[0] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[0]_i_1_n_7 ),
        .Q(accum_s_reg[0]),
        .R(cpt));
  CARRY4 \accum_s_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\accum_s_reg[0]_i_1_n_0 ,\accum_s_reg[0]_i_1_n_1 ,\accum_s_reg[0]_i_1_n_2 ,\accum_s_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i[3:0]),
        .O({\accum_s_reg[0]_i_1_n_4 ,\accum_s_reg[0]_i_1_n_5 ,\accum_s_reg[0]_i_1_n_6 ,\accum_s_reg[0]_i_1_n_7 }),
        .S({\accum_s[0]_i_2_n_0 ,\accum_s[0]_i_3_n_0 ,\accum_s[0]_i_4_n_0 ,\accum_s[0]_i_5_n_0 }));
  FDRE \accum_s_reg[10] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[8]_i_1_n_5 ),
        .Q(accum_s_reg[10]),
        .R(cpt));
  FDRE \accum_s_reg[11] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[8]_i_1_n_4 ),
        .Q(accum_s_reg[11]),
        .R(cpt));
  FDRE \accum_s_reg[12] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[12]_i_1_n_7 ),
        .Q(accum_s_reg[12]),
        .R(cpt));
  CARRY4 \accum_s_reg[12]_i_1 
       (.CI(\accum_s_reg[8]_i_1_n_0 ),
        .CO({\accum_s_reg[12]_i_1_n_0 ,\accum_s_reg[12]_i_1_n_1 ,\accum_s_reg[12]_i_1_n_2 ,\accum_s_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i[15:12]),
        .O({\accum_s_reg[12]_i_1_n_4 ,\accum_s_reg[12]_i_1_n_5 ,\accum_s_reg[12]_i_1_n_6 ,\accum_s_reg[12]_i_1_n_7 }),
        .S({\accum_s[12]_i_2_n_0 ,\accum_s[12]_i_3_n_0 ,\accum_s[12]_i_4_n_0 ,\accum_s[12]_i_5_n_0 }));
  FDRE \accum_s_reg[13] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[12]_i_1_n_6 ),
        .Q(accum_s_reg[13]),
        .R(cpt));
  FDRE \accum_s_reg[14] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[12]_i_1_n_5 ),
        .Q(accum_s_reg[14]),
        .R(cpt));
  FDRE \accum_s_reg[15] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[12]_i_1_n_4 ),
        .Q(accum_s_reg[15]),
        .R(cpt));
  FDRE \accum_s_reg[16] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[16]_i_1_n_7 ),
        .Q(accum_s_reg[16]),
        .R(cpt));
  CARRY4 \accum_s_reg[16]_i_1 
       (.CI(\accum_s_reg[12]_i_1_n_0 ),
        .CO({\accum_s_reg[16]_i_1_n_0 ,\accum_s_reg[16]_i_1_n_1 ,\accum_s_reg[16]_i_1_n_2 ,\accum_s_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i[19:16]),
        .O({\accum_s_reg[16]_i_1_n_4 ,\accum_s_reg[16]_i_1_n_5 ,\accum_s_reg[16]_i_1_n_6 ,\accum_s_reg[16]_i_1_n_7 }),
        .S({\accum_s[16]_i_2_n_0 ,\accum_s[16]_i_3_n_0 ,\accum_s[16]_i_4_n_0 ,\accum_s[16]_i_5_n_0 }));
  FDRE \accum_s_reg[17] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[16]_i_1_n_6 ),
        .Q(accum_s_reg[17]),
        .R(cpt));
  FDRE \accum_s_reg[18] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[16]_i_1_n_5 ),
        .Q(accum_s_reg[18]),
        .R(cpt));
  FDRE \accum_s_reg[19] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[16]_i_1_n_4 ),
        .Q(accum_s_reg[19]),
        .R(cpt));
  FDRE \accum_s_reg[1] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[0]_i_1_n_6 ),
        .Q(accum_s_reg[1]),
        .R(cpt));
  FDRE \accum_s_reg[20] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[20]_i_1_n_7 ),
        .Q(accum_s_reg[20]),
        .R(cpt));
  CARRY4 \accum_s_reg[20]_i_1 
       (.CI(\accum_s_reg[16]_i_1_n_0 ),
        .CO({\accum_s_reg[20]_i_1_n_0 ,\accum_s_reg[20]_i_1_n_1 ,\accum_s_reg[20]_i_1_n_2 ,\accum_s_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i[23:20]),
        .O({\accum_s_reg[20]_i_1_n_4 ,\accum_s_reg[20]_i_1_n_5 ,\accum_s_reg[20]_i_1_n_6 ,\accum_s_reg[20]_i_1_n_7 }),
        .S({\accum_s[20]_i_2_n_0 ,\accum_s[20]_i_3_n_0 ,\accum_s[20]_i_4_n_0 ,\accum_s[20]_i_5_n_0 }));
  FDRE \accum_s_reg[21] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[20]_i_1_n_6 ),
        .Q(accum_s_reg[21]),
        .R(cpt));
  FDRE \accum_s_reg[22] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[20]_i_1_n_5 ),
        .Q(accum_s_reg[22]),
        .R(cpt));
  FDRE \accum_s_reg[23] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[20]_i_1_n_4 ),
        .Q(accum_s_reg[23]),
        .R(cpt));
  FDRE \accum_s_reg[24] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[24]_i_1_n_7 ),
        .Q(accum_s_reg[24]),
        .R(cpt));
  CARRY4 \accum_s_reg[24]_i_1 
       (.CI(\accum_s_reg[20]_i_1_n_0 ),
        .CO({\accum_s_reg[24]_i_1_n_0 ,\accum_s_reg[24]_i_1_n_1 ,\accum_s_reg[24]_i_1_n_2 ,\accum_s_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i[27:24]),
        .O({\accum_s_reg[24]_i_1_n_4 ,\accum_s_reg[24]_i_1_n_5 ,\accum_s_reg[24]_i_1_n_6 ,\accum_s_reg[24]_i_1_n_7 }),
        .S({\accum_s[24]_i_2_n_0 ,\accum_s[24]_i_3_n_0 ,\accum_s[24]_i_4_n_0 ,\accum_s[24]_i_5_n_0 }));
  FDRE \accum_s_reg[25] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[24]_i_1_n_6 ),
        .Q(accum_s_reg[25]),
        .R(cpt));
  FDRE \accum_s_reg[26] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[24]_i_1_n_5 ),
        .Q(accum_s_reg[26]),
        .R(cpt));
  FDRE \accum_s_reg[27] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[24]_i_1_n_4 ),
        .Q(accum_s_reg[27]),
        .R(cpt));
  FDRE \accum_s_reg[28] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[28]_i_1_n_7 ),
        .Q(accum_s_reg[28]),
        .R(cpt));
  CARRY4 \accum_s_reg[28]_i_1 
       (.CI(\accum_s_reg[24]_i_1_n_0 ),
        .CO({\accum_s_reg[28]_i_1_n_0 ,\accum_s_reg[28]_i_1_n_1 ,\accum_s_reg[28]_i_1_n_2 ,\accum_s_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i[31:28]),
        .O({\accum_s_reg[28]_i_1_n_4 ,\accum_s_reg[28]_i_1_n_5 ,\accum_s_reg[28]_i_1_n_6 ,\accum_s_reg[28]_i_1_n_7 }),
        .S({\accum_s[28]_i_2_n_0 ,\accum_s[28]_i_3_n_0 ,\accum_s[28]_i_4_n_0 ,\accum_s[28]_i_5_n_0 }));
  FDRE \accum_s_reg[29] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[28]_i_1_n_6 ),
        .Q(accum_s_reg[29]),
        .R(cpt));
  FDRE \accum_s_reg[2] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[0]_i_1_n_5 ),
        .Q(accum_s_reg[2]),
        .R(cpt));
  FDRE \accum_s_reg[30] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[28]_i_1_n_5 ),
        .Q(accum_s_reg[30]),
        .R(cpt));
  FDRE \accum_s_reg[31] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[28]_i_1_n_4 ),
        .Q(accum_s_reg[31]),
        .R(cpt));
  FDRE \accum_s_reg[32] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[32]_i_1_n_7 ),
        .Q(accum_s_reg[32]),
        .R(cpt));
  CARRY4 \accum_s_reg[32]_i_1 
       (.CI(\accum_s_reg[28]_i_1_n_0 ),
        .CO({\accum_s_reg[32]_i_1_n_0 ,\accum_s_reg[32]_i_1_n_1 ,\accum_s_reg[32]_i_1_n_2 ,\accum_s_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i[35:32]),
        .O({\accum_s_reg[32]_i_1_n_4 ,\accum_s_reg[32]_i_1_n_5 ,\accum_s_reg[32]_i_1_n_6 ,\accum_s_reg[32]_i_1_n_7 }),
        .S({\accum_s[32]_i_2_n_0 ,\accum_s[32]_i_3_n_0 ,\accum_s[32]_i_4_n_0 ,\accum_s[32]_i_5_n_0 }));
  FDRE \accum_s_reg[33] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[32]_i_1_n_6 ),
        .Q(accum_s_reg[33]),
        .R(cpt));
  FDRE \accum_s_reg[34] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[32]_i_1_n_5 ),
        .Q(accum_s_reg[34]),
        .R(cpt));
  FDRE \accum_s_reg[35] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[32]_i_1_n_4 ),
        .Q(accum_s_reg[35]),
        .R(cpt));
  FDRE \accum_s_reg[36] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[36]_i_1_n_7 ),
        .Q(accum_s_reg[36]),
        .R(cpt));
  CARRY4 \accum_s_reg[36]_i_1 
       (.CI(\accum_s_reg[32]_i_1_n_0 ),
        .CO({\accum_s_reg[36]_i_1_n_0 ,\accum_s_reg[36]_i_1_n_1 ,\accum_s_reg[36]_i_1_n_2 ,\accum_s_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i[39:36]),
        .O({\accum_s_reg[36]_i_1_n_4 ,\accum_s_reg[36]_i_1_n_5 ,\accum_s_reg[36]_i_1_n_6 ,\accum_s_reg[36]_i_1_n_7 }),
        .S({\accum_s[36]_i_2_n_0 ,\accum_s[36]_i_3_n_0 ,\accum_s[36]_i_4_n_0 ,\accum_s[36]_i_5_n_0 }));
  FDRE \accum_s_reg[37] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[36]_i_1_n_6 ),
        .Q(accum_s_reg[37]),
        .R(cpt));
  FDRE \accum_s_reg[38] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[36]_i_1_n_5 ),
        .Q(accum_s_reg[38]),
        .R(cpt));
  FDRE \accum_s_reg[39] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[36]_i_1_n_4 ),
        .Q(accum_s_reg[39]),
        .R(cpt));
  FDRE \accum_s_reg[3] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[0]_i_1_n_4 ),
        .Q(accum_s_reg[3]),
        .R(cpt));
  FDRE \accum_s_reg[40] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[40]_i_1_n_7 ),
        .Q(accum_s_reg[40]),
        .R(cpt));
  CARRY4 \accum_s_reg[40]_i_1 
       (.CI(\accum_s_reg[36]_i_1_n_0 ),
        .CO({\accum_s_reg[40]_i_1_n_0 ,\accum_s_reg[40]_i_1_n_1 ,\accum_s_reg[40]_i_1_n_2 ,\accum_s_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({data_i[39],data_i[39],data_i[39],data_i[39]}),
        .O({\accum_s_reg[40]_i_1_n_4 ,\accum_s_reg[40]_i_1_n_5 ,\accum_s_reg[40]_i_1_n_6 ,\accum_s_reg[40]_i_1_n_7 }),
        .S({\accum_s[40]_i_2_n_0 ,\accum_s[40]_i_3_n_0 ,\accum_s[40]_i_4_n_0 ,\accum_s[40]_i_5_n_0 }));
  FDRE \accum_s_reg[41] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[40]_i_1_n_6 ),
        .Q(accum_s_reg[41]),
        .R(cpt));
  FDRE \accum_s_reg[42] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[40]_i_1_n_5 ),
        .Q(accum_s_reg[42]),
        .R(cpt));
  FDRE \accum_s_reg[43] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[40]_i_1_n_4 ),
        .Q(accum_s_reg[43]),
        .R(cpt));
  FDRE \accum_s_reg[44] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[44]_i_1_n_7 ),
        .Q(accum_s_reg[44]),
        .R(cpt));
  CARRY4 \accum_s_reg[44]_i_1 
       (.CI(\accum_s_reg[40]_i_1_n_0 ),
        .CO({\accum_s_reg[44]_i_1_n_0 ,\accum_s_reg[44]_i_1_n_1 ,\accum_s_reg[44]_i_1_n_2 ,\accum_s_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({data_i[39],data_i[39],data_i[39],data_i[39]}),
        .O({\accum_s_reg[44]_i_1_n_4 ,\accum_s_reg[44]_i_1_n_5 ,\accum_s_reg[44]_i_1_n_6 ,\accum_s_reg[44]_i_1_n_7 }),
        .S({\accum_s[44]_i_2_n_0 ,\accum_s[44]_i_3_n_0 ,\accum_s[44]_i_4_n_0 ,\accum_s[44]_i_5_n_0 }));
  FDRE \accum_s_reg[45] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[44]_i_1_n_6 ),
        .Q(accum_s_reg[45]),
        .R(cpt));
  FDRE \accum_s_reg[46] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[44]_i_1_n_5 ),
        .Q(accum_s_reg[46]),
        .R(cpt));
  FDRE \accum_s_reg[47] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[44]_i_1_n_4 ),
        .Q(accum_s_reg[47]),
        .R(cpt));
  FDRE \accum_s_reg[48] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[48]_i_1_n_7 ),
        .Q(accum_s_reg[48]),
        .R(cpt));
  CARRY4 \accum_s_reg[48]_i_1 
       (.CI(\accum_s_reg[44]_i_1_n_0 ),
        .CO({\accum_s_reg[48]_i_1_n_0 ,\accum_s_reg[48]_i_1_n_1 ,\accum_s_reg[48]_i_1_n_2 ,\accum_s_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({data_i[39],data_i[39],data_i[39],data_i[39]}),
        .O({\accum_s_reg[48]_i_1_n_4 ,\accum_s_reg[48]_i_1_n_5 ,\accum_s_reg[48]_i_1_n_6 ,\accum_s_reg[48]_i_1_n_7 }),
        .S({\accum_s[48]_i_2_n_0 ,\accum_s[48]_i_3_n_0 ,\accum_s[48]_i_4_n_0 ,\accum_s[48]_i_5_n_0 }));
  FDRE \accum_s_reg[49] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[48]_i_1_n_6 ),
        .Q(accum_s_reg[49]),
        .R(cpt));
  FDRE \accum_s_reg[4] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[4]_i_1_n_7 ),
        .Q(accum_s_reg[4]),
        .R(cpt));
  CARRY4 \accum_s_reg[4]_i_1 
       (.CI(\accum_s_reg[0]_i_1_n_0 ),
        .CO({\accum_s_reg[4]_i_1_n_0 ,\accum_s_reg[4]_i_1_n_1 ,\accum_s_reg[4]_i_1_n_2 ,\accum_s_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i[7:4]),
        .O({\accum_s_reg[4]_i_1_n_4 ,\accum_s_reg[4]_i_1_n_5 ,\accum_s_reg[4]_i_1_n_6 ,\accum_s_reg[4]_i_1_n_7 }),
        .S({\accum_s[4]_i_2_n_0 ,\accum_s[4]_i_3_n_0 ,\accum_s[4]_i_4_n_0 ,\accum_s[4]_i_5_n_0 }));
  FDRE \accum_s_reg[50] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[48]_i_1_n_5 ),
        .Q(accum_s_reg[50]),
        .R(cpt));
  FDRE \accum_s_reg[51] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[48]_i_1_n_4 ),
        .Q(accum_s_reg[51]),
        .R(cpt));
  FDRE \accum_s_reg[52] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[52]_i_1_n_7 ),
        .Q(accum_s_reg[52]),
        .R(cpt));
  CARRY4 \accum_s_reg[52]_i_1 
       (.CI(\accum_s_reg[48]_i_1_n_0 ),
        .CO({\accum_s_reg[52]_i_1_n_0 ,\accum_s_reg[52]_i_1_n_1 ,\accum_s_reg[52]_i_1_n_2 ,\accum_s_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({data_i[39],data_i[39],data_i[39],data_i[39]}),
        .O({\accum_s_reg[52]_i_1_n_4 ,\accum_s_reg[52]_i_1_n_5 ,\accum_s_reg[52]_i_1_n_6 ,\accum_s_reg[52]_i_1_n_7 }),
        .S({\accum_s[52]_i_2_n_0 ,\accum_s[52]_i_3_n_0 ,\accum_s[52]_i_4_n_0 ,\accum_s[52]_i_5_n_0 }));
  FDRE \accum_s_reg[53] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[52]_i_1_n_6 ),
        .Q(accum_s_reg[53]),
        .R(cpt));
  FDRE \accum_s_reg[54] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[52]_i_1_n_5 ),
        .Q(accum_s_reg[54]),
        .R(cpt));
  FDRE \accum_s_reg[55] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[52]_i_1_n_4 ),
        .Q(accum_s_reg[55]),
        .R(cpt));
  FDRE \accum_s_reg[56] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[56]_i_1_n_7 ),
        .Q(accum_s_reg[56]),
        .R(cpt));
  CARRY4 \accum_s_reg[56]_i_1 
       (.CI(\accum_s_reg[52]_i_1_n_0 ),
        .CO({\accum_s_reg[56]_i_1_n_0 ,\accum_s_reg[56]_i_1_n_1 ,\accum_s_reg[56]_i_1_n_2 ,\accum_s_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({data_i[39],data_i[39],data_i[39],data_i[39]}),
        .O({\accum_s_reg[56]_i_1_n_4 ,\accum_s_reg[56]_i_1_n_5 ,\accum_s_reg[56]_i_1_n_6 ,\accum_s_reg[56]_i_1_n_7 }),
        .S({\accum_s[56]_i_2_n_0 ,\accum_s[56]_i_3_n_0 ,\accum_s[56]_i_4_n_0 ,\accum_s[56]_i_5_n_0 }));
  FDRE \accum_s_reg[57] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[56]_i_1_n_6 ),
        .Q(accum_s_reg[57]),
        .R(cpt));
  FDRE \accum_s_reg[58] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[56]_i_1_n_5 ),
        .Q(accum_s_reg[58]),
        .R(cpt));
  FDRE \accum_s_reg[59] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[56]_i_1_n_4 ),
        .Q(accum_s_reg[59]),
        .R(cpt));
  FDRE \accum_s_reg[5] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[4]_i_1_n_6 ),
        .Q(accum_s_reg[5]),
        .R(cpt));
  FDRE \accum_s_reg[60] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[60]_i_1_n_7 ),
        .Q(accum_s_reg[60]),
        .R(cpt));
  CARRY4 \accum_s_reg[60]_i_1 
       (.CI(\accum_s_reg[56]_i_1_n_0 ),
        .CO({\accum_s_reg[60]_i_1_n_0 ,\accum_s_reg[60]_i_1_n_1 ,\accum_s_reg[60]_i_1_n_2 ,\accum_s_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({data_i[39],data_i[39],data_i[39],data_i[39]}),
        .O({\accum_s_reg[60]_i_1_n_4 ,\accum_s_reg[60]_i_1_n_5 ,\accum_s_reg[60]_i_1_n_6 ,\accum_s_reg[60]_i_1_n_7 }),
        .S({\accum_s[60]_i_2_n_0 ,\accum_s[60]_i_3_n_0 ,\accum_s[60]_i_4_n_0 ,\accum_s[60]_i_5_n_0 }));
  FDRE \accum_s_reg[61] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[60]_i_1_n_6 ),
        .Q(accum_s_reg[61]),
        .R(cpt));
  FDRE \accum_s_reg[62] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[60]_i_1_n_5 ),
        .Q(accum_s_reg[62]),
        .R(cpt));
  FDRE \accum_s_reg[63] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[60]_i_1_n_4 ),
        .Q(accum_s_reg[63]),
        .R(cpt));
  FDRE \accum_s_reg[64] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[64]_i_1_n_7 ),
        .Q(accum_s_reg[64]),
        .R(cpt));
  CARRY4 \accum_s_reg[64]_i_1 
       (.CI(\accum_s_reg[60]_i_1_n_0 ),
        .CO({\accum_s_reg[64]_i_1_n_0 ,\accum_s_reg[64]_i_1_n_1 ,\accum_s_reg[64]_i_1_n_2 ,\accum_s_reg[64]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({data_i[39],data_i[39],data_i[39],data_i[39]}),
        .O({\accum_s_reg[64]_i_1_n_4 ,\accum_s_reg[64]_i_1_n_5 ,\accum_s_reg[64]_i_1_n_6 ,\accum_s_reg[64]_i_1_n_7 }),
        .S({\accum_s[64]_i_2_n_0 ,\accum_s[64]_i_3_n_0 ,\accum_s[64]_i_4_n_0 ,\accum_s[64]_i_5_n_0 }));
  FDRE \accum_s_reg[65] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[64]_i_1_n_6 ),
        .Q(accum_s_reg[65]),
        .R(cpt));
  FDRE \accum_s_reg[66] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[64]_i_1_n_5 ),
        .Q(accum_s_reg[66]),
        .R(cpt));
  FDRE \accum_s_reg[67] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[64]_i_1_n_4 ),
        .Q(accum_s_reg[67]),
        .R(cpt));
  FDRE \accum_s_reg[68] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[68]_i_1_n_7 ),
        .Q(accum_s_reg[68]),
        .R(cpt));
  CARRY4 \accum_s_reg[68]_i_1 
       (.CI(\accum_s_reg[64]_i_1_n_0 ),
        .CO({\NLW_accum_s_reg[68]_i_1_CO_UNCONNECTED [3:2],\accum_s_reg[68]_i_1_n_2 ,\accum_s_reg[68]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data_i[39],data_i[39]}),
        .O({\NLW_accum_s_reg[68]_i_1_O_UNCONNECTED [3],\accum_s_reg[68]_i_1_n_5 ,\accum_s_reg[68]_i_1_n_6 ,\accum_s_reg[68]_i_1_n_7 }),
        .S({1'b0,\accum_s[68]_i_2_n_0 ,\accum_s[68]_i_3_n_0 ,\accum_s[68]_i_4_n_0 }));
  FDRE \accum_s_reg[69] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[68]_i_1_n_6 ),
        .Q(accum_s_reg[69]),
        .R(cpt));
  FDRE \accum_s_reg[6] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[4]_i_1_n_5 ),
        .Q(accum_s_reg[6]),
        .R(cpt));
  FDRE \accum_s_reg[70] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[68]_i_1_n_5 ),
        .Q(accum_s_reg[70]),
        .R(cpt));
  FDRE \accum_s_reg[7] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[4]_i_1_n_4 ),
        .Q(accum_s_reg[7]),
        .R(cpt));
  FDRE \accum_s_reg[8] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[8]_i_1_n_7 ),
        .Q(accum_s_reg[8]),
        .R(cpt));
  CARRY4 \accum_s_reg[8]_i_1 
       (.CI(\accum_s_reg[4]_i_1_n_0 ),
        .CO({\accum_s_reg[8]_i_1_n_0 ,\accum_s_reg[8]_i_1_n_1 ,\accum_s_reg[8]_i_1_n_2 ,\accum_s_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i[11:8]),
        .O({\accum_s_reg[8]_i_1_n_4 ,\accum_s_reg[8]_i_1_n_5 ,\accum_s_reg[8]_i_1_n_6 ,\accum_s_reg[8]_i_1_n_7 }),
        .S({\accum_s[8]_i_2_n_0 ,\accum_s[8]_i_3_n_0 ,\accum_s[8]_i_4_n_0 ,\accum_s[8]_i_5_n_0 }));
  FDRE \accum_s_reg[9] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[8]_i_1_n_6 ),
        .Q(accum_s_reg[9]),
        .R(cpt));
  LUT1 #(
    .INIT(2'h1)) 
    \cpt[0]_i_1 
       (.I0(cpt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cpt[1]_i_1 
       (.I0(cpt_reg[0]),
        .I1(cpt_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cpt[2]_i_1 
       (.I0(cpt_reg[1]),
        .I1(cpt_reg[0]),
        .I2(cpt_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cpt[3]_i_1 
       (.I0(cpt_reg[2]),
        .I1(cpt_reg[0]),
        .I2(cpt_reg[1]),
        .I3(cpt_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cpt[4]_i_1 
       (.I0(cpt_reg[3]),
        .I1(cpt_reg[1]),
        .I2(cpt_reg[0]),
        .I3(cpt_reg[2]),
        .I4(cpt_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cpt[5]_i_1 
       (.I0(cpt_reg[4]),
        .I1(cpt_reg[2]),
        .I2(cpt_reg[0]),
        .I3(cpt_reg[1]),
        .I4(cpt_reg[3]),
        .I5(cpt_reg[5]),
        .O(p_0_in__0[5]));
  LUT4 #(
    .INIT(16'hFF40)) 
    \cpt[6]_i_1 
       (.I0(\final_s[63]_i_2_n_0 ),
        .I1(cpt_reg[6]),
        .I2(data_en_i),
        .I3(data_rst_i),
        .O(cpt));
  LUT2 #(
    .INIT(4'h9)) 
    \cpt[6]_i_2 
       (.I0(\final_s[63]_i_2_n_0 ),
        .I1(cpt_reg[6]),
        .O(p_0_in__0[6]));
  FDRE \cpt_reg[0] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(p_0_in__0[0]),
        .Q(cpt_reg[0]),
        .R(cpt));
  FDRE \cpt_reg[1] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(p_0_in__0[1]),
        .Q(cpt_reg[1]),
        .R(cpt));
  FDRE \cpt_reg[2] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(p_0_in__0[2]),
        .Q(cpt_reg[2]),
        .R(cpt));
  FDRE \cpt_reg[3] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(p_0_in__0[3]),
        .Q(cpt_reg[3]),
        .R(cpt));
  FDRE \cpt_reg[4] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(p_0_in__0[4]),
        .Q(cpt_reg[4]),
        .R(cpt));
  FDRE \cpt_reg[5] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(p_0_in__0[5]),
        .Q(cpt_reg[5]),
        .R(cpt));
  FDRE \cpt_reg[6] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(p_0_in__0[6]),
        .Q(cpt_reg[6]),
        .R(cpt));
  LUT4 #(
    .INIT(16'h0040)) 
    data_en_o_i_1
       (.I0(\final_s[63]_i_2_n_0 ),
        .I1(cpt_reg[6]),
        .I2(data_en_i),
        .I3(data_rst_i),
        .O(data_en_o_i_1_n_0));
  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_o_i_1_n_0),
        .Q(data_en_o),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \final_s[63]_i_1 
       (.I0(data_en_i),
        .I1(cpt_reg[6]),
        .I2(\final_s[63]_i_2_n_0 ),
        .O(\final_s[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \final_s[63]_i_2 
       (.I0(cpt_reg[4]),
        .I1(cpt_reg[2]),
        .I2(cpt_reg[0]),
        .I3(cpt_reg[1]),
        .I4(cpt_reg[3]),
        .I5(cpt_reg[5]),
        .O(\final_s[63]_i_2_n_0 ));
  FDRE \final_s_reg[0] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(data_o[0]),
        .R(data_rst_i));
  FDRE \final_s_reg[10] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(data_o[10]),
        .R(data_rst_i));
  FDRE \final_s_reg[11] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(data_o[11]),
        .R(data_rst_i));
  FDRE \final_s_reg[12] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(data_o[12]),
        .R(data_rst_i));
  FDRE \final_s_reg[13] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(data_o[13]),
        .R(data_rst_i));
  FDRE \final_s_reg[14] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(data_o[14]),
        .R(data_rst_i));
  FDRE \final_s_reg[15] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(data_o[15]),
        .R(data_rst_i));
  FDRE \final_s_reg[16] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[16]),
        .Q(data_o[16]),
        .R(data_rst_i));
  FDRE \final_s_reg[17] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[17]),
        .Q(data_o[17]),
        .R(data_rst_i));
  FDRE \final_s_reg[18] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[18]),
        .Q(data_o[18]),
        .R(data_rst_i));
  FDRE \final_s_reg[19] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[19]),
        .Q(data_o[19]),
        .R(data_rst_i));
  FDRE \final_s_reg[1] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(data_o[1]),
        .R(data_rst_i));
  FDRE \final_s_reg[20] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[20]),
        .Q(data_o[20]),
        .R(data_rst_i));
  FDRE \final_s_reg[21] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[21]),
        .Q(data_o[21]),
        .R(data_rst_i));
  FDRE \final_s_reg[22] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[22]),
        .Q(data_o[22]),
        .R(data_rst_i));
  FDRE \final_s_reg[23] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[23]),
        .Q(data_o[23]),
        .R(data_rst_i));
  FDRE \final_s_reg[24] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[24]),
        .Q(data_o[24]),
        .R(data_rst_i));
  FDRE \final_s_reg[25] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[25]),
        .Q(data_o[25]),
        .R(data_rst_i));
  FDRE \final_s_reg[26] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[26]),
        .Q(data_o[26]),
        .R(data_rst_i));
  FDRE \final_s_reg[27] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[27]),
        .Q(data_o[27]),
        .R(data_rst_i));
  FDRE \final_s_reg[28] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[28]),
        .Q(data_o[28]),
        .R(data_rst_i));
  FDRE \final_s_reg[29] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[29]),
        .Q(data_o[29]),
        .R(data_rst_i));
  FDRE \final_s_reg[2] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(data_o[2]),
        .R(data_rst_i));
  FDRE \final_s_reg[30] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[30]),
        .Q(data_o[30]),
        .R(data_rst_i));
  FDRE \final_s_reg[31] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[31]),
        .Q(data_o[31]),
        .R(data_rst_i));
  FDRE \final_s_reg[32] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[32]),
        .Q(data_o[32]),
        .R(data_rst_i));
  FDRE \final_s_reg[33] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[33]),
        .Q(data_o[33]),
        .R(data_rst_i));
  FDRE \final_s_reg[34] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[34]),
        .Q(data_o[34]),
        .R(data_rst_i));
  FDRE \final_s_reg[35] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[35]),
        .Q(data_o[35]),
        .R(data_rst_i));
  FDRE \final_s_reg[36] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[36]),
        .Q(data_o[36]),
        .R(data_rst_i));
  FDRE \final_s_reg[37] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[37]),
        .Q(data_o[37]),
        .R(data_rst_i));
  FDRE \final_s_reg[38] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[38]),
        .Q(data_o[38]),
        .R(data_rst_i));
  FDRE \final_s_reg[39] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[39]),
        .Q(data_o[39]),
        .R(data_rst_i));
  FDRE \final_s_reg[3] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(data_o[3]),
        .R(data_rst_i));
  FDRE \final_s_reg[40] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[40]),
        .Q(data_o[40]),
        .R(data_rst_i));
  FDRE \final_s_reg[41] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[41]),
        .Q(data_o[41]),
        .R(data_rst_i));
  FDRE \final_s_reg[42] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[42]),
        .Q(data_o[42]),
        .R(data_rst_i));
  FDRE \final_s_reg[43] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[43]),
        .Q(data_o[43]),
        .R(data_rst_i));
  FDRE \final_s_reg[44] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[44]),
        .Q(data_o[44]),
        .R(data_rst_i));
  FDRE \final_s_reg[45] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[45]),
        .Q(data_o[45]),
        .R(data_rst_i));
  FDRE \final_s_reg[46] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[46]),
        .Q(data_o[46]),
        .R(data_rst_i));
  FDRE \final_s_reg[47] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[47]),
        .Q(data_o[47]),
        .R(data_rst_i));
  FDRE \final_s_reg[48] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[48]),
        .Q(data_o[48]),
        .R(data_rst_i));
  FDRE \final_s_reg[49] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[49]),
        .Q(data_o[49]),
        .R(data_rst_i));
  FDRE \final_s_reg[4] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(data_o[4]),
        .R(data_rst_i));
  FDRE \final_s_reg[50] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[50]),
        .Q(data_o[50]),
        .R(data_rst_i));
  FDRE \final_s_reg[51] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[51]),
        .Q(data_o[51]),
        .R(data_rst_i));
  FDRE \final_s_reg[52] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[52]),
        .Q(data_o[52]),
        .R(data_rst_i));
  FDRE \final_s_reg[53] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[53]),
        .Q(data_o[53]),
        .R(data_rst_i));
  FDRE \final_s_reg[54] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[54]),
        .Q(data_o[54]),
        .R(data_rst_i));
  FDRE \final_s_reg[55] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[55]),
        .Q(data_o[55]),
        .R(data_rst_i));
  FDRE \final_s_reg[56] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[56]),
        .Q(data_o[56]),
        .R(data_rst_i));
  FDRE \final_s_reg[57] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[57]),
        .Q(data_o[57]),
        .R(data_rst_i));
  FDRE \final_s_reg[58] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[58]),
        .Q(data_o[58]),
        .R(data_rst_i));
  FDRE \final_s_reg[59] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[59]),
        .Q(data_o[59]),
        .R(data_rst_i));
  FDRE \final_s_reg[5] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(data_o[5]),
        .R(data_rst_i));
  FDRE \final_s_reg[60] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[60]),
        .Q(data_o[60]),
        .R(data_rst_i));
  FDRE \final_s_reg[61] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[61]),
        .Q(data_o[61]),
        .R(data_rst_i));
  FDRE \final_s_reg[62] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[62]),
        .Q(data_o[62]),
        .R(data_rst_i));
  FDRE \final_s_reg[63] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[63]),
        .Q(data_o[63]),
        .R(data_rst_i));
  FDRE \final_s_reg[6] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(data_o[6]),
        .R(data_rst_i));
  FDRE \final_s_reg[7] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(data_o[7]),
        .R(data_rst_i));
  FDRE \final_s_reg[8] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(data_o[8]),
        .R(data_rst_i));
  FDRE \final_s_reg[9] 
       (.C(data_clk_i),
        .CE(\final_s[63]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(data_o[9]),
        .R(data_rst_i));
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
