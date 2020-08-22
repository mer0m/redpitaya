// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri May 15 18:36:16 2020
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
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA" *) input [13:0]data_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_EN" *) input data_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_CLK" *) input data_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_RST" *) input data_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA" *) output [15:0]data_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_CLK" *) output data_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_RST" *) output data_rst_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EN" *) output data_en_o;

  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire [13:0]data_i;
  wire [15:0]data_o;
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
  output [15:0]data_o;
  output data_en_o;
  input [13:0]data_i;
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
  wire accum_next_s_carry__2_i_5_n_0;
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
  wire accum_next_s_carry__4_n_2;
  wire accum_next_s_carry__4_n_3;
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
  wire \accum_s[4]_i_2_n_0 ;
  wire \accum_s[4]_i_3_n_0 ;
  wire \accum_s[4]_i_4_n_0 ;
  wire \accum_s[4]_i_5_n_0 ;
  wire \accum_s[8]_i_2_n_0 ;
  wire \accum_s[8]_i_3_n_0 ;
  wire \accum_s[8]_i_4_n_0 ;
  wire \accum_s[8]_i_5_n_0 ;
  wire [22:0]accum_s_reg;
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
  wire \accum_s_reg[20]_i_1_n_2 ;
  wire \accum_s_reg[20]_i_1_n_3 ;
  wire \accum_s_reg[20]_i_1_n_5 ;
  wire \accum_s_reg[20]_i_1_n_6 ;
  wire \accum_s_reg[20]_i_1_n_7 ;
  wire \accum_s_reg[4]_i_1_n_0 ;
  wire \accum_s_reg[4]_i_1_n_1 ;
  wire \accum_s_reg[4]_i_1_n_2 ;
  wire \accum_s_reg[4]_i_1_n_3 ;
  wire \accum_s_reg[4]_i_1_n_4 ;
  wire \accum_s_reg[4]_i_1_n_5 ;
  wire \accum_s_reg[4]_i_1_n_6 ;
  wire \accum_s_reg[4]_i_1_n_7 ;
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
  wire [13:0]data_i;
  wire [15:0]data_o;
  wire data_rst_i;
  wire \final_s[15]_i_1_n_0 ;
  wire \final_s[15]_i_2_n_0 ;
  wire [15:0]p_0_in;
  wire [6:0]p_0_in__0;
  wire [3:0]NLW_accum_next_s_carry_O_UNCONNECTED;
  wire [2:0]NLW_accum_next_s_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_accum_next_s_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_accum_next_s_carry__4_O_UNCONNECTED;
  wire [3:2]\NLW_accum_s_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_accum_s_reg[20]_i_1_O_UNCONNECTED ;

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
        .DI({accum_s_reg[14:13],accum_next_s_carry__2_i_1_n_0,data_i[12]}),
        .O(p_0_in[8:5]),
        .S({accum_next_s_carry__2_i_2_n_0,accum_next_s_carry__2_i_3_n_0,accum_next_s_carry__2_i_4_n_0,accum_next_s_carry__2_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    accum_next_s_carry__2_i_1
       (.I0(accum_s_reg[13]),
        .O(accum_next_s_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__2_i_2
       (.I0(accum_s_reg[14]),
        .I1(accum_s_reg[15]),
        .O(accum_next_s_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__2_i_3
       (.I0(accum_s_reg[13]),
        .I1(accum_s_reg[14]),
        .O(accum_next_s_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__2_i_4
       (.I0(accum_s_reg[13]),
        .I1(data_i[13]),
        .O(accum_next_s_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum_next_s_carry__2_i_5
       (.I0(data_i[12]),
        .I1(accum_s_reg[12]),
        .O(accum_next_s_carry__2_i_5_n_0));
  CARRY4 accum_next_s_carry__3
       (.CI(accum_next_s_carry__2_n_0),
        .CO({accum_next_s_carry__3_n_0,accum_next_s_carry__3_n_1,accum_next_s_carry__3_n_2,accum_next_s_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(accum_s_reg[18:15]),
        .O(p_0_in[12:9]),
        .S({accum_next_s_carry__3_i_1_n_0,accum_next_s_carry__3_i_2_n_0,accum_next_s_carry__3_i_3_n_0,accum_next_s_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__3_i_1
       (.I0(accum_s_reg[18]),
        .I1(accum_s_reg[19]),
        .O(accum_next_s_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__3_i_2
       (.I0(accum_s_reg[17]),
        .I1(accum_s_reg[18]),
        .O(accum_next_s_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__3_i_3
       (.I0(accum_s_reg[16]),
        .I1(accum_s_reg[17]),
        .O(accum_next_s_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__3_i_4
       (.I0(accum_s_reg[15]),
        .I1(accum_s_reg[16]),
        .O(accum_next_s_carry__3_i_4_n_0));
  CARRY4 accum_next_s_carry__4
       (.CI(accum_next_s_carry__3_n_0),
        .CO({NLW_accum_next_s_carry__4_CO_UNCONNECTED[3:2],accum_next_s_carry__4_n_2,accum_next_s_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,accum_s_reg[20:19]}),
        .O({NLW_accum_next_s_carry__4_O_UNCONNECTED[3],p_0_in[15:13]}),
        .S({1'b0,accum_next_s_carry__4_i_1_n_0,accum_next_s_carry__4_i_2_n_0,accum_next_s_carry__4_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__4_i_1
       (.I0(accum_s_reg[21]),
        .I1(accum_s_reg[22]),
        .O(accum_next_s_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__4_i_2
       (.I0(accum_s_reg[20]),
        .I1(accum_s_reg[21]),
        .O(accum_next_s_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    accum_next_s_carry__4_i_3
       (.I0(accum_s_reg[19]),
        .I1(accum_s_reg[20]),
        .O(accum_next_s_carry__4_i_3_n_0));
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
       (.I0(data_i[13]),
        .I1(accum_s_reg[15]),
        .O(\accum_s[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[12]_i_3 
       (.I0(data_i[13]),
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
       (.I0(data_i[13]),
        .I1(accum_s_reg[19]),
        .O(\accum_s[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[16]_i_3 
       (.I0(data_i[13]),
        .I1(accum_s_reg[18]),
        .O(\accum_s[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[16]_i_4 
       (.I0(data_i[13]),
        .I1(accum_s_reg[17]),
        .O(\accum_s[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[16]_i_5 
       (.I0(data_i[13]),
        .I1(accum_s_reg[16]),
        .O(\accum_s[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[20]_i_2 
       (.I0(data_i[13]),
        .I1(accum_s_reg[22]),
        .O(\accum_s[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[20]_i_3 
       (.I0(data_i[13]),
        .I1(accum_s_reg[21]),
        .O(\accum_s[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum_s[20]_i_4 
       (.I0(data_i[13]),
        .I1(accum_s_reg[20]),
        .O(\accum_s[20]_i_4_n_0 ));
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
        .DI({data_i[13],data_i[13],data_i[13:12]}),
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
        .DI({data_i[13],data_i[13],data_i[13],data_i[13]}),
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
        .CO({\NLW_accum_s_reg[20]_i_1_CO_UNCONNECTED [3:2],\accum_s_reg[20]_i_1_n_2 ,\accum_s_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data_i[13],data_i[13]}),
        .O({\NLW_accum_s_reg[20]_i_1_O_UNCONNECTED [3],\accum_s_reg[20]_i_1_n_5 ,\accum_s_reg[20]_i_1_n_6 ,\accum_s_reg[20]_i_1_n_7 }),
        .S({1'b0,\accum_s[20]_i_2_n_0 ,\accum_s[20]_i_3_n_0 ,\accum_s[20]_i_4_n_0 }));
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
  FDRE \accum_s_reg[2] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[0]_i_1_n_5 ),
        .Q(accum_s_reg[2]),
        .R(cpt));
  FDRE \accum_s_reg[3] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[0]_i_1_n_4 ),
        .Q(accum_s_reg[3]),
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
  FDRE \accum_s_reg[5] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[4]_i_1_n_6 ),
        .Q(accum_s_reg[5]),
        .R(cpt));
  FDRE \accum_s_reg[6] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(\accum_s_reg[4]_i_1_n_5 ),
        .Q(accum_s_reg[6]),
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
       (.I0(\final_s[15]_i_2_n_0 ),
        .I1(cpt_reg[6]),
        .I2(data_en_i),
        .I3(data_rst_i),
        .O(cpt));
  LUT2 #(
    .INIT(4'h9)) 
    \cpt[6]_i_2 
       (.I0(\final_s[15]_i_2_n_0 ),
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
       (.I0(\final_s[15]_i_2_n_0 ),
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
    \final_s[15]_i_1 
       (.I0(data_en_i),
        .I1(cpt_reg[6]),
        .I2(\final_s[15]_i_2_n_0 ),
        .O(\final_s[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \final_s[15]_i_2 
       (.I0(cpt_reg[4]),
        .I1(cpt_reg[2]),
        .I2(cpt_reg[0]),
        .I3(cpt_reg[1]),
        .I4(cpt_reg[3]),
        .I5(cpt_reg[5]),
        .O(\final_s[15]_i_2_n_0 ));
  FDRE \final_s_reg[0] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(data_o[0]),
        .R(data_rst_i));
  FDRE \final_s_reg[10] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(data_o[10]),
        .R(data_rst_i));
  FDRE \final_s_reg[11] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(data_o[11]),
        .R(data_rst_i));
  FDRE \final_s_reg[12] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(data_o[12]),
        .R(data_rst_i));
  FDRE \final_s_reg[13] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(data_o[13]),
        .R(data_rst_i));
  FDRE \final_s_reg[14] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(data_o[14]),
        .R(data_rst_i));
  FDRE \final_s_reg[15] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(data_o[15]),
        .R(data_rst_i));
  FDRE \final_s_reg[1] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(data_o[1]),
        .R(data_rst_i));
  FDRE \final_s_reg[2] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(data_o[2]),
        .R(data_rst_i));
  FDRE \final_s_reg[3] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(data_o[3]),
        .R(data_rst_i));
  FDRE \final_s_reg[4] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(data_o[4]),
        .R(data_rst_i));
  FDRE \final_s_reg[5] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(data_o[5]),
        .R(data_rst_i));
  FDRE \final_s_reg[6] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(data_o[6]),
        .R(data_rst_i));
  FDRE \final_s_reg[7] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(data_o[7]),
        .R(data_rst_i));
  FDRE \final_s_reg[8] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(data_o[8]),
        .R(data_rst_i));
  FDRE \final_s_reg[9] 
       (.C(data_clk_i),
        .CE(\final_s[15]_i_1_n_0 ),
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
