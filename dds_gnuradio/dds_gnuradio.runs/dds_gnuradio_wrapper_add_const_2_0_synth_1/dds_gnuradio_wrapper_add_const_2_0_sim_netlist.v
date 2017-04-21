// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Thu Mar 30 09:07:27 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds_gnuradio_wrapper_add_const_2_0_sim_netlist.v
// Design      : dds_gnuradio_wrapper_add_const_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_S00_AXI_ADDR_WIDTH = "4" *) (* C_S00_AXI_DATA_WIDTH = "32" *) (* DATA_IN_SIZE = "14" *) 
(* DATA_OUT_SIZE = "14" *) (* add_val = "0" *) (* format = "unsigned" *) 
(* id = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const
   (s00_axi_aclk,
    s00_axi_reset,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    data_en_i,
    data_clk_i,
    data_rst_i,
    data_i,
    data_en_o,
    data_clk_o,
    data_rst_o,
    data_o);
  input s00_axi_aclk;
  input s00_axi_reset;
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input data_en_i;
  input data_clk_i;
  input data_rst_i;
  input [13:0]data_i;
  output data_en_o;
  output data_clk_o;
  output data_rst_o;
  output [13:0]data_o;

  wire \<const0> ;
  wire add_constHandComm_n_18;
  wire add_constHandComm_n_19;
  wire add_constHandComm_n_20;
  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire [13:0]data_i;
  wire [13:0]data_o;
  wire data_rst_i;
  wire [13:0]offset_s;
  wire [13:1]p_0_in;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [13:0]\^s00_axi_rdata ;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;

  assign data_clk_o = data_clk_i;
  assign data_rst_o = data_rst_i;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \<const0> ;
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \<const0> ;
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \<const0> ;
  assign s00_axi_rdata[25] = \<const0> ;
  assign s00_axi_rdata[24] = \<const0> ;
  assign s00_axi_rdata[23] = \<const0> ;
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \<const0> ;
  assign s00_axi_rdata[20] = \<const0> ;
  assign s00_axi_rdata[19] = \<const0> ;
  assign s00_axi_rdata[18] = \<const0> ;
  assign s00_axi_rdata[17] = \<const0> ;
  assign s00_axi_rdata[16] = \<const0> ;
  assign s00_axi_rdata[15] = \<const0> ;
  assign s00_axi_rdata[14] = \<const0> ;
  assign s00_axi_rdata[13:0] = \^s00_axi_rdata [13:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const_handComm add_constHandComm
       (.D({p_0_in,add_constHandComm_n_18}),
        .E(add_constHandComm_n_19),
        .Q(offset_s),
        .\readdata_s_reg[0] (add_constHandComm_n_20),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const_logic add_constLogic
       (.Q(offset_s),
        .data_clk_i(data_clk_i),
        .data_en_i(data_en_i),
        .data_en_o(data_en_o),
        .data_i(data_i),
        .data_o(data_o),
        .data_rst_i(data_rst_i));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_add_const wb_add_const_inst
       (.D({p_0_in,add_constHandComm_n_18}),
        .E(add_constHandComm_n_19),
        .Q(offset_s),
        .\axi_awaddr_reg[3] (add_constHandComm_n_20),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata(\^s00_axi_rdata ),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_wdata(s00_axi_wdata[13:0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const_handComm
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    D,
    E,
    \readdata_s_reg[0] ,
    s00_axi_reset,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    Q,
    s00_axi_awaddr,
    s00_axi_araddr);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [13:0]D;
  output [0:0]E;
  output [0:0]\readdata_s_reg[0] ;
  input s00_axi_reset;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [13:0]Q;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;

  wire [13:0]D;
  wire [0:0]E;
  wire [13:0]Q;
  wire [1:0]addr_reg;
  wire [1:0]addr_s;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire [1:0]read_addr_s;
  wire \readdata_s[13]_i_3_n_0 ;
  wire \readdata_s[13]_i_4_n_0 ;
  wire \readdata_s[13]_i_5_n_0 ;
  wire \readdata_s[13]_i_6_n_0 ;
  wire [0:0]\readdata_s_reg[0] ;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire [1:0]write_addr_s;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \addr_reg[0]_i_1 
       (.I0(read_addr_s[0]),
        .I1(\readdata_s[13]_i_4_n_0 ),
        .I2(addr_reg[0]),
        .I3(\readdata_s[13]_i_3_n_0 ),
        .I4(write_addr_s[0]),
        .O(addr_s[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \addr_reg[1]_i_1 
       (.I0(read_addr_s[1]),
        .I1(\readdata_s[13]_i_4_n_0 ),
        .I2(addr_reg[1]),
        .I3(\readdata_s[13]_i_3_n_0 ),
        .I4(write_addr_s[1]),
        .O(addr_s[1]));
  FDRE \addr_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(addr_s[0]),
        .Q(addr_reg[0]),
        .R(1'b0));
  FDRE \addr_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(addr_s[1]),
        .Q(addr_reg[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(read_addr_s[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(read_addr_s[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(read_addr_s[0]),
        .S(s00_axi_reset));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(read_addr_s[1]),
        .S(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s00_axi_arready),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .I4(write_addr_s[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .I4(write_addr_s[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(write_addr_s[0]),
        .R(s00_axi_reset));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(write_addr_s[1]),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(s00_axi_awready),
        .R(s00_axi_reset));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(s00_axi_reset));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(s00_axi_reset));
  LUT3 #(
    .INIT(8'h04)) 
    \offset_s[13]_i_1 
       (.I0(write_addr_s[1]),
        .I1(write_addr_s[0]),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hAAAABABAAAAFBABF)) 
    \readdata_s[0]_i_1 
       (.I0(Q[0]),
        .I1(\readdata_s[13]_i_5_n_0 ),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .I3(write_addr_s[0]),
        .I4(\readdata_s[13]_i_6_n_0 ),
        .I5(write_addr_s[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    \readdata_s[10]_i_1 
       (.I0(Q[10]),
        .I1(\readdata_s[13]_i_5_n_0 ),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .I3(write_addr_s[0]),
        .I4(\readdata_s[13]_i_6_n_0 ),
        .I5(write_addr_s[1]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    \readdata_s[11]_i_1 
       (.I0(Q[11]),
        .I1(\readdata_s[13]_i_5_n_0 ),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .I3(write_addr_s[0]),
        .I4(\readdata_s[13]_i_6_n_0 ),
        .I5(write_addr_s[1]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    \readdata_s[12]_i_1 
       (.I0(Q[12]),
        .I1(\readdata_s[13]_i_5_n_0 ),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .I3(write_addr_s[0]),
        .I4(\readdata_s[13]_i_6_n_0 ),
        .I5(write_addr_s[1]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h10D0)) 
    \readdata_s[13]_i_1 
       (.I0(write_addr_s[1]),
        .I1(\readdata_s[13]_i_3_n_0 ),
        .I2(\readdata_s[13]_i_4_n_0 ),
        .I3(read_addr_s[1]),
        .O(\readdata_s_reg[0] ));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    \readdata_s[13]_i_2 
       (.I0(Q[13]),
        .I1(\readdata_s[13]_i_5_n_0 ),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .I3(write_addr_s[0]),
        .I4(\readdata_s[13]_i_6_n_0 ),
        .I5(write_addr_s[1]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \readdata_s[13]_i_3 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .O(\readdata_s[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \readdata_s[13]_i_4 
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .I2(s00_axi_rvalid),
        .O(\readdata_s[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \readdata_s[13]_i_5 
       (.I0(read_addr_s[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(s00_axi_rvalid),
        .I4(addr_reg[0]),
        .O(\readdata_s[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \readdata_s[13]_i_6 
       (.I0(read_addr_s[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(s00_axi_rvalid),
        .I4(addr_reg[1]),
        .O(\readdata_s[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    \readdata_s[1]_i_1 
       (.I0(Q[1]),
        .I1(\readdata_s[13]_i_5_n_0 ),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .I3(write_addr_s[0]),
        .I4(\readdata_s[13]_i_6_n_0 ),
        .I5(write_addr_s[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    \readdata_s[2]_i_1 
       (.I0(Q[2]),
        .I1(\readdata_s[13]_i_5_n_0 ),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .I3(write_addr_s[0]),
        .I4(\readdata_s[13]_i_6_n_0 ),
        .I5(write_addr_s[1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    \readdata_s[3]_i_1 
       (.I0(Q[3]),
        .I1(\readdata_s[13]_i_5_n_0 ),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .I3(write_addr_s[0]),
        .I4(\readdata_s[13]_i_6_n_0 ),
        .I5(write_addr_s[1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    \readdata_s[4]_i_1 
       (.I0(Q[4]),
        .I1(\readdata_s[13]_i_5_n_0 ),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .I3(write_addr_s[0]),
        .I4(\readdata_s[13]_i_6_n_0 ),
        .I5(write_addr_s[1]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    \readdata_s[5]_i_1 
       (.I0(Q[5]),
        .I1(\readdata_s[13]_i_5_n_0 ),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .I3(write_addr_s[0]),
        .I4(\readdata_s[13]_i_6_n_0 ),
        .I5(write_addr_s[1]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    \readdata_s[6]_i_1 
       (.I0(Q[6]),
        .I1(\readdata_s[13]_i_5_n_0 ),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .I3(write_addr_s[0]),
        .I4(\readdata_s[13]_i_6_n_0 ),
        .I5(write_addr_s[1]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    \readdata_s[7]_i_1 
       (.I0(Q[7]),
        .I1(\readdata_s[13]_i_5_n_0 ),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .I3(write_addr_s[0]),
        .I4(\readdata_s[13]_i_6_n_0 ),
        .I5(write_addr_s[1]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    \readdata_s[8]_i_1 
       (.I0(Q[8]),
        .I1(\readdata_s[13]_i_5_n_0 ),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .I3(write_addr_s[0]),
        .I4(\readdata_s[13]_i_6_n_0 ),
        .I5(write_addr_s[1]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    \readdata_s[9]_i_1 
       (.I0(Q[9]),
        .I1(\readdata_s[13]_i_5_n_0 ),
        .I2(\readdata_s[13]_i_3_n_0 ),
        .I3(write_addr_s[0]),
        .I4(\readdata_s[13]_i_6_n_0 ),
        .I5(write_addr_s[1]),
        .O(D[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const_logic
   (data_en_o,
    data_o,
    data_clk_i,
    data_en_i,
    data_rst_i,
    Q,
    data_i);
  output data_en_o;
  output [13:0]data_o;
  input data_clk_i;
  input data_en_i;
  input data_rst_i;
  input [13:0]Q;
  input [13:0]data_i;

  wire [13:0]Q;
  wire [13:0]add_val2_s;
  wire [13:0]add_val_s;
  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire data_en_o_i_1_n_0;
  wire [13:0]data_i;
  wire [13:0]data_in_s;
  wire [13:0]data_o;
  wire data_rst_i;
  wire \data_s[11]_i_2_n_0 ;
  wire \data_s[11]_i_3_n_0 ;
  wire \data_s[11]_i_4_n_0 ;
  wire \data_s[11]_i_5_n_0 ;
  wire \data_s[13]_i_2_n_0 ;
  wire \data_s[13]_i_3_n_0 ;
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
  wire \data_s_reg[13]_i_1_n_3 ;
  wire \data_s_reg[3]_i_1_n_0 ;
  wire \data_s_reg[3]_i_1_n_1 ;
  wire \data_s_reg[3]_i_1_n_2 ;
  wire \data_s_reg[3]_i_1_n_3 ;
  wire \data_s_reg[7]_i_1_n_0 ;
  wire \data_s_reg[7]_i_1_n_1 ;
  wire \data_s_reg[7]_i_1_n_2 ;
  wire \data_s_reg[7]_i_1_n_3 ;
  wire [3:1]\NLW_data_s_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_data_s_reg[13]_i_1_O_UNCONNECTED ;

  FDRE \add_val2_s_reg[0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(add_val_s[0]),
        .Q(add_val2_s[0]),
        .R(1'b0));
  FDRE \add_val2_s_reg[10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(add_val_s[10]),
        .Q(add_val2_s[10]),
        .R(1'b0));
  FDRE \add_val2_s_reg[11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(add_val_s[11]),
        .Q(add_val2_s[11]),
        .R(1'b0));
  FDRE \add_val2_s_reg[12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(add_val_s[12]),
        .Q(add_val2_s[12]),
        .R(1'b0));
  FDRE \add_val2_s_reg[13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(add_val_s[13]),
        .Q(add_val2_s[13]),
        .R(1'b0));
  FDRE \add_val2_s_reg[1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(add_val_s[1]),
        .Q(add_val2_s[1]),
        .R(1'b0));
  FDRE \add_val2_s_reg[2] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(add_val_s[2]),
        .Q(add_val2_s[2]),
        .R(1'b0));
  FDRE \add_val2_s_reg[3] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(add_val_s[3]),
        .Q(add_val2_s[3]),
        .R(1'b0));
  FDRE \add_val2_s_reg[4] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(add_val_s[4]),
        .Q(add_val2_s[4]),
        .R(1'b0));
  FDRE \add_val2_s_reg[5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(add_val_s[5]),
        .Q(add_val2_s[5]),
        .R(1'b0));
  FDRE \add_val2_s_reg[6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(add_val_s[6]),
        .Q(add_val2_s[6]),
        .R(1'b0));
  FDRE \add_val2_s_reg[7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(add_val_s[7]),
        .Q(add_val2_s[7]),
        .R(1'b0));
  FDRE \add_val2_s_reg[8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(add_val_s[8]),
        .Q(add_val2_s[8]),
        .R(1'b0));
  FDRE \add_val2_s_reg[9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(add_val_s[9]),
        .Q(add_val2_s[9]),
        .R(1'b0));
  FDRE \add_val_s_reg[0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[0]),
        .Q(add_val_s[0]),
        .R(1'b0));
  FDRE \add_val_s_reg[10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[10]),
        .Q(add_val_s[10]),
        .R(1'b0));
  FDRE \add_val_s_reg[11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[11]),
        .Q(add_val_s[11]),
        .R(1'b0));
  FDRE \add_val_s_reg[12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[12]),
        .Q(add_val_s[12]),
        .R(1'b0));
  FDRE \add_val_s_reg[13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[13]),
        .Q(add_val_s[13]),
        .R(1'b0));
  FDRE \add_val_s_reg[1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[1]),
        .Q(add_val_s[1]),
        .R(1'b0));
  FDRE \add_val_s_reg[2] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[2]),
        .Q(add_val_s[2]),
        .R(1'b0));
  FDRE \add_val_s_reg[3] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[3]),
        .Q(add_val_s[3]),
        .R(1'b0));
  FDRE \add_val_s_reg[4] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[4]),
        .Q(add_val_s[4]),
        .R(1'b0));
  FDRE \add_val_s_reg[5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[5]),
        .Q(add_val_s[5]),
        .R(1'b0));
  FDRE \add_val_s_reg[6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[6]),
        .Q(add_val_s[6]),
        .R(1'b0));
  FDRE \add_val_s_reg[7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[7]),
        .Q(add_val_s[7]),
        .R(1'b0));
  FDRE \add_val_s_reg[8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[8]),
        .Q(add_val_s[8]),
        .R(1'b0));
  FDRE \add_val_s_reg[9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[9]),
        .Q(add_val_s[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    data_en_o_i_1
       (.I0(data_en_i),
        .I1(data_rst_i),
        .O(data_en_o_i_1_n_0));
  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_o_i_1_n_0),
        .Q(data_en_o),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[11]_i_2 
       (.I0(data_i[11]),
        .I1(add_val2_s[11]),
        .O(\data_s[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[11]_i_3 
       (.I0(data_i[10]),
        .I1(add_val2_s[10]),
        .O(\data_s[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[11]_i_4 
       (.I0(data_i[9]),
        .I1(add_val2_s[9]),
        .O(\data_s[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[11]_i_5 
       (.I0(data_i[8]),
        .I1(add_val2_s[8]),
        .O(\data_s[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[13]_i_2 
       (.I0(data_i[13]),
        .I1(add_val2_s[13]),
        .O(\data_s[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[13]_i_3 
       (.I0(data_i[12]),
        .I1(add_val2_s[12]),
        .O(\data_s[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[3]_i_2 
       (.I0(data_i[3]),
        .I1(add_val2_s[3]),
        .O(\data_s[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[3]_i_3 
       (.I0(data_i[2]),
        .I1(add_val2_s[2]),
        .O(\data_s[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[3]_i_4 
       (.I0(data_i[1]),
        .I1(add_val2_s[1]),
        .O(\data_s[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[3]_i_5 
       (.I0(data_i[0]),
        .I1(add_val2_s[0]),
        .O(\data_s[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[7]_i_2 
       (.I0(data_i[7]),
        .I1(add_val2_s[7]),
        .O(\data_s[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[7]_i_3 
       (.I0(data_i[6]),
        .I1(add_val2_s[6]),
        .O(\data_s[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[7]_i_4 
       (.I0(data_i[5]),
        .I1(add_val2_s[5]),
        .O(\data_s[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[7]_i_5 
       (.I0(data_i[4]),
        .I1(add_val2_s[4]),
        .O(\data_s[7]_i_5_n_0 ));
  FDRE \data_s_reg[0] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_in_s[0]),
        .Q(data_o[0]),
        .R(data_rst_i));
  FDRE \data_s_reg[10] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_in_s[10]),
        .Q(data_o[10]),
        .R(data_rst_i));
  FDRE \data_s_reg[11] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_in_s[11]),
        .Q(data_o[11]),
        .R(data_rst_i));
  CARRY4 \data_s_reg[11]_i_1 
       (.CI(\data_s_reg[7]_i_1_n_0 ),
        .CO({\data_s_reg[11]_i_1_n_0 ,\data_s_reg[11]_i_1_n_1 ,\data_s_reg[11]_i_1_n_2 ,\data_s_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i[11:8]),
        .O(data_in_s[11:8]),
        .S({\data_s[11]_i_2_n_0 ,\data_s[11]_i_3_n_0 ,\data_s[11]_i_4_n_0 ,\data_s[11]_i_5_n_0 }));
  FDRE \data_s_reg[12] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_in_s[12]),
        .Q(data_o[12]),
        .R(data_rst_i));
  FDRE \data_s_reg[13] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_in_s[13]),
        .Q(data_o[13]),
        .R(data_rst_i));
  CARRY4 \data_s_reg[13]_i_1 
       (.CI(\data_s_reg[11]_i_1_n_0 ),
        .CO({\NLW_data_s_reg[13]_i_1_CO_UNCONNECTED [3:1],\data_s_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,data_i[12]}),
        .O({\NLW_data_s_reg[13]_i_1_O_UNCONNECTED [3:2],data_in_s[13:12]}),
        .S({1'b0,1'b0,\data_s[13]_i_2_n_0 ,\data_s[13]_i_3_n_0 }));
  FDRE \data_s_reg[1] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_in_s[1]),
        .Q(data_o[1]),
        .R(data_rst_i));
  FDRE \data_s_reg[2] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_in_s[2]),
        .Q(data_o[2]),
        .R(data_rst_i));
  FDRE \data_s_reg[3] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_in_s[3]),
        .Q(data_o[3]),
        .R(data_rst_i));
  CARRY4 \data_s_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\data_s_reg[3]_i_1_n_0 ,\data_s_reg[3]_i_1_n_1 ,\data_s_reg[3]_i_1_n_2 ,\data_s_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i[3:0]),
        .O(data_in_s[3:0]),
        .S({\data_s[3]_i_2_n_0 ,\data_s[3]_i_3_n_0 ,\data_s[3]_i_4_n_0 ,\data_s[3]_i_5_n_0 }));
  FDRE \data_s_reg[4] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_in_s[4]),
        .Q(data_o[4]),
        .R(data_rst_i));
  FDRE \data_s_reg[5] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_in_s[5]),
        .Q(data_o[5]),
        .R(data_rst_i));
  FDRE \data_s_reg[6] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_in_s[6]),
        .Q(data_o[6]),
        .R(data_rst_i));
  FDRE \data_s_reg[7] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_in_s[7]),
        .Q(data_o[7]),
        .R(data_rst_i));
  CARRY4 \data_s_reg[7]_i_1 
       (.CI(\data_s_reg[3]_i_1_n_0 ),
        .CO({\data_s_reg[7]_i_1_n_0 ,\data_s_reg[7]_i_1_n_1 ,\data_s_reg[7]_i_1_n_2 ,\data_s_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_i[7:4]),
        .O(data_in_s[7:4]),
        .S({\data_s[7]_i_2_n_0 ,\data_s[7]_i_3_n_0 ,\data_s[7]_i_4_n_0 ,\data_s[7]_i_5_n_0 }));
  FDRE \data_s_reg[8] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_in_s[8]),
        .Q(data_o[8]),
        .R(data_rst_i));
  FDRE \data_s_reg[9] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_in_s[9]),
        .Q(data_o[9]),
        .R(data_rst_i));
endmodule

(* CHECK_LICENSE_TYPE = "dds_gnuradio_wrapper_add_const_2_0,add_const,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "add_const,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axi_aclk,
    s00_axi_reset,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    data_i,
    data_en_i,
    data_clk_i,
    data_o,
    data_en_o,
    data_clk_o,
    data_rst_o,
    data_rst_i);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_reset RST" *) input s00_axi_reset;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA" *) input [13:0]data_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_EN" *) input data_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_CLK" *) input data_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA" *) output [13:0]data_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EN" *) output data_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_CLK" *) output data_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_RST" *) output data_rst_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_RST" *) input data_rst_i;

  wire data_clk_i;
  wire data_clk_o;
  wire data_en_i;
  wire data_en_o;
  wire [13:0]data_i;
  wire [13:0]data_o;
  wire data_rst_i;
  wire data_rst_o;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire [2:0]s00_axi_arprot;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire [2:0]s00_axi_awprot;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [1:0]s00_axi_bresp;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire [1:0]s00_axi_rresp;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  (* C_S00_AXI_ADDR_WIDTH = "4" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  (* DATA_IN_SIZE = "14" *) 
  (* DATA_OUT_SIZE = "14" *) 
  (* add_val = "0" *) 
  (* format = "unsigned" *) 
  (* id = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const U0
       (.data_clk_i(data_clk_i),
        .data_clk_o(data_clk_o),
        .data_en_i(data_en_i),
        .data_en_o(data_en_o),
        .data_i(data_i),
        .data_o(data_o),
        .data_rst_i(data_rst_i),
        .data_rst_o(data_rst_o),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_arprot(s00_axi_arprot),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awprot(s00_axi_awprot),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bresp(s00_axi_bresp),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rresp(s00_axi_rresp),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_add_const
   (Q,
    s00_axi_rdata,
    E,
    s00_axi_wdata,
    s00_axi_aclk,
    s00_axi_reset,
    \axi_awaddr_reg[3] ,
    D);
  output [13:0]Q;
  output [13:0]s00_axi_rdata;
  input [0:0]E;
  input [13:0]s00_axi_wdata;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [0:0]\axi_awaddr_reg[3] ;
  input [13:0]D;

  wire [13:0]D;
  wire [0:0]E;
  wire [13:0]Q;
  wire [0:0]\axi_awaddr_reg[3] ;
  wire s00_axi_aclk;
  wire [13:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire [13:0]s00_axi_wdata;

  FDCE \offset_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]));
  FDCE \offset_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[10]),
        .Q(Q[10]));
  FDCE \offset_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[11]),
        .Q(Q[11]));
  FDCE \offset_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[12]),
        .Q(Q[12]));
  FDCE \offset_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[13]),
        .Q(Q[13]));
  FDCE \offset_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]));
  FDCE \offset_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]));
  FDCE \offset_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]));
  FDCE \offset_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]));
  FDCE \offset_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[5]),
        .Q(Q[5]));
  FDCE \offset_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[6]),
        .Q(Q[6]));
  FDCE \offset_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[7]),
        .Q(Q[7]));
  FDCE \offset_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[8]),
        .Q(Q[8]));
  FDCE \offset_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[9]),
        .Q(Q[9]));
  FDCE \readdata_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[3] ),
        .CLR(s00_axi_reset),
        .D(D[0]),
        .Q(s00_axi_rdata[0]));
  FDCE \readdata_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[3] ),
        .CLR(s00_axi_reset),
        .D(D[10]),
        .Q(s00_axi_rdata[10]));
  FDCE \readdata_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[3] ),
        .CLR(s00_axi_reset),
        .D(D[11]),
        .Q(s00_axi_rdata[11]));
  FDCE \readdata_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[3] ),
        .CLR(s00_axi_reset),
        .D(D[12]),
        .Q(s00_axi_rdata[12]));
  FDCE \readdata_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[3] ),
        .CLR(s00_axi_reset),
        .D(D[13]),
        .Q(s00_axi_rdata[13]));
  FDCE \readdata_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[3] ),
        .CLR(s00_axi_reset),
        .D(D[1]),
        .Q(s00_axi_rdata[1]));
  FDCE \readdata_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[3] ),
        .CLR(s00_axi_reset),
        .D(D[2]),
        .Q(s00_axi_rdata[2]));
  FDCE \readdata_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[3] ),
        .CLR(s00_axi_reset),
        .D(D[3]),
        .Q(s00_axi_rdata[3]));
  FDCE \readdata_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[3] ),
        .CLR(s00_axi_reset),
        .D(D[4]),
        .Q(s00_axi_rdata[4]));
  FDCE \readdata_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[3] ),
        .CLR(s00_axi_reset),
        .D(D[5]),
        .Q(s00_axi_rdata[5]));
  FDCE \readdata_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[3] ),
        .CLR(s00_axi_reset),
        .D(D[6]),
        .Q(s00_axi_rdata[6]));
  FDCE \readdata_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[3] ),
        .CLR(s00_axi_reset),
        .D(D[7]),
        .Q(s00_axi_rdata[7]));
  FDCE \readdata_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[3] ),
        .CLR(s00_axi_reset),
        .D(D[8]),
        .Q(s00_axi_rdata[8]));
  FDCE \readdata_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[3] ),
        .CLR(s00_axi_reset),
        .D(D[9]),
        .Q(s00_axi_rdata[9]));
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
