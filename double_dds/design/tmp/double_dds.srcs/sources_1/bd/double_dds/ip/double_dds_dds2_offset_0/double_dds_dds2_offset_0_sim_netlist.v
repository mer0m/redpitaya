// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu Oct 22 19:49:11 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim -rename_top double_dds_dds2_offset_0 -prefix
//               double_dds_dds2_offset_0_ double_dds_dds1_offset_0_sim_netlist.v
// Design      : double_dds_dds1_offset_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_S00_AXI_ADDR_WIDTH = "4" *) (* C_S00_AXI_DATA_WIDTH = "32" *) (* DATA_IN_SIZE = "14" *) 
(* DATA_OUT_SIZE = "14" *) (* add_val = "0" *) (* format = "signed" *) 
(* id = "1" *) 
module double_dds_dds2_offset_0_add_constReal
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
  wire [1:0]addr_s;
  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire [13:0]data_i;
  wire [13:0]data_o;
  wire data_rst_i;
  wire offset_l_s;
  wire [13:0]offset_s;
  wire offset_s_0;
  wire [13:0]offset_sync_s;
  wire read_en_s;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
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
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  double_dds_dds2_offset_0_add_constReal_handComm add_constRealHandComm
       (.E(offset_s_0),
        .addr_s(addr_s),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_wready_reg_0(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_arvalid_0(read_en_s),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_awvalid_0(offset_l_s),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wvalid(s00_axi_wvalid));
  double_dds_dds2_offset_0_add_constReal_logic add_constRealLogic
       (.data_clk_i(data_clk_i),
        .data_en_i(data_en_i),
        .data_en_o(data_en_o),
        .data_i(data_i),
        .data_o(data_o),
        .data_rst_i(data_rst_i),
        .out(offset_sync_s));
  double_dds_dds2_offset_0_add_constReal_synchronizer_vector offset_syn
       (.Q(offset_s),
        .data_clk_i(data_clk_i),
        .out(offset_sync_s));
  double_dds_dds2_offset_0_wb_add_constReal wb_add_constReal_inst
       (.E(offset_l_s),
        .Q(offset_s),
        .addr_s(addr_s),
        .\offset_s_reg[63]_0 (offset_s_0),
        .\readdata_s_reg[31]_0 (read_en_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_wdata(s00_axi_wdata));
endmodule

module double_dds_dds2_offset_0_add_constReal_handComm
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_rvalid,
    E,
    addr_s,
    s00_axi_awvalid_0,
    s00_axi_arvalid_0,
    s00_axi_reset,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [0:0]E;
  output [1:0]addr_s;
  output [0:0]s00_axi_awvalid_0;
  output [0:0]s00_axi_arvalid_0;
  input s00_axi_reset;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;

  wire [0:0]E;
  wire [1:0]addr_reg;
  wire [1:0]addr_s;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [1:0]read_addr_s;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_arvalid;
  wire [0:0]s00_axi_arvalid_0;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire [0:0]s00_axi_awvalid_0;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire s00_axi_wvalid;
  wire [1:0]write_addr_s;
  wire write_en_s;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addr_reg[0]_i_1 
       (.I0(write_addr_s[0]),
        .I1(write_en_s),
        .I2(read_addr_s[0]),
        .I3(s00_axi_arvalid_0),
        .I4(addr_reg[0]),
        .O(addr_s[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addr_reg[1]_i_1 
       (.I0(write_addr_s[1]),
        .I1(write_en_s),
        .I2(read_addr_s[1]),
        .I3(s00_axi_arvalid_0),
        .I4(addr_reg[1]),
        .O(addr_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_reg[1]_i_2 
       (.I0(axi_awready_reg_0),
        .I1(axi_wready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(write_en_s));
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(read_addr_s[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(s00_axi_reset));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(write_addr_s[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
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
        .I2(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(s00_axi_reset));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(s00_axi_reset));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \offset_l_s[31]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(addr_s[1]),
        .I5(addr_s[0]),
        .O(s00_axi_awvalid_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \offset_s[63]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(addr_s[0]),
        .I5(addr_s[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \readdata_s[31]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rvalid),
        .O(s00_axi_arvalid_0));
endmodule

module double_dds_dds2_offset_0_add_constReal_logic
   (data_en_o,
    data_o,
    data_en_i,
    data_clk_i,
    data_i,
    out,
    data_rst_i);
  output data_en_o;
  output [13:0]data_o;
  input data_en_i;
  input data_clk_i;
  input [13:0]data_i;
  input [13:0]out;
  input data_rst_i;

  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
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
  wire [13:0]out;
  wire [3:1]\NLW_data_s_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_data_s_reg[13]_i_1_O_UNCONNECTED ;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_i),
        .Q(data_en_o),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[11]_i_2 
       (.I0(data_i[11]),
        .I1(out[11]),
        .O(\data_s[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[11]_i_3 
       (.I0(data_i[10]),
        .I1(out[10]),
        .O(\data_s[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[11]_i_4 
       (.I0(data_i[9]),
        .I1(out[9]),
        .O(\data_s[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[11]_i_5 
       (.I0(data_i[8]),
        .I1(out[8]),
        .O(\data_s[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[13]_i_2 
       (.I0(data_i[13]),
        .I1(out[13]),
        .O(\data_s[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[13]_i_3 
       (.I0(data_i[12]),
        .I1(out[12]),
        .O(\data_s[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[3]_i_2 
       (.I0(data_i[3]),
        .I1(out[3]),
        .O(\data_s[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[3]_i_3 
       (.I0(data_i[2]),
        .I1(out[2]),
        .O(\data_s[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[3]_i_4 
       (.I0(data_i[1]),
        .I1(out[1]),
        .O(\data_s[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[3]_i_5 
       (.I0(data_i[0]),
        .I1(out[0]),
        .O(\data_s[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[7]_i_2 
       (.I0(data_i[7]),
        .I1(out[7]),
        .O(\data_s[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[7]_i_3 
       (.I0(data_i[6]),
        .I1(out[6]),
        .O(\data_s[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[7]_i_4 
       (.I0(data_i[5]),
        .I1(out[5]),
        .O(\data_s[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_s[7]_i_5 
       (.I0(data_i[4]),
        .I1(out[4]),
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

module double_dds_dds2_offset_0_add_constReal_synchronizer_vector
   (out,
    Q,
    data_clk_i);
  output [13:0]out;
  input [13:0]Q;
  input data_clk_i;

  wire [13:0]Q;
  wire data_clk_i;
  (* async_reg = "true" *) wire [13:0]\flipflops[0]_0 ;
  (* async_reg = "true" *) wire [13:0]\flipflops[1]_1 ;
  (* async_reg = "true" *) wire [13:0]\flipflops[2]_2 ;

  assign out[13:0] = \flipflops[2]_2 ;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0][0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\flipflops[0]_0 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[10]),
        .Q(\flipflops[0]_0 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[11]),
        .Q(\flipflops[0]_0 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[12]),
        .Q(\flipflops[0]_0 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[13]),
        .Q(\flipflops[0]_0 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0][1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\flipflops[0]_0 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0][2] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\flipflops[0]_0 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0][3] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\flipflops[0]_0 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0][4] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\flipflops[0]_0 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[5]),
        .Q(\flipflops[0]_0 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[6]),
        .Q(\flipflops[0]_0 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[7]),
        .Q(\flipflops[0]_0 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[8]),
        .Q(\flipflops[0]_0 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0][9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q[9]),
        .Q(\flipflops[0]_0 [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1][0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[0]_0 [0]),
        .Q(\flipflops[1]_1 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[0]_0 [10]),
        .Q(\flipflops[1]_1 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[0]_0 [11]),
        .Q(\flipflops[1]_1 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[0]_0 [12]),
        .Q(\flipflops[1]_1 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[0]_0 [13]),
        .Q(\flipflops[1]_1 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1][1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[0]_0 [1]),
        .Q(\flipflops[1]_1 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1][2] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[0]_0 [2]),
        .Q(\flipflops[1]_1 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1][3] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[0]_0 [3]),
        .Q(\flipflops[1]_1 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1][4] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[0]_0 [4]),
        .Q(\flipflops[1]_1 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[0]_0 [5]),
        .Q(\flipflops[1]_1 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[0]_0 [6]),
        .Q(\flipflops[1]_1 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[0]_0 [7]),
        .Q(\flipflops[1]_1 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[0]_0 [8]),
        .Q(\flipflops[1]_1 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1][9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[0]_0 [9]),
        .Q(\flipflops[1]_1 [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2][0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[1]_1 [0]),
        .Q(\flipflops[2]_2 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[1]_1 [10]),
        .Q(\flipflops[2]_2 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[1]_1 [11]),
        .Q(\flipflops[2]_2 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[1]_1 [12]),
        .Q(\flipflops[2]_2 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[1]_1 [13]),
        .Q(\flipflops[2]_2 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2][1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[1]_1 [1]),
        .Q(\flipflops[2]_2 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2][2] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[1]_1 [2]),
        .Q(\flipflops[2]_2 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2][3] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[1]_1 [3]),
        .Q(\flipflops[2]_2 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2][4] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[1]_1 [4]),
        .Q(\flipflops[2]_2 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[1]_1 [5]),
        .Q(\flipflops[2]_2 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[1]_1 [6]),
        .Q(\flipflops[2]_2 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[1]_1 [7]),
        .Q(\flipflops[2]_2 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[1]_1 [8]),
        .Q(\flipflops[2]_2 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2][9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops[1]_1 [9]),
        .Q(\flipflops[2]_2 [9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "double_dds_dds1_offset_0,add_constReal,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "add_constReal,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module double_dds_dds2_offset_0
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_dds_ps7_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input s00_axi_reset;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_dds_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
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
  (* format = "signed" *) 
  (* id = "1" *) 
  double_dds_dds2_offset_0_add_constReal U0
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

module double_dds_dds2_offset_0_wb_add_constReal
   (Q,
    s00_axi_rdata,
    addr_s,
    E,
    s00_axi_wdata,
    s00_axi_aclk,
    s00_axi_reset,
    \offset_s_reg[63]_0 ,
    \readdata_s_reg[31]_0 );
  output [13:0]Q;
  output [31:0]s00_axi_rdata;
  input [1:0]addr_s;
  input [0:0]E;
  input [31:0]s00_axi_wdata;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [0:0]\offset_s_reg[63]_0 ;
  input [0:0]\readdata_s_reg[31]_0 ;

  wire [0:0]E;
  wire [13:0]Q;
  wire [1:0]addr_s;
  wire [31:0]offset_l_s;
  wire [63:14]offset_s;
  wire [0:0]\offset_s_reg[63]_0 ;
  wire [31:0]p_0_in;
  wire [0:0]\readdata_s_reg[31]_0 ;
  wire s00_axi_aclk;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire [31:0]s00_axi_wdata;

  FDCE \offset_l_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[0]),
        .Q(offset_l_s[0]));
  FDCE \offset_l_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[10]),
        .Q(offset_l_s[10]));
  FDCE \offset_l_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[11]),
        .Q(offset_l_s[11]));
  FDCE \offset_l_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[12]),
        .Q(offset_l_s[12]));
  FDCE \offset_l_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[13]),
        .Q(offset_l_s[13]));
  FDCE \offset_l_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[14]),
        .Q(offset_l_s[14]));
  FDCE \offset_l_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[15]),
        .Q(offset_l_s[15]));
  FDCE \offset_l_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[16]),
        .Q(offset_l_s[16]));
  FDCE \offset_l_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[17]),
        .Q(offset_l_s[17]));
  FDCE \offset_l_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[18]),
        .Q(offset_l_s[18]));
  FDCE \offset_l_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[19]),
        .Q(offset_l_s[19]));
  FDCE \offset_l_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[1]),
        .Q(offset_l_s[1]));
  FDCE \offset_l_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[20]),
        .Q(offset_l_s[20]));
  FDCE \offset_l_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[21]),
        .Q(offset_l_s[21]));
  FDCE \offset_l_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[22]),
        .Q(offset_l_s[22]));
  FDCE \offset_l_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[23]),
        .Q(offset_l_s[23]));
  FDCE \offset_l_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[24]),
        .Q(offset_l_s[24]));
  FDCE \offset_l_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[25]),
        .Q(offset_l_s[25]));
  FDCE \offset_l_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[26]),
        .Q(offset_l_s[26]));
  FDCE \offset_l_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[27]),
        .Q(offset_l_s[27]));
  FDCE \offset_l_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[28]),
        .Q(offset_l_s[28]));
  FDCE \offset_l_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[29]),
        .Q(offset_l_s[29]));
  FDCE \offset_l_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[2]),
        .Q(offset_l_s[2]));
  FDCE \offset_l_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[30]),
        .Q(offset_l_s[30]));
  FDCE \offset_l_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[31]),
        .Q(offset_l_s[31]));
  FDCE \offset_l_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[3]),
        .Q(offset_l_s[3]));
  FDCE \offset_l_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[4]),
        .Q(offset_l_s[4]));
  FDCE \offset_l_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[5]),
        .Q(offset_l_s[5]));
  FDCE \offset_l_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[6]),
        .Q(offset_l_s[6]));
  FDCE \offset_l_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[7]),
        .Q(offset_l_s[7]));
  FDCE \offset_l_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[8]),
        .Q(offset_l_s[8]));
  FDCE \offset_l_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[9]),
        .Q(offset_l_s[9]));
  FDCE \offset_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[0]),
        .Q(Q[0]));
  FDCE \offset_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[10]),
        .Q(Q[10]));
  FDCE \offset_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[11]),
        .Q(Q[11]));
  FDCE \offset_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[12]),
        .Q(Q[12]));
  FDCE \offset_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[13]),
        .Q(Q[13]));
  FDCE \offset_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[14]),
        .Q(offset_s[14]));
  FDCE \offset_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[15]),
        .Q(offset_s[15]));
  FDCE \offset_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[16]),
        .Q(offset_s[16]));
  FDCE \offset_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[17]),
        .Q(offset_s[17]));
  FDCE \offset_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[18]),
        .Q(offset_s[18]));
  FDCE \offset_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[19]),
        .Q(offset_s[19]));
  FDCE \offset_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[1]),
        .Q(Q[1]));
  FDCE \offset_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[20]),
        .Q(offset_s[20]));
  FDCE \offset_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[21]),
        .Q(offset_s[21]));
  FDCE \offset_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[22]),
        .Q(offset_s[22]));
  FDCE \offset_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[23]),
        .Q(offset_s[23]));
  FDCE \offset_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[24]),
        .Q(offset_s[24]));
  FDCE \offset_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[25]),
        .Q(offset_s[25]));
  FDCE \offset_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[26]),
        .Q(offset_s[26]));
  FDCE \offset_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[27]),
        .Q(offset_s[27]));
  FDCE \offset_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[28]),
        .Q(offset_s[28]));
  FDCE \offset_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[29]),
        .Q(offset_s[29]));
  FDCE \offset_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[2]),
        .Q(Q[2]));
  FDCE \offset_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[30]),
        .Q(offset_s[30]));
  FDCE \offset_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[31]),
        .Q(offset_s[31]));
  FDCE \offset_s_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[0]),
        .Q(offset_s[32]));
  FDCE \offset_s_reg[33] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[1]),
        .Q(offset_s[33]));
  FDCE \offset_s_reg[34] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[2]),
        .Q(offset_s[34]));
  FDCE \offset_s_reg[35] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[3]),
        .Q(offset_s[35]));
  FDCE \offset_s_reg[36] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[4]),
        .Q(offset_s[36]));
  FDCE \offset_s_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[5]),
        .Q(offset_s[37]));
  FDCE \offset_s_reg[38] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[6]),
        .Q(offset_s[38]));
  FDCE \offset_s_reg[39] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[7]),
        .Q(offset_s[39]));
  FDCE \offset_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[3]),
        .Q(Q[3]));
  FDCE \offset_s_reg[40] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[8]),
        .Q(offset_s[40]));
  FDCE \offset_s_reg[41] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[9]),
        .Q(offset_s[41]));
  FDCE \offset_s_reg[42] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[10]),
        .Q(offset_s[42]));
  FDCE \offset_s_reg[43] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[11]),
        .Q(offset_s[43]));
  FDCE \offset_s_reg[44] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[12]),
        .Q(offset_s[44]));
  FDCE \offset_s_reg[45] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[13]),
        .Q(offset_s[45]));
  FDCE \offset_s_reg[46] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[14]),
        .Q(offset_s[46]));
  FDCE \offset_s_reg[47] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[15]),
        .Q(offset_s[47]));
  FDCE \offset_s_reg[48] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[16]),
        .Q(offset_s[48]));
  FDCE \offset_s_reg[49] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[17]),
        .Q(offset_s[49]));
  FDCE \offset_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[4]),
        .Q(Q[4]));
  FDCE \offset_s_reg[50] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[18]),
        .Q(offset_s[50]));
  FDCE \offset_s_reg[51] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[19]),
        .Q(offset_s[51]));
  FDCE \offset_s_reg[52] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[20]),
        .Q(offset_s[52]));
  FDCE \offset_s_reg[53] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[21]),
        .Q(offset_s[53]));
  FDCE \offset_s_reg[54] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[22]),
        .Q(offset_s[54]));
  FDCE \offset_s_reg[55] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[23]),
        .Q(offset_s[55]));
  FDCE \offset_s_reg[56] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[24]),
        .Q(offset_s[56]));
  FDCE \offset_s_reg[57] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[25]),
        .Q(offset_s[57]));
  FDCE \offset_s_reg[58] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[26]),
        .Q(offset_s[58]));
  FDCE \offset_s_reg[59] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[27]),
        .Q(offset_s[59]));
  FDCE \offset_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[5]),
        .Q(Q[5]));
  FDCE \offset_s_reg[60] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[28]),
        .Q(offset_s[60]));
  FDCE \offset_s_reg[61] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[29]),
        .Q(offset_s[61]));
  FDCE \offset_s_reg[62] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[30]),
        .Q(offset_s[62]));
  FDCE \offset_s_reg[63] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(s00_axi_wdata[31]),
        .Q(offset_s[63]));
  FDCE \offset_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[6]),
        .Q(Q[6]));
  FDCE \offset_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[7]),
        .Q(Q[7]));
  FDCE \offset_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[8]),
        .Q(Q[8]));
  FDCE \offset_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\offset_s_reg[63]_0 ),
        .CLR(s00_axi_reset),
        .D(offset_l_s[9]),
        .Q(Q[9]));
  LUT4 #(
    .INIT(16'hFACF)) 
    \readdata_s[0]_i_1 
       (.I0(Q[0]),
        .I1(offset_s[32]),
        .I2(addr_s[1]),
        .I3(addr_s[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[10]_i_1 
       (.I0(offset_s[42]),
        .I1(addr_s[1]),
        .I2(Q[10]),
        .I3(addr_s[0]),
        .O(p_0_in[10]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[11]_i_1 
       (.I0(offset_s[43]),
        .I1(addr_s[1]),
        .I2(Q[11]),
        .I3(addr_s[0]),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[12]_i_1 
       (.I0(offset_s[44]),
        .I1(addr_s[1]),
        .I2(Q[12]),
        .I3(addr_s[0]),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[13]_i_1 
       (.I0(offset_s[45]),
        .I1(addr_s[1]),
        .I2(Q[13]),
        .I3(addr_s[0]),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[14]_i_1 
       (.I0(offset_s[46]),
        .I1(addr_s[1]),
        .I2(offset_s[14]),
        .I3(addr_s[0]),
        .O(p_0_in[14]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[15]_i_1 
       (.I0(offset_s[47]),
        .I1(addr_s[1]),
        .I2(offset_s[15]),
        .I3(addr_s[0]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[16]_i_1 
       (.I0(offset_s[48]),
        .I1(addr_s[1]),
        .I2(offset_s[16]),
        .I3(addr_s[0]),
        .O(p_0_in[16]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[17]_i_1 
       (.I0(offset_s[49]),
        .I1(addr_s[1]),
        .I2(offset_s[17]),
        .I3(addr_s[0]),
        .O(p_0_in[17]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[18]_i_1 
       (.I0(offset_s[50]),
        .I1(addr_s[1]),
        .I2(offset_s[18]),
        .I3(addr_s[0]),
        .O(p_0_in[18]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[19]_i_1 
       (.I0(offset_s[51]),
        .I1(addr_s[1]),
        .I2(offset_s[19]),
        .I3(addr_s[0]),
        .O(p_0_in[19]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[1]_i_1 
       (.I0(offset_s[33]),
        .I1(addr_s[1]),
        .I2(Q[1]),
        .I3(addr_s[0]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[20]_i_1 
       (.I0(offset_s[52]),
        .I1(addr_s[1]),
        .I2(offset_s[20]),
        .I3(addr_s[0]),
        .O(p_0_in[20]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[21]_i_1 
       (.I0(offset_s[53]),
        .I1(addr_s[1]),
        .I2(offset_s[21]),
        .I3(addr_s[0]),
        .O(p_0_in[21]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[22]_i_1 
       (.I0(offset_s[54]),
        .I1(addr_s[1]),
        .I2(offset_s[22]),
        .I3(addr_s[0]),
        .O(p_0_in[22]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[23]_i_1 
       (.I0(offset_s[55]),
        .I1(addr_s[1]),
        .I2(offset_s[23]),
        .I3(addr_s[0]),
        .O(p_0_in[23]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[24]_i_1 
       (.I0(offset_s[56]),
        .I1(addr_s[1]),
        .I2(offset_s[24]),
        .I3(addr_s[0]),
        .O(p_0_in[24]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[25]_i_1 
       (.I0(offset_s[57]),
        .I1(addr_s[1]),
        .I2(offset_s[25]),
        .I3(addr_s[0]),
        .O(p_0_in[25]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[26]_i_1 
       (.I0(offset_s[58]),
        .I1(addr_s[1]),
        .I2(offset_s[26]),
        .I3(addr_s[0]),
        .O(p_0_in[26]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[27]_i_1 
       (.I0(offset_s[59]),
        .I1(addr_s[1]),
        .I2(offset_s[27]),
        .I3(addr_s[0]),
        .O(p_0_in[27]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[28]_i_1 
       (.I0(offset_s[60]),
        .I1(addr_s[1]),
        .I2(offset_s[28]),
        .I3(addr_s[0]),
        .O(p_0_in[28]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[29]_i_1 
       (.I0(offset_s[61]),
        .I1(addr_s[1]),
        .I2(offset_s[29]),
        .I3(addr_s[0]),
        .O(p_0_in[29]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[2]_i_1 
       (.I0(offset_s[34]),
        .I1(addr_s[1]),
        .I2(Q[2]),
        .I3(addr_s[0]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[30]_i_1 
       (.I0(offset_s[62]),
        .I1(addr_s[1]),
        .I2(offset_s[30]),
        .I3(addr_s[0]),
        .O(p_0_in[30]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[31]_i_2 
       (.I0(offset_s[63]),
        .I1(addr_s[1]),
        .I2(offset_s[31]),
        .I3(addr_s[0]),
        .O(p_0_in[31]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[3]_i_1 
       (.I0(offset_s[35]),
        .I1(addr_s[1]),
        .I2(Q[3]),
        .I3(addr_s[0]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[4]_i_1 
       (.I0(offset_s[36]),
        .I1(addr_s[1]),
        .I2(Q[4]),
        .I3(addr_s[0]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[5]_i_1 
       (.I0(offset_s[37]),
        .I1(addr_s[1]),
        .I2(Q[5]),
        .I3(addr_s[0]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[6]_i_1 
       (.I0(offset_s[38]),
        .I1(addr_s[1]),
        .I2(Q[6]),
        .I3(addr_s[0]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[7]_i_1 
       (.I0(offset_s[39]),
        .I1(addr_s[1]),
        .I2(Q[7]),
        .I3(addr_s[0]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[8]_i_1 
       (.I0(offset_s[40]),
        .I1(addr_s[1]),
        .I2(Q[8]),
        .I3(addr_s[0]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \readdata_s[9]_i_1 
       (.I0(offset_s[41]),
        .I1(addr_s[1]),
        .I2(Q[9]),
        .I3(addr_s[0]),
        .O(p_0_in[9]));
  FDCE \readdata_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[0]),
        .Q(s00_axi_rdata[0]));
  FDCE \readdata_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[10]),
        .Q(s00_axi_rdata[10]));
  FDCE \readdata_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[11]),
        .Q(s00_axi_rdata[11]));
  FDCE \readdata_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[12]),
        .Q(s00_axi_rdata[12]));
  FDCE \readdata_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[13]),
        .Q(s00_axi_rdata[13]));
  FDCE \readdata_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[14]),
        .Q(s00_axi_rdata[14]));
  FDCE \readdata_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[15]),
        .Q(s00_axi_rdata[15]));
  FDCE \readdata_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[16]),
        .Q(s00_axi_rdata[16]));
  FDCE \readdata_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[17]),
        .Q(s00_axi_rdata[17]));
  FDCE \readdata_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[18]),
        .Q(s00_axi_rdata[18]));
  FDCE \readdata_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[19]),
        .Q(s00_axi_rdata[19]));
  FDCE \readdata_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[1]),
        .Q(s00_axi_rdata[1]));
  FDCE \readdata_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[20]),
        .Q(s00_axi_rdata[20]));
  FDCE \readdata_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[21]),
        .Q(s00_axi_rdata[21]));
  FDCE \readdata_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[22]),
        .Q(s00_axi_rdata[22]));
  FDCE \readdata_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[23]),
        .Q(s00_axi_rdata[23]));
  FDCE \readdata_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[24]),
        .Q(s00_axi_rdata[24]));
  FDCE \readdata_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[25]),
        .Q(s00_axi_rdata[25]));
  FDCE \readdata_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[26]),
        .Q(s00_axi_rdata[26]));
  FDCE \readdata_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[27]),
        .Q(s00_axi_rdata[27]));
  FDCE \readdata_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[28]),
        .Q(s00_axi_rdata[28]));
  FDCE \readdata_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[29]),
        .Q(s00_axi_rdata[29]));
  FDCE \readdata_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[2]),
        .Q(s00_axi_rdata[2]));
  FDCE \readdata_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[30]),
        .Q(s00_axi_rdata[30]));
  FDCE \readdata_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[31]),
        .Q(s00_axi_rdata[31]));
  FDCE \readdata_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[3]),
        .Q(s00_axi_rdata[3]));
  FDCE \readdata_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[4]),
        .Q(s00_axi_rdata[4]));
  FDCE \readdata_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[5]),
        .Q(s00_axi_rdata[5]));
  FDCE \readdata_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[6]),
        .Q(s00_axi_rdata[6]));
  FDCE \readdata_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[7]),
        .Q(s00_axi_rdata[7]));
  FDCE \readdata_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[8]),
        .Q(s00_axi_rdata[8]));
  FDCE \readdata_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .CLR(s00_axi_reset),
        .D(p_0_in[9]),
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
