// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Jan 29 17:12:57 2021
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/bma/git/fpga_design/redpitaya/double_iq_pid_vco/design/tmp/double_iq_pid_vco.srcs/sources_1/bd/double_iq_pid_vco/ip/double_iq_pid_vco_shifterReal_dyn_0_0/double_iq_pid_vco_shifterReal_dyn_0_0_sim_netlist.v
// Design      : double_iq_pid_vco_shifterReal_dyn_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "double_iq_pid_vco_shifterReal_dyn_0_0,shifterReal_dyn,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "shifterReal_dyn,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module double_iq_pid_vco_shifterReal_dyn_0_0
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
    data_eof_i,
    data_sof_i,
    data_rst_i,
    data_clk_i,
    data_o,
    data_en_o,
    data_eof_o,
    data_sof_o,
    data_rst_o,
    data_clk_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input s00_axi_reset;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data_in DATA" *) input [31:0]data_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data_in DATA_EN" *) input data_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data_in DATA_EOF" *) input data_eof_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data_in DATA_SOF" *) input data_sof_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data_in DATA_RST" *) input data_rst_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data_in DATA_CLK" *) input data_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data_out DATA" *) output [13:0]data_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data_out DATA_EN" *) output data_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data_out DATA_EOF" *) output data_eof_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data_out DATA_SOF" *) output data_sof_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data_out DATA_RST" *) output data_rst_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 data_out DATA_CLK" *) output data_clk_o;

  wire data_clk_i;
  wire data_clk_o;
  wire data_en_i;
  wire data_en_o;
  wire data_eof_i;
  wire data_eof_o;
  wire [31:0]data_i;
  wire [13:0]data_o;
  wire data_rst_i;
  wire data_rst_o;
  wire data_sof_i;
  wire data_sof_o;
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
  (* DATA_IN_SIZE = "32" *) 
  (* DATA_OUT_SIZE = "14" *) 
  (* DEFAULT_SHIFT = "0" *) 
  (* SIGNED_DATA = "TRUE" *) 
  (* id = "1" *) 
  double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn inst
       (.data_clk_i(data_clk_i),
        .data_clk_o(data_clk_o),
        .data_en_i(data_en_i),
        .data_en_o(data_en_o),
        .data_eof_i(data_eof_i),
        .data_eof_o(data_eof_o),
        .data_i(data_i),
        .data_o(data_o),
        .data_rst_i(data_rst_i),
        .data_rst_o(data_rst_o),
        .data_sof_i(data_sof_i),
        .data_sof_o(data_sof_o),
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

(* C_S00_AXI_ADDR_WIDTH = "4" *) (* C_S00_AXI_DATA_WIDTH = "32" *) (* DATA_IN_SIZE = "32" *) 
(* DATA_OUT_SIZE = "14" *) (* DEFAULT_SHIFT = "0" *) (* ORIG_REF_NAME = "shifterReal_dyn" *) 
(* SIGNED_DATA = "TRUE" *) (* id = "1" *) 
module double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn
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
    data_eof_i,
    data_sof_i,
    data_rst_i,
    data_clk_i,
    data_o,
    data_en_o,
    data_eof_o,
    data_sof_o,
    data_rst_o,
    data_clk_o);
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
  input [31:0]data_i;
  input data_en_i;
  input data_eof_i;
  input data_sof_i;
  input data_rst_i;
  input data_clk_i;
  output [13:0]data_o;
  output data_en_o;
  output data_eof_o;
  output data_sof_o;
  output data_rst_o;
  output data_clk_o;

  wire \<const0> ;
  wire [1:1]addr_s;
  wire [13:0]\array_val[0]_0 ;
  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire data_eof_i;
  wire data_eof_o;
  wire [31:0]data_i;
  wire [13:0]data_o;
  wire data_rst_i;
  wire data_sof_i;
  wire data_sof_o;
  wire handle_comm_n_10;
  wire handle_comm_n_11;
  wire handle_comm_n_6;
  wire handle_comm_n_7;
  wire handle_comm_n_8;
  wire handle_comm_n_9;
  wire rd_en_s;
  wire rest_is_zero_next_s;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [30:0]\^s00_axi_rdata ;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire shift_inst1_n_3;
  wire shift_inst1_n_4;
  wire shift_inst1_n_5;
  wire [4:0]shift_val_s;

  assign data_clk_o = data_clk_i;
  assign data_rst_o = data_rst_i;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[30] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[29] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[28] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[27] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[26] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[25] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[24] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[23] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[22] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[21] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[20] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[19] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[18] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[17] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[16] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[15] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[14] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[13] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[12] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[11] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[10] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[9] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[8] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[7] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[6] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[5] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[4:0] = \^s00_axi_rdata [4:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_handcomm handle_comm
       (.D({handle_comm_n_7,handle_comm_n_8,handle_comm_n_9,handle_comm_n_10,handle_comm_n_11}),
        .E(handle_comm_n_6),
        .Q(shift_val_s),
        .addr_s(addr_s),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_wready_reg_0(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_arvalid_0(rd_en_s),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wvalid(s00_axi_wvalid));
  double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_comm shift_comm_inst
       (.D({addr_s,handle_comm_n_7,handle_comm_n_8,handle_comm_n_9,handle_comm_n_10,handle_comm_n_11}),
        .E(handle_comm_n_6),
        .Q(shift_val_s),
        .\readdata_s_reg[31]_0 (rd_en_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata({\^s00_axi_rdata [30],\^s00_axi_rdata [4:0]}),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_wdata(s00_axi_wdata[4:0]));
  double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_logic shift_inst1
       (.D(\array_val[0]_0 ),
        .data_clk_i(data_clk_i),
        .data_en_i(data_en_i),
        .data_en_o(data_en_o),
        .data_eof_i(data_eof_i),
        .data_eof_o(data_eof_o),
        .data_i({data_i[31],data_i[15:12],data_i[8:7],data_i[5:0]}),
        .\data_i[14] (shift_inst1_n_3),
        .data_i_1_sp_1(shift_inst1_n_5),
        .data_i_5_sp_1(shift_inst1_n_4),
        .data_o(data_o),
        .data_rst_i(data_rst_i),
        .data_sof_i(data_sof_i),
        .data_sof_o(data_sof_o),
        .rest_is_zero_next_s(rest_is_zero_next_s));
  double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_synchronizer_vector shift_sync
       (.D(\array_val[0]_0 ),
        .data_clk_i(data_clk_i),
        .data_i(data_i),
        .rest_is_zero_next_s(rest_is_zero_next_s),
        .rest_is_zero_s_reg(shift_inst1_n_3),
        .rest_is_zero_s_reg_0(shift_inst1_n_5),
        .rest_is_zero_s_reg_1(shift_inst1_n_4),
        .s00_axi_aclk(s00_axi_aclk),
        .\sync_vect_stage0_s_reg[4]_0 (shift_val_s));
endmodule

(* ORIG_REF_NAME = "shifterReal_dyn_comm" *) 
module double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_comm
   (Q,
    s00_axi_rdata,
    s00_axi_reset,
    E,
    s00_axi_wdata,
    s00_axi_aclk,
    \readdata_s_reg[31]_0 ,
    D);
  output [4:0]Q;
  output [5:0]s00_axi_rdata;
  input s00_axi_reset;
  input [0:0]E;
  input [4:0]s00_axi_wdata;
  input s00_axi_aclk;
  input [0:0]\readdata_s_reg[31]_0 ;
  input [5:0]D;

  wire [5:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]\readdata_s_reg[31]_0 ;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire [4:0]s00_axi_wdata;

  FDRE \readdata_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(D[0]),
        .Q(s00_axi_rdata[0]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(D[1]),
        .Q(s00_axi_rdata[1]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(D[2]),
        .Q(s00_axi_rdata[2]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(D[5]),
        .Q(s00_axi_rdata[5]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(D[3]),
        .Q(s00_axi_rdata[3]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(D[4]),
        .Q(s00_axi_rdata[4]),
        .R(s00_axi_reset));
  FDRE \shift_val_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(s00_axi_reset));
  FDRE \shift_val_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(s00_axi_reset));
  FDRE \shift_val_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(s00_axi_reset));
  FDRE \shift_val_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(s00_axi_reset));
  FDRE \shift_val_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]),
        .R(s00_axi_reset));
endmodule

(* ORIG_REF_NAME = "shifterReal_dyn_handcomm" *) 
module double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_handcomm
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_rvalid,
    addr_s,
    E,
    D,
    s00_axi_arvalid_0,
    s00_axi_reset,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr,
    Q);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [0:0]addr_s;
  output [0:0]E;
  output [4:0]D;
  output [0:0]s00_axi_arvalid_0;
  input s00_axi_reset;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;
  input [4:0]Q;

  wire [4:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [1:0]addr_reg;
  wire [0:0]addr_s;
  wire [0:0]addr_s_0;
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
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire s00_axi_wvalid;
  wire wr_en_s;
  wire [1:0]write_addr_s;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addr_reg[0]_i_1 
       (.I0(write_addr_s[0]),
        .I1(wr_en_s),
        .I2(read_addr_s[0]),
        .I3(s00_axi_arvalid_0),
        .I4(addr_reg[0]),
        .O(addr_s_0));
  FDRE \addr_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(addr_s_0),
        .Q(addr_reg[0]),
        .R(1'b0));
  FDRE \addr_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(addr_s),
        .Q(addr_reg[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \readdata_s[0]_i_1 
       (.I0(addr_s),
        .I1(addr_s_0),
        .I2(Q[0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hEA)) 
    \readdata_s[1]_i_1 
       (.I0(addr_s),
        .I1(Q[1]),
        .I2(addr_s_0),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \readdata_s[2]_i_1 
       (.I0(addr_s),
        .I1(Q[2]),
        .I2(addr_s_0),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \readdata_s[31]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rvalid),
        .O(s00_axi_arvalid_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \readdata_s[31]_i_2 
       (.I0(write_addr_s[1]),
        .I1(wr_en_s),
        .I2(read_addr_s[1]),
        .I3(s00_axi_arvalid_0),
        .I4(addr_reg[1]),
        .O(addr_s));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \readdata_s[31]_i_3 
       (.I0(axi_awready_reg_0),
        .I1(axi_wready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(wr_en_s));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \readdata_s[3]_i_1 
       (.I0(addr_s),
        .I1(Q[3]),
        .I2(addr_s_0),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \readdata_s[4]_i_1 
       (.I0(addr_s),
        .I1(Q[4]),
        .I2(addr_s_0),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \shift_val_s[4]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(addr_s),
        .I5(addr_s_0),
        .O(E));
endmodule

(* ORIG_REF_NAME = "shifterReal_dyn_logic" *) 
module double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_logic
   (data_en_o,
    data_eof_o,
    data_sof_o,
    \data_i[14] ,
    data_i_5_sp_1,
    data_i_1_sp_1,
    data_o,
    data_rst_i,
    data_en_i,
    rest_is_zero_next_s,
    data_clk_i,
    data_i,
    data_eof_i,
    data_sof_i,
    D);
  output data_en_o;
  output data_eof_o;
  output data_sof_o;
  output \data_i[14] ;
  output data_i_5_sp_1;
  output data_i_1_sp_1;
  output [13:0]data_o;
  input data_rst_i;
  input data_en_i;
  input rest_is_zero_next_s;
  input data_clk_i;
  input [12:0]data_i;
  input data_eof_i;
  input data_sof_i;
  input [13:0]D;

  wire [13:0]D;
  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire data_en_s_i_1_n_0;
  wire data_eof_i;
  wire data_eof_o;
  wire data_eof_s_i_1_n_0;
  wire [12:0]data_i;
  wire \data_i[14] ;
  wire data_i_1_sn_1;
  wire data_i_5_sn_1;
  wire [13:0]data_o;
  wire \data_o[0]_INST_0_i_1_n_0 ;
  wire \data_o[0]_INST_0_n_0 ;
  wire \data_o[0]_INST_0_n_1 ;
  wire \data_o[0]_INST_0_n_2 ;
  wire \data_o[0]_INST_0_n_3 ;
  wire \data_o[12]_INST_0_n_3 ;
  wire \data_o[4]_INST_0_n_0 ;
  wire \data_o[4]_INST_0_n_1 ;
  wire \data_o[4]_INST_0_n_2 ;
  wire \data_o[4]_INST_0_n_3 ;
  wire \data_o[8]_INST_0_n_0 ;
  wire \data_o[8]_INST_0_n_1 ;
  wire \data_o[8]_INST_0_n_2 ;
  wire \data_o[8]_INST_0_n_3 ;
  wire data_rst_i;
  wire [13:0]data_s;
  wire data_sof_i;
  wire data_sof_o;
  wire data_sof_s_i_1_n_0;
  wire neg_val_s;
  wire rest_is_zero_next_s;
  wire rest_is_zero_s;
  wire [3:1]\NLW_data_o[12]_INST_0_CO_UNCONNECTED ;
  wire [3:2]\NLW_data_o[12]_INST_0_O_UNCONNECTED ;

  assign data_i_1_sp_1 = data_i_1_sn_1;
  assign data_i_5_sp_1 = data_i_5_sn_1;
  LUT2 #(
    .INIT(4'h2)) 
    data_en_s_i_1
       (.I0(data_en_i),
        .I1(data_rst_i),
        .O(data_en_s_i_1_n_0));
  FDRE data_en_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_s_i_1_n_0),
        .Q(data_en_o),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    data_eof_s_i_1
       (.I0(data_eof_i),
        .I1(data_en_i),
        .I2(data_rst_i),
        .O(data_eof_s_i_1_n_0));
  FDRE data_eof_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_eof_s_i_1_n_0),
        .Q(data_eof_o),
        .R(1'b0));
  CARRY4 \data_o[0]_INST_0 
       (.CI(1'b0),
        .CO({\data_o[0]_INST_0_n_0 ,\data_o[0]_INST_0_n_1 ,\data_o[0]_INST_0_n_2 ,\data_o[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,data_s[0]}),
        .O(data_o[3:0]),
        .S({data_s[3:1],\data_o[0]_INST_0_i_1_n_0 }));
  LUT3 #(
    .INIT(8'hB4)) 
    \data_o[0]_INST_0_i_1 
       (.I0(rest_is_zero_s),
        .I1(neg_val_s),
        .I2(data_s[0]),
        .O(\data_o[0]_INST_0_i_1_n_0 ));
  CARRY4 \data_o[12]_INST_0 
       (.CI(\data_o[8]_INST_0_n_0 ),
        .CO({\NLW_data_o[12]_INST_0_CO_UNCONNECTED [3:1],\data_o[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_data_o[12]_INST_0_O_UNCONNECTED [3:2],data_o[13:12]}),
        .S({1'b0,1'b0,data_s[13:12]}));
  CARRY4 \data_o[4]_INST_0 
       (.CI(\data_o[0]_INST_0_n_0 ),
        .CO({\data_o[4]_INST_0_n_0 ,\data_o[4]_INST_0_n_1 ,\data_o[4]_INST_0_n_2 ,\data_o[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_o[7:4]),
        .S(data_s[7:4]));
  CARRY4 \data_o[8]_INST_0 
       (.CI(\data_o[4]_INST_0_n_0 ),
        .CO({\data_o[8]_INST_0_n_0 ,\data_o[8]_INST_0_n_1 ,\data_o[8]_INST_0_n_2 ,\data_o[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_o[11:8]),
        .S(data_s[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \data_s_reg[0] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(D[0]),
        .Q(data_s[0]),
        .R(data_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \data_s_reg[10] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(D[10]),
        .Q(data_s[10]),
        .R(data_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \data_s_reg[11] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(D[11]),
        .Q(data_s[11]),
        .R(data_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \data_s_reg[12] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(D[12]),
        .Q(data_s[12]),
        .R(data_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \data_s_reg[13] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(D[13]),
        .Q(data_s[13]),
        .R(data_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \data_s_reg[1] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(D[1]),
        .Q(data_s[1]),
        .R(data_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \data_s_reg[2] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(D[2]),
        .Q(data_s[2]),
        .R(data_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \data_s_reg[3] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(D[3]),
        .Q(data_s[3]),
        .R(data_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \data_s_reg[4] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(D[4]),
        .Q(data_s[4]),
        .R(data_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \data_s_reg[5] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(D[5]),
        .Q(data_s[5]),
        .R(data_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \data_s_reg[6] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(D[6]),
        .Q(data_s[6]),
        .R(data_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \data_s_reg[7] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(D[7]),
        .Q(data_s[7]),
        .R(data_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \data_s_reg[8] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(D[8]),
        .Q(data_s[8]),
        .R(data_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \data_s_reg[9] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(D[9]),
        .Q(data_s[9]),
        .R(data_rst_i));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    data_sof_s_i_1
       (.I0(data_sof_i),
        .I1(data_en_i),
        .I2(data_rst_i),
        .O(data_sof_s_i_1_n_0));
  FDRE data_sof_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_sof_s_i_1_n_0),
        .Q(data_sof_o),
        .R(1'b0));
  FDRE neg_val_s_reg
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(data_i[12]),
        .Q(neg_val_s),
        .R(data_rst_i));
  LUT2 #(
    .INIT(4'hE)) 
    rest_is_zero_s_i_10
       (.I0(data_i[5]),
        .I1(data_i[4]),
        .O(data_i_5_sn_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    rest_is_zero_s_i_14
       (.I0(data_i[10]),
        .I1(data_i[6]),
        .I2(data_i[9]),
        .I3(data_i[11]),
        .I4(data_i[7]),
        .I5(data_i[8]),
        .O(\data_i[14] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rest_is_zero_s_i_9
       (.I0(data_i[1]),
        .I1(data_i[0]),
        .I2(data_i[3]),
        .I3(data_i[2]),
        .O(data_i_1_sn_1));
  FDRE rest_is_zero_s_reg
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(rest_is_zero_next_s),
        .Q(rest_is_zero_s),
        .R(data_rst_i));
endmodule

(* ORIG_REF_NAME = "shifterReal_dyn_synchronizer_vector" *) 
module double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_synchronizer_vector
   (D,
    rest_is_zero_next_s,
    rest_is_zero_s_reg,
    rest_is_zero_s_reg_0,
    rest_is_zero_s_reg_1,
    data_i,
    \sync_vect_stage0_s_reg[4]_0 ,
    s00_axi_aclk,
    data_clk_i);
  output [13:0]D;
  output rest_is_zero_next_s;
  input rest_is_zero_s_reg;
  input rest_is_zero_s_reg_0;
  input rest_is_zero_s_reg_1;
  input [31:0]data_i;
  input [4:0]\sync_vect_stage0_s_reg[4]_0 ;
  input s00_axi_aclk;
  input data_clk_i;

  wire [13:0]D;
  wire data_clk_i;
  wire [31:0]data_i;
  wire \data_s[0]_i_2_n_0 ;
  wire \data_s[0]_i_3_n_0 ;
  wire \data_s[0]_i_4_n_0 ;
  wire \data_s[10]_i_2_n_0 ;
  wire \data_s[10]_i_3_n_0 ;
  wire \data_s[10]_i_4_n_0 ;
  wire \data_s[10]_i_5_n_0 ;
  wire \data_s[10]_i_6_n_0 ;
  wire \data_s[10]_i_7_n_0 ;
  wire \data_s[11]_i_2_n_0 ;
  wire \data_s[11]_i_3_n_0 ;
  wire \data_s[11]_i_4_n_0 ;
  wire \data_s[11]_i_5_n_0 ;
  wire \data_s[11]_i_6_n_0 ;
  wire \data_s[11]_i_7_n_0 ;
  wire \data_s[12]_i_2_n_0 ;
  wire \data_s[12]_i_3_n_0 ;
  wire \data_s[12]_i_4_n_0 ;
  wire \data_s[12]_i_5_n_0 ;
  wire \data_s[12]_i_6_n_0 ;
  wire \data_s[12]_i_7_n_0 ;
  wire \data_s[12]_i_8_n_0 ;
  wire \data_s[12]_i_9_n_0 ;
  wire \data_s[13]_i_2_n_0 ;
  wire \data_s[13]_i_3_n_0 ;
  wire \data_s[13]_i_4_n_0 ;
  wire \data_s[13]_i_5_n_0 ;
  wire \data_s[13]_i_6_n_0 ;
  wire \data_s[13]_i_7_n_0 ;
  wire \data_s[13]_i_8_n_0 ;
  wire \data_s[13]_i_9_n_0 ;
  wire \data_s[1]_i_2_n_0 ;
  wire \data_s[1]_i_3_n_0 ;
  wire \data_s[1]_i_4_n_0 ;
  wire \data_s[2]_i_2_n_0 ;
  wire \data_s[2]_i_3_n_0 ;
  wire \data_s[2]_i_4_n_0 ;
  wire \data_s[3]_i_2_n_0 ;
  wire \data_s[3]_i_3_n_0 ;
  wire \data_s[3]_i_4_n_0 ;
  wire \data_s[4]_i_2_n_0 ;
  wire \data_s[4]_i_3_n_0 ;
  wire \data_s[4]_i_4_n_0 ;
  wire \data_s[5]_i_2_n_0 ;
  wire \data_s[5]_i_3_n_0 ;
  wire \data_s[5]_i_4_n_0 ;
  wire \data_s[6]_i_2_n_0 ;
  wire \data_s[6]_i_3_n_0 ;
  wire \data_s[6]_i_4_n_0 ;
  wire \data_s[7]_i_2_n_0 ;
  wire \data_s[7]_i_3_n_0 ;
  wire \data_s[7]_i_4_n_0 ;
  wire \data_s[8]_i_2_n_0 ;
  wire \data_s[8]_i_3_n_0 ;
  wire \data_s[8]_i_4_n_0 ;
  wire \data_s[9]_i_2_n_0 ;
  wire \data_s[9]_i_3_n_0 ;
  wire \data_s[9]_i_4_n_0 ;
  (* async_reg = "true" *) wire [4:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [4:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [4:0]\flipflops_vect[2]_2 ;
  wire rest_is_zero_next_s;
  wire rest_is_zero_s_i_11_n_0;
  wire rest_is_zero_s_i_12_n_0;
  wire rest_is_zero_s_i_13_n_0;
  wire rest_is_zero_s_i_15_n_0;
  wire rest_is_zero_s_i_2_n_0;
  wire rest_is_zero_s_i_3_n_0;
  wire rest_is_zero_s_i_4_n_0;
  wire rest_is_zero_s_i_5_n_0;
  wire rest_is_zero_s_i_6_n_0;
  wire rest_is_zero_s_i_7_n_0;
  wire rest_is_zero_s_i_8_n_0;
  wire rest_is_zero_s_reg;
  wire rest_is_zero_s_reg_0;
  wire rest_is_zero_s_reg_1;
  wire s00_axi_aclk;
  wire [4:0]sync_vect_stage0_s;
  wire [4:0]\sync_vect_stage0_s_reg[4]_0 ;

  LUT5 #(
    .INIT(32'h10FF1000)) 
    \data_s[0]_i_1 
       (.I0(\flipflops_vect[2]_2 [2]),
        .I1(\flipflops_vect[2]_2 [3]),
        .I2(\data_s[0]_i_2_n_0 ),
        .I3(\flipflops_vect[2]_2 [4]),
        .I4(\data_s[0]_i_3_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_s[0]_i_2 
       (.I0(data_i[18]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(data_i[17]),
        .I3(\flipflops_vect[2]_2 [0]),
        .I4(data_i[16]),
        .O(\data_s[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[0]_i_3 
       (.I0(\data_s[12]_i_9_n_0 ),
        .I1(\data_s[8]_i_4_n_0 ),
        .I2(\flipflops_vect[2]_2 [3]),
        .I3(\data_s[4]_i_4_n_0 ),
        .I4(\flipflops_vect[2]_2 [2]),
        .I5(\data_s[0]_i_4_n_0 ),
        .O(\data_s[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[0]_i_4 
       (.I0(data_i[3]),
        .I1(data_i[2]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[1]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[0]),
        .O(\data_s[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[10]_i_2 
       (.I0(\data_s[10]_i_4_n_0 ),
        .I1(\data_s[10]_i_5_n_0 ),
        .I2(\flipflops_vect[2]_2 [3]),
        .I3(\data_s[10]_i_6_n_0 ),
        .I4(\flipflops_vect[2]_2 [2]),
        .I5(\data_s[10]_i_7_n_0 ),
        .O(\data_s[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \data_s[10]_i_3 
       (.I0(\flipflops_vect[2]_2 [3]),
        .I1(data_i[28]),
        .I2(\flipflops_vect[2]_2 [0]),
        .I3(\flipflops_vect[2]_2 [1]),
        .I4(\data_s[12]_i_5_n_0 ),
        .I5(\flipflops_vect[2]_2 [2]),
        .O(\data_s[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[10]_i_4 
       (.I0(data_i[25]),
        .I1(data_i[24]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[23]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[22]),
        .O(\data_s[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[10]_i_5 
       (.I0(data_i[21]),
        .I1(data_i[20]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[19]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[18]),
        .O(\data_s[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[10]_i_6 
       (.I0(data_i[17]),
        .I1(data_i[16]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[15]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[14]),
        .O(\data_s[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[10]_i_7 
       (.I0(data_i[13]),
        .I1(data_i[12]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[11]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[10]),
        .O(\data_s[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[11]_i_2 
       (.I0(\data_s[11]_i_4_n_0 ),
        .I1(\data_s[11]_i_5_n_0 ),
        .I2(\flipflops_vect[2]_2 [3]),
        .I3(\data_s[11]_i_6_n_0 ),
        .I4(\flipflops_vect[2]_2 [2]),
        .I5(\data_s[11]_i_7_n_0 ),
        .O(\data_s[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \data_s[11]_i_3 
       (.I0(\flipflops_vect[2]_2 [3]),
        .I1(data_i[29]),
        .I2(\flipflops_vect[2]_2 [0]),
        .I3(\flipflops_vect[2]_2 [1]),
        .I4(\data_s[13]_i_5_n_0 ),
        .I5(\flipflops_vect[2]_2 [2]),
        .O(\data_s[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[11]_i_4 
       (.I0(data_i[26]),
        .I1(data_i[25]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[24]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[23]),
        .O(\data_s[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[11]_i_5 
       (.I0(data_i[22]),
        .I1(data_i[21]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[20]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[19]),
        .O(\data_s[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[11]_i_6 
       (.I0(data_i[18]),
        .I1(data_i[17]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[16]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[15]),
        .O(\data_s[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[11]_i_7 
       (.I0(data_i[14]),
        .I1(data_i[13]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[12]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[11]),
        .O(\data_s[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00AA0FCC00AA00CC)) 
    \data_s[12]_i_1 
       (.I0(\data_s[12]_i_2_n_0 ),
        .I1(\data_s[12]_i_3_n_0 ),
        .I2(\flipflops_vect[2]_2 [2]),
        .I3(\flipflops_vect[2]_2 [4]),
        .I4(\flipflops_vect[2]_2 [3]),
        .I5(\data_s[12]_i_4_n_0 ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_s[12]_i_2 
       (.I0(\data_s[12]_i_5_n_0 ),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(\data_s[12]_i_6_n_0 ),
        .I3(\flipflops_vect[2]_2 [2]),
        .I4(\data_s[12]_i_7_n_0 ),
        .O(\data_s[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_s[12]_i_3 
       (.I0(\data_s[12]_i_8_n_0 ),
        .I1(\flipflops_vect[2]_2 [2]),
        .I2(\data_s[12]_i_9_n_0 ),
        .O(\data_s[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_s[12]_i_4 
       (.I0(data_i[30]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(data_i[29]),
        .I3(\flipflops_vect[2]_2 [0]),
        .I4(data_i[28]),
        .O(\data_s[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_s[12]_i_5 
       (.I0(data_i[27]),
        .I1(\flipflops_vect[2]_2 [0]),
        .I2(data_i[26]),
        .O(\data_s[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_s[12]_i_6 
       (.I0(data_i[25]),
        .I1(\flipflops_vect[2]_2 [0]),
        .I2(data_i[24]),
        .O(\data_s[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[12]_i_7 
       (.I0(data_i[23]),
        .I1(data_i[22]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[21]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[20]),
        .O(\data_s[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[12]_i_8 
       (.I0(data_i[19]),
        .I1(data_i[18]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[17]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[16]),
        .O(\data_s[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[12]_i_9 
       (.I0(data_i[15]),
        .I1(data_i[14]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[13]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[12]),
        .O(\data_s[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00AA0FCC00AA00CC)) 
    \data_s[13]_i_1 
       (.I0(\data_s[13]_i_2_n_0 ),
        .I1(\data_s[13]_i_3_n_0 ),
        .I2(\flipflops_vect[2]_2 [2]),
        .I3(\flipflops_vect[2]_2 [4]),
        .I4(\flipflops_vect[2]_2 [3]),
        .I5(\data_s[13]_i_4_n_0 ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_s[13]_i_2 
       (.I0(\data_s[13]_i_5_n_0 ),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(\data_s[13]_i_6_n_0 ),
        .I3(\flipflops_vect[2]_2 [2]),
        .I4(\data_s[13]_i_7_n_0 ),
        .O(\data_s[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_s[13]_i_3 
       (.I0(\data_s[13]_i_8_n_0 ),
        .I1(\flipflops_vect[2]_2 [2]),
        .I2(\data_s[13]_i_9_n_0 ),
        .O(\data_s[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_s[13]_i_4 
       (.I0(data_i[31]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(data_i[30]),
        .I3(\flipflops_vect[2]_2 [0]),
        .I4(data_i[29]),
        .O(\data_s[13]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_s[13]_i_5 
       (.I0(data_i[28]),
        .I1(\flipflops_vect[2]_2 [0]),
        .I2(data_i[27]),
        .O(\data_s[13]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_s[13]_i_6 
       (.I0(data_i[26]),
        .I1(\flipflops_vect[2]_2 [0]),
        .I2(data_i[25]),
        .O(\data_s[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[13]_i_7 
       (.I0(data_i[24]),
        .I1(data_i[23]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[22]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[21]),
        .O(\data_s[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[13]_i_8 
       (.I0(data_i[20]),
        .I1(data_i[19]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[18]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[17]),
        .O(\data_s[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[13]_i_9 
       (.I0(data_i[16]),
        .I1(data_i[15]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[14]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[13]),
        .O(\data_s[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \data_s[1]_i_1 
       (.I0(\flipflops_vect[2]_2 [2]),
        .I1(\flipflops_vect[2]_2 [3]),
        .I2(\data_s[1]_i_2_n_0 ),
        .I3(\flipflops_vect[2]_2 [4]),
        .I4(\data_s[1]_i_3_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_s[1]_i_2 
       (.I0(data_i[19]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(data_i[18]),
        .I3(\flipflops_vect[2]_2 [0]),
        .I4(data_i[17]),
        .O(\data_s[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[1]_i_3 
       (.I0(\data_s[13]_i_9_n_0 ),
        .I1(\data_s[9]_i_4_n_0 ),
        .I2(\flipflops_vect[2]_2 [3]),
        .I3(\data_s[5]_i_4_n_0 ),
        .I4(\flipflops_vect[2]_2 [2]),
        .I5(\data_s[1]_i_4_n_0 ),
        .O(\data_s[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[1]_i_4 
       (.I0(data_i[4]),
        .I1(data_i[3]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[2]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[1]),
        .O(\data_s[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \data_s[2]_i_1 
       (.I0(\flipflops_vect[2]_2 [2]),
        .I1(\flipflops_vect[2]_2 [3]),
        .I2(\data_s[2]_i_2_n_0 ),
        .I3(\flipflops_vect[2]_2 [4]),
        .I4(\data_s[2]_i_3_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_s[2]_i_2 
       (.I0(data_i[20]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(data_i[19]),
        .I3(\flipflops_vect[2]_2 [0]),
        .I4(data_i[18]),
        .O(\data_s[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[2]_i_3 
       (.I0(\data_s[10]_i_6_n_0 ),
        .I1(\data_s[10]_i_7_n_0 ),
        .I2(\flipflops_vect[2]_2 [3]),
        .I3(\data_s[6]_i_4_n_0 ),
        .I4(\flipflops_vect[2]_2 [2]),
        .I5(\data_s[2]_i_4_n_0 ),
        .O(\data_s[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[2]_i_4 
       (.I0(data_i[5]),
        .I1(data_i[4]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[3]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[2]),
        .O(\data_s[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \data_s[3]_i_1 
       (.I0(\flipflops_vect[2]_2 [2]),
        .I1(\flipflops_vect[2]_2 [3]),
        .I2(\data_s[3]_i_2_n_0 ),
        .I3(\flipflops_vect[2]_2 [4]),
        .I4(\data_s[3]_i_3_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_s[3]_i_2 
       (.I0(data_i[21]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(data_i[20]),
        .I3(\flipflops_vect[2]_2 [0]),
        .I4(data_i[19]),
        .O(\data_s[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[3]_i_3 
       (.I0(\data_s[11]_i_6_n_0 ),
        .I1(\data_s[11]_i_7_n_0 ),
        .I2(\flipflops_vect[2]_2 [3]),
        .I3(\data_s[7]_i_4_n_0 ),
        .I4(\flipflops_vect[2]_2 [2]),
        .I5(\data_s[3]_i_4_n_0 ),
        .O(\data_s[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[3]_i_4 
       (.I0(data_i[6]),
        .I1(data_i[5]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[4]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[3]),
        .O(\data_s[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \data_s[4]_i_1 
       (.I0(\flipflops_vect[2]_2 [2]),
        .I1(\flipflops_vect[2]_2 [3]),
        .I2(\data_s[4]_i_2_n_0 ),
        .I3(\flipflops_vect[2]_2 [4]),
        .I4(\data_s[4]_i_3_n_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_s[4]_i_2 
       (.I0(data_i[22]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(data_i[21]),
        .I3(\flipflops_vect[2]_2 [0]),
        .I4(data_i[20]),
        .O(\data_s[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[4]_i_3 
       (.I0(\data_s[12]_i_8_n_0 ),
        .I1(\data_s[12]_i_9_n_0 ),
        .I2(\flipflops_vect[2]_2 [3]),
        .I3(\data_s[8]_i_4_n_0 ),
        .I4(\flipflops_vect[2]_2 [2]),
        .I5(\data_s[4]_i_4_n_0 ),
        .O(\data_s[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[4]_i_4 
       (.I0(data_i[7]),
        .I1(data_i[6]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[5]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[4]),
        .O(\data_s[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \data_s[5]_i_1 
       (.I0(\flipflops_vect[2]_2 [2]),
        .I1(\flipflops_vect[2]_2 [3]),
        .I2(\data_s[5]_i_2_n_0 ),
        .I3(\flipflops_vect[2]_2 [4]),
        .I4(\data_s[5]_i_3_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_s[5]_i_2 
       (.I0(data_i[23]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(data_i[22]),
        .I3(\flipflops_vect[2]_2 [0]),
        .I4(data_i[21]),
        .O(\data_s[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[5]_i_3 
       (.I0(\data_s[13]_i_8_n_0 ),
        .I1(\data_s[13]_i_9_n_0 ),
        .I2(\flipflops_vect[2]_2 [3]),
        .I3(\data_s[9]_i_4_n_0 ),
        .I4(\flipflops_vect[2]_2 [2]),
        .I5(\data_s[5]_i_4_n_0 ),
        .O(\data_s[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[5]_i_4 
       (.I0(data_i[8]),
        .I1(data_i[7]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[6]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[5]),
        .O(\data_s[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \data_s[6]_i_1 
       (.I0(\flipflops_vect[2]_2 [2]),
        .I1(\flipflops_vect[2]_2 [3]),
        .I2(\data_s[6]_i_2_n_0 ),
        .I3(\flipflops_vect[2]_2 [4]),
        .I4(\data_s[6]_i_3_n_0 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_s[6]_i_2 
       (.I0(data_i[24]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(data_i[23]),
        .I3(\flipflops_vect[2]_2 [0]),
        .I4(data_i[22]),
        .O(\data_s[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[6]_i_3 
       (.I0(\data_s[10]_i_5_n_0 ),
        .I1(\data_s[10]_i_6_n_0 ),
        .I2(\flipflops_vect[2]_2 [3]),
        .I3(\data_s[10]_i_7_n_0 ),
        .I4(\flipflops_vect[2]_2 [2]),
        .I5(\data_s[6]_i_4_n_0 ),
        .O(\data_s[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[6]_i_4 
       (.I0(data_i[9]),
        .I1(data_i[8]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[7]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[6]),
        .O(\data_s[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \data_s[7]_i_1 
       (.I0(\flipflops_vect[2]_2 [2]),
        .I1(\flipflops_vect[2]_2 [3]),
        .I2(\data_s[7]_i_2_n_0 ),
        .I3(\flipflops_vect[2]_2 [4]),
        .I4(\data_s[7]_i_3_n_0 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_s[7]_i_2 
       (.I0(data_i[25]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(data_i[24]),
        .I3(\flipflops_vect[2]_2 [0]),
        .I4(data_i[23]),
        .O(\data_s[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[7]_i_3 
       (.I0(\data_s[11]_i_5_n_0 ),
        .I1(\data_s[11]_i_6_n_0 ),
        .I2(\flipflops_vect[2]_2 [3]),
        .I3(\data_s[11]_i_7_n_0 ),
        .I4(\flipflops_vect[2]_2 [2]),
        .I5(\data_s[7]_i_4_n_0 ),
        .O(\data_s[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[7]_i_4 
       (.I0(data_i[10]),
        .I1(data_i[9]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[8]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[7]),
        .O(\data_s[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \data_s[8]_i_1 
       (.I0(\flipflops_vect[2]_2 [2]),
        .I1(\flipflops_vect[2]_2 [3]),
        .I2(\data_s[8]_i_2_n_0 ),
        .I3(\flipflops_vect[2]_2 [4]),
        .I4(\data_s[8]_i_3_n_0 ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_s[8]_i_2 
       (.I0(data_i[26]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(data_i[25]),
        .I3(\flipflops_vect[2]_2 [0]),
        .I4(data_i[24]),
        .O(\data_s[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[8]_i_3 
       (.I0(\data_s[12]_i_7_n_0 ),
        .I1(\data_s[12]_i_8_n_0 ),
        .I2(\flipflops_vect[2]_2 [3]),
        .I3(\data_s[12]_i_9_n_0 ),
        .I4(\flipflops_vect[2]_2 [2]),
        .I5(\data_s[8]_i_4_n_0 ),
        .O(\data_s[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[8]_i_4 
       (.I0(data_i[11]),
        .I1(data_i[10]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[9]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[8]),
        .O(\data_s[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \data_s[9]_i_1 
       (.I0(\flipflops_vect[2]_2 [2]),
        .I1(\flipflops_vect[2]_2 [3]),
        .I2(\data_s[9]_i_2_n_0 ),
        .I3(\flipflops_vect[2]_2 [4]),
        .I4(\data_s[9]_i_3_n_0 ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_s[9]_i_2 
       (.I0(data_i[27]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(data_i[26]),
        .I3(\flipflops_vect[2]_2 [0]),
        .I4(data_i[25]),
        .O(\data_s[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[9]_i_3 
       (.I0(\data_s[13]_i_7_n_0 ),
        .I1(\data_s[13]_i_8_n_0 ),
        .I2(\flipflops_vect[2]_2 [3]),
        .I3(\data_s[13]_i_9_n_0 ),
        .I4(\flipflops_vect[2]_2 [2]),
        .I5(\data_s[9]_i_4_n_0 ),
        .O(\data_s[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_s[9]_i_4 
       (.I0(data_i[12]),
        .I1(data_i[11]),
        .I2(\flipflops_vect[2]_2 [1]),
        .I3(data_i[10]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[9]),
        .O(\data_s[9]_i_4_n_0 ));
  MUXF7 \data_s_reg[10]_i_1 
       (.I0(\data_s[10]_i_2_n_0 ),
        .I1(\data_s[10]_i_3_n_0 ),
        .O(D[10]),
        .S(\flipflops_vect[2]_2 [4]));
  MUXF7 \data_s_reg[11]_i_1 
       (.I0(\data_s[11]_i_2_n_0 ),
        .I1(\data_s[11]_i_3_n_0 ),
        .O(D[11]),
        .S(\flipflops_vect[2]_2 [4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[0]),
        .Q(\flipflops_vect[0]_0 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[1]),
        .Q(\flipflops_vect[0]_0 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][2] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[2]),
        .Q(\flipflops_vect[0]_0 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][3] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[3]),
        .Q(\flipflops_vect[0]_0 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][4] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[4]),
        .Q(\flipflops_vect[0]_0 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [0]),
        .Q(\flipflops_vect[1]_1 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [1]),
        .Q(\flipflops_vect[1]_1 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][2] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [2]),
        .Q(\flipflops_vect[1]_1 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][3] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [3]),
        .Q(\flipflops_vect[1]_1 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][4] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [4]),
        .Q(\flipflops_vect[1]_1 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [0]),
        .Q(\flipflops_vect[2]_2 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [1]),
        .Q(\flipflops_vect[2]_2 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][2] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [2]),
        .Q(\flipflops_vect[2]_2 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][3] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [3]),
        .Q(\flipflops_vect[2]_2 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][4] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [4]),
        .Q(\flipflops_vect[2]_2 [4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001F11)) 
    rest_is_zero_s_i_1
       (.I0(rest_is_zero_s_i_2_n_0),
        .I1(\flipflops_vect[2]_2 [3]),
        .I2(rest_is_zero_s_i_3_n_0),
        .I3(rest_is_zero_s_i_4_n_0),
        .I4(\flipflops_vect[2]_2 [4]),
        .I5(rest_is_zero_s_i_5_n_0),
        .O(rest_is_zero_next_s));
  LUT6 #(
    .INIT(64'hAEAEACA8AEAAACA8)) 
    rest_is_zero_s_i_11
       (.I0(data_i[8]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(\flipflops_vect[2]_2 [2]),
        .I3(data_i[9]),
        .I4(\flipflops_vect[2]_2 [0]),
        .I5(data_i[10]),
        .O(rest_is_zero_s_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFE)) 
    rest_is_zero_s_i_12
       (.I0(data_i[10]),
        .I1(data_i[9]),
        .I2(data_i[11]),
        .I3(\flipflops_vect[2]_2 [0]),
        .I4(\flipflops_vect[2]_2 [1]),
        .I5(data_i[12]),
        .O(rest_is_zero_s_i_12_n_0));
  LUT4 #(
    .INIT(16'h015F)) 
    rest_is_zero_s_i_13
       (.I0(data_i[16]),
        .I1(data_i[17]),
        .I2(\flipflops_vect[2]_2 [0]),
        .I3(\flipflops_vect[2]_2 [1]),
        .O(rest_is_zero_s_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    rest_is_zero_s_i_15
       (.I0(data_i[10]),
        .I1(data_i[9]),
        .I2(data_i[11]),
        .I3(\flipflops_vect[2]_2 [3]),
        .I4(\flipflops_vect[2]_2 [4]),
        .I5(\flipflops_vect[2]_2 [2]),
        .O(rest_is_zero_s_i_15_n_0));
  LUT6 #(
    .INIT(64'hAAAA0080AAAAAAAA)) 
    rest_is_zero_s_i_2
       (.I0(rest_is_zero_s_i_6_n_0),
        .I1(\flipflops_vect[2]_2 [0]),
        .I2(data_i[4]),
        .I3(\flipflops_vect[2]_2 [1]),
        .I4(rest_is_zero_s_i_7_n_0),
        .I5(rest_is_zero_s_i_8_n_0),
        .O(rest_is_zero_s_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    rest_is_zero_s_i_3
       (.I0(data_i[7]),
        .I1(\flipflops_vect[2]_2 [3]),
        .I2(rest_is_zero_s_reg_0),
        .I3(rest_is_zero_s_reg_1),
        .I4(data_i[6]),
        .I5(rest_is_zero_s_i_11_n_0),
        .O(rest_is_zero_s_i_3_n_0));
  LUT6 #(
    .INIT(64'h01115555FFFFFFFF)) 
    rest_is_zero_s_i_4
       (.I0(rest_is_zero_s_i_12_n_0),
        .I1(data_i[13]),
        .I2(\flipflops_vect[2]_2 [0]),
        .I3(data_i[14]),
        .I4(\flipflops_vect[2]_2 [1]),
        .I5(\flipflops_vect[2]_2 [2]),
        .O(rest_is_zero_s_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    rest_is_zero_s_i_5
       (.I0(rest_is_zero_s_i_13_n_0),
        .I1(rest_is_zero_s_reg),
        .I2(rest_is_zero_s_i_15_n_0),
        .I3(rest_is_zero_s_reg_0),
        .I4(rest_is_zero_s_reg_1),
        .I5(data_i[6]),
        .O(rest_is_zero_s_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFCFFF0F0F0)) 
    rest_is_zero_s_i_6
       (.I0(data_i[2]),
        .I1(data_i[1]),
        .I2(\flipflops_vect[2]_2 [2]),
        .I3(\flipflops_vect[2]_2 [0]),
        .I4(data_i[0]),
        .I5(\flipflops_vect[2]_2 [1]),
        .O(rest_is_zero_s_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    rest_is_zero_s_i_7
       (.I0(data_i[2]),
        .I1(data_i[3]),
        .I2(data_i[0]),
        .I3(data_i[1]),
        .I4(\flipflops_vect[2]_2 [2]),
        .O(rest_is_zero_s_i_7_n_0));
  LUT5 #(
    .INIT(32'h0111FFFF)) 
    rest_is_zero_s_i_8
       (.I0(data_i[5]),
        .I1(data_i[4]),
        .I2(\flipflops_vect[2]_2 [0]),
        .I3(data_i[6]),
        .I4(\flipflops_vect[2]_2 [1]),
        .O(rest_is_zero_s_i_8_n_0));
  FDRE \sync_vect_stage0_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sync_vect_stage0_s_reg[4]_0 [0]),
        .Q(sync_vect_stage0_s[0]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sync_vect_stage0_s_reg[4]_0 [1]),
        .Q(sync_vect_stage0_s[1]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sync_vect_stage0_s_reg[4]_0 [2]),
        .Q(sync_vect_stage0_s[2]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sync_vect_stage0_s_reg[4]_0 [3]),
        .Q(sync_vect_stage0_s[3]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sync_vect_stage0_s_reg[4]_0 [4]),
        .Q(sync_vect_stage0_s[4]),
        .R(1'b0));
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
