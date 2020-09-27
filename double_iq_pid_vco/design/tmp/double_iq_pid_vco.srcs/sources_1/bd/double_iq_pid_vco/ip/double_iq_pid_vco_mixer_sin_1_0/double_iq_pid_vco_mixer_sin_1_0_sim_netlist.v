// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri May 15 18:38:15 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim -rename_top double_iq_pid_vco_mixer_sin_1_0 -prefix
//               double_iq_pid_vco_mixer_sin_1_0_ double_iq_pid_vco_mixer_sin_0_0_sim_netlist.v
// Design      : double_iq_pid_vco_mixer_sin_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "double_iq_pid_vco_mixer_sin_0_0,mixer_sin,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "mixer_sin,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module double_iq_pid_vco_mixer_sin_1_0
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
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_RST" *) input data_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA" *) input [13:0]data_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 nco_in DATA_I" *) input [15:0]nco_i_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 nco_in DATA_Q" *) input [15:0]nco_q_i;
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
  wire [15:0]nco_i_i;
  wire [15:0]nco_q_i;
  wire nco_rst_i;

  assign data_clk_o = data_clk_i;
  assign data_rst_o = data_rst_i;
  double_iq_pid_vco_mixer_sin_1_0_mixer_sin U0
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

module double_iq_pid_vco_mixer_sin_1_0_mixer_redim
   (data_en_o,
    data_i_o,
    data_q_o,
    data_rst_i,
    data_en_s,
    data_clk_i,
    i_is_null_d0_s,
    q_is_null_d0_s,
    P,
    \shift_data.data_i_in_s_reg[13]_0 );
  output data_en_o;
  output [13:0]data_i_o;
  output [13:0]data_q_o;
  input data_rst_i;
  input data_en_s;
  input data_clk_i;
  input i_is_null_d0_s;
  input q_is_null_d0_s;
  input [13:0]P;
  input [13:0]\shift_data.data_i_in_s_reg[13]_0 ;

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
  wire \_inferred__2/i__carry__0_n_0 ;
  wire \_inferred__2/i__carry__0_n_1 ;
  wire \_inferred__2/i__carry__0_n_2 ;
  wire \_inferred__2/i__carry__0_n_3 ;
  wire \_inferred__2/i__carry__0_n_4 ;
  wire \_inferred__2/i__carry__0_n_5 ;
  wire \_inferred__2/i__carry__0_n_6 ;
  wire \_inferred__2/i__carry__0_n_7 ;
  wire \_inferred__2/i__carry__1_n_0 ;
  wire \_inferred__2/i__carry__1_n_1 ;
  wire \_inferred__2/i__carry__1_n_2 ;
  wire \_inferred__2/i__carry__1_n_3 ;
  wire \_inferred__2/i__carry__1_n_4 ;
  wire \_inferred__2/i__carry__1_n_5 ;
  wire \_inferred__2/i__carry__1_n_6 ;
  wire \_inferred__2/i__carry__1_n_7 ;
  wire \_inferred__2/i__carry__2_n_3 ;
  wire \_inferred__2/i__carry__2_n_6 ;
  wire \_inferred__2/i__carry__2_n_7 ;
  wire \_inferred__2/i__carry_n_0 ;
  wire \_inferred__2/i__carry_n_1 ;
  wire \_inferred__2/i__carry_n_2 ;
  wire \_inferred__2/i__carry_n_3 ;
  wire \_inferred__2/i__carry_n_4 ;
  wire \_inferred__2/i__carry_n_5 ;
  wire \_inferred__2/i__carry_n_6 ;
  wire \_inferred__2/i__carry_n_7 ;
  wire data_clk_i;
  wire data_en_in_s;
  wire data_en_o;
  wire data_en_s;
  wire [13:0]data_i_in_s;
  wire [13:0]data_i_o;
  wire [13:0]data_q_in_s;
  wire [13:0]data_q_o;
  wire data_rst_i;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i_is_null_d0_s;
  wire i_is_null_s;
  wire [13:0]p_0_in;
  wire q_is_null_d0_s;
  wire q_is_null_s;
  wire [13:0]\shift_data.data_i_in_s_reg[13]_0 ;
  wire [3:1]\NLW__inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW__inferred__2/i__carry__2_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__2/i__carry__2_O_UNCONNECTED ;

  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({data_i_in_s[2],i__carry_i_1_n_0,1'b0,data_i_in_s[0]}),
        .O(p_0_in[3:0]),
        .S({i__carry_i_2_n_0,data_i_in_s[2:1],i__carry_i_3_n_0}));
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i_in_s[6:3]),
        .O(p_0_in[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\_inferred__0/i__carry__1_n_0 ,\_inferred__0/i__carry__1_n_1 ,\_inferred__0/i__carry__1_n_2 ,\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i_in_s[10:7]),
        .O(p_0_in[11:8]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW__inferred__0/i__carry__2_CO_UNCONNECTED [3:1],\_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,data_i_in_s[11]}),
        .O({\NLW__inferred__0/i__carry__2_O_UNCONNECTED [3:2],p_0_in[13:12]}),
        .S({1'b0,1'b0,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0}));
  CARRY4 \_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__2/i__carry_n_0 ,\_inferred__2/i__carry_n_1 ,\_inferred__2/i__carry_n_2 ,\_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({data_q_in_s[2],i__carry_i_1__0_n_0,1'b0,data_q_in_s[0]}),
        .O({\_inferred__2/i__carry_n_4 ,\_inferred__2/i__carry_n_5 ,\_inferred__2/i__carry_n_6 ,\_inferred__2/i__carry_n_7 }),
        .S({i__carry_i_2__0_n_0,data_q_in_s[2:1],i__carry_i_3__0_n_0}));
  CARRY4 \_inferred__2/i__carry__0 
       (.CI(\_inferred__2/i__carry_n_0 ),
        .CO({\_inferred__2/i__carry__0_n_0 ,\_inferred__2/i__carry__0_n_1 ,\_inferred__2/i__carry__0_n_2 ,\_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(data_q_in_s[6:3]),
        .O({\_inferred__2/i__carry__0_n_4 ,\_inferred__2/i__carry__0_n_5 ,\_inferred__2/i__carry__0_n_6 ,\_inferred__2/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \_inferred__2/i__carry__1 
       (.CI(\_inferred__2/i__carry__0_n_0 ),
        .CO({\_inferred__2/i__carry__1_n_0 ,\_inferred__2/i__carry__1_n_1 ,\_inferred__2/i__carry__1_n_2 ,\_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_q_in_s[10:7]),
        .O({\_inferred__2/i__carry__1_n_4 ,\_inferred__2/i__carry__1_n_5 ,\_inferred__2/i__carry__1_n_6 ,\_inferred__2/i__carry__1_n_7 }),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  CARRY4 \_inferred__2/i__carry__2 
       (.CI(\_inferred__2/i__carry__1_n_0 ),
        .CO({\NLW__inferred__2/i__carry__2_CO_UNCONNECTED [3:1],\_inferred__2/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,data_q_in_s[11]}),
        .O({\NLW__inferred__2/i__carry__2_O_UNCONNECTED [3:2],\_inferred__2/i__carry__2_n_6 ,\_inferred__2/i__carry__2_n_7 }),
        .S({1'b0,1'b0,i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0}));
  FDRE data_en_out_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_in_s),
        .Q(data_en_o),
        .R(data_rst_i));
  FDRE \data_i_out_s_reg[0] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[0]),
        .Q(data_i_o[0]),
        .R(data_rst_i));
  FDRE \data_i_out_s_reg[10] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[10]),
        .Q(data_i_o[10]),
        .R(data_rst_i));
  FDRE \data_i_out_s_reg[11] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[11]),
        .Q(data_i_o[11]),
        .R(data_rst_i));
  FDRE \data_i_out_s_reg[12] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[12]),
        .Q(data_i_o[12]),
        .R(data_rst_i));
  FDRE \data_i_out_s_reg[13] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[13]),
        .Q(data_i_o[13]),
        .R(data_rst_i));
  FDRE \data_i_out_s_reg[1] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[1]),
        .Q(data_i_o[1]),
        .R(data_rst_i));
  FDRE \data_i_out_s_reg[2] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[2]),
        .Q(data_i_o[2]),
        .R(data_rst_i));
  FDRE \data_i_out_s_reg[3] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[3]),
        .Q(data_i_o[3]),
        .R(data_rst_i));
  FDRE \data_i_out_s_reg[4] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[4]),
        .Q(data_i_o[4]),
        .R(data_rst_i));
  FDRE \data_i_out_s_reg[5] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[5]),
        .Q(data_i_o[5]),
        .R(data_rst_i));
  FDRE \data_i_out_s_reg[6] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[6]),
        .Q(data_i_o[6]),
        .R(data_rst_i));
  FDRE \data_i_out_s_reg[7] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[7]),
        .Q(data_i_o[7]),
        .R(data_rst_i));
  FDRE \data_i_out_s_reg[8] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[8]),
        .Q(data_i_o[8]),
        .R(data_rst_i));
  FDRE \data_i_out_s_reg[9] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(p_0_in[9]),
        .Q(data_i_o[9]),
        .R(data_rst_i));
  FDRE \data_q_out_s_reg[0] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(\_inferred__2/i__carry_n_7 ),
        .Q(data_q_o[0]),
        .R(data_rst_i));
  FDRE \data_q_out_s_reg[10] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(\_inferred__2/i__carry__1_n_5 ),
        .Q(data_q_o[10]),
        .R(data_rst_i));
  FDRE \data_q_out_s_reg[11] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(\_inferred__2/i__carry__1_n_4 ),
        .Q(data_q_o[11]),
        .R(data_rst_i));
  FDRE \data_q_out_s_reg[12] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(\_inferred__2/i__carry__2_n_7 ),
        .Q(data_q_o[12]),
        .R(data_rst_i));
  FDRE \data_q_out_s_reg[13] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(\_inferred__2/i__carry__2_n_6 ),
        .Q(data_q_o[13]),
        .R(data_rst_i));
  FDRE \data_q_out_s_reg[1] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(\_inferred__2/i__carry_n_6 ),
        .Q(data_q_o[1]),
        .R(data_rst_i));
  FDRE \data_q_out_s_reg[2] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(\_inferred__2/i__carry_n_5 ),
        .Q(data_q_o[2]),
        .R(data_rst_i));
  FDRE \data_q_out_s_reg[3] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(\_inferred__2/i__carry_n_4 ),
        .Q(data_q_o[3]),
        .R(data_rst_i));
  FDRE \data_q_out_s_reg[4] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(\_inferred__2/i__carry__0_n_7 ),
        .Q(data_q_o[4]),
        .R(data_rst_i));
  FDRE \data_q_out_s_reg[5] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(\_inferred__2/i__carry__0_n_6 ),
        .Q(data_q_o[5]),
        .R(data_rst_i));
  FDRE \data_q_out_s_reg[6] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(\_inferred__2/i__carry__0_n_5 ),
        .Q(data_q_o[6]),
        .R(data_rst_i));
  FDRE \data_q_out_s_reg[7] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(\_inferred__2/i__carry__0_n_4 ),
        .Q(data_q_o[7]),
        .R(data_rst_i));
  FDRE \data_q_out_s_reg[8] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(\_inferred__2/i__carry__1_n_7 ),
        .Q(data_q_o[8]),
        .R(data_rst_i));
  FDRE \data_q_out_s_reg[9] 
       (.C(data_clk_i),
        .CE(data_en_in_s),
        .D(\_inferred__2/i__carry__1_n_6 ),
        .Q(data_q_o[9]),
        .R(data_rst_i));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(data_i_in_s[6]),
        .I1(data_i_in_s[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__0
       (.I0(data_q_in_s[6]),
        .I1(data_q_in_s[7]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(data_i_in_s[5]),
        .I1(data_i_in_s[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__0
       (.I0(data_q_in_s[5]),
        .I1(data_q_in_s[6]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(data_i_in_s[4]),
        .I1(data_i_in_s[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__0
       (.I0(data_q_in_s[4]),
        .I1(data_q_in_s[5]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(data_i_in_s[3]),
        .I1(data_i_in_s[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__0
       (.I0(data_q_in_s[3]),
        .I1(data_q_in_s[4]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1
       (.I0(data_i_in_s[10]),
        .I1(data_i_in_s[11]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__0
       (.I0(data_q_in_s[10]),
        .I1(data_q_in_s[11]),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(data_i_in_s[9]),
        .I1(data_i_in_s[10]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__0
       (.I0(data_q_in_s[9]),
        .I1(data_q_in_s[10]),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(data_i_in_s[8]),
        .I1(data_i_in_s[9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3__0
       (.I0(data_q_in_s[8]),
        .I1(data_q_in_s[9]),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(data_i_in_s[7]),
        .I1(data_i_in_s[8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4__0
       (.I0(data_q_in_s[7]),
        .I1(data_q_in_s[8]),
        .O(i__carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(data_i_in_s[12]),
        .I1(data_i_in_s[13]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1__0
       (.I0(data_q_in_s[12]),
        .I1(data_q_in_s[13]),
        .O(i__carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2
       (.I0(data_i_in_s[11]),
        .I1(data_i_in_s[12]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2__0
       (.I0(data_q_in_s[11]),
        .I1(data_q_in_s[12]),
        .O(i__carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(data_i_in_s[2]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(data_q_in_s[2]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(data_i_in_s[2]),
        .I1(data_i_in_s[3]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__0
       (.I0(data_q_in_s[2]),
        .I1(data_q_in_s[3]),
        .O(i__carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    i__carry_i_3
       (.I0(i_is_null_s),
        .I1(data_i_in_s[13]),
        .I2(data_i_in_s[0]),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    i__carry_i_3__0
       (.I0(q_is_null_s),
        .I1(data_q_in_s[13]),
        .I2(data_q_in_s[0]),
        .O(i__carry_i_3__0_n_0));
  FDRE \shift_data.data_en_in_s_reg 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_s),
        .Q(data_en_in_s),
        .R(data_rst_i));
  FDRE \shift_data.data_i_in_s_reg[0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\shift_data.data_i_in_s_reg[13]_0 [0]),
        .Q(data_i_in_s[0]),
        .R(data_rst_i));
  FDRE \shift_data.data_i_in_s_reg[10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\shift_data.data_i_in_s_reg[13]_0 [10]),
        .Q(data_i_in_s[10]),
        .R(data_rst_i));
  FDRE \shift_data.data_i_in_s_reg[11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\shift_data.data_i_in_s_reg[13]_0 [11]),
        .Q(data_i_in_s[11]),
        .R(data_rst_i));
  FDRE \shift_data.data_i_in_s_reg[12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\shift_data.data_i_in_s_reg[13]_0 [12]),
        .Q(data_i_in_s[12]),
        .R(data_rst_i));
  FDRE \shift_data.data_i_in_s_reg[13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\shift_data.data_i_in_s_reg[13]_0 [13]),
        .Q(data_i_in_s[13]),
        .R(data_rst_i));
  FDRE \shift_data.data_i_in_s_reg[1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\shift_data.data_i_in_s_reg[13]_0 [1]),
        .Q(data_i_in_s[1]),
        .R(data_rst_i));
  FDRE \shift_data.data_i_in_s_reg[2] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\shift_data.data_i_in_s_reg[13]_0 [2]),
        .Q(data_i_in_s[2]),
        .R(data_rst_i));
  FDRE \shift_data.data_i_in_s_reg[3] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\shift_data.data_i_in_s_reg[13]_0 [3]),
        .Q(data_i_in_s[3]),
        .R(data_rst_i));
  FDRE \shift_data.data_i_in_s_reg[4] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\shift_data.data_i_in_s_reg[13]_0 [4]),
        .Q(data_i_in_s[4]),
        .R(data_rst_i));
  FDRE \shift_data.data_i_in_s_reg[5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\shift_data.data_i_in_s_reg[13]_0 [5]),
        .Q(data_i_in_s[5]),
        .R(data_rst_i));
  FDRE \shift_data.data_i_in_s_reg[6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\shift_data.data_i_in_s_reg[13]_0 [6]),
        .Q(data_i_in_s[6]),
        .R(data_rst_i));
  FDRE \shift_data.data_i_in_s_reg[7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\shift_data.data_i_in_s_reg[13]_0 [7]),
        .Q(data_i_in_s[7]),
        .R(data_rst_i));
  FDRE \shift_data.data_i_in_s_reg[8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\shift_data.data_i_in_s_reg[13]_0 [8]),
        .Q(data_i_in_s[8]),
        .R(data_rst_i));
  FDRE \shift_data.data_i_in_s_reg[9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\shift_data.data_i_in_s_reg[13]_0 [9]),
        .Q(data_i_in_s[9]),
        .R(data_rst_i));
  FDRE \shift_data.data_q_in_s_reg[0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(P[0]),
        .Q(data_q_in_s[0]),
        .R(data_rst_i));
  FDRE \shift_data.data_q_in_s_reg[10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(P[10]),
        .Q(data_q_in_s[10]),
        .R(data_rst_i));
  FDRE \shift_data.data_q_in_s_reg[11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(P[11]),
        .Q(data_q_in_s[11]),
        .R(data_rst_i));
  FDRE \shift_data.data_q_in_s_reg[12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(P[12]),
        .Q(data_q_in_s[12]),
        .R(data_rst_i));
  FDRE \shift_data.data_q_in_s_reg[13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(P[13]),
        .Q(data_q_in_s[13]),
        .R(data_rst_i));
  FDRE \shift_data.data_q_in_s_reg[1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(P[1]),
        .Q(data_q_in_s[1]),
        .R(data_rst_i));
  FDRE \shift_data.data_q_in_s_reg[2] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(P[2]),
        .Q(data_q_in_s[2]),
        .R(data_rst_i));
  FDRE \shift_data.data_q_in_s_reg[3] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(P[3]),
        .Q(data_q_in_s[3]),
        .R(data_rst_i));
  FDRE \shift_data.data_q_in_s_reg[4] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(P[4]),
        .Q(data_q_in_s[4]),
        .R(data_rst_i));
  FDRE \shift_data.data_q_in_s_reg[5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(P[5]),
        .Q(data_q_in_s[5]),
        .R(data_rst_i));
  FDRE \shift_data.data_q_in_s_reg[6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(P[6]),
        .Q(data_q_in_s[6]),
        .R(data_rst_i));
  FDRE \shift_data.data_q_in_s_reg[7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(P[7]),
        .Q(data_q_in_s[7]),
        .R(data_rst_i));
  FDRE \shift_data.data_q_in_s_reg[8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(P[8]),
        .Q(data_q_in_s[8]),
        .R(data_rst_i));
  FDRE \shift_data.data_q_in_s_reg[9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(P[9]),
        .Q(data_q_in_s[9]),
        .R(data_rst_i));
  FDRE \shift_data.i_is_null_s_reg 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(i_is_null_d0_s),
        .Q(i_is_null_s),
        .R(data_rst_i));
  FDRE \shift_data.q_is_null_s_reg 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(q_is_null_d0_s),
        .Q(q_is_null_s),
        .R(data_rst_i));
endmodule

module double_iq_pid_vco_mixer_sin_1_0_mixer_sin
   (data_en_o,
    data_i_o,
    data_q_o,
    data_rst_i,
    data_en_i,
    data_clk_i,
    data_i,
    nco_en_i,
    nco_clk_i,
    nco_rst_i,
    nco_i_i,
    nco_q_i);
  output data_en_o;
  output [13:0]data_i_o;
  output [13:0]data_q_o;
  input data_rst_i;
  input data_en_i;
  input data_clk_i;
  input [13:0]data_i;
  input nco_en_i;
  input nco_clk_i;
  input nco_rst_i;
  input [15:0]nco_i_i;
  input [15:0]nco_q_i;

  wire [13:0]SHIFT_RIGHT;
  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire data_en_s;
  wire [13:0]data_i;
  wire [13:0]data_i_o;
  wire [13:0]data_q_o;
  wire data_rst_i;
  wire [13:0]data_s;
  wire i_is_null_d0_s;
  wire nco_clk_i;
  wire nco_en_i;
  wire [15:0]nco_i_i;
  wire [15:0]nco_q_i;
  wire nco_rst_i;
  wire q_is_neg_d0_s;
  wire q_is_null_d0_s;
  wire res_i_s_n_100;
  wire res_i_s_n_101;
  wire res_i_s_n_102;
  wire res_i_s_n_103;
  wire res_i_s_n_104;
  wire res_i_s_n_105;
  wire res_i_s_n_76;
  wire res_i_s_n_91;
  wire res_i_s_n_92;
  wire res_i_s_n_93;
  wire res_i_s_n_94;
  wire res_i_s_n_95;
  wire res_i_s_n_96;
  wire res_i_s_n_97;
  wire res_i_s_n_98;
  wire res_i_s_n_99;
  wire res_q_s_n_100;
  wire res_q_s_n_101;
  wire res_q_s_n_102;
  wire res_q_s_n_103;
  wire res_q_s_n_104;
  wire res_q_s_n_105;
  wire res_q_s_n_76;
  wire res_q_s_n_78;
  wire res_q_s_n_79;
  wire res_q_s_n_80;
  wire res_q_s_n_81;
  wire res_q_s_n_82;
  wire res_q_s_n_83;
  wire res_q_s_n_84;
  wire res_q_s_n_85;
  wire res_q_s_n_86;
  wire res_q_s_n_87;
  wire res_q_s_n_88;
  wire res_q_s_n_89;
  wire res_q_s_n_90;
  wire res_q_s_n_91;
  wire res_q_s_n_92;
  wire res_q_s_n_93;
  wire res_q_s_n_94;
  wire res_q_s_n_95;
  wire res_q_s_n_96;
  wire res_q_s_n_97;
  wire res_q_s_n_98;
  wire res_q_s_n_99;
  wire NLW_res_i_s_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_i_s_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_i_s_OVERFLOW_UNCONNECTED;
  wire NLW_res_i_s_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_i_s_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_res_i_s_ACOUT_UNCONNECTED;
  wire [17:0]NLW_res_i_s_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_i_s_CARRYOUT_UNCONNECTED;
  wire [47:30]NLW_res_i_s_P_UNCONNECTED;
  wire [47:0]NLW_res_i_s_PCOUT_UNCONNECTED;
  wire NLW_res_q_s_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_q_s_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_q_s_OVERFLOW_UNCONNECTED;
  wire NLW_res_q_s_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_q_s_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_res_q_s_ACOUT_UNCONNECTED;
  wire [17:0]NLW_res_q_s_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_q_s_CARRYOUT_UNCONNECTED;
  wire [47:30]NLW_res_q_s_P_UNCONNECTED;
  wire [47:0]NLW_res_q_s_PCOUT_UNCONNECTED;

  FDRE data_en_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_i),
        .Q(data_en_s),
        .R(data_rst_i));
  FDRE \data_s_reg[0] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[0]),
        .Q(data_s[0]),
        .R(data_rst_i));
  FDRE \data_s_reg[10] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[10]),
        .Q(data_s[10]),
        .R(data_rst_i));
  FDRE \data_s_reg[11] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[11]),
        .Q(data_s[11]),
        .R(data_rst_i));
  FDRE \data_s_reg[12] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[12]),
        .Q(data_s[12]),
        .R(data_rst_i));
  FDRE \data_s_reg[13] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[13]),
        .Q(data_s[13]),
        .R(data_rst_i));
  FDRE \data_s_reg[1] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[1]),
        .Q(data_s[1]),
        .R(data_rst_i));
  FDRE \data_s_reg[2] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[2]),
        .Q(data_s[2]),
        .R(data_rst_i));
  FDRE \data_s_reg[3] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[3]),
        .Q(data_s[3]),
        .R(data_rst_i));
  FDRE \data_s_reg[4] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[4]),
        .Q(data_s[4]),
        .R(data_rst_i));
  FDRE \data_s_reg[5] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[5]),
        .Q(data_s[5]),
        .R(data_rst_i));
  FDRE \data_s_reg[6] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[6]),
        .Q(data_s[6]),
        .R(data_rst_i));
  FDRE \data_s_reg[7] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[7]),
        .Q(data_s[7]),
        .R(data_rst_i));
  FDRE \data_s_reg[8] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[8]),
        .Q(data_s[8]),
        .R(data_rst_i));
  FDRE \data_s_reg[9] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[9]),
        .Q(data_s[9]),
        .R(data_rst_i));
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
    .MASK(48'hFFFFFFFF8000),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'hFFFFFFFF8000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("PATDET"),
    .USE_SIMD("ONE48")) 
    res_i_s
       (.A({nco_i_i[15],nco_i_i[15],nco_i_i[15],nco_i_i[15],nco_i_i[15],nco_i_i[15],nco_i_i[15],nco_i_i[15],nco_i_i[15],nco_i_i[15],nco_i_i[15],nco_i_i[15],nco_i_i[15],nco_i_i[15],nco_i_i}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_res_i_s_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_s[13],data_s[13],data_s[13],data_s[13],data_s}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_i_s_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_i_s_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_i_s_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(nco_en_i),
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
        .CLK(nco_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_i_s_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_i_s_OVERFLOW_UNCONNECTED),
        .P({NLW_res_i_s_P_UNCONNECTED[47:30],res_i_s_n_76,SHIFT_RIGHT,res_i_s_n_91,res_i_s_n_92,res_i_s_n_93,res_i_s_n_94,res_i_s_n_95,res_i_s_n_96,res_i_s_n_97,res_i_s_n_98,res_i_s_n_99,res_i_s_n_100,res_i_s_n_101,res_i_s_n_102,res_i_s_n_103,res_i_s_n_104,res_i_s_n_105}),
        .PATTERNBDETECT(NLW_res_i_s_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(i_is_null_d0_s),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_i_s_PCOUT_UNCONNECTED[47:0]),
        .RSTA(nco_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_res_i_s_UNDERFLOW_UNCONNECTED));
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
    .MASK(48'hFFFFFFFF8000),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'hFFFFFFFF8000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("PATDET"),
    .USE_SIMD("ONE48")) 
    res_q_s
       (.A({nco_q_i[15],nco_q_i[15],nco_q_i[15],nco_q_i[15],nco_q_i[15],nco_q_i[15],nco_q_i[15],nco_q_i[15],nco_q_i[15],nco_q_i[15],nco_q_i[15],nco_q_i[15],nco_q_i[15],nco_q_i[15],nco_q_i}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_res_q_s_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_s[13],data_s[13],data_s[13],data_s[13],data_s}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_q_s_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_q_s_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_q_s_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(nco_en_i),
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
        .CLK(nco_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_q_s_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_q_s_OVERFLOW_UNCONNECTED),
        .P({NLW_res_q_s_P_UNCONNECTED[47:30],res_q_s_n_76,q_is_neg_d0_s,res_q_s_n_78,res_q_s_n_79,res_q_s_n_80,res_q_s_n_81,res_q_s_n_82,res_q_s_n_83,res_q_s_n_84,res_q_s_n_85,res_q_s_n_86,res_q_s_n_87,res_q_s_n_88,res_q_s_n_89,res_q_s_n_90,res_q_s_n_91,res_q_s_n_92,res_q_s_n_93,res_q_s_n_94,res_q_s_n_95,res_q_s_n_96,res_q_s_n_97,res_q_s_n_98,res_q_s_n_99,res_q_s_n_100,res_q_s_n_101,res_q_s_n_102,res_q_s_n_103,res_q_s_n_104,res_q_s_n_105}),
        .PATTERNBDETECT(NLW_res_q_s_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(q_is_null_d0_s),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_q_s_PCOUT_UNCONNECTED[47:0]),
        .RSTA(nco_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_res_q_s_UNDERFLOW_UNCONNECTED));
  double_iq_pid_vco_mixer_sin_1_0_mixer_redim resize_inst
       (.P({q_is_neg_d0_s,res_q_s_n_78,res_q_s_n_79,res_q_s_n_80,res_q_s_n_81,res_q_s_n_82,res_q_s_n_83,res_q_s_n_84,res_q_s_n_85,res_q_s_n_86,res_q_s_n_87,res_q_s_n_88,res_q_s_n_89,res_q_s_n_90}),
        .data_clk_i(data_clk_i),
        .data_en_o(data_en_o),
        .data_en_s(data_en_s),
        .data_i_o(data_i_o),
        .data_q_o(data_q_o),
        .data_rst_i(data_rst_i),
        .i_is_null_d0_s(i_is_null_d0_s),
        .q_is_null_d0_s(q_is_null_d0_s),
        .\shift_data.data_i_in_s_reg[13]_0 (SHIFT_RIGHT));
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
