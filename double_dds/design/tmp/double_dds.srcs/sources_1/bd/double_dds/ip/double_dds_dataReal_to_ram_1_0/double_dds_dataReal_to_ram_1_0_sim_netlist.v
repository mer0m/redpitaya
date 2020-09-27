// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun May 31 18:43:57 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/bma/git/fpga_design/redpitaya/double_dds/design/tmp/double_dds.srcs/sources_1/bd/double_dds/ip/double_dds_dataReal_to_ram_1_0/double_dds_dataReal_to_ram_1_0_sim_netlist.v
// Design      : double_dds_dataReal_to_ram_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "double_dds_dataReal_to_ram_1_0,dataReal_to_ram,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "dataReal_to_ram,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module double_dds_dataReal_to_ram_1_0
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data1_in DATA" *) input [13:0]data1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data1_in DATA_EN" *) input data1_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data1_in DATA_CLK" *) input data1_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data1_in DATA_RST" *) input data1_rst_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data1_in DATA_EOF" *) input data1_eof_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data2_in DATA" *) input [13:0]data2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data2_in DATA_EN" *) input data2_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data2_in DATA_CLK" *) input data2_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data2_in DATA_RST" *) input data2_rst_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data2_in DATA_EOF" *) input data2_eof_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_signal_clock, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_dds_ps7_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_dds_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire data1_clk_i;
  wire data1_en_i;
  wire data1_eof_i;
  wire [13:0]data1_i;
  wire data1_rst_i;
  wire data2_clk_i;
  wire data2_en_i;
  wire data2_eof_i;
  wire [13:0]data2_i;
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
  (* DATA_SIZE = "14" *) 
  (* NB_INPUT = "2" *) 
  (* NB_SAMPLE = "8192" *) 
  (* USE_EOF = "FALSE" *) 
  double_dds_dataReal_to_ram_1_0_dataReal_to_ram inst
       (.data10_clk_i(1'b0),
        .data10_en_i(1'b0),
        .data10_eof_i(1'b0),
        .data10_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data10_rst_i(1'b0),
        .data11_clk_i(1'b0),
        .data11_en_i(1'b0),
        .data11_eof_i(1'b0),
        .data11_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data11_rst_i(1'b0),
        .data12_clk_i(1'b0),
        .data12_en_i(1'b0),
        .data12_eof_i(1'b0),
        .data12_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .data3_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data3_rst_i(1'b0),
        .data4_clk_i(1'b0),
        .data4_en_i(1'b0),
        .data4_eof_i(1'b0),
        .data4_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data4_rst_i(1'b0),
        .data5_clk_i(1'b0),
        .data5_en_i(1'b0),
        .data5_eof_i(1'b0),
        .data5_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data5_rst_i(1'b0),
        .data6_clk_i(1'b0),
        .data6_en_i(1'b0),
        .data6_eof_i(1'b0),
        .data6_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data6_rst_i(1'b0),
        .data7_clk_i(1'b0),
        .data7_en_i(1'b0),
        .data7_eof_i(1'b0),
        .data7_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data7_rst_i(1'b0),
        .data8_clk_i(1'b0),
        .data8_en_i(1'b0),
        .data8_eof_i(1'b0),
        .data8_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data8_rst_i(1'b0),
        .data9_clk_i(1'b0),
        .data9_en_i(1'b0),
        .data9_eof_i(1'b0),
        .data9_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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

(* ORIG_REF_NAME = "dataReal_sync" *) 
module double_dds_dataReal_to_ram_1_0_dataReal_sync
   (busy_s_reg,
    data2_clk_i,
    sync_stage0_s_reg_0,
    s00_axi_aclk,
    busy_s_1,
    data2_rst_i,
    busy_s_reg_0,
    busy_s_reg_1,
    busy_s_reg_2);
  output busy_s_reg;
  input data2_clk_i;
  input sync_stage0_s_reg_0;
  input s00_axi_aclk;
  input busy_s_1;
  input data2_rst_i;
  input busy_s_reg_0;
  input busy_s_reg_1;
  input busy_s_reg_2;

  wire busy_s_1;
  wire busy_s_reg;
  wire busy_s_reg_0;
  wire busy_s_reg_1;
  wire busy_s_reg_2;
  wire data2_clk_i;
  wire data2_rst_i;
  wire s00_axi_aclk;
  wire sync_stage0_s;
  wire sync_stage0_s_reg_0;
  (* async_reg = "true" *) wire sync_stage1_s;
  (* async_reg = "true" *) wire sync_stage2_s;
  wire sync_stage3_s_reg_n_0;

  LUT6 #(
    .INIT(64'h000E0E0E0E0E0E0E)) 
    busy_s_i_1__0
       (.I0(busy_s_1),
        .I1(sync_stage3_s_reg_n_0),
        .I2(data2_rst_i),
        .I3(busy_s_reg_0),
        .I4(busy_s_reg_1),
        .I5(busy_s_reg_2),
        .O(busy_s_reg));
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
module double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__1
   (busy_s_0,
    s00_axi_reset_0,
    sync_stage3_s_reg_0,
    busy_s_1,
    data1_clk_i,
    s00_axi_aclk,
    s00_axi_reset,
    start_acq2_s,
    start_o,
    start_s,
    start_s_reg);
  output [0:0]busy_s_0;
  output s00_axi_reset_0;
  output sync_stage3_s_reg_0;
  input busy_s_1;
  input data1_clk_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input start_acq2_s;
  input start_o;
  input start_s;
  input [0:0]start_s_reg;

  wire [0:0]busy_s_0;
  wire busy_s_1;
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
        .I1(busy_s_0),
        .I2(start_acq2_s),
        .I3(start_o),
        .O(s00_axi_reset_0));
  LUT5 #(
    .INIT(32'h00000054)) 
    start_s_i_1
       (.I0(busy_s_0),
        .I1(start_o),
        .I2(start_s),
        .I3(s00_axi_reset),
        .I4(start_s_reg),
        .O(sync_stage3_s_reg_0));
  FDRE sync_stage0_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(busy_s_1),
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
        .Q(busy_s_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dataReal_sync" *) 
module double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__2
   (busy_s_reg,
    data1_clk_i,
    start_acq2_s,
    s00_axi_aclk,
    busy_s_1,
    data1_rst_i,
    busy_s_reg_0,
    busy_s_reg_1,
    busy_s_reg_2);
  output busy_s_reg;
  input data1_clk_i;
  input start_acq2_s;
  input s00_axi_aclk;
  input busy_s_1;
  input data1_rst_i;
  input busy_s_reg_0;
  input busy_s_reg_1;
  input busy_s_reg_2;

  wire busy_s_1;
  wire busy_s_reg;
  wire busy_s_reg_0;
  wire busy_s_reg_1;
  wire busy_s_reg_2;
  wire data1_clk_i;
  wire data1_rst_i;
  wire s00_axi_aclk;
  wire start_acq2_s;
  wire sync_stage0_s;
  (* async_reg = "true" *) wire sync_stage1_s;
  (* async_reg = "true" *) wire sync_stage2_s;
  wire sync_stage3_s;

  LUT6 #(
    .INIT(64'h000E0E0E0E0E0E0E)) 
    busy_s_i_1
       (.I0(busy_s_1),
        .I1(sync_stage3_s),
        .I2(data1_rst_i),
        .I3(busy_s_reg_0),
        .I4(busy_s_reg_1),
        .I5(busy_s_reg_2),
        .O(busy_s_reg));
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
module double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__3
   (sync_stage3_s_reg_0,
    s00_axi_reset_0,
    busy_s,
    s00_axi_aclk,
    busy_s_1,
    data2_clk_i,
    s00_axi_reset,
    start_acq2_s_reg,
    start_o,
    busy_s_0,
    start_s);
  output [0:0]sync_stage3_s_reg_0;
  output s00_axi_reset_0;
  output busy_s;
  input s00_axi_aclk;
  input busy_s_1;
  input data2_clk_i;
  input s00_axi_reset;
  input start_acq2_s_reg;
  input start_o;
  input [0:0]busy_s_0;
  input start_s;

  wire busy_s;
  wire [0:0]busy_s_0;
  wire busy_s_1;
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
        .I1(busy_s_0),
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
        .D(busy_s_1),
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
(* DATA_SIZE = "14" *) (* NB_INPUT = "2" *) (* NB_SAMPLE = "8192" *) 
(* ORIG_REF_NAME = "dataReal_to_ram" *) (* USE_EOF = "FALSE" *) 
module double_dds_dataReal_to_ram_1_0_dataReal_to_ram
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
  input [13:0]data1_i;
  input data1_en_i;
  input data1_clk_i;
  input data1_rst_i;
  input data1_eof_i;
  input [13:0]data2_i;
  input data2_en_i;
  input data2_clk_i;
  input data2_rst_i;
  input data2_eof_i;
  input [13:0]data3_i;
  input data3_en_i;
  input data3_clk_i;
  input data3_rst_i;
  input data3_eof_i;
  input [13:0]data4_i;
  input data4_en_i;
  input data4_clk_i;
  input data4_rst_i;
  input data4_eof_i;
  input [13:0]data5_i;
  input data5_en_i;
  input data5_clk_i;
  input data5_rst_i;
  input data5_eof_i;
  input [13:0]data6_i;
  input data6_en_i;
  input data6_clk_i;
  input data6_rst_i;
  input data6_eof_i;
  input [13:0]data7_i;
  input data7_en_i;
  input data7_clk_i;
  input data7_rst_i;
  input data7_eof_i;
  input [13:0]data8_i;
  input data8_en_i;
  input data8_clk_i;
  input data8_rst_i;
  input data8_eof_i;
  input [13:0]data9_i;
  input data9_en_i;
  input data9_clk_i;
  input data9_rst_i;
  input data9_eof_i;
  input [13:0]data10_i;
  input data10_en_i;
  input data10_clk_i;
  input data10_rst_i;
  input data10_eof_i;
  input [13:0]data11_i;
  input data11_en_i;
  input data11_clk_i;
  input data11_rst_i;
  input data11_eof_i;
  input [13:0]data12_i;
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
  wire [13:0]data1_i;
  wire data1_rst_i;
  wire data2_clk_i;
  wire data2_en_i;
  wire [13:0]data2_i;
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
  double_dds_dataReal_to_ram_1_0_dataReal_to_ram_top data32_top_inst
       (.D(p_0_in),
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
        .\ram_addr_s_reg[0]_0 (handle_comm_n_8),
        .\ram_addr_s_reg[11]_0 (handle_comm_n_10),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .\select_chan_s_reg[0]_0 (handle_comm_n_4),
        .start_o(start_o));
  double_dds_dataReal_to_ram_1_0_dataReal_to_ram_handCom handle_comm
       (.addr_s(addr_s),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_rvalid_reg_0(handle_comm_n_10),
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
        .s00_axi_reset_0(handle_comm_n_8),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\select_chan_s_reg[0] (handle_comm_n_4));
  double_dds_dataReal_to_ram_1_0_wb_dataReal_to_ram wb_inst
       (.D(p_0_in),
        .E(read_en_s),
        .ram_reinit_s(ram_reinit_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rvalid(s00_axi_rvalid),
        .start_o(start_o));
endmodule

(* ORIG_REF_NAME = "dataReal_to_ram_handCom" *) 
module double_dds_dataReal_to_ram_1_0_dataReal_to_ram_handCom
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    \select_chan_s_reg[0] ,
    addr_s,
    read_en_s,
    s00_axi_reset_0,
    ram_reinit_s,
    axi_rvalid_reg_0,
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
  output s00_axi_reset_0;
  output ram_reinit_s;
  output axi_rvalid_reg_0;
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
  wire axi_rvalid_reg_0;
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
  wire s00_axi_reset_0;
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  LUT4 #(
    .INIT(16'hAABA)) 
    \ram_addr_s[0]_i_1 
       (.I0(s00_axi_reset),
        .I1(addr_s[0]),
        .I2(write_en_s),
        .I3(addr_s[1]),
        .O(s00_axi_reset_0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \ram_addr_s[0]_i_2 
       (.I0(addr_s[0]),
        .I1(addr_s[1]),
        .I2(axi_rvalid_reg_n_0),
        .I3(s00_axi_arvalid),
        .I4(axi_arready_reg_0),
        .I5(incr_addr_s),
        .O(axi_rvalid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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

(* ORIG_REF_NAME = "dataReal_to_ram_storage" *) 
module double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage
   (D,
    mem_reg_1_0,
    addr_s,
    dout_b,
    \readdata_s_reg[16] ,
    busy_s_1,
    data2_en_i,
    sample_cpt_s_reg__0,
    data2_clk_i,
    s00_axi_aclk,
    s00_axi_reset,
    ADDRARDADDR,
    addr_b,
    data2_i);
  output [5:0]D;
  output [9:0]mem_reg_1_0;
  input [1:0]addr_s;
  input [5:0]dout_b;
  input \readdata_s_reg[16] ;
  input busy_s_1;
  input data2_en_i;
  input [0:0]sample_cpt_s_reg__0;
  input data2_clk_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [11:0]ADDRARDADDR;
  input [11:0]addr_b;
  input [13:0]data2_i;

  wire [11:0]ADDRARDADDR;
  wire [5:0]D;
  wire [11:0]addr_b;
  wire [1:0]addr_s;
  wire busy_s_1;
  wire data2_clk_i;
  wire data2_en_i;
  wire [13:0]data2_i;
  wire [5:0]dout_b;
  wire [9:0]mem_reg_1_0;
  wire \readdata_s_reg[16] ;
  wire [14:0]\res_s[1]_2 ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire [0:0]sample_cpt_s_reg__0;
  wire we_even_s;
  wire NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_DOADO_UNCONNECTED;
  wire [31:7]NLW_mem_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "data32_top_inst/subtop_loop[1].data_subtop_inst/half_axi_bits.ram_even/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "8" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_0
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addr_b,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(data2_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data2_i[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,data2_i[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_mem_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:8],mem_reg_1_0[3:2],\res_s[1]_2 [5:4],mem_reg_1_0[1:0],\res_s[1]_2 [1:0]}),
        .DOPADOP(NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:1],mem_reg_1_0[4]}),
        .ECCPARITY(NLW_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(we_even_s),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(s00_axi_reset),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({we_even_s,we_even_s,we_even_s,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_0_i_1__1
       (.I0(busy_s_1),
        .I1(data2_en_i),
        .I2(sample_cpt_s_reg__0),
        .O(we_even_s));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "data32_top_inst/subtop_loop[1].data_subtop_inst/half_axi_bits.ram_even/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_1
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addr_b,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(data2_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data2_i[13],data2_i[13],data2_i[13:9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[31:7],mem_reg_1_0[9],\res_s[1]_2 [14],mem_reg_1_0[8:6],\res_s[1]_2 [10],mem_reg_1_0[5]}),
        .DOPADOP(NLW_mem_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(we_even_s),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(s00_axi_reset),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_SBITERR_UNCONNECTED),
        .WEA({we_even_s,we_even_s,we_even_s,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[16]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[1]_2 [0]),
        .I2(dout_b[0]),
        .I3(\readdata_s_reg[16] ),
        .I4(addr_s[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[17]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[1]_2 [1]),
        .I2(dout_b[1]),
        .I3(\readdata_s_reg[16] ),
        .I4(addr_s[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[20]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[1]_2 [4]),
        .I2(dout_b[2]),
        .I3(\readdata_s_reg[16] ),
        .I4(addr_s[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[21]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[1]_2 [5]),
        .I2(dout_b[3]),
        .I3(\readdata_s_reg[16] ),
        .I4(addr_s[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[26]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[1]_2 [10]),
        .I2(dout_b[4]),
        .I3(\readdata_s_reg[16] ),
        .I4(addr_s[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[30]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[1]_2 [14]),
        .I2(dout_b[5]),
        .I3(\readdata_s_reg[16] ),
        .I4(addr_s[1]),
        .O(D[5]));
endmodule

(* ORIG_REF_NAME = "dataReal_to_ram_storage" *) 
module double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_0
   (D,
    dout_b,
    addr_s,
    \readdata_s_reg[31] ,
    \readdata_s_reg[31]_0 ,
    busy_s_1,
    data2_en_i,
    sample_cpt_s_reg__0,
    data2_clk_i,
    s00_axi_aclk,
    s00_axi_reset,
    ADDRARDADDR,
    addr_b,
    data2_i);
  output [9:0]D;
  output [5:0]dout_b;
  input [1:0]addr_s;
  input \readdata_s_reg[31] ;
  input [9:0]\readdata_s_reg[31]_0 ;
  input busy_s_1;
  input data2_en_i;
  input [0:0]sample_cpt_s_reg__0;
  input data2_clk_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [11:0]ADDRARDADDR;
  input [11:0]addr_b;
  input [13:0]data2_i;

  wire [11:0]ADDRARDADDR;
  wire [9:0]D;
  wire [11:0]addr_b;
  wire [1:0]addr_s;
  wire busy_s_1;
  wire data2_clk_i;
  wire data2_en_i;
  wire [13:0]data2_i;
  wire [5:0]dout_b;
  wire \readdata_s_reg[31] ;
  wire [9:0]\readdata_s_reg[31]_0 ;
  wire [31:18]\res_s[1]_2 ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire [0:0]sample_cpt_s_reg__0;
  wire we_odd_s;
  wire NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_DOADO_UNCONNECTED;
  wire [31:7]NLW_mem_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "data32_top_inst/subtop_loop[1].data_subtop_inst/half_axi_bits.ram_odd/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "8" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_0
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addr_b,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(data2_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data2_i[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,data2_i[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_mem_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:8],\res_s[1]_2 [23:22],dout_b[3:2],\res_s[1]_2 [19:18],dout_b[1:0]}),
        .DOPADOP(NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:1],\res_s[1]_2 [24]}),
        .ECCPARITY(NLW_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(we_odd_s),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(s00_axi_reset),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({we_odd_s,we_odd_s,we_odd_s,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_0_i_1__2
       (.I0(busy_s_1),
        .I1(data2_en_i),
        .I2(sample_cpt_s_reg__0),
        .O(we_odd_s));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "data32_top_inst/subtop_loop[1].data_subtop_inst/half_axi_bits.ram_odd/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_1
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addr_b,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(data2_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data2_i[13],data2_i[13],data2_i[13:9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[31:7],\res_s[1]_2 [31],dout_b[5],\res_s[1]_2 [29:27],dout_b[4],\res_s[1]_2 [25]}),
        .DOPADOP(NLW_mem_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(we_odd_s),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(s00_axi_reset),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_SBITERR_UNCONNECTED),
        .WEA({we_odd_s,we_odd_s,we_odd_s,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[18]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_2 [18]),
        .I3(\readdata_s_reg[31]_0 [0]),
        .I4(addr_s[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[19]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_2 [19]),
        .I3(\readdata_s_reg[31]_0 [1]),
        .I4(addr_s[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[22]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_2 [22]),
        .I3(\readdata_s_reg[31]_0 [2]),
        .I4(addr_s[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[23]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_2 [23]),
        .I3(\readdata_s_reg[31]_0 [3]),
        .I4(addr_s[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[24]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_2 [24]),
        .I3(\readdata_s_reg[31]_0 [4]),
        .I4(addr_s[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[25]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_2 [25]),
        .I3(\readdata_s_reg[31]_0 [5]),
        .I4(addr_s[1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[27]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_2 [27]),
        .I3(\readdata_s_reg[31]_0 [6]),
        .I4(addr_s[1]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[28]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_2 [28]),
        .I3(\readdata_s_reg[31]_0 [7]),
        .I4(addr_s[1]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[29]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_2 [29]),
        .I3(\readdata_s_reg[31]_0 [8]),
        .I4(addr_s[1]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[31]_i_2 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[31] ),
        .I2(\res_s[1]_2 [31]),
        .I3(\readdata_s_reg[31]_0 [9]),
        .I4(addr_s[1]),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "dataReal_to_ram_storage" *) 
module double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_1
   (D,
    mem_reg_1_0,
    addr_s,
    dout_b,
    \readdata_s_reg[2] ,
    busy_s_1,
    data1_en_i,
    sample_cpt_s_reg__0,
    data1_clk_i,
    s00_axi_aclk,
    s00_axi_reset,
    ADDRARDADDR,
    addr_b,
    data1_i);
  output [6:0]D;
  output [8:0]mem_reg_1_0;
  input [1:0]addr_s;
  input [6:0]dout_b;
  input \readdata_s_reg[2] ;
  input busy_s_1;
  input data1_en_i;
  input [0:0]sample_cpt_s_reg__0;
  input data1_clk_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [11:0]ADDRARDADDR;
  input [11:0]addr_b;
  input [13:0]data1_i;

  wire [11:0]ADDRARDADDR;
  wire [6:0]D;
  wire [11:0]addr_b;
  wire [1:0]addr_s;
  wire busy_s_1;
  wire data1_clk_i;
  wire data1_en_i;
  wire [13:0]data1_i;
  wire [6:0]dout_b;
  wire [8:0]mem_reg_1_0;
  wire \readdata_s_reg[2] ;
  wire [15:2]\res_s[0]_1 ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire [0:0]sample_cpt_s_reg__0;
  wire we_even_s;
  wire NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_DOADO_UNCONNECTED;
  wire [31:7]NLW_mem_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "data32_top_inst/subtop_loop[0].data_subtop_inst/half_axi_bits.ram_even/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "8" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_0
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addr_b,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(data1_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data1_i[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,data1_i[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_mem_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:8],mem_reg_1_0[4],\res_s[0]_1 [6],mem_reg_1_0[3],\res_s[0]_1 [4],mem_reg_1_0[2],\res_s[0]_1 [2],mem_reg_1_0[1:0]}),
        .DOPADOP(NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:1],mem_reg_1_0[5]}),
        .ECCPARITY(NLW_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(we_even_s),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(s00_axi_reset),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({we_even_s,we_even_s,we_even_s,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_0_i_1
       (.I0(busy_s_1),
        .I1(data1_en_i),
        .I2(sample_cpt_s_reg__0),
        .O(we_even_s));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "data32_top_inst/subtop_loop[0].data_subtop_inst/half_axi_bits.ram_even/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_1
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addr_b,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(data1_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data1_i[13],data1_i[13],data1_i[13:9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[31:7],\res_s[0]_1 [15],mem_reg_1_0[8],\res_s[0]_1 [13],mem_reg_1_0[7],\res_s[0]_1 [11],mem_reg_1_0[6],\res_s[0]_1 [9]}),
        .DOPADOP(NLW_mem_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(we_even_s),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(s00_axi_reset),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_SBITERR_UNCONNECTED),
        .WEA({we_even_s,we_even_s,we_even_s,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[11]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[0]_1 [11]),
        .I2(dout_b[4]),
        .I3(\readdata_s_reg[2] ),
        .I4(addr_s[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[13]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[0]_1 [13]),
        .I2(dout_b[5]),
        .I3(\readdata_s_reg[2] ),
        .I4(addr_s[1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[15]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[0]_1 [15]),
        .I2(dout_b[6]),
        .I3(\readdata_s_reg[2] ),
        .I4(addr_s[1]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[2]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[0]_1 [2]),
        .I2(dout_b[0]),
        .I3(\readdata_s_reg[2] ),
        .I4(addr_s[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[4]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[0]_1 [4]),
        .I2(dout_b[1]),
        .I3(\readdata_s_reg[2] ),
        .I4(addr_s[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[6]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[0]_1 [6]),
        .I2(dout_b[2]),
        .I3(\readdata_s_reg[2] ),
        .I4(addr_s[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFAEE5555)) 
    \readdata_s[9]_i_1 
       (.I0(addr_s[0]),
        .I1(\res_s[0]_1 [9]),
        .I2(dout_b[3]),
        .I3(\readdata_s_reg[2] ),
        .I4(addr_s[1]),
        .O(D[3]));
endmodule

(* ORIG_REF_NAME = "dataReal_to_ram_storage" *) 
module double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_2
   (D,
    dout_b,
    busy_s,
    \readdata_s_reg[14] ,
    addr_s,
    \readdata_s_reg[0] ,
    busy_s_1,
    data1_en_i,
    sample_cpt_s_reg__0,
    data1_clk_i,
    s00_axi_aclk,
    s00_axi_reset,
    ADDRARDADDR,
    addr_b,
    data1_i);
  output [8:0]D;
  output [6:0]dout_b;
  input busy_s;
  input [8:0]\readdata_s_reg[14] ;
  input [1:0]addr_s;
  input \readdata_s_reg[0] ;
  input busy_s_1;
  input data1_en_i;
  input [0:0]sample_cpt_s_reg__0;
  input data1_clk_i;
  input s00_axi_aclk;
  input s00_axi_reset;
  input [11:0]ADDRARDADDR;
  input [11:0]addr_b;
  input [13:0]data1_i;

  wire [11:0]ADDRARDADDR;
  wire [8:0]D;
  wire [11:0]addr_b;
  wire [1:0]addr_s;
  wire busy_s;
  wire busy_s_1;
  wire data1_clk_i;
  wire data1_en_i;
  wire [13:0]data1_i;
  wire [6:0]dout_b;
  wire \readdata_s_reg[0] ;
  wire [8:0]\readdata_s_reg[14] ;
  wire [30:16]\res_s[0]_1 ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire [0:0]sample_cpt_s_reg__0;
  wire we_odd_s;
  wire NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_DOADO_UNCONNECTED;
  wire [31:7]NLW_mem_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "data32_top_inst/subtop_loop[0].data_subtop_inst/half_axi_bits.ram_odd/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "8" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_0
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addr_b,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(data1_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data1_i[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,data1_i[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_mem_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:8],\res_s[0]_1 [23],dout_b[2],\res_s[0]_1 [21],dout_b[1],\res_s[0]_1 [19],dout_b[0],\res_s[0]_1 [17:16]}),
        .DOPADOP(NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:1],\res_s[0]_1 [24]}),
        .ECCPARITY(NLW_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(we_odd_s),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(s00_axi_reset),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({we_odd_s,we_odd_s,we_odd_s,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_0_i_1__0
       (.I0(busy_s_1),
        .I1(data1_en_i),
        .I2(sample_cpt_s_reg__0),
        .O(we_odd_s));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "data32_top_inst/subtop_loop[0].data_subtop_inst/half_axi_bits.ram_odd/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_1
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addr_b,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(data1_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data1_i[13],data1_i[13],data1_i[13:9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[31:7],dout_b[6],\res_s[0]_1 [30],dout_b[5],\res_s[0]_1 [28],dout_b[4],\res_s[0]_1 [26],dout_b[3]}),
        .DOPADOP(NLW_mem_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(we_odd_s),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(s00_axi_reset),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_SBITERR_UNCONNECTED),
        .WEA({we_odd_s,we_odd_s,we_odd_s,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hFCAFFFAFFCAFF0AF)) 
    \readdata_s[0]_i_1 
       (.I0(busy_s),
        .I1(\res_s[0]_1 [16]),
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
        .I2(\res_s[0]_1 [26]),
        .I3(\readdata_s_reg[14] [6]),
        .I4(addr_s[1]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[12]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_1 [28]),
        .I3(\readdata_s_reg[14] [7]),
        .I4(addr_s[1]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[14]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_1 [30]),
        .I3(\readdata_s_reg[14] [8]),
        .I4(addr_s[1]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[1]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_1 [17]),
        .I3(\readdata_s_reg[14] [1]),
        .I4(addr_s[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[3]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_1 [19]),
        .I3(\readdata_s_reg[14] [2]),
        .I4(addr_s[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[5]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_1 [21]),
        .I3(\readdata_s_reg[14] [3]),
        .I4(addr_s[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[7]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_1 [23]),
        .I3(\readdata_s_reg[14] [4]),
        .I4(addr_s[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h51400000)) 
    \readdata_s[8]_i_1 
       (.I0(addr_s[0]),
        .I1(\readdata_s_reg[0] ),
        .I2(\res_s[0]_1 [24]),
        .I3(\readdata_s_reg[14] [5]),
        .I4(addr_s[1]),
        .O(D[5]));
endmodule

(* ORIG_REF_NAME = "dataReal_to_ram_subtop" *) 
module double_dds_dataReal_to_ram_1_0_dataReal_to_ram_subtop
   (sync_stage3_s_reg,
    D,
    busy_s,
    s00_axi_aclk,
    data2_clk_i,
    addr_s,
    \readdata_s_reg[31] ,
    s00_axi_reset,
    start_o,
    busy_s_0,
    start_s,
    addr_b,
    data2_i,
    data2_en_i,
    data2_rst_i);
  output [0:0]sync_stage3_s_reg;
  output [15:0]D;
  output busy_s;
  input s00_axi_aclk;
  input data2_clk_i;
  input [1:0]addr_s;
  input \readdata_s_reg[31] ;
  input s00_axi_reset;
  input start_o;
  input [0:0]busy_s_0;
  input start_s;
  input [11:0]addr_b;
  input [13:0]data2_i;
  input data2_en_i;
  input data2_rst_i;

  wire [15:0]D;
  wire [11:0]addr_b;
  wire [1:0]addr_s;
  wire busy_s;
  wire [0:0]busy_s_0;
  wire busy_s_1;
  wire busy_s_i_2__0_n_0;
  wire busy_s_i_3__0_n_0;
  wire busy_s_i_4__0_n_0;
  wire busy_s_i_5__0_n_0;
  wire busy_sync_n_1;
  wire data2_clk_i;
  wire data2_en_i;
  wire [13:0]data2_i;
  wire data2_rst_i;
  wire \readdata_s_reg[31] ;
  wire [30:2]\res_s[1]_2 ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire sample_cpt_s0;
  wire \sample_cpt_s[0]_i_3__0_n_0 ;
  wire [12:1]sample_cpt_s_reg;
  wire \sample_cpt_s_reg[0]_i_2__0_n_0 ;
  wire \sample_cpt_s_reg[0]_i_2__0_n_1 ;
  wire \sample_cpt_s_reg[0]_i_2__0_n_2 ;
  wire \sample_cpt_s_reg[0]_i_2__0_n_3 ;
  wire \sample_cpt_s_reg[0]_i_2__0_n_4 ;
  wire \sample_cpt_s_reg[0]_i_2__0_n_5 ;
  wire \sample_cpt_s_reg[0]_i_2__0_n_6 ;
  wire \sample_cpt_s_reg[0]_i_2__0_n_7 ;
  wire \sample_cpt_s_reg[12]_i_1__0_n_7 ;
  wire \sample_cpt_s_reg[4]_i_1__0_n_0 ;
  wire \sample_cpt_s_reg[4]_i_1__0_n_1 ;
  wire \sample_cpt_s_reg[4]_i_1__0_n_2 ;
  wire \sample_cpt_s_reg[4]_i_1__0_n_3 ;
  wire \sample_cpt_s_reg[4]_i_1__0_n_4 ;
  wire \sample_cpt_s_reg[4]_i_1__0_n_5 ;
  wire \sample_cpt_s_reg[4]_i_1__0_n_6 ;
  wire \sample_cpt_s_reg[4]_i_1__0_n_7 ;
  wire \sample_cpt_s_reg[8]_i_1__0_n_0 ;
  wire \sample_cpt_s_reg[8]_i_1__0_n_1 ;
  wire \sample_cpt_s_reg[8]_i_1__0_n_2 ;
  wire \sample_cpt_s_reg[8]_i_1__0_n_3 ;
  wire \sample_cpt_s_reg[8]_i_1__0_n_4 ;
  wire \sample_cpt_s_reg[8]_i_1__0_n_5 ;
  wire \sample_cpt_s_reg[8]_i_1__0_n_6 ;
  wire \sample_cpt_s_reg[8]_i_1__0_n_7 ;
  wire [0:0]sample_cpt_s_reg__0;
  wire start_acq2_s_reg_n_0;
  wire start_o;
  wire start_s;
  wire [0:0]sync_stage3_s_reg;
  wire sync_start_n_0;
  wire [3:0]\NLW_sample_cpt_s_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_sample_cpt_s_reg[12]_i_1__0_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hD000000000000000)) 
    busy_s_i_2__0
       (.I0(sample_cpt_s_reg[5]),
        .I1(sample_cpt_s_reg[3]),
        .I2(sample_cpt_s_reg[2]),
        .I3(sample_cpt_s_reg[4]),
        .I4(sample_cpt_s_reg__0),
        .I5(sample_cpt_s_reg[1]),
        .O(busy_s_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hD5D500D500D500D5)) 
    busy_s_i_3__0
       (.I0(sample_cpt_s_reg[11]),
        .I1(sample_cpt_s_reg[9]),
        .I2(sample_cpt_s_reg[10]),
        .I3(sample_cpt_s_reg[8]),
        .I4(sample_cpt_s_reg[6]),
        .I5(sample_cpt_s_reg[7]),
        .O(busy_s_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    busy_s_i_4__0
       (.I0(sample_cpt_s_reg[11]),
        .I1(sample_cpt_s_reg[12]),
        .I2(data2_en_i),
        .I3(busy_s_1),
        .I4(busy_s_i_5__0_n_0),
        .O(busy_s_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    busy_s_i_5__0
       (.I0(sample_cpt_s_reg[10]),
        .I1(sample_cpt_s_reg[8]),
        .I2(sample_cpt_s_reg[7]),
        .I3(sample_cpt_s_reg[5]),
        .O(busy_s_i_5__0_n_0));
  FDRE busy_s_reg
       (.C(data2_clk_i),
        .CE(1'b1),
        .D(sync_start_n_0),
        .Q(busy_s_1),
        .R(1'b0));
  double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__3 busy_sync
       (.busy_s(busy_s),
        .busy_s_0(busy_s_0),
        .busy_s_1(busy_s_1),
        .data2_clk_i(data2_clk_i),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_reset_0(busy_sync_n_1),
        .start_acq2_s_reg(start_acq2_s_reg_n_0),
        .start_o(start_o),
        .start_s(start_s),
        .sync_stage3_s_reg_0(sync_stage3_s_reg));
  double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage \half_axi_bits.ram_even 
       (.ADDRARDADDR(sample_cpt_s_reg),
        .D({D[14],D[10],D[5:4],D[1:0]}),
        .addr_b(addr_b),
        .addr_s(addr_s),
        .busy_s_1(busy_s_1),
        .data2_clk_i(data2_clk_i),
        .data2_en_i(data2_en_i),
        .data2_i(data2_i),
        .dout_b({\res_s[1]_2 [30],\res_s[1]_2 [26],\res_s[1]_2 [21:20],\res_s[1]_2 [17:16]}),
        .mem_reg_1_0({\res_s[1]_2 [15],\res_s[1]_2 [13:11],\res_s[1]_2 [9:6],\res_s[1]_2 [3:2]}),
        .\readdata_s_reg[16] (\readdata_s_reg[31] ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .sample_cpt_s_reg__0(sample_cpt_s_reg__0));
  double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_0 \half_axi_bits.ram_odd 
       (.ADDRARDADDR(sample_cpt_s_reg),
        .D({D[15],D[13:11],D[9:6],D[3:2]}),
        .addr_b(addr_b),
        .addr_s(addr_s),
        .busy_s_1(busy_s_1),
        .data2_clk_i(data2_clk_i),
        .data2_en_i(data2_en_i),
        .data2_i(data2_i),
        .dout_b({\res_s[1]_2 [30],\res_s[1]_2 [26],\res_s[1]_2 [21:20],\res_s[1]_2 [17:16]}),
        .\readdata_s_reg[31] (\readdata_s_reg[31] ),
        .\readdata_s_reg[31]_0 ({\res_s[1]_2 [15],\res_s[1]_2 [13:11],\res_s[1]_2 [9:6],\res_s[1]_2 [3:2]}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .sample_cpt_s_reg__0(sample_cpt_s_reg__0));
  LUT2 #(
    .INIT(4'hB)) 
    \sample_cpt_s[0]_i_1__0 
       (.I0(data2_rst_i),
        .I1(busy_s_1),
        .O(sample_cpt_s0));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_cpt_s[0]_i_3__0 
       (.I0(sample_cpt_s_reg__0),
        .O(\sample_cpt_s[0]_i_3__0_n_0 ));
  FDRE \sample_cpt_s_reg[0] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(\sample_cpt_s_reg[0]_i_2__0_n_7 ),
        .Q(sample_cpt_s_reg__0),
        .R(sample_cpt_s0));
  CARRY4 \sample_cpt_s_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\sample_cpt_s_reg[0]_i_2__0_n_0 ,\sample_cpt_s_reg[0]_i_2__0_n_1 ,\sample_cpt_s_reg[0]_i_2__0_n_2 ,\sample_cpt_s_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sample_cpt_s_reg[0]_i_2__0_n_4 ,\sample_cpt_s_reg[0]_i_2__0_n_5 ,\sample_cpt_s_reg[0]_i_2__0_n_6 ,\sample_cpt_s_reg[0]_i_2__0_n_7 }),
        .S({sample_cpt_s_reg[3:1],\sample_cpt_s[0]_i_3__0_n_0 }));
  FDRE \sample_cpt_s_reg[10] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(\sample_cpt_s_reg[8]_i_1__0_n_5 ),
        .Q(sample_cpt_s_reg[10]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[11] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(\sample_cpt_s_reg[8]_i_1__0_n_4 ),
        .Q(sample_cpt_s_reg[11]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[12] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(\sample_cpt_s_reg[12]_i_1__0_n_7 ),
        .Q(sample_cpt_s_reg[12]),
        .R(sample_cpt_s0));
  CARRY4 \sample_cpt_s_reg[12]_i_1__0 
       (.CI(\sample_cpt_s_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_sample_cpt_s_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sample_cpt_s_reg[12]_i_1__0_O_UNCONNECTED [3:1],\sample_cpt_s_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,sample_cpt_s_reg[12]}));
  FDRE \sample_cpt_s_reg[1] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(\sample_cpt_s_reg[0]_i_2__0_n_6 ),
        .Q(sample_cpt_s_reg[1]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[2] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(\sample_cpt_s_reg[0]_i_2__0_n_5 ),
        .Q(sample_cpt_s_reg[2]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[3] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(\sample_cpt_s_reg[0]_i_2__0_n_4 ),
        .Q(sample_cpt_s_reg[3]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[4] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(\sample_cpt_s_reg[4]_i_1__0_n_7 ),
        .Q(sample_cpt_s_reg[4]),
        .R(sample_cpt_s0));
  CARRY4 \sample_cpt_s_reg[4]_i_1__0 
       (.CI(\sample_cpt_s_reg[0]_i_2__0_n_0 ),
        .CO({\sample_cpt_s_reg[4]_i_1__0_n_0 ,\sample_cpt_s_reg[4]_i_1__0_n_1 ,\sample_cpt_s_reg[4]_i_1__0_n_2 ,\sample_cpt_s_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sample_cpt_s_reg[4]_i_1__0_n_4 ,\sample_cpt_s_reg[4]_i_1__0_n_5 ,\sample_cpt_s_reg[4]_i_1__0_n_6 ,\sample_cpt_s_reg[4]_i_1__0_n_7 }),
        .S(sample_cpt_s_reg[7:4]));
  FDRE \sample_cpt_s_reg[5] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(\sample_cpt_s_reg[4]_i_1__0_n_6 ),
        .Q(sample_cpt_s_reg[5]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[6] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(\sample_cpt_s_reg[4]_i_1__0_n_5 ),
        .Q(sample_cpt_s_reg[6]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[7] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(\sample_cpt_s_reg[4]_i_1__0_n_4 ),
        .Q(sample_cpt_s_reg[7]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[8] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(\sample_cpt_s_reg[8]_i_1__0_n_7 ),
        .Q(sample_cpt_s_reg[8]),
        .R(sample_cpt_s0));
  CARRY4 \sample_cpt_s_reg[8]_i_1__0 
       (.CI(\sample_cpt_s_reg[4]_i_1__0_n_0 ),
        .CO({\sample_cpt_s_reg[8]_i_1__0_n_0 ,\sample_cpt_s_reg[8]_i_1__0_n_1 ,\sample_cpt_s_reg[8]_i_1__0_n_2 ,\sample_cpt_s_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sample_cpt_s_reg[8]_i_1__0_n_4 ,\sample_cpt_s_reg[8]_i_1__0_n_5 ,\sample_cpt_s_reg[8]_i_1__0_n_6 ,\sample_cpt_s_reg[8]_i_1__0_n_7 }),
        .S(sample_cpt_s_reg[11:8]));
  FDRE \sample_cpt_s_reg[9] 
       (.C(data2_clk_i),
        .CE(data2_en_i),
        .D(\sample_cpt_s_reg[8]_i_1__0_n_6 ),
        .Q(sample_cpt_s_reg[9]),
        .R(sample_cpt_s0));
  FDRE start_acq2_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(busy_sync_n_1),
        .Q(start_acq2_s_reg_n_0),
        .R(1'b0));
  double_dds_dataReal_to_ram_1_0_dataReal_sync sync_start
       (.busy_s_1(busy_s_1),
        .busy_s_reg(sync_start_n_0),
        .busy_s_reg_0(busy_s_i_2__0_n_0),
        .busy_s_reg_1(busy_s_i_3__0_n_0),
        .busy_s_reg_2(busy_s_i_4__0_n_0),
        .data2_clk_i(data2_clk_i),
        .data2_rst_i(data2_rst_i),
        .s00_axi_aclk(s00_axi_aclk),
        .sync_stage0_s_reg_0(start_acq2_s_reg_n_0));
endmodule

(* ORIG_REF_NAME = "dataReal_to_ram_subtop" *) 
module double_dds_dataReal_to_ram_1_0_dataReal_to_ram_subtop__xdcDup__1
   (busy_s_0,
    D,
    sync_stage3_s_reg,
    data1_clk_i,
    s00_axi_aclk,
    busy_s,
    addr_s,
    \readdata_s_reg[0] ,
    s00_axi_reset,
    start_o,
    start_s,
    start_s_reg,
    addr_b,
    data1_i,
    data1_en_i,
    data1_rst_i);
  output [0:0]busy_s_0;
  output [15:0]D;
  output sync_stage3_s_reg;
  input data1_clk_i;
  input s00_axi_aclk;
  input busy_s;
  input [1:0]addr_s;
  input \readdata_s_reg[0] ;
  input s00_axi_reset;
  input start_o;
  input start_s;
  input [0:0]start_s_reg;
  input [11:0]addr_b;
  input [13:0]data1_i;
  input data1_en_i;
  input data1_rst_i;

  wire [15:0]D;
  wire [11:0]addr_b;
  wire [1:0]addr_s;
  wire busy_s;
  wire [0:0]busy_s_0;
  wire busy_s_1;
  wire busy_s_i_2_n_0;
  wire busy_s_i_3_n_0;
  wire busy_s_i_4_n_0;
  wire busy_s_i_5_n_0;
  wire busy_sync_n_1;
  wire data1_clk_i;
  wire data1_en_i;
  wire [13:0]data1_i;
  wire data1_rst_i;
  wire \readdata_s_reg[0] ;
  wire [31:0]\res_s[0]_1 ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire sample_cpt_s0;
  wire \sample_cpt_s[0]_i_3_n_0 ;
  wire [12:1]sample_cpt_s_reg;
  wire \sample_cpt_s_reg[0]_i_2_n_0 ;
  wire \sample_cpt_s_reg[0]_i_2_n_1 ;
  wire \sample_cpt_s_reg[0]_i_2_n_2 ;
  wire \sample_cpt_s_reg[0]_i_2_n_3 ;
  wire \sample_cpt_s_reg[0]_i_2_n_4 ;
  wire \sample_cpt_s_reg[0]_i_2_n_5 ;
  wire \sample_cpt_s_reg[0]_i_2_n_6 ;
  wire \sample_cpt_s_reg[0]_i_2_n_7 ;
  wire \sample_cpt_s_reg[12]_i_1_n_7 ;
  wire \sample_cpt_s_reg[4]_i_1_n_0 ;
  wire \sample_cpt_s_reg[4]_i_1_n_1 ;
  wire \sample_cpt_s_reg[4]_i_1_n_2 ;
  wire \sample_cpt_s_reg[4]_i_1_n_3 ;
  wire \sample_cpt_s_reg[4]_i_1_n_4 ;
  wire \sample_cpt_s_reg[4]_i_1_n_5 ;
  wire \sample_cpt_s_reg[4]_i_1_n_6 ;
  wire \sample_cpt_s_reg[4]_i_1_n_7 ;
  wire \sample_cpt_s_reg[8]_i_1_n_0 ;
  wire \sample_cpt_s_reg[8]_i_1_n_1 ;
  wire \sample_cpt_s_reg[8]_i_1_n_2 ;
  wire \sample_cpt_s_reg[8]_i_1_n_3 ;
  wire \sample_cpt_s_reg[8]_i_1_n_4 ;
  wire \sample_cpt_s_reg[8]_i_1_n_5 ;
  wire \sample_cpt_s_reg[8]_i_1_n_6 ;
  wire \sample_cpt_s_reg[8]_i_1_n_7 ;
  wire [0:0]sample_cpt_s_reg__0;
  wire start_acq2_s;
  wire start_o;
  wire start_s;
  wire [0:0]start_s_reg;
  wire sync_stage3_s_reg;
  wire sync_start_n_0;
  wire [3:0]\NLW_sample_cpt_s_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_sample_cpt_s_reg[12]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hD000000000000000)) 
    busy_s_i_2
       (.I0(sample_cpt_s_reg[5]),
        .I1(sample_cpt_s_reg[3]),
        .I2(sample_cpt_s_reg[2]),
        .I3(sample_cpt_s_reg[4]),
        .I4(sample_cpt_s_reg__0),
        .I5(sample_cpt_s_reg[1]),
        .O(busy_s_i_2_n_0));
  LUT6 #(
    .INIT(64'hD5D500D500D500D5)) 
    busy_s_i_3
       (.I0(sample_cpt_s_reg[11]),
        .I1(sample_cpt_s_reg[9]),
        .I2(sample_cpt_s_reg[10]),
        .I3(sample_cpt_s_reg[8]),
        .I4(sample_cpt_s_reg[6]),
        .I5(sample_cpt_s_reg[7]),
        .O(busy_s_i_3_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    busy_s_i_4
       (.I0(sample_cpt_s_reg[11]),
        .I1(sample_cpt_s_reg[12]),
        .I2(data1_en_i),
        .I3(busy_s_1),
        .I4(busy_s_i_5_n_0),
        .O(busy_s_i_4_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    busy_s_i_5
       (.I0(sample_cpt_s_reg[10]),
        .I1(sample_cpt_s_reg[8]),
        .I2(sample_cpt_s_reg[7]),
        .I3(sample_cpt_s_reg[5]),
        .O(busy_s_i_5_n_0));
  FDRE busy_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(sync_start_n_0),
        .Q(busy_s_1),
        .R(1'b0));
  double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__1 busy_sync
       (.busy_s_0(busy_s_0),
        .busy_s_1(busy_s_1),
        .data1_clk_i(data1_clk_i),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_reset_0(busy_sync_n_1),
        .start_acq2_s(start_acq2_s),
        .start_o(start_o),
        .start_s(start_s),
        .start_s_reg(start_s_reg),
        .sync_stage3_s_reg_0(sync_stage3_s_reg));
  double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_1 \half_axi_bits.ram_even 
       (.ADDRARDADDR(sample_cpt_s_reg),
        .D({D[15],D[13],D[11],D[9],D[6],D[4],D[2]}),
        .addr_b(addr_b),
        .addr_s(addr_s),
        .busy_s_1(busy_s_1),
        .data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_i(data1_i),
        .dout_b({\res_s[0]_1 [31],\res_s[0]_1 [29],\res_s[0]_1 [27],\res_s[0]_1 [25],\res_s[0]_1 [22],\res_s[0]_1 [20],\res_s[0]_1 [18]}),
        .mem_reg_1_0({\res_s[0]_1 [14],\res_s[0]_1 [12],\res_s[0]_1 [10],\res_s[0]_1 [8:7],\res_s[0]_1 [5],\res_s[0]_1 [3],\res_s[0]_1 [1:0]}),
        .\readdata_s_reg[2] (\readdata_s_reg[0] ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .sample_cpt_s_reg__0(sample_cpt_s_reg__0));
  double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_2 \half_axi_bits.ram_odd 
       (.ADDRARDADDR(sample_cpt_s_reg),
        .D({D[14],D[12],D[10],D[8:7],D[5],D[3],D[1:0]}),
        .addr_b(addr_b),
        .addr_s(addr_s),
        .busy_s(busy_s),
        .busy_s_1(busy_s_1),
        .data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_i(data1_i),
        .dout_b({\res_s[0]_1 [31],\res_s[0]_1 [29],\res_s[0]_1 [27],\res_s[0]_1 [25],\res_s[0]_1 [22],\res_s[0]_1 [20],\res_s[0]_1 [18]}),
        .\readdata_s_reg[0] (\readdata_s_reg[0] ),
        .\readdata_s_reg[14] ({\res_s[0]_1 [14],\res_s[0]_1 [12],\res_s[0]_1 [10],\res_s[0]_1 [8:7],\res_s[0]_1 [5],\res_s[0]_1 [3],\res_s[0]_1 [1:0]}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .sample_cpt_s_reg__0(sample_cpt_s_reg__0));
  LUT2 #(
    .INIT(4'hB)) 
    \sample_cpt_s[0]_i_1 
       (.I0(data1_rst_i),
        .I1(busy_s_1),
        .O(sample_cpt_s0));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_cpt_s[0]_i_3 
       (.I0(sample_cpt_s_reg__0),
        .O(\sample_cpt_s[0]_i_3_n_0 ));
  FDRE \sample_cpt_s_reg[0] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(\sample_cpt_s_reg[0]_i_2_n_7 ),
        .Q(sample_cpt_s_reg__0),
        .R(sample_cpt_s0));
  CARRY4 \sample_cpt_s_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\sample_cpt_s_reg[0]_i_2_n_0 ,\sample_cpt_s_reg[0]_i_2_n_1 ,\sample_cpt_s_reg[0]_i_2_n_2 ,\sample_cpt_s_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sample_cpt_s_reg[0]_i_2_n_4 ,\sample_cpt_s_reg[0]_i_2_n_5 ,\sample_cpt_s_reg[0]_i_2_n_6 ,\sample_cpt_s_reg[0]_i_2_n_7 }),
        .S({sample_cpt_s_reg[3:1],\sample_cpt_s[0]_i_3_n_0 }));
  FDRE \sample_cpt_s_reg[10] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(\sample_cpt_s_reg[8]_i_1_n_5 ),
        .Q(sample_cpt_s_reg[10]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[11] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(\sample_cpt_s_reg[8]_i_1_n_4 ),
        .Q(sample_cpt_s_reg[11]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[12] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(\sample_cpt_s_reg[12]_i_1_n_7 ),
        .Q(sample_cpt_s_reg[12]),
        .R(sample_cpt_s0));
  CARRY4 \sample_cpt_s_reg[12]_i_1 
       (.CI(\sample_cpt_s_reg[8]_i_1_n_0 ),
        .CO(\NLW_sample_cpt_s_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sample_cpt_s_reg[12]_i_1_O_UNCONNECTED [3:1],\sample_cpt_s_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,sample_cpt_s_reg[12]}));
  FDRE \sample_cpt_s_reg[1] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(\sample_cpt_s_reg[0]_i_2_n_6 ),
        .Q(sample_cpt_s_reg[1]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[2] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(\sample_cpt_s_reg[0]_i_2_n_5 ),
        .Q(sample_cpt_s_reg[2]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[3] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(\sample_cpt_s_reg[0]_i_2_n_4 ),
        .Q(sample_cpt_s_reg[3]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[4] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(\sample_cpt_s_reg[4]_i_1_n_7 ),
        .Q(sample_cpt_s_reg[4]),
        .R(sample_cpt_s0));
  CARRY4 \sample_cpt_s_reg[4]_i_1 
       (.CI(\sample_cpt_s_reg[0]_i_2_n_0 ),
        .CO({\sample_cpt_s_reg[4]_i_1_n_0 ,\sample_cpt_s_reg[4]_i_1_n_1 ,\sample_cpt_s_reg[4]_i_1_n_2 ,\sample_cpt_s_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sample_cpt_s_reg[4]_i_1_n_4 ,\sample_cpt_s_reg[4]_i_1_n_5 ,\sample_cpt_s_reg[4]_i_1_n_6 ,\sample_cpt_s_reg[4]_i_1_n_7 }),
        .S(sample_cpt_s_reg[7:4]));
  FDRE \sample_cpt_s_reg[5] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(\sample_cpt_s_reg[4]_i_1_n_6 ),
        .Q(sample_cpt_s_reg[5]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[6] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(\sample_cpt_s_reg[4]_i_1_n_5 ),
        .Q(sample_cpt_s_reg[6]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[7] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(\sample_cpt_s_reg[4]_i_1_n_4 ),
        .Q(sample_cpt_s_reg[7]),
        .R(sample_cpt_s0));
  FDRE \sample_cpt_s_reg[8] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(\sample_cpt_s_reg[8]_i_1_n_7 ),
        .Q(sample_cpt_s_reg[8]),
        .R(sample_cpt_s0));
  CARRY4 \sample_cpt_s_reg[8]_i_1 
       (.CI(\sample_cpt_s_reg[4]_i_1_n_0 ),
        .CO({\sample_cpt_s_reg[8]_i_1_n_0 ,\sample_cpt_s_reg[8]_i_1_n_1 ,\sample_cpt_s_reg[8]_i_1_n_2 ,\sample_cpt_s_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sample_cpt_s_reg[8]_i_1_n_4 ,\sample_cpt_s_reg[8]_i_1_n_5 ,\sample_cpt_s_reg[8]_i_1_n_6 ,\sample_cpt_s_reg[8]_i_1_n_7 }),
        .S(sample_cpt_s_reg[11:8]));
  FDRE \sample_cpt_s_reg[9] 
       (.C(data1_clk_i),
        .CE(data1_en_i),
        .D(\sample_cpt_s_reg[8]_i_1_n_6 ),
        .Q(sample_cpt_s_reg[9]),
        .R(sample_cpt_s0));
  FDRE start_acq2_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(busy_sync_n_1),
        .Q(start_acq2_s),
        .R(1'b0));
  double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__2 sync_start
       (.busy_s_1(busy_s_1),
        .busy_s_reg(sync_start_n_0),
        .busy_s_reg_0(busy_s_i_2_n_0),
        .busy_s_reg_1(busy_s_i_3_n_0),
        .busy_s_reg_2(busy_s_i_4_n_0),
        .data1_clk_i(data1_clk_i),
        .data1_rst_i(data1_rst_i),
        .s00_axi_aclk(s00_axi_aclk),
        .start_acq2_s(start_acq2_s));
endmodule

(* ORIG_REF_NAME = "dataReal_to_ram_top" *) 
module double_dds_dataReal_to_ram_1_0_dataReal_to_ram_top
   (incr_addr_s,
    D,
    data1_clk_i,
    s00_axi_aclk,
    data2_clk_i,
    \ram_addr_s_reg[0]_0 ,
    \ram_addr_s_reg[11]_0 ,
    \select_chan_s_reg[0]_0 ,
    addr_s,
    s00_axi_reset,
    start_o,
    data1_i,
    data2_i,
    data1_en_i,
    data1_rst_i,
    data2_en_i,
    data2_rst_i);
  output incr_addr_s;
  output [31:0]D;
  input data1_clk_i;
  input s00_axi_aclk;
  input data2_clk_i;
  input \ram_addr_s_reg[0]_0 ;
  input \ram_addr_s_reg[11]_0 ;
  input \select_chan_s_reg[0]_0 ;
  input [1:0]addr_s;
  input s00_axi_reset;
  input start_o;
  input [13:0]data1_i;
  input [13:0]data2_i;
  input data1_en_i;
  input data1_rst_i;
  input data2_en_i;
  input data2_rst_i;

  wire [31:0]D;
  wire [1:0]addr_s;
  wire busy_s;
  wire [1:0]busy_s_0;
  wire data1_clk_i;
  wire data1_en_i;
  wire [13:0]data1_i;
  wire data1_rst_i;
  wire data2_clk_i;
  wire data2_en_i;
  wire [13:0]data2_i;
  wire data2_rst_i;
  wire incr_addr_s;
  wire \ram_addr_s[0]_i_4_n_0 ;
  wire [11:0]ram_addr_s_reg;
  wire \ram_addr_s_reg[0]_0 ;
  wire \ram_addr_s_reg[0]_i_3_n_0 ;
  wire \ram_addr_s_reg[0]_i_3_n_1 ;
  wire \ram_addr_s_reg[0]_i_3_n_2 ;
  wire \ram_addr_s_reg[0]_i_3_n_3 ;
  wire \ram_addr_s_reg[0]_i_3_n_4 ;
  wire \ram_addr_s_reg[0]_i_3_n_5 ;
  wire \ram_addr_s_reg[0]_i_3_n_6 ;
  wire \ram_addr_s_reg[0]_i_3_n_7 ;
  wire \ram_addr_s_reg[11]_0 ;
  wire \ram_addr_s_reg[4]_i_1_n_0 ;
  wire \ram_addr_s_reg[4]_i_1_n_1 ;
  wire \ram_addr_s_reg[4]_i_1_n_2 ;
  wire \ram_addr_s_reg[4]_i_1_n_3 ;
  wire \ram_addr_s_reg[4]_i_1_n_4 ;
  wire \ram_addr_s_reg[4]_i_1_n_5 ;
  wire \ram_addr_s_reg[4]_i_1_n_6 ;
  wire \ram_addr_s_reg[4]_i_1_n_7 ;
  wire \ram_addr_s_reg[8]_i_1_n_1 ;
  wire \ram_addr_s_reg[8]_i_1_n_2 ;
  wire \ram_addr_s_reg[8]_i_1_n_3 ;
  wire \ram_addr_s_reg[8]_i_1_n_4 ;
  wire \ram_addr_s_reg[8]_i_1_n_5 ;
  wire \ram_addr_s_reg[8]_i_1_n_6 ;
  wire \ram_addr_s_reg[8]_i_1_n_7 ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire \select_chan_s_reg[0]_0 ;
  wire start_o;
  wire start_s;
  wire \subtop_loop[0].data_subtop_inst_n_17 ;
  wire [3:3]\NLW_ram_addr_s_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \ram_addr_s[0]_i_4 
       (.I0(ram_addr_s_reg[0]),
        .O(\ram_addr_s[0]_i_4_n_0 ));
  FDRE \ram_addr_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ram_addr_s_reg[11]_0 ),
        .D(\ram_addr_s_reg[0]_i_3_n_7 ),
        .Q(ram_addr_s_reg[0]),
        .R(\ram_addr_s_reg[0]_0 ));
  CARRY4 \ram_addr_s_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\ram_addr_s_reg[0]_i_3_n_0 ,\ram_addr_s_reg[0]_i_3_n_1 ,\ram_addr_s_reg[0]_i_3_n_2 ,\ram_addr_s_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ram_addr_s_reg[0]_i_3_n_4 ,\ram_addr_s_reg[0]_i_3_n_5 ,\ram_addr_s_reg[0]_i_3_n_6 ,\ram_addr_s_reg[0]_i_3_n_7 }),
        .S({ram_addr_s_reg[3:1],\ram_addr_s[0]_i_4_n_0 }));
  FDRE \ram_addr_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\ram_addr_s_reg[11]_0 ),
        .D(\ram_addr_s_reg[8]_i_1_n_5 ),
        .Q(ram_addr_s_reg[10]),
        .R(\ram_addr_s_reg[0]_0 ));
  FDRE \ram_addr_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\ram_addr_s_reg[11]_0 ),
        .D(\ram_addr_s_reg[8]_i_1_n_4 ),
        .Q(ram_addr_s_reg[11]),
        .R(\ram_addr_s_reg[0]_0 ));
  FDRE \ram_addr_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ram_addr_s_reg[11]_0 ),
        .D(\ram_addr_s_reg[0]_i_3_n_6 ),
        .Q(ram_addr_s_reg[1]),
        .R(\ram_addr_s_reg[0]_0 ));
  FDRE \ram_addr_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ram_addr_s_reg[11]_0 ),
        .D(\ram_addr_s_reg[0]_i_3_n_5 ),
        .Q(ram_addr_s_reg[2]),
        .R(\ram_addr_s_reg[0]_0 ));
  FDRE \ram_addr_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ram_addr_s_reg[11]_0 ),
        .D(\ram_addr_s_reg[0]_i_3_n_4 ),
        .Q(ram_addr_s_reg[3]),
        .R(\ram_addr_s_reg[0]_0 ));
  FDRE \ram_addr_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ram_addr_s_reg[11]_0 ),
        .D(\ram_addr_s_reg[4]_i_1_n_7 ),
        .Q(ram_addr_s_reg[4]),
        .R(\ram_addr_s_reg[0]_0 ));
  CARRY4 \ram_addr_s_reg[4]_i_1 
       (.CI(\ram_addr_s_reg[0]_i_3_n_0 ),
        .CO({\ram_addr_s_reg[4]_i_1_n_0 ,\ram_addr_s_reg[4]_i_1_n_1 ,\ram_addr_s_reg[4]_i_1_n_2 ,\ram_addr_s_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ram_addr_s_reg[4]_i_1_n_4 ,\ram_addr_s_reg[4]_i_1_n_5 ,\ram_addr_s_reg[4]_i_1_n_6 ,\ram_addr_s_reg[4]_i_1_n_7 }),
        .S(ram_addr_s_reg[7:4]));
  FDRE \ram_addr_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ram_addr_s_reg[11]_0 ),
        .D(\ram_addr_s_reg[4]_i_1_n_6 ),
        .Q(ram_addr_s_reg[5]),
        .R(\ram_addr_s_reg[0]_0 ));
  FDRE \ram_addr_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ram_addr_s_reg[11]_0 ),
        .D(\ram_addr_s_reg[4]_i_1_n_5 ),
        .Q(ram_addr_s_reg[6]),
        .R(\ram_addr_s_reg[0]_0 ));
  FDRE \ram_addr_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ram_addr_s_reg[11]_0 ),
        .D(\ram_addr_s_reg[4]_i_1_n_4 ),
        .Q(ram_addr_s_reg[7]),
        .R(\ram_addr_s_reg[0]_0 ));
  FDRE \ram_addr_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\ram_addr_s_reg[11]_0 ),
        .D(\ram_addr_s_reg[8]_i_1_n_7 ),
        .Q(ram_addr_s_reg[8]),
        .R(\ram_addr_s_reg[0]_0 ));
  CARRY4 \ram_addr_s_reg[8]_i_1 
       (.CI(\ram_addr_s_reg[4]_i_1_n_0 ),
        .CO({\NLW_ram_addr_s_reg[8]_i_1_CO_UNCONNECTED [3],\ram_addr_s_reg[8]_i_1_n_1 ,\ram_addr_s_reg[8]_i_1_n_2 ,\ram_addr_s_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ram_addr_s_reg[8]_i_1_n_4 ,\ram_addr_s_reg[8]_i_1_n_5 ,\ram_addr_s_reg[8]_i_1_n_6 ,\ram_addr_s_reg[8]_i_1_n_7 }),
        .S(ram_addr_s_reg[11:8]));
  FDRE \ram_addr_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\ram_addr_s_reg[11]_0 ),
        .D(\ram_addr_s_reg[8]_i_1_n_6 ),
        .Q(ram_addr_s_reg[9]),
        .R(\ram_addr_s_reg[0]_0 ));
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
  double_dds_dataReal_to_ram_1_0_dataReal_to_ram_subtop__xdcDup__1 \subtop_loop[0].data_subtop_inst 
       (.D(D[15:0]),
        .addr_b(ram_addr_s_reg),
        .addr_s(addr_s),
        .busy_s(busy_s),
        .busy_s_0(busy_s_0[0]),
        .data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_i(data1_i),
        .data1_rst_i(data1_rst_i),
        .\readdata_s_reg[0] (incr_addr_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .start_o(start_o),
        .start_s(start_s),
        .start_s_reg(busy_s_0[1]),
        .sync_stage3_s_reg(\subtop_loop[0].data_subtop_inst_n_17 ));
  double_dds_dataReal_to_ram_1_0_dataReal_to_ram_subtop \subtop_loop[1].data_subtop_inst 
       (.D(D[31:16]),
        .addr_b(ram_addr_s_reg),
        .addr_s(addr_s),
        .busy_s(busy_s),
        .busy_s_0(busy_s_0[0]),
        .data2_clk_i(data2_clk_i),
        .data2_en_i(data2_en_i),
        .data2_i(data2_i),
        .data2_rst_i(data2_rst_i),
        .\readdata_s_reg[31] (incr_addr_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .start_o(start_o),
        .start_s(start_s),
        .sync_stage3_s_reg(busy_s_0[1]));
endmodule

(* ORIG_REF_NAME = "wb_dataReal_to_ram" *) 
module double_dds_dataReal_to_ram_1_0_wb_dataReal_to_ram
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
