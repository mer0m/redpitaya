// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri May 15 18:49:27 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_iq_pid_vco_dataReal_to_ram_fast_0_sim_netlist.v
// Design      : double_iq_pid_vco_dataReal_to_ram_fast_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync
   (data2_rst_i_0,
    data2_clk_i,
    sync_stage0_s_reg_0,
    s00_axi_aclk,
    data2_rst_i,
    busy_s_reg,
    busy_s_0,
    data2_en_i,
    Q);
  output data2_rst_i_0;
  input data2_clk_i;
  input sync_stage0_s_reg_0;
  input s00_axi_aclk;
  input data2_rst_i;
  input busy_s_reg;
  input busy_s_0;
  input data2_en_i;
  input [0:0]Q;

  wire [0:0]Q;
  wire busy_s_0;
  wire busy_s_reg;
  wire data2_clk_i;
  wire data2_en_i;
  wire data2_rst_i;
  wire data2_rst_i_0;
  wire s00_axi_aclk;
  wire sync_stage0_s;
  wire sync_stage0_s_reg_0;
  (* async_reg = "true" *) wire sync_stage1_s;
  (* async_reg = "true" *) wire sync_stage2_s;
  wire sync_stage3_s_reg_n_0;

  LUT6 #(
    .INIT(64'h5044554455445544)) 
    busy_s_i_1__0
       (.I0(data2_rst_i),
        .I1(sync_stage3_s_reg_n_0),
        .I2(busy_s_reg),
        .I3(busy_s_0),
        .I4(data2_en_i),
        .I5(Q),
        .O(data2_rst_i_0));
  FDRE sync_stage0_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sync_stage0_s_reg_0),
        .Q(sync_stage0_s),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE sync_stage1_s_reg
       (.C(data2_clk_i),
        .CE(1'b1),
        .D(sync_stage0_s),
        .Q(sync_stage1_s),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE sync_stage2_s_reg
       (.C(data2_clk_i),
        .CE(1'b1),
        .D(sync_stage1_s),
        .Q(sync_stage2_s),
        .R(1'b0));
  FDRE sync_stage3_s_reg
       (.C(data2_clk_i),
        .CE(1'b1),
        .D(sync_stage2_s),
        .Q(sync_stage3_s_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dataReal_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__1
   (busy_s_2,
    s00_axi_reset_0,
    sync_stage3_s_reg_0,
    busy_s_0,
    data1_clk_i,
    s00_axi_aclk,
    s00_axi_reset,
    start_acq2_s,
    start_o,
    start_s,
    start_s_reg);
  output [0:0]busy_s_2;
  output s00_axi_reset_0;
  output sync_stage3_s_reg_0;
  input busy_s_0;
  input data1_clk_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input start_acq2_s;
  input start_o;
  input start_s;
  input [0:0]start_s_reg;

  wire busy_s_0;
  wire [0:0]busy_s_2;
  wire data1_clk_i;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire s00_axi_reset_0;
  wire start_acq2_s;
  wire start_o;
  wire start_s;
  wire [0:0]start_s_reg;
  wire sync_stage0_s;
  (* async_reg = "true" *) wire sync_stage1_s;
  (* async_reg = "true" *) wire sync_stage2_s;
  wire sync_stage3_s_reg_0;

  LUT4 #(
    .INIT(16'h1110)) 
    start_acq2_s_i_1
       (.I0(s00_axi_reset),
        .I1(busy_s_2),
        .I2(start_acq2_s),
        .I3(start_o),
        .O(s00_axi_reset_0));
  LUT5 #(
    .INIT(32'h00000054)) 
    start_s_i_1
       (.I0(busy_s_2),
        .I1(start_o),
        .I2(start_s),
        .I3(s00_axi_reset),
        .I4(start_s_reg),
        .O(sync_stage3_s_reg_0));
  FDRE sync_stage0_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(busy_s_0),
        .Q(sync_stage0_s),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE sync_stage1_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sync_stage0_s),
        .Q(sync_stage1_s),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE sync_stage2_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sync_stage1_s),
        .Q(sync_stage2_s),
        .R(1'b0));
  FDRE sync_stage3_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sync_stage2_s),
        .Q(busy_s_2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dataReal_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__2
   (data1_rst_i_0,
    data1_clk_i,
    start_acq2_s,
    s00_axi_aclk,
    data1_rst_i,
    busy_s_reg,
    busy_s_0,
    data1_en_i,
    Q);
  output data1_rst_i_0;
  input data1_clk_i;
  input start_acq2_s;
  input s00_axi_aclk;
  input data1_rst_i;
  input busy_s_reg;
  input busy_s_0;
  input data1_en_i;
  input [0:0]Q;

  wire [0:0]Q;
  wire busy_s_0;
  wire busy_s_reg;
  wire data1_clk_i;
  wire data1_en_i;
  wire data1_rst_i;
  wire data1_rst_i_0;
  wire s00_axi_aclk;
  wire start_acq2_s;
  wire sync_stage0_s;
  (* async_reg = "true" *) wire sync_stage1_s;
  (* async_reg = "true" *) wire sync_stage2_s;
  wire sync_stage3_s;

  LUT6 #(
    .INIT(64'h5044554455445544)) 
    busy_s_i_1
       (.I0(data1_rst_i),
        .I1(sync_stage3_s),
        .I2(busy_s_reg),
        .I3(busy_s_0),
        .I4(data1_en_i),
        .I5(Q),
        .O(data1_rst_i_0));
  FDRE sync_stage0_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(start_acq2_s),
        .Q(sync_stage0_s),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE sync_stage1_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(sync_stage0_s),
        .Q(sync_stage1_s),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE sync_stage2_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(sync_stage1_s),
        .Q(sync_stage2_s),
        .R(1'b0));
  FDRE sync_stage3_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(sync_stage2_s),
        .Q(sync_stage3_s),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dataReal_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__3
   (sync_stage3_s_reg_0,
    s00_axi_reset_0,
    busy_s,
    s00_axi_aclk,
    busy_s_0,
    data2_clk_i,
    s00_axi_reset,
    start_acq2_s_reg,
    start_o,
    busy_s_2,
    start_s);
  output [0:0]sync_stage3_s_reg_0;
  output s00_axi_reset_0;
  output busy_s;
  input s00_axi_aclk;
  input busy_s_0;
  input data2_clk_i;
  input s00_axi_reset;
  input start_acq2_s_reg;
  input start_o;
  input [0:0]busy_s_2;
  input start_s;

  wire busy_s;
  wire busy_s_0;
  wire [0:0]busy_s_2;
  wire data2_clk_i;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire s00_axi_reset_0;
  wire start_acq2_s_reg;
  wire start_o;
  wire start_s;
  wire sync_stage0_s;
  (* async_reg = "true" *) wire sync_stage1_s;
  (* async_reg = "true" *) wire sync_stage2_s;
  wire [0:0]sync_stage3_s_reg_0;

  LUT3 #(
    .INIT(8'hFE)) 
    \readdata_s[0]_i_2 
       (.I0(sync_stage3_s_reg_0),
        .I1(busy_s_2),
        .I2(start_s),
        .O(busy_s));
  LUT4 #(
    .INIT(16'h1110)) 
    start_acq2_s_i_1__0
       (.I0(s00_axi_reset),
        .I1(sync_stage3_s_reg_0),
        .I2(start_acq2_s_reg),
        .I3(start_o),
        .O(s00_axi_reset_0));
  FDRE sync_stage0_s_reg
       (.C(data2_clk_i),
        .CE(1'b1),
        .D(busy_s_0),
        .Q(sync_stage0_s),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE sync_stage1_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sync_stage0_s),
        .Q(sync_stage1_s),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE sync_stage2_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sync_stage1_s),
        .Q(sync_stage2_s),
        .R(1'b0));
  FDRE sync_stage3_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sync_stage2_s),
        .Q(sync_stage3_s_reg_0),
        .R(1'b0));
endmodule

(* C_S00_AXI_ADDR_WIDTH = "4" *) (* C_S00_AXI_DATA_WIDTH = "32" *) (* DATA_FORMAT = "signed" *) 
(* DATA_SIZE = "16" *) (* NB_INPUT = "2" *) (* NB_SAMPLE = "1024" *) 
(* USE_EOF = "FALSE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram
   (data1_i,
    data1_en_i,
    data1_clk_i,
    data1_rst_i,
    data1_eof_i,
    data2_i,
    data2_en_i,
    data2_clk_i,
    data2_rst_i,
    data2_eof_i,
    data3_i,
    data3_en_i,
    data3_clk_i,
    data3_rst_i,
    data3_eof_i,
    data4_i,
    data4_en_i,
    data4_clk_i,
    data4_rst_i,
    data4_eof_i,
    data5_i,
    data5_en_i,
    data5_clk_i,
    data5_rst_i,
    data5_eof_i,
    data6_i,
    data6_en_i,
    data6_clk_i,
    data6_rst_i,
    data6_eof_i,
    data7_i,
    data7_en_i,
    data7_clk_i,
    data7_rst_i,
    data7_eof_i,
    data8_i,
    data8_en_i,
    data8_clk_i,
    data8_rst_i,
    data8_eof_i,
    data9_i,
    data9_en_i,
    data9_clk_i,
    data9_rst_i,
    data9_eof_i,
    data10_i,
    data10_en_i,
    data10_clk_i,
    data10_rst_i,
    data10_eof_i,
    data11_i,
    data11_en_i,
    data11_clk_i,
    data11_rst_i,
    data11_eof_i,
    data12_i,
    data12_en_i,
    data12_clk_i,
    data12_rst_i,
    data12_eof_i,
    s00_axi_aclk,
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
    s00_axi_rready);
  input [15:0]data1_i;
  input data1_en_i;
  input data1_clk_i;
  input data1_rst_i;
  input data1_eof_i;
  input [15:0]data2_i;
  input data2_en_i;
  input data2_clk_i;
  input data2_rst_i;
  input data2_eof_i;
  input [15:0]data3_i;
  input data3_en_i;
  input data3_clk_i;
  input data3_rst_i;
  input data3_eof_i;
  input [15:0]data4_i;
  input data4_en_i;
  input data4_clk_i;
  input data4_rst_i;
  input data4_eof_i;
  input [15:0]data5_i;
  input data5_en_i;
  input data5_clk_i;
  input data5_rst_i;
  input data5_eof_i;
  input [15:0]data6_i;
  input data6_en_i;
  input data6_clk_i;
  input data6_rst_i;
  input data6_eof_i;
  input [15:0]data7_i;
  input data7_en_i;
  input data7_clk_i;
  input data7_rst_i;
  input data7_eof_i;
  input [15:0]data8_i;
  input data8_en_i;
  input data8_clk_i;
  input data8_rst_i;
  input data8_eof_i;
  input [15:0]data9_i;
  input data9_en_i;
  input data9_clk_i;
  input data9_rst_i;
  input data9_eof_i;
  input [15:0]data10_i;
  input data10_en_i;
  input data10_clk_i;
  input data10_rst_i;
  input data10_eof_i;
  input [15:0]data11_i;
  input data11_en_i;
  input data11_clk_i;
  input data11_rst_i;
  input data11_eof_i;
  input [15:0]data12_i;
  input data12_en_i;
  input data12_clk_i;
  input data12_rst_i;
  input data12_eof_i;
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

  wire \<const0> ;
  wire [1:0]addr_s;
  wire data1_clk_i;
  wire data1_en_i;
  wire [15:0]data1_i;
  wire data1_rst_i;
  wire data2_clk_i;
  wire data2_en_i;
  wire [15:0]data2_i;
  wire data2_rst_i;
  wire handle_comm_n_10;
  wire handle_comm_n_4;
  wire handle_comm_n_8;
  wire incr_addr_s;
  wire [31:0]p_0_in;
  wire ram_reinit_s;
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
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire start_o;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_top data32_top_inst
       (.D(p_0_in),
        .E(handle_comm_n_10),
        .SR(handle_comm_n_8),
        .addr_s(addr_s),
        .data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_i(data1_i),
        .data1_rst_i(data1_rst_i),
        .data2_clk_i(data2_clk_i),
        .data2_en_i(data2_en_i),
        .data2_i(data2_i),
        .data2_rst_i(data2_rst_i),
        .incr_addr_s(incr_addr_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .\select_chan_s_reg[0]_0 (handle_comm_n_4),
        .start_o(start_o));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_handCom handle_comm
       (.E(handle_comm_n_10),
        .SR(handle_comm_n_8),
        .addr_s(addr_s),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_wready_reg_0(s00_axi_wready),
        .incr_addr_s(incr_addr_s),
        .ram_reinit_s(ram_reinit_s),
        .read_en_s(read_en_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\select_chan_s_reg[0] (handle_comm_n_4));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_dataReal_to_ram wb_inst
       (.D(p_0_in),
        .E(read_en_s),
        .ram_reinit_s(ram_reinit_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rvalid(s00_axi_rvalid),
        .start_o(start_o));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_handCom
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    \select_chan_s_reg[0] ,
    addr_s,
    read_en_s,
    SR,
    ram_reinit_s,
    E,
    s00_axi_reset,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    incr_addr_s,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output \select_chan_s_reg[0] ;
  output [1:0]addr_s;
  output read_en_s;
  output [0:0]SR;
  output ram_reinit_s;
  output [0:0]E;
  input s00_axi_reset;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input incr_addr_s;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;

  wire [0:0]E;
  wire [0:0]SR;
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
  wire axi_rvalid_reg_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire incr_addr_s;
  wire ram_reinit_s;
  wire [1:0]read_addr_s;
  wire read_en_s;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_wvalid;
  wire \select_chan_s_reg[0] ;
  wire [1:0]write_addr_s;
  wire write_en_s;

  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \addr_reg[0]_i_1 
       (.I0(read_en_s),
        .I1(addr_reg[0]),
        .I2(read_addr_s[0]),
        .I3(write_en_s),
        .I4(write_addr_s[0]),
        .O(addr_s[0]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \addr_reg[1]_i_1 
       (.I0(read_en_s),
        .I1(addr_reg[1]),
        .I2(read_addr_s[1]),
        .I3(write_en_s),
        .I4(write_addr_s[1]),
        .O(addr_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(write_addr_s[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
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
    .INIT(64'h55555555C0000000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(axi_awready_reg_0),
        .I4(axi_wready_reg_0),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    axi_rvalid_i_1
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_n_0),
        .I2(s00_axi_arvalid),
        .I3(axi_arready_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_n_0),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  LUT4 #(
    .INIT(16'hAABA)) 
    \ram_addr_s[8]_i_1 
       (.I0(s00_axi_reset),
        .I1(addr_s[0]),
        .I2(write_en_s),
        .I3(addr_s[1]),
        .O(SR));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \ram_addr_s[8]_i_2 
       (.I0(addr_s[0]),
        .I1(addr_s[1]),
        .I2(axi_rvalid_reg_n_0),
        .I3(s00_axi_arvalid),
        .I4(axi_arready_reg_0),
        .I5(incr_addr_s),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \readdata_s[31]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(axi_rvalid_reg_n_0),
        .O(read_en_s));
  LUT6 #(
    .INIT(64'h0000AE400000BF40)) 
    \select_chan_s[0]_i_1 
       (.I0(addr_s[0]),
        .I1(addr_s[1]),
        .I2(read_en_s),
        .I3(incr_addr_s),
        .I4(s00_axi_reset),
        .I5(write_en_s),
        .O(\select_chan_s_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    start_o_i_1
       (.I0(addr_s[1]),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(addr_s[0]),
        .O(ram_reinit_s));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage
   (DOBDO,
    D,
    \readdata_s_reg[30] ,
    data2_clk_i,
    s00_axi_aclk,
    s00_axi_reset,
    Q,
    mem_reg_0,
    data2_i,
    addr_s,
    \readdata_s_reg[16] ,
    busy_s_0,
    data2_en_i);
  output [9:0]DOBDO;
  output [5:0]D;
  input [5:0]\readdata_s_reg[30] ;
  input data2_clk_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [9:0]Q;
  input [8:0]mem_reg_0;
  input [15:0]data2_i;
  input [1:0]addr_s;
  input \readdata_s_reg[16] ;
  input busy_s_0;
  input data2_en_i;

  wire [5:0]D;
  wire [9:0]DOBDO;
  wire [9:0]Q;
  wire [1:0]addr_s;
  wire busy_s_0;
  wire data2_clk_i;
  wire data2_en_i;
  wire [15:0]data2_i;
  wire [8:0]mem_reg_0;
  wire \readdata_s_reg[16] ;
  wire [5:0]\readdata_s_reg[30] ;
  wire [14:0]\res_s[1]_1 ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire we_even_s;
  wire [15:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "data32_top_inst/subtop_loop[1].data_subtop_inst/half_axi_bits.ram_even/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "512" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({1'b1,Q[9:1],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,mem_reg_0,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(data2_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI(data2_i),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({DOBDO[9],\res_s[1]_1 [14],DOBDO[8:6],\res_s[1]_1 [10],DOBDO[5:2],\res_s[1]_1 [5:4],DOBDO[1:0],\res_s[1]_1 [1:0]}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(we_even_s),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(s00_axi_reset),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_1__2
       (.I0(busy_s_0),
        .I1(data2_en_i),
        .I2(Q[0]),
        .O(we_even_s));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[16]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[1]_1 [0]),
        .I2(\readdata_s_reg[30] [0]),
        .I3(\readdata_s_reg[16] ),
        .I4(addr_s[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[17]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[1]_1 [1]),
        .I2(\readdata_s_reg[30] [1]),
        .I3(\readdata_s_reg[16] ),
        .I4(addr_s[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[20]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[1]_1 [4]),
        .I2(\readdata_s_reg[30] [2]),
        .I3(\readdata_s_reg[16] ),
        .I4(addr_s[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[21]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[1]_1 [5]),
        .I2(\readdata_s_reg[30] [3]),
        .I3(\readdata_s_reg[16] ),
        .I4(addr_s[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[26]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[1]_1 [10]),
        .I2(\readdata_s_reg[30] [4]),
        .I3(\readdata_s_reg[16] ),
        .I4(addr_s[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[30]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[1]_1 [14]),
        .I2(\readdata_s_reg[30] [5]),
        .I3(\readdata_s_reg[16] ),
        .I4(addr_s[1]),
        .O(D[5]));
endmodule

(* ORIG_REF_NAME = "dataReal_to_ram_storage" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_0
   (mem_reg_0,
    D,
    DOBDO,
    data2_clk_i,
    s00_axi_aclk,
    s00_axi_reset,
    Q,
    mem_reg_1,
    data2_i,
    addr_s,
    \readdata_s_reg[31] ,
    busy_s_0,
    data2_en_i);
  output [5:0]mem_reg_0;
  output [9:0]D;
  input [9:0]DOBDO;
  input data2_clk_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [9:0]Q;
  input [8:0]mem_reg_1;
  input [15:0]data2_i;
  input [1:0]addr_s;
  input \readdata_s_reg[31] ;
  input busy_s_0;
  input data2_en_i;

  wire [9:0]D;
  wire [9:0]DOBDO;
  wire [9:0]Q;
  wire [1:0]addr_s;
  wire busy_s_0;
  wire data2_clk_i;
  wire data2_en_i;
  wire [15:0]data2_i;
  wire [5:0]mem_reg_0;
  wire [8:0]mem_reg_1;
  wire \readdata_s_reg[31] ;
  wire [31:18]\res_s[1]_1 ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire we_odd_s;
  wire [15:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "data32_top_inst/subtop_loop[1].data_subtop_inst/half_axi_bits.ram_odd/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "512" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({1'b1,Q[9:1],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,mem_reg_1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(data2_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI(data2_i),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({\res_s[1]_1 [31],mem_reg_0[5],\res_s[1]_1 [29:27],mem_reg_0[4],\res_s[1]_1 [25:22],mem_reg_0[3:2],\res_s[1]_1 [19:18],mem_reg_0[1:0]}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(we_odd_s),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(s00_axi_reset),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_1__1
       (.I0(Q[0]),
        .I1(busy_s_0),
        .I2(data2_en_i),
        .O(we_odd_s));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[18]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_1 [18]),
        .I3(DOBDO[0]),
        .I4(addr_s[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[19]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_1 [19]),
        .I3(DOBDO[1]),
        .I4(addr_s[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[22]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_1 [22]),
        .I3(DOBDO[2]),
        .I4(addr_s[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[23]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_1 [23]),
        .I3(DOBDO[3]),
        .I4(addr_s[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[24]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_1 [24]),
        .I3(DOBDO[4]),
        .I4(addr_s[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[25]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_1 [25]),
        .I3(DOBDO[5]),
        .I4(addr_s[1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[27]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_1 [27]),
        .I3(DOBDO[6]),
        .I4(addr_s[1]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[28]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_1 [28]),
        .I3(DOBDO[7]),
        .I4(addr_s[1]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[29]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_1 [29]),
        .I3(DOBDO[8]),
        .I4(addr_s[1]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[31]_i_2 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_1 [31]),
        .I3(DOBDO[9]),
        .I4(addr_s[1]),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "dataReal_to_ram_storage" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_1
   (mem_reg_0,
    D,
    DOBDO,
    data1_clk_i,
    s00_axi_aclk,
    s00_axi_reset,
    Q,
    mem_reg_1,
    data1_i,
    addr_s,
    \readdata_s_reg[2] ,
    busy_s_0,
    data1_en_i);
  output [8:0]mem_reg_0;
  output [6:0]D;
  input [6:0]DOBDO;
  input data1_clk_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [9:0]Q;
  input [8:0]mem_reg_1;
  input [15:0]data1_i;
  input [1:0]addr_s;
  input \readdata_s_reg[2] ;
  input busy_s_0;
  input data1_en_i;

  wire [6:0]D;
  wire [6:0]DOBDO;
  wire [9:0]Q;
  wire [1:0]addr_s;
  wire busy_s_0;
  wire data1_clk_i;
  wire data1_en_i;
  wire [15:0]data1_i;
  wire [8:0]mem_reg_0;
  wire [8:0]mem_reg_1;
  wire \readdata_s_reg[2] ;
  wire [15:2]\res_s[0]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire we_even_s;
  wire [15:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "data32_top_inst/subtop_loop[0].data_subtop_inst/half_axi_bits.ram_even/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "512" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({1'b1,Q[9:1],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,mem_reg_1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(data1_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI(data1_i),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({\res_s[0]_0 [15],mem_reg_0[8],\res_s[0]_0 [13],mem_reg_0[7],\res_s[0]_0 [11],mem_reg_0[6],\res_s[0]_0 [9],mem_reg_0[5:4],\res_s[0]_0 [6],mem_reg_0[3],\res_s[0]_0 [4],mem_reg_0[2],\res_s[0]_0 [2],mem_reg_0[1:0]}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(we_even_s),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(s00_axi_reset),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_1__0
       (.I0(busy_s_0),
        .I1(data1_en_i),
        .I2(Q[0]),
        .O(we_even_s));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[11]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[0]_0 [11]),
        .I2(DOBDO[4]),
        .I3(\readdata_s_reg[2] ),
        .I4(addr_s[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[13]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[0]_0 [13]),
        .I2(DOBDO[5]),
        .I3(\readdata_s_reg[2] ),
        .I4(addr_s[1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[15]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[0]_0 [15]),
        .I2(DOBDO[6]),
        .I3(\readdata_s_reg[2] ),
        .I4(addr_s[1]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[2]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[0]_0 [2]),
        .I2(DOBDO[0]),
        .I3(\readdata_s_reg[2] ),
        .I4(addr_s[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[4]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[0]_0 [4]),
        .I2(DOBDO[1]),
        .I3(\readdata_s_reg[2] ),
        .I4(addr_s[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[6]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[0]_0 [6]),
        .I2(DOBDO[2]),
        .I3(\readdata_s_reg[2] ),
        .I4(addr_s[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[9]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[0]_0 [9]),
        .I2(DOBDO[3]),
        .I3(\readdata_s_reg[2] ),
        .I4(addr_s[1]),
        .O(D[3]));
endmodule

(* ORIG_REF_NAME = "dataReal_to_ram_storage" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_2
   (DOBDO,
    D,
    \readdata_s_reg[14] ,
    data1_clk_i,
    s00_axi_aclk,
    s00_axi_reset,
    Q,
    mem_reg_0,
    data1_i,
    busy_s,
    addr_s,
    \readdata_s_reg[0] ,
    busy_s_0,
    data1_en_i);
  output [6:0]DOBDO;
  output [8:0]D;
  input [8:0]\readdata_s_reg[14] ;
  input data1_clk_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [9:0]Q;
  input [8:0]mem_reg_0;
  input [15:0]data1_i;
  input busy_s;
  input [1:0]addr_s;
  input \readdata_s_reg[0] ;
  input busy_s_0;
  input data1_en_i;

  wire [8:0]D;
  wire [6:0]DOBDO;
  wire [9:0]Q;
  wire [1:0]addr_s;
  wire busy_s;
  wire busy_s_0;
  wire data1_clk_i;
  wire data1_en_i;
  wire [15:0]data1_i;
  wire [8:0]mem_reg_0;
  wire \readdata_s_reg[0] ;
  wire [8:0]\readdata_s_reg[14] ;
  wire [30:16]\res_s[0]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire we_odd_s;
  wire [15:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "data32_top_inst/subtop_loop[0].data_subtop_inst/half_axi_bits.ram_odd/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "512" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({1'b1,Q[9:1],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,mem_reg_0,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(data1_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI(data1_i),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({DOBDO[6],\res_s[0]_0 [30],DOBDO[5],\res_s[0]_0 [28],DOBDO[4],\res_s[0]_0 [26],DOBDO[3],\res_s[0]_0 [24:23],DOBDO[2],\res_s[0]_0 [21],DOBDO[1],\res_s[0]_0 [19],DOBDO[0],\res_s[0]_0 [17:16]}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(we_odd_s),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(s00_axi_reset),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_1
       (.I0(Q[0]),
        .I1(busy_s_0),
        .I2(data1_en_i),
        .O(we_odd_s));
  LUT6 #(
    .INIT(64'hFCAFFFAFFCAFF0AF)) 
    \readdata_s[0]_i_1 
       (.I0(busy_s),
        .I1(\res_s[0]_0 [16]),
        .I2(addr_s[0]),
        .I3(addr_s[1]),
        .I4(\readdata_s_reg[0] ),
        .I5(\readdata_s_reg[14] [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[10]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_0 [26]),
        .I3(\readdata_s_reg[14] [6]),
        .I4(addr_s[1]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[12]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_0 [28]),
        .I3(\readdata_s_reg[14] [7]),
        .I4(addr_s[1]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[14]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_0 [30]),
        .I3(\readdata_s_reg[14] [8]),
        .I4(addr_s[1]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[1]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_0 [17]),
        .I3(\readdata_s_reg[14] [1]),
        .I4(addr_s[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[3]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_0 [19]),
        .I3(\readdata_s_reg[14] [2]),
        .I4(addr_s[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[5]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_0 [21]),
        .I3(\readdata_s_reg[14] [3]),
        .I4(addr_s[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[7]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_0 [23]),
        .I3(\readdata_s_reg[14] [4]),
        .I4(addr_s[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[8]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_0 [24]),
        .I3(\readdata_s_reg[14] [5]),
        .I4(addr_s[1]),
        .O(D[5]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop
   (sync_stage3_s_reg,
    D,
    busy_s,
    data2_clk_i,
    s00_axi_aclk,
    s00_axi_reset,
    Q,
    data2_i,
    addr_s,
    \readdata_s_reg[31] ,
    start_o,
    busy_s_2,
    start_s,
    data2_en_i,
    data2_rst_i);
  output [0:0]sync_stage3_s_reg;
  output [15:0]D;
  output busy_s;
  input data2_clk_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [8:0]Q;
  input [15:0]data2_i;
  input [1:0]addr_s;
  input \readdata_s_reg[31] ;
  input start_o;
  input [0:0]busy_s_2;
  input start_s;
  input data2_en_i;
  input data2_rst_i;

  wire [15:0]D;
  wire [8:0]Q;
  wire [1:0]addr_s;
  wire busy_s;
  wire busy_s_0;
  wire [0:0]busy_s_2;
  wire busy_s_i_2__0_n_0;
  wire busy_sync_n_1;
  wire data2_clk_i;
  wire data2_en_i;
  wire [15:0]data2_i;
  wire data2_rst_i;
  wire [9:0]plusOp__1;
  wire \readdata_s_reg[31] ;
  wire [30:2]\res_s[1]_1 ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire sample_cpt_s0;
  wire \sample_cpt_s[9]_i_3__0_n_0 ;
  wire [9:1]sample_cpt_s_reg;
  wire [0:0]sample_cpt_s_reg__0;
  wire start_acq2_s_reg_n_0;
  wire start_o;
  wire start_s;
  wire [0:0]sync_stage3_s_reg;
  wire sync_start_n_0;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    busy_s_i_2__0
       (.I0(sample_cpt_s_reg[7]),
        .I1(\sample_cpt_s[9]_i_3__0_n_0 ),
        .I2(sample_cpt_s_reg[6]),
        .I3(sample_cpt_s_reg[8]),
        .O(busy_s_i_2__0_n_0));
  FDRE busy_s_reg
       (.C(data2_clk_i),
        .CE(1'b1),
        .D(sync_start_n_0),
        .Q(busy_s_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__3 busy_sync
       (.busy_s(busy_s),
        .busy_s_0(busy_s_0),
        .busy_s_2(busy_s_2),
        .data2_clk_i(data2_clk_i),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_reset_0(busy_sync_n_1),
        .start_acq2_s_reg(start_acq2_s_reg_n_0),
        .start_o(start_o),
        .start_s(start_s),
        .sync_stage3_s_reg_0(sync_stage3_s_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage \half_axi_bits.ram_even 
       (.D({D[14],D[10],D[5:4],D[1:0]}),
        .DOBDO({\res_s[1]_1 [15],\res_s[1]_1 [13:11],\res_s[1]_1 [9:6],\res_s[1]_1 [3:2]}),
        .Q({sample_cpt_s_reg,sample_cpt_s_reg__0}),
        .addr_s(addr_s),
        .busy_s_0(busy_s_0),
        .data2_clk_i(data2_clk_i),
        .data2_en_i(data2_en_i),
        .data2_i(data2_i),
        .mem_reg_0(Q),
        .\readdata_s_reg[16] (\readdata_s_reg[31] ),
        .\readdata_s_reg[30] ({\res_s[1]_1 [30],\res_s[1]_1 [26],\res_s[1]_1 [21:20],\res_s[1]_1 [17:16]}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_0 \half_axi_bits.ram_odd 
       (.D({D[15],D[13:11],D[9:6],D[3:2]}),
        .DOBDO({\res_s[1]_1 [15],\res_s[1]_1 [13:11],\res_s[1]_1 [9:6],\res_s[1]_1 [3:2]}),
        .Q({sample_cpt_s_reg,sample_cpt_s_reg__0}),
        .addr_s(addr_s),
        .busy_s_0(busy_s_0),
        .data2_clk_i(data2_clk_i),
        .data2_en_i(data2_en_i),
        .data2_i(data2_i),
        .mem_reg_0({\res_s[1]_1 [30],\res_s[1]_1 [26],\res_s[1]_1 [21:20],\res_s[1]_1 [17:16]}),
        .mem_reg_1(Q),
        .\readdata_s_reg[31] (\readdata_s_reg[31] ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_cpt_s[0]_i_1__0 
       (.I0(sample_cpt_s_reg__0),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_cpt_s[1]_i_1__0 
       (.I0(sample_cpt_s_reg__0),
        .I1(sample_cpt_s_reg[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sample_cpt_s[2]_i_1__0 
       (.I0(sample_cpt_s_reg[1]),
        .I1(sample_cpt_s_reg__0),
        .I2(sample_cpt_s_reg[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sample_cpt_s[3]_i_1__0 
       (.I0(sample_cpt_s_reg[2]),
        .I1(sample_cpt_s_reg__0),
        .I2(sample_cpt_s_reg[1]),
        .I3(sample_cpt_s_reg[3]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sample_cpt_s[4]_i_1__0 
       (.I0(sample_cpt_s_reg[3]),
        .I1(sample_cpt_s_reg[1]),
        .I2(sample_cpt_s_reg__0),
        .I3(sample_cpt_s_reg[2]),
        .I4(sample_cpt_s_reg[4]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sample_cpt_s[5]_i_1__0 
       (.I0(sample_cpt_s_reg[4]),
        .I1(sample_cpt_s_reg[2]),
        .I2(sample_cpt_s_reg__0),
        .I3(sample_cpt_s_reg[1]),
        .I4(sample_cpt_s_reg[3]),
        .I5(sample_cpt_s_reg[5]),
        .O(plusOp__1[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \sample_cpt_s[6]_i_1__0 
       (.I0(\sample_cpt_s[9]_i_3__0_n_0 ),
        .I1(sample_cpt_s_reg[6]),
        .O(plusOp__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \sample_cpt_s[7]_i_1__0 
       (.I0(sample_cpt_s_reg[6]),
        .I1(\sample_cpt_s[9]_i_3__0_n_0 ),
        .I2(sample_cpt_s_reg[7]),
        .O(plusOp__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \sample_cpt_s[8]_i_1__0 
       (.I0(sample_cpt_s_reg[7]),
        .I1(\sample_cpt_s[9]_i_3__0_n_0 ),
        .I2(sample_cpt_s_reg[6]),
        .I3(sample_cpt_s_reg[8]),
        .O(plusOp__1[8]));
  LUT2 #(
    .INIT(4'hB)) 
    \sample_cpt_s[9]_i_1__0 
       (.I0(data2_rst_i),
        .I1(busy_s_0),
        .O(sample_cpt_s0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \sample_cpt_s[9]_i_2__0 
       (.I0(sample_cpt_s_reg[8]),
        .I1(sample_cpt_s_reg[6]),
        .I2(\sample_cpt_s[9]_i_3__0_n_0 ),
        .I3(sample_cpt_s_reg[7]),
        .I4(sample_cpt_s_reg[9]),
        .O(plusOp__1[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sample_cpt_s[9]_i_3__0 
       (.I0(sample_cpt_s_reg[4]),
        .I1(sample_cpt_s_reg[2]),
        .I2(sample_cpt_s_reg__0),
        .I3(sample_cpt_s_reg[1]),
        .I4(sample_cpt_s_reg[3]),
        .I5(sample_cpt_s_reg[5]),
        .O(\sample_cpt_s[9]_i_3__0_n_0 ));
  FDRE \sample_cpt_s_reg[0] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(plusOp__1[0]),
        .Q(sample_cpt_s_reg__0),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[1] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(plusOp__1[1]),
        .Q(sample_cpt_s_reg[1]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[2] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(plusOp__1[2]),
        .Q(sample_cpt_s_reg[2]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[3] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(plusOp__1[3]),
        .Q(sample_cpt_s_reg[3]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[4] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(plusOp__1[4]),
        .Q(sample_cpt_s_reg[4]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[5] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(plusOp__1[5]),
        .Q(sample_cpt_s_reg[5]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[6] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(plusOp__1[6]),
        .Q(sample_cpt_s_reg[6]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[7] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(plusOp__1[7]),
        .Q(sample_cpt_s_reg[7]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[8] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(plusOp__1[8]),
        .Q(sample_cpt_s_reg[8]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[9] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(plusOp__1[9]),
        .Q(sample_cpt_s_reg[9]),
        .R(sample_cpt_s0));
  FDRE start_acq2_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(busy_sync_n_1),
        .Q(start_acq2_s_reg_n_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync sync_start
       (.Q(sample_cpt_s_reg[9]),
        .busy_s_0(busy_s_0),
        .busy_s_reg(busy_s_i_2__0_n_0),
        .data2_clk_i(data2_clk_i),
        .data2_en_i(data2_en_i),
        .data2_rst_i(data2_rst_i),
        .data2_rst_i_0(sync_start_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .sync_stage0_s_reg_0(start_acq2_s_reg_n_0));
endmodule

(* ORIG_REF_NAME = "dataReal_to_ram_subtop" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop__xdcDup__1
   (busy_s_2,
    D,
    sync_stage3_s_reg,
    data1_clk_i,
    s00_axi_aclk,
    s00_axi_reset,
    Q,
    data1_i,
    busy_s,
    addr_s,
    \readdata_s_reg[0] ,
    start_o,
    start_s,
    start_s_reg,
    data1_en_i,
    data1_rst_i);
  output [0:0]busy_s_2;
  output [15:0]D;
  output sync_stage3_s_reg;
  input data1_clk_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [8:0]Q;
  input [15:0]data1_i;
  input busy_s;
  input [1:0]addr_s;
  input \readdata_s_reg[0] ;
  input start_o;
  input start_s;
  input [0:0]start_s_reg;
  input data1_en_i;
  input data1_rst_i;

  wire [15:0]D;
  wire [8:0]Q;
  wire [1:0]addr_s;
  wire busy_s;
  wire busy_s_0;
  wire [0:0]busy_s_2;
  wire busy_s_i_2_n_0;
  wire busy_sync_n_1;
  wire data1_clk_i;
  wire data1_en_i;
  wire [15:0]data1_i;
  wire data1_rst_i;
  wire [9:0]plusOp__0;
  wire \readdata_s_reg[0] ;
  wire [31:0]\res_s[0]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire sample_cpt_s0;
  wire \sample_cpt_s[9]_i_3_n_0 ;
  wire [9:1]sample_cpt_s_reg;
  wire [0:0]sample_cpt_s_reg__0;
  wire start_acq2_s;
  wire start_o;
  wire start_s;
  wire [0:0]start_s_reg;
  wire sync_stage3_s_reg;
  wire sync_start_n_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    busy_s_i_2
       (.I0(sample_cpt_s_reg[7]),
        .I1(\sample_cpt_s[9]_i_3_n_0 ),
        .I2(sample_cpt_s_reg[6]),
        .I3(sample_cpt_s_reg[8]),
        .O(busy_s_i_2_n_0));
  FDRE busy_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(sync_start_n_0),
        .Q(busy_s_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__1 busy_sync
       (.busy_s_0(busy_s_0),
        .busy_s_2(busy_s_2),
        .data1_clk_i(data1_clk_i),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_reset_0(busy_sync_n_1),
        .start_acq2_s(start_acq2_s),
        .start_o(start_o),
        .start_s(start_s),
        .start_s_reg(start_s_reg),
        .sync_stage3_s_reg_0(sync_stage3_s_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_1 \half_axi_bits.ram_even 
       (.D({D[15],D[13],D[11],D[9],D[6],D[4],D[2]}),
        .DOBDO({\res_s[0]_0 [31],\res_s[0]_0 [29],\res_s[0]_0 [27],\res_s[0]_0 [25],\res_s[0]_0 [22],\res_s[0]_0 [20],\res_s[0]_0 [18]}),
        .Q({sample_cpt_s_reg,sample_cpt_s_reg__0}),
        .addr_s(addr_s),
        .busy_s_0(busy_s_0),
        .data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_i(data1_i),
        .mem_reg_0({\res_s[0]_0 [14],\res_s[0]_0 [12],\res_s[0]_0 [10],\res_s[0]_0 [8:7],\res_s[0]_0 [5],\res_s[0]_0 [3],\res_s[0]_0 [1:0]}),
        .mem_reg_1(Q),
        .\readdata_s_reg[2] (\readdata_s_reg[0] ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_2 \half_axi_bits.ram_odd 
       (.D({D[14],D[12],D[10],D[8:7],D[5],D[3],D[1:0]}),
        .DOBDO({\res_s[0]_0 [31],\res_s[0]_0 [29],\res_s[0]_0 [27],\res_s[0]_0 [25],\res_s[0]_0 [22],\res_s[0]_0 [20],\res_s[0]_0 [18]}),
        .Q({sample_cpt_s_reg,sample_cpt_s_reg__0}),
        .addr_s(addr_s),
        .busy_s(busy_s),
        .busy_s_0(busy_s_0),
        .data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_i(data1_i),
        .mem_reg_0(Q),
        .\readdata_s_reg[0] (\readdata_s_reg[0] ),
        .\readdata_s_reg[14] ({\res_s[0]_0 [14],\res_s[0]_0 [12],\res_s[0]_0 [10],\res_s[0]_0 [8:7],\res_s[0]_0 [5],\res_s[0]_0 [3],\res_s[0]_0 [1:0]}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_cpt_s[0]_i_1 
       (.I0(sample_cpt_s_reg__0),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_cpt_s[1]_i_1 
       (.I0(sample_cpt_s_reg__0),
        .I1(sample_cpt_s_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sample_cpt_s[2]_i_1 
       (.I0(sample_cpt_s_reg[1]),
        .I1(sample_cpt_s_reg__0),
        .I2(sample_cpt_s_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sample_cpt_s[3]_i_1 
       (.I0(sample_cpt_s_reg[2]),
        .I1(sample_cpt_s_reg__0),
        .I2(sample_cpt_s_reg[1]),
        .I3(sample_cpt_s_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sample_cpt_s[4]_i_1 
       (.I0(sample_cpt_s_reg[3]),
        .I1(sample_cpt_s_reg[1]),
        .I2(sample_cpt_s_reg__0),
        .I3(sample_cpt_s_reg[2]),
        .I4(sample_cpt_s_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sample_cpt_s[5]_i_1 
       (.I0(sample_cpt_s_reg[4]),
        .I1(sample_cpt_s_reg[2]),
        .I2(sample_cpt_s_reg__0),
        .I3(sample_cpt_s_reg[1]),
        .I4(sample_cpt_s_reg[3]),
        .I5(sample_cpt_s_reg[5]),
        .O(plusOp__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \sample_cpt_s[6]_i_1 
       (.I0(\sample_cpt_s[9]_i_3_n_0 ),
        .I1(sample_cpt_s_reg[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \sample_cpt_s[7]_i_1 
       (.I0(sample_cpt_s_reg[6]),
        .I1(\sample_cpt_s[9]_i_3_n_0 ),
        .I2(sample_cpt_s_reg[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \sample_cpt_s[8]_i_1 
       (.I0(sample_cpt_s_reg[7]),
        .I1(\sample_cpt_s[9]_i_3_n_0 ),
        .I2(sample_cpt_s_reg[6]),
        .I3(sample_cpt_s_reg[8]),
        .O(plusOp__0[8]));
  LUT2 #(
    .INIT(4'hB)) 
    \sample_cpt_s[9]_i_1 
       (.I0(data1_rst_i),
        .I1(busy_s_0),
        .O(sample_cpt_s0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \sample_cpt_s[9]_i_2 
       (.I0(sample_cpt_s_reg[8]),
        .I1(sample_cpt_s_reg[6]),
        .I2(\sample_cpt_s[9]_i_3_n_0 ),
        .I3(sample_cpt_s_reg[7]),
        .I4(sample_cpt_s_reg[9]),
        .O(plusOp__0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sample_cpt_s[9]_i_3 
       (.I0(sample_cpt_s_reg[4]),
        .I1(sample_cpt_s_reg[2]),
        .I2(sample_cpt_s_reg__0),
        .I3(sample_cpt_s_reg[1]),
        .I4(sample_cpt_s_reg[3]),
        .I5(sample_cpt_s_reg[5]),
        .O(\sample_cpt_s[9]_i_3_n_0 ));
  FDRE \sample_cpt_s_reg[0] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(plusOp__0[0]),
        .Q(sample_cpt_s_reg__0),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[1] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(plusOp__0[1]),
        .Q(sample_cpt_s_reg[1]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[2] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(plusOp__0[2]),
        .Q(sample_cpt_s_reg[2]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[3] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(plusOp__0[3]),
        .Q(sample_cpt_s_reg[3]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[4] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(plusOp__0[4]),
        .Q(sample_cpt_s_reg[4]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[5] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(plusOp__0[5]),
        .Q(sample_cpt_s_reg[5]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[6] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(plusOp__0[6]),
        .Q(sample_cpt_s_reg[6]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[7] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(plusOp__0[7]),
        .Q(sample_cpt_s_reg[7]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[8] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(plusOp__0[8]),
        .Q(sample_cpt_s_reg[8]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[9] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(plusOp__0[9]),
        .Q(sample_cpt_s_reg[9]),
        .R(sample_cpt_s0));
  FDRE start_acq2_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(busy_sync_n_1),
        .Q(start_acq2_s),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__2 sync_start
       (.Q(sample_cpt_s_reg[9]),
        .busy_s_0(busy_s_0),
        .busy_s_reg(busy_s_i_2_n_0),
        .data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_rst_i(data1_rst_i),
        .data1_rst_i_0(sync_start_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .start_acq2_s(start_acq2_s));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_top
   (incr_addr_s,
    D,
    data1_clk_i,
    s00_axi_aclk,
    s00_axi_reset,
    data1_i,
    data2_clk_i,
    data2_i,
    \select_chan_s_reg[0]_0 ,
    addr_s,
    start_o,
    SR,
    E,
    data1_en_i,
    data1_rst_i,
    data2_en_i,
    data2_rst_i);
  output incr_addr_s;
  output [31:0]D;
  input data1_clk_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [15:0]data1_i;
  input data2_clk_i;
  input [15:0]data2_i;
  input \select_chan_s_reg[0]_0 ;
  input [1:0]addr_s;
  input start_o;
  input [0:0]SR;
  input [0:0]E;
  input data1_en_i;
  input data1_rst_i;
  input data2_en_i;
  input data2_rst_i;

  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]SR;
  wire [1:0]addr_s;
  wire busy_s;
  wire [1:0]busy_s_2;
  wire data1_clk_i;
  wire data1_en_i;
  wire [15:0]data1_i;
  wire data1_rst_i;
  wire data2_clk_i;
  wire data2_en_i;
  wire [15:0]data2_i;
  wire data2_rst_i;
  wire incr_addr_s;
  wire [8:0]plusOp;
  wire \ram_addr_s[8]_i_4_n_0 ;
  wire [8:0]ram_addr_s_reg;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire \select_chan_s_reg[0]_0 ;
  wire start_o;
  wire start_s;
  wire \subtop_loop[0].data_subtop_inst_n_17 ;

  LUT1 #(
    .INIT(2'h1)) 
    \ram_addr_s[0]_i_1 
       (.I0(ram_addr_s_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ram_addr_s[1]_i_1 
       (.I0(ram_addr_s_reg[0]),
        .I1(ram_addr_s_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ram_addr_s[2]_i_1 
       (.I0(ram_addr_s_reg[0]),
        .I1(ram_addr_s_reg[1]),
        .I2(ram_addr_s_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ram_addr_s[3]_i_1 
       (.I0(ram_addr_s_reg[1]),
        .I1(ram_addr_s_reg[0]),
        .I2(ram_addr_s_reg[2]),
        .I3(ram_addr_s_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ram_addr_s[4]_i_1 
       (.I0(ram_addr_s_reg[2]),
        .I1(ram_addr_s_reg[0]),
        .I2(ram_addr_s_reg[1]),
        .I3(ram_addr_s_reg[3]),
        .I4(ram_addr_s_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ram_addr_s[5]_i_1 
       (.I0(ram_addr_s_reg[3]),
        .I1(ram_addr_s_reg[1]),
        .I2(ram_addr_s_reg[0]),
        .I3(ram_addr_s_reg[2]),
        .I4(ram_addr_s_reg[4]),
        .I5(ram_addr_s_reg[5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \ram_addr_s[6]_i_1 
       (.I0(\ram_addr_s[8]_i_4_n_0 ),
        .I1(ram_addr_s_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ram_addr_s[7]_i_1 
       (.I0(\ram_addr_s[8]_i_4_n_0 ),
        .I1(ram_addr_s_reg[6]),
        .I2(ram_addr_s_reg[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ram_addr_s[8]_i_3 
       (.I0(ram_addr_s_reg[6]),
        .I1(\ram_addr_s[8]_i_4_n_0 ),
        .I2(ram_addr_s_reg[7]),
        .I3(ram_addr_s_reg[8]),
        .O(plusOp[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ram_addr_s[8]_i_4 
       (.I0(ram_addr_s_reg[5]),
        .I1(ram_addr_s_reg[3]),
        .I2(ram_addr_s_reg[1]),
        .I3(ram_addr_s_reg[0]),
        .I4(ram_addr_s_reg[2]),
        .I5(ram_addr_s_reg[4]),
        .O(\ram_addr_s[8]_i_4_n_0 ));
  FDRE \ram_addr_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[0]),
        .Q(ram_addr_s_reg[0]),
        .R(SR));
  FDRE \ram_addr_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[1]),
        .Q(ram_addr_s_reg[1]),
        .R(SR));
  FDRE \ram_addr_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[2]),
        .Q(ram_addr_s_reg[2]),
        .R(SR));
  FDRE \ram_addr_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[3]),
        .Q(ram_addr_s_reg[3]),
        .R(SR));
  FDRE \ram_addr_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[4]),
        .Q(ram_addr_s_reg[4]),
        .R(SR));
  FDRE \ram_addr_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[5]),
        .Q(ram_addr_s_reg[5]),
        .R(SR));
  FDRE \ram_addr_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[6]),
        .Q(ram_addr_s_reg[6]),
        .R(SR));
  FDRE \ram_addr_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[7]),
        .Q(ram_addr_s_reg[7]),
        .R(SR));
  FDRE \ram_addr_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[8]),
        .Q(ram_addr_s_reg[8]),
        .R(SR));
  FDRE \select_chan_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\select_chan_s_reg[0]_0 ),
        .Q(incr_addr_s),
        .R(1'b0));
  FDRE start_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\subtop_loop[0].data_subtop_inst_n_17 ),
        .Q(start_s),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop__xdcDup__1 \subtop_loop[0].data_subtop_inst 
       (.D(D[15:0]),
        .Q(ram_addr_s_reg),
        .addr_s(addr_s),
        .busy_s(busy_s),
        .busy_s_2(busy_s_2[0]),
        .data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_i(data1_i),
        .data1_rst_i(data1_rst_i),
        .\readdata_s_reg[0] (incr_addr_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .start_o(start_o),
        .start_s(start_s),
        .start_s_reg(busy_s_2[1]),
        .sync_stage3_s_reg(\subtop_loop[0].data_subtop_inst_n_17 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop \subtop_loop[1].data_subtop_inst 
       (.D(D[31:16]),
        .Q(ram_addr_s_reg),
        .addr_s(addr_s),
        .busy_s(busy_s),
        .busy_s_2(busy_s_2[0]),
        .data2_clk_i(data2_clk_i),
        .data2_en_i(data2_en_i),
        .data2_i(data2_i),
        .data2_rst_i(data2_rst_i),
        .\readdata_s_reg[31] (incr_addr_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .start_o(start_o),
        .start_s(start_s),
        .sync_stage3_s_reg(busy_s_2[1]));
endmodule

(* CHECK_LICENSE_TYPE = "double_iq_pid_vco_dataReal_to_ram_fast_0,dataReal_to_ram,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "dataReal_to_ram,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (data1_i,
    data1_en_i,
    data1_clk_i,
    data1_rst_i,
    data1_eof_i,
    data2_i,
    data2_en_i,
    data2_clk_i,
    data2_rst_i,
    data2_eof_i,
    s00_axi_aclk,
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
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data1_in DATA" *) input [15:0]data1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data1_in DATA_EN" *) input data1_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data1_in DATA_CLK" *) input data1_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data1_in DATA_RST" *) input data1_rst_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data1_in DATA_EOF" *) input data1_eof_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data2_in DATA" *) input [15:0]data2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data2_in DATA_EN" *) input data2_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data2_in DATA_CLK" *) input data2_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data2_in DATA_RST" *) input data2_rst_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data2_in DATA_EOF" *) input data2_eof_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_signal_clock, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_signal_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_signal_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input s00_axi_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire data1_clk_i;
  wire data1_en_i;
  wire data1_eof_i;
  wire [15:0]data1_i;
  wire data1_rst_i;
  wire data2_clk_i;
  wire data2_en_i;
  wire data2_eof_i;
  wire [15:0]data2_i;
  wire data2_rst_i;
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
  (* DATA_FORMAT = "signed" *) 
  (* DATA_SIZE = "16" *) 
  (* NB_INPUT = "2" *) 
  (* NB_SAMPLE = "1024" *) 
  (* USE_EOF = "FALSE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram inst
       (.data10_clk_i(1'b0),
        .data10_en_i(1'b0),
        .data10_eof_i(1'b0),
        .data10_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data10_rst_i(1'b0),
        .data11_clk_i(1'b0),
        .data11_en_i(1'b0),
        .data11_eof_i(1'b0),
        .data11_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data11_rst_i(1'b0),
        .data12_clk_i(1'b0),
        .data12_en_i(1'b0),
        .data12_eof_i(1'b0),
        .data12_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data12_rst_i(1'b0),
        .data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_eof_i(data1_eof_i),
        .data1_i(data1_i),
        .data1_rst_i(data1_rst_i),
        .data2_clk_i(data2_clk_i),
        .data2_en_i(data2_en_i),
        .data2_eof_i(data2_eof_i),
        .data2_i(data2_i),
        .data2_rst_i(data2_rst_i),
        .data3_clk_i(1'b0),
        .data3_en_i(1'b0),
        .data3_eof_i(1'b0),
        .data3_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data3_rst_i(1'b0),
        .data4_clk_i(1'b0),
        .data4_en_i(1'b0),
        .data4_eof_i(1'b0),
        .data4_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data4_rst_i(1'b0),
        .data5_clk_i(1'b0),
        .data5_en_i(1'b0),
        .data5_eof_i(1'b0),
        .data5_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data5_rst_i(1'b0),
        .data6_clk_i(1'b0),
        .data6_en_i(1'b0),
        .data6_eof_i(1'b0),
        .data6_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data6_rst_i(1'b0),
        .data7_clk_i(1'b0),
        .data7_en_i(1'b0),
        .data7_eof_i(1'b0),
        .data7_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data7_rst_i(1'b0),
        .data8_clk_i(1'b0),
        .data8_en_i(1'b0),
        .data8_eof_i(1'b0),
        .data8_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data8_rst_i(1'b0),
        .data9_clk_i(1'b0),
        .data9_en_i(1'b0),
        .data9_eof_i(1'b0),
        .data9_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data9_rst_i(1'b0),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_dataReal_to_ram
   (start_o,
    s00_axi_rvalid,
    s00_axi_rdata,
    ram_reinit_s,
    s00_axi_aclk,
    s00_axi_reset,
    E,
    D);
  output start_o;
  output s00_axi_rvalid;
  output [31:0]s00_axi_rdata;
  input ram_reinit_s;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [0:0]E;
  input [31:0]D;

  wire [31:0]D;
  wire [0:0]E;
  wire ram_reinit_s;
  wire s00_axi_aclk;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire s00_axi_rvalid;
  wire start_o;

  FDRE \readdata_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(s00_axi_rdata[0]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[10]),
        .Q(s00_axi_rdata[10]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[11]),
        .Q(s00_axi_rdata[11]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[12]),
        .Q(s00_axi_rdata[12]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[13]),
        .Q(s00_axi_rdata[13]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[14]),
        .Q(s00_axi_rdata[14]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[15]),
        .Q(s00_axi_rdata[15]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[16]),
        .Q(s00_axi_rdata[16]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[17]),
        .Q(s00_axi_rdata[17]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[18]),
        .Q(s00_axi_rdata[18]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[19]),
        .Q(s00_axi_rdata[19]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(s00_axi_rdata[1]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[20]),
        .Q(s00_axi_rdata[20]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[21]),
        .Q(s00_axi_rdata[21]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[22]),
        .Q(s00_axi_rdata[22]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[23]),
        .Q(s00_axi_rdata[23]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[24]),
        .Q(s00_axi_rdata[24]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[25]),
        .Q(s00_axi_rdata[25]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[26]),
        .Q(s00_axi_rdata[26]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[27]),
        .Q(s00_axi_rdata[27]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[28]),
        .Q(s00_axi_rdata[28]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[29]),
        .Q(s00_axi_rdata[29]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(s00_axi_rdata[2]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[30]),
        .Q(s00_axi_rdata[30]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[31]),
        .Q(s00_axi_rdata[31]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(s00_axi_rdata[3]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(s00_axi_rdata[4]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[5]),
        .Q(s00_axi_rdata[5]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[6]),
        .Q(s00_axi_rdata[6]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[7]),
        .Q(s00_axi_rdata[7]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[8]),
        .Q(s00_axi_rdata[8]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[9]),
        .Q(s00_axi_rdata[9]),
        .R(s00_axi_reset));
  FDRE start_o_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ram_reinit_s),
        .Q(start_o),
        .R(1'b0));
  FDRE wbs_read_ack_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(E),
        .Q(s00_axi_rvalid),
        .R(s00_axi_reset));
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
