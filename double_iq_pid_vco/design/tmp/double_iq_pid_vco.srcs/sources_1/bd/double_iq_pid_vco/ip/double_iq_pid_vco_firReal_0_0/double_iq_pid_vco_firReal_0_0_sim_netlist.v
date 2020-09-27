// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri May 15 18:33:59 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/bma/git/github/oscimpDigital/app/redpitaya/double_iq_pid_vco/design/tmp/double_iq_pid_vco.srcs/sources_1/bd/double_iq_pid_vco/ip/double_iq_pid_vco_firReal_0_0/double_iq_pid_vco_firReal_0_0_sim_netlist.v
// Design      : double_iq_pid_vco_firReal_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "double_iq_pid_vco_firReal_0_0,firReal,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "firReal,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module double_iq_pid_vco_firReal_0_0
   (data_i,
    data_en_i,
    data_clk_i,
    data_rst_i,
    data_o,
    data_en_o,
    data_clk_o,
    data_rst_o,
    tick_o,
    s00_axi_aclk,
    s00_axi_reset,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA" *) input [13:0]data_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_EN" *) input data_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_CLK" *) input data_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_RST" *) input data_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA" *) output [31:0]data_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EN" *) output data_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_CLK" *) output data_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_RST" *) output data_rst_o;
  output tick_o;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_signal_clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_signal_clock, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_signal_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_signal_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input s00_axi_reset;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire data_clk_i;
  wire data_en_i;
  wire [13:0]data_i;
  wire [31:0]data_o;
  wire data_rst_i;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [28:0]\^s00_axi_rdata ;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire tick_o;

  assign data_clk_o = data_clk_i;
  assign data_en_o = tick_o;
  assign data_rst_o = data_rst_i;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[25] = \<const0> ;
  assign s00_axi_rdata[24] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[23] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[20] = \<const0> ;
  assign s00_axi_rdata[19] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[18] = \<const0> ;
  assign s00_axi_rdata[17] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[16] = \<const0> ;
  assign s00_axi_rdata[15] = \<const0> ;
  assign s00_axi_rdata[14] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[13] = \<const0> ;
  assign s00_axi_rdata[12] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[11] = \<const0> ;
  assign s00_axi_rdata[10] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[9] = \<const0> ;
  assign s00_axi_rdata[8] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[7] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[6] = \<const0> ;
  assign s00_axi_rdata[5] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[4] = \<const0> ;
  assign s00_axi_rdata[3] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[2] = \<const0> ;
  assign s00_axi_rdata[1] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[0] = \^s00_axi_rdata [0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  double_iq_pid_vco_firReal_0_0_firReal U0
       (.data_clk_i(data_clk_i),
        .data_en_i(data_en_i),
        .data_i(data_i),
        .data_o(data_o),
        .data_rst_i(data_rst_i),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata({\^s00_axi_rdata [28],\^s00_axi_rdata [0]}),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[15:0]),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid),
        .tick_o(tick_o));
endmodule

(* ORIG_REF_NAME = "firReal" *) 
module double_iq_pid_vco_firReal_0_0_firReal
   (s00_axi_wready,
    s00_axi_awready,
    s00_axi_rvalid,
    s00_axi_rdata,
    data_o,
    tick_o,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    data_clk_i,
    s00_axi_reset,
    s00_axi_wdata,
    data_rst_i,
    data_en_i,
    data_i,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_wready;
  output s00_axi_awready;
  output s00_axi_rvalid;
  output [1:0]s00_axi_rdata;
  output [31:0]data_o;
  output tick_o;
  output s00_axi_arready;
  output s00_axi_bvalid;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input data_clk_i;
  input s00_axi_reset;
  input [15:0]s00_axi_wdata;
  input data_rst_i;
  input data_en_i;
  input [13:0]data_i;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [1:0]addr_s;
  wire [4:0]coeff_addr_s;
  wire [4:0]coeff_addr_uns_s;
  wire coeff_en_s;
  wire [15:0]coeff_val_s;
  wire coeff_val_s_0;
  wire data_clk_i;
  wire data_en_i;
  wire [13:0]data_i;
  wire [31:0]data_o;
  wire data_rst_i;
  wire handle_comm_n_10;
  wire handle_comm_n_11;
  wire handle_comm_n_12;
  wire handle_comm_n_13;
  wire handle_comm_n_14;
  wire handle_comm_n_4;
  wire handle_comm_n_7;
  wire handle_comm_n_9;
  wire read_en_s;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [1:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [15:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire tick_o;

  double_iq_pid_vco_firReal_0_0_firReal_axi firReal_axi_inst
       (.D(handle_comm_n_7),
        .E(coeff_val_s_0),
        .Q(coeff_addr_uns_s),
        .addr_s(addr_s),
        .\coeff_addr_s_reg[0]_0 (handle_comm_n_4),
        .\coeff_addr_s_reg[4]_0 (coeff_addr_s),
        .\coeff_addr_s_reg[4]_1 ({handle_comm_n_10,handle_comm_n_11,handle_comm_n_12,handle_comm_n_13,handle_comm_n_14}),
        .coeff_en_s(coeff_en_s),
        .coeff_en_s_reg_0(handle_comm_n_9),
        .\coeff_val_s_reg[15]_0 (coeff_val_s),
        .read_en_s(read_en_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata));
  double_iq_pid_vco_firReal_0_0_firReal_top fir_top_inst
       (.coeff_en_s(coeff_en_s),
        .data_clk_i(data_clk_i),
        .data_en_i(data_en_i),
        .data_i(data_i),
        .data_o(data_o),
        .data_rst_i(data_rst_i),
        .mem_reg(coeff_addr_s),
        .mem_reg_0(coeff_val_s),
        .s00_axi_aclk(s00_axi_aclk),
        .tick_o(tick_o));
  double_iq_pid_vco_firReal_0_0_firReal_handCom handle_comm
       (.D(handle_comm_n_7),
        .E(coeff_val_s_0),
        .Q(coeff_addr_uns_s),
        .addr_s(addr_s),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_wready_reg_0(s00_axi_wready),
        .\coeff_addr_uns_s_reg[4] ({handle_comm_n_10,handle_comm_n_11,handle_comm_n_12,handle_comm_n_13,handle_comm_n_14}),
        .read_en_s(read_en_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_awvalid_0(handle_comm_n_4),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_reset_0(handle_comm_n_9),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "firReal_axi" *) 
module double_iq_pid_vco_firReal_0_0_firReal_axi
   (s00_axi_rvalid,
    coeff_en_s,
    Q,
    s00_axi_rdata,
    \coeff_val_s_reg[15]_0 ,
    \coeff_addr_s_reg[4]_0 ,
    s00_axi_reset,
    read_en_s,
    s00_axi_aclk,
    coeff_en_s_reg_0,
    addr_s,
    E,
    s00_axi_wdata,
    \coeff_addr_s_reg[0]_0 ,
    D,
    \coeff_addr_s_reg[4]_1 );
  output s00_axi_rvalid;
  output coeff_en_s;
  output [4:0]Q;
  output [1:0]s00_axi_rdata;
  output [15:0]\coeff_val_s_reg[15]_0 ;
  output [4:0]\coeff_addr_s_reg[4]_0 ;
  input s00_axi_reset;
  input read_en_s;
  input s00_axi_aclk;
  input coeff_en_s_reg_0;
  input [1:0]addr_s;
  input [0:0]E;
  input [15:0]s00_axi_wdata;
  input [0:0]\coeff_addr_s_reg[0]_0 ;
  input [0:0]D;
  input [4:0]\coeff_addr_s_reg[4]_1 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [1:0]addr_s;
  wire [0:0]\coeff_addr_s_reg[0]_0 ;
  wire [4:0]\coeff_addr_s_reg[4]_0 ;
  wire [4:0]\coeff_addr_s_reg[4]_1 ;
  wire \coeff_addr_uns_s[1]_i_1_n_0 ;
  wire \coeff_addr_uns_s[2]_i_1_n_0 ;
  wire \coeff_addr_uns_s[3]_i_1_n_0 ;
  wire \coeff_addr_uns_s[4]_i_2_n_0 ;
  wire coeff_en_s;
  wire coeff_en_s_reg_0;
  wire [15:0]\coeff_val_s_reg[15]_0 ;
  wire read_en_s;
  wire \readdata_s[0]_i_1_n_0 ;
  wire \readdata_s[30]_i_1_n_0 ;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire s00_axi_rvalid;
  wire [15:0]s00_axi_wdata;

  FDRE \coeff_addr_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\coeff_addr_s_reg[0]_0 ),
        .D(\coeff_addr_s_reg[4]_1 [0]),
        .Q(\coeff_addr_s_reg[4]_0 [0]),
        .R(s00_axi_reset));
  FDRE \coeff_addr_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\coeff_addr_s_reg[0]_0 ),
        .D(\coeff_addr_s_reg[4]_1 [1]),
        .Q(\coeff_addr_s_reg[4]_0 [1]),
        .R(s00_axi_reset));
  FDRE \coeff_addr_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\coeff_addr_s_reg[0]_0 ),
        .D(\coeff_addr_s_reg[4]_1 [2]),
        .Q(\coeff_addr_s_reg[4]_0 [2]),
        .R(s00_axi_reset));
  FDRE \coeff_addr_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\coeff_addr_s_reg[0]_0 ),
        .D(\coeff_addr_s_reg[4]_1 [3]),
        .Q(\coeff_addr_s_reg[4]_0 [3]),
        .R(s00_axi_reset));
  FDRE \coeff_addr_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\coeff_addr_s_reg[0]_0 ),
        .D(\coeff_addr_s_reg[4]_1 [4]),
        .Q(\coeff_addr_s_reg[4]_0 [4]),
        .R(s00_axi_reset));
  LUT3 #(
    .INIT(8'h28)) 
    \coeff_addr_uns_s[1]_i_1 
       (.I0(addr_s[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\coeff_addr_uns_s[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \coeff_addr_uns_s[2]_i_1 
       (.I0(addr_s[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\coeff_addr_uns_s[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \coeff_addr_uns_s[3]_i_1 
       (.I0(addr_s[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\coeff_addr_uns_s[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \coeff_addr_uns_s[4]_i_2 
       (.I0(addr_s[0]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\coeff_addr_uns_s[4]_i_2_n_0 ));
  FDRE \coeff_addr_uns_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\coeff_addr_s_reg[0]_0 ),
        .D(D),
        .Q(Q[0]),
        .R(s00_axi_reset));
  FDRE \coeff_addr_uns_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\coeff_addr_s_reg[0]_0 ),
        .D(\coeff_addr_uns_s[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(s00_axi_reset));
  FDRE \coeff_addr_uns_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\coeff_addr_s_reg[0]_0 ),
        .D(\coeff_addr_uns_s[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(s00_axi_reset));
  FDRE \coeff_addr_uns_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\coeff_addr_s_reg[0]_0 ),
        .D(\coeff_addr_uns_s[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(s00_axi_reset));
  FDRE \coeff_addr_uns_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\coeff_addr_s_reg[0]_0 ),
        .D(\coeff_addr_uns_s[4]_i_2_n_0 ),
        .Q(Q[4]),
        .R(s00_axi_reset));
  FDRE coeff_en_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(coeff_en_s_reg_0),
        .Q(coeff_en_s),
        .R(1'b0));
  FDRE \coeff_val_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[0]),
        .Q(\coeff_val_s_reg[15]_0 [0]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[10]),
        .Q(\coeff_val_s_reg[15]_0 [10]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[11]),
        .Q(\coeff_val_s_reg[15]_0 [11]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[12]),
        .Q(\coeff_val_s_reg[15]_0 [12]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[13]),
        .Q(\coeff_val_s_reg[15]_0 [13]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[14]),
        .Q(\coeff_val_s_reg[15]_0 [14]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[15]),
        .Q(\coeff_val_s_reg[15]_0 [15]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[1]),
        .Q(\coeff_val_s_reg[15]_0 [1]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[2]),
        .Q(\coeff_val_s_reg[15]_0 [2]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[3]),
        .Q(\coeff_val_s_reg[15]_0 [3]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[4]),
        .Q(\coeff_val_s_reg[15]_0 [4]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[5]),
        .Q(\coeff_val_s_reg[15]_0 [5]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[6]),
        .Q(\coeff_val_s_reg[15]_0 [6]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[7]),
        .Q(\coeff_val_s_reg[15]_0 [7]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[8]),
        .Q(\coeff_val_s_reg[15]_0 [8]),
        .R(s00_axi_reset));
  FDRE \coeff_val_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[9]),
        .Q(\coeff_val_s_reg[15]_0 [9]),
        .R(s00_axi_reset));
  FDRE read_ack_o_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_en_s),
        .Q(s00_axi_rvalid),
        .R(s00_axi_reset));
  LUT5 #(
    .INIT(32'h010F0100)) 
    \readdata_s[0]_i_1 
       (.I0(addr_s[0]),
        .I1(addr_s[1]),
        .I2(s00_axi_reset),
        .I3(read_en_s),
        .I4(s00_axi_rdata[0]),
        .O(\readdata_s[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FC00AA)) 
    \readdata_s[30]_i_1 
       (.I0(s00_axi_rdata[1]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(s00_axi_reset),
        .I4(read_en_s),
        .O(\readdata_s[30]_i_1_n_0 ));
  FDRE \readdata_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\readdata_s[0]_i_1_n_0 ),
        .Q(s00_axi_rdata[0]),
        .R(1'b0));
  FDRE \readdata_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\readdata_s[30]_i_1_n_0 ),
        .Q(s00_axi_rdata[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "firReal_handCom" *) 
module double_iq_pid_vco_firReal_0_0_firReal_handCom
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_awvalid_0,
    addr_s,
    D,
    E,
    s00_axi_reset_0,
    \coeff_addr_uns_s_reg[4] ,
    read_en_s,
    s00_axi_reset,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    Q,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output [0:0]s00_axi_awvalid_0;
  output [1:0]addr_s;
  output [0:0]D;
  output [0:0]E;
  output s00_axi_reset_0;
  output [4:0]\coeff_addr_uns_s_reg[4] ;
  output read_en_s;
  input s00_axi_reset;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [4:0]Q;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;

  wire [0:0]D;
  wire [0:0]E;
  wire [4:0]Q;
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
  wire [4:0]\coeff_addr_uns_s_reg[4] ;
  wire [1:0]read_addr_s;
  wire read_en_s;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire [0:0]s00_axi_awvalid_0;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire s00_axi_reset;
  wire s00_axi_reset_0;
  wire s00_axi_rready;
  wire s00_axi_wvalid;
  wire [1:0]write_addr_s;
  wire write_en_s;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addr_reg[0]_i_1 
       (.I0(write_addr_s[0]),
        .I1(write_en_s),
        .I2(read_addr_s[0]),
        .I3(read_en_s),
        .I4(addr_reg[0]),
        .O(addr_s[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addr_reg[1]_i_1 
       (.I0(write_addr_s[1]),
        .I1(write_en_s),
        .I2(read_addr_s[1]),
        .I3(read_en_s),
        .I4(addr_reg[1]),
        .O(addr_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(axi_rvalid_reg_n_0),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_n_0),
        .R(s00_axi_reset));
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
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \coeff_addr_s[0]_i_1 
       (.I0(addr_s[0]),
        .I1(Q[0]),
        .O(\coeff_addr_uns_s_reg[4] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \coeff_addr_s[1]_i_1 
       (.I0(addr_s[0]),
        .I1(Q[1]),
        .O(\coeff_addr_uns_s_reg[4] [1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \coeff_addr_s[2]_i_1 
       (.I0(addr_s[0]),
        .I1(Q[2]),
        .O(\coeff_addr_uns_s_reg[4] [2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \coeff_addr_s[3]_i_1 
       (.I0(addr_s[0]),
        .I1(Q[3]),
        .O(\coeff_addr_uns_s_reg[4] [3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \coeff_addr_s[4]_i_1 
       (.I0(addr_s[0]),
        .I1(Q[4]),
        .O(\coeff_addr_uns_s_reg[4] [4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \coeff_addr_uns_s[0]_i_1 
       (.I0(addr_s[0]),
        .I1(Q[0]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \coeff_addr_uns_s[4]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(addr_s[1]),
        .O(s00_axi_awvalid_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    coeff_en_s_i_1
       (.I0(addr_s[1]),
        .I1(addr_s[0]),
        .I2(write_en_s),
        .I3(s00_axi_reset),
        .O(s00_axi_reset_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \coeff_val_s[15]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(addr_s[1]),
        .I5(addr_s[0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    read_ack_o_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(axi_rvalid_reg_n_0),
        .O(read_en_s));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc
   (data_en_s_0,
    data_en_s,
    \final_res_s_reg[31]_0 ,
    E,
    res_s0,
    data_en_s_reg_0,
    res_s0_1,
    data_en_s_reg_1,
    res_s0_2,
    data_en_s_reg_2,
    res_s0_3,
    data_en_s_reg_3,
    res_s0_4,
    data_en_s_reg_4,
    res_s0_5,
    data_en_s_reg_5,
    res_s0_6,
    data_en_s_reg_6,
    res_s0_7,
    data_en_s_reg_7,
    res_s0_8,
    data_en_s_reg_8,
    res_s0_9,
    data_en_s_reg_9,
    res_s0_10,
    data_en_s_reg_10,
    res_s0_11,
    data_en_s_reg_11,
    res_s0_12,
    data_en_s_reg_12,
    res_s0_13,
    data_en_s_reg_13,
    res_s0_14,
    data_en_s_reg_14,
    res_s0_15,
    data_en_s_reg_15,
    res_s0_16,
    data_en_s_reg_16,
    res_s0_17,
    data_en_s_reg_17,
    res_s0_18,
    data_en_s_reg_18,
    res_s0_19,
    data_en_s_reg_19,
    res_s0_20,
    data_en_s_reg_20,
    res_s0_21,
    data_en_s_reg_21,
    res_s0_22,
    data_en_s_reg_22,
    res_s0_23,
    data_rst_i,
    Q,
    data_clk_i,
    data_in_en_s,
    data_i,
    DOBDO,
    ready_s_reg_0,
    end_s,
    ready_s,
    end_s_24,
    ready_s_25,
    end_s_26,
    ready_s_27,
    end_s_28,
    ready_s_29,
    end_s_30,
    ready_s_31,
    end_s_32,
    ready_s_33,
    end_s_34,
    ready_s_35,
    end_s_36,
    ready_s_37,
    end_s_38,
    ready_s_39,
    end_s_40,
    ready_s_41,
    end_s_42,
    ready_s_43,
    end_s_44,
    ready_s_45,
    end_s_46,
    ready_s_47,
    end_s_48,
    ready_s_49,
    end_s_50,
    ready_s_51,
    end_s_52,
    ready_s_53,
    end_s_54,
    ready_s_55,
    end_s_56,
    ready_s_57,
    end_s_58,
    ready_s_59,
    end_s_60,
    ready_s_61,
    end_s_62,
    ready_s_63,
    end_s_64,
    ready_s_65,
    end_s_66,
    ready_s_67,
    end_s_68,
    ready_s_69);
  output data_en_s_0;
  output [0:0]data_en_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  output [0:0]E;
  output res_s0;
  output [0:0]data_en_s_reg_0;
  output res_s0_1;
  output [0:0]data_en_s_reg_1;
  output res_s0_2;
  output [0:0]data_en_s_reg_2;
  output res_s0_3;
  output [0:0]data_en_s_reg_3;
  output res_s0_4;
  output [0:0]data_en_s_reg_4;
  output res_s0_5;
  output [0:0]data_en_s_reg_5;
  output res_s0_6;
  output [0:0]data_en_s_reg_6;
  output res_s0_7;
  output [0:0]data_en_s_reg_7;
  output res_s0_8;
  output [0:0]data_en_s_reg_8;
  output res_s0_9;
  output [0:0]data_en_s_reg_9;
  output res_s0_10;
  output [0:0]data_en_s_reg_10;
  output res_s0_11;
  output [0:0]data_en_s_reg_11;
  output res_s0_12;
  output [0:0]data_en_s_reg_12;
  output res_s0_13;
  output [0:0]data_en_s_reg_13;
  output res_s0_14;
  output [0:0]data_en_s_reg_14;
  output res_s0_15;
  output [0:0]data_en_s_reg_15;
  output res_s0_16;
  output [0:0]data_en_s_reg_16;
  output res_s0_17;
  output [0:0]data_en_s_reg_17;
  output res_s0_18;
  output [0:0]data_en_s_reg_18;
  output res_s0_19;
  output [0:0]data_en_s_reg_19;
  output res_s0_20;
  output [0:0]data_en_s_reg_20;
  output res_s0_21;
  output [0:0]data_en_s_reg_21;
  output res_s0_22;
  output [0:0]data_en_s_reg_22;
  output res_s0_23;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input data_in_en_s;
  input [13:0]data_i;
  input [15:0]DOBDO;
  input [0:0]ready_s_reg_0;
  input end_s;
  input ready_s;
  input end_s_24;
  input ready_s_25;
  input end_s_26;
  input ready_s_27;
  input end_s_28;
  input ready_s_29;
  input end_s_30;
  input ready_s_31;
  input end_s_32;
  input ready_s_33;
  input end_s_34;
  input ready_s_35;
  input end_s_36;
  input ready_s_37;
  input end_s_38;
  input ready_s_39;
  input end_s_40;
  input ready_s_41;
  input end_s_42;
  input ready_s_43;
  input end_s_44;
  input ready_s_45;
  input end_s_46;
  input ready_s_47;
  input end_s_48;
  input ready_s_49;
  input end_s_50;
  input ready_s_51;
  input end_s_52;
  input ready_s_53;
  input end_s_54;
  input ready_s_55;
  input end_s_56;
  input ready_s_57;
  input end_s_58;
  input ready_s_59;
  input end_s_60;
  input ready_s_61;
  input end_s_62;
  input ready_s_63;
  input end_s_64;
  input ready_s_65;
  input end_s_66;
  input ready_s_67;
  input end_s_68;
  input ready_s_69;

  wire [15:0]DOBDO;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_s;
  wire data_en_s_0;
  wire [0:0]data_en_s_reg_0;
  wire [0:0]data_en_s_reg_1;
  wire [0:0]data_en_s_reg_10;
  wire [0:0]data_en_s_reg_11;
  wire [0:0]data_en_s_reg_12;
  wire [0:0]data_en_s_reg_13;
  wire [0:0]data_en_s_reg_14;
  wire [0:0]data_en_s_reg_15;
  wire [0:0]data_en_s_reg_16;
  wire [0:0]data_en_s_reg_17;
  wire [0:0]data_en_s_reg_18;
  wire [0:0]data_en_s_reg_19;
  wire [0:0]data_en_s_reg_2;
  wire [0:0]data_en_s_reg_20;
  wire [0:0]data_en_s_reg_21;
  wire [0:0]data_en_s_reg_22;
  wire [0:0]data_en_s_reg_3;
  wire [0:0]data_en_s_reg_4;
  wire [0:0]data_en_s_reg_5;
  wire [0:0]data_en_s_reg_6;
  wire [0:0]data_en_s_reg_7;
  wire [0:0]data_en_s_reg_8;
  wire [0:0]data_en_s_reg_9;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_out_en_s;
  wire data_rst_i;
  wire end_s;
  wire end_s_0;
  wire end_s_24;
  wire end_s_26;
  wire end_s_28;
  wire end_s_30;
  wire end_s_32;
  wire end_s_34;
  wire end_s_36;
  wire end_s_38;
  wire end_s_40;
  wire end_s_42;
  wire end_s_44;
  wire end_s_46;
  wire end_s_48;
  wire end_s_50;
  wire end_s_52;
  wire end_s_54;
  wire end_s_56;
  wire end_s_58;
  wire end_s_60;
  wire end_s_62;
  wire end_s_64;
  wire end_s_66;
  wire end_s_68;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s;
  wire must_rst_s_i_1__23_n_0;
  wire ready_s;
  wire ready_s_1;
  wire ready_s_25;
  wire ready_s_27;
  wire ready_s_29;
  wire ready_s_31;
  wire ready_s_33;
  wire ready_s_35;
  wire ready_s_37;
  wire ready_s_39;
  wire ready_s_41;
  wire ready_s_43;
  wire ready_s_45;
  wire ready_s_47;
  wire ready_s_49;
  wire ready_s_51;
  wire ready_s_53;
  wire ready_s_55;
  wire ready_s_57;
  wire ready_s_59;
  wire ready_s_61;
  wire ready_s_63;
  wire ready_s_65;
  wire ready_s_67;
  wire ready_s_69;
  wire ready_s_i_1_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire res_s0_1;
  wire res_s0_10;
  wire res_s0_11;
  wire res_s0_12;
  wire res_s0_13;
  wire res_s0_14;
  wire res_s0_15;
  wire res_s0_16;
  wire res_s0_17;
  wire res_s0_18;
  wire res_s0_19;
  wire res_s0_2;
  wire res_s0_20;
  wire res_s0_21;
  wire res_s0_22;
  wire res_s0_23;
  wire res_s0_24;
  wire res_s0_3;
  wire res_s0_4;
  wire res_s0_5;
  wire res_s0_6;
  wire res_s0_7;
  wire res_s0_8;
  wire res_s0_9;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_res_s_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1
       (.I0(data_en_s_0),
        .I1(end_s_0),
        .O(data_out_en_s));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__0
       (.I0(data_en_s_0),
        .I1(end_s),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__1
       (.I0(data_en_s_0),
        .I1(end_s_24),
        .O(data_en_s_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__10
       (.I0(data_en_s_0),
        .I1(end_s_42),
        .O(data_en_s_reg_9));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__11
       (.I0(data_en_s_0),
        .I1(end_s_44),
        .O(data_en_s_reg_10));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__12
       (.I0(data_en_s_0),
        .I1(end_s_46),
        .O(data_en_s_reg_11));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__13
       (.I0(data_en_s_0),
        .I1(end_s_48),
        .O(data_en_s_reg_12));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__14
       (.I0(data_en_s_0),
        .I1(end_s_50),
        .O(data_en_s_reg_13));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__15
       (.I0(data_en_s_0),
        .I1(end_s_52),
        .O(data_en_s_reg_14));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__16
       (.I0(data_en_s_0),
        .I1(end_s_54),
        .O(data_en_s_reg_15));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__17
       (.I0(data_en_s_0),
        .I1(end_s_56),
        .O(data_en_s_reg_16));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__18
       (.I0(data_en_s_0),
        .I1(end_s_58),
        .O(data_en_s_reg_17));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__19
       (.I0(data_en_s_0),
        .I1(end_s_60),
        .O(data_en_s_reg_18));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__2
       (.I0(data_en_s_0),
        .I1(end_s_26),
        .O(data_en_s_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__20
       (.I0(data_en_s_0),
        .I1(end_s_62),
        .O(data_en_s_reg_19));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__21
       (.I0(data_en_s_0),
        .I1(end_s_64),
        .O(data_en_s_reg_20));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__22
       (.I0(data_en_s_0),
        .I1(end_s_66),
        .O(data_en_s_reg_21));
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__23
       (.I0(data_en_s_0),
        .I1(end_s_68),
        .O(data_en_s_reg_22));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__3
       (.I0(data_en_s_0),
        .I1(end_s_28),
        .O(data_en_s_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__4
       (.I0(data_en_s_0),
        .I1(end_s_30),
        .O(data_en_s_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__5
       (.I0(data_en_s_0),
        .I1(end_s_32),
        .O(data_en_s_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__6
       (.I0(data_en_s_0),
        .I1(end_s_34),
        .O(data_en_s_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__7
       (.I0(data_en_s_0),
        .I1(end_s_36),
        .O(data_en_s_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__8
       (.I0(data_en_s_0),
        .I1(end_s_38),
        .O(data_en_s_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_en_o_i_1__9
       (.I0(data_en_s_0),
        .I1(end_s_40),
        .O(data_en_s_reg_8));
  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_out_en_s),
        .Q(data_en_s),
        .R(data_rst_i));
  FDRE data_en_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_in_en_s),
        .Q(data_en_s_0),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s_0),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(data_out_en_s),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__23
       (.I0(Q),
        .I1(data_en_s_0),
        .I2(ready_s_1),
        .I3(must_rst_s),
        .O(must_rst_s_i_1__23_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__23_n_0),
        .Q(must_rst_s),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s_1),
        .O(ready_s_i_1_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1_n_0),
        .Q(ready_s_1),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_res_s_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0_24),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1
       (.I0(data_en_s_0),
        .I1(ready_s_1),
        .O(res_s0_24));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__0
       (.I0(data_en_s_0),
        .I1(ready_s),
        .O(res_s0));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__1
       (.I0(data_en_s_0),
        .I1(ready_s_25),
        .O(res_s0_1));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__10
       (.I0(data_en_s_0),
        .I1(ready_s_43),
        .O(res_s0_10));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__11
       (.I0(data_en_s_0),
        .I1(ready_s_45),
        .O(res_s0_11));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__12
       (.I0(data_en_s_0),
        .I1(ready_s_47),
        .O(res_s0_12));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__13
       (.I0(data_en_s_0),
        .I1(ready_s_49),
        .O(res_s0_13));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__14
       (.I0(data_en_s_0),
        .I1(ready_s_51),
        .O(res_s0_14));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__15
       (.I0(data_en_s_0),
        .I1(ready_s_53),
        .O(res_s0_15));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__16
       (.I0(data_en_s_0),
        .I1(ready_s_55),
        .O(res_s0_16));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__17
       (.I0(data_en_s_0),
        .I1(ready_s_57),
        .O(res_s0_17));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__18
       (.I0(data_en_s_0),
        .I1(ready_s_59),
        .O(res_s0_18));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__19
       (.I0(data_en_s_0),
        .I1(ready_s_61),
        .O(res_s0_19));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__2
       (.I0(data_en_s_0),
        .I1(ready_s_27),
        .O(res_s0_2));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__20
       (.I0(data_en_s_0),
        .I1(ready_s_63),
        .O(res_s0_20));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__21
       (.I0(data_en_s_0),
        .I1(ready_s_65),
        .O(res_s0_21));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__22
       (.I0(data_en_s_0),
        .I1(ready_s_67),
        .O(res_s0_22));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__23
       (.I0(data_en_s_0),
        .I1(ready_s_69),
        .O(res_s0_23));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__3
       (.I0(data_en_s_0),
        .I1(ready_s_29),
        .O(res_s0_3));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__4
       (.I0(data_en_s_0),
        .I1(ready_s_31),
        .O(res_s0_4));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__5
       (.I0(data_en_s_0),
        .I1(ready_s_33),
        .O(res_s0_5));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__6
       (.I0(data_en_s_0),
        .I1(ready_s_35),
        .O(res_s0_6));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__7
       (.I0(data_en_s_0),
        .I1(ready_s_37),
        .O(res_s0_7));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__8
       (.I0(data_en_s_0),
        .I1(ready_s_39),
        .O(res_s0_8));
  LUT2 #(
    .INIT(4'h8)) 
    res_s_reg_i_1__9
       (.I0(data_en_s_0),
        .I1(ready_s_41),
        .O(res_s0_9));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_0
   (end_s,
    data_en_s,
    ACOUT,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s_0);
  output end_s;
  output [0:0]data_en_s;
  output [29:0]ACOUT;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s_0;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_s;
  wire data_en_s_0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__13_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__9_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__13
       (.I0(Q),
        .I1(data_en_s_0),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__13_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__13_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__9
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__9_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__9_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_1
   (end_s,
    data_en_s,
    ACOUT,
    ready_s,
    \cpt_store_s_reg[2] ,
    \cpt_store_s_reg[2]_0 ,
    \cpt_store_s_reg[2]_1 ,
    \cpt_store_s_reg[2]_2 ,
    \cpt_store_s_reg[2]_3 ,
    \cpt_store_s_reg[2]_4 ,
    \cpt_store_s_reg[2]_5 ,
    \cpt_store_s_reg[2]_6 ,
    \cpt_store_s_reg[2]_7 ,
    \cpt_store_s_reg[2]_8 ,
    \cpt_store_s_reg[2]_9 ,
    \cpt_store_s_reg[2]_10 ,
    \cpt_store_s_reg[2]_11 ,
    \cpt_store_s_reg[2]_12 ,
    \cpt_store_s_reg[2]_13 ,
    \cpt_store_s_reg[2]_14 ,
    \cpt_store_s_reg[2]_15 ,
    \cpt_store_s_reg[2]_16 ,
    \cpt_store_s_reg[2]_17 ,
    \cpt_store_s_reg[2]_18 ,
    \cpt_store_s_reg[2]_19 ,
    \cpt_store_s_reg[2]_20 ,
    \cpt_store_s_reg[2]_21 ,
    \cpt_store_s_reg[2]_22 ,
    \cpt_store_s_reg[2]_23 ,
    \cpt_store_s_reg[2]_24 ,
    \cpt_store_s_reg[2]_25 ,
    \cpt_store_s_reg[2]_26 ,
    \cpt_store_s_reg[2]_27 ,
    \cpt_store_s_reg[2]_28 ,
    \cpt_store_s_reg[2]_29 ,
    \cpt_store_s_reg[2]_30 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s_0,
    \data_out_s_reg[31]_i_8 ,
    \data_out_s_reg[0]_i_2 ,
    \data_out_s_reg[31]_i_14_0 ,
    \data_out_s_reg[0]_i_6_0 ,
    \data_out_s_reg[31]_i_14_1 ,
    \data_out_s_reg[31]_i_14_2 ,
    \data_out_s_reg[1]_i_2 ,
    \data_out_s_reg[2]_i_2 ,
    \data_out_s_reg[3]_i_2 ,
    \data_out_s_reg[4]_i_2 ,
    \data_out_s_reg[5]_i_2 ,
    \data_out_s_reg[6]_i_2 ,
    \data_out_s_reg[7]_i_2 ,
    \data_out_s_reg[8]_i_2 ,
    \data_out_s_reg[9]_i_2 ,
    \data_out_s_reg[10]_i_2 ,
    \data_out_s_reg[10]_i_6_0 ,
    \data_out_s_reg[11]_i_2 ,
    \data_out_s_reg[12]_i_2 ,
    \data_out_s_reg[13]_i_2 ,
    \data_out_s_reg[14]_i_2 ,
    \data_out_s_reg[15]_i_2 ,
    \data_out_s_reg[16]_i_2 ,
    \data_out_s_reg[17]_i_2 ,
    \data_out_s_reg[18]_i_2 ,
    \data_out_s_reg[19]_i_2 ,
    \data_out_s_reg[20]_i_2 ,
    \data_out_s_reg[21]_i_2 ,
    \data_out_s_reg[22]_i_2 ,
    \data_out_s_reg[23]_i_2 ,
    \data_out_s_reg[24]_i_2 ,
    \data_out_s_reg[25]_i_2 ,
    \data_out_s_reg[26]_i_2 ,
    \data_out_s_reg[27]_i_2 ,
    \data_out_s_reg[28]_i_2 ,
    \data_out_s_reg[29]_i_2 ,
    \data_out_s_reg[30]_i_2 ,
    \data_out_s_reg[31]_i_8_0 );
  output end_s;
  output [0:0]data_en_s;
  output [29:0]ACOUT;
  output ready_s;
  output \cpt_store_s_reg[2] ;
  output \cpt_store_s_reg[2]_0 ;
  output \cpt_store_s_reg[2]_1 ;
  output \cpt_store_s_reg[2]_2 ;
  output \cpt_store_s_reg[2]_3 ;
  output \cpt_store_s_reg[2]_4 ;
  output \cpt_store_s_reg[2]_5 ;
  output \cpt_store_s_reg[2]_6 ;
  output \cpt_store_s_reg[2]_7 ;
  output \cpt_store_s_reg[2]_8 ;
  output \cpt_store_s_reg[2]_9 ;
  output \cpt_store_s_reg[2]_10 ;
  output \cpt_store_s_reg[2]_11 ;
  output \cpt_store_s_reg[2]_12 ;
  output \cpt_store_s_reg[2]_13 ;
  output \cpt_store_s_reg[2]_14 ;
  output \cpt_store_s_reg[2]_15 ;
  output \cpt_store_s_reg[2]_16 ;
  output \cpt_store_s_reg[2]_17 ;
  output \cpt_store_s_reg[2]_18 ;
  output \cpt_store_s_reg[2]_19 ;
  output \cpt_store_s_reg[2]_20 ;
  output \cpt_store_s_reg[2]_21 ;
  output \cpt_store_s_reg[2]_22 ;
  output \cpt_store_s_reg[2]_23 ;
  output \cpt_store_s_reg[2]_24 ;
  output \cpt_store_s_reg[2]_25 ;
  output \cpt_store_s_reg[2]_26 ;
  output \cpt_store_s_reg[2]_27 ;
  output \cpt_store_s_reg[2]_28 ;
  output \cpt_store_s_reg[2]_29 ;
  output \cpt_store_s_reg[2]_30 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s_0;
  input [2:0]\data_out_s_reg[31]_i_8 ;
  input \data_out_s_reg[0]_i_2 ;
  input [31:0]\data_out_s_reg[31]_i_14_0 ;
  input \data_out_s_reg[0]_i_6_0 ;
  input [31:0]\data_out_s_reg[31]_i_14_1 ;
  input [31:0]\data_out_s_reg[31]_i_14_2 ;
  input \data_out_s_reg[1]_i_2 ;
  input \data_out_s_reg[2]_i_2 ;
  input \data_out_s_reg[3]_i_2 ;
  input \data_out_s_reg[4]_i_2 ;
  input \data_out_s_reg[5]_i_2 ;
  input \data_out_s_reg[6]_i_2 ;
  input \data_out_s_reg[7]_i_2 ;
  input \data_out_s_reg[8]_i_2 ;
  input \data_out_s_reg[9]_i_2 ;
  input \data_out_s_reg[10]_i_2 ;
  input \data_out_s_reg[10]_i_6_0 ;
  input \data_out_s_reg[11]_i_2 ;
  input \data_out_s_reg[12]_i_2 ;
  input \data_out_s_reg[13]_i_2 ;
  input \data_out_s_reg[14]_i_2 ;
  input \data_out_s_reg[15]_i_2 ;
  input \data_out_s_reg[16]_i_2 ;
  input \data_out_s_reg[17]_i_2 ;
  input \data_out_s_reg[18]_i_2 ;
  input \data_out_s_reg[19]_i_2 ;
  input \data_out_s_reg[20]_i_2 ;
  input \data_out_s_reg[21]_i_2 ;
  input \data_out_s_reg[22]_i_2 ;
  input \data_out_s_reg[23]_i_2 ;
  input \data_out_s_reg[24]_i_2 ;
  input \data_out_s_reg[25]_i_2 ;
  input \data_out_s_reg[26]_i_2 ;
  input \data_out_s_reg[27]_i_2 ;
  input \data_out_s_reg[28]_i_2 ;
  input \data_out_s_reg[29]_i_2 ;
  input \data_out_s_reg[30]_i_2 ;
  input \data_out_s_reg[31]_i_8_0 ;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire \cpt_store_s_reg[2] ;
  wire \cpt_store_s_reg[2]_0 ;
  wire \cpt_store_s_reg[2]_1 ;
  wire \cpt_store_s_reg[2]_10 ;
  wire \cpt_store_s_reg[2]_11 ;
  wire \cpt_store_s_reg[2]_12 ;
  wire \cpt_store_s_reg[2]_13 ;
  wire \cpt_store_s_reg[2]_14 ;
  wire \cpt_store_s_reg[2]_15 ;
  wire \cpt_store_s_reg[2]_16 ;
  wire \cpt_store_s_reg[2]_17 ;
  wire \cpt_store_s_reg[2]_18 ;
  wire \cpt_store_s_reg[2]_19 ;
  wire \cpt_store_s_reg[2]_2 ;
  wire \cpt_store_s_reg[2]_20 ;
  wire \cpt_store_s_reg[2]_21 ;
  wire \cpt_store_s_reg[2]_22 ;
  wire \cpt_store_s_reg[2]_23 ;
  wire \cpt_store_s_reg[2]_24 ;
  wire \cpt_store_s_reg[2]_25 ;
  wire \cpt_store_s_reg[2]_26 ;
  wire \cpt_store_s_reg[2]_27 ;
  wire \cpt_store_s_reg[2]_28 ;
  wire \cpt_store_s_reg[2]_29 ;
  wire \cpt_store_s_reg[2]_3 ;
  wire \cpt_store_s_reg[2]_30 ;
  wire \cpt_store_s_reg[2]_4 ;
  wire \cpt_store_s_reg[2]_5 ;
  wire \cpt_store_s_reg[2]_6 ;
  wire \cpt_store_s_reg[2]_7 ;
  wire \cpt_store_s_reg[2]_8 ;
  wire \cpt_store_s_reg[2]_9 ;
  wire data_clk_i;
  wire [0:0]data_en_s;
  wire data_en_s_0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire \data_out_s[0]_i_9_n_0 ;
  wire \data_out_s[10]_i_9_n_0 ;
  wire \data_out_s[11]_i_9_n_0 ;
  wire \data_out_s[12]_i_9_n_0 ;
  wire \data_out_s[13]_i_9_n_0 ;
  wire \data_out_s[14]_i_9_n_0 ;
  wire \data_out_s[15]_i_9_n_0 ;
  wire \data_out_s[16]_i_9_n_0 ;
  wire \data_out_s[17]_i_9_n_0 ;
  wire \data_out_s[18]_i_9_n_0 ;
  wire \data_out_s[19]_i_9_n_0 ;
  wire \data_out_s[1]_i_9_n_0 ;
  wire \data_out_s[20]_i_9_n_0 ;
  wire \data_out_s[21]_i_9_n_0 ;
  wire \data_out_s[22]_i_9_n_0 ;
  wire \data_out_s[23]_i_9_n_0 ;
  wire \data_out_s[24]_i_9_n_0 ;
  wire \data_out_s[25]_i_9_n_0 ;
  wire \data_out_s[26]_i_9_n_0 ;
  wire \data_out_s[27]_i_9_n_0 ;
  wire \data_out_s[28]_i_9_n_0 ;
  wire \data_out_s[29]_i_9_n_0 ;
  wire \data_out_s[2]_i_9_n_0 ;
  wire \data_out_s[30]_i_9_n_0 ;
  wire \data_out_s[31]_i_17_n_0 ;
  wire \data_out_s[3]_i_9_n_0 ;
  wire \data_out_s[4]_i_9_n_0 ;
  wire \data_out_s[5]_i_9_n_0 ;
  wire \data_out_s[6]_i_9_n_0 ;
  wire \data_out_s[7]_i_9_n_0 ;
  wire \data_out_s[8]_i_9_n_0 ;
  wire \data_out_s[9]_i_9_n_0 ;
  wire \data_out_s_reg[0]_i_2 ;
  wire \data_out_s_reg[0]_i_6_0 ;
  wire \data_out_s_reg[10]_i_2 ;
  wire \data_out_s_reg[10]_i_6_0 ;
  wire \data_out_s_reg[11]_i_2 ;
  wire \data_out_s_reg[12]_i_2 ;
  wire \data_out_s_reg[13]_i_2 ;
  wire \data_out_s_reg[14]_i_2 ;
  wire \data_out_s_reg[15]_i_2 ;
  wire \data_out_s_reg[16]_i_2 ;
  wire \data_out_s_reg[17]_i_2 ;
  wire \data_out_s_reg[18]_i_2 ;
  wire \data_out_s_reg[19]_i_2 ;
  wire \data_out_s_reg[1]_i_2 ;
  wire \data_out_s_reg[20]_i_2 ;
  wire \data_out_s_reg[21]_i_2 ;
  wire \data_out_s_reg[22]_i_2 ;
  wire \data_out_s_reg[23]_i_2 ;
  wire \data_out_s_reg[24]_i_2 ;
  wire \data_out_s_reg[25]_i_2 ;
  wire \data_out_s_reg[26]_i_2 ;
  wire \data_out_s_reg[27]_i_2 ;
  wire \data_out_s_reg[28]_i_2 ;
  wire \data_out_s_reg[29]_i_2 ;
  wire \data_out_s_reg[2]_i_2 ;
  wire \data_out_s_reg[30]_i_2 ;
  wire [31:0]\data_out_s_reg[31]_i_14_0 ;
  wire [31:0]\data_out_s_reg[31]_i_14_1 ;
  wire [31:0]\data_out_s_reg[31]_i_14_2 ;
  wire [2:0]\data_out_s_reg[31]_i_8 ;
  wire \data_out_s_reg[31]_i_8_0 ;
  wire \data_out_s_reg[3]_i_2 ;
  wire \data_out_s_reg[4]_i_2 ;
  wire \data_out_s_reg[5]_i_2 ;
  wire \data_out_s_reg[6]_i_2 ;
  wire \data_out_s_reg[7]_i_2 ;
  wire \data_out_s_reg[8]_i_2 ;
  wire \data_out_s_reg[9]_i_2 ;
  wire data_rst_i;
  wire end_s;
  wire \final_res_s_reg_n_0_[0] ;
  wire \final_res_s_reg_n_0_[10] ;
  wire \final_res_s_reg_n_0_[11] ;
  wire \final_res_s_reg_n_0_[12] ;
  wire \final_res_s_reg_n_0_[13] ;
  wire \final_res_s_reg_n_0_[14] ;
  wire \final_res_s_reg_n_0_[15] ;
  wire \final_res_s_reg_n_0_[16] ;
  wire \final_res_s_reg_n_0_[17] ;
  wire \final_res_s_reg_n_0_[18] ;
  wire \final_res_s_reg_n_0_[19] ;
  wire \final_res_s_reg_n_0_[1] ;
  wire \final_res_s_reg_n_0_[20] ;
  wire \final_res_s_reg_n_0_[21] ;
  wire \final_res_s_reg_n_0_[22] ;
  wire \final_res_s_reg_n_0_[23] ;
  wire \final_res_s_reg_n_0_[24] ;
  wire \final_res_s_reg_n_0_[25] ;
  wire \final_res_s_reg_n_0_[26] ;
  wire \final_res_s_reg_n_0_[27] ;
  wire \final_res_s_reg_n_0_[28] ;
  wire \final_res_s_reg_n_0_[29] ;
  wire \final_res_s_reg_n_0_[2] ;
  wire \final_res_s_reg_n_0_[30] ;
  wire \final_res_s_reg_n_0_[31] ;
  wire \final_res_s_reg_n_0_[3] ;
  wire \final_res_s_reg_n_0_[4] ;
  wire \final_res_s_reg_n_0_[5] ;
  wire \final_res_s_reg_n_0_[6] ;
  wire \final_res_s_reg_n_0_[7] ;
  wire \final_res_s_reg_n_0_[8] ;
  wire \final_res_s_reg_n_0_[9] ;
  wire must_rst_s_i_1__12_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__10_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s),
        .R(data_rst_i));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[0]_i_9 
       (.I0(\final_res_s_reg_n_0_[0] ),
        .I1(\data_out_s_reg[31]_i_14_0 [0]),
        .I2(\data_out_s_reg[0]_i_6_0 ),
        .I3(\data_out_s_reg[31]_i_14_1 [0]),
        .I4(\data_out_s_reg[31]_i_8 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [0]),
        .O(\data_out_s[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[10]_i_9 
       (.I0(\final_res_s_reg_n_0_[10] ),
        .I1(\data_out_s_reg[31]_i_14_0 [10]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [10]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [10]),
        .O(\data_out_s[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[11]_i_9 
       (.I0(\final_res_s_reg_n_0_[11] ),
        .I1(\data_out_s_reg[31]_i_14_0 [11]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [11]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [11]),
        .O(\data_out_s[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[12]_i_9 
       (.I0(\final_res_s_reg_n_0_[12] ),
        .I1(\data_out_s_reg[31]_i_14_0 [12]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [12]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [12]),
        .O(\data_out_s[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[13]_i_9 
       (.I0(\final_res_s_reg_n_0_[13] ),
        .I1(\data_out_s_reg[31]_i_14_0 [13]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [13]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [13]),
        .O(\data_out_s[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[14]_i_9 
       (.I0(\final_res_s_reg_n_0_[14] ),
        .I1(\data_out_s_reg[31]_i_14_0 [14]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [14]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [14]),
        .O(\data_out_s[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[15]_i_9 
       (.I0(\final_res_s_reg_n_0_[15] ),
        .I1(\data_out_s_reg[31]_i_14_0 [15]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [15]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [15]),
        .O(\data_out_s[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[16]_i_9 
       (.I0(\final_res_s_reg_n_0_[16] ),
        .I1(\data_out_s_reg[31]_i_14_0 [16]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [16]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [16]),
        .O(\data_out_s[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[17]_i_9 
       (.I0(\final_res_s_reg_n_0_[17] ),
        .I1(\data_out_s_reg[31]_i_14_0 [17]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [17]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [17]),
        .O(\data_out_s[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[18]_i_9 
       (.I0(\final_res_s_reg_n_0_[18] ),
        .I1(\data_out_s_reg[31]_i_14_0 [18]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [18]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [18]),
        .O(\data_out_s[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[19]_i_9 
       (.I0(\final_res_s_reg_n_0_[19] ),
        .I1(\data_out_s_reg[31]_i_14_0 [19]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [19]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [19]),
        .O(\data_out_s[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[1]_i_9 
       (.I0(\final_res_s_reg_n_0_[1] ),
        .I1(\data_out_s_reg[31]_i_14_0 [1]),
        .I2(\data_out_s_reg[0]_i_6_0 ),
        .I3(\data_out_s_reg[31]_i_14_1 [1]),
        .I4(\data_out_s_reg[31]_i_8 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [1]),
        .O(\data_out_s[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[20]_i_9 
       (.I0(\final_res_s_reg_n_0_[20] ),
        .I1(\data_out_s_reg[31]_i_14_0 [20]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [20]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [20]),
        .O(\data_out_s[20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[21]_i_9 
       (.I0(\final_res_s_reg_n_0_[21] ),
        .I1(\data_out_s_reg[31]_i_14_0 [21]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [21]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [21]),
        .O(\data_out_s[21]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[22]_i_9 
       (.I0(\final_res_s_reg_n_0_[22] ),
        .I1(\data_out_s_reg[31]_i_14_0 [22]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [22]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [22]),
        .O(\data_out_s[22]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[23]_i_9 
       (.I0(\final_res_s_reg_n_0_[23] ),
        .I1(\data_out_s_reg[31]_i_14_0 [23]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [23]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [23]),
        .O(\data_out_s[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[24]_i_9 
       (.I0(\final_res_s_reg_n_0_[24] ),
        .I1(\data_out_s_reg[31]_i_14_0 [24]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [24]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [24]),
        .O(\data_out_s[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[25]_i_9 
       (.I0(\final_res_s_reg_n_0_[25] ),
        .I1(\data_out_s_reg[31]_i_14_0 [25]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [25]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [25]),
        .O(\data_out_s[25]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[26]_i_9 
       (.I0(\final_res_s_reg_n_0_[26] ),
        .I1(\data_out_s_reg[31]_i_14_0 [26]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [26]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [26]),
        .O(\data_out_s[26]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[27]_i_9 
       (.I0(\final_res_s_reg_n_0_[27] ),
        .I1(\data_out_s_reg[31]_i_14_0 [27]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [27]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [27]),
        .O(\data_out_s[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[28]_i_9 
       (.I0(\final_res_s_reg_n_0_[28] ),
        .I1(\data_out_s_reg[31]_i_14_0 [28]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [28]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [28]),
        .O(\data_out_s[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[29]_i_9 
       (.I0(\final_res_s_reg_n_0_[29] ),
        .I1(\data_out_s_reg[31]_i_14_0 [29]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [29]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [29]),
        .O(\data_out_s[29]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[2]_i_9 
       (.I0(\final_res_s_reg_n_0_[2] ),
        .I1(\data_out_s_reg[31]_i_14_0 [2]),
        .I2(\data_out_s_reg[0]_i_6_0 ),
        .I3(\data_out_s_reg[31]_i_14_1 [2]),
        .I4(\data_out_s_reg[31]_i_8 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [2]),
        .O(\data_out_s[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[30]_i_9 
       (.I0(\final_res_s_reg_n_0_[30] ),
        .I1(\data_out_s_reg[31]_i_14_0 [30]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [30]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [30]),
        .O(\data_out_s[30]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[31]_i_17 
       (.I0(\final_res_s_reg_n_0_[31] ),
        .I1(\data_out_s_reg[31]_i_14_0 [31]),
        .I2(\data_out_s_reg[31]_i_8 [1]),
        .I3(\data_out_s_reg[31]_i_14_1 [31]),
        .I4(\data_out_s_reg[10]_i_6_0 ),
        .I5(\data_out_s_reg[31]_i_14_2 [31]),
        .O(\data_out_s[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[3]_i_9 
       (.I0(\final_res_s_reg_n_0_[3] ),
        .I1(\data_out_s_reg[31]_i_14_0 [3]),
        .I2(\data_out_s_reg[0]_i_6_0 ),
        .I3(\data_out_s_reg[31]_i_14_1 [3]),
        .I4(\data_out_s_reg[31]_i_8 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [3]),
        .O(\data_out_s[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[4]_i_9 
       (.I0(\final_res_s_reg_n_0_[4] ),
        .I1(\data_out_s_reg[31]_i_14_0 [4]),
        .I2(\data_out_s_reg[0]_i_6_0 ),
        .I3(\data_out_s_reg[31]_i_14_1 [4]),
        .I4(\data_out_s_reg[31]_i_8 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [4]),
        .O(\data_out_s[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[5]_i_9 
       (.I0(\final_res_s_reg_n_0_[5] ),
        .I1(\data_out_s_reg[31]_i_14_0 [5]),
        .I2(\data_out_s_reg[0]_i_6_0 ),
        .I3(\data_out_s_reg[31]_i_14_1 [5]),
        .I4(\data_out_s_reg[31]_i_8 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [5]),
        .O(\data_out_s[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[6]_i_9 
       (.I0(\final_res_s_reg_n_0_[6] ),
        .I1(\data_out_s_reg[31]_i_14_0 [6]),
        .I2(\data_out_s_reg[0]_i_6_0 ),
        .I3(\data_out_s_reg[31]_i_14_1 [6]),
        .I4(\data_out_s_reg[31]_i_8 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [6]),
        .O(\data_out_s[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[7]_i_9 
       (.I0(\final_res_s_reg_n_0_[7] ),
        .I1(\data_out_s_reg[31]_i_14_0 [7]),
        .I2(\data_out_s_reg[0]_i_6_0 ),
        .I3(\data_out_s_reg[31]_i_14_1 [7]),
        .I4(\data_out_s_reg[31]_i_8 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [7]),
        .O(\data_out_s[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[8]_i_9 
       (.I0(\final_res_s_reg_n_0_[8] ),
        .I1(\data_out_s_reg[31]_i_14_0 [8]),
        .I2(\data_out_s_reg[0]_i_6_0 ),
        .I3(\data_out_s_reg[31]_i_14_1 [8]),
        .I4(\data_out_s_reg[31]_i_8 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [8]),
        .O(\data_out_s[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[9]_i_9 
       (.I0(\final_res_s_reg_n_0_[9] ),
        .I1(\data_out_s_reg[31]_i_14_0 [9]),
        .I2(\data_out_s_reg[0]_i_6_0 ),
        .I3(\data_out_s_reg[31]_i_14_1 [9]),
        .I4(\data_out_s_reg[31]_i_8 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [9]),
        .O(\data_out_s[9]_i_9_n_0 ));
  MUXF7 \data_out_s_reg[0]_i_6 
       (.I0(\data_out_s[0]_i_9_n_0 ),
        .I1(\data_out_s_reg[0]_i_2 ),
        .O(\cpt_store_s_reg[2] ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[10]_i_6 
       (.I0(\data_out_s[10]_i_9_n_0 ),
        .I1(\data_out_s_reg[10]_i_2 ),
        .O(\cpt_store_s_reg[2]_9 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[11]_i_6 
       (.I0(\data_out_s[11]_i_9_n_0 ),
        .I1(\data_out_s_reg[11]_i_2 ),
        .O(\cpt_store_s_reg[2]_10 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[12]_i_6 
       (.I0(\data_out_s[12]_i_9_n_0 ),
        .I1(\data_out_s_reg[12]_i_2 ),
        .O(\cpt_store_s_reg[2]_11 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[13]_i_6 
       (.I0(\data_out_s[13]_i_9_n_0 ),
        .I1(\data_out_s_reg[13]_i_2 ),
        .O(\cpt_store_s_reg[2]_12 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[14]_i_6 
       (.I0(\data_out_s[14]_i_9_n_0 ),
        .I1(\data_out_s_reg[14]_i_2 ),
        .O(\cpt_store_s_reg[2]_13 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[15]_i_6 
       (.I0(\data_out_s[15]_i_9_n_0 ),
        .I1(\data_out_s_reg[15]_i_2 ),
        .O(\cpt_store_s_reg[2]_14 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[16]_i_6 
       (.I0(\data_out_s[16]_i_9_n_0 ),
        .I1(\data_out_s_reg[16]_i_2 ),
        .O(\cpt_store_s_reg[2]_15 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[17]_i_6 
       (.I0(\data_out_s[17]_i_9_n_0 ),
        .I1(\data_out_s_reg[17]_i_2 ),
        .O(\cpt_store_s_reg[2]_16 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[18]_i_6 
       (.I0(\data_out_s[18]_i_9_n_0 ),
        .I1(\data_out_s_reg[18]_i_2 ),
        .O(\cpt_store_s_reg[2]_17 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[19]_i_6 
       (.I0(\data_out_s[19]_i_9_n_0 ),
        .I1(\data_out_s_reg[19]_i_2 ),
        .O(\cpt_store_s_reg[2]_18 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[1]_i_6 
       (.I0(\data_out_s[1]_i_9_n_0 ),
        .I1(\data_out_s_reg[1]_i_2 ),
        .O(\cpt_store_s_reg[2]_0 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[20]_i_6 
       (.I0(\data_out_s[20]_i_9_n_0 ),
        .I1(\data_out_s_reg[20]_i_2 ),
        .O(\cpt_store_s_reg[2]_19 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[21]_i_6 
       (.I0(\data_out_s[21]_i_9_n_0 ),
        .I1(\data_out_s_reg[21]_i_2 ),
        .O(\cpt_store_s_reg[2]_20 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[22]_i_6 
       (.I0(\data_out_s[22]_i_9_n_0 ),
        .I1(\data_out_s_reg[22]_i_2 ),
        .O(\cpt_store_s_reg[2]_21 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[23]_i_6 
       (.I0(\data_out_s[23]_i_9_n_0 ),
        .I1(\data_out_s_reg[23]_i_2 ),
        .O(\cpt_store_s_reg[2]_22 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[24]_i_6 
       (.I0(\data_out_s[24]_i_9_n_0 ),
        .I1(\data_out_s_reg[24]_i_2 ),
        .O(\cpt_store_s_reg[2]_23 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[25]_i_6 
       (.I0(\data_out_s[25]_i_9_n_0 ),
        .I1(\data_out_s_reg[25]_i_2 ),
        .O(\cpt_store_s_reg[2]_24 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[26]_i_6 
       (.I0(\data_out_s[26]_i_9_n_0 ),
        .I1(\data_out_s_reg[26]_i_2 ),
        .O(\cpt_store_s_reg[2]_25 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[27]_i_6 
       (.I0(\data_out_s[27]_i_9_n_0 ),
        .I1(\data_out_s_reg[27]_i_2 ),
        .O(\cpt_store_s_reg[2]_26 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[28]_i_6 
       (.I0(\data_out_s[28]_i_9_n_0 ),
        .I1(\data_out_s_reg[28]_i_2 ),
        .O(\cpt_store_s_reg[2]_27 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[29]_i_6 
       (.I0(\data_out_s[29]_i_9_n_0 ),
        .I1(\data_out_s_reg[29]_i_2 ),
        .O(\cpt_store_s_reg[2]_28 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[2]_i_6 
       (.I0(\data_out_s[2]_i_9_n_0 ),
        .I1(\data_out_s_reg[2]_i_2 ),
        .O(\cpt_store_s_reg[2]_1 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[30]_i_6 
       (.I0(\data_out_s[30]_i_9_n_0 ),
        .I1(\data_out_s_reg[30]_i_2 ),
        .O(\cpt_store_s_reg[2]_29 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[31]_i_14 
       (.I0(\data_out_s[31]_i_17_n_0 ),
        .I1(\data_out_s_reg[31]_i_8_0 ),
        .O(\cpt_store_s_reg[2]_30 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[3]_i_6 
       (.I0(\data_out_s[3]_i_9_n_0 ),
        .I1(\data_out_s_reg[3]_i_2 ),
        .O(\cpt_store_s_reg[2]_2 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[4]_i_6 
       (.I0(\data_out_s[4]_i_9_n_0 ),
        .I1(\data_out_s_reg[4]_i_2 ),
        .O(\cpt_store_s_reg[2]_3 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[5]_i_6 
       (.I0(\data_out_s[5]_i_9_n_0 ),
        .I1(\data_out_s_reg[5]_i_2 ),
        .O(\cpt_store_s_reg[2]_4 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[6]_i_6 
       (.I0(\data_out_s[6]_i_9_n_0 ),
        .I1(\data_out_s_reg[6]_i_2 ),
        .O(\cpt_store_s_reg[2]_5 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[7]_i_6 
       (.I0(\data_out_s[7]_i_9_n_0 ),
        .I1(\data_out_s_reg[7]_i_2 ),
        .O(\cpt_store_s_reg[2]_6 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[8]_i_6 
       (.I0(\data_out_s[8]_i_9_n_0 ),
        .I1(\data_out_s_reg[8]_i_2 ),
        .O(\cpt_store_s_reg[2]_7 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  MUXF7 \data_out_s_reg[9]_i_6 
       (.I0(\data_out_s[9]_i_9_n_0 ),
        .I1(\data_out_s_reg[9]_i_2 ),
        .O(\cpt_store_s_reg[2]_8 ),
        .S(\data_out_s_reg[31]_i_8 [2]));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg_n_0_[0] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg_n_0_[10] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg_n_0_[11] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg_n_0_[12] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg_n_0_[13] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg_n_0_[14] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg_n_0_[15] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg_n_0_[16] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg_n_0_[17] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg_n_0_[18] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg_n_0_[19] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg_n_0_[1] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg_n_0_[20] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg_n_0_[21] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg_n_0_[22] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg_n_0_[23] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg_n_0_[24] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg_n_0_[25] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg_n_0_[26] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg_n_0_[27] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg_n_0_[28] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg_n_0_[29] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg_n_0_[2] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg_n_0_[30] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg_n_0_[31] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg_n_0_[3] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg_n_0_[4] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg_n_0_[5] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg_n_0_[6] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg_n_0_[7] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg_n_0_[8] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg_n_0_[9] ),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__12
       (.I0(Q),
        .I1(data_en_s_0),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__12_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__12_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__10
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__10_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__10_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_10
   (end_s,
    data_en_s,
    ACOUT,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    DOBDO,
    ready_s_reg_0,
    data_en_s_0);
  output end_s;
  output [0:0]data_en_s;
  output [29:0]ACOUT;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [15:0]DOBDO;
  input [0:0]ready_s_reg_0;
  input data_en_s_0;

  wire [29:0]ACOUT;
  wire [15:0]DOBDO;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_s;
  wire data_en_s_0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__22_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__0_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__22
       (.I0(Q),
        .I1(data_en_s_0),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__22_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__22_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__0
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__0_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__0_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO[15],DOBDO}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(data_in_en_s),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_11
   (end_s,
    data_en_s,
    ACOUT,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s_0);
  output end_s;
  output [0:0]data_en_s;
  output [29:0]ACOUT;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s_0;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_s;
  wire data_en_s_0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__3_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__19_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__3
       (.I0(Q),
        .I1(data_en_s_0),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__3_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__3_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__19
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__19_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__19_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_12
   (end_s,
    data_en_s,
    ACOUT,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s_0);
  output end_s;
  output [0:0]data_en_s;
  output [29:0]ACOUT;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s_0;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_s;
  wire data_en_s_0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__2_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__20_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__2
       (.I0(Q),
        .I1(data_en_s_0),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__2_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__2_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__20
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__20_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__20_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_13
   (end_s,
    data_en_s,
    ACOUT,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s_0);
  output end_s;
  output [0:0]data_en_s;
  output [29:0]ACOUT;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s_0;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_s;
  wire data_en_s_0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__1_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__21_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__1
       (.I0(Q),
        .I1(data_en_s_0),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__1_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__1_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__21
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__21_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__21_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_14
   (end_s,
    ACOUT,
    ready_s,
    data_en_o_reg_0,
    \final_res_s_reg[0]_0 ,
    \final_res_s_reg[1]_0 ,
    \final_res_s_reg[2]_0 ,
    \final_res_s_reg[3]_0 ,
    \final_res_s_reg[4]_0 ,
    \final_res_s_reg[5]_0 ,
    \final_res_s_reg[6]_0 ,
    \final_res_s_reg[7]_0 ,
    \final_res_s_reg[8]_0 ,
    \final_res_s_reg[9]_0 ,
    \final_res_s_reg[10]_0 ,
    \final_res_s_reg[11]_0 ,
    \final_res_s_reg[12]_0 ,
    \final_res_s_reg[13]_0 ,
    \final_res_s_reg[14]_0 ,
    \final_res_s_reg[15]_0 ,
    \final_res_s_reg[16]_0 ,
    \final_res_s_reg[17]_0 ,
    \final_res_s_reg[18]_0 ,
    \final_res_s_reg[19]_0 ,
    \final_res_s_reg[20]_0 ,
    \final_res_s_reg[21]_0 ,
    \final_res_s_reg[22]_0 ,
    \final_res_s_reg[23]_0 ,
    \final_res_s_reg[24]_0 ,
    \final_res_s_reg[25]_0 ,
    \final_res_s_reg[26]_0 ,
    \final_res_s_reg[27]_0 ,
    \final_res_s_reg[28]_0 ,
    \final_res_s_reg[29]_0 ,
    \final_res_s_reg[30]_0 ,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    \cpt_store_s_reg[0]_rep ,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s,
    \data_out_s_reg[31] ,
    \data_out_s_reg[9] ,
    \data_out_s_reg[31]_0 ,
    \data_out_s_reg[10] ,
    \data_out_s_reg[31]_1 ,
    \data_out_s_reg[31]_2 );
  output end_s;
  output [29:0]ACOUT;
  output ready_s;
  output data_en_o_reg_0;
  output \final_res_s_reg[0]_0 ;
  output \final_res_s_reg[1]_0 ;
  output \final_res_s_reg[2]_0 ;
  output \final_res_s_reg[3]_0 ;
  output \final_res_s_reg[4]_0 ;
  output \final_res_s_reg[5]_0 ;
  output \final_res_s_reg[6]_0 ;
  output \final_res_s_reg[7]_0 ;
  output \final_res_s_reg[8]_0 ;
  output \final_res_s_reg[9]_0 ;
  output \final_res_s_reg[10]_0 ;
  output \final_res_s_reg[11]_0 ;
  output \final_res_s_reg[12]_0 ;
  output \final_res_s_reg[13]_0 ;
  output \final_res_s_reg[14]_0 ;
  output \final_res_s_reg[15]_0 ;
  output \final_res_s_reg[16]_0 ;
  output \final_res_s_reg[17]_0 ;
  output \final_res_s_reg[18]_0 ;
  output \final_res_s_reg[19]_0 ;
  output \final_res_s_reg[20]_0 ;
  output \final_res_s_reg[21]_0 ;
  output \final_res_s_reg[22]_0 ;
  output \final_res_s_reg[23]_0 ;
  output \final_res_s_reg[24]_0 ;
  output \final_res_s_reg[25]_0 ;
  output \final_res_s_reg[26]_0 ;
  output \final_res_s_reg[27]_0 ;
  output \final_res_s_reg[28]_0 ;
  output \final_res_s_reg[29]_0 ;
  output \final_res_s_reg[30]_0 ;
  output \final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [4:0]\cpt_store_s_reg[0]_rep ;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s;
  input [31:0]\data_out_s_reg[31] ;
  input \data_out_s_reg[9] ;
  input [31:0]\data_out_s_reg[31]_0 ;
  input [1:0]\data_out_s_reg[10] ;
  input [31:0]\data_out_s_reg[31]_1 ;
  input \data_out_s_reg[31]_2 ;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire [4:0]\cpt_store_s_reg[0]_rep ;
  wire data_clk_i;
  wire data_en_o_reg_0;
  wire data_en_s;
  wire [23:23]data_en_s__0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire [1:0]\data_out_s_reg[10] ;
  wire [31:0]\data_out_s_reg[31] ;
  wire [31:0]\data_out_s_reg[31]_0 ;
  wire [31:0]\data_out_s_reg[31]_1 ;
  wire \data_out_s_reg[31]_2 ;
  wire \data_out_s_reg[9] ;
  wire data_rst_i;
  wire end_s;
  wire \final_res_s_reg[0]_0 ;
  wire \final_res_s_reg[10]_0 ;
  wire \final_res_s_reg[11]_0 ;
  wire \final_res_s_reg[12]_0 ;
  wire \final_res_s_reg[13]_0 ;
  wire \final_res_s_reg[14]_0 ;
  wire \final_res_s_reg[15]_0 ;
  wire \final_res_s_reg[16]_0 ;
  wire \final_res_s_reg[17]_0 ;
  wire \final_res_s_reg[18]_0 ;
  wire \final_res_s_reg[19]_0 ;
  wire \final_res_s_reg[1]_0 ;
  wire \final_res_s_reg[20]_0 ;
  wire \final_res_s_reg[21]_0 ;
  wire \final_res_s_reg[22]_0 ;
  wire \final_res_s_reg[23]_0 ;
  wire \final_res_s_reg[24]_0 ;
  wire \final_res_s_reg[25]_0 ;
  wire \final_res_s_reg[26]_0 ;
  wire \final_res_s_reg[27]_0 ;
  wire \final_res_s_reg[28]_0 ;
  wire \final_res_s_reg[29]_0 ;
  wire \final_res_s_reg[2]_0 ;
  wire \final_res_s_reg[30]_0 ;
  wire \final_res_s_reg[31]_0 ;
  wire \final_res_s_reg[3]_0 ;
  wire \final_res_s_reg[4]_0 ;
  wire \final_res_s_reg[5]_0 ;
  wire \final_res_s_reg[6]_0 ;
  wire \final_res_s_reg[7]_0 ;
  wire \final_res_s_reg[8]_0 ;
  wire \final_res_s_reg[9]_0 ;
  wire \final_res_s_reg_n_0_[0] ;
  wire \final_res_s_reg_n_0_[10] ;
  wire \final_res_s_reg_n_0_[11] ;
  wire \final_res_s_reg_n_0_[12] ;
  wire \final_res_s_reg_n_0_[13] ;
  wire \final_res_s_reg_n_0_[14] ;
  wire \final_res_s_reg_n_0_[15] ;
  wire \final_res_s_reg_n_0_[16] ;
  wire \final_res_s_reg_n_0_[17] ;
  wire \final_res_s_reg_n_0_[18] ;
  wire \final_res_s_reg_n_0_[19] ;
  wire \final_res_s_reg_n_0_[1] ;
  wire \final_res_s_reg_n_0_[20] ;
  wire \final_res_s_reg_n_0_[21] ;
  wire \final_res_s_reg_n_0_[22] ;
  wire \final_res_s_reg_n_0_[23] ;
  wire \final_res_s_reg_n_0_[24] ;
  wire \final_res_s_reg_n_0_[25] ;
  wire \final_res_s_reg_n_0_[26] ;
  wire \final_res_s_reg_n_0_[27] ;
  wire \final_res_s_reg_n_0_[28] ;
  wire \final_res_s_reg_n_0_[29] ;
  wire \final_res_s_reg_n_0_[2] ;
  wire \final_res_s_reg_n_0_[30] ;
  wire \final_res_s_reg_n_0_[31] ;
  wire \final_res_s_reg_n_0_[3] ;
  wire \final_res_s_reg_n_0_[4] ;
  wire \final_res_s_reg_n_0_[5] ;
  wire \final_res_s_reg_n_0_[6] ;
  wire \final_res_s_reg_n_0_[7] ;
  wire \final_res_s_reg_n_0_[8] ;
  wire \final_res_s_reg_n_0_[9] ;
  wire must_rst_s_i_1__0_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__22_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s__0),
        .R(data_rst_i));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[0]_i_3 
       (.I0(\final_res_s_reg_n_0_[0] ),
        .I1(\data_out_s_reg[31] [0]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [0]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [0]),
        .O(\final_res_s_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[10]_i_3 
       (.I0(\final_res_s_reg_n_0_[10] ),
        .I1(\data_out_s_reg[31] [10]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [10]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [10]),
        .O(\final_res_s_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[11]_i_3 
       (.I0(\final_res_s_reg_n_0_[11] ),
        .I1(\data_out_s_reg[31] [11]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [11]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [11]),
        .O(\final_res_s_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[12]_i_3 
       (.I0(\final_res_s_reg_n_0_[12] ),
        .I1(\data_out_s_reg[31] [12]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [12]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [12]),
        .O(\final_res_s_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[13]_i_3 
       (.I0(\final_res_s_reg_n_0_[13] ),
        .I1(\data_out_s_reg[31] [13]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [13]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [13]),
        .O(\final_res_s_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[14]_i_3 
       (.I0(\final_res_s_reg_n_0_[14] ),
        .I1(\data_out_s_reg[31] [14]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [14]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [14]),
        .O(\final_res_s_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[15]_i_3 
       (.I0(\final_res_s_reg_n_0_[15] ),
        .I1(\data_out_s_reg[31] [15]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [15]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [15]),
        .O(\final_res_s_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[16]_i_3 
       (.I0(\final_res_s_reg_n_0_[16] ),
        .I1(\data_out_s_reg[31] [16]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [16]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [16]),
        .O(\final_res_s_reg[16]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[17]_i_3 
       (.I0(\final_res_s_reg_n_0_[17] ),
        .I1(\data_out_s_reg[31] [17]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [17]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [17]),
        .O(\final_res_s_reg[17]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[18]_i_3 
       (.I0(\final_res_s_reg_n_0_[18] ),
        .I1(\data_out_s_reg[31] [18]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [18]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [18]),
        .O(\final_res_s_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[19]_i_3 
       (.I0(\final_res_s_reg_n_0_[19] ),
        .I1(\data_out_s_reg[31] [19]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [19]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [19]),
        .O(\final_res_s_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[1]_i_3 
       (.I0(\final_res_s_reg_n_0_[1] ),
        .I1(\data_out_s_reg[31] [1]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [1]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [1]),
        .O(\final_res_s_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[20]_i_3 
       (.I0(\final_res_s_reg_n_0_[20] ),
        .I1(\data_out_s_reg[31] [20]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [20]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [20]),
        .O(\final_res_s_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[21]_i_3 
       (.I0(\final_res_s_reg_n_0_[21] ),
        .I1(\data_out_s_reg[31] [21]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [21]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [21]),
        .O(\final_res_s_reg[21]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[22]_i_3 
       (.I0(\final_res_s_reg_n_0_[22] ),
        .I1(\data_out_s_reg[31] [22]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [22]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [22]),
        .O(\final_res_s_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[23]_i_3 
       (.I0(\final_res_s_reg_n_0_[23] ),
        .I1(\data_out_s_reg[31] [23]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [23]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [23]),
        .O(\final_res_s_reg[23]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[24]_i_3 
       (.I0(\final_res_s_reg_n_0_[24] ),
        .I1(\data_out_s_reg[31] [24]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [24]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [24]),
        .O(\final_res_s_reg[24]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[25]_i_3 
       (.I0(\final_res_s_reg_n_0_[25] ),
        .I1(\data_out_s_reg[31] [25]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [25]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [25]),
        .O(\final_res_s_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[26]_i_3 
       (.I0(\final_res_s_reg_n_0_[26] ),
        .I1(\data_out_s_reg[31] [26]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [26]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [26]),
        .O(\final_res_s_reg[26]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[27]_i_3 
       (.I0(\final_res_s_reg_n_0_[27] ),
        .I1(\data_out_s_reg[31] [27]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [27]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [27]),
        .O(\final_res_s_reg[27]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[28]_i_3 
       (.I0(\final_res_s_reg_n_0_[28] ),
        .I1(\data_out_s_reg[31] [28]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [28]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [28]),
        .O(\final_res_s_reg[28]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[29]_i_3 
       (.I0(\final_res_s_reg_n_0_[29] ),
        .I1(\data_out_s_reg[31] [29]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [29]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [29]),
        .O(\final_res_s_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[2]_i_3 
       (.I0(\final_res_s_reg_n_0_[2] ),
        .I1(\data_out_s_reg[31] [2]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [2]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [2]),
        .O(\final_res_s_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[30]_i_3 
       (.I0(\final_res_s_reg_n_0_[30] ),
        .I1(\data_out_s_reg[31] [30]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [30]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [30]),
        .O(\final_res_s_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[31]_i_10 
       (.I0(\final_res_s_reg_n_0_[31] ),
        .I1(\data_out_s_reg[31] [31]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [31]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [31]),
        .O(\final_res_s_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_out_s[31]_i_7 
       (.I0(data_en_s__0),
        .I1(\cpt_store_s_reg[0]_rep [3]),
        .I2(\cpt_store_s_reg[0]_rep [4]),
        .I3(\cpt_store_s_reg[0]_rep [0]),
        .I4(\cpt_store_s_reg[0]_rep [1]),
        .I5(\cpt_store_s_reg[0]_rep [2]),
        .O(data_en_o_reg_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[3]_i_3 
       (.I0(\final_res_s_reg_n_0_[3] ),
        .I1(\data_out_s_reg[31] [3]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [3]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [3]),
        .O(\final_res_s_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[4]_i_3 
       (.I0(\final_res_s_reg_n_0_[4] ),
        .I1(\data_out_s_reg[31] [4]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [4]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [4]),
        .O(\final_res_s_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[5]_i_3 
       (.I0(\final_res_s_reg_n_0_[5] ),
        .I1(\data_out_s_reg[31] [5]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [5]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [5]),
        .O(\final_res_s_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[6]_i_3 
       (.I0(\final_res_s_reg_n_0_[6] ),
        .I1(\data_out_s_reg[31] [6]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [6]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [6]),
        .O(\final_res_s_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[7]_i_3 
       (.I0(\final_res_s_reg_n_0_[7] ),
        .I1(\data_out_s_reg[31] [7]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [7]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [7]),
        .O(\final_res_s_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[8]_i_3 
       (.I0(\final_res_s_reg_n_0_[8] ),
        .I1(\data_out_s_reg[31] [8]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [8]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [8]),
        .O(\final_res_s_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[9]_i_3 
       (.I0(\final_res_s_reg_n_0_[9] ),
        .I1(\data_out_s_reg[31] [9]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [9]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [9]),
        .O(\final_res_s_reg[9]_0 ));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg_n_0_[0] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg_n_0_[10] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg_n_0_[11] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg_n_0_[12] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg_n_0_[13] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg_n_0_[14] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg_n_0_[15] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg_n_0_[16] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg_n_0_[17] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg_n_0_[18] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg_n_0_[19] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg_n_0_[1] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg_n_0_[20] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg_n_0_[21] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg_n_0_[22] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg_n_0_[23] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg_n_0_[24] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg_n_0_[25] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg_n_0_[26] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg_n_0_[27] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg_n_0_[28] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg_n_0_[29] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg_n_0_[2] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg_n_0_[30] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg_n_0_[31] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg_n_0_[3] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg_n_0_[4] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg_n_0_[5] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg_n_0_[6] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg_n_0_[7] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg_n_0_[8] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg_n_0_[9] ),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__0
       (.I0(Q),
        .I1(data_en_s),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__0_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__0_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__22
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__22_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__22_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_15
   (end_s,
    data_en_o_reg_0,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    ACOUT,
    ready_s_reg_0,
    data_en_s);
  output end_s;
  output [0:0]data_en_o_reg_0;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]ACOUT;
  input [0:0]ready_s_reg_0;
  input data_en_s;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_o_reg_0;
  wire data_en_s;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__23_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_res_s_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_o_reg_0),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1
       (.I0(Q),
        .I1(data_en_s),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__23
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__23_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__23_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(ACOUT),
        .ACOUT(NLW_res_s_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_16
   (end_s,
    data_en_s,
    ACOUT,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s_0);
  output end_s;
  output [0:0]data_en_s;
  output [29:0]ACOUT;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s_0;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_s;
  wire data_en_s_0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__21_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__1_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__21
       (.I0(Q),
        .I1(data_en_s_0),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__21_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__21_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__1
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__1_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__1_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(data_in_en_s),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_17
   (end_s,
    ACOUT,
    ready_s,
    SR,
    data_en_next,
    D,
    data_rst_i,
    Q,
    data_clk_i,
    \cpt_store_s_reg[0]_rep ,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s,
    \cpt_store_s_reg[0]_rep_0 ,
    \cpt_store_s_reg[0]_rep_1 ,
    \cpt_store_s_reg[0]_rep_2 ,
    \cpt_store_s_reg[0]_rep_3 ,
    \cpt_store_s_reg[0]_rep_4 ,
    \data_out_s_reg[31] ,
    \data_out_s_reg[0] ,
    \data_out_s_reg[0]_0 ,
    \data_out_s_reg[0]_1 ,
    \data_out_s_reg[0]_2 ,
    \data_out_s_reg[0]_3 ,
    \data_out_s_reg[0]_4 ,
    \data_out_s_reg[0]_i_2_0 ,
    \data_out_s_reg[31]_i_13_0 ,
    \data_out_s_reg[0]_i_5_0 ,
    \data_out_s_reg[31]_i_13_1 ,
    \data_out_s_reg[31]_i_13_2 ,
    \data_out_s_reg[31]_0 ,
    \data_out_s_reg[31]_1 ,
    \data_out_s_reg[30] ,
    \data_out_s_reg[30]_0 ,
    \data_out_s_reg[29] ,
    \data_out_s_reg[29]_0 ,
    \data_out_s_reg[28] ,
    \data_out_s_reg[28]_0 ,
    \data_out_s_reg[27] ,
    \data_out_s_reg[27]_0 ,
    \data_out_s_reg[26] ,
    \data_out_s_reg[26]_0 ,
    \data_out_s_reg[25] ,
    \data_out_s_reg[25]_0 ,
    \data_out_s_reg[24] ,
    \data_out_s_reg[24]_0 ,
    \data_out_s_reg[23] ,
    \data_out_s_reg[23]_0 ,
    \data_out_s_reg[22] ,
    \data_out_s_reg[22]_0 ,
    \data_out_s_reg[21] ,
    \data_out_s_reg[21]_0 ,
    \data_out_s_reg[20] ,
    \data_out_s_reg[20]_0 ,
    \data_out_s_reg[19] ,
    \data_out_s_reg[19]_0 ,
    \data_out_s_reg[18] ,
    \data_out_s_reg[18]_0 ,
    \data_out_s_reg[17] ,
    \data_out_s_reg[17]_0 ,
    \data_out_s_reg[16] ,
    \data_out_s_reg[16]_0 ,
    \data_out_s_reg[15] ,
    \data_out_s_reg[15]_0 ,
    \data_out_s_reg[14] ,
    \data_out_s_reg[14]_0 ,
    \data_out_s_reg[13] ,
    \data_out_s_reg[13]_0 ,
    \data_out_s_reg[12] ,
    \data_out_s_reg[12]_0 ,
    \data_out_s_reg[11] ,
    \data_out_s_reg[11]_0 ,
    \data_out_s_reg[10] ,
    \data_out_s_reg[10]_0 ,
    \data_out_s_reg[9] ,
    \data_out_s_reg[9]_0 ,
    \data_out_s_reg[8] ,
    \data_out_s_reg[8]_0 ,
    \data_out_s_reg[7] ,
    \data_out_s_reg[7]_0 ,
    \data_out_s_reg[6] ,
    \data_out_s_reg[6]_0 ,
    \data_out_s_reg[5] ,
    \data_out_s_reg[5]_0 ,
    \data_out_s_reg[4] ,
    \data_out_s_reg[4]_0 ,
    \data_out_s_reg[3] ,
    \data_out_s_reg[3]_0 ,
    \data_out_s_reg[2] ,
    \data_out_s_reg[2]_0 ,
    \data_out_s_reg[1] ,
    \data_out_s_reg[1]_0 ,
    \data_out_s_reg[1]_1 ,
    \data_out_s_reg[1]_i_2_0 ,
    \data_out_s_reg[2]_1 ,
    \data_out_s_reg[2]_i_2_0 ,
    \data_out_s_reg[3]_1 ,
    \data_out_s_reg[3]_i_2_0 ,
    \data_out_s_reg[4]_1 ,
    \data_out_s_reg[4]_i_2_0 ,
    \data_out_s_reg[5]_1 ,
    \data_out_s_reg[5]_i_2_0 ,
    \data_out_s_reg[6]_1 ,
    \data_out_s_reg[6]_i_2_0 ,
    \data_out_s_reg[7]_1 ,
    \data_out_s_reg[7]_i_2_0 ,
    \data_out_s_reg[8]_1 ,
    \data_out_s_reg[8]_i_2_0 ,
    \data_out_s_reg[9]_1 ,
    \data_out_s_reg[9]_i_2_0 ,
    \data_out_s_reg[10]_1 ,
    \data_out_s_reg[10]_i_2_0 ,
    \data_out_s_reg[10]_i_5_0 ,
    \data_out_s_reg[11]_1 ,
    \data_out_s_reg[11]_i_2_0 ,
    \data_out_s_reg[12]_1 ,
    \data_out_s_reg[12]_i_2_0 ,
    \data_out_s_reg[13]_1 ,
    \data_out_s_reg[13]_i_2_0 ,
    \data_out_s_reg[14]_1 ,
    \data_out_s_reg[14]_i_2_0 ,
    \data_out_s_reg[15]_1 ,
    \data_out_s_reg[15]_i_2_0 ,
    \data_out_s_reg[16]_1 ,
    \data_out_s_reg[16]_i_2_0 ,
    \data_out_s_reg[17]_1 ,
    \data_out_s_reg[17]_i_2_0 ,
    \data_out_s_reg[18]_1 ,
    \data_out_s_reg[18]_i_2_0 ,
    \data_out_s_reg[19]_1 ,
    \data_out_s_reg[19]_i_2_0 ,
    \data_out_s_reg[20]_1 ,
    \data_out_s_reg[20]_i_2_0 ,
    \data_out_s_reg[21]_1 ,
    \data_out_s_reg[21]_i_2_0 ,
    \data_out_s_reg[22]_1 ,
    \data_out_s_reg[22]_i_2_0 ,
    \data_out_s_reg[23]_1 ,
    \data_out_s_reg[23]_i_2_0 ,
    \data_out_s_reg[24]_1 ,
    \data_out_s_reg[24]_i_2_0 ,
    \data_out_s_reg[25]_1 ,
    \data_out_s_reg[25]_i_2_0 ,
    \data_out_s_reg[26]_1 ,
    \data_out_s_reg[26]_i_2_0 ,
    \data_out_s_reg[27]_1 ,
    \data_out_s_reg[27]_i_2_0 ,
    \data_out_s_reg[28]_1 ,
    \data_out_s_reg[28]_i_2_0 ,
    \data_out_s_reg[29]_1 ,
    \data_out_s_reg[29]_i_2_0 ,
    \data_out_s_reg[30]_1 ,
    \data_out_s_reg[30]_i_2_0 ,
    \data_out_s_reg[31]_2 ,
    \data_out_s_reg[31]_i_8_0 );
  output end_s;
  output [29:0]ACOUT;
  output ready_s;
  output [0:0]SR;
  output data_en_next;
  output [31:0]D;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [2:0]\cpt_store_s_reg[0]_rep ;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s;
  input \cpt_store_s_reg[0]_rep_0 ;
  input \cpt_store_s_reg[0]_rep_1 ;
  input \cpt_store_s_reg[0]_rep_2 ;
  input \cpt_store_s_reg[0]_rep_3 ;
  input \cpt_store_s_reg[0]_rep_4 ;
  input [31:0]\data_out_s_reg[31] ;
  input \data_out_s_reg[0] ;
  input \data_out_s_reg[0]_0 ;
  input \data_out_s_reg[0]_1 ;
  input \data_out_s_reg[0]_2 ;
  input [3:0]\data_out_s_reg[0]_3 ;
  input \data_out_s_reg[0]_4 ;
  input \data_out_s_reg[0]_i_2_0 ;
  input [31:0]\data_out_s_reg[31]_i_13_0 ;
  input \data_out_s_reg[0]_i_5_0 ;
  input [31:0]\data_out_s_reg[31]_i_13_1 ;
  input [31:0]\data_out_s_reg[31]_i_13_2 ;
  input \data_out_s_reg[31]_0 ;
  input \data_out_s_reg[31]_1 ;
  input \data_out_s_reg[30] ;
  input \data_out_s_reg[30]_0 ;
  input \data_out_s_reg[29] ;
  input \data_out_s_reg[29]_0 ;
  input \data_out_s_reg[28] ;
  input \data_out_s_reg[28]_0 ;
  input \data_out_s_reg[27] ;
  input \data_out_s_reg[27]_0 ;
  input \data_out_s_reg[26] ;
  input \data_out_s_reg[26]_0 ;
  input \data_out_s_reg[25] ;
  input \data_out_s_reg[25]_0 ;
  input \data_out_s_reg[24] ;
  input \data_out_s_reg[24]_0 ;
  input \data_out_s_reg[23] ;
  input \data_out_s_reg[23]_0 ;
  input \data_out_s_reg[22] ;
  input \data_out_s_reg[22]_0 ;
  input \data_out_s_reg[21] ;
  input \data_out_s_reg[21]_0 ;
  input \data_out_s_reg[20] ;
  input \data_out_s_reg[20]_0 ;
  input \data_out_s_reg[19] ;
  input \data_out_s_reg[19]_0 ;
  input \data_out_s_reg[18] ;
  input \data_out_s_reg[18]_0 ;
  input \data_out_s_reg[17] ;
  input \data_out_s_reg[17]_0 ;
  input \data_out_s_reg[16] ;
  input \data_out_s_reg[16]_0 ;
  input \data_out_s_reg[15] ;
  input \data_out_s_reg[15]_0 ;
  input \data_out_s_reg[14] ;
  input \data_out_s_reg[14]_0 ;
  input \data_out_s_reg[13] ;
  input \data_out_s_reg[13]_0 ;
  input \data_out_s_reg[12] ;
  input \data_out_s_reg[12]_0 ;
  input \data_out_s_reg[11] ;
  input \data_out_s_reg[11]_0 ;
  input \data_out_s_reg[10] ;
  input \data_out_s_reg[10]_0 ;
  input \data_out_s_reg[9] ;
  input \data_out_s_reg[9]_0 ;
  input \data_out_s_reg[8] ;
  input \data_out_s_reg[8]_0 ;
  input \data_out_s_reg[7] ;
  input \data_out_s_reg[7]_0 ;
  input \data_out_s_reg[6] ;
  input \data_out_s_reg[6]_0 ;
  input \data_out_s_reg[5] ;
  input \data_out_s_reg[5]_0 ;
  input \data_out_s_reg[4] ;
  input \data_out_s_reg[4]_0 ;
  input \data_out_s_reg[3] ;
  input \data_out_s_reg[3]_0 ;
  input \data_out_s_reg[2] ;
  input \data_out_s_reg[2]_0 ;
  input \data_out_s_reg[1] ;
  input \data_out_s_reg[1]_0 ;
  input \data_out_s_reg[1]_1 ;
  input \data_out_s_reg[1]_i_2_0 ;
  input \data_out_s_reg[2]_1 ;
  input \data_out_s_reg[2]_i_2_0 ;
  input \data_out_s_reg[3]_1 ;
  input \data_out_s_reg[3]_i_2_0 ;
  input \data_out_s_reg[4]_1 ;
  input \data_out_s_reg[4]_i_2_0 ;
  input \data_out_s_reg[5]_1 ;
  input \data_out_s_reg[5]_i_2_0 ;
  input \data_out_s_reg[6]_1 ;
  input \data_out_s_reg[6]_i_2_0 ;
  input \data_out_s_reg[7]_1 ;
  input \data_out_s_reg[7]_i_2_0 ;
  input \data_out_s_reg[8]_1 ;
  input \data_out_s_reg[8]_i_2_0 ;
  input \data_out_s_reg[9]_1 ;
  input \data_out_s_reg[9]_i_2_0 ;
  input \data_out_s_reg[10]_1 ;
  input \data_out_s_reg[10]_i_2_0 ;
  input \data_out_s_reg[10]_i_5_0 ;
  input \data_out_s_reg[11]_1 ;
  input \data_out_s_reg[11]_i_2_0 ;
  input \data_out_s_reg[12]_1 ;
  input \data_out_s_reg[12]_i_2_0 ;
  input \data_out_s_reg[13]_1 ;
  input \data_out_s_reg[13]_i_2_0 ;
  input \data_out_s_reg[14]_1 ;
  input \data_out_s_reg[14]_i_2_0 ;
  input \data_out_s_reg[15]_1 ;
  input \data_out_s_reg[15]_i_2_0 ;
  input \data_out_s_reg[16]_1 ;
  input \data_out_s_reg[16]_i_2_0 ;
  input \data_out_s_reg[17]_1 ;
  input \data_out_s_reg[17]_i_2_0 ;
  input \data_out_s_reg[18]_1 ;
  input \data_out_s_reg[18]_i_2_0 ;
  input \data_out_s_reg[19]_1 ;
  input \data_out_s_reg[19]_i_2_0 ;
  input \data_out_s_reg[20]_1 ;
  input \data_out_s_reg[20]_i_2_0 ;
  input \data_out_s_reg[21]_1 ;
  input \data_out_s_reg[21]_i_2_0 ;
  input \data_out_s_reg[22]_1 ;
  input \data_out_s_reg[22]_i_2_0 ;
  input \data_out_s_reg[23]_1 ;
  input \data_out_s_reg[23]_i_2_0 ;
  input \data_out_s_reg[24]_1 ;
  input \data_out_s_reg[24]_i_2_0 ;
  input \data_out_s_reg[25]_1 ;
  input \data_out_s_reg[25]_i_2_0 ;
  input \data_out_s_reg[26]_1 ;
  input \data_out_s_reg[26]_i_2_0 ;
  input \data_out_s_reg[27]_1 ;
  input \data_out_s_reg[27]_i_2_0 ;
  input \data_out_s_reg[28]_1 ;
  input \data_out_s_reg[28]_i_2_0 ;
  input \data_out_s_reg[29]_1 ;
  input \data_out_s_reg[29]_i_2_0 ;
  input \data_out_s_reg[30]_1 ;
  input \data_out_s_reg[30]_i_2_0 ;
  input \data_out_s_reg[31]_2 ;
  input \data_out_s_reg[31]_i_8_0 ;

  wire [29:0]ACOUT;
  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [2:0]\cpt_store_s_reg[0]_rep ;
  wire \cpt_store_s_reg[0]_rep_0 ;
  wire \cpt_store_s_reg[0]_rep_1 ;
  wire \cpt_store_s_reg[0]_rep_2 ;
  wire \cpt_store_s_reg[0]_rep_3 ;
  wire \cpt_store_s_reg[0]_rep_4 ;
  wire data_clk_i;
  wire data_en_next;
  wire data_en_s;
  wire [3:3]data_en_s__0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire \data_out_s[0]_i_7_n_0 ;
  wire \data_out_s[10]_i_7_n_0 ;
  wire \data_out_s[11]_i_7_n_0 ;
  wire \data_out_s[12]_i_7_n_0 ;
  wire \data_out_s[13]_i_7_n_0 ;
  wire \data_out_s[14]_i_7_n_0 ;
  wire \data_out_s[15]_i_7_n_0 ;
  wire \data_out_s[16]_i_7_n_0 ;
  wire \data_out_s[17]_i_7_n_0 ;
  wire \data_out_s[18]_i_7_n_0 ;
  wire \data_out_s[19]_i_7_n_0 ;
  wire \data_out_s[1]_i_7_n_0 ;
  wire \data_out_s[20]_i_7_n_0 ;
  wire \data_out_s[21]_i_7_n_0 ;
  wire \data_out_s[22]_i_7_n_0 ;
  wire \data_out_s[23]_i_7_n_0 ;
  wire \data_out_s[24]_i_7_n_0 ;
  wire \data_out_s[25]_i_7_n_0 ;
  wire \data_out_s[26]_i_7_n_0 ;
  wire \data_out_s[27]_i_7_n_0 ;
  wire \data_out_s[28]_i_7_n_0 ;
  wire \data_out_s[29]_i_7_n_0 ;
  wire \data_out_s[2]_i_7_n_0 ;
  wire \data_out_s[30]_i_7_n_0 ;
  wire \data_out_s[31]_i_15_n_0 ;
  wire \data_out_s[31]_i_3_n_0 ;
  wire \data_out_s[3]_i_7_n_0 ;
  wire \data_out_s[4]_i_7_n_0 ;
  wire \data_out_s[5]_i_7_n_0 ;
  wire \data_out_s[6]_i_7_n_0 ;
  wire \data_out_s[7]_i_7_n_0 ;
  wire \data_out_s[8]_i_7_n_0 ;
  wire \data_out_s[9]_i_7_n_0 ;
  wire \data_out_s_reg[0] ;
  wire \data_out_s_reg[0]_0 ;
  wire \data_out_s_reg[0]_1 ;
  wire \data_out_s_reg[0]_2 ;
  wire [3:0]\data_out_s_reg[0]_3 ;
  wire \data_out_s_reg[0]_4 ;
  wire \data_out_s_reg[0]_i_2_0 ;
  wire \data_out_s_reg[0]_i_2_n_0 ;
  wire \data_out_s_reg[0]_i_5_0 ;
  wire \data_out_s_reg[0]_i_5_n_0 ;
  wire \data_out_s_reg[10] ;
  wire \data_out_s_reg[10]_0 ;
  wire \data_out_s_reg[10]_1 ;
  wire \data_out_s_reg[10]_i_2_0 ;
  wire \data_out_s_reg[10]_i_2_n_0 ;
  wire \data_out_s_reg[10]_i_5_0 ;
  wire \data_out_s_reg[10]_i_5_n_0 ;
  wire \data_out_s_reg[11] ;
  wire \data_out_s_reg[11]_0 ;
  wire \data_out_s_reg[11]_1 ;
  wire \data_out_s_reg[11]_i_2_0 ;
  wire \data_out_s_reg[11]_i_2_n_0 ;
  wire \data_out_s_reg[11]_i_5_n_0 ;
  wire \data_out_s_reg[12] ;
  wire \data_out_s_reg[12]_0 ;
  wire \data_out_s_reg[12]_1 ;
  wire \data_out_s_reg[12]_i_2_0 ;
  wire \data_out_s_reg[12]_i_2_n_0 ;
  wire \data_out_s_reg[12]_i_5_n_0 ;
  wire \data_out_s_reg[13] ;
  wire \data_out_s_reg[13]_0 ;
  wire \data_out_s_reg[13]_1 ;
  wire \data_out_s_reg[13]_i_2_0 ;
  wire \data_out_s_reg[13]_i_2_n_0 ;
  wire \data_out_s_reg[13]_i_5_n_0 ;
  wire \data_out_s_reg[14] ;
  wire \data_out_s_reg[14]_0 ;
  wire \data_out_s_reg[14]_1 ;
  wire \data_out_s_reg[14]_i_2_0 ;
  wire \data_out_s_reg[14]_i_2_n_0 ;
  wire \data_out_s_reg[14]_i_5_n_0 ;
  wire \data_out_s_reg[15] ;
  wire \data_out_s_reg[15]_0 ;
  wire \data_out_s_reg[15]_1 ;
  wire \data_out_s_reg[15]_i_2_0 ;
  wire \data_out_s_reg[15]_i_2_n_0 ;
  wire \data_out_s_reg[15]_i_5_n_0 ;
  wire \data_out_s_reg[16] ;
  wire \data_out_s_reg[16]_0 ;
  wire \data_out_s_reg[16]_1 ;
  wire \data_out_s_reg[16]_i_2_0 ;
  wire \data_out_s_reg[16]_i_2_n_0 ;
  wire \data_out_s_reg[16]_i_5_n_0 ;
  wire \data_out_s_reg[17] ;
  wire \data_out_s_reg[17]_0 ;
  wire \data_out_s_reg[17]_1 ;
  wire \data_out_s_reg[17]_i_2_0 ;
  wire \data_out_s_reg[17]_i_2_n_0 ;
  wire \data_out_s_reg[17]_i_5_n_0 ;
  wire \data_out_s_reg[18] ;
  wire \data_out_s_reg[18]_0 ;
  wire \data_out_s_reg[18]_1 ;
  wire \data_out_s_reg[18]_i_2_0 ;
  wire \data_out_s_reg[18]_i_2_n_0 ;
  wire \data_out_s_reg[18]_i_5_n_0 ;
  wire \data_out_s_reg[19] ;
  wire \data_out_s_reg[19]_0 ;
  wire \data_out_s_reg[19]_1 ;
  wire \data_out_s_reg[19]_i_2_0 ;
  wire \data_out_s_reg[19]_i_2_n_0 ;
  wire \data_out_s_reg[19]_i_5_n_0 ;
  wire \data_out_s_reg[1] ;
  wire \data_out_s_reg[1]_0 ;
  wire \data_out_s_reg[1]_1 ;
  wire \data_out_s_reg[1]_i_2_0 ;
  wire \data_out_s_reg[1]_i_2_n_0 ;
  wire \data_out_s_reg[1]_i_5_n_0 ;
  wire \data_out_s_reg[20] ;
  wire \data_out_s_reg[20]_0 ;
  wire \data_out_s_reg[20]_1 ;
  wire \data_out_s_reg[20]_i_2_0 ;
  wire \data_out_s_reg[20]_i_2_n_0 ;
  wire \data_out_s_reg[20]_i_5_n_0 ;
  wire \data_out_s_reg[21] ;
  wire \data_out_s_reg[21]_0 ;
  wire \data_out_s_reg[21]_1 ;
  wire \data_out_s_reg[21]_i_2_0 ;
  wire \data_out_s_reg[21]_i_2_n_0 ;
  wire \data_out_s_reg[21]_i_5_n_0 ;
  wire \data_out_s_reg[22] ;
  wire \data_out_s_reg[22]_0 ;
  wire \data_out_s_reg[22]_1 ;
  wire \data_out_s_reg[22]_i_2_0 ;
  wire \data_out_s_reg[22]_i_2_n_0 ;
  wire \data_out_s_reg[22]_i_5_n_0 ;
  wire \data_out_s_reg[23] ;
  wire \data_out_s_reg[23]_0 ;
  wire \data_out_s_reg[23]_1 ;
  wire \data_out_s_reg[23]_i_2_0 ;
  wire \data_out_s_reg[23]_i_2_n_0 ;
  wire \data_out_s_reg[23]_i_5_n_0 ;
  wire \data_out_s_reg[24] ;
  wire \data_out_s_reg[24]_0 ;
  wire \data_out_s_reg[24]_1 ;
  wire \data_out_s_reg[24]_i_2_0 ;
  wire \data_out_s_reg[24]_i_2_n_0 ;
  wire \data_out_s_reg[24]_i_5_n_0 ;
  wire \data_out_s_reg[25] ;
  wire \data_out_s_reg[25]_0 ;
  wire \data_out_s_reg[25]_1 ;
  wire \data_out_s_reg[25]_i_2_0 ;
  wire \data_out_s_reg[25]_i_2_n_0 ;
  wire \data_out_s_reg[25]_i_5_n_0 ;
  wire \data_out_s_reg[26] ;
  wire \data_out_s_reg[26]_0 ;
  wire \data_out_s_reg[26]_1 ;
  wire \data_out_s_reg[26]_i_2_0 ;
  wire \data_out_s_reg[26]_i_2_n_0 ;
  wire \data_out_s_reg[26]_i_5_n_0 ;
  wire \data_out_s_reg[27] ;
  wire \data_out_s_reg[27]_0 ;
  wire \data_out_s_reg[27]_1 ;
  wire \data_out_s_reg[27]_i_2_0 ;
  wire \data_out_s_reg[27]_i_2_n_0 ;
  wire \data_out_s_reg[27]_i_5_n_0 ;
  wire \data_out_s_reg[28] ;
  wire \data_out_s_reg[28]_0 ;
  wire \data_out_s_reg[28]_1 ;
  wire \data_out_s_reg[28]_i_2_0 ;
  wire \data_out_s_reg[28]_i_2_n_0 ;
  wire \data_out_s_reg[28]_i_5_n_0 ;
  wire \data_out_s_reg[29] ;
  wire \data_out_s_reg[29]_0 ;
  wire \data_out_s_reg[29]_1 ;
  wire \data_out_s_reg[29]_i_2_0 ;
  wire \data_out_s_reg[29]_i_2_n_0 ;
  wire \data_out_s_reg[29]_i_5_n_0 ;
  wire \data_out_s_reg[2] ;
  wire \data_out_s_reg[2]_0 ;
  wire \data_out_s_reg[2]_1 ;
  wire \data_out_s_reg[2]_i_2_0 ;
  wire \data_out_s_reg[2]_i_2_n_0 ;
  wire \data_out_s_reg[2]_i_5_n_0 ;
  wire \data_out_s_reg[30] ;
  wire \data_out_s_reg[30]_0 ;
  wire \data_out_s_reg[30]_1 ;
  wire \data_out_s_reg[30]_i_2_0 ;
  wire \data_out_s_reg[30]_i_2_n_0 ;
  wire \data_out_s_reg[30]_i_5_n_0 ;
  wire [31:0]\data_out_s_reg[31] ;
  wire \data_out_s_reg[31]_0 ;
  wire \data_out_s_reg[31]_1 ;
  wire \data_out_s_reg[31]_2 ;
  wire [31:0]\data_out_s_reg[31]_i_13_0 ;
  wire [31:0]\data_out_s_reg[31]_i_13_1 ;
  wire [31:0]\data_out_s_reg[31]_i_13_2 ;
  wire \data_out_s_reg[31]_i_13_n_0 ;
  wire \data_out_s_reg[31]_i_8_0 ;
  wire \data_out_s_reg[31]_i_8_n_0 ;
  wire \data_out_s_reg[3] ;
  wire \data_out_s_reg[3]_0 ;
  wire \data_out_s_reg[3]_1 ;
  wire \data_out_s_reg[3]_i_2_0 ;
  wire \data_out_s_reg[3]_i_2_n_0 ;
  wire \data_out_s_reg[3]_i_5_n_0 ;
  wire \data_out_s_reg[4] ;
  wire \data_out_s_reg[4]_0 ;
  wire \data_out_s_reg[4]_1 ;
  wire \data_out_s_reg[4]_i_2_0 ;
  wire \data_out_s_reg[4]_i_2_n_0 ;
  wire \data_out_s_reg[4]_i_5_n_0 ;
  wire \data_out_s_reg[5] ;
  wire \data_out_s_reg[5]_0 ;
  wire \data_out_s_reg[5]_1 ;
  wire \data_out_s_reg[5]_i_2_0 ;
  wire \data_out_s_reg[5]_i_2_n_0 ;
  wire \data_out_s_reg[5]_i_5_n_0 ;
  wire \data_out_s_reg[6] ;
  wire \data_out_s_reg[6]_0 ;
  wire \data_out_s_reg[6]_1 ;
  wire \data_out_s_reg[6]_i_2_0 ;
  wire \data_out_s_reg[6]_i_2_n_0 ;
  wire \data_out_s_reg[6]_i_5_n_0 ;
  wire \data_out_s_reg[7] ;
  wire \data_out_s_reg[7]_0 ;
  wire \data_out_s_reg[7]_1 ;
  wire \data_out_s_reg[7]_i_2_0 ;
  wire \data_out_s_reg[7]_i_2_n_0 ;
  wire \data_out_s_reg[7]_i_5_n_0 ;
  wire \data_out_s_reg[8] ;
  wire \data_out_s_reg[8]_0 ;
  wire \data_out_s_reg[8]_1 ;
  wire \data_out_s_reg[8]_i_2_0 ;
  wire \data_out_s_reg[8]_i_2_n_0 ;
  wire \data_out_s_reg[8]_i_5_n_0 ;
  wire \data_out_s_reg[9] ;
  wire \data_out_s_reg[9]_0 ;
  wire \data_out_s_reg[9]_1 ;
  wire \data_out_s_reg[9]_i_2_0 ;
  wire \data_out_s_reg[9]_i_2_n_0 ;
  wire \data_out_s_reg[9]_i_5_n_0 ;
  wire data_rst_i;
  wire end_s;
  wire \final_res_s_reg_n_0_[0] ;
  wire \final_res_s_reg_n_0_[10] ;
  wire \final_res_s_reg_n_0_[11] ;
  wire \final_res_s_reg_n_0_[12] ;
  wire \final_res_s_reg_n_0_[13] ;
  wire \final_res_s_reg_n_0_[14] ;
  wire \final_res_s_reg_n_0_[15] ;
  wire \final_res_s_reg_n_0_[16] ;
  wire \final_res_s_reg_n_0_[17] ;
  wire \final_res_s_reg_n_0_[18] ;
  wire \final_res_s_reg_n_0_[19] ;
  wire \final_res_s_reg_n_0_[1] ;
  wire \final_res_s_reg_n_0_[20] ;
  wire \final_res_s_reg_n_0_[21] ;
  wire \final_res_s_reg_n_0_[22] ;
  wire \final_res_s_reg_n_0_[23] ;
  wire \final_res_s_reg_n_0_[24] ;
  wire \final_res_s_reg_n_0_[25] ;
  wire \final_res_s_reg_n_0_[26] ;
  wire \final_res_s_reg_n_0_[27] ;
  wire \final_res_s_reg_n_0_[28] ;
  wire \final_res_s_reg_n_0_[29] ;
  wire \final_res_s_reg_n_0_[2] ;
  wire \final_res_s_reg_n_0_[30] ;
  wire \final_res_s_reg_n_0_[31] ;
  wire \final_res_s_reg_n_0_[3] ;
  wire \final_res_s_reg_n_0_[4] ;
  wire \final_res_s_reg_n_0_[5] ;
  wire \final_res_s_reg_n_0_[6] ;
  wire \final_res_s_reg_n_0_[7] ;
  wire \final_res_s_reg_n_0_[8] ;
  wire \final_res_s_reg_n_0_[9] ;
  wire must_rst_s_i_1__20_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__2_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  LUT3 #(
    .INIT(8'hF8)) 
    \cpt_store_s[4]_i_1 
       (.I0(\cpt_store_s_reg[0]_rep_0 ),
        .I1(data_en_next),
        .I2(data_rst_i),
        .O(SR));
  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s__0),
        .R(data_rst_i));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[0]_i_1 
       (.I0(\data_out_s_reg[0]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [0]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[0]_0 ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[0]_2 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[0]_i_7 
       (.I0(\final_res_s_reg_n_0_[0] ),
        .I1(\data_out_s_reg[31]_i_13_0 [0]),
        .I2(\data_out_s_reg[0]_i_5_0 ),
        .I3(\data_out_s_reg[31]_i_13_1 [0]),
        .I4(\data_out_s_reg[0]_3 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [0]),
        .O(\data_out_s[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[10]_i_1 
       (.I0(\data_out_s_reg[10]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [10]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[10] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[10]_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[10]_i_7 
       (.I0(\final_res_s_reg_n_0_[10] ),
        .I1(\data_out_s_reg[31]_i_13_0 [10]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [10]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [10]),
        .O(\data_out_s[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[11]_i_1 
       (.I0(\data_out_s_reg[11]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [11]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[11] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[11]_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[11]_i_7 
       (.I0(\final_res_s_reg_n_0_[11] ),
        .I1(\data_out_s_reg[31]_i_13_0 [11]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [11]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [11]),
        .O(\data_out_s[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[12]_i_1 
       (.I0(\data_out_s_reg[12]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [12]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[12] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[12]_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[12]_i_7 
       (.I0(\final_res_s_reg_n_0_[12] ),
        .I1(\data_out_s_reg[31]_i_13_0 [12]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [12]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [12]),
        .O(\data_out_s[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[13]_i_1 
       (.I0(\data_out_s_reg[13]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [13]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[13] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[13]_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[13]_i_7 
       (.I0(\final_res_s_reg_n_0_[13] ),
        .I1(\data_out_s_reg[31]_i_13_0 [13]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [13]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [13]),
        .O(\data_out_s[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[14]_i_1 
       (.I0(\data_out_s_reg[14]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [14]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[14] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[14]_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[14]_i_7 
       (.I0(\final_res_s_reg_n_0_[14] ),
        .I1(\data_out_s_reg[31]_i_13_0 [14]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [14]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [14]),
        .O(\data_out_s[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[15]_i_1 
       (.I0(\data_out_s_reg[15]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [15]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[15] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[15]_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[15]_i_7 
       (.I0(\final_res_s_reg_n_0_[15] ),
        .I1(\data_out_s_reg[31]_i_13_0 [15]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [15]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [15]),
        .O(\data_out_s[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[16]_i_1 
       (.I0(\data_out_s_reg[16]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [16]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[16] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[16]_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[16]_i_7 
       (.I0(\final_res_s_reg_n_0_[16] ),
        .I1(\data_out_s_reg[31]_i_13_0 [16]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [16]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [16]),
        .O(\data_out_s[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[17]_i_1 
       (.I0(\data_out_s_reg[17]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [17]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[17] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[17]_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[17]_i_7 
       (.I0(\final_res_s_reg_n_0_[17] ),
        .I1(\data_out_s_reg[31]_i_13_0 [17]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [17]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [17]),
        .O(\data_out_s[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[18]_i_1 
       (.I0(\data_out_s_reg[18]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [18]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[18] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[18]_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[18]_i_7 
       (.I0(\final_res_s_reg_n_0_[18] ),
        .I1(\data_out_s_reg[31]_i_13_0 [18]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [18]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [18]),
        .O(\data_out_s[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[19]_i_1 
       (.I0(\data_out_s_reg[19]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [19]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[19] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[19]_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[19]_i_7 
       (.I0(\final_res_s_reg_n_0_[19] ),
        .I1(\data_out_s_reg[31]_i_13_0 [19]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [19]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [19]),
        .O(\data_out_s[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[1]_i_1 
       (.I0(\data_out_s_reg[1]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [1]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[1] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[1]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[1]_i_7 
       (.I0(\final_res_s_reg_n_0_[1] ),
        .I1(\data_out_s_reg[31]_i_13_0 [1]),
        .I2(\data_out_s_reg[0]_i_5_0 ),
        .I3(\data_out_s_reg[31]_i_13_1 [1]),
        .I4(\data_out_s_reg[0]_3 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [1]),
        .O(\data_out_s[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[20]_i_1 
       (.I0(\data_out_s_reg[20]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [20]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[20] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[20]_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[20]_i_7 
       (.I0(\final_res_s_reg_n_0_[20] ),
        .I1(\data_out_s_reg[31]_i_13_0 [20]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [20]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [20]),
        .O(\data_out_s[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[21]_i_1 
       (.I0(\data_out_s_reg[21]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [21]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[21] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[21]_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[21]_i_7 
       (.I0(\final_res_s_reg_n_0_[21] ),
        .I1(\data_out_s_reg[31]_i_13_0 [21]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [21]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [21]),
        .O(\data_out_s[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[22]_i_1 
       (.I0(\data_out_s_reg[22]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [22]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[22] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[22]_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[22]_i_7 
       (.I0(\final_res_s_reg_n_0_[22] ),
        .I1(\data_out_s_reg[31]_i_13_0 [22]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [22]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [22]),
        .O(\data_out_s[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[23]_i_1 
       (.I0(\data_out_s_reg[23]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [23]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[23] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[23]_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[23]_i_7 
       (.I0(\final_res_s_reg_n_0_[23] ),
        .I1(\data_out_s_reg[31]_i_13_0 [23]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [23]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [23]),
        .O(\data_out_s[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[24]_i_1 
       (.I0(\data_out_s_reg[24]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [24]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[24] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[24]_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[24]_i_7 
       (.I0(\final_res_s_reg_n_0_[24] ),
        .I1(\data_out_s_reg[31]_i_13_0 [24]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [24]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [24]),
        .O(\data_out_s[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[25]_i_1 
       (.I0(\data_out_s_reg[25]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [25]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[25] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[25]_0 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[25]_i_7 
       (.I0(\final_res_s_reg_n_0_[25] ),
        .I1(\data_out_s_reg[31]_i_13_0 [25]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [25]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [25]),
        .O(\data_out_s[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[26]_i_1 
       (.I0(\data_out_s_reg[26]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [26]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[26] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[26]_0 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[26]_i_7 
       (.I0(\final_res_s_reg_n_0_[26] ),
        .I1(\data_out_s_reg[31]_i_13_0 [26]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [26]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [26]),
        .O(\data_out_s[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[27]_i_1 
       (.I0(\data_out_s_reg[27]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [27]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[27] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[27]_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[27]_i_7 
       (.I0(\final_res_s_reg_n_0_[27] ),
        .I1(\data_out_s_reg[31]_i_13_0 [27]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [27]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [27]),
        .O(\data_out_s[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[28]_i_1 
       (.I0(\data_out_s_reg[28]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [28]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[28] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[28]_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[28]_i_7 
       (.I0(\final_res_s_reg_n_0_[28] ),
        .I1(\data_out_s_reg[31]_i_13_0 [28]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [28]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [28]),
        .O(\data_out_s[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[29]_i_1 
       (.I0(\data_out_s_reg[29]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [29]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[29] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[29]_0 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[29]_i_7 
       (.I0(\final_res_s_reg_n_0_[29] ),
        .I1(\data_out_s_reg[31]_i_13_0 [29]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [29]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [29]),
        .O(\data_out_s[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[2]_i_1 
       (.I0(\data_out_s_reg[2]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [2]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[2] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[2]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[2]_i_7 
       (.I0(\final_res_s_reg_n_0_[2] ),
        .I1(\data_out_s_reg[31]_i_13_0 [2]),
        .I2(\data_out_s_reg[0]_i_5_0 ),
        .I3(\data_out_s_reg[31]_i_13_1 [2]),
        .I4(\data_out_s_reg[0]_3 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [2]),
        .O(\data_out_s[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[30]_i_1 
       (.I0(\data_out_s_reg[30]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [30]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[30] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[30]_0 ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[30]_i_7 
       (.I0(\final_res_s_reg_n_0_[30] ),
        .I1(\data_out_s_reg[31]_i_13_0 [30]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [30]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [30]),
        .O(\data_out_s[30]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \data_out_s[31]_i_1 
       (.I0(\data_out_s[31]_i_3_n_0 ),
        .I1(\cpt_store_s_reg[0]_rep_1 ),
        .I2(\cpt_store_s_reg[0]_rep_2 ),
        .I3(\cpt_store_s_reg[0]_rep_3 ),
        .I4(\cpt_store_s_reg[0]_rep_4 ),
        .O(data_en_next));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[31]_i_15 
       (.I0(\final_res_s_reg_n_0_[31] ),
        .I1(\data_out_s_reg[31]_i_13_0 [31]),
        .I2(\data_out_s_reg[0]_3 [1]),
        .I3(\data_out_s_reg[31]_i_13_1 [31]),
        .I4(\data_out_s_reg[10]_i_5_0 ),
        .I5(\data_out_s_reg[31]_i_13_2 [31]),
        .O(\data_out_s[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[31]_i_2 
       (.I0(\data_out_s_reg[31]_i_8_n_0 ),
        .I1(\data_out_s_reg[31] [31]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[31]_0 ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[31]_1 ),
        .O(D[31]));
  LUT4 #(
    .INIT(16'h0001)) 
    \data_out_s[31]_i_3 
       (.I0(data_en_s__0),
        .I1(\cpt_store_s_reg[0]_rep [2]),
        .I2(\cpt_store_s_reg[0]_rep [1]),
        .I3(\cpt_store_s_reg[0]_rep [0]),
        .O(\data_out_s[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[3]_i_1 
       (.I0(\data_out_s_reg[3]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [3]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[3] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[3]_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[3]_i_7 
       (.I0(\final_res_s_reg_n_0_[3] ),
        .I1(\data_out_s_reg[31]_i_13_0 [3]),
        .I2(\data_out_s_reg[0]_i_5_0 ),
        .I3(\data_out_s_reg[31]_i_13_1 [3]),
        .I4(\data_out_s_reg[0]_3 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [3]),
        .O(\data_out_s[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[4]_i_1 
       (.I0(\data_out_s_reg[4]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [4]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[4] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[4]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[4]_i_7 
       (.I0(\final_res_s_reg_n_0_[4] ),
        .I1(\data_out_s_reg[31]_i_13_0 [4]),
        .I2(\data_out_s_reg[0]_i_5_0 ),
        .I3(\data_out_s_reg[31]_i_13_1 [4]),
        .I4(\data_out_s_reg[0]_3 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [4]),
        .O(\data_out_s[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[5]_i_1 
       (.I0(\data_out_s_reg[5]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [5]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[5] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[5]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[5]_i_7 
       (.I0(\final_res_s_reg_n_0_[5] ),
        .I1(\data_out_s_reg[31]_i_13_0 [5]),
        .I2(\data_out_s_reg[0]_i_5_0 ),
        .I3(\data_out_s_reg[31]_i_13_1 [5]),
        .I4(\data_out_s_reg[0]_3 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [5]),
        .O(\data_out_s[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[6]_i_1 
       (.I0(\data_out_s_reg[6]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [6]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[6] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[6]_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[6]_i_7 
       (.I0(\final_res_s_reg_n_0_[6] ),
        .I1(\data_out_s_reg[31]_i_13_0 [6]),
        .I2(\data_out_s_reg[0]_i_5_0 ),
        .I3(\data_out_s_reg[31]_i_13_1 [6]),
        .I4(\data_out_s_reg[0]_3 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [6]),
        .O(\data_out_s[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[7]_i_1 
       (.I0(\data_out_s_reg[7]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [7]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[7] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[7]_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[7]_i_7 
       (.I0(\final_res_s_reg_n_0_[7] ),
        .I1(\data_out_s_reg[31]_i_13_0 [7]),
        .I2(\data_out_s_reg[0]_i_5_0 ),
        .I3(\data_out_s_reg[31]_i_13_1 [7]),
        .I4(\data_out_s_reg[0]_3 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [7]),
        .O(\data_out_s[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[8]_i_1 
       (.I0(\data_out_s_reg[8]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [8]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[8] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[8]_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[8]_i_7 
       (.I0(\final_res_s_reg_n_0_[8] ),
        .I1(\data_out_s_reg[31]_i_13_0 [8]),
        .I2(\data_out_s_reg[0]_i_5_0 ),
        .I3(\data_out_s_reg[31]_i_13_1 [8]),
        .I4(\data_out_s_reg[0]_3 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [8]),
        .O(\data_out_s[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[9]_i_1 
       (.I0(\data_out_s_reg[9]_i_2_n_0 ),
        .I1(\data_out_s_reg[31] [9]),
        .I2(\data_out_s_reg[0] ),
        .I3(\data_out_s_reg[9] ),
        .I4(\data_out_s_reg[0]_1 ),
        .I5(\data_out_s_reg[9]_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[9]_i_7 
       (.I0(\final_res_s_reg_n_0_[9] ),
        .I1(\data_out_s_reg[31]_i_13_0 [9]),
        .I2(\data_out_s_reg[0]_i_5_0 ),
        .I3(\data_out_s_reg[31]_i_13_1 [9]),
        .I4(\data_out_s_reg[0]_3 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [9]),
        .O(\data_out_s[9]_i_7_n_0 ));
  MUXF8 \data_out_s_reg[0]_i_2 
       (.I0(\data_out_s_reg[0]_i_5_n_0 ),
        .I1(\data_out_s_reg[0]_4 ),
        .O(\data_out_s_reg[0]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[0]_i_5 
       (.I0(\data_out_s[0]_i_7_n_0 ),
        .I1(\data_out_s_reg[0]_i_2_0 ),
        .O(\data_out_s_reg[0]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[10]_i_2 
       (.I0(\data_out_s_reg[10]_i_5_n_0 ),
        .I1(\data_out_s_reg[10]_1 ),
        .O(\data_out_s_reg[10]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[10]_i_5 
       (.I0(\data_out_s[10]_i_7_n_0 ),
        .I1(\data_out_s_reg[10]_i_2_0 ),
        .O(\data_out_s_reg[10]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[11]_i_2 
       (.I0(\data_out_s_reg[11]_i_5_n_0 ),
        .I1(\data_out_s_reg[11]_1 ),
        .O(\data_out_s_reg[11]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[11]_i_5 
       (.I0(\data_out_s[11]_i_7_n_0 ),
        .I1(\data_out_s_reg[11]_i_2_0 ),
        .O(\data_out_s_reg[11]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[12]_i_2 
       (.I0(\data_out_s_reg[12]_i_5_n_0 ),
        .I1(\data_out_s_reg[12]_1 ),
        .O(\data_out_s_reg[12]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[12]_i_5 
       (.I0(\data_out_s[12]_i_7_n_0 ),
        .I1(\data_out_s_reg[12]_i_2_0 ),
        .O(\data_out_s_reg[12]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[13]_i_2 
       (.I0(\data_out_s_reg[13]_i_5_n_0 ),
        .I1(\data_out_s_reg[13]_1 ),
        .O(\data_out_s_reg[13]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[13]_i_5 
       (.I0(\data_out_s[13]_i_7_n_0 ),
        .I1(\data_out_s_reg[13]_i_2_0 ),
        .O(\data_out_s_reg[13]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[14]_i_2 
       (.I0(\data_out_s_reg[14]_i_5_n_0 ),
        .I1(\data_out_s_reg[14]_1 ),
        .O(\data_out_s_reg[14]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[14]_i_5 
       (.I0(\data_out_s[14]_i_7_n_0 ),
        .I1(\data_out_s_reg[14]_i_2_0 ),
        .O(\data_out_s_reg[14]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[15]_i_2 
       (.I0(\data_out_s_reg[15]_i_5_n_0 ),
        .I1(\data_out_s_reg[15]_1 ),
        .O(\data_out_s_reg[15]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[15]_i_5 
       (.I0(\data_out_s[15]_i_7_n_0 ),
        .I1(\data_out_s_reg[15]_i_2_0 ),
        .O(\data_out_s_reg[15]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[16]_i_2 
       (.I0(\data_out_s_reg[16]_i_5_n_0 ),
        .I1(\data_out_s_reg[16]_1 ),
        .O(\data_out_s_reg[16]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[16]_i_5 
       (.I0(\data_out_s[16]_i_7_n_0 ),
        .I1(\data_out_s_reg[16]_i_2_0 ),
        .O(\data_out_s_reg[16]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[17]_i_2 
       (.I0(\data_out_s_reg[17]_i_5_n_0 ),
        .I1(\data_out_s_reg[17]_1 ),
        .O(\data_out_s_reg[17]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[17]_i_5 
       (.I0(\data_out_s[17]_i_7_n_0 ),
        .I1(\data_out_s_reg[17]_i_2_0 ),
        .O(\data_out_s_reg[17]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[18]_i_2 
       (.I0(\data_out_s_reg[18]_i_5_n_0 ),
        .I1(\data_out_s_reg[18]_1 ),
        .O(\data_out_s_reg[18]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[18]_i_5 
       (.I0(\data_out_s[18]_i_7_n_0 ),
        .I1(\data_out_s_reg[18]_i_2_0 ),
        .O(\data_out_s_reg[18]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[19]_i_2 
       (.I0(\data_out_s_reg[19]_i_5_n_0 ),
        .I1(\data_out_s_reg[19]_1 ),
        .O(\data_out_s_reg[19]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[19]_i_5 
       (.I0(\data_out_s[19]_i_7_n_0 ),
        .I1(\data_out_s_reg[19]_i_2_0 ),
        .O(\data_out_s_reg[19]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[1]_i_2 
       (.I0(\data_out_s_reg[1]_i_5_n_0 ),
        .I1(\data_out_s_reg[1]_1 ),
        .O(\data_out_s_reg[1]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[1]_i_5 
       (.I0(\data_out_s[1]_i_7_n_0 ),
        .I1(\data_out_s_reg[1]_i_2_0 ),
        .O(\data_out_s_reg[1]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[20]_i_2 
       (.I0(\data_out_s_reg[20]_i_5_n_0 ),
        .I1(\data_out_s_reg[20]_1 ),
        .O(\data_out_s_reg[20]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[20]_i_5 
       (.I0(\data_out_s[20]_i_7_n_0 ),
        .I1(\data_out_s_reg[20]_i_2_0 ),
        .O(\data_out_s_reg[20]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[21]_i_2 
       (.I0(\data_out_s_reg[21]_i_5_n_0 ),
        .I1(\data_out_s_reg[21]_1 ),
        .O(\data_out_s_reg[21]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[21]_i_5 
       (.I0(\data_out_s[21]_i_7_n_0 ),
        .I1(\data_out_s_reg[21]_i_2_0 ),
        .O(\data_out_s_reg[21]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[22]_i_2 
       (.I0(\data_out_s_reg[22]_i_5_n_0 ),
        .I1(\data_out_s_reg[22]_1 ),
        .O(\data_out_s_reg[22]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[22]_i_5 
       (.I0(\data_out_s[22]_i_7_n_0 ),
        .I1(\data_out_s_reg[22]_i_2_0 ),
        .O(\data_out_s_reg[22]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[23]_i_2 
       (.I0(\data_out_s_reg[23]_i_5_n_0 ),
        .I1(\data_out_s_reg[23]_1 ),
        .O(\data_out_s_reg[23]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[23]_i_5 
       (.I0(\data_out_s[23]_i_7_n_0 ),
        .I1(\data_out_s_reg[23]_i_2_0 ),
        .O(\data_out_s_reg[23]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[24]_i_2 
       (.I0(\data_out_s_reg[24]_i_5_n_0 ),
        .I1(\data_out_s_reg[24]_1 ),
        .O(\data_out_s_reg[24]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[24]_i_5 
       (.I0(\data_out_s[24]_i_7_n_0 ),
        .I1(\data_out_s_reg[24]_i_2_0 ),
        .O(\data_out_s_reg[24]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[25]_i_2 
       (.I0(\data_out_s_reg[25]_i_5_n_0 ),
        .I1(\data_out_s_reg[25]_1 ),
        .O(\data_out_s_reg[25]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[25]_i_5 
       (.I0(\data_out_s[25]_i_7_n_0 ),
        .I1(\data_out_s_reg[25]_i_2_0 ),
        .O(\data_out_s_reg[25]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[26]_i_2 
       (.I0(\data_out_s_reg[26]_i_5_n_0 ),
        .I1(\data_out_s_reg[26]_1 ),
        .O(\data_out_s_reg[26]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[26]_i_5 
       (.I0(\data_out_s[26]_i_7_n_0 ),
        .I1(\data_out_s_reg[26]_i_2_0 ),
        .O(\data_out_s_reg[26]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[27]_i_2 
       (.I0(\data_out_s_reg[27]_i_5_n_0 ),
        .I1(\data_out_s_reg[27]_1 ),
        .O(\data_out_s_reg[27]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[27]_i_5 
       (.I0(\data_out_s[27]_i_7_n_0 ),
        .I1(\data_out_s_reg[27]_i_2_0 ),
        .O(\data_out_s_reg[27]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[28]_i_2 
       (.I0(\data_out_s_reg[28]_i_5_n_0 ),
        .I1(\data_out_s_reg[28]_1 ),
        .O(\data_out_s_reg[28]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[28]_i_5 
       (.I0(\data_out_s[28]_i_7_n_0 ),
        .I1(\data_out_s_reg[28]_i_2_0 ),
        .O(\data_out_s_reg[28]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[29]_i_2 
       (.I0(\data_out_s_reg[29]_i_5_n_0 ),
        .I1(\data_out_s_reg[29]_1 ),
        .O(\data_out_s_reg[29]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[29]_i_5 
       (.I0(\data_out_s[29]_i_7_n_0 ),
        .I1(\data_out_s_reg[29]_i_2_0 ),
        .O(\data_out_s_reg[29]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[2]_i_2 
       (.I0(\data_out_s_reg[2]_i_5_n_0 ),
        .I1(\data_out_s_reg[2]_1 ),
        .O(\data_out_s_reg[2]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[2]_i_5 
       (.I0(\data_out_s[2]_i_7_n_0 ),
        .I1(\data_out_s_reg[2]_i_2_0 ),
        .O(\data_out_s_reg[2]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[30]_i_2 
       (.I0(\data_out_s_reg[30]_i_5_n_0 ),
        .I1(\data_out_s_reg[30]_1 ),
        .O(\data_out_s_reg[30]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[30]_i_5 
       (.I0(\data_out_s[30]_i_7_n_0 ),
        .I1(\data_out_s_reg[30]_i_2_0 ),
        .O(\data_out_s_reg[30]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF7 \data_out_s_reg[31]_i_13 
       (.I0(\data_out_s[31]_i_15_n_0 ),
        .I1(\data_out_s_reg[31]_i_8_0 ),
        .O(\data_out_s_reg[31]_i_13_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[31]_i_8 
       (.I0(\data_out_s_reg[31]_i_13_n_0 ),
        .I1(\data_out_s_reg[31]_2 ),
        .O(\data_out_s_reg[31]_i_8_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF8 \data_out_s_reg[3]_i_2 
       (.I0(\data_out_s_reg[3]_i_5_n_0 ),
        .I1(\data_out_s_reg[3]_1 ),
        .O(\data_out_s_reg[3]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[3]_i_5 
       (.I0(\data_out_s[3]_i_7_n_0 ),
        .I1(\data_out_s_reg[3]_i_2_0 ),
        .O(\data_out_s_reg[3]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[4]_i_2 
       (.I0(\data_out_s_reg[4]_i_5_n_0 ),
        .I1(\data_out_s_reg[4]_1 ),
        .O(\data_out_s_reg[4]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[4]_i_5 
       (.I0(\data_out_s[4]_i_7_n_0 ),
        .I1(\data_out_s_reg[4]_i_2_0 ),
        .O(\data_out_s_reg[4]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[5]_i_2 
       (.I0(\data_out_s_reg[5]_i_5_n_0 ),
        .I1(\data_out_s_reg[5]_1 ),
        .O(\data_out_s_reg[5]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[5]_i_5 
       (.I0(\data_out_s[5]_i_7_n_0 ),
        .I1(\data_out_s_reg[5]_i_2_0 ),
        .O(\data_out_s_reg[5]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[6]_i_2 
       (.I0(\data_out_s_reg[6]_i_5_n_0 ),
        .I1(\data_out_s_reg[6]_1 ),
        .O(\data_out_s_reg[6]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[6]_i_5 
       (.I0(\data_out_s[6]_i_7_n_0 ),
        .I1(\data_out_s_reg[6]_i_2_0 ),
        .O(\data_out_s_reg[6]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[7]_i_2 
       (.I0(\data_out_s_reg[7]_i_5_n_0 ),
        .I1(\data_out_s_reg[7]_1 ),
        .O(\data_out_s_reg[7]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[7]_i_5 
       (.I0(\data_out_s[7]_i_7_n_0 ),
        .I1(\data_out_s_reg[7]_i_2_0 ),
        .O(\data_out_s_reg[7]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[8]_i_2 
       (.I0(\data_out_s_reg[8]_i_5_n_0 ),
        .I1(\data_out_s_reg[8]_1 ),
        .O(\data_out_s_reg[8]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[8]_i_5 
       (.I0(\data_out_s[8]_i_7_n_0 ),
        .I1(\data_out_s_reg[8]_i_2_0 ),
        .O(\data_out_s_reg[8]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  MUXF8 \data_out_s_reg[9]_i_2 
       (.I0(\data_out_s_reg[9]_i_5_n_0 ),
        .I1(\data_out_s_reg[9]_1 ),
        .O(\data_out_s_reg[9]_i_2_n_0 ),
        .S(\data_out_s_reg[0]_3 [3]));
  MUXF7 \data_out_s_reg[9]_i_5 
       (.I0(\data_out_s[9]_i_7_n_0 ),
        .I1(\data_out_s_reg[9]_i_2_0 ),
        .O(\data_out_s_reg[9]_i_5_n_0 ),
        .S(\data_out_s_reg[0]_3 [2]));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg_n_0_[0] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg_n_0_[10] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg_n_0_[11] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg_n_0_[12] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg_n_0_[13] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg_n_0_[14] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg_n_0_[15] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg_n_0_[16] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg_n_0_[17] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg_n_0_[18] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg_n_0_[19] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg_n_0_[1] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg_n_0_[20] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg_n_0_[21] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg_n_0_[22] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg_n_0_[23] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg_n_0_[24] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg_n_0_[25] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg_n_0_[26] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg_n_0_[27] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg_n_0_[28] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg_n_0_[29] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg_n_0_[2] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg_n_0_[30] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg_n_0_[31] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg_n_0_[3] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg_n_0_[4] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg_n_0_[5] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg_n_0_[6] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg_n_0_[7] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg_n_0_[8] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg_n_0_[9] ),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__20
       (.I0(Q),
        .I1(data_en_s),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__20_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__20_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__2
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__2_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__2_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_18
   (end_s,
    data_en_s,
    ACOUT,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s_0);
  output end_s;
  output [0:0]data_en_s;
  output [29:0]ACOUT;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s_0;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_s;
  wire data_en_s_0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__19_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__3_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__19
       (.I0(Q),
        .I1(data_en_s_0),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__19_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__19_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__3
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__3_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__3_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_19
   (end_s,
    ACOUT,
    ready_s,
    data_en_o_reg_0,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    \cpt_store_s_reg[0]_rep ,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s);
  output end_s;
  output [29:0]ACOUT;
  output ready_s;
  output data_en_o_reg_0;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [1:0]\cpt_store_s_reg[0]_rep ;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire [1:0]\cpt_store_s_reg[0]_rep ;
  wire data_clk_i;
  wire data_en_o_reg_0;
  wire data_en_s;
  wire [5:5]data_en_s__0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__18_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__4_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s__0),
        .R(data_rst_i));
  LUT3 #(
    .INIT(8'h01)) 
    \data_out_s[31]_i_4 
       (.I0(data_en_s__0),
        .I1(\cpt_store_s_reg[0]_rep [0]),
        .I2(\cpt_store_s_reg[0]_rep [1]),
        .O(data_en_o_reg_0));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__18
       (.I0(Q),
        .I1(data_en_s),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__18_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__18_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__4
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__4_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__4_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_2
   (end_s,
    ACOUT,
    ready_s,
    data_en_o_reg_0,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    \cpt_store_s_reg[0]_rep ,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s);
  output end_s;
  output [29:0]ACOUT;
  output ready_s;
  output data_en_o_reg_0;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [4:0]\cpt_store_s_reg[0]_rep ;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire [4:0]\cpt_store_s_reg[0]_rep ;
  wire data_clk_i;
  wire data_en_o_reg_0;
  wire data_en_s;
  wire [12:12]data_en_s__0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__11_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__11_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s__0),
        .R(data_rst_i));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_out_s[31]_i_5 
       (.I0(data_en_s__0),
        .I1(\cpt_store_s_reg[0]_rep [3]),
        .I2(\cpt_store_s_reg[0]_rep [4]),
        .I3(\cpt_store_s_reg[0]_rep [0]),
        .I4(\cpt_store_s_reg[0]_rep [1]),
        .I5(\cpt_store_s_reg[0]_rep [2]),
        .O(data_en_o_reg_0));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__11
       (.I0(Q),
        .I1(data_en_s),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__11_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__11_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__11
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__11_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__11_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_20
   (end_s,
    data_en_o_reg_0,
    ACOUT,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s);
  output end_s;
  output [0:0]data_en_o_reg_0;
  output [29:0]ACOUT;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_o_reg_0;
  wire data_en_s;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__17_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__5_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_o_reg_0),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__17
       (.I0(Q),
        .I1(data_en_s),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__17_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__17_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__5
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__5_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__5_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_21
   (end_s,
    data_en_o_reg_0,
    ACOUT,
    ready_s,
    \final_res_s_reg[0]_0 ,
    \final_res_s_reg[1]_0 ,
    \final_res_s_reg[2]_0 ,
    \final_res_s_reg[3]_0 ,
    \final_res_s_reg[4]_0 ,
    \final_res_s_reg[5]_0 ,
    \final_res_s_reg[6]_0 ,
    \final_res_s_reg[7]_0 ,
    \final_res_s_reg[8]_0 ,
    \final_res_s_reg[9]_0 ,
    \final_res_s_reg[10]_0 ,
    \final_res_s_reg[11]_0 ,
    \final_res_s_reg[12]_0 ,
    \final_res_s_reg[13]_0 ,
    \final_res_s_reg[14]_0 ,
    \final_res_s_reg[15]_0 ,
    \final_res_s_reg[16]_0 ,
    \final_res_s_reg[17]_0 ,
    \final_res_s_reg[18]_0 ,
    \final_res_s_reg[19]_0 ,
    \final_res_s_reg[20]_0 ,
    \final_res_s_reg[21]_0 ,
    \final_res_s_reg[22]_0 ,
    \final_res_s_reg[23]_0 ,
    \final_res_s_reg[24]_0 ,
    \final_res_s_reg[25]_0 ,
    \final_res_s_reg[26]_0 ,
    \final_res_s_reg[27]_0 ,
    \final_res_s_reg[28]_0 ,
    \final_res_s_reg[29]_0 ,
    \final_res_s_reg[30]_0 ,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s,
    \data_out_s_reg[31]_i_13 ,
    \data_out_s_reg[0]_i_5 ,
    \data_out_s_reg[31]_i_13_0 ,
    \data_out_s_reg[31]_i_13_1 ,
    \data_out_s_reg[31]_i_13_2 ,
    \data_out_s_reg[10]_i_5 );
  output end_s;
  output [0:0]data_en_o_reg_0;
  output [29:0]ACOUT;
  output ready_s;
  output \final_res_s_reg[0]_0 ;
  output \final_res_s_reg[1]_0 ;
  output \final_res_s_reg[2]_0 ;
  output \final_res_s_reg[3]_0 ;
  output \final_res_s_reg[4]_0 ;
  output \final_res_s_reg[5]_0 ;
  output \final_res_s_reg[6]_0 ;
  output \final_res_s_reg[7]_0 ;
  output \final_res_s_reg[8]_0 ;
  output \final_res_s_reg[9]_0 ;
  output \final_res_s_reg[10]_0 ;
  output \final_res_s_reg[11]_0 ;
  output \final_res_s_reg[12]_0 ;
  output \final_res_s_reg[13]_0 ;
  output \final_res_s_reg[14]_0 ;
  output \final_res_s_reg[15]_0 ;
  output \final_res_s_reg[16]_0 ;
  output \final_res_s_reg[17]_0 ;
  output \final_res_s_reg[18]_0 ;
  output \final_res_s_reg[19]_0 ;
  output \final_res_s_reg[20]_0 ;
  output \final_res_s_reg[21]_0 ;
  output \final_res_s_reg[22]_0 ;
  output \final_res_s_reg[23]_0 ;
  output \final_res_s_reg[24]_0 ;
  output \final_res_s_reg[25]_0 ;
  output \final_res_s_reg[26]_0 ;
  output \final_res_s_reg[27]_0 ;
  output \final_res_s_reg[28]_0 ;
  output \final_res_s_reg[29]_0 ;
  output \final_res_s_reg[30]_0 ;
  output \final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s;
  input [31:0]\data_out_s_reg[31]_i_13 ;
  input \data_out_s_reg[0]_i_5 ;
  input [31:0]\data_out_s_reg[31]_i_13_0 ;
  input [1:0]\data_out_s_reg[31]_i_13_1 ;
  input [31:0]\data_out_s_reg[31]_i_13_2 ;
  input \data_out_s_reg[10]_i_5 ;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_o_reg_0;
  wire data_en_s;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire \data_out_s_reg[0]_i_5 ;
  wire \data_out_s_reg[10]_i_5 ;
  wire [31:0]\data_out_s_reg[31]_i_13 ;
  wire [31:0]\data_out_s_reg[31]_i_13_0 ;
  wire [1:0]\data_out_s_reg[31]_i_13_1 ;
  wire [31:0]\data_out_s_reg[31]_i_13_2 ;
  wire data_rst_i;
  wire end_s;
  wire \final_res_s_reg[0]_0 ;
  wire \final_res_s_reg[10]_0 ;
  wire \final_res_s_reg[11]_0 ;
  wire \final_res_s_reg[12]_0 ;
  wire \final_res_s_reg[13]_0 ;
  wire \final_res_s_reg[14]_0 ;
  wire \final_res_s_reg[15]_0 ;
  wire \final_res_s_reg[16]_0 ;
  wire \final_res_s_reg[17]_0 ;
  wire \final_res_s_reg[18]_0 ;
  wire \final_res_s_reg[19]_0 ;
  wire \final_res_s_reg[1]_0 ;
  wire \final_res_s_reg[20]_0 ;
  wire \final_res_s_reg[21]_0 ;
  wire \final_res_s_reg[22]_0 ;
  wire \final_res_s_reg[23]_0 ;
  wire \final_res_s_reg[24]_0 ;
  wire \final_res_s_reg[25]_0 ;
  wire \final_res_s_reg[26]_0 ;
  wire \final_res_s_reg[27]_0 ;
  wire \final_res_s_reg[28]_0 ;
  wire \final_res_s_reg[29]_0 ;
  wire \final_res_s_reg[2]_0 ;
  wire \final_res_s_reg[30]_0 ;
  wire \final_res_s_reg[31]_0 ;
  wire \final_res_s_reg[3]_0 ;
  wire \final_res_s_reg[4]_0 ;
  wire \final_res_s_reg[5]_0 ;
  wire \final_res_s_reg[6]_0 ;
  wire \final_res_s_reg[7]_0 ;
  wire \final_res_s_reg[8]_0 ;
  wire \final_res_s_reg[9]_0 ;
  wire \final_res_s_reg_n_0_[0] ;
  wire \final_res_s_reg_n_0_[10] ;
  wire \final_res_s_reg_n_0_[11] ;
  wire \final_res_s_reg_n_0_[12] ;
  wire \final_res_s_reg_n_0_[13] ;
  wire \final_res_s_reg_n_0_[14] ;
  wire \final_res_s_reg_n_0_[15] ;
  wire \final_res_s_reg_n_0_[16] ;
  wire \final_res_s_reg_n_0_[17] ;
  wire \final_res_s_reg_n_0_[18] ;
  wire \final_res_s_reg_n_0_[19] ;
  wire \final_res_s_reg_n_0_[1] ;
  wire \final_res_s_reg_n_0_[20] ;
  wire \final_res_s_reg_n_0_[21] ;
  wire \final_res_s_reg_n_0_[22] ;
  wire \final_res_s_reg_n_0_[23] ;
  wire \final_res_s_reg_n_0_[24] ;
  wire \final_res_s_reg_n_0_[25] ;
  wire \final_res_s_reg_n_0_[26] ;
  wire \final_res_s_reg_n_0_[27] ;
  wire \final_res_s_reg_n_0_[28] ;
  wire \final_res_s_reg_n_0_[29] ;
  wire \final_res_s_reg_n_0_[2] ;
  wire \final_res_s_reg_n_0_[30] ;
  wire \final_res_s_reg_n_0_[31] ;
  wire \final_res_s_reg_n_0_[3] ;
  wire \final_res_s_reg_n_0_[4] ;
  wire \final_res_s_reg_n_0_[5] ;
  wire \final_res_s_reg_n_0_[6] ;
  wire \final_res_s_reg_n_0_[7] ;
  wire \final_res_s_reg_n_0_[8] ;
  wire \final_res_s_reg_n_0_[9] ;
  wire must_rst_s_i_1__16_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__6_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_o_reg_0),
        .R(data_rst_i));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[0]_i_8 
       (.I0(\final_res_s_reg_n_0_[0] ),
        .I1(\data_out_s_reg[31]_i_13 [0]),
        .I2(\data_out_s_reg[0]_i_5 ),
        .I3(\data_out_s_reg[31]_i_13_0 [0]),
        .I4(\data_out_s_reg[31]_i_13_1 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [0]),
        .O(\final_res_s_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[10]_i_8 
       (.I0(\final_res_s_reg_n_0_[10] ),
        .I1(\data_out_s_reg[31]_i_13 [10]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [10]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [10]),
        .O(\final_res_s_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[11]_i_8 
       (.I0(\final_res_s_reg_n_0_[11] ),
        .I1(\data_out_s_reg[31]_i_13 [11]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [11]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [11]),
        .O(\final_res_s_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[12]_i_8 
       (.I0(\final_res_s_reg_n_0_[12] ),
        .I1(\data_out_s_reg[31]_i_13 [12]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [12]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [12]),
        .O(\final_res_s_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[13]_i_8 
       (.I0(\final_res_s_reg_n_0_[13] ),
        .I1(\data_out_s_reg[31]_i_13 [13]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [13]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [13]),
        .O(\final_res_s_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[14]_i_8 
       (.I0(\final_res_s_reg_n_0_[14] ),
        .I1(\data_out_s_reg[31]_i_13 [14]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [14]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [14]),
        .O(\final_res_s_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[15]_i_8 
       (.I0(\final_res_s_reg_n_0_[15] ),
        .I1(\data_out_s_reg[31]_i_13 [15]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [15]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [15]),
        .O(\final_res_s_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[16]_i_8 
       (.I0(\final_res_s_reg_n_0_[16] ),
        .I1(\data_out_s_reg[31]_i_13 [16]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [16]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [16]),
        .O(\final_res_s_reg[16]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[17]_i_8 
       (.I0(\final_res_s_reg_n_0_[17] ),
        .I1(\data_out_s_reg[31]_i_13 [17]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [17]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [17]),
        .O(\final_res_s_reg[17]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[18]_i_8 
       (.I0(\final_res_s_reg_n_0_[18] ),
        .I1(\data_out_s_reg[31]_i_13 [18]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [18]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [18]),
        .O(\final_res_s_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[19]_i_8 
       (.I0(\final_res_s_reg_n_0_[19] ),
        .I1(\data_out_s_reg[31]_i_13 [19]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [19]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [19]),
        .O(\final_res_s_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[1]_i_8 
       (.I0(\final_res_s_reg_n_0_[1] ),
        .I1(\data_out_s_reg[31]_i_13 [1]),
        .I2(\data_out_s_reg[0]_i_5 ),
        .I3(\data_out_s_reg[31]_i_13_0 [1]),
        .I4(\data_out_s_reg[31]_i_13_1 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [1]),
        .O(\final_res_s_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[20]_i_8 
       (.I0(\final_res_s_reg_n_0_[20] ),
        .I1(\data_out_s_reg[31]_i_13 [20]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [20]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [20]),
        .O(\final_res_s_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[21]_i_8 
       (.I0(\final_res_s_reg_n_0_[21] ),
        .I1(\data_out_s_reg[31]_i_13 [21]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [21]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [21]),
        .O(\final_res_s_reg[21]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[22]_i_8 
       (.I0(\final_res_s_reg_n_0_[22] ),
        .I1(\data_out_s_reg[31]_i_13 [22]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [22]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [22]),
        .O(\final_res_s_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[23]_i_8 
       (.I0(\final_res_s_reg_n_0_[23] ),
        .I1(\data_out_s_reg[31]_i_13 [23]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [23]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [23]),
        .O(\final_res_s_reg[23]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[24]_i_8 
       (.I0(\final_res_s_reg_n_0_[24] ),
        .I1(\data_out_s_reg[31]_i_13 [24]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [24]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [24]),
        .O(\final_res_s_reg[24]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[25]_i_8 
       (.I0(\final_res_s_reg_n_0_[25] ),
        .I1(\data_out_s_reg[31]_i_13 [25]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [25]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [25]),
        .O(\final_res_s_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[26]_i_8 
       (.I0(\final_res_s_reg_n_0_[26] ),
        .I1(\data_out_s_reg[31]_i_13 [26]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [26]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [26]),
        .O(\final_res_s_reg[26]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[27]_i_8 
       (.I0(\final_res_s_reg_n_0_[27] ),
        .I1(\data_out_s_reg[31]_i_13 [27]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [27]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [27]),
        .O(\final_res_s_reg[27]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[28]_i_8 
       (.I0(\final_res_s_reg_n_0_[28] ),
        .I1(\data_out_s_reg[31]_i_13 [28]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [28]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [28]),
        .O(\final_res_s_reg[28]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[29]_i_8 
       (.I0(\final_res_s_reg_n_0_[29] ),
        .I1(\data_out_s_reg[31]_i_13 [29]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [29]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [29]),
        .O(\final_res_s_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[2]_i_8 
       (.I0(\final_res_s_reg_n_0_[2] ),
        .I1(\data_out_s_reg[31]_i_13 [2]),
        .I2(\data_out_s_reg[0]_i_5 ),
        .I3(\data_out_s_reg[31]_i_13_0 [2]),
        .I4(\data_out_s_reg[31]_i_13_1 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [2]),
        .O(\final_res_s_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[30]_i_8 
       (.I0(\final_res_s_reg_n_0_[30] ),
        .I1(\data_out_s_reg[31]_i_13 [30]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [30]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [30]),
        .O(\final_res_s_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[31]_i_16 
       (.I0(\final_res_s_reg_n_0_[31] ),
        .I1(\data_out_s_reg[31]_i_13 [31]),
        .I2(\data_out_s_reg[31]_i_13_1 [1]),
        .I3(\data_out_s_reg[31]_i_13_0 [31]),
        .I4(\data_out_s_reg[10]_i_5 ),
        .I5(\data_out_s_reg[31]_i_13_2 [31]),
        .O(\final_res_s_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[3]_i_8 
       (.I0(\final_res_s_reg_n_0_[3] ),
        .I1(\data_out_s_reg[31]_i_13 [3]),
        .I2(\data_out_s_reg[0]_i_5 ),
        .I3(\data_out_s_reg[31]_i_13_0 [3]),
        .I4(\data_out_s_reg[31]_i_13_1 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [3]),
        .O(\final_res_s_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[4]_i_8 
       (.I0(\final_res_s_reg_n_0_[4] ),
        .I1(\data_out_s_reg[31]_i_13 [4]),
        .I2(\data_out_s_reg[0]_i_5 ),
        .I3(\data_out_s_reg[31]_i_13_0 [4]),
        .I4(\data_out_s_reg[31]_i_13_1 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [4]),
        .O(\final_res_s_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[5]_i_8 
       (.I0(\final_res_s_reg_n_0_[5] ),
        .I1(\data_out_s_reg[31]_i_13 [5]),
        .I2(\data_out_s_reg[0]_i_5 ),
        .I3(\data_out_s_reg[31]_i_13_0 [5]),
        .I4(\data_out_s_reg[31]_i_13_1 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [5]),
        .O(\final_res_s_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[6]_i_8 
       (.I0(\final_res_s_reg_n_0_[6] ),
        .I1(\data_out_s_reg[31]_i_13 [6]),
        .I2(\data_out_s_reg[0]_i_5 ),
        .I3(\data_out_s_reg[31]_i_13_0 [6]),
        .I4(\data_out_s_reg[31]_i_13_1 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [6]),
        .O(\final_res_s_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[7]_i_8 
       (.I0(\final_res_s_reg_n_0_[7] ),
        .I1(\data_out_s_reg[31]_i_13 [7]),
        .I2(\data_out_s_reg[0]_i_5 ),
        .I3(\data_out_s_reg[31]_i_13_0 [7]),
        .I4(\data_out_s_reg[31]_i_13_1 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [7]),
        .O(\final_res_s_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[8]_i_8 
       (.I0(\final_res_s_reg_n_0_[8] ),
        .I1(\data_out_s_reg[31]_i_13 [8]),
        .I2(\data_out_s_reg[0]_i_5 ),
        .I3(\data_out_s_reg[31]_i_13_0 [8]),
        .I4(\data_out_s_reg[31]_i_13_1 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [8]),
        .O(\final_res_s_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[9]_i_8 
       (.I0(\final_res_s_reg_n_0_[9] ),
        .I1(\data_out_s_reg[31]_i_13 [9]),
        .I2(\data_out_s_reg[0]_i_5 ),
        .I3(\data_out_s_reg[31]_i_13_0 [9]),
        .I4(\data_out_s_reg[31]_i_13_1 [0]),
        .I5(\data_out_s_reg[31]_i_13_2 [9]),
        .O(\final_res_s_reg[9]_0 ));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg_n_0_[0] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg_n_0_[10] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg_n_0_[11] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg_n_0_[12] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg_n_0_[13] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg_n_0_[14] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg_n_0_[15] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg_n_0_[16] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg_n_0_[17] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg_n_0_[18] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg_n_0_[19] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg_n_0_[1] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg_n_0_[20] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg_n_0_[21] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg_n_0_[22] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg_n_0_[23] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg_n_0_[24] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg_n_0_[25] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg_n_0_[26] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg_n_0_[27] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg_n_0_[28] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg_n_0_[29] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg_n_0_[2] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg_n_0_[30] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg_n_0_[31] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg_n_0_[3] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg_n_0_[4] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg_n_0_[5] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg_n_0_[6] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg_n_0_[7] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg_n_0_[8] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg_n_0_[9] ),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__16
       (.I0(Q),
        .I1(data_en_s),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__16_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__16_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__6
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__6_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__6_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_22
   (end_s,
    data_en_o_reg_0,
    ACOUT,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s);
  output end_s;
  output [0:0]data_en_o_reg_0;
  output [29:0]ACOUT;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_o_reg_0;
  wire data_en_s;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__15_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__7_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_o_reg_0),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__15
       (.I0(Q),
        .I1(data_en_s),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__15_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__15_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__7
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__7_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__7_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_23
   (end_s,
    data_en_o_reg_0,
    res_s_reg_0,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    ACOUT,
    ready_s_reg_0,
    data_en_s);
  output end_s;
  output [0:0]data_en_o_reg_0;
  output [29:0]res_s_reg_0;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]ACOUT;
  input [0:0]ready_s_reg_0;
  input data_en_s;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_o_reg_0;
  wire data_en_s;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__14_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__8_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_o_reg_0),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__14
       (.I0(Q),
        .I1(data_en_s),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__14_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__14_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__8
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__8_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__8_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(ACOUT),
        .ACOUT(res_s_reg_0),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_3
   (end_s,
    data_en_s,
    ACOUT,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s_0);
  output end_s;
  output [0:0]data_en_s;
  output [29:0]ACOUT;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s_0;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_s;
  wire data_en_s_0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__10_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__12_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__10
       (.I0(Q),
        .I1(data_en_s_0),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__10_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__10_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__12
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__12_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__12_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_4
   (end_s,
    data_en_s,
    ACOUT,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s_0);
  output end_s;
  output [0:0]data_en_s;
  output [29:0]ACOUT;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s_0;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_s;
  wire data_en_s_0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__9_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__13_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__9
       (.I0(Q),
        .I1(data_en_s_0),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__9_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__9_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__13
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__13_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__13_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_5
   (end_s,
    ACOUT,
    ready_s,
    data_en_o_reg_0,
    \final_res_s_reg[0]_0 ,
    \final_res_s_reg[1]_0 ,
    \final_res_s_reg[2]_0 ,
    \final_res_s_reg[3]_0 ,
    \final_res_s_reg[4]_0 ,
    \final_res_s_reg[5]_0 ,
    \final_res_s_reg[6]_0 ,
    \final_res_s_reg[7]_0 ,
    \final_res_s_reg[8]_0 ,
    \final_res_s_reg[9]_0 ,
    \final_res_s_reg[10]_0 ,
    \final_res_s_reg[11]_0 ,
    \final_res_s_reg[12]_0 ,
    \final_res_s_reg[13]_0 ,
    \final_res_s_reg[14]_0 ,
    \final_res_s_reg[15]_0 ,
    \final_res_s_reg[16]_0 ,
    \final_res_s_reg[17]_0 ,
    \final_res_s_reg[18]_0 ,
    \final_res_s_reg[19]_0 ,
    \final_res_s_reg[20]_0 ,
    \final_res_s_reg[21]_0 ,
    \final_res_s_reg[22]_0 ,
    \final_res_s_reg[23]_0 ,
    \final_res_s_reg[24]_0 ,
    \final_res_s_reg[25]_0 ,
    \final_res_s_reg[26]_0 ,
    \final_res_s_reg[27]_0 ,
    \final_res_s_reg[28]_0 ,
    \final_res_s_reg[29]_0 ,
    \final_res_s_reg[30]_0 ,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    \cpt_store_s_reg[0]_rep ,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s,
    \data_out_s_reg[31]_i_14 ,
    \data_out_s_reg[0]_i_6 ,
    \data_out_s_reg[31]_i_14_0 ,
    \data_out_s_reg[31]_i_14_1 ,
    \data_out_s_reg[31]_i_14_2 ,
    \data_out_s_reg[10]_i_6 );
  output end_s;
  output [29:0]ACOUT;
  output ready_s;
  output data_en_o_reg_0;
  output \final_res_s_reg[0]_0 ;
  output \final_res_s_reg[1]_0 ;
  output \final_res_s_reg[2]_0 ;
  output \final_res_s_reg[3]_0 ;
  output \final_res_s_reg[4]_0 ;
  output \final_res_s_reg[5]_0 ;
  output \final_res_s_reg[6]_0 ;
  output \final_res_s_reg[7]_0 ;
  output \final_res_s_reg[8]_0 ;
  output \final_res_s_reg[9]_0 ;
  output \final_res_s_reg[10]_0 ;
  output \final_res_s_reg[11]_0 ;
  output \final_res_s_reg[12]_0 ;
  output \final_res_s_reg[13]_0 ;
  output \final_res_s_reg[14]_0 ;
  output \final_res_s_reg[15]_0 ;
  output \final_res_s_reg[16]_0 ;
  output \final_res_s_reg[17]_0 ;
  output \final_res_s_reg[18]_0 ;
  output \final_res_s_reg[19]_0 ;
  output \final_res_s_reg[20]_0 ;
  output \final_res_s_reg[21]_0 ;
  output \final_res_s_reg[22]_0 ;
  output \final_res_s_reg[23]_0 ;
  output \final_res_s_reg[24]_0 ;
  output \final_res_s_reg[25]_0 ;
  output \final_res_s_reg[26]_0 ;
  output \final_res_s_reg[27]_0 ;
  output \final_res_s_reg[28]_0 ;
  output \final_res_s_reg[29]_0 ;
  output \final_res_s_reg[30]_0 ;
  output \final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [4:0]\cpt_store_s_reg[0]_rep ;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s;
  input [31:0]\data_out_s_reg[31]_i_14 ;
  input \data_out_s_reg[0]_i_6 ;
  input [31:0]\data_out_s_reg[31]_i_14_0 ;
  input [1:0]\data_out_s_reg[31]_i_14_1 ;
  input [31:0]\data_out_s_reg[31]_i_14_2 ;
  input \data_out_s_reg[10]_i_6 ;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire [4:0]\cpt_store_s_reg[0]_rep ;
  wire data_clk_i;
  wire data_en_o_reg_0;
  wire data_en_s;
  wire [15:15]data_en_s__0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire \data_out_s_reg[0]_i_6 ;
  wire \data_out_s_reg[10]_i_6 ;
  wire [31:0]\data_out_s_reg[31]_i_14 ;
  wire [31:0]\data_out_s_reg[31]_i_14_0 ;
  wire [1:0]\data_out_s_reg[31]_i_14_1 ;
  wire [31:0]\data_out_s_reg[31]_i_14_2 ;
  wire data_rst_i;
  wire end_s;
  wire \final_res_s_reg[0]_0 ;
  wire \final_res_s_reg[10]_0 ;
  wire \final_res_s_reg[11]_0 ;
  wire \final_res_s_reg[12]_0 ;
  wire \final_res_s_reg[13]_0 ;
  wire \final_res_s_reg[14]_0 ;
  wire \final_res_s_reg[15]_0 ;
  wire \final_res_s_reg[16]_0 ;
  wire \final_res_s_reg[17]_0 ;
  wire \final_res_s_reg[18]_0 ;
  wire \final_res_s_reg[19]_0 ;
  wire \final_res_s_reg[1]_0 ;
  wire \final_res_s_reg[20]_0 ;
  wire \final_res_s_reg[21]_0 ;
  wire \final_res_s_reg[22]_0 ;
  wire \final_res_s_reg[23]_0 ;
  wire \final_res_s_reg[24]_0 ;
  wire \final_res_s_reg[25]_0 ;
  wire \final_res_s_reg[26]_0 ;
  wire \final_res_s_reg[27]_0 ;
  wire \final_res_s_reg[28]_0 ;
  wire \final_res_s_reg[29]_0 ;
  wire \final_res_s_reg[2]_0 ;
  wire \final_res_s_reg[30]_0 ;
  wire \final_res_s_reg[31]_0 ;
  wire \final_res_s_reg[3]_0 ;
  wire \final_res_s_reg[4]_0 ;
  wire \final_res_s_reg[5]_0 ;
  wire \final_res_s_reg[6]_0 ;
  wire \final_res_s_reg[7]_0 ;
  wire \final_res_s_reg[8]_0 ;
  wire \final_res_s_reg[9]_0 ;
  wire \final_res_s_reg_n_0_[0] ;
  wire \final_res_s_reg_n_0_[10] ;
  wire \final_res_s_reg_n_0_[11] ;
  wire \final_res_s_reg_n_0_[12] ;
  wire \final_res_s_reg_n_0_[13] ;
  wire \final_res_s_reg_n_0_[14] ;
  wire \final_res_s_reg_n_0_[15] ;
  wire \final_res_s_reg_n_0_[16] ;
  wire \final_res_s_reg_n_0_[17] ;
  wire \final_res_s_reg_n_0_[18] ;
  wire \final_res_s_reg_n_0_[19] ;
  wire \final_res_s_reg_n_0_[1] ;
  wire \final_res_s_reg_n_0_[20] ;
  wire \final_res_s_reg_n_0_[21] ;
  wire \final_res_s_reg_n_0_[22] ;
  wire \final_res_s_reg_n_0_[23] ;
  wire \final_res_s_reg_n_0_[24] ;
  wire \final_res_s_reg_n_0_[25] ;
  wire \final_res_s_reg_n_0_[26] ;
  wire \final_res_s_reg_n_0_[27] ;
  wire \final_res_s_reg_n_0_[28] ;
  wire \final_res_s_reg_n_0_[29] ;
  wire \final_res_s_reg_n_0_[2] ;
  wire \final_res_s_reg_n_0_[30] ;
  wire \final_res_s_reg_n_0_[31] ;
  wire \final_res_s_reg_n_0_[3] ;
  wire \final_res_s_reg_n_0_[4] ;
  wire \final_res_s_reg_n_0_[5] ;
  wire \final_res_s_reg_n_0_[6] ;
  wire \final_res_s_reg_n_0_[7] ;
  wire \final_res_s_reg_n_0_[8] ;
  wire \final_res_s_reg_n_0_[9] ;
  wire must_rst_s_i_1__8_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__14_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s__0),
        .R(data_rst_i));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[0]_i_10 
       (.I0(\final_res_s_reg_n_0_[0] ),
        .I1(\data_out_s_reg[31]_i_14 [0]),
        .I2(\data_out_s_reg[0]_i_6 ),
        .I3(\data_out_s_reg[31]_i_14_0 [0]),
        .I4(\data_out_s_reg[31]_i_14_1 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [0]),
        .O(\final_res_s_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[10]_i_10 
       (.I0(\final_res_s_reg_n_0_[10] ),
        .I1(\data_out_s_reg[31]_i_14 [10]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [10]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [10]),
        .O(\final_res_s_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[11]_i_10 
       (.I0(\final_res_s_reg_n_0_[11] ),
        .I1(\data_out_s_reg[31]_i_14 [11]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [11]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [11]),
        .O(\final_res_s_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[12]_i_10 
       (.I0(\final_res_s_reg_n_0_[12] ),
        .I1(\data_out_s_reg[31]_i_14 [12]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [12]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [12]),
        .O(\final_res_s_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[13]_i_10 
       (.I0(\final_res_s_reg_n_0_[13] ),
        .I1(\data_out_s_reg[31]_i_14 [13]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [13]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [13]),
        .O(\final_res_s_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[14]_i_10 
       (.I0(\final_res_s_reg_n_0_[14] ),
        .I1(\data_out_s_reg[31]_i_14 [14]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [14]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [14]),
        .O(\final_res_s_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[15]_i_10 
       (.I0(\final_res_s_reg_n_0_[15] ),
        .I1(\data_out_s_reg[31]_i_14 [15]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [15]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [15]),
        .O(\final_res_s_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[16]_i_10 
       (.I0(\final_res_s_reg_n_0_[16] ),
        .I1(\data_out_s_reg[31]_i_14 [16]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [16]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [16]),
        .O(\final_res_s_reg[16]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[17]_i_10 
       (.I0(\final_res_s_reg_n_0_[17] ),
        .I1(\data_out_s_reg[31]_i_14 [17]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [17]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [17]),
        .O(\final_res_s_reg[17]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[18]_i_10 
       (.I0(\final_res_s_reg_n_0_[18] ),
        .I1(\data_out_s_reg[31]_i_14 [18]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [18]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [18]),
        .O(\final_res_s_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[19]_i_10 
       (.I0(\final_res_s_reg_n_0_[19] ),
        .I1(\data_out_s_reg[31]_i_14 [19]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [19]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [19]),
        .O(\final_res_s_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[1]_i_10 
       (.I0(\final_res_s_reg_n_0_[1] ),
        .I1(\data_out_s_reg[31]_i_14 [1]),
        .I2(\data_out_s_reg[0]_i_6 ),
        .I3(\data_out_s_reg[31]_i_14_0 [1]),
        .I4(\data_out_s_reg[31]_i_14_1 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [1]),
        .O(\final_res_s_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[20]_i_10 
       (.I0(\final_res_s_reg_n_0_[20] ),
        .I1(\data_out_s_reg[31]_i_14 [20]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [20]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [20]),
        .O(\final_res_s_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[21]_i_10 
       (.I0(\final_res_s_reg_n_0_[21] ),
        .I1(\data_out_s_reg[31]_i_14 [21]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [21]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [21]),
        .O(\final_res_s_reg[21]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[22]_i_10 
       (.I0(\final_res_s_reg_n_0_[22] ),
        .I1(\data_out_s_reg[31]_i_14 [22]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [22]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [22]),
        .O(\final_res_s_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[23]_i_10 
       (.I0(\final_res_s_reg_n_0_[23] ),
        .I1(\data_out_s_reg[31]_i_14 [23]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [23]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [23]),
        .O(\final_res_s_reg[23]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[24]_i_10 
       (.I0(\final_res_s_reg_n_0_[24] ),
        .I1(\data_out_s_reg[31]_i_14 [24]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [24]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [24]),
        .O(\final_res_s_reg[24]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[25]_i_10 
       (.I0(\final_res_s_reg_n_0_[25] ),
        .I1(\data_out_s_reg[31]_i_14 [25]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [25]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [25]),
        .O(\final_res_s_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[26]_i_10 
       (.I0(\final_res_s_reg_n_0_[26] ),
        .I1(\data_out_s_reg[31]_i_14 [26]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [26]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [26]),
        .O(\final_res_s_reg[26]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[27]_i_10 
       (.I0(\final_res_s_reg_n_0_[27] ),
        .I1(\data_out_s_reg[31]_i_14 [27]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [27]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [27]),
        .O(\final_res_s_reg[27]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[28]_i_10 
       (.I0(\final_res_s_reg_n_0_[28] ),
        .I1(\data_out_s_reg[31]_i_14 [28]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [28]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [28]),
        .O(\final_res_s_reg[28]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[29]_i_10 
       (.I0(\final_res_s_reg_n_0_[29] ),
        .I1(\data_out_s_reg[31]_i_14 [29]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [29]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [29]),
        .O(\final_res_s_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[2]_i_10 
       (.I0(\final_res_s_reg_n_0_[2] ),
        .I1(\data_out_s_reg[31]_i_14 [2]),
        .I2(\data_out_s_reg[0]_i_6 ),
        .I3(\data_out_s_reg[31]_i_14_0 [2]),
        .I4(\data_out_s_reg[31]_i_14_1 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [2]),
        .O(\final_res_s_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[30]_i_10 
       (.I0(\final_res_s_reg_n_0_[30] ),
        .I1(\data_out_s_reg[31]_i_14 [30]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [30]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [30]),
        .O(\final_res_s_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[31]_i_18 
       (.I0(\final_res_s_reg_n_0_[31] ),
        .I1(\data_out_s_reg[31]_i_14 [31]),
        .I2(\data_out_s_reg[31]_i_14_1 [1]),
        .I3(\data_out_s_reg[31]_i_14_0 [31]),
        .I4(\data_out_s_reg[10]_i_6 ),
        .I5(\data_out_s_reg[31]_i_14_2 [31]),
        .O(\final_res_s_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out_s[31]_i_6 
       (.I0(data_en_s__0),
        .I1(\cpt_store_s_reg[0]_rep [0]),
        .I2(\cpt_store_s_reg[0]_rep [1]),
        .I3(\cpt_store_s_reg[0]_rep [4]),
        .I4(\cpt_store_s_reg[0]_rep [2]),
        .I5(\cpt_store_s_reg[0]_rep [3]),
        .O(data_en_o_reg_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[3]_i_10 
       (.I0(\final_res_s_reg_n_0_[3] ),
        .I1(\data_out_s_reg[31]_i_14 [3]),
        .I2(\data_out_s_reg[0]_i_6 ),
        .I3(\data_out_s_reg[31]_i_14_0 [3]),
        .I4(\data_out_s_reg[31]_i_14_1 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [3]),
        .O(\final_res_s_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[4]_i_10 
       (.I0(\final_res_s_reg_n_0_[4] ),
        .I1(\data_out_s_reg[31]_i_14 [4]),
        .I2(\data_out_s_reg[0]_i_6 ),
        .I3(\data_out_s_reg[31]_i_14_0 [4]),
        .I4(\data_out_s_reg[31]_i_14_1 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [4]),
        .O(\final_res_s_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[5]_i_10 
       (.I0(\final_res_s_reg_n_0_[5] ),
        .I1(\data_out_s_reg[31]_i_14 [5]),
        .I2(\data_out_s_reg[0]_i_6 ),
        .I3(\data_out_s_reg[31]_i_14_0 [5]),
        .I4(\data_out_s_reg[31]_i_14_1 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [5]),
        .O(\final_res_s_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[6]_i_10 
       (.I0(\final_res_s_reg_n_0_[6] ),
        .I1(\data_out_s_reg[31]_i_14 [6]),
        .I2(\data_out_s_reg[0]_i_6 ),
        .I3(\data_out_s_reg[31]_i_14_0 [6]),
        .I4(\data_out_s_reg[31]_i_14_1 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [6]),
        .O(\final_res_s_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[7]_i_10 
       (.I0(\final_res_s_reg_n_0_[7] ),
        .I1(\data_out_s_reg[31]_i_14 [7]),
        .I2(\data_out_s_reg[0]_i_6 ),
        .I3(\data_out_s_reg[31]_i_14_0 [7]),
        .I4(\data_out_s_reg[31]_i_14_1 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [7]),
        .O(\final_res_s_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[8]_i_10 
       (.I0(\final_res_s_reg_n_0_[8] ),
        .I1(\data_out_s_reg[31]_i_14 [8]),
        .I2(\data_out_s_reg[0]_i_6 ),
        .I3(\data_out_s_reg[31]_i_14_0 [8]),
        .I4(\data_out_s_reg[31]_i_14_1 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [8]),
        .O(\final_res_s_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[9]_i_10 
       (.I0(\final_res_s_reg_n_0_[9] ),
        .I1(\data_out_s_reg[31]_i_14 [9]),
        .I2(\data_out_s_reg[0]_i_6 ),
        .I3(\data_out_s_reg[31]_i_14_0 [9]),
        .I4(\data_out_s_reg[31]_i_14_1 [0]),
        .I5(\data_out_s_reg[31]_i_14_2 [9]),
        .O(\final_res_s_reg[9]_0 ));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg_n_0_[0] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg_n_0_[10] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg_n_0_[11] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg_n_0_[12] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg_n_0_[13] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg_n_0_[14] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg_n_0_[15] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg_n_0_[16] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg_n_0_[17] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg_n_0_[18] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg_n_0_[19] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg_n_0_[1] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg_n_0_[20] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg_n_0_[21] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg_n_0_[22] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg_n_0_[23] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg_n_0_[24] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg_n_0_[25] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg_n_0_[26] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg_n_0_[27] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg_n_0_[28] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg_n_0_[29] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg_n_0_[2] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg_n_0_[30] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg_n_0_[31] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg_n_0_[3] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg_n_0_[4] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg_n_0_[5] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg_n_0_[6] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg_n_0_[7] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg_n_0_[8] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg_n_0_[9] ),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__8
       (.I0(Q),
        .I1(data_en_s),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__8_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__8_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__14
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__14_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__14_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_6
   (end_s,
    data_en_o_reg_0,
    ACOUT,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s);
  output end_s;
  output [0:0]data_en_o_reg_0;
  output [29:0]ACOUT;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_o_reg_0;
  wire data_en_s;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__7_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__15_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_o_reg_0),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__7
       (.I0(Q),
        .I1(data_en_s),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__7_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__7_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__15
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__15_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__15_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_7
   (end_s,
    data_en_o_reg_0,
    ACOUT,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s);
  output end_s;
  output [0:0]data_en_o_reg_0;
  output [29:0]ACOUT;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_o_reg_0;
  wire data_en_s;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__6_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__16_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_o_reg_0),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__6
       (.I0(Q),
        .I1(data_en_s),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__6_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__6_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__16
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__16_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__16_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_8
   (end_s,
    data_en_o_reg_0,
    ACOUT,
    ready_s,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s);
  output end_s;
  output [0:0]data_en_o_reg_0;
  output [29:0]ACOUT;
  output ready_s;
  output [31:0]\final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_o_reg_0;
  wire data_en_s;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire data_rst_i;
  wire end_s;
  wire [31:0]\final_res_s_reg[31]_0 ;
  wire must_rst_s_i_1__5_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__17_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_o_reg_0),
        .R(data_rst_i));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg[31]_0 [0]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg[31]_0 [10]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg[31]_0 [11]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg[31]_0 [12]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg[31]_0 [13]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg[31]_0 [14]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg[31]_0 [15]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg[31]_0 [16]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg[31]_0 [17]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg[31]_0 [18]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg[31]_0 [19]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg[31]_0 [1]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg[31]_0 [20]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg[31]_0 [21]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg[31]_0 [22]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg[31]_0 [23]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg[31]_0 [24]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg[31]_0 [25]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg[31]_0 [26]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg[31]_0 [27]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg[31]_0 [28]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg[31]_0 [29]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg[31]_0 [2]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg[31]_0 [30]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg[31]_0 [31]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg[31]_0 [3]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg[31]_0 [4]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg[31]_0 [5]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg[31]_0 [6]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg[31]_0 [7]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg[31]_0 [8]),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg[31]_0 [9]),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__5
       (.I0(Q),
        .I1(data_en_s),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__5_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__5_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__17
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__17_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__17_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_proc" *) 
module double_iq_pid_vco_firReal_0_0_firReal_proc_9
   (end_s,
    data_en_s,
    ACOUT,
    ready_s,
    \final_res_s_reg[0]_0 ,
    \final_res_s_reg[1]_0 ,
    \final_res_s_reg[2]_0 ,
    \final_res_s_reg[3]_0 ,
    \final_res_s_reg[4]_0 ,
    \final_res_s_reg[5]_0 ,
    \final_res_s_reg[6]_0 ,
    \final_res_s_reg[7]_0 ,
    \final_res_s_reg[8]_0 ,
    \final_res_s_reg[9]_0 ,
    \final_res_s_reg[10]_0 ,
    \final_res_s_reg[11]_0 ,
    \final_res_s_reg[12]_0 ,
    \final_res_s_reg[13]_0 ,
    \final_res_s_reg[14]_0 ,
    \final_res_s_reg[15]_0 ,
    \final_res_s_reg[16]_0 ,
    \final_res_s_reg[17]_0 ,
    \final_res_s_reg[18]_0 ,
    \final_res_s_reg[19]_0 ,
    \final_res_s_reg[20]_0 ,
    \final_res_s_reg[21]_0 ,
    \final_res_s_reg[22]_0 ,
    \final_res_s_reg[23]_0 ,
    \final_res_s_reg[24]_0 ,
    \final_res_s_reg[25]_0 ,
    \final_res_s_reg[26]_0 ,
    \final_res_s_reg[27]_0 ,
    \final_res_s_reg[28]_0 ,
    \final_res_s_reg[29]_0 ,
    \final_res_s_reg[30]_0 ,
    \final_res_s_reg[31]_0 ,
    data_rst_i,
    Q,
    data_clk_i,
    E,
    data_in_en_s,
    res_s0,
    data_i,
    res_s_reg_0,
    ready_s_reg_0,
    data_en_s_0,
    \data_out_s_reg[31] ,
    \data_out_s_reg[9] ,
    \data_out_s_reg[31]_0 ,
    \data_out_s_reg[10] ,
    \data_out_s_reg[31]_1 ,
    \data_out_s_reg[31]_2 );
  output end_s;
  output [0:0]data_en_s;
  output [29:0]ACOUT;
  output ready_s;
  output \final_res_s_reg[0]_0 ;
  output \final_res_s_reg[1]_0 ;
  output \final_res_s_reg[2]_0 ;
  output \final_res_s_reg[3]_0 ;
  output \final_res_s_reg[4]_0 ;
  output \final_res_s_reg[5]_0 ;
  output \final_res_s_reg[6]_0 ;
  output \final_res_s_reg[7]_0 ;
  output \final_res_s_reg[8]_0 ;
  output \final_res_s_reg[9]_0 ;
  output \final_res_s_reg[10]_0 ;
  output \final_res_s_reg[11]_0 ;
  output \final_res_s_reg[12]_0 ;
  output \final_res_s_reg[13]_0 ;
  output \final_res_s_reg[14]_0 ;
  output \final_res_s_reg[15]_0 ;
  output \final_res_s_reg[16]_0 ;
  output \final_res_s_reg[17]_0 ;
  output \final_res_s_reg[18]_0 ;
  output \final_res_s_reg[19]_0 ;
  output \final_res_s_reg[20]_0 ;
  output \final_res_s_reg[21]_0 ;
  output \final_res_s_reg[22]_0 ;
  output \final_res_s_reg[23]_0 ;
  output \final_res_s_reg[24]_0 ;
  output \final_res_s_reg[25]_0 ;
  output \final_res_s_reg[26]_0 ;
  output \final_res_s_reg[27]_0 ;
  output \final_res_s_reg[28]_0 ;
  output \final_res_s_reg[29]_0 ;
  output \final_res_s_reg[30]_0 ;
  output \final_res_s_reg[31]_0 ;
  input data_rst_i;
  input [0:0]Q;
  input data_clk_i;
  input [0:0]E;
  input data_in_en_s;
  input res_s0;
  input [13:0]data_i;
  input [29:0]res_s_reg_0;
  input [0:0]ready_s_reg_0;
  input data_en_s_0;
  input [31:0]\data_out_s_reg[31] ;
  input \data_out_s_reg[9] ;
  input [31:0]\data_out_s_reg[31]_0 ;
  input [1:0]\data_out_s_reg[10] ;
  input [31:0]\data_out_s_reg[31]_1 ;
  input \data_out_s_reg[31]_2 ;

  wire [29:0]ACOUT;
  wire [0:0]E;
  wire [0:0]Q;
  wire data_clk_i;
  wire [0:0]data_en_s;
  wire data_en_s_0;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire [1:0]\data_out_s_reg[10] ;
  wire [31:0]\data_out_s_reg[31] ;
  wire [31:0]\data_out_s_reg[31]_0 ;
  wire [31:0]\data_out_s_reg[31]_1 ;
  wire \data_out_s_reg[31]_2 ;
  wire \data_out_s_reg[9] ;
  wire data_rst_i;
  wire end_s;
  wire \final_res_s_reg[0]_0 ;
  wire \final_res_s_reg[10]_0 ;
  wire \final_res_s_reg[11]_0 ;
  wire \final_res_s_reg[12]_0 ;
  wire \final_res_s_reg[13]_0 ;
  wire \final_res_s_reg[14]_0 ;
  wire \final_res_s_reg[15]_0 ;
  wire \final_res_s_reg[16]_0 ;
  wire \final_res_s_reg[17]_0 ;
  wire \final_res_s_reg[18]_0 ;
  wire \final_res_s_reg[19]_0 ;
  wire \final_res_s_reg[1]_0 ;
  wire \final_res_s_reg[20]_0 ;
  wire \final_res_s_reg[21]_0 ;
  wire \final_res_s_reg[22]_0 ;
  wire \final_res_s_reg[23]_0 ;
  wire \final_res_s_reg[24]_0 ;
  wire \final_res_s_reg[25]_0 ;
  wire \final_res_s_reg[26]_0 ;
  wire \final_res_s_reg[27]_0 ;
  wire \final_res_s_reg[28]_0 ;
  wire \final_res_s_reg[29]_0 ;
  wire \final_res_s_reg[2]_0 ;
  wire \final_res_s_reg[30]_0 ;
  wire \final_res_s_reg[31]_0 ;
  wire \final_res_s_reg[3]_0 ;
  wire \final_res_s_reg[4]_0 ;
  wire \final_res_s_reg[5]_0 ;
  wire \final_res_s_reg[6]_0 ;
  wire \final_res_s_reg[7]_0 ;
  wire \final_res_s_reg[8]_0 ;
  wire \final_res_s_reg[9]_0 ;
  wire \final_res_s_reg_n_0_[0] ;
  wire \final_res_s_reg_n_0_[10] ;
  wire \final_res_s_reg_n_0_[11] ;
  wire \final_res_s_reg_n_0_[12] ;
  wire \final_res_s_reg_n_0_[13] ;
  wire \final_res_s_reg_n_0_[14] ;
  wire \final_res_s_reg_n_0_[15] ;
  wire \final_res_s_reg_n_0_[16] ;
  wire \final_res_s_reg_n_0_[17] ;
  wire \final_res_s_reg_n_0_[18] ;
  wire \final_res_s_reg_n_0_[19] ;
  wire \final_res_s_reg_n_0_[1] ;
  wire \final_res_s_reg_n_0_[20] ;
  wire \final_res_s_reg_n_0_[21] ;
  wire \final_res_s_reg_n_0_[22] ;
  wire \final_res_s_reg_n_0_[23] ;
  wire \final_res_s_reg_n_0_[24] ;
  wire \final_res_s_reg_n_0_[25] ;
  wire \final_res_s_reg_n_0_[26] ;
  wire \final_res_s_reg_n_0_[27] ;
  wire \final_res_s_reg_n_0_[28] ;
  wire \final_res_s_reg_n_0_[29] ;
  wire \final_res_s_reg_n_0_[2] ;
  wire \final_res_s_reg_n_0_[30] ;
  wire \final_res_s_reg_n_0_[31] ;
  wire \final_res_s_reg_n_0_[3] ;
  wire \final_res_s_reg_n_0_[4] ;
  wire \final_res_s_reg_n_0_[5] ;
  wire \final_res_s_reg_n_0_[6] ;
  wire \final_res_s_reg_n_0_[7] ;
  wire \final_res_s_reg_n_0_[8] ;
  wire \final_res_s_reg_n_0_[9] ;
  wire must_rst_s_i_1__4_n_0;
  wire must_rst_s_reg_n_0;
  wire ready_s;
  wire ready_s_i_1__18_n_0;
  wire [0:0]ready_s_reg_0;
  wire res_s0;
  wire [29:0]res_s_reg_0;
  wire res_s_reg_n_100;
  wire res_s_reg_n_101;
  wire res_s_reg_n_102;
  wire res_s_reg_n_103;
  wire res_s_reg_n_104;
  wire res_s_reg_n_105;
  wire res_s_reg_n_71;
  wire res_s_reg_n_72;
  wire res_s_reg_n_73;
  wire res_s_reg_n_74;
  wire res_s_reg_n_75;
  wire res_s_reg_n_76;
  wire res_s_reg_n_77;
  wire res_s_reg_n_78;
  wire res_s_reg_n_79;
  wire res_s_reg_n_80;
  wire res_s_reg_n_81;
  wire res_s_reg_n_82;
  wire res_s_reg_n_83;
  wire res_s_reg_n_84;
  wire res_s_reg_n_85;
  wire res_s_reg_n_86;
  wire res_s_reg_n_87;
  wire res_s_reg_n_88;
  wire res_s_reg_n_89;
  wire res_s_reg_n_90;
  wire res_s_reg_n_91;
  wire res_s_reg_n_92;
  wire res_s_reg_n_93;
  wire res_s_reg_n_94;
  wire res_s_reg_n_95;
  wire res_s_reg_n_96;
  wire res_s_reg_n_97;
  wire res_s_reg_n_98;
  wire res_s_reg_n_99;
  wire NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_s_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_s_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_s_reg_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res_s_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_s_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_res_s_reg_P_UNCONNECTED;
  wire [47:0]NLW_res_s_reg_PCOUT_UNCONNECTED;

  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(E),
        .Q(data_en_s),
        .R(data_rst_i));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[0]_i_4 
       (.I0(\final_res_s_reg_n_0_[0] ),
        .I1(\data_out_s_reg[31] [0]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [0]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [0]),
        .O(\final_res_s_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[10]_i_4 
       (.I0(\final_res_s_reg_n_0_[10] ),
        .I1(\data_out_s_reg[31] [10]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [10]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [10]),
        .O(\final_res_s_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[11]_i_4 
       (.I0(\final_res_s_reg_n_0_[11] ),
        .I1(\data_out_s_reg[31] [11]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [11]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [11]),
        .O(\final_res_s_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[12]_i_4 
       (.I0(\final_res_s_reg_n_0_[12] ),
        .I1(\data_out_s_reg[31] [12]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [12]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [12]),
        .O(\final_res_s_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[13]_i_4 
       (.I0(\final_res_s_reg_n_0_[13] ),
        .I1(\data_out_s_reg[31] [13]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [13]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [13]),
        .O(\final_res_s_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[14]_i_4 
       (.I0(\final_res_s_reg_n_0_[14] ),
        .I1(\data_out_s_reg[31] [14]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [14]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [14]),
        .O(\final_res_s_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[15]_i_4 
       (.I0(\final_res_s_reg_n_0_[15] ),
        .I1(\data_out_s_reg[31] [15]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [15]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [15]),
        .O(\final_res_s_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[16]_i_4 
       (.I0(\final_res_s_reg_n_0_[16] ),
        .I1(\data_out_s_reg[31] [16]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [16]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [16]),
        .O(\final_res_s_reg[16]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[17]_i_4 
       (.I0(\final_res_s_reg_n_0_[17] ),
        .I1(\data_out_s_reg[31] [17]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [17]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [17]),
        .O(\final_res_s_reg[17]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[18]_i_4 
       (.I0(\final_res_s_reg_n_0_[18] ),
        .I1(\data_out_s_reg[31] [18]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [18]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [18]),
        .O(\final_res_s_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[19]_i_4 
       (.I0(\final_res_s_reg_n_0_[19] ),
        .I1(\data_out_s_reg[31] [19]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [19]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [19]),
        .O(\final_res_s_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[1]_i_4 
       (.I0(\final_res_s_reg_n_0_[1] ),
        .I1(\data_out_s_reg[31] [1]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [1]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [1]),
        .O(\final_res_s_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[20]_i_4 
       (.I0(\final_res_s_reg_n_0_[20] ),
        .I1(\data_out_s_reg[31] [20]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [20]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [20]),
        .O(\final_res_s_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[21]_i_4 
       (.I0(\final_res_s_reg_n_0_[21] ),
        .I1(\data_out_s_reg[31] [21]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [21]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [21]),
        .O(\final_res_s_reg[21]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[22]_i_4 
       (.I0(\final_res_s_reg_n_0_[22] ),
        .I1(\data_out_s_reg[31] [22]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [22]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [22]),
        .O(\final_res_s_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[23]_i_4 
       (.I0(\final_res_s_reg_n_0_[23] ),
        .I1(\data_out_s_reg[31] [23]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [23]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [23]),
        .O(\final_res_s_reg[23]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[24]_i_4 
       (.I0(\final_res_s_reg_n_0_[24] ),
        .I1(\data_out_s_reg[31] [24]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [24]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [24]),
        .O(\final_res_s_reg[24]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[25]_i_4 
       (.I0(\final_res_s_reg_n_0_[25] ),
        .I1(\data_out_s_reg[31] [25]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [25]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [25]),
        .O(\final_res_s_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[26]_i_4 
       (.I0(\final_res_s_reg_n_0_[26] ),
        .I1(\data_out_s_reg[31] [26]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [26]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [26]),
        .O(\final_res_s_reg[26]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[27]_i_4 
       (.I0(\final_res_s_reg_n_0_[27] ),
        .I1(\data_out_s_reg[31] [27]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [27]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [27]),
        .O(\final_res_s_reg[27]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[28]_i_4 
       (.I0(\final_res_s_reg_n_0_[28] ),
        .I1(\data_out_s_reg[31] [28]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [28]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [28]),
        .O(\final_res_s_reg[28]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[29]_i_4 
       (.I0(\final_res_s_reg_n_0_[29] ),
        .I1(\data_out_s_reg[31] [29]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [29]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [29]),
        .O(\final_res_s_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[2]_i_4 
       (.I0(\final_res_s_reg_n_0_[2] ),
        .I1(\data_out_s_reg[31] [2]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [2]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [2]),
        .O(\final_res_s_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[30]_i_4 
       (.I0(\final_res_s_reg_n_0_[30] ),
        .I1(\data_out_s_reg[31] [30]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [30]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [30]),
        .O(\final_res_s_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[31]_i_12 
       (.I0(\final_res_s_reg_n_0_[31] ),
        .I1(\data_out_s_reg[31] [31]),
        .I2(\data_out_s_reg[10] [1]),
        .I3(\data_out_s_reg[31]_0 [31]),
        .I4(\data_out_s_reg[31]_2 ),
        .I5(\data_out_s_reg[31]_1 [31]),
        .O(\final_res_s_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[3]_i_4 
       (.I0(\final_res_s_reg_n_0_[3] ),
        .I1(\data_out_s_reg[31] [3]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [3]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [3]),
        .O(\final_res_s_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[4]_i_4 
       (.I0(\final_res_s_reg_n_0_[4] ),
        .I1(\data_out_s_reg[31] [4]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [4]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [4]),
        .O(\final_res_s_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[5]_i_4 
       (.I0(\final_res_s_reg_n_0_[5] ),
        .I1(\data_out_s_reg[31] [5]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [5]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [5]),
        .O(\final_res_s_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[6]_i_4 
       (.I0(\final_res_s_reg_n_0_[6] ),
        .I1(\data_out_s_reg[31] [6]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [6]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [6]),
        .O(\final_res_s_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[7]_i_4 
       (.I0(\final_res_s_reg_n_0_[7] ),
        .I1(\data_out_s_reg[31] [7]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [7]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [7]),
        .O(\final_res_s_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[8]_i_4 
       (.I0(\final_res_s_reg_n_0_[8] ),
        .I1(\data_out_s_reg[31] [8]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [8]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [8]),
        .O(\final_res_s_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_s[9]_i_4 
       (.I0(\final_res_s_reg_n_0_[9] ),
        .I1(\data_out_s_reg[31] [9]),
        .I2(\data_out_s_reg[9] ),
        .I3(\data_out_s_reg[31]_0 [9]),
        .I4(\data_out_s_reg[10] [0]),
        .I5(\data_out_s_reg[31]_1 [9]),
        .O(\final_res_s_reg[9]_0 ));
  FDRE end_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(Q),
        .Q(end_s),
        .R(data_rst_i));
  FDRE \final_res_s_reg[0] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_105),
        .Q(\final_res_s_reg_n_0_[0] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[10] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_95),
        .Q(\final_res_s_reg_n_0_[10] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[11] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_94),
        .Q(\final_res_s_reg_n_0_[11] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[12] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_93),
        .Q(\final_res_s_reg_n_0_[12] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[13] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_92),
        .Q(\final_res_s_reg_n_0_[13] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[14] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_91),
        .Q(\final_res_s_reg_n_0_[14] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[15] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_90),
        .Q(\final_res_s_reg_n_0_[15] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[16] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_89),
        .Q(\final_res_s_reg_n_0_[16] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[17] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_88),
        .Q(\final_res_s_reg_n_0_[17] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[18] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_87),
        .Q(\final_res_s_reg_n_0_[18] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[19] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_86),
        .Q(\final_res_s_reg_n_0_[19] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[1] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_104),
        .Q(\final_res_s_reg_n_0_[1] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[20] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_85),
        .Q(\final_res_s_reg_n_0_[20] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[21] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_84),
        .Q(\final_res_s_reg_n_0_[21] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[22] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_83),
        .Q(\final_res_s_reg_n_0_[22] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[23] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_82),
        .Q(\final_res_s_reg_n_0_[23] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[24] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_81),
        .Q(\final_res_s_reg_n_0_[24] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[25] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_80),
        .Q(\final_res_s_reg_n_0_[25] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[26] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_79),
        .Q(\final_res_s_reg_n_0_[26] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[27] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_78),
        .Q(\final_res_s_reg_n_0_[27] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[28] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_77),
        .Q(\final_res_s_reg_n_0_[28] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[29] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_76),
        .Q(\final_res_s_reg_n_0_[29] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[2] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_103),
        .Q(\final_res_s_reg_n_0_[2] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[30] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_75),
        .Q(\final_res_s_reg_n_0_[30] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[31] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_74),
        .Q(\final_res_s_reg_n_0_[31] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[3] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_102),
        .Q(\final_res_s_reg_n_0_[3] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[4] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_101),
        .Q(\final_res_s_reg_n_0_[4] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[5] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_100),
        .Q(\final_res_s_reg_n_0_[5] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[6] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_99),
        .Q(\final_res_s_reg_n_0_[6] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[7] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_98),
        .Q(\final_res_s_reg_n_0_[7] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[8] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_97),
        .Q(\final_res_s_reg_n_0_[8] ),
        .R(data_rst_i));
  FDRE \final_res_s_reg[9] 
       (.C(data_clk_i),
        .CE(E),
        .D(res_s_reg_n_96),
        .Q(\final_res_s_reg_n_0_[9] ),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'hBF80)) 
    must_rst_s_i_1__4
       (.I0(Q),
        .I1(data_en_s_0),
        .I2(ready_s),
        .I3(must_rst_s_reg_n_0),
        .O(must_rst_s_i_1__4_n_0));
  FDRE must_rst_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(must_rst_s_i_1__4_n_0),
        .Q(must_rst_s_reg_n_0),
        .R(data_rst_i));
  LUT4 #(
    .INIT(16'h8F88)) 
    ready_s_i_1__18
       (.I0(ready_s_reg_0),
        .I1(data_in_en_s),
        .I2(Q),
        .I3(ready_s),
        .O(ready_s_i_1__18_n_0));
  FDRE ready_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(ready_s_i_1__18_n_0),
        .Q(ready_s),
        .R(data_rst_i));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_s_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN(res_s_reg_0),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({data_i[13],data_i[13],data_i[13],data_i[13],data_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_s_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_s_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_in_en_s),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(data_in_en_s),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(res_s0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,must_rst_s_reg_n_0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_s_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_res_s_reg_P_UNCONNECTED[47:35],res_s_reg_n_71,res_s_reg_n_72,res_s_reg_n_73,res_s_reg_n_74,res_s_reg_n_75,res_s_reg_n_76,res_s_reg_n_77,res_s_reg_n_78,res_s_reg_n_79,res_s_reg_n_80,res_s_reg_n_81,res_s_reg_n_82,res_s_reg_n_83,res_s_reg_n_84,res_s_reg_n_85,res_s_reg_n_86,res_s_reg_n_87,res_s_reg_n_88,res_s_reg_n_89,res_s_reg_n_90,res_s_reg_n_91,res_s_reg_n_92,res_s_reg_n_93,res_s_reg_n_94,res_s_reg_n_95,res_s_reg_n_96,res_s_reg_n_97,res_s_reg_n_98,res_s_reg_n_99,res_s_reg_n_100,res_s_reg_n_101,res_s_reg_n_102,res_s_reg_n_103,res_s_reg_n_104,res_s_reg_n_105}),
        .PATTERNBDETECT(NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_s_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_res_s_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(data_rst_i),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_res_s_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "firReal_ram" *) 
module double_iq_pid_vco_firReal_0_0_firReal_ram
   (DOBDO,
    s00_axi_aclk,
    data_clk_i,
    coeff_en_s,
    mem_reg_0,
    Q,
    mem_reg_1);
  output [15:0]DOBDO;
  input s00_axi_aclk;
  input data_clk_i;
  input coeff_en_s;
  input [4:0]mem_reg_0;
  input [4:0]Q;
  input [15:0]mem_reg_1;

  wire [15:0]DOBDO;
  wire [4:0]Q;
  wire coeff_en_s;
  wire data_clk_i;
  wire [4:0]mem_reg_0;
  wire [15:0]mem_reg_1;
  wire s00_axi_aclk;
  wire [15:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-4 {cell *THIS*} {string 5}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "U0/fir_top_inst/ram_coeff/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,Q,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(data_clk_i),
        .DIADI(mem_reg_1),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO(DOBDO),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(coeff_en_s),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "firReal_top" *) 
module double_iq_pid_vco_firReal_0_0_firReal_top
   (tick_o,
    data_o,
    s00_axi_aclk,
    data_clk_i,
    coeff_en_s,
    mem_reg,
    mem_reg_0,
    data_rst_i,
    data_en_i,
    data_i);
  output tick_o;
  output [31:0]data_o;
  input s00_axi_aclk;
  input data_clk_i;
  input coeff_en_s;
  input [4:0]mem_reg;
  input [15:0]mem_reg_0;
  input data_rst_i;
  input data_en_i;
  input [13:0]data_i;

  wire clear;
  wire coeff_en_s;
  wire [15:0]coeff_s;
  wire \cpt_s_reg_n_0_[0] ;
  wire \cpt_s_reg_n_0_[1] ;
  wire \cpt_s_reg_n_0_[2] ;
  wire \cpt_s_reg_n_0_[3] ;
  wire \cpt_s_reg_n_0_[4] ;
  wire \cpt_store_s[0]_rep_i_1_n_0 ;
  wire \cpt_store_s[1]_rep_i_1_n_0 ;
  wire \cpt_store_s[4]_i_3_n_0 ;
  wire [4:0]cpt_store_s_reg;
  wire \cpt_store_s_reg[0]_rep_n_0 ;
  wire \cpt_store_s_reg[1]_rep_n_0 ;
  wire data_clk_i;
  wire data_en_i;
  wire data_en_next;
  wire [24:0]data_en_s;
  wire data_en_s_46;
  wire [13:0]data_i;
  wire data_in_en_s;
  wire [31:0]data_o;
  wire data_out_en_s;
  wire data_out_en_s_1;
  wire data_out_en_s_11;
  wire data_out_en_s_13;
  wire data_out_en_s_15;
  wire data_out_en_s_17;
  wire data_out_en_s_19;
  wire data_out_en_s_21;
  wire data_out_en_s_23;
  wire data_out_en_s_25;
  wire data_out_en_s_27;
  wire data_out_en_s_29;
  wire data_out_en_s_3;
  wire data_out_en_s_31;
  wire data_out_en_s_33;
  wire data_out_en_s_35;
  wire data_out_en_s_37;
  wire data_out_en_s_39;
  wire data_out_en_s_41;
  wire data_out_en_s_43;
  wire data_out_en_s_45;
  wire data_out_en_s_5;
  wire data_out_en_s_7;
  wire data_out_en_s_9;
  wire \data_out_s[31]_i_11_n_0 ;
  wire \data_out_s[31]_i_9_n_0 ;
  wire data_rst_i;
  wire [31:0]\data_s[24]_0 ;
  wire end_macc_s__0;
  wire [0:0]end_next_s;
  wire [24:1]end_next_s_0;
  wire end_s;
  wire end_s_48;
  wire end_s_50;
  wire end_s_52;
  wire end_s_54;
  wire end_s_56;
  wire end_s_58;
  wire end_s_60;
  wire end_s_62;
  wire end_s_64;
  wire end_s_66;
  wire end_s_68;
  wire end_s_70;
  wire end_s_72;
  wire end_s_74;
  wire end_s_76;
  wire end_s_78;
  wire end_s_80;
  wire end_s_82;
  wire end_s_84;
  wire end_s_86;
  wire end_s_88;
  wire end_s_90;
  wire end_s_92;
  wire \end_s_reg_n_0_[24] ;
  wire [31:0]final_res_s;
  wire \gen_macc[10].logic_inst_n_10 ;
  wire \gen_macc[10].logic_inst_n_11 ;
  wire \gen_macc[10].logic_inst_n_12 ;
  wire \gen_macc[10].logic_inst_n_13 ;
  wire \gen_macc[10].logic_inst_n_14 ;
  wire \gen_macc[10].logic_inst_n_15 ;
  wire \gen_macc[10].logic_inst_n_16 ;
  wire \gen_macc[10].logic_inst_n_17 ;
  wire \gen_macc[10].logic_inst_n_18 ;
  wire \gen_macc[10].logic_inst_n_19 ;
  wire \gen_macc[10].logic_inst_n_2 ;
  wire \gen_macc[10].logic_inst_n_20 ;
  wire \gen_macc[10].logic_inst_n_21 ;
  wire \gen_macc[10].logic_inst_n_22 ;
  wire \gen_macc[10].logic_inst_n_23 ;
  wire \gen_macc[10].logic_inst_n_24 ;
  wire \gen_macc[10].logic_inst_n_25 ;
  wire \gen_macc[10].logic_inst_n_26 ;
  wire \gen_macc[10].logic_inst_n_27 ;
  wire \gen_macc[10].logic_inst_n_28 ;
  wire \gen_macc[10].logic_inst_n_29 ;
  wire \gen_macc[10].logic_inst_n_3 ;
  wire \gen_macc[10].logic_inst_n_30 ;
  wire \gen_macc[10].logic_inst_n_31 ;
  wire \gen_macc[10].logic_inst_n_33 ;
  wire \gen_macc[10].logic_inst_n_34 ;
  wire \gen_macc[10].logic_inst_n_35 ;
  wire \gen_macc[10].logic_inst_n_36 ;
  wire \gen_macc[10].logic_inst_n_37 ;
  wire \gen_macc[10].logic_inst_n_38 ;
  wire \gen_macc[10].logic_inst_n_39 ;
  wire \gen_macc[10].logic_inst_n_4 ;
  wire \gen_macc[10].logic_inst_n_40 ;
  wire \gen_macc[10].logic_inst_n_41 ;
  wire \gen_macc[10].logic_inst_n_42 ;
  wire \gen_macc[10].logic_inst_n_43 ;
  wire \gen_macc[10].logic_inst_n_44 ;
  wire \gen_macc[10].logic_inst_n_45 ;
  wire \gen_macc[10].logic_inst_n_46 ;
  wire \gen_macc[10].logic_inst_n_47 ;
  wire \gen_macc[10].logic_inst_n_48 ;
  wire \gen_macc[10].logic_inst_n_49 ;
  wire \gen_macc[10].logic_inst_n_5 ;
  wire \gen_macc[10].logic_inst_n_50 ;
  wire \gen_macc[10].logic_inst_n_51 ;
  wire \gen_macc[10].logic_inst_n_52 ;
  wire \gen_macc[10].logic_inst_n_53 ;
  wire \gen_macc[10].logic_inst_n_54 ;
  wire \gen_macc[10].logic_inst_n_55 ;
  wire \gen_macc[10].logic_inst_n_56 ;
  wire \gen_macc[10].logic_inst_n_57 ;
  wire \gen_macc[10].logic_inst_n_58 ;
  wire \gen_macc[10].logic_inst_n_59 ;
  wire \gen_macc[10].logic_inst_n_6 ;
  wire \gen_macc[10].logic_inst_n_60 ;
  wire \gen_macc[10].logic_inst_n_61 ;
  wire \gen_macc[10].logic_inst_n_62 ;
  wire \gen_macc[10].logic_inst_n_63 ;
  wire \gen_macc[10].logic_inst_n_64 ;
  wire \gen_macc[10].logic_inst_n_7 ;
  wire \gen_macc[10].logic_inst_n_8 ;
  wire \gen_macc[10].logic_inst_n_9 ;
  wire \gen_macc[11].logic_inst_n_10 ;
  wire \gen_macc[11].logic_inst_n_11 ;
  wire \gen_macc[11].logic_inst_n_12 ;
  wire \gen_macc[11].logic_inst_n_13 ;
  wire \gen_macc[11].logic_inst_n_14 ;
  wire \gen_macc[11].logic_inst_n_15 ;
  wire \gen_macc[11].logic_inst_n_16 ;
  wire \gen_macc[11].logic_inst_n_17 ;
  wire \gen_macc[11].logic_inst_n_18 ;
  wire \gen_macc[11].logic_inst_n_19 ;
  wire \gen_macc[11].logic_inst_n_2 ;
  wire \gen_macc[11].logic_inst_n_20 ;
  wire \gen_macc[11].logic_inst_n_21 ;
  wire \gen_macc[11].logic_inst_n_22 ;
  wire \gen_macc[11].logic_inst_n_23 ;
  wire \gen_macc[11].logic_inst_n_24 ;
  wire \gen_macc[11].logic_inst_n_25 ;
  wire \gen_macc[11].logic_inst_n_26 ;
  wire \gen_macc[11].logic_inst_n_27 ;
  wire \gen_macc[11].logic_inst_n_28 ;
  wire \gen_macc[11].logic_inst_n_29 ;
  wire \gen_macc[11].logic_inst_n_3 ;
  wire \gen_macc[11].logic_inst_n_30 ;
  wire \gen_macc[11].logic_inst_n_31 ;
  wire \gen_macc[11].logic_inst_n_33 ;
  wire \gen_macc[11].logic_inst_n_34 ;
  wire \gen_macc[11].logic_inst_n_35 ;
  wire \gen_macc[11].logic_inst_n_36 ;
  wire \gen_macc[11].logic_inst_n_37 ;
  wire \gen_macc[11].logic_inst_n_38 ;
  wire \gen_macc[11].logic_inst_n_39 ;
  wire \gen_macc[11].logic_inst_n_4 ;
  wire \gen_macc[11].logic_inst_n_40 ;
  wire \gen_macc[11].logic_inst_n_41 ;
  wire \gen_macc[11].logic_inst_n_42 ;
  wire \gen_macc[11].logic_inst_n_43 ;
  wire \gen_macc[11].logic_inst_n_44 ;
  wire \gen_macc[11].logic_inst_n_45 ;
  wire \gen_macc[11].logic_inst_n_46 ;
  wire \gen_macc[11].logic_inst_n_47 ;
  wire \gen_macc[11].logic_inst_n_48 ;
  wire \gen_macc[11].logic_inst_n_49 ;
  wire \gen_macc[11].logic_inst_n_5 ;
  wire \gen_macc[11].logic_inst_n_50 ;
  wire \gen_macc[11].logic_inst_n_51 ;
  wire \gen_macc[11].logic_inst_n_52 ;
  wire \gen_macc[11].logic_inst_n_53 ;
  wire \gen_macc[11].logic_inst_n_54 ;
  wire \gen_macc[11].logic_inst_n_55 ;
  wire \gen_macc[11].logic_inst_n_56 ;
  wire \gen_macc[11].logic_inst_n_57 ;
  wire \gen_macc[11].logic_inst_n_58 ;
  wire \gen_macc[11].logic_inst_n_59 ;
  wire \gen_macc[11].logic_inst_n_6 ;
  wire \gen_macc[11].logic_inst_n_60 ;
  wire \gen_macc[11].logic_inst_n_61 ;
  wire \gen_macc[11].logic_inst_n_62 ;
  wire \gen_macc[11].logic_inst_n_63 ;
  wire \gen_macc[11].logic_inst_n_64 ;
  wire \gen_macc[11].logic_inst_n_7 ;
  wire \gen_macc[11].logic_inst_n_8 ;
  wire \gen_macc[11].logic_inst_n_9 ;
  wire \gen_macc[12].logic_inst_n_1 ;
  wire \gen_macc[12].logic_inst_n_10 ;
  wire \gen_macc[12].logic_inst_n_11 ;
  wire \gen_macc[12].logic_inst_n_12 ;
  wire \gen_macc[12].logic_inst_n_13 ;
  wire \gen_macc[12].logic_inst_n_14 ;
  wire \gen_macc[12].logic_inst_n_15 ;
  wire \gen_macc[12].logic_inst_n_16 ;
  wire \gen_macc[12].logic_inst_n_17 ;
  wire \gen_macc[12].logic_inst_n_18 ;
  wire \gen_macc[12].logic_inst_n_19 ;
  wire \gen_macc[12].logic_inst_n_2 ;
  wire \gen_macc[12].logic_inst_n_20 ;
  wire \gen_macc[12].logic_inst_n_21 ;
  wire \gen_macc[12].logic_inst_n_22 ;
  wire \gen_macc[12].logic_inst_n_23 ;
  wire \gen_macc[12].logic_inst_n_24 ;
  wire \gen_macc[12].logic_inst_n_25 ;
  wire \gen_macc[12].logic_inst_n_26 ;
  wire \gen_macc[12].logic_inst_n_27 ;
  wire \gen_macc[12].logic_inst_n_28 ;
  wire \gen_macc[12].logic_inst_n_29 ;
  wire \gen_macc[12].logic_inst_n_3 ;
  wire \gen_macc[12].logic_inst_n_30 ;
  wire \gen_macc[12].logic_inst_n_32 ;
  wire \gen_macc[12].logic_inst_n_33 ;
  wire \gen_macc[12].logic_inst_n_34 ;
  wire \gen_macc[12].logic_inst_n_35 ;
  wire \gen_macc[12].logic_inst_n_36 ;
  wire \gen_macc[12].logic_inst_n_37 ;
  wire \gen_macc[12].logic_inst_n_38 ;
  wire \gen_macc[12].logic_inst_n_39 ;
  wire \gen_macc[12].logic_inst_n_4 ;
  wire \gen_macc[12].logic_inst_n_40 ;
  wire \gen_macc[12].logic_inst_n_41 ;
  wire \gen_macc[12].logic_inst_n_42 ;
  wire \gen_macc[12].logic_inst_n_43 ;
  wire \gen_macc[12].logic_inst_n_44 ;
  wire \gen_macc[12].logic_inst_n_45 ;
  wire \gen_macc[12].logic_inst_n_46 ;
  wire \gen_macc[12].logic_inst_n_47 ;
  wire \gen_macc[12].logic_inst_n_48 ;
  wire \gen_macc[12].logic_inst_n_49 ;
  wire \gen_macc[12].logic_inst_n_5 ;
  wire \gen_macc[12].logic_inst_n_50 ;
  wire \gen_macc[12].logic_inst_n_51 ;
  wire \gen_macc[12].logic_inst_n_52 ;
  wire \gen_macc[12].logic_inst_n_53 ;
  wire \gen_macc[12].logic_inst_n_54 ;
  wire \gen_macc[12].logic_inst_n_55 ;
  wire \gen_macc[12].logic_inst_n_56 ;
  wire \gen_macc[12].logic_inst_n_57 ;
  wire \gen_macc[12].logic_inst_n_58 ;
  wire \gen_macc[12].logic_inst_n_59 ;
  wire \gen_macc[12].logic_inst_n_6 ;
  wire \gen_macc[12].logic_inst_n_60 ;
  wire \gen_macc[12].logic_inst_n_61 ;
  wire \gen_macc[12].logic_inst_n_62 ;
  wire \gen_macc[12].logic_inst_n_63 ;
  wire \gen_macc[12].logic_inst_n_64 ;
  wire \gen_macc[12].logic_inst_n_7 ;
  wire \gen_macc[12].logic_inst_n_8 ;
  wire \gen_macc[12].logic_inst_n_9 ;
  wire \gen_macc[13].logic_inst_n_10 ;
  wire \gen_macc[13].logic_inst_n_11 ;
  wire \gen_macc[13].logic_inst_n_12 ;
  wire \gen_macc[13].logic_inst_n_13 ;
  wire \gen_macc[13].logic_inst_n_14 ;
  wire \gen_macc[13].logic_inst_n_15 ;
  wire \gen_macc[13].logic_inst_n_16 ;
  wire \gen_macc[13].logic_inst_n_17 ;
  wire \gen_macc[13].logic_inst_n_18 ;
  wire \gen_macc[13].logic_inst_n_19 ;
  wire \gen_macc[13].logic_inst_n_2 ;
  wire \gen_macc[13].logic_inst_n_20 ;
  wire \gen_macc[13].logic_inst_n_21 ;
  wire \gen_macc[13].logic_inst_n_22 ;
  wire \gen_macc[13].logic_inst_n_23 ;
  wire \gen_macc[13].logic_inst_n_24 ;
  wire \gen_macc[13].logic_inst_n_25 ;
  wire \gen_macc[13].logic_inst_n_26 ;
  wire \gen_macc[13].logic_inst_n_27 ;
  wire \gen_macc[13].logic_inst_n_28 ;
  wire \gen_macc[13].logic_inst_n_29 ;
  wire \gen_macc[13].logic_inst_n_3 ;
  wire \gen_macc[13].logic_inst_n_30 ;
  wire \gen_macc[13].logic_inst_n_31 ;
  wire \gen_macc[13].logic_inst_n_33 ;
  wire \gen_macc[13].logic_inst_n_34 ;
  wire \gen_macc[13].logic_inst_n_35 ;
  wire \gen_macc[13].logic_inst_n_36 ;
  wire \gen_macc[13].logic_inst_n_37 ;
  wire \gen_macc[13].logic_inst_n_38 ;
  wire \gen_macc[13].logic_inst_n_39 ;
  wire \gen_macc[13].logic_inst_n_4 ;
  wire \gen_macc[13].logic_inst_n_40 ;
  wire \gen_macc[13].logic_inst_n_41 ;
  wire \gen_macc[13].logic_inst_n_42 ;
  wire \gen_macc[13].logic_inst_n_43 ;
  wire \gen_macc[13].logic_inst_n_44 ;
  wire \gen_macc[13].logic_inst_n_45 ;
  wire \gen_macc[13].logic_inst_n_46 ;
  wire \gen_macc[13].logic_inst_n_47 ;
  wire \gen_macc[13].logic_inst_n_48 ;
  wire \gen_macc[13].logic_inst_n_49 ;
  wire \gen_macc[13].logic_inst_n_5 ;
  wire \gen_macc[13].logic_inst_n_50 ;
  wire \gen_macc[13].logic_inst_n_51 ;
  wire \gen_macc[13].logic_inst_n_52 ;
  wire \gen_macc[13].logic_inst_n_53 ;
  wire \gen_macc[13].logic_inst_n_54 ;
  wire \gen_macc[13].logic_inst_n_55 ;
  wire \gen_macc[13].logic_inst_n_56 ;
  wire \gen_macc[13].logic_inst_n_57 ;
  wire \gen_macc[13].logic_inst_n_58 ;
  wire \gen_macc[13].logic_inst_n_59 ;
  wire \gen_macc[13].logic_inst_n_6 ;
  wire \gen_macc[13].logic_inst_n_60 ;
  wire \gen_macc[13].logic_inst_n_61 ;
  wire \gen_macc[13].logic_inst_n_62 ;
  wire \gen_macc[13].logic_inst_n_63 ;
  wire \gen_macc[13].logic_inst_n_64 ;
  wire \gen_macc[13].logic_inst_n_7 ;
  wire \gen_macc[13].logic_inst_n_8 ;
  wire \gen_macc[13].logic_inst_n_9 ;
  wire \gen_macc[14].logic_inst_n_10 ;
  wire \gen_macc[14].logic_inst_n_11 ;
  wire \gen_macc[14].logic_inst_n_12 ;
  wire \gen_macc[14].logic_inst_n_13 ;
  wire \gen_macc[14].logic_inst_n_14 ;
  wire \gen_macc[14].logic_inst_n_15 ;
  wire \gen_macc[14].logic_inst_n_16 ;
  wire \gen_macc[14].logic_inst_n_17 ;
  wire \gen_macc[14].logic_inst_n_18 ;
  wire \gen_macc[14].logic_inst_n_19 ;
  wire \gen_macc[14].logic_inst_n_2 ;
  wire \gen_macc[14].logic_inst_n_20 ;
  wire \gen_macc[14].logic_inst_n_21 ;
  wire \gen_macc[14].logic_inst_n_22 ;
  wire \gen_macc[14].logic_inst_n_23 ;
  wire \gen_macc[14].logic_inst_n_24 ;
  wire \gen_macc[14].logic_inst_n_25 ;
  wire \gen_macc[14].logic_inst_n_26 ;
  wire \gen_macc[14].logic_inst_n_27 ;
  wire \gen_macc[14].logic_inst_n_28 ;
  wire \gen_macc[14].logic_inst_n_29 ;
  wire \gen_macc[14].logic_inst_n_3 ;
  wire \gen_macc[14].logic_inst_n_30 ;
  wire \gen_macc[14].logic_inst_n_31 ;
  wire \gen_macc[14].logic_inst_n_33 ;
  wire \gen_macc[14].logic_inst_n_34 ;
  wire \gen_macc[14].logic_inst_n_35 ;
  wire \gen_macc[14].logic_inst_n_36 ;
  wire \gen_macc[14].logic_inst_n_37 ;
  wire \gen_macc[14].logic_inst_n_38 ;
  wire \gen_macc[14].logic_inst_n_39 ;
  wire \gen_macc[14].logic_inst_n_4 ;
  wire \gen_macc[14].logic_inst_n_40 ;
  wire \gen_macc[14].logic_inst_n_41 ;
  wire \gen_macc[14].logic_inst_n_42 ;
  wire \gen_macc[14].logic_inst_n_43 ;
  wire \gen_macc[14].logic_inst_n_44 ;
  wire \gen_macc[14].logic_inst_n_45 ;
  wire \gen_macc[14].logic_inst_n_46 ;
  wire \gen_macc[14].logic_inst_n_47 ;
  wire \gen_macc[14].logic_inst_n_48 ;
  wire \gen_macc[14].logic_inst_n_49 ;
  wire \gen_macc[14].logic_inst_n_5 ;
  wire \gen_macc[14].logic_inst_n_50 ;
  wire \gen_macc[14].logic_inst_n_51 ;
  wire \gen_macc[14].logic_inst_n_52 ;
  wire \gen_macc[14].logic_inst_n_53 ;
  wire \gen_macc[14].logic_inst_n_54 ;
  wire \gen_macc[14].logic_inst_n_55 ;
  wire \gen_macc[14].logic_inst_n_56 ;
  wire \gen_macc[14].logic_inst_n_57 ;
  wire \gen_macc[14].logic_inst_n_58 ;
  wire \gen_macc[14].logic_inst_n_59 ;
  wire \gen_macc[14].logic_inst_n_6 ;
  wire \gen_macc[14].logic_inst_n_60 ;
  wire \gen_macc[14].logic_inst_n_61 ;
  wire \gen_macc[14].logic_inst_n_62 ;
  wire \gen_macc[14].logic_inst_n_63 ;
  wire \gen_macc[14].logic_inst_n_64 ;
  wire \gen_macc[14].logic_inst_n_7 ;
  wire \gen_macc[14].logic_inst_n_8 ;
  wire \gen_macc[14].logic_inst_n_9 ;
  wire \gen_macc[15].logic_inst_n_1 ;
  wire \gen_macc[15].logic_inst_n_10 ;
  wire \gen_macc[15].logic_inst_n_11 ;
  wire \gen_macc[15].logic_inst_n_12 ;
  wire \gen_macc[15].logic_inst_n_13 ;
  wire \gen_macc[15].logic_inst_n_14 ;
  wire \gen_macc[15].logic_inst_n_15 ;
  wire \gen_macc[15].logic_inst_n_16 ;
  wire \gen_macc[15].logic_inst_n_17 ;
  wire \gen_macc[15].logic_inst_n_18 ;
  wire \gen_macc[15].logic_inst_n_19 ;
  wire \gen_macc[15].logic_inst_n_2 ;
  wire \gen_macc[15].logic_inst_n_20 ;
  wire \gen_macc[15].logic_inst_n_21 ;
  wire \gen_macc[15].logic_inst_n_22 ;
  wire \gen_macc[15].logic_inst_n_23 ;
  wire \gen_macc[15].logic_inst_n_24 ;
  wire \gen_macc[15].logic_inst_n_25 ;
  wire \gen_macc[15].logic_inst_n_26 ;
  wire \gen_macc[15].logic_inst_n_27 ;
  wire \gen_macc[15].logic_inst_n_28 ;
  wire \gen_macc[15].logic_inst_n_29 ;
  wire \gen_macc[15].logic_inst_n_3 ;
  wire \gen_macc[15].logic_inst_n_30 ;
  wire \gen_macc[15].logic_inst_n_32 ;
  wire \gen_macc[15].logic_inst_n_33 ;
  wire \gen_macc[15].logic_inst_n_34 ;
  wire \gen_macc[15].logic_inst_n_35 ;
  wire \gen_macc[15].logic_inst_n_36 ;
  wire \gen_macc[15].logic_inst_n_37 ;
  wire \gen_macc[15].logic_inst_n_38 ;
  wire \gen_macc[15].logic_inst_n_39 ;
  wire \gen_macc[15].logic_inst_n_4 ;
  wire \gen_macc[15].logic_inst_n_40 ;
  wire \gen_macc[15].logic_inst_n_41 ;
  wire \gen_macc[15].logic_inst_n_42 ;
  wire \gen_macc[15].logic_inst_n_43 ;
  wire \gen_macc[15].logic_inst_n_44 ;
  wire \gen_macc[15].logic_inst_n_45 ;
  wire \gen_macc[15].logic_inst_n_46 ;
  wire \gen_macc[15].logic_inst_n_47 ;
  wire \gen_macc[15].logic_inst_n_48 ;
  wire \gen_macc[15].logic_inst_n_49 ;
  wire \gen_macc[15].logic_inst_n_5 ;
  wire \gen_macc[15].logic_inst_n_50 ;
  wire \gen_macc[15].logic_inst_n_51 ;
  wire \gen_macc[15].logic_inst_n_52 ;
  wire \gen_macc[15].logic_inst_n_53 ;
  wire \gen_macc[15].logic_inst_n_54 ;
  wire \gen_macc[15].logic_inst_n_55 ;
  wire \gen_macc[15].logic_inst_n_56 ;
  wire \gen_macc[15].logic_inst_n_57 ;
  wire \gen_macc[15].logic_inst_n_58 ;
  wire \gen_macc[15].logic_inst_n_59 ;
  wire \gen_macc[15].logic_inst_n_6 ;
  wire \gen_macc[15].logic_inst_n_60 ;
  wire \gen_macc[15].logic_inst_n_61 ;
  wire \gen_macc[15].logic_inst_n_62 ;
  wire \gen_macc[15].logic_inst_n_63 ;
  wire \gen_macc[15].logic_inst_n_64 ;
  wire \gen_macc[15].logic_inst_n_7 ;
  wire \gen_macc[15].logic_inst_n_8 ;
  wire \gen_macc[15].logic_inst_n_9 ;
  wire \gen_macc[16].logic_inst_n_10 ;
  wire \gen_macc[16].logic_inst_n_11 ;
  wire \gen_macc[16].logic_inst_n_12 ;
  wire \gen_macc[16].logic_inst_n_13 ;
  wire \gen_macc[16].logic_inst_n_14 ;
  wire \gen_macc[16].logic_inst_n_15 ;
  wire \gen_macc[16].logic_inst_n_16 ;
  wire \gen_macc[16].logic_inst_n_17 ;
  wire \gen_macc[16].logic_inst_n_18 ;
  wire \gen_macc[16].logic_inst_n_19 ;
  wire \gen_macc[16].logic_inst_n_2 ;
  wire \gen_macc[16].logic_inst_n_20 ;
  wire \gen_macc[16].logic_inst_n_21 ;
  wire \gen_macc[16].logic_inst_n_22 ;
  wire \gen_macc[16].logic_inst_n_23 ;
  wire \gen_macc[16].logic_inst_n_24 ;
  wire \gen_macc[16].logic_inst_n_25 ;
  wire \gen_macc[16].logic_inst_n_26 ;
  wire \gen_macc[16].logic_inst_n_27 ;
  wire \gen_macc[16].logic_inst_n_28 ;
  wire \gen_macc[16].logic_inst_n_29 ;
  wire \gen_macc[16].logic_inst_n_3 ;
  wire \gen_macc[16].logic_inst_n_30 ;
  wire \gen_macc[16].logic_inst_n_31 ;
  wire \gen_macc[16].logic_inst_n_33 ;
  wire \gen_macc[16].logic_inst_n_34 ;
  wire \gen_macc[16].logic_inst_n_35 ;
  wire \gen_macc[16].logic_inst_n_36 ;
  wire \gen_macc[16].logic_inst_n_37 ;
  wire \gen_macc[16].logic_inst_n_38 ;
  wire \gen_macc[16].logic_inst_n_39 ;
  wire \gen_macc[16].logic_inst_n_4 ;
  wire \gen_macc[16].logic_inst_n_40 ;
  wire \gen_macc[16].logic_inst_n_41 ;
  wire \gen_macc[16].logic_inst_n_42 ;
  wire \gen_macc[16].logic_inst_n_43 ;
  wire \gen_macc[16].logic_inst_n_44 ;
  wire \gen_macc[16].logic_inst_n_45 ;
  wire \gen_macc[16].logic_inst_n_46 ;
  wire \gen_macc[16].logic_inst_n_47 ;
  wire \gen_macc[16].logic_inst_n_48 ;
  wire \gen_macc[16].logic_inst_n_49 ;
  wire \gen_macc[16].logic_inst_n_5 ;
  wire \gen_macc[16].logic_inst_n_50 ;
  wire \gen_macc[16].logic_inst_n_51 ;
  wire \gen_macc[16].logic_inst_n_52 ;
  wire \gen_macc[16].logic_inst_n_53 ;
  wire \gen_macc[16].logic_inst_n_54 ;
  wire \gen_macc[16].logic_inst_n_55 ;
  wire \gen_macc[16].logic_inst_n_56 ;
  wire \gen_macc[16].logic_inst_n_57 ;
  wire \gen_macc[16].logic_inst_n_58 ;
  wire \gen_macc[16].logic_inst_n_59 ;
  wire \gen_macc[16].logic_inst_n_6 ;
  wire \gen_macc[16].logic_inst_n_60 ;
  wire \gen_macc[16].logic_inst_n_61 ;
  wire \gen_macc[16].logic_inst_n_62 ;
  wire \gen_macc[16].logic_inst_n_63 ;
  wire \gen_macc[16].logic_inst_n_64 ;
  wire \gen_macc[16].logic_inst_n_7 ;
  wire \gen_macc[16].logic_inst_n_8 ;
  wire \gen_macc[16].logic_inst_n_9 ;
  wire \gen_macc[17].logic_inst_n_10 ;
  wire \gen_macc[17].logic_inst_n_11 ;
  wire \gen_macc[17].logic_inst_n_12 ;
  wire \gen_macc[17].logic_inst_n_13 ;
  wire \gen_macc[17].logic_inst_n_14 ;
  wire \gen_macc[17].logic_inst_n_15 ;
  wire \gen_macc[17].logic_inst_n_16 ;
  wire \gen_macc[17].logic_inst_n_17 ;
  wire \gen_macc[17].logic_inst_n_18 ;
  wire \gen_macc[17].logic_inst_n_19 ;
  wire \gen_macc[17].logic_inst_n_2 ;
  wire \gen_macc[17].logic_inst_n_20 ;
  wire \gen_macc[17].logic_inst_n_21 ;
  wire \gen_macc[17].logic_inst_n_22 ;
  wire \gen_macc[17].logic_inst_n_23 ;
  wire \gen_macc[17].logic_inst_n_24 ;
  wire \gen_macc[17].logic_inst_n_25 ;
  wire \gen_macc[17].logic_inst_n_26 ;
  wire \gen_macc[17].logic_inst_n_27 ;
  wire \gen_macc[17].logic_inst_n_28 ;
  wire \gen_macc[17].logic_inst_n_29 ;
  wire \gen_macc[17].logic_inst_n_3 ;
  wire \gen_macc[17].logic_inst_n_30 ;
  wire \gen_macc[17].logic_inst_n_31 ;
  wire \gen_macc[17].logic_inst_n_33 ;
  wire \gen_macc[17].logic_inst_n_34 ;
  wire \gen_macc[17].logic_inst_n_35 ;
  wire \gen_macc[17].logic_inst_n_36 ;
  wire \gen_macc[17].logic_inst_n_37 ;
  wire \gen_macc[17].logic_inst_n_38 ;
  wire \gen_macc[17].logic_inst_n_39 ;
  wire \gen_macc[17].logic_inst_n_4 ;
  wire \gen_macc[17].logic_inst_n_40 ;
  wire \gen_macc[17].logic_inst_n_41 ;
  wire \gen_macc[17].logic_inst_n_42 ;
  wire \gen_macc[17].logic_inst_n_43 ;
  wire \gen_macc[17].logic_inst_n_44 ;
  wire \gen_macc[17].logic_inst_n_45 ;
  wire \gen_macc[17].logic_inst_n_46 ;
  wire \gen_macc[17].logic_inst_n_47 ;
  wire \gen_macc[17].logic_inst_n_48 ;
  wire \gen_macc[17].logic_inst_n_49 ;
  wire \gen_macc[17].logic_inst_n_5 ;
  wire \gen_macc[17].logic_inst_n_50 ;
  wire \gen_macc[17].logic_inst_n_51 ;
  wire \gen_macc[17].logic_inst_n_52 ;
  wire \gen_macc[17].logic_inst_n_53 ;
  wire \gen_macc[17].logic_inst_n_54 ;
  wire \gen_macc[17].logic_inst_n_55 ;
  wire \gen_macc[17].logic_inst_n_56 ;
  wire \gen_macc[17].logic_inst_n_57 ;
  wire \gen_macc[17].logic_inst_n_58 ;
  wire \gen_macc[17].logic_inst_n_59 ;
  wire \gen_macc[17].logic_inst_n_6 ;
  wire \gen_macc[17].logic_inst_n_60 ;
  wire \gen_macc[17].logic_inst_n_61 ;
  wire \gen_macc[17].logic_inst_n_62 ;
  wire \gen_macc[17].logic_inst_n_63 ;
  wire \gen_macc[17].logic_inst_n_64 ;
  wire \gen_macc[17].logic_inst_n_7 ;
  wire \gen_macc[17].logic_inst_n_8 ;
  wire \gen_macc[17].logic_inst_n_9 ;
  wire \gen_macc[18].logic_inst_n_10 ;
  wire \gen_macc[18].logic_inst_n_11 ;
  wire \gen_macc[18].logic_inst_n_12 ;
  wire \gen_macc[18].logic_inst_n_13 ;
  wire \gen_macc[18].logic_inst_n_14 ;
  wire \gen_macc[18].logic_inst_n_15 ;
  wire \gen_macc[18].logic_inst_n_16 ;
  wire \gen_macc[18].logic_inst_n_17 ;
  wire \gen_macc[18].logic_inst_n_18 ;
  wire \gen_macc[18].logic_inst_n_19 ;
  wire \gen_macc[18].logic_inst_n_2 ;
  wire \gen_macc[18].logic_inst_n_20 ;
  wire \gen_macc[18].logic_inst_n_21 ;
  wire \gen_macc[18].logic_inst_n_22 ;
  wire \gen_macc[18].logic_inst_n_23 ;
  wire \gen_macc[18].logic_inst_n_24 ;
  wire \gen_macc[18].logic_inst_n_25 ;
  wire \gen_macc[18].logic_inst_n_26 ;
  wire \gen_macc[18].logic_inst_n_27 ;
  wire \gen_macc[18].logic_inst_n_28 ;
  wire \gen_macc[18].logic_inst_n_29 ;
  wire \gen_macc[18].logic_inst_n_3 ;
  wire \gen_macc[18].logic_inst_n_30 ;
  wire \gen_macc[18].logic_inst_n_31 ;
  wire \gen_macc[18].logic_inst_n_33 ;
  wire \gen_macc[18].logic_inst_n_34 ;
  wire \gen_macc[18].logic_inst_n_35 ;
  wire \gen_macc[18].logic_inst_n_36 ;
  wire \gen_macc[18].logic_inst_n_37 ;
  wire \gen_macc[18].logic_inst_n_38 ;
  wire \gen_macc[18].logic_inst_n_39 ;
  wire \gen_macc[18].logic_inst_n_4 ;
  wire \gen_macc[18].logic_inst_n_40 ;
  wire \gen_macc[18].logic_inst_n_41 ;
  wire \gen_macc[18].logic_inst_n_42 ;
  wire \gen_macc[18].logic_inst_n_43 ;
  wire \gen_macc[18].logic_inst_n_44 ;
  wire \gen_macc[18].logic_inst_n_45 ;
  wire \gen_macc[18].logic_inst_n_46 ;
  wire \gen_macc[18].logic_inst_n_47 ;
  wire \gen_macc[18].logic_inst_n_48 ;
  wire \gen_macc[18].logic_inst_n_49 ;
  wire \gen_macc[18].logic_inst_n_5 ;
  wire \gen_macc[18].logic_inst_n_50 ;
  wire \gen_macc[18].logic_inst_n_51 ;
  wire \gen_macc[18].logic_inst_n_52 ;
  wire \gen_macc[18].logic_inst_n_53 ;
  wire \gen_macc[18].logic_inst_n_54 ;
  wire \gen_macc[18].logic_inst_n_55 ;
  wire \gen_macc[18].logic_inst_n_56 ;
  wire \gen_macc[18].logic_inst_n_57 ;
  wire \gen_macc[18].logic_inst_n_58 ;
  wire \gen_macc[18].logic_inst_n_59 ;
  wire \gen_macc[18].logic_inst_n_6 ;
  wire \gen_macc[18].logic_inst_n_60 ;
  wire \gen_macc[18].logic_inst_n_61 ;
  wire \gen_macc[18].logic_inst_n_62 ;
  wire \gen_macc[18].logic_inst_n_63 ;
  wire \gen_macc[18].logic_inst_n_64 ;
  wire \gen_macc[18].logic_inst_n_7 ;
  wire \gen_macc[18].logic_inst_n_8 ;
  wire \gen_macc[18].logic_inst_n_9 ;
  wire \gen_macc[19].logic_inst_n_10 ;
  wire \gen_macc[19].logic_inst_n_11 ;
  wire \gen_macc[19].logic_inst_n_12 ;
  wire \gen_macc[19].logic_inst_n_13 ;
  wire \gen_macc[19].logic_inst_n_14 ;
  wire \gen_macc[19].logic_inst_n_15 ;
  wire \gen_macc[19].logic_inst_n_16 ;
  wire \gen_macc[19].logic_inst_n_17 ;
  wire \gen_macc[19].logic_inst_n_18 ;
  wire \gen_macc[19].logic_inst_n_19 ;
  wire \gen_macc[19].logic_inst_n_2 ;
  wire \gen_macc[19].logic_inst_n_20 ;
  wire \gen_macc[19].logic_inst_n_21 ;
  wire \gen_macc[19].logic_inst_n_22 ;
  wire \gen_macc[19].logic_inst_n_23 ;
  wire \gen_macc[19].logic_inst_n_24 ;
  wire \gen_macc[19].logic_inst_n_25 ;
  wire \gen_macc[19].logic_inst_n_26 ;
  wire \gen_macc[19].logic_inst_n_27 ;
  wire \gen_macc[19].logic_inst_n_28 ;
  wire \gen_macc[19].logic_inst_n_29 ;
  wire \gen_macc[19].logic_inst_n_3 ;
  wire \gen_macc[19].logic_inst_n_30 ;
  wire \gen_macc[19].logic_inst_n_31 ;
  wire \gen_macc[19].logic_inst_n_33 ;
  wire \gen_macc[19].logic_inst_n_34 ;
  wire \gen_macc[19].logic_inst_n_35 ;
  wire \gen_macc[19].logic_inst_n_36 ;
  wire \gen_macc[19].logic_inst_n_37 ;
  wire \gen_macc[19].logic_inst_n_38 ;
  wire \gen_macc[19].logic_inst_n_39 ;
  wire \gen_macc[19].logic_inst_n_4 ;
  wire \gen_macc[19].logic_inst_n_40 ;
  wire \gen_macc[19].logic_inst_n_41 ;
  wire \gen_macc[19].logic_inst_n_42 ;
  wire \gen_macc[19].logic_inst_n_43 ;
  wire \gen_macc[19].logic_inst_n_44 ;
  wire \gen_macc[19].logic_inst_n_45 ;
  wire \gen_macc[19].logic_inst_n_46 ;
  wire \gen_macc[19].logic_inst_n_47 ;
  wire \gen_macc[19].logic_inst_n_48 ;
  wire \gen_macc[19].logic_inst_n_49 ;
  wire \gen_macc[19].logic_inst_n_5 ;
  wire \gen_macc[19].logic_inst_n_50 ;
  wire \gen_macc[19].logic_inst_n_51 ;
  wire \gen_macc[19].logic_inst_n_52 ;
  wire \gen_macc[19].logic_inst_n_53 ;
  wire \gen_macc[19].logic_inst_n_54 ;
  wire \gen_macc[19].logic_inst_n_55 ;
  wire \gen_macc[19].logic_inst_n_56 ;
  wire \gen_macc[19].logic_inst_n_57 ;
  wire \gen_macc[19].logic_inst_n_58 ;
  wire \gen_macc[19].logic_inst_n_59 ;
  wire \gen_macc[19].logic_inst_n_6 ;
  wire \gen_macc[19].logic_inst_n_60 ;
  wire \gen_macc[19].logic_inst_n_61 ;
  wire \gen_macc[19].logic_inst_n_62 ;
  wire \gen_macc[19].logic_inst_n_63 ;
  wire \gen_macc[19].logic_inst_n_64 ;
  wire \gen_macc[19].logic_inst_n_7 ;
  wire \gen_macc[19].logic_inst_n_8 ;
  wire \gen_macc[19].logic_inst_n_9 ;
  wire \gen_macc[1].logic_inst_n_10 ;
  wire \gen_macc[1].logic_inst_n_11 ;
  wire \gen_macc[1].logic_inst_n_12 ;
  wire \gen_macc[1].logic_inst_n_13 ;
  wire \gen_macc[1].logic_inst_n_14 ;
  wire \gen_macc[1].logic_inst_n_15 ;
  wire \gen_macc[1].logic_inst_n_16 ;
  wire \gen_macc[1].logic_inst_n_17 ;
  wire \gen_macc[1].logic_inst_n_18 ;
  wire \gen_macc[1].logic_inst_n_19 ;
  wire \gen_macc[1].logic_inst_n_2 ;
  wire \gen_macc[1].logic_inst_n_20 ;
  wire \gen_macc[1].logic_inst_n_21 ;
  wire \gen_macc[1].logic_inst_n_22 ;
  wire \gen_macc[1].logic_inst_n_23 ;
  wire \gen_macc[1].logic_inst_n_24 ;
  wire \gen_macc[1].logic_inst_n_25 ;
  wire \gen_macc[1].logic_inst_n_26 ;
  wire \gen_macc[1].logic_inst_n_27 ;
  wire \gen_macc[1].logic_inst_n_28 ;
  wire \gen_macc[1].logic_inst_n_29 ;
  wire \gen_macc[1].logic_inst_n_3 ;
  wire \gen_macc[1].logic_inst_n_30 ;
  wire \gen_macc[1].logic_inst_n_31 ;
  wire \gen_macc[1].logic_inst_n_33 ;
  wire \gen_macc[1].logic_inst_n_34 ;
  wire \gen_macc[1].logic_inst_n_35 ;
  wire \gen_macc[1].logic_inst_n_36 ;
  wire \gen_macc[1].logic_inst_n_37 ;
  wire \gen_macc[1].logic_inst_n_38 ;
  wire \gen_macc[1].logic_inst_n_39 ;
  wire \gen_macc[1].logic_inst_n_4 ;
  wire \gen_macc[1].logic_inst_n_40 ;
  wire \gen_macc[1].logic_inst_n_41 ;
  wire \gen_macc[1].logic_inst_n_42 ;
  wire \gen_macc[1].logic_inst_n_43 ;
  wire \gen_macc[1].logic_inst_n_44 ;
  wire \gen_macc[1].logic_inst_n_45 ;
  wire \gen_macc[1].logic_inst_n_46 ;
  wire \gen_macc[1].logic_inst_n_47 ;
  wire \gen_macc[1].logic_inst_n_48 ;
  wire \gen_macc[1].logic_inst_n_49 ;
  wire \gen_macc[1].logic_inst_n_5 ;
  wire \gen_macc[1].logic_inst_n_50 ;
  wire \gen_macc[1].logic_inst_n_51 ;
  wire \gen_macc[1].logic_inst_n_52 ;
  wire \gen_macc[1].logic_inst_n_53 ;
  wire \gen_macc[1].logic_inst_n_54 ;
  wire \gen_macc[1].logic_inst_n_55 ;
  wire \gen_macc[1].logic_inst_n_56 ;
  wire \gen_macc[1].logic_inst_n_57 ;
  wire \gen_macc[1].logic_inst_n_58 ;
  wire \gen_macc[1].logic_inst_n_59 ;
  wire \gen_macc[1].logic_inst_n_6 ;
  wire \gen_macc[1].logic_inst_n_60 ;
  wire \gen_macc[1].logic_inst_n_61 ;
  wire \gen_macc[1].logic_inst_n_62 ;
  wire \gen_macc[1].logic_inst_n_63 ;
  wire \gen_macc[1].logic_inst_n_64 ;
  wire \gen_macc[1].logic_inst_n_7 ;
  wire \gen_macc[1].logic_inst_n_8 ;
  wire \gen_macc[1].logic_inst_n_9 ;
  wire \gen_macc[20].logic_inst_n_10 ;
  wire \gen_macc[20].logic_inst_n_11 ;
  wire \gen_macc[20].logic_inst_n_12 ;
  wire \gen_macc[20].logic_inst_n_13 ;
  wire \gen_macc[20].logic_inst_n_14 ;
  wire \gen_macc[20].logic_inst_n_15 ;
  wire \gen_macc[20].logic_inst_n_16 ;
  wire \gen_macc[20].logic_inst_n_17 ;
  wire \gen_macc[20].logic_inst_n_18 ;
  wire \gen_macc[20].logic_inst_n_19 ;
  wire \gen_macc[20].logic_inst_n_2 ;
  wire \gen_macc[20].logic_inst_n_20 ;
  wire \gen_macc[20].logic_inst_n_21 ;
  wire \gen_macc[20].logic_inst_n_22 ;
  wire \gen_macc[20].logic_inst_n_23 ;
  wire \gen_macc[20].logic_inst_n_24 ;
  wire \gen_macc[20].logic_inst_n_25 ;
  wire \gen_macc[20].logic_inst_n_26 ;
  wire \gen_macc[20].logic_inst_n_27 ;
  wire \gen_macc[20].logic_inst_n_28 ;
  wire \gen_macc[20].logic_inst_n_29 ;
  wire \gen_macc[20].logic_inst_n_3 ;
  wire \gen_macc[20].logic_inst_n_30 ;
  wire \gen_macc[20].logic_inst_n_31 ;
  wire \gen_macc[20].logic_inst_n_33 ;
  wire \gen_macc[20].logic_inst_n_34 ;
  wire \gen_macc[20].logic_inst_n_35 ;
  wire \gen_macc[20].logic_inst_n_36 ;
  wire \gen_macc[20].logic_inst_n_37 ;
  wire \gen_macc[20].logic_inst_n_38 ;
  wire \gen_macc[20].logic_inst_n_39 ;
  wire \gen_macc[20].logic_inst_n_4 ;
  wire \gen_macc[20].logic_inst_n_40 ;
  wire \gen_macc[20].logic_inst_n_41 ;
  wire \gen_macc[20].logic_inst_n_42 ;
  wire \gen_macc[20].logic_inst_n_43 ;
  wire \gen_macc[20].logic_inst_n_44 ;
  wire \gen_macc[20].logic_inst_n_45 ;
  wire \gen_macc[20].logic_inst_n_46 ;
  wire \gen_macc[20].logic_inst_n_47 ;
  wire \gen_macc[20].logic_inst_n_48 ;
  wire \gen_macc[20].logic_inst_n_49 ;
  wire \gen_macc[20].logic_inst_n_5 ;
  wire \gen_macc[20].logic_inst_n_50 ;
  wire \gen_macc[20].logic_inst_n_51 ;
  wire \gen_macc[20].logic_inst_n_52 ;
  wire \gen_macc[20].logic_inst_n_53 ;
  wire \gen_macc[20].logic_inst_n_54 ;
  wire \gen_macc[20].logic_inst_n_55 ;
  wire \gen_macc[20].logic_inst_n_56 ;
  wire \gen_macc[20].logic_inst_n_57 ;
  wire \gen_macc[20].logic_inst_n_58 ;
  wire \gen_macc[20].logic_inst_n_59 ;
  wire \gen_macc[20].logic_inst_n_6 ;
  wire \gen_macc[20].logic_inst_n_60 ;
  wire \gen_macc[20].logic_inst_n_61 ;
  wire \gen_macc[20].logic_inst_n_62 ;
  wire \gen_macc[20].logic_inst_n_63 ;
  wire \gen_macc[20].logic_inst_n_64 ;
  wire \gen_macc[20].logic_inst_n_7 ;
  wire \gen_macc[20].logic_inst_n_8 ;
  wire \gen_macc[20].logic_inst_n_9 ;
  wire \gen_macc[21].logic_inst_n_10 ;
  wire \gen_macc[21].logic_inst_n_11 ;
  wire \gen_macc[21].logic_inst_n_12 ;
  wire \gen_macc[21].logic_inst_n_13 ;
  wire \gen_macc[21].logic_inst_n_14 ;
  wire \gen_macc[21].logic_inst_n_15 ;
  wire \gen_macc[21].logic_inst_n_16 ;
  wire \gen_macc[21].logic_inst_n_17 ;
  wire \gen_macc[21].logic_inst_n_18 ;
  wire \gen_macc[21].logic_inst_n_19 ;
  wire \gen_macc[21].logic_inst_n_2 ;
  wire \gen_macc[21].logic_inst_n_20 ;
  wire \gen_macc[21].logic_inst_n_21 ;
  wire \gen_macc[21].logic_inst_n_22 ;
  wire \gen_macc[21].logic_inst_n_23 ;
  wire \gen_macc[21].logic_inst_n_24 ;
  wire \gen_macc[21].logic_inst_n_25 ;
  wire \gen_macc[21].logic_inst_n_26 ;
  wire \gen_macc[21].logic_inst_n_27 ;
  wire \gen_macc[21].logic_inst_n_28 ;
  wire \gen_macc[21].logic_inst_n_29 ;
  wire \gen_macc[21].logic_inst_n_3 ;
  wire \gen_macc[21].logic_inst_n_30 ;
  wire \gen_macc[21].logic_inst_n_31 ;
  wire \gen_macc[21].logic_inst_n_33 ;
  wire \gen_macc[21].logic_inst_n_34 ;
  wire \gen_macc[21].logic_inst_n_35 ;
  wire \gen_macc[21].logic_inst_n_36 ;
  wire \gen_macc[21].logic_inst_n_37 ;
  wire \gen_macc[21].logic_inst_n_38 ;
  wire \gen_macc[21].logic_inst_n_39 ;
  wire \gen_macc[21].logic_inst_n_4 ;
  wire \gen_macc[21].logic_inst_n_40 ;
  wire \gen_macc[21].logic_inst_n_41 ;
  wire \gen_macc[21].logic_inst_n_42 ;
  wire \gen_macc[21].logic_inst_n_43 ;
  wire \gen_macc[21].logic_inst_n_44 ;
  wire \gen_macc[21].logic_inst_n_45 ;
  wire \gen_macc[21].logic_inst_n_46 ;
  wire \gen_macc[21].logic_inst_n_47 ;
  wire \gen_macc[21].logic_inst_n_48 ;
  wire \gen_macc[21].logic_inst_n_49 ;
  wire \gen_macc[21].logic_inst_n_5 ;
  wire \gen_macc[21].logic_inst_n_50 ;
  wire \gen_macc[21].logic_inst_n_51 ;
  wire \gen_macc[21].logic_inst_n_52 ;
  wire \gen_macc[21].logic_inst_n_53 ;
  wire \gen_macc[21].logic_inst_n_54 ;
  wire \gen_macc[21].logic_inst_n_55 ;
  wire \gen_macc[21].logic_inst_n_56 ;
  wire \gen_macc[21].logic_inst_n_57 ;
  wire \gen_macc[21].logic_inst_n_58 ;
  wire \gen_macc[21].logic_inst_n_59 ;
  wire \gen_macc[21].logic_inst_n_6 ;
  wire \gen_macc[21].logic_inst_n_60 ;
  wire \gen_macc[21].logic_inst_n_61 ;
  wire \gen_macc[21].logic_inst_n_62 ;
  wire \gen_macc[21].logic_inst_n_63 ;
  wire \gen_macc[21].logic_inst_n_64 ;
  wire \gen_macc[21].logic_inst_n_7 ;
  wire \gen_macc[21].logic_inst_n_8 ;
  wire \gen_macc[21].logic_inst_n_9 ;
  wire \gen_macc[22].logic_inst_n_10 ;
  wire \gen_macc[22].logic_inst_n_11 ;
  wire \gen_macc[22].logic_inst_n_12 ;
  wire \gen_macc[22].logic_inst_n_13 ;
  wire \gen_macc[22].logic_inst_n_14 ;
  wire \gen_macc[22].logic_inst_n_15 ;
  wire \gen_macc[22].logic_inst_n_16 ;
  wire \gen_macc[22].logic_inst_n_17 ;
  wire \gen_macc[22].logic_inst_n_18 ;
  wire \gen_macc[22].logic_inst_n_19 ;
  wire \gen_macc[22].logic_inst_n_2 ;
  wire \gen_macc[22].logic_inst_n_20 ;
  wire \gen_macc[22].logic_inst_n_21 ;
  wire \gen_macc[22].logic_inst_n_22 ;
  wire \gen_macc[22].logic_inst_n_23 ;
  wire \gen_macc[22].logic_inst_n_24 ;
  wire \gen_macc[22].logic_inst_n_25 ;
  wire \gen_macc[22].logic_inst_n_26 ;
  wire \gen_macc[22].logic_inst_n_27 ;
  wire \gen_macc[22].logic_inst_n_28 ;
  wire \gen_macc[22].logic_inst_n_29 ;
  wire \gen_macc[22].logic_inst_n_3 ;
  wire \gen_macc[22].logic_inst_n_30 ;
  wire \gen_macc[22].logic_inst_n_31 ;
  wire \gen_macc[22].logic_inst_n_33 ;
  wire \gen_macc[22].logic_inst_n_34 ;
  wire \gen_macc[22].logic_inst_n_35 ;
  wire \gen_macc[22].logic_inst_n_36 ;
  wire \gen_macc[22].logic_inst_n_37 ;
  wire \gen_macc[22].logic_inst_n_38 ;
  wire \gen_macc[22].logic_inst_n_39 ;
  wire \gen_macc[22].logic_inst_n_4 ;
  wire \gen_macc[22].logic_inst_n_40 ;
  wire \gen_macc[22].logic_inst_n_41 ;
  wire \gen_macc[22].logic_inst_n_42 ;
  wire \gen_macc[22].logic_inst_n_43 ;
  wire \gen_macc[22].logic_inst_n_44 ;
  wire \gen_macc[22].logic_inst_n_45 ;
  wire \gen_macc[22].logic_inst_n_46 ;
  wire \gen_macc[22].logic_inst_n_47 ;
  wire \gen_macc[22].logic_inst_n_48 ;
  wire \gen_macc[22].logic_inst_n_49 ;
  wire \gen_macc[22].logic_inst_n_5 ;
  wire \gen_macc[22].logic_inst_n_50 ;
  wire \gen_macc[22].logic_inst_n_51 ;
  wire \gen_macc[22].logic_inst_n_52 ;
  wire \gen_macc[22].logic_inst_n_53 ;
  wire \gen_macc[22].logic_inst_n_54 ;
  wire \gen_macc[22].logic_inst_n_55 ;
  wire \gen_macc[22].logic_inst_n_56 ;
  wire \gen_macc[22].logic_inst_n_57 ;
  wire \gen_macc[22].logic_inst_n_58 ;
  wire \gen_macc[22].logic_inst_n_59 ;
  wire \gen_macc[22].logic_inst_n_6 ;
  wire \gen_macc[22].logic_inst_n_60 ;
  wire \gen_macc[22].logic_inst_n_61 ;
  wire \gen_macc[22].logic_inst_n_62 ;
  wire \gen_macc[22].logic_inst_n_63 ;
  wire \gen_macc[22].logic_inst_n_64 ;
  wire \gen_macc[22].logic_inst_n_7 ;
  wire \gen_macc[22].logic_inst_n_8 ;
  wire \gen_macc[22].logic_inst_n_9 ;
  wire \gen_macc[23].logic_inst_n_1 ;
  wire \gen_macc[23].logic_inst_n_10 ;
  wire \gen_macc[23].logic_inst_n_11 ;
  wire \gen_macc[23].logic_inst_n_12 ;
  wire \gen_macc[23].logic_inst_n_13 ;
  wire \gen_macc[23].logic_inst_n_14 ;
  wire \gen_macc[23].logic_inst_n_15 ;
  wire \gen_macc[23].logic_inst_n_16 ;
  wire \gen_macc[23].logic_inst_n_17 ;
  wire \gen_macc[23].logic_inst_n_18 ;
  wire \gen_macc[23].logic_inst_n_19 ;
  wire \gen_macc[23].logic_inst_n_2 ;
  wire \gen_macc[23].logic_inst_n_20 ;
  wire \gen_macc[23].logic_inst_n_21 ;
  wire \gen_macc[23].logic_inst_n_22 ;
  wire \gen_macc[23].logic_inst_n_23 ;
  wire \gen_macc[23].logic_inst_n_24 ;
  wire \gen_macc[23].logic_inst_n_25 ;
  wire \gen_macc[23].logic_inst_n_26 ;
  wire \gen_macc[23].logic_inst_n_27 ;
  wire \gen_macc[23].logic_inst_n_28 ;
  wire \gen_macc[23].logic_inst_n_29 ;
  wire \gen_macc[23].logic_inst_n_3 ;
  wire \gen_macc[23].logic_inst_n_30 ;
  wire \gen_macc[23].logic_inst_n_32 ;
  wire \gen_macc[23].logic_inst_n_33 ;
  wire \gen_macc[23].logic_inst_n_34 ;
  wire \gen_macc[23].logic_inst_n_35 ;
  wire \gen_macc[23].logic_inst_n_36 ;
  wire \gen_macc[23].logic_inst_n_37 ;
  wire \gen_macc[23].logic_inst_n_38 ;
  wire \gen_macc[23].logic_inst_n_39 ;
  wire \gen_macc[23].logic_inst_n_4 ;
  wire \gen_macc[23].logic_inst_n_40 ;
  wire \gen_macc[23].logic_inst_n_41 ;
  wire \gen_macc[23].logic_inst_n_42 ;
  wire \gen_macc[23].logic_inst_n_43 ;
  wire \gen_macc[23].logic_inst_n_44 ;
  wire \gen_macc[23].logic_inst_n_45 ;
  wire \gen_macc[23].logic_inst_n_46 ;
  wire \gen_macc[23].logic_inst_n_47 ;
  wire \gen_macc[23].logic_inst_n_48 ;
  wire \gen_macc[23].logic_inst_n_49 ;
  wire \gen_macc[23].logic_inst_n_5 ;
  wire \gen_macc[23].logic_inst_n_50 ;
  wire \gen_macc[23].logic_inst_n_51 ;
  wire \gen_macc[23].logic_inst_n_52 ;
  wire \gen_macc[23].logic_inst_n_53 ;
  wire \gen_macc[23].logic_inst_n_54 ;
  wire \gen_macc[23].logic_inst_n_55 ;
  wire \gen_macc[23].logic_inst_n_56 ;
  wire \gen_macc[23].logic_inst_n_57 ;
  wire \gen_macc[23].logic_inst_n_58 ;
  wire \gen_macc[23].logic_inst_n_59 ;
  wire \gen_macc[23].logic_inst_n_6 ;
  wire \gen_macc[23].logic_inst_n_60 ;
  wire \gen_macc[23].logic_inst_n_61 ;
  wire \gen_macc[23].logic_inst_n_62 ;
  wire \gen_macc[23].logic_inst_n_63 ;
  wire \gen_macc[23].logic_inst_n_64 ;
  wire \gen_macc[23].logic_inst_n_7 ;
  wire \gen_macc[23].logic_inst_n_8 ;
  wire \gen_macc[23].logic_inst_n_9 ;
  wire \gen_macc[24].logic_inst_n_10 ;
  wire \gen_macc[24].logic_inst_n_11 ;
  wire \gen_macc[24].logic_inst_n_12 ;
  wire \gen_macc[24].logic_inst_n_13 ;
  wire \gen_macc[24].logic_inst_n_14 ;
  wire \gen_macc[24].logic_inst_n_15 ;
  wire \gen_macc[24].logic_inst_n_16 ;
  wire \gen_macc[24].logic_inst_n_17 ;
  wire \gen_macc[24].logic_inst_n_18 ;
  wire \gen_macc[24].logic_inst_n_19 ;
  wire \gen_macc[24].logic_inst_n_20 ;
  wire \gen_macc[24].logic_inst_n_21 ;
  wire \gen_macc[24].logic_inst_n_22 ;
  wire \gen_macc[24].logic_inst_n_23 ;
  wire \gen_macc[24].logic_inst_n_24 ;
  wire \gen_macc[24].logic_inst_n_25 ;
  wire \gen_macc[24].logic_inst_n_26 ;
  wire \gen_macc[24].logic_inst_n_27 ;
  wire \gen_macc[24].logic_inst_n_28 ;
  wire \gen_macc[24].logic_inst_n_29 ;
  wire \gen_macc[24].logic_inst_n_3 ;
  wire \gen_macc[24].logic_inst_n_30 ;
  wire \gen_macc[24].logic_inst_n_31 ;
  wire \gen_macc[24].logic_inst_n_32 ;
  wire \gen_macc[24].logic_inst_n_33 ;
  wire \gen_macc[24].logic_inst_n_34 ;
  wire \gen_macc[24].logic_inst_n_4 ;
  wire \gen_macc[24].logic_inst_n_5 ;
  wire \gen_macc[24].logic_inst_n_6 ;
  wire \gen_macc[24].logic_inst_n_7 ;
  wire \gen_macc[24].logic_inst_n_8 ;
  wire \gen_macc[24].logic_inst_n_9 ;
  wire \gen_macc[2].logic_inst_n_10 ;
  wire \gen_macc[2].logic_inst_n_11 ;
  wire \gen_macc[2].logic_inst_n_12 ;
  wire \gen_macc[2].logic_inst_n_13 ;
  wire \gen_macc[2].logic_inst_n_14 ;
  wire \gen_macc[2].logic_inst_n_15 ;
  wire \gen_macc[2].logic_inst_n_16 ;
  wire \gen_macc[2].logic_inst_n_17 ;
  wire \gen_macc[2].logic_inst_n_18 ;
  wire \gen_macc[2].logic_inst_n_19 ;
  wire \gen_macc[2].logic_inst_n_2 ;
  wire \gen_macc[2].logic_inst_n_20 ;
  wire \gen_macc[2].logic_inst_n_21 ;
  wire \gen_macc[2].logic_inst_n_22 ;
  wire \gen_macc[2].logic_inst_n_23 ;
  wire \gen_macc[2].logic_inst_n_24 ;
  wire \gen_macc[2].logic_inst_n_25 ;
  wire \gen_macc[2].logic_inst_n_26 ;
  wire \gen_macc[2].logic_inst_n_27 ;
  wire \gen_macc[2].logic_inst_n_28 ;
  wire \gen_macc[2].logic_inst_n_29 ;
  wire \gen_macc[2].logic_inst_n_3 ;
  wire \gen_macc[2].logic_inst_n_30 ;
  wire \gen_macc[2].logic_inst_n_31 ;
  wire \gen_macc[2].logic_inst_n_33 ;
  wire \gen_macc[2].logic_inst_n_34 ;
  wire \gen_macc[2].logic_inst_n_35 ;
  wire \gen_macc[2].logic_inst_n_36 ;
  wire \gen_macc[2].logic_inst_n_37 ;
  wire \gen_macc[2].logic_inst_n_38 ;
  wire \gen_macc[2].logic_inst_n_39 ;
  wire \gen_macc[2].logic_inst_n_4 ;
  wire \gen_macc[2].logic_inst_n_40 ;
  wire \gen_macc[2].logic_inst_n_41 ;
  wire \gen_macc[2].logic_inst_n_42 ;
  wire \gen_macc[2].logic_inst_n_43 ;
  wire \gen_macc[2].logic_inst_n_44 ;
  wire \gen_macc[2].logic_inst_n_45 ;
  wire \gen_macc[2].logic_inst_n_46 ;
  wire \gen_macc[2].logic_inst_n_47 ;
  wire \gen_macc[2].logic_inst_n_48 ;
  wire \gen_macc[2].logic_inst_n_49 ;
  wire \gen_macc[2].logic_inst_n_5 ;
  wire \gen_macc[2].logic_inst_n_50 ;
  wire \gen_macc[2].logic_inst_n_51 ;
  wire \gen_macc[2].logic_inst_n_52 ;
  wire \gen_macc[2].logic_inst_n_53 ;
  wire \gen_macc[2].logic_inst_n_54 ;
  wire \gen_macc[2].logic_inst_n_55 ;
  wire \gen_macc[2].logic_inst_n_56 ;
  wire \gen_macc[2].logic_inst_n_57 ;
  wire \gen_macc[2].logic_inst_n_58 ;
  wire \gen_macc[2].logic_inst_n_59 ;
  wire \gen_macc[2].logic_inst_n_6 ;
  wire \gen_macc[2].logic_inst_n_60 ;
  wire \gen_macc[2].logic_inst_n_61 ;
  wire \gen_macc[2].logic_inst_n_62 ;
  wire \gen_macc[2].logic_inst_n_63 ;
  wire \gen_macc[2].logic_inst_n_64 ;
  wire \gen_macc[2].logic_inst_n_7 ;
  wire \gen_macc[2].logic_inst_n_8 ;
  wire \gen_macc[2].logic_inst_n_9 ;
  wire \gen_macc[3].logic_inst_n_1 ;
  wire \gen_macc[3].logic_inst_n_10 ;
  wire \gen_macc[3].logic_inst_n_11 ;
  wire \gen_macc[3].logic_inst_n_12 ;
  wire \gen_macc[3].logic_inst_n_13 ;
  wire \gen_macc[3].logic_inst_n_14 ;
  wire \gen_macc[3].logic_inst_n_15 ;
  wire \gen_macc[3].logic_inst_n_16 ;
  wire \gen_macc[3].logic_inst_n_17 ;
  wire \gen_macc[3].logic_inst_n_18 ;
  wire \gen_macc[3].logic_inst_n_19 ;
  wire \gen_macc[3].logic_inst_n_2 ;
  wire \gen_macc[3].logic_inst_n_20 ;
  wire \gen_macc[3].logic_inst_n_21 ;
  wire \gen_macc[3].logic_inst_n_22 ;
  wire \gen_macc[3].logic_inst_n_23 ;
  wire \gen_macc[3].logic_inst_n_24 ;
  wire \gen_macc[3].logic_inst_n_25 ;
  wire \gen_macc[3].logic_inst_n_26 ;
  wire \gen_macc[3].logic_inst_n_27 ;
  wire \gen_macc[3].logic_inst_n_28 ;
  wire \gen_macc[3].logic_inst_n_29 ;
  wire \gen_macc[3].logic_inst_n_3 ;
  wire \gen_macc[3].logic_inst_n_30 ;
  wire \gen_macc[3].logic_inst_n_4 ;
  wire \gen_macc[3].logic_inst_n_5 ;
  wire \gen_macc[3].logic_inst_n_6 ;
  wire \gen_macc[3].logic_inst_n_7 ;
  wire \gen_macc[3].logic_inst_n_8 ;
  wire \gen_macc[3].logic_inst_n_9 ;
  wire \gen_macc[4].logic_inst_n_10 ;
  wire \gen_macc[4].logic_inst_n_11 ;
  wire \gen_macc[4].logic_inst_n_12 ;
  wire \gen_macc[4].logic_inst_n_13 ;
  wire \gen_macc[4].logic_inst_n_14 ;
  wire \gen_macc[4].logic_inst_n_15 ;
  wire \gen_macc[4].logic_inst_n_16 ;
  wire \gen_macc[4].logic_inst_n_17 ;
  wire \gen_macc[4].logic_inst_n_18 ;
  wire \gen_macc[4].logic_inst_n_19 ;
  wire \gen_macc[4].logic_inst_n_2 ;
  wire \gen_macc[4].logic_inst_n_20 ;
  wire \gen_macc[4].logic_inst_n_21 ;
  wire \gen_macc[4].logic_inst_n_22 ;
  wire \gen_macc[4].logic_inst_n_23 ;
  wire \gen_macc[4].logic_inst_n_24 ;
  wire \gen_macc[4].logic_inst_n_25 ;
  wire \gen_macc[4].logic_inst_n_26 ;
  wire \gen_macc[4].logic_inst_n_27 ;
  wire \gen_macc[4].logic_inst_n_28 ;
  wire \gen_macc[4].logic_inst_n_29 ;
  wire \gen_macc[4].logic_inst_n_3 ;
  wire \gen_macc[4].logic_inst_n_30 ;
  wire \gen_macc[4].logic_inst_n_31 ;
  wire \gen_macc[4].logic_inst_n_33 ;
  wire \gen_macc[4].logic_inst_n_34 ;
  wire \gen_macc[4].logic_inst_n_35 ;
  wire \gen_macc[4].logic_inst_n_36 ;
  wire \gen_macc[4].logic_inst_n_37 ;
  wire \gen_macc[4].logic_inst_n_38 ;
  wire \gen_macc[4].logic_inst_n_39 ;
  wire \gen_macc[4].logic_inst_n_4 ;
  wire \gen_macc[4].logic_inst_n_40 ;
  wire \gen_macc[4].logic_inst_n_41 ;
  wire \gen_macc[4].logic_inst_n_42 ;
  wire \gen_macc[4].logic_inst_n_43 ;
  wire \gen_macc[4].logic_inst_n_44 ;
  wire \gen_macc[4].logic_inst_n_45 ;
  wire \gen_macc[4].logic_inst_n_46 ;
  wire \gen_macc[4].logic_inst_n_47 ;
  wire \gen_macc[4].logic_inst_n_48 ;
  wire \gen_macc[4].logic_inst_n_49 ;
  wire \gen_macc[4].logic_inst_n_5 ;
  wire \gen_macc[4].logic_inst_n_50 ;
  wire \gen_macc[4].logic_inst_n_51 ;
  wire \gen_macc[4].logic_inst_n_52 ;
  wire \gen_macc[4].logic_inst_n_53 ;
  wire \gen_macc[4].logic_inst_n_54 ;
  wire \gen_macc[4].logic_inst_n_55 ;
  wire \gen_macc[4].logic_inst_n_56 ;
  wire \gen_macc[4].logic_inst_n_57 ;
  wire \gen_macc[4].logic_inst_n_58 ;
  wire \gen_macc[4].logic_inst_n_59 ;
  wire \gen_macc[4].logic_inst_n_6 ;
  wire \gen_macc[4].logic_inst_n_60 ;
  wire \gen_macc[4].logic_inst_n_61 ;
  wire \gen_macc[4].logic_inst_n_62 ;
  wire \gen_macc[4].logic_inst_n_63 ;
  wire \gen_macc[4].logic_inst_n_64 ;
  wire \gen_macc[4].logic_inst_n_7 ;
  wire \gen_macc[4].logic_inst_n_8 ;
  wire \gen_macc[4].logic_inst_n_9 ;
  wire \gen_macc[5].logic_inst_n_1 ;
  wire \gen_macc[5].logic_inst_n_10 ;
  wire \gen_macc[5].logic_inst_n_11 ;
  wire \gen_macc[5].logic_inst_n_12 ;
  wire \gen_macc[5].logic_inst_n_13 ;
  wire \gen_macc[5].logic_inst_n_14 ;
  wire \gen_macc[5].logic_inst_n_15 ;
  wire \gen_macc[5].logic_inst_n_16 ;
  wire \gen_macc[5].logic_inst_n_17 ;
  wire \gen_macc[5].logic_inst_n_18 ;
  wire \gen_macc[5].logic_inst_n_19 ;
  wire \gen_macc[5].logic_inst_n_2 ;
  wire \gen_macc[5].logic_inst_n_20 ;
  wire \gen_macc[5].logic_inst_n_21 ;
  wire \gen_macc[5].logic_inst_n_22 ;
  wire \gen_macc[5].logic_inst_n_23 ;
  wire \gen_macc[5].logic_inst_n_24 ;
  wire \gen_macc[5].logic_inst_n_25 ;
  wire \gen_macc[5].logic_inst_n_26 ;
  wire \gen_macc[5].logic_inst_n_27 ;
  wire \gen_macc[5].logic_inst_n_28 ;
  wire \gen_macc[5].logic_inst_n_29 ;
  wire \gen_macc[5].logic_inst_n_3 ;
  wire \gen_macc[5].logic_inst_n_30 ;
  wire \gen_macc[5].logic_inst_n_32 ;
  wire \gen_macc[5].logic_inst_n_33 ;
  wire \gen_macc[5].logic_inst_n_34 ;
  wire \gen_macc[5].logic_inst_n_35 ;
  wire \gen_macc[5].logic_inst_n_36 ;
  wire \gen_macc[5].logic_inst_n_37 ;
  wire \gen_macc[5].logic_inst_n_38 ;
  wire \gen_macc[5].logic_inst_n_39 ;
  wire \gen_macc[5].logic_inst_n_4 ;
  wire \gen_macc[5].logic_inst_n_40 ;
  wire \gen_macc[5].logic_inst_n_41 ;
  wire \gen_macc[5].logic_inst_n_42 ;
  wire \gen_macc[5].logic_inst_n_43 ;
  wire \gen_macc[5].logic_inst_n_44 ;
  wire \gen_macc[5].logic_inst_n_45 ;
  wire \gen_macc[5].logic_inst_n_46 ;
  wire \gen_macc[5].logic_inst_n_47 ;
  wire \gen_macc[5].logic_inst_n_48 ;
  wire \gen_macc[5].logic_inst_n_49 ;
  wire \gen_macc[5].logic_inst_n_5 ;
  wire \gen_macc[5].logic_inst_n_50 ;
  wire \gen_macc[5].logic_inst_n_51 ;
  wire \gen_macc[5].logic_inst_n_52 ;
  wire \gen_macc[5].logic_inst_n_53 ;
  wire \gen_macc[5].logic_inst_n_54 ;
  wire \gen_macc[5].logic_inst_n_55 ;
  wire \gen_macc[5].logic_inst_n_56 ;
  wire \gen_macc[5].logic_inst_n_57 ;
  wire \gen_macc[5].logic_inst_n_58 ;
  wire \gen_macc[5].logic_inst_n_59 ;
  wire \gen_macc[5].logic_inst_n_6 ;
  wire \gen_macc[5].logic_inst_n_60 ;
  wire \gen_macc[5].logic_inst_n_61 ;
  wire \gen_macc[5].logic_inst_n_62 ;
  wire \gen_macc[5].logic_inst_n_63 ;
  wire \gen_macc[5].logic_inst_n_64 ;
  wire \gen_macc[5].logic_inst_n_7 ;
  wire \gen_macc[5].logic_inst_n_8 ;
  wire \gen_macc[5].logic_inst_n_9 ;
  wire \gen_macc[6].logic_inst_n_10 ;
  wire \gen_macc[6].logic_inst_n_11 ;
  wire \gen_macc[6].logic_inst_n_12 ;
  wire \gen_macc[6].logic_inst_n_13 ;
  wire \gen_macc[6].logic_inst_n_14 ;
  wire \gen_macc[6].logic_inst_n_15 ;
  wire \gen_macc[6].logic_inst_n_16 ;
  wire \gen_macc[6].logic_inst_n_17 ;
  wire \gen_macc[6].logic_inst_n_18 ;
  wire \gen_macc[6].logic_inst_n_19 ;
  wire \gen_macc[6].logic_inst_n_2 ;
  wire \gen_macc[6].logic_inst_n_20 ;
  wire \gen_macc[6].logic_inst_n_21 ;
  wire \gen_macc[6].logic_inst_n_22 ;
  wire \gen_macc[6].logic_inst_n_23 ;
  wire \gen_macc[6].logic_inst_n_24 ;
  wire \gen_macc[6].logic_inst_n_25 ;
  wire \gen_macc[6].logic_inst_n_26 ;
  wire \gen_macc[6].logic_inst_n_27 ;
  wire \gen_macc[6].logic_inst_n_28 ;
  wire \gen_macc[6].logic_inst_n_29 ;
  wire \gen_macc[6].logic_inst_n_3 ;
  wire \gen_macc[6].logic_inst_n_30 ;
  wire \gen_macc[6].logic_inst_n_31 ;
  wire \gen_macc[6].logic_inst_n_33 ;
  wire \gen_macc[6].logic_inst_n_34 ;
  wire \gen_macc[6].logic_inst_n_35 ;
  wire \gen_macc[6].logic_inst_n_36 ;
  wire \gen_macc[6].logic_inst_n_37 ;
  wire \gen_macc[6].logic_inst_n_38 ;
  wire \gen_macc[6].logic_inst_n_39 ;
  wire \gen_macc[6].logic_inst_n_4 ;
  wire \gen_macc[6].logic_inst_n_40 ;
  wire \gen_macc[6].logic_inst_n_41 ;
  wire \gen_macc[6].logic_inst_n_42 ;
  wire \gen_macc[6].logic_inst_n_43 ;
  wire \gen_macc[6].logic_inst_n_44 ;
  wire \gen_macc[6].logic_inst_n_45 ;
  wire \gen_macc[6].logic_inst_n_46 ;
  wire \gen_macc[6].logic_inst_n_47 ;
  wire \gen_macc[6].logic_inst_n_48 ;
  wire \gen_macc[6].logic_inst_n_49 ;
  wire \gen_macc[6].logic_inst_n_5 ;
  wire \gen_macc[6].logic_inst_n_50 ;
  wire \gen_macc[6].logic_inst_n_51 ;
  wire \gen_macc[6].logic_inst_n_52 ;
  wire \gen_macc[6].logic_inst_n_53 ;
  wire \gen_macc[6].logic_inst_n_54 ;
  wire \gen_macc[6].logic_inst_n_55 ;
  wire \gen_macc[6].logic_inst_n_56 ;
  wire \gen_macc[6].logic_inst_n_57 ;
  wire \gen_macc[6].logic_inst_n_58 ;
  wire \gen_macc[6].logic_inst_n_59 ;
  wire \gen_macc[6].logic_inst_n_6 ;
  wire \gen_macc[6].logic_inst_n_60 ;
  wire \gen_macc[6].logic_inst_n_61 ;
  wire \gen_macc[6].logic_inst_n_62 ;
  wire \gen_macc[6].logic_inst_n_63 ;
  wire \gen_macc[6].logic_inst_n_64 ;
  wire \gen_macc[6].logic_inst_n_7 ;
  wire \gen_macc[6].logic_inst_n_8 ;
  wire \gen_macc[6].logic_inst_n_9 ;
  wire \gen_macc[7].logic_inst_n_10 ;
  wire \gen_macc[7].logic_inst_n_11 ;
  wire \gen_macc[7].logic_inst_n_12 ;
  wire \gen_macc[7].logic_inst_n_13 ;
  wire \gen_macc[7].logic_inst_n_14 ;
  wire \gen_macc[7].logic_inst_n_15 ;
  wire \gen_macc[7].logic_inst_n_16 ;
  wire \gen_macc[7].logic_inst_n_17 ;
  wire \gen_macc[7].logic_inst_n_18 ;
  wire \gen_macc[7].logic_inst_n_19 ;
  wire \gen_macc[7].logic_inst_n_2 ;
  wire \gen_macc[7].logic_inst_n_20 ;
  wire \gen_macc[7].logic_inst_n_21 ;
  wire \gen_macc[7].logic_inst_n_22 ;
  wire \gen_macc[7].logic_inst_n_23 ;
  wire \gen_macc[7].logic_inst_n_24 ;
  wire \gen_macc[7].logic_inst_n_25 ;
  wire \gen_macc[7].logic_inst_n_26 ;
  wire \gen_macc[7].logic_inst_n_27 ;
  wire \gen_macc[7].logic_inst_n_28 ;
  wire \gen_macc[7].logic_inst_n_29 ;
  wire \gen_macc[7].logic_inst_n_3 ;
  wire \gen_macc[7].logic_inst_n_30 ;
  wire \gen_macc[7].logic_inst_n_31 ;
  wire \gen_macc[7].logic_inst_n_33 ;
  wire \gen_macc[7].logic_inst_n_34 ;
  wire \gen_macc[7].logic_inst_n_35 ;
  wire \gen_macc[7].logic_inst_n_36 ;
  wire \gen_macc[7].logic_inst_n_37 ;
  wire \gen_macc[7].logic_inst_n_38 ;
  wire \gen_macc[7].logic_inst_n_39 ;
  wire \gen_macc[7].logic_inst_n_4 ;
  wire \gen_macc[7].logic_inst_n_40 ;
  wire \gen_macc[7].logic_inst_n_41 ;
  wire \gen_macc[7].logic_inst_n_42 ;
  wire \gen_macc[7].logic_inst_n_43 ;
  wire \gen_macc[7].logic_inst_n_44 ;
  wire \gen_macc[7].logic_inst_n_45 ;
  wire \gen_macc[7].logic_inst_n_46 ;
  wire \gen_macc[7].logic_inst_n_47 ;
  wire \gen_macc[7].logic_inst_n_48 ;
  wire \gen_macc[7].logic_inst_n_49 ;
  wire \gen_macc[7].logic_inst_n_5 ;
  wire \gen_macc[7].logic_inst_n_50 ;
  wire \gen_macc[7].logic_inst_n_51 ;
  wire \gen_macc[7].logic_inst_n_52 ;
  wire \gen_macc[7].logic_inst_n_53 ;
  wire \gen_macc[7].logic_inst_n_54 ;
  wire \gen_macc[7].logic_inst_n_55 ;
  wire \gen_macc[7].logic_inst_n_56 ;
  wire \gen_macc[7].logic_inst_n_57 ;
  wire \gen_macc[7].logic_inst_n_58 ;
  wire \gen_macc[7].logic_inst_n_59 ;
  wire \gen_macc[7].logic_inst_n_6 ;
  wire \gen_macc[7].logic_inst_n_60 ;
  wire \gen_macc[7].logic_inst_n_61 ;
  wire \gen_macc[7].logic_inst_n_62 ;
  wire \gen_macc[7].logic_inst_n_63 ;
  wire \gen_macc[7].logic_inst_n_64 ;
  wire \gen_macc[7].logic_inst_n_7 ;
  wire \gen_macc[7].logic_inst_n_8 ;
  wire \gen_macc[7].logic_inst_n_9 ;
  wire \gen_macc[8].logic_inst_n_10 ;
  wire \gen_macc[8].logic_inst_n_11 ;
  wire \gen_macc[8].logic_inst_n_12 ;
  wire \gen_macc[8].logic_inst_n_13 ;
  wire \gen_macc[8].logic_inst_n_14 ;
  wire \gen_macc[8].logic_inst_n_15 ;
  wire \gen_macc[8].logic_inst_n_16 ;
  wire \gen_macc[8].logic_inst_n_17 ;
  wire \gen_macc[8].logic_inst_n_18 ;
  wire \gen_macc[8].logic_inst_n_19 ;
  wire \gen_macc[8].logic_inst_n_2 ;
  wire \gen_macc[8].logic_inst_n_20 ;
  wire \gen_macc[8].logic_inst_n_21 ;
  wire \gen_macc[8].logic_inst_n_22 ;
  wire \gen_macc[8].logic_inst_n_23 ;
  wire \gen_macc[8].logic_inst_n_24 ;
  wire \gen_macc[8].logic_inst_n_25 ;
  wire \gen_macc[8].logic_inst_n_26 ;
  wire \gen_macc[8].logic_inst_n_27 ;
  wire \gen_macc[8].logic_inst_n_28 ;
  wire \gen_macc[8].logic_inst_n_29 ;
  wire \gen_macc[8].logic_inst_n_3 ;
  wire \gen_macc[8].logic_inst_n_30 ;
  wire \gen_macc[8].logic_inst_n_31 ;
  wire \gen_macc[8].logic_inst_n_33 ;
  wire \gen_macc[8].logic_inst_n_34 ;
  wire \gen_macc[8].logic_inst_n_35 ;
  wire \gen_macc[8].logic_inst_n_36 ;
  wire \gen_macc[8].logic_inst_n_37 ;
  wire \gen_macc[8].logic_inst_n_38 ;
  wire \gen_macc[8].logic_inst_n_39 ;
  wire \gen_macc[8].logic_inst_n_4 ;
  wire \gen_macc[8].logic_inst_n_40 ;
  wire \gen_macc[8].logic_inst_n_41 ;
  wire \gen_macc[8].logic_inst_n_42 ;
  wire \gen_macc[8].logic_inst_n_43 ;
  wire \gen_macc[8].logic_inst_n_44 ;
  wire \gen_macc[8].logic_inst_n_45 ;
  wire \gen_macc[8].logic_inst_n_46 ;
  wire \gen_macc[8].logic_inst_n_47 ;
  wire \gen_macc[8].logic_inst_n_48 ;
  wire \gen_macc[8].logic_inst_n_49 ;
  wire \gen_macc[8].logic_inst_n_5 ;
  wire \gen_macc[8].logic_inst_n_50 ;
  wire \gen_macc[8].logic_inst_n_51 ;
  wire \gen_macc[8].logic_inst_n_52 ;
  wire \gen_macc[8].logic_inst_n_53 ;
  wire \gen_macc[8].logic_inst_n_54 ;
  wire \gen_macc[8].logic_inst_n_55 ;
  wire \gen_macc[8].logic_inst_n_56 ;
  wire \gen_macc[8].logic_inst_n_57 ;
  wire \gen_macc[8].logic_inst_n_58 ;
  wire \gen_macc[8].logic_inst_n_59 ;
  wire \gen_macc[8].logic_inst_n_6 ;
  wire \gen_macc[8].logic_inst_n_60 ;
  wire \gen_macc[8].logic_inst_n_61 ;
  wire \gen_macc[8].logic_inst_n_62 ;
  wire \gen_macc[8].logic_inst_n_63 ;
  wire \gen_macc[8].logic_inst_n_64 ;
  wire \gen_macc[8].logic_inst_n_7 ;
  wire \gen_macc[8].logic_inst_n_8 ;
  wire \gen_macc[8].logic_inst_n_9 ;
  wire \gen_macc[9].logic_inst_n_10 ;
  wire \gen_macc[9].logic_inst_n_11 ;
  wire \gen_macc[9].logic_inst_n_12 ;
  wire \gen_macc[9].logic_inst_n_13 ;
  wire \gen_macc[9].logic_inst_n_14 ;
  wire \gen_macc[9].logic_inst_n_15 ;
  wire \gen_macc[9].logic_inst_n_16 ;
  wire \gen_macc[9].logic_inst_n_17 ;
  wire \gen_macc[9].logic_inst_n_18 ;
  wire \gen_macc[9].logic_inst_n_19 ;
  wire \gen_macc[9].logic_inst_n_2 ;
  wire \gen_macc[9].logic_inst_n_20 ;
  wire \gen_macc[9].logic_inst_n_21 ;
  wire \gen_macc[9].logic_inst_n_22 ;
  wire \gen_macc[9].logic_inst_n_23 ;
  wire \gen_macc[9].logic_inst_n_24 ;
  wire \gen_macc[9].logic_inst_n_25 ;
  wire \gen_macc[9].logic_inst_n_26 ;
  wire \gen_macc[9].logic_inst_n_27 ;
  wire \gen_macc[9].logic_inst_n_28 ;
  wire \gen_macc[9].logic_inst_n_29 ;
  wire \gen_macc[9].logic_inst_n_3 ;
  wire \gen_macc[9].logic_inst_n_30 ;
  wire \gen_macc[9].logic_inst_n_31 ;
  wire \gen_macc[9].logic_inst_n_33 ;
  wire \gen_macc[9].logic_inst_n_34 ;
  wire \gen_macc[9].logic_inst_n_35 ;
  wire \gen_macc[9].logic_inst_n_36 ;
  wire \gen_macc[9].logic_inst_n_37 ;
  wire \gen_macc[9].logic_inst_n_38 ;
  wire \gen_macc[9].logic_inst_n_39 ;
  wire \gen_macc[9].logic_inst_n_4 ;
  wire \gen_macc[9].logic_inst_n_40 ;
  wire \gen_macc[9].logic_inst_n_41 ;
  wire \gen_macc[9].logic_inst_n_42 ;
  wire \gen_macc[9].logic_inst_n_43 ;
  wire \gen_macc[9].logic_inst_n_44 ;
  wire \gen_macc[9].logic_inst_n_45 ;
  wire \gen_macc[9].logic_inst_n_46 ;
  wire \gen_macc[9].logic_inst_n_47 ;
  wire \gen_macc[9].logic_inst_n_48 ;
  wire \gen_macc[9].logic_inst_n_49 ;
  wire \gen_macc[9].logic_inst_n_5 ;
  wire \gen_macc[9].logic_inst_n_50 ;
  wire \gen_macc[9].logic_inst_n_51 ;
  wire \gen_macc[9].logic_inst_n_52 ;
  wire \gen_macc[9].logic_inst_n_53 ;
  wire \gen_macc[9].logic_inst_n_54 ;
  wire \gen_macc[9].logic_inst_n_55 ;
  wire \gen_macc[9].logic_inst_n_56 ;
  wire \gen_macc[9].logic_inst_n_57 ;
  wire \gen_macc[9].logic_inst_n_58 ;
  wire \gen_macc[9].logic_inst_n_59 ;
  wire \gen_macc[9].logic_inst_n_6 ;
  wire \gen_macc[9].logic_inst_n_60 ;
  wire \gen_macc[9].logic_inst_n_61 ;
  wire \gen_macc[9].logic_inst_n_62 ;
  wire \gen_macc[9].logic_inst_n_63 ;
  wire \gen_macc[9].logic_inst_n_64 ;
  wire \gen_macc[9].logic_inst_n_7 ;
  wire \gen_macc[9].logic_inst_n_8 ;
  wire \gen_macc[9].logic_inst_n_9 ;
  wire [4:0]mem_reg;
  wire [15:0]mem_reg_0;
  wire [4:0]mux_cpt_s;
  wire [4:0]p_0_in;
  wire [24:0]ready_next_s;
  wire ready_s;
  wire ready_s_47;
  wire ready_s_49;
  wire ready_s_51;
  wire ready_s_53;
  wire ready_s_55;
  wire ready_s_57;
  wire ready_s_59;
  wire ready_s_61;
  wire ready_s_63;
  wire ready_s_65;
  wire ready_s_67;
  wire ready_s_69;
  wire ready_s_71;
  wire ready_s_73;
  wire ready_s_75;
  wire ready_s_77;
  wire ready_s_79;
  wire ready_s_81;
  wire ready_s_83;
  wire ready_s_85;
  wire ready_s_87;
  wire ready_s_89;
  wire ready_s_91;
  wire res_s0;
  wire res_s0_0;
  wire res_s0_10;
  wire res_s0_12;
  wire res_s0_14;
  wire res_s0_16;
  wire res_s0_18;
  wire res_s0_2;
  wire res_s0_20;
  wire res_s0_22;
  wire res_s0_24;
  wire res_s0_26;
  wire res_s0_28;
  wire res_s0_30;
  wire res_s0_32;
  wire res_s0_34;
  wire res_s0_36;
  wire res_s0_38;
  wire res_s0_4;
  wire res_s0_40;
  wire res_s0_42;
  wire res_s0_44;
  wire res_s0_6;
  wire res_s0_8;
  wire s00_axi_aclk;
  wire tick_o;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h0F0D0F0F)) 
    \cpt_s[0]_i_1 
       (.I0(\cpt_s_reg_n_0_[3] ),
        .I1(\cpt_s_reg_n_0_[1] ),
        .I2(\cpt_s_reg_n_0_[0] ),
        .I3(\cpt_s_reg_n_0_[2] ),
        .I4(\cpt_s_reg_n_0_[4] ),
        .O(mux_cpt_s[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \cpt_s[1]_i_1 
       (.I0(\cpt_s_reg_n_0_[1] ),
        .I1(\cpt_s_reg_n_0_[0] ),
        .O(mux_cpt_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cpt_s[2]_i_1 
       (.I0(\cpt_s_reg_n_0_[1] ),
        .I1(\cpt_s_reg_n_0_[0] ),
        .I2(\cpt_s_reg_n_0_[2] ),
        .O(mux_cpt_s[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h6AA86AAA)) 
    \cpt_s[3]_i_1 
       (.I0(\cpt_s_reg_n_0_[3] ),
        .I1(\cpt_s_reg_n_0_[1] ),
        .I2(\cpt_s_reg_n_0_[0] ),
        .I3(\cpt_s_reg_n_0_[2] ),
        .I4(\cpt_s_reg_n_0_[4] ),
        .O(mux_cpt_s[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFD8000)) 
    \cpt_s[4]_i_1 
       (.I0(\cpt_s_reg_n_0_[3] ),
        .I1(\cpt_s_reg_n_0_[1] ),
        .I2(\cpt_s_reg_n_0_[0] ),
        .I3(\cpt_s_reg_n_0_[2] ),
        .I4(\cpt_s_reg_n_0_[4] ),
        .O(mux_cpt_s[4]));
  FDRE \cpt_s_reg[0] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(mux_cpt_s[0]),
        .Q(\cpt_s_reg_n_0_[0] ),
        .R(data_rst_i));
  FDRE \cpt_s_reg[1] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(mux_cpt_s[1]),
        .Q(\cpt_s_reg_n_0_[1] ),
        .R(data_rst_i));
  FDRE \cpt_s_reg[2] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(mux_cpt_s[2]),
        .Q(\cpt_s_reg_n_0_[2] ),
        .R(data_rst_i));
  FDRE \cpt_s_reg[3] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(mux_cpt_s[3]),
        .Q(\cpt_s_reg_n_0_[3] ),
        .R(data_rst_i));
  FDRE \cpt_s_reg[4] 
       (.C(data_clk_i),
        .CE(data_en_i),
        .D(mux_cpt_s[4]),
        .Q(\cpt_s_reg_n_0_[4] ),
        .R(data_rst_i));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cpt_store_s[0]_i_1 
       (.I0(cpt_store_s_reg[0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \cpt_store_s[0]_rep_i_1 
       (.I0(cpt_store_s_reg[0]),
        .O(\cpt_store_s[0]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cpt_store_s[1]_i_1 
       (.I0(cpt_store_s_reg[0]),
        .I1(\cpt_store_s_reg[1]_rep_n_0 ),
        .O(p_0_in[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \cpt_store_s[1]_rep_i_1 
       (.I0(cpt_store_s_reg[0]),
        .I1(\cpt_store_s_reg[1]_rep_n_0 ),
        .O(\cpt_store_s[1]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cpt_store_s[2]_i_1 
       (.I0(cpt_store_s_reg[0]),
        .I1(\cpt_store_s_reg[1]_rep_n_0 ),
        .I2(cpt_store_s_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cpt_store_s[3]_i_1 
       (.I0(\cpt_store_s_reg[1]_rep_n_0 ),
        .I1(cpt_store_s_reg[0]),
        .I2(cpt_store_s_reg[2]),
        .I3(cpt_store_s_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cpt_store_s[4]_i_2 
       (.I0(cpt_store_s_reg[2]),
        .I1(cpt_store_s_reg[0]),
        .I2(\cpt_store_s_reg[1]_rep_n_0 ),
        .I3(cpt_store_s_reg[3]),
        .I4(cpt_store_s_reg[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \cpt_store_s[4]_i_3 
       (.I0(cpt_store_s_reg[4]),
        .I1(cpt_store_s_reg[2]),
        .I2(cpt_store_s_reg[3]),
        .I3(\cpt_store_s_reg[1]_rep_n_0 ),
        .I4(cpt_store_s_reg[0]),
        .O(\cpt_store_s[4]_i_3_n_0 ));
  (* ORIG_CELL_NAME = "cpt_store_s_reg[0]" *) 
  FDRE \cpt_store_s_reg[0] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(p_0_in[0]),
        .Q(cpt_store_s_reg[0]),
        .R(clear));
  (* ORIG_CELL_NAME = "cpt_store_s_reg[0]" *) 
  FDRE \cpt_store_s_reg[0]_rep 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\cpt_store_s[0]_rep_i_1_n_0 ),
        .Q(\cpt_store_s_reg[0]_rep_n_0 ),
        .R(clear));
  (* ORIG_CELL_NAME = "cpt_store_s_reg[1]" *) 
  FDRE \cpt_store_s_reg[1] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(p_0_in[1]),
        .Q(cpt_store_s_reg[1]),
        .R(clear));
  (* ORIG_CELL_NAME = "cpt_store_s_reg[1]" *) 
  FDRE \cpt_store_s_reg[1]_rep 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\cpt_store_s[1]_rep_i_1_n_0 ),
        .Q(\cpt_store_s_reg[1]_rep_n_0 ),
        .R(clear));
  FDRE \cpt_store_s_reg[2] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(p_0_in[2]),
        .Q(cpt_store_s_reg[2]),
        .R(clear));
  FDRE \cpt_store_s_reg[3] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(p_0_in[3]),
        .Q(cpt_store_s_reg[3]),
        .R(clear));
  FDRE \cpt_store_s_reg[4] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(p_0_in[4]),
        .Q(cpt_store_s_reg[4]),
        .R(clear));
  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_next),
        .Q(tick_o),
        .R(data_rst_i));
  FDRE data_in_en_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_i),
        .Q(data_in_en_s),
        .R(data_rst_i));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \data_out_s[31]_i_11 
       (.I0(cpt_store_s_reg[4]),
        .I1(cpt_store_s_reg[2]),
        .I2(cpt_store_s_reg[3]),
        .O(\data_out_s[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out_s[31]_i_9 
       (.I0(cpt_store_s_reg[3]),
        .I1(cpt_store_s_reg[4]),
        .O(\data_out_s[31]_i_9_n_0 ));
  FDRE \data_out_s_reg[0] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [0]),
        .Q(data_o[0]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[10] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [10]),
        .Q(data_o[10]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[11] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [11]),
        .Q(data_o[11]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[12] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [12]),
        .Q(data_o[12]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[13] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [13]),
        .Q(data_o[13]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[14] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [14]),
        .Q(data_o[14]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[15] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [15]),
        .Q(data_o[15]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[16] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [16]),
        .Q(data_o[16]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[17] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [17]),
        .Q(data_o[17]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[18] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [18]),
        .Q(data_o[18]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[19] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [19]),
        .Q(data_o[19]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[1] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [1]),
        .Q(data_o[1]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[20] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [20]),
        .Q(data_o[20]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[21] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [21]),
        .Q(data_o[21]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[22] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [22]),
        .Q(data_o[22]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[23] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [23]),
        .Q(data_o[23]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[24] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [24]),
        .Q(data_o[24]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[25] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [25]),
        .Q(data_o[25]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[26] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [26]),
        .Q(data_o[26]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[27] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [27]),
        .Q(data_o[27]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[28] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [28]),
        .Q(data_o[28]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[29] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [29]),
        .Q(data_o[29]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[2] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [2]),
        .Q(data_o[2]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[30] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [30]),
        .Q(data_o[30]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[31] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [31]),
        .Q(data_o[31]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[3] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [3]),
        .Q(data_o[3]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[4] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [4]),
        .Q(data_o[4]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[5] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [5]),
        .Q(data_o[5]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[6] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [6]),
        .Q(data_o[6]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[7] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [7]),
        .Q(data_o[7]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[8] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [8]),
        .Q(data_o[8]),
        .R(data_rst_i));
  FDRE \data_out_s_reg[9] 
       (.C(data_clk_i),
        .CE(data_en_next),
        .D(\data_s[24]_0 [9]),
        .Q(data_o[9]),
        .R(data_rst_i));
  FDRE end_delay_macc_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(end_macc_s__0),
        .Q(end_next_s),
        .R(data_rst_i));
  LUT5 #(
    .INIT(32'h00000020)) 
    end_macc_s
       (.I0(\cpt_s_reg_n_0_[4] ),
        .I1(\cpt_s_reg_n_0_[2] ),
        .I2(\cpt_s_reg_n_0_[3] ),
        .I3(\cpt_s_reg_n_0_[1] ),
        .I4(\cpt_s_reg_n_0_[0] ),
        .O(end_macc_s__0));
  FDRE \end_s_reg[0] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s),
        .Q(end_next_s_0[1]),
        .R(data_rst_i));
  FDRE \end_s_reg[10] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[10]),
        .Q(end_next_s_0[11]),
        .R(data_rst_i));
  FDRE \end_s_reg[11] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[11]),
        .Q(end_next_s_0[12]),
        .R(data_rst_i));
  FDRE \end_s_reg[12] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[12]),
        .Q(end_next_s_0[13]),
        .R(data_rst_i));
  FDRE \end_s_reg[13] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[13]),
        .Q(end_next_s_0[14]),
        .R(data_rst_i));
  FDRE \end_s_reg[14] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[14]),
        .Q(end_next_s_0[15]),
        .R(data_rst_i));
  FDRE \end_s_reg[15] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[15]),
        .Q(end_next_s_0[16]),
        .R(data_rst_i));
  FDRE \end_s_reg[16] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[16]),
        .Q(end_next_s_0[17]),
        .R(data_rst_i));
  FDRE \end_s_reg[17] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[17]),
        .Q(end_next_s_0[18]),
        .R(data_rst_i));
  FDRE \end_s_reg[18] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[18]),
        .Q(end_next_s_0[19]),
        .R(data_rst_i));
  FDRE \end_s_reg[19] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[19]),
        .Q(end_next_s_0[20]),
        .R(data_rst_i));
  FDRE \end_s_reg[1] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[1]),
        .Q(end_next_s_0[2]),
        .R(data_rst_i));
  FDRE \end_s_reg[20] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[20]),
        .Q(end_next_s_0[21]),
        .R(data_rst_i));
  FDRE \end_s_reg[21] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[21]),
        .Q(end_next_s_0[22]),
        .R(data_rst_i));
  FDRE \end_s_reg[22] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[22]),
        .Q(end_next_s_0[23]),
        .R(data_rst_i));
  FDRE \end_s_reg[23] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[23]),
        .Q(end_next_s_0[24]),
        .R(data_rst_i));
  FDRE \end_s_reg[24] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[24]),
        .Q(\end_s_reg_n_0_[24] ),
        .R(data_rst_i));
  FDRE \end_s_reg[2] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[2]),
        .Q(end_next_s_0[3]),
        .R(data_rst_i));
  FDRE \end_s_reg[3] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[3]),
        .Q(end_next_s_0[4]),
        .R(data_rst_i));
  FDRE \end_s_reg[4] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[4]),
        .Q(end_next_s_0[5]),
        .R(data_rst_i));
  FDRE \end_s_reg[5] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[5]),
        .Q(end_next_s_0[6]),
        .R(data_rst_i));
  FDRE \end_s_reg[6] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[6]),
        .Q(end_next_s_0[7]),
        .R(data_rst_i));
  FDRE \end_s_reg[7] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[7]),
        .Q(end_next_s_0[8]),
        .R(data_rst_i));
  FDRE \end_s_reg[8] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[8]),
        .Q(end_next_s_0[9]),
        .R(data_rst_i));
  FDRE \end_s_reg[9] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(end_next_s_0[9]),
        .Q(end_next_s_0[10]),
        .R(data_rst_i));
  double_iq_pid_vco_firReal_0_0_firReal_proc \gen_macc[0].logic_inst 
       (.DOBDO(coeff_s),
        .E(data_out_en_s_45),
        .Q(end_next_s_0[1]),
        .data_clk_i(data_clk_i),
        .data_en_s(data_en_s[0]),
        .data_en_s_0(data_en_s_46),
        .data_en_s_reg_0(data_out_en_s_43),
        .data_en_s_reg_1(data_out_en_s_41),
        .data_en_s_reg_10(data_out_en_s_23),
        .data_en_s_reg_11(data_out_en_s_21),
        .data_en_s_reg_12(data_out_en_s_19),
        .data_en_s_reg_13(data_out_en_s_17),
        .data_en_s_reg_14(data_out_en_s_15),
        .data_en_s_reg_15(data_out_en_s_13),
        .data_en_s_reg_16(data_out_en_s_11),
        .data_en_s_reg_17(data_out_en_s_9),
        .data_en_s_reg_18(data_out_en_s_7),
        .data_en_s_reg_19(data_out_en_s_5),
        .data_en_s_reg_2(data_out_en_s_39),
        .data_en_s_reg_20(data_out_en_s_3),
        .data_en_s_reg_21(data_out_en_s_1),
        .data_en_s_reg_22(data_out_en_s),
        .data_en_s_reg_3(data_out_en_s_37),
        .data_en_s_reg_4(data_out_en_s_35),
        .data_en_s_reg_5(data_out_en_s_33),
        .data_en_s_reg_6(data_out_en_s_31),
        .data_en_s_reg_7(data_out_en_s_29),
        .data_en_s_reg_8(data_out_en_s_27),
        .data_en_s_reg_9(data_out_en_s_25),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_66),
        .end_s_24(end_s_78),
        .end_s_26(end_s_80),
        .end_s_28(end_s_82),
        .end_s_30(end_s_84),
        .end_s_32(end_s_86),
        .end_s_34(end_s_88),
        .end_s_36(end_s_90),
        .end_s_38(end_s_92),
        .end_s_40(end_s),
        .end_s_42(end_s_48),
        .end_s_44(end_s_50),
        .end_s_46(end_s_52),
        .end_s_48(end_s_54),
        .end_s_50(end_s_56),
        .end_s_52(end_s_58),
        .end_s_54(end_s_60),
        .end_s_56(end_s_62),
        .end_s_58(end_s_64),
        .end_s_60(end_s_68),
        .end_s_62(end_s_70),
        .end_s_64(end_s_72),
        .end_s_66(end_s_74),
        .end_s_68(end_s_76),
        .\final_res_s_reg[31]_0 (final_res_s),
        .ready_s(ready_s_65),
        .ready_s_25(ready_s_77),
        .ready_s_27(ready_s_79),
        .ready_s_29(ready_s_81),
        .ready_s_31(ready_s_83),
        .ready_s_33(ready_s_85),
        .ready_s_35(ready_s_87),
        .ready_s_37(ready_s_89),
        .ready_s_39(ready_s_91),
        .ready_s_41(ready_s),
        .ready_s_43(ready_s_47),
        .ready_s_45(ready_s_49),
        .ready_s_47(ready_s_51),
        .ready_s_49(ready_s_53),
        .ready_s_51(ready_s_55),
        .ready_s_53(ready_s_57),
        .ready_s_55(ready_s_59),
        .ready_s_57(ready_s_61),
        .ready_s_59(ready_s_63),
        .ready_s_61(ready_s_67),
        .ready_s_63(ready_s_69),
        .ready_s_65(ready_s_71),
        .ready_s_67(ready_s_73),
        .ready_s_69(ready_s_75),
        .ready_s_reg_0(ready_next_s[1]),
        .res_s0(res_s0_44),
        .res_s0_1(res_s0_42),
        .res_s0_10(res_s0_24),
        .res_s0_11(res_s0_22),
        .res_s0_12(res_s0_20),
        .res_s0_13(res_s0_18),
        .res_s0_14(res_s0_16),
        .res_s0_15(res_s0_14),
        .res_s0_16(res_s0_12),
        .res_s0_17(res_s0_10),
        .res_s0_18(res_s0_8),
        .res_s0_19(res_s0_6),
        .res_s0_2(res_s0_40),
        .res_s0_20(res_s0_4),
        .res_s0_21(res_s0_2),
        .res_s0_22(res_s0_0),
        .res_s0_23(res_s0),
        .res_s0_3(res_s0_38),
        .res_s0_4(res_s0_36),
        .res_s0_5(res_s0_34),
        .res_s0_6(res_s0_32),
        .res_s0_7(res_s0_30),
        .res_s0_8(res_s0_28),
        .res_s0_9(res_s0_26));
  double_iq_pid_vco_firReal_0_0_firReal_proc_0 \gen_macc[10].logic_inst 
       (.ACOUT({\gen_macc[10].logic_inst_n_2 ,\gen_macc[10].logic_inst_n_3 ,\gen_macc[10].logic_inst_n_4 ,\gen_macc[10].logic_inst_n_5 ,\gen_macc[10].logic_inst_n_6 ,\gen_macc[10].logic_inst_n_7 ,\gen_macc[10].logic_inst_n_8 ,\gen_macc[10].logic_inst_n_9 ,\gen_macc[10].logic_inst_n_10 ,\gen_macc[10].logic_inst_n_11 ,\gen_macc[10].logic_inst_n_12 ,\gen_macc[10].logic_inst_n_13 ,\gen_macc[10].logic_inst_n_14 ,\gen_macc[10].logic_inst_n_15 ,\gen_macc[10].logic_inst_n_16 ,\gen_macc[10].logic_inst_n_17 ,\gen_macc[10].logic_inst_n_18 ,\gen_macc[10].logic_inst_n_19 ,\gen_macc[10].logic_inst_n_20 ,\gen_macc[10].logic_inst_n_21 ,\gen_macc[10].logic_inst_n_22 ,\gen_macc[10].logic_inst_n_23 ,\gen_macc[10].logic_inst_n_24 ,\gen_macc[10].logic_inst_n_25 ,\gen_macc[10].logic_inst_n_26 ,\gen_macc[10].logic_inst_n_27 ,\gen_macc[10].logic_inst_n_28 ,\gen_macc[10].logic_inst_n_29 ,\gen_macc[10].logic_inst_n_30 ,\gen_macc[10].logic_inst_n_31 }),
        .E(data_out_en_s_27),
        .Q(end_next_s_0[11]),
        .data_clk_i(data_clk_i),
        .data_en_s(data_en_s[10]),
        .data_en_s_0(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s),
        .\final_res_s_reg[31]_0 ({\gen_macc[10].logic_inst_n_33 ,\gen_macc[10].logic_inst_n_34 ,\gen_macc[10].logic_inst_n_35 ,\gen_macc[10].logic_inst_n_36 ,\gen_macc[10].logic_inst_n_37 ,\gen_macc[10].logic_inst_n_38 ,\gen_macc[10].logic_inst_n_39 ,\gen_macc[10].logic_inst_n_40 ,\gen_macc[10].logic_inst_n_41 ,\gen_macc[10].logic_inst_n_42 ,\gen_macc[10].logic_inst_n_43 ,\gen_macc[10].logic_inst_n_44 ,\gen_macc[10].logic_inst_n_45 ,\gen_macc[10].logic_inst_n_46 ,\gen_macc[10].logic_inst_n_47 ,\gen_macc[10].logic_inst_n_48 ,\gen_macc[10].logic_inst_n_49 ,\gen_macc[10].logic_inst_n_50 ,\gen_macc[10].logic_inst_n_51 ,\gen_macc[10].logic_inst_n_52 ,\gen_macc[10].logic_inst_n_53 ,\gen_macc[10].logic_inst_n_54 ,\gen_macc[10].logic_inst_n_55 ,\gen_macc[10].logic_inst_n_56 ,\gen_macc[10].logic_inst_n_57 ,\gen_macc[10].logic_inst_n_58 ,\gen_macc[10].logic_inst_n_59 ,\gen_macc[10].logic_inst_n_60 ,\gen_macc[10].logic_inst_n_61 ,\gen_macc[10].logic_inst_n_62 ,\gen_macc[10].logic_inst_n_63 ,\gen_macc[10].logic_inst_n_64 }),
        .ready_s(ready_s),
        .ready_s_reg_0(ready_next_s[11]),
        .res_s0(res_s0_26),
        .res_s_reg_0({\gen_macc[9].logic_inst_n_2 ,\gen_macc[9].logic_inst_n_3 ,\gen_macc[9].logic_inst_n_4 ,\gen_macc[9].logic_inst_n_5 ,\gen_macc[9].logic_inst_n_6 ,\gen_macc[9].logic_inst_n_7 ,\gen_macc[9].logic_inst_n_8 ,\gen_macc[9].logic_inst_n_9 ,\gen_macc[9].logic_inst_n_10 ,\gen_macc[9].logic_inst_n_11 ,\gen_macc[9].logic_inst_n_12 ,\gen_macc[9].logic_inst_n_13 ,\gen_macc[9].logic_inst_n_14 ,\gen_macc[9].logic_inst_n_15 ,\gen_macc[9].logic_inst_n_16 ,\gen_macc[9].logic_inst_n_17 ,\gen_macc[9].logic_inst_n_18 ,\gen_macc[9].logic_inst_n_19 ,\gen_macc[9].logic_inst_n_20 ,\gen_macc[9].logic_inst_n_21 ,\gen_macc[9].logic_inst_n_22 ,\gen_macc[9].logic_inst_n_23 ,\gen_macc[9].logic_inst_n_24 ,\gen_macc[9].logic_inst_n_25 ,\gen_macc[9].logic_inst_n_26 ,\gen_macc[9].logic_inst_n_27 ,\gen_macc[9].logic_inst_n_28 ,\gen_macc[9].logic_inst_n_29 ,\gen_macc[9].logic_inst_n_30 ,\gen_macc[9].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_1 \gen_macc[11].logic_inst 
       (.ACOUT({\gen_macc[11].logic_inst_n_2 ,\gen_macc[11].logic_inst_n_3 ,\gen_macc[11].logic_inst_n_4 ,\gen_macc[11].logic_inst_n_5 ,\gen_macc[11].logic_inst_n_6 ,\gen_macc[11].logic_inst_n_7 ,\gen_macc[11].logic_inst_n_8 ,\gen_macc[11].logic_inst_n_9 ,\gen_macc[11].logic_inst_n_10 ,\gen_macc[11].logic_inst_n_11 ,\gen_macc[11].logic_inst_n_12 ,\gen_macc[11].logic_inst_n_13 ,\gen_macc[11].logic_inst_n_14 ,\gen_macc[11].logic_inst_n_15 ,\gen_macc[11].logic_inst_n_16 ,\gen_macc[11].logic_inst_n_17 ,\gen_macc[11].logic_inst_n_18 ,\gen_macc[11].logic_inst_n_19 ,\gen_macc[11].logic_inst_n_20 ,\gen_macc[11].logic_inst_n_21 ,\gen_macc[11].logic_inst_n_22 ,\gen_macc[11].logic_inst_n_23 ,\gen_macc[11].logic_inst_n_24 ,\gen_macc[11].logic_inst_n_25 ,\gen_macc[11].logic_inst_n_26 ,\gen_macc[11].logic_inst_n_27 ,\gen_macc[11].logic_inst_n_28 ,\gen_macc[11].logic_inst_n_29 ,\gen_macc[11].logic_inst_n_30 ,\gen_macc[11].logic_inst_n_31 }),
        .E(data_out_en_s_25),
        .Q(end_next_s_0[12]),
        .\cpt_store_s_reg[2] (\gen_macc[11].logic_inst_n_33 ),
        .\cpt_store_s_reg[2]_0 (\gen_macc[11].logic_inst_n_34 ),
        .\cpt_store_s_reg[2]_1 (\gen_macc[11].logic_inst_n_35 ),
        .\cpt_store_s_reg[2]_10 (\gen_macc[11].logic_inst_n_44 ),
        .\cpt_store_s_reg[2]_11 (\gen_macc[11].logic_inst_n_45 ),
        .\cpt_store_s_reg[2]_12 (\gen_macc[11].logic_inst_n_46 ),
        .\cpt_store_s_reg[2]_13 (\gen_macc[11].logic_inst_n_47 ),
        .\cpt_store_s_reg[2]_14 (\gen_macc[11].logic_inst_n_48 ),
        .\cpt_store_s_reg[2]_15 (\gen_macc[11].logic_inst_n_49 ),
        .\cpt_store_s_reg[2]_16 (\gen_macc[11].logic_inst_n_50 ),
        .\cpt_store_s_reg[2]_17 (\gen_macc[11].logic_inst_n_51 ),
        .\cpt_store_s_reg[2]_18 (\gen_macc[11].logic_inst_n_52 ),
        .\cpt_store_s_reg[2]_19 (\gen_macc[11].logic_inst_n_53 ),
        .\cpt_store_s_reg[2]_2 (\gen_macc[11].logic_inst_n_36 ),
        .\cpt_store_s_reg[2]_20 (\gen_macc[11].logic_inst_n_54 ),
        .\cpt_store_s_reg[2]_21 (\gen_macc[11].logic_inst_n_55 ),
        .\cpt_store_s_reg[2]_22 (\gen_macc[11].logic_inst_n_56 ),
        .\cpt_store_s_reg[2]_23 (\gen_macc[11].logic_inst_n_57 ),
        .\cpt_store_s_reg[2]_24 (\gen_macc[11].logic_inst_n_58 ),
        .\cpt_store_s_reg[2]_25 (\gen_macc[11].logic_inst_n_59 ),
        .\cpt_store_s_reg[2]_26 (\gen_macc[11].logic_inst_n_60 ),
        .\cpt_store_s_reg[2]_27 (\gen_macc[11].logic_inst_n_61 ),
        .\cpt_store_s_reg[2]_28 (\gen_macc[11].logic_inst_n_62 ),
        .\cpt_store_s_reg[2]_29 (\gen_macc[11].logic_inst_n_63 ),
        .\cpt_store_s_reg[2]_3 (\gen_macc[11].logic_inst_n_37 ),
        .\cpt_store_s_reg[2]_30 (\gen_macc[11].logic_inst_n_64 ),
        .\cpt_store_s_reg[2]_4 (\gen_macc[11].logic_inst_n_38 ),
        .\cpt_store_s_reg[2]_5 (\gen_macc[11].logic_inst_n_39 ),
        .\cpt_store_s_reg[2]_6 (\gen_macc[11].logic_inst_n_40 ),
        .\cpt_store_s_reg[2]_7 (\gen_macc[11].logic_inst_n_41 ),
        .\cpt_store_s_reg[2]_8 (\gen_macc[11].logic_inst_n_42 ),
        .\cpt_store_s_reg[2]_9 (\gen_macc[11].logic_inst_n_43 ),
        .data_clk_i(data_clk_i),
        .data_en_s(data_en_s[11]),
        .data_en_s_0(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .\data_out_s_reg[0]_i_2 (\gen_macc[15].logic_inst_n_33 ),
        .\data_out_s_reg[0]_i_6_0 (\cpt_store_s_reg[1]_rep_n_0 ),
        .\data_out_s_reg[10]_i_2 (\gen_macc[15].logic_inst_n_43 ),
        .\data_out_s_reg[10]_i_6_0 (\cpt_store_s_reg[0]_rep_n_0 ),
        .\data_out_s_reg[11]_i_2 (\gen_macc[15].logic_inst_n_44 ),
        .\data_out_s_reg[12]_i_2 (\gen_macc[15].logic_inst_n_45 ),
        .\data_out_s_reg[13]_i_2 (\gen_macc[15].logic_inst_n_46 ),
        .\data_out_s_reg[14]_i_2 (\gen_macc[15].logic_inst_n_47 ),
        .\data_out_s_reg[15]_i_2 (\gen_macc[15].logic_inst_n_48 ),
        .\data_out_s_reg[16]_i_2 (\gen_macc[15].logic_inst_n_49 ),
        .\data_out_s_reg[17]_i_2 (\gen_macc[15].logic_inst_n_50 ),
        .\data_out_s_reg[18]_i_2 (\gen_macc[15].logic_inst_n_51 ),
        .\data_out_s_reg[19]_i_2 (\gen_macc[15].logic_inst_n_52 ),
        .\data_out_s_reg[1]_i_2 (\gen_macc[15].logic_inst_n_34 ),
        .\data_out_s_reg[20]_i_2 (\gen_macc[15].logic_inst_n_53 ),
        .\data_out_s_reg[21]_i_2 (\gen_macc[15].logic_inst_n_54 ),
        .\data_out_s_reg[22]_i_2 (\gen_macc[15].logic_inst_n_55 ),
        .\data_out_s_reg[23]_i_2 (\gen_macc[15].logic_inst_n_56 ),
        .\data_out_s_reg[24]_i_2 (\gen_macc[15].logic_inst_n_57 ),
        .\data_out_s_reg[25]_i_2 (\gen_macc[15].logic_inst_n_58 ),
        .\data_out_s_reg[26]_i_2 (\gen_macc[15].logic_inst_n_59 ),
        .\data_out_s_reg[27]_i_2 (\gen_macc[15].logic_inst_n_60 ),
        .\data_out_s_reg[28]_i_2 (\gen_macc[15].logic_inst_n_61 ),
        .\data_out_s_reg[29]_i_2 (\gen_macc[15].logic_inst_n_62 ),
        .\data_out_s_reg[2]_i_2 (\gen_macc[15].logic_inst_n_35 ),
        .\data_out_s_reg[30]_i_2 (\gen_macc[15].logic_inst_n_63 ),
        .\data_out_s_reg[31]_i_14_0 ({\gen_macc[10].logic_inst_n_33 ,\gen_macc[10].logic_inst_n_34 ,\gen_macc[10].logic_inst_n_35 ,\gen_macc[10].logic_inst_n_36 ,\gen_macc[10].logic_inst_n_37 ,\gen_macc[10].logic_inst_n_38 ,\gen_macc[10].logic_inst_n_39 ,\gen_macc[10].logic_inst_n_40 ,\gen_macc[10].logic_inst_n_41 ,\gen_macc[10].logic_inst_n_42 ,\gen_macc[10].logic_inst_n_43 ,\gen_macc[10].logic_inst_n_44 ,\gen_macc[10].logic_inst_n_45 ,\gen_macc[10].logic_inst_n_46 ,\gen_macc[10].logic_inst_n_47 ,\gen_macc[10].logic_inst_n_48 ,\gen_macc[10].logic_inst_n_49 ,\gen_macc[10].logic_inst_n_50 ,\gen_macc[10].logic_inst_n_51 ,\gen_macc[10].logic_inst_n_52 ,\gen_macc[10].logic_inst_n_53 ,\gen_macc[10].logic_inst_n_54 ,\gen_macc[10].logic_inst_n_55 ,\gen_macc[10].logic_inst_n_56 ,\gen_macc[10].logic_inst_n_57 ,\gen_macc[10].logic_inst_n_58 ,\gen_macc[10].logic_inst_n_59 ,\gen_macc[10].logic_inst_n_60 ,\gen_macc[10].logic_inst_n_61 ,\gen_macc[10].logic_inst_n_62 ,\gen_macc[10].logic_inst_n_63 ,\gen_macc[10].logic_inst_n_64 }),
        .\data_out_s_reg[31]_i_14_1 ({\gen_macc[9].logic_inst_n_33 ,\gen_macc[9].logic_inst_n_34 ,\gen_macc[9].logic_inst_n_35 ,\gen_macc[9].logic_inst_n_36 ,\gen_macc[9].logic_inst_n_37 ,\gen_macc[9].logic_inst_n_38 ,\gen_macc[9].logic_inst_n_39 ,\gen_macc[9].logic_inst_n_40 ,\gen_macc[9].logic_inst_n_41 ,\gen_macc[9].logic_inst_n_42 ,\gen_macc[9].logic_inst_n_43 ,\gen_macc[9].logic_inst_n_44 ,\gen_macc[9].logic_inst_n_45 ,\gen_macc[9].logic_inst_n_46 ,\gen_macc[9].logic_inst_n_47 ,\gen_macc[9].logic_inst_n_48 ,\gen_macc[9].logic_inst_n_49 ,\gen_macc[9].logic_inst_n_50 ,\gen_macc[9].logic_inst_n_51 ,\gen_macc[9].logic_inst_n_52 ,\gen_macc[9].logic_inst_n_53 ,\gen_macc[9].logic_inst_n_54 ,\gen_macc[9].logic_inst_n_55 ,\gen_macc[9].logic_inst_n_56 ,\gen_macc[9].logic_inst_n_57 ,\gen_macc[9].logic_inst_n_58 ,\gen_macc[9].logic_inst_n_59 ,\gen_macc[9].logic_inst_n_60 ,\gen_macc[9].logic_inst_n_61 ,\gen_macc[9].logic_inst_n_62 ,\gen_macc[9].logic_inst_n_63 ,\gen_macc[9].logic_inst_n_64 }),
        .\data_out_s_reg[31]_i_14_2 ({\gen_macc[8].logic_inst_n_33 ,\gen_macc[8].logic_inst_n_34 ,\gen_macc[8].logic_inst_n_35 ,\gen_macc[8].logic_inst_n_36 ,\gen_macc[8].logic_inst_n_37 ,\gen_macc[8].logic_inst_n_38 ,\gen_macc[8].logic_inst_n_39 ,\gen_macc[8].logic_inst_n_40 ,\gen_macc[8].logic_inst_n_41 ,\gen_macc[8].logic_inst_n_42 ,\gen_macc[8].logic_inst_n_43 ,\gen_macc[8].logic_inst_n_44 ,\gen_macc[8].logic_inst_n_45 ,\gen_macc[8].logic_inst_n_46 ,\gen_macc[8].logic_inst_n_47 ,\gen_macc[8].logic_inst_n_48 ,\gen_macc[8].logic_inst_n_49 ,\gen_macc[8].logic_inst_n_50 ,\gen_macc[8].logic_inst_n_51 ,\gen_macc[8].logic_inst_n_52 ,\gen_macc[8].logic_inst_n_53 ,\gen_macc[8].logic_inst_n_54 ,\gen_macc[8].logic_inst_n_55 ,\gen_macc[8].logic_inst_n_56 ,\gen_macc[8].logic_inst_n_57 ,\gen_macc[8].logic_inst_n_58 ,\gen_macc[8].logic_inst_n_59 ,\gen_macc[8].logic_inst_n_60 ,\gen_macc[8].logic_inst_n_61 ,\gen_macc[8].logic_inst_n_62 ,\gen_macc[8].logic_inst_n_63 ,\gen_macc[8].logic_inst_n_64 }),
        .\data_out_s_reg[31]_i_8 (cpt_store_s_reg[2:0]),
        .\data_out_s_reg[31]_i_8_0 (\gen_macc[15].logic_inst_n_64 ),
        .\data_out_s_reg[3]_i_2 (\gen_macc[15].logic_inst_n_36 ),
        .\data_out_s_reg[4]_i_2 (\gen_macc[15].logic_inst_n_37 ),
        .\data_out_s_reg[5]_i_2 (\gen_macc[15].logic_inst_n_38 ),
        .\data_out_s_reg[6]_i_2 (\gen_macc[15].logic_inst_n_39 ),
        .\data_out_s_reg[7]_i_2 (\gen_macc[15].logic_inst_n_40 ),
        .\data_out_s_reg[8]_i_2 (\gen_macc[15].logic_inst_n_41 ),
        .\data_out_s_reg[9]_i_2 (\gen_macc[15].logic_inst_n_42 ),
        .data_rst_i(data_rst_i),
        .end_s(end_s_48),
        .ready_s(ready_s_47),
        .ready_s_reg_0(ready_next_s[12]),
        .res_s0(res_s0_24),
        .res_s_reg_0({\gen_macc[10].logic_inst_n_2 ,\gen_macc[10].logic_inst_n_3 ,\gen_macc[10].logic_inst_n_4 ,\gen_macc[10].logic_inst_n_5 ,\gen_macc[10].logic_inst_n_6 ,\gen_macc[10].logic_inst_n_7 ,\gen_macc[10].logic_inst_n_8 ,\gen_macc[10].logic_inst_n_9 ,\gen_macc[10].logic_inst_n_10 ,\gen_macc[10].logic_inst_n_11 ,\gen_macc[10].logic_inst_n_12 ,\gen_macc[10].logic_inst_n_13 ,\gen_macc[10].logic_inst_n_14 ,\gen_macc[10].logic_inst_n_15 ,\gen_macc[10].logic_inst_n_16 ,\gen_macc[10].logic_inst_n_17 ,\gen_macc[10].logic_inst_n_18 ,\gen_macc[10].logic_inst_n_19 ,\gen_macc[10].logic_inst_n_20 ,\gen_macc[10].logic_inst_n_21 ,\gen_macc[10].logic_inst_n_22 ,\gen_macc[10].logic_inst_n_23 ,\gen_macc[10].logic_inst_n_24 ,\gen_macc[10].logic_inst_n_25 ,\gen_macc[10].logic_inst_n_26 ,\gen_macc[10].logic_inst_n_27 ,\gen_macc[10].logic_inst_n_28 ,\gen_macc[10].logic_inst_n_29 ,\gen_macc[10].logic_inst_n_30 ,\gen_macc[10].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_2 \gen_macc[12].logic_inst 
       (.ACOUT({\gen_macc[12].logic_inst_n_1 ,\gen_macc[12].logic_inst_n_2 ,\gen_macc[12].logic_inst_n_3 ,\gen_macc[12].logic_inst_n_4 ,\gen_macc[12].logic_inst_n_5 ,\gen_macc[12].logic_inst_n_6 ,\gen_macc[12].logic_inst_n_7 ,\gen_macc[12].logic_inst_n_8 ,\gen_macc[12].logic_inst_n_9 ,\gen_macc[12].logic_inst_n_10 ,\gen_macc[12].logic_inst_n_11 ,\gen_macc[12].logic_inst_n_12 ,\gen_macc[12].logic_inst_n_13 ,\gen_macc[12].logic_inst_n_14 ,\gen_macc[12].logic_inst_n_15 ,\gen_macc[12].logic_inst_n_16 ,\gen_macc[12].logic_inst_n_17 ,\gen_macc[12].logic_inst_n_18 ,\gen_macc[12].logic_inst_n_19 ,\gen_macc[12].logic_inst_n_20 ,\gen_macc[12].logic_inst_n_21 ,\gen_macc[12].logic_inst_n_22 ,\gen_macc[12].logic_inst_n_23 ,\gen_macc[12].logic_inst_n_24 ,\gen_macc[12].logic_inst_n_25 ,\gen_macc[12].logic_inst_n_26 ,\gen_macc[12].logic_inst_n_27 ,\gen_macc[12].logic_inst_n_28 ,\gen_macc[12].logic_inst_n_29 ,\gen_macc[12].logic_inst_n_30 }),
        .E(data_out_en_s_23),
        .Q(end_next_s_0[13]),
        .\cpt_store_s_reg[0]_rep (data_en_s[11:7]),
        .data_clk_i(data_clk_i),
        .data_en_o_reg_0(\gen_macc[12].logic_inst_n_32 ),
        .data_en_s(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_50),
        .\final_res_s_reg[31]_0 ({\gen_macc[12].logic_inst_n_33 ,\gen_macc[12].logic_inst_n_34 ,\gen_macc[12].logic_inst_n_35 ,\gen_macc[12].logic_inst_n_36 ,\gen_macc[12].logic_inst_n_37 ,\gen_macc[12].logic_inst_n_38 ,\gen_macc[12].logic_inst_n_39 ,\gen_macc[12].logic_inst_n_40 ,\gen_macc[12].logic_inst_n_41 ,\gen_macc[12].logic_inst_n_42 ,\gen_macc[12].logic_inst_n_43 ,\gen_macc[12].logic_inst_n_44 ,\gen_macc[12].logic_inst_n_45 ,\gen_macc[12].logic_inst_n_46 ,\gen_macc[12].logic_inst_n_47 ,\gen_macc[12].logic_inst_n_48 ,\gen_macc[12].logic_inst_n_49 ,\gen_macc[12].logic_inst_n_50 ,\gen_macc[12].logic_inst_n_51 ,\gen_macc[12].logic_inst_n_52 ,\gen_macc[12].logic_inst_n_53 ,\gen_macc[12].logic_inst_n_54 ,\gen_macc[12].logic_inst_n_55 ,\gen_macc[12].logic_inst_n_56 ,\gen_macc[12].logic_inst_n_57 ,\gen_macc[12].logic_inst_n_58 ,\gen_macc[12].logic_inst_n_59 ,\gen_macc[12].logic_inst_n_60 ,\gen_macc[12].logic_inst_n_61 ,\gen_macc[12].logic_inst_n_62 ,\gen_macc[12].logic_inst_n_63 ,\gen_macc[12].logic_inst_n_64 }),
        .ready_s(ready_s_49),
        .ready_s_reg_0(ready_next_s[13]),
        .res_s0(res_s0_22),
        .res_s_reg_0({\gen_macc[11].logic_inst_n_2 ,\gen_macc[11].logic_inst_n_3 ,\gen_macc[11].logic_inst_n_4 ,\gen_macc[11].logic_inst_n_5 ,\gen_macc[11].logic_inst_n_6 ,\gen_macc[11].logic_inst_n_7 ,\gen_macc[11].logic_inst_n_8 ,\gen_macc[11].logic_inst_n_9 ,\gen_macc[11].logic_inst_n_10 ,\gen_macc[11].logic_inst_n_11 ,\gen_macc[11].logic_inst_n_12 ,\gen_macc[11].logic_inst_n_13 ,\gen_macc[11].logic_inst_n_14 ,\gen_macc[11].logic_inst_n_15 ,\gen_macc[11].logic_inst_n_16 ,\gen_macc[11].logic_inst_n_17 ,\gen_macc[11].logic_inst_n_18 ,\gen_macc[11].logic_inst_n_19 ,\gen_macc[11].logic_inst_n_20 ,\gen_macc[11].logic_inst_n_21 ,\gen_macc[11].logic_inst_n_22 ,\gen_macc[11].logic_inst_n_23 ,\gen_macc[11].logic_inst_n_24 ,\gen_macc[11].logic_inst_n_25 ,\gen_macc[11].logic_inst_n_26 ,\gen_macc[11].logic_inst_n_27 ,\gen_macc[11].logic_inst_n_28 ,\gen_macc[11].logic_inst_n_29 ,\gen_macc[11].logic_inst_n_30 ,\gen_macc[11].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_3 \gen_macc[13].logic_inst 
       (.ACOUT({\gen_macc[13].logic_inst_n_2 ,\gen_macc[13].logic_inst_n_3 ,\gen_macc[13].logic_inst_n_4 ,\gen_macc[13].logic_inst_n_5 ,\gen_macc[13].logic_inst_n_6 ,\gen_macc[13].logic_inst_n_7 ,\gen_macc[13].logic_inst_n_8 ,\gen_macc[13].logic_inst_n_9 ,\gen_macc[13].logic_inst_n_10 ,\gen_macc[13].logic_inst_n_11 ,\gen_macc[13].logic_inst_n_12 ,\gen_macc[13].logic_inst_n_13 ,\gen_macc[13].logic_inst_n_14 ,\gen_macc[13].logic_inst_n_15 ,\gen_macc[13].logic_inst_n_16 ,\gen_macc[13].logic_inst_n_17 ,\gen_macc[13].logic_inst_n_18 ,\gen_macc[13].logic_inst_n_19 ,\gen_macc[13].logic_inst_n_20 ,\gen_macc[13].logic_inst_n_21 ,\gen_macc[13].logic_inst_n_22 ,\gen_macc[13].logic_inst_n_23 ,\gen_macc[13].logic_inst_n_24 ,\gen_macc[13].logic_inst_n_25 ,\gen_macc[13].logic_inst_n_26 ,\gen_macc[13].logic_inst_n_27 ,\gen_macc[13].logic_inst_n_28 ,\gen_macc[13].logic_inst_n_29 ,\gen_macc[13].logic_inst_n_30 ,\gen_macc[13].logic_inst_n_31 }),
        .E(data_out_en_s_21),
        .Q(end_next_s_0[14]),
        .data_clk_i(data_clk_i),
        .data_en_s(data_en_s[13]),
        .data_en_s_0(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_52),
        .\final_res_s_reg[31]_0 ({\gen_macc[13].logic_inst_n_33 ,\gen_macc[13].logic_inst_n_34 ,\gen_macc[13].logic_inst_n_35 ,\gen_macc[13].logic_inst_n_36 ,\gen_macc[13].logic_inst_n_37 ,\gen_macc[13].logic_inst_n_38 ,\gen_macc[13].logic_inst_n_39 ,\gen_macc[13].logic_inst_n_40 ,\gen_macc[13].logic_inst_n_41 ,\gen_macc[13].logic_inst_n_42 ,\gen_macc[13].logic_inst_n_43 ,\gen_macc[13].logic_inst_n_44 ,\gen_macc[13].logic_inst_n_45 ,\gen_macc[13].logic_inst_n_46 ,\gen_macc[13].logic_inst_n_47 ,\gen_macc[13].logic_inst_n_48 ,\gen_macc[13].logic_inst_n_49 ,\gen_macc[13].logic_inst_n_50 ,\gen_macc[13].logic_inst_n_51 ,\gen_macc[13].logic_inst_n_52 ,\gen_macc[13].logic_inst_n_53 ,\gen_macc[13].logic_inst_n_54 ,\gen_macc[13].logic_inst_n_55 ,\gen_macc[13].logic_inst_n_56 ,\gen_macc[13].logic_inst_n_57 ,\gen_macc[13].logic_inst_n_58 ,\gen_macc[13].logic_inst_n_59 ,\gen_macc[13].logic_inst_n_60 ,\gen_macc[13].logic_inst_n_61 ,\gen_macc[13].logic_inst_n_62 ,\gen_macc[13].logic_inst_n_63 ,\gen_macc[13].logic_inst_n_64 }),
        .ready_s(ready_s_51),
        .ready_s_reg_0(ready_next_s[14]),
        .res_s0(res_s0_20),
        .res_s_reg_0({\gen_macc[12].logic_inst_n_1 ,\gen_macc[12].logic_inst_n_2 ,\gen_macc[12].logic_inst_n_3 ,\gen_macc[12].logic_inst_n_4 ,\gen_macc[12].logic_inst_n_5 ,\gen_macc[12].logic_inst_n_6 ,\gen_macc[12].logic_inst_n_7 ,\gen_macc[12].logic_inst_n_8 ,\gen_macc[12].logic_inst_n_9 ,\gen_macc[12].logic_inst_n_10 ,\gen_macc[12].logic_inst_n_11 ,\gen_macc[12].logic_inst_n_12 ,\gen_macc[12].logic_inst_n_13 ,\gen_macc[12].logic_inst_n_14 ,\gen_macc[12].logic_inst_n_15 ,\gen_macc[12].logic_inst_n_16 ,\gen_macc[12].logic_inst_n_17 ,\gen_macc[12].logic_inst_n_18 ,\gen_macc[12].logic_inst_n_19 ,\gen_macc[12].logic_inst_n_20 ,\gen_macc[12].logic_inst_n_21 ,\gen_macc[12].logic_inst_n_22 ,\gen_macc[12].logic_inst_n_23 ,\gen_macc[12].logic_inst_n_24 ,\gen_macc[12].logic_inst_n_25 ,\gen_macc[12].logic_inst_n_26 ,\gen_macc[12].logic_inst_n_27 ,\gen_macc[12].logic_inst_n_28 ,\gen_macc[12].logic_inst_n_29 ,\gen_macc[12].logic_inst_n_30 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_4 \gen_macc[14].logic_inst 
       (.ACOUT({\gen_macc[14].logic_inst_n_2 ,\gen_macc[14].logic_inst_n_3 ,\gen_macc[14].logic_inst_n_4 ,\gen_macc[14].logic_inst_n_5 ,\gen_macc[14].logic_inst_n_6 ,\gen_macc[14].logic_inst_n_7 ,\gen_macc[14].logic_inst_n_8 ,\gen_macc[14].logic_inst_n_9 ,\gen_macc[14].logic_inst_n_10 ,\gen_macc[14].logic_inst_n_11 ,\gen_macc[14].logic_inst_n_12 ,\gen_macc[14].logic_inst_n_13 ,\gen_macc[14].logic_inst_n_14 ,\gen_macc[14].logic_inst_n_15 ,\gen_macc[14].logic_inst_n_16 ,\gen_macc[14].logic_inst_n_17 ,\gen_macc[14].logic_inst_n_18 ,\gen_macc[14].logic_inst_n_19 ,\gen_macc[14].logic_inst_n_20 ,\gen_macc[14].logic_inst_n_21 ,\gen_macc[14].logic_inst_n_22 ,\gen_macc[14].logic_inst_n_23 ,\gen_macc[14].logic_inst_n_24 ,\gen_macc[14].logic_inst_n_25 ,\gen_macc[14].logic_inst_n_26 ,\gen_macc[14].logic_inst_n_27 ,\gen_macc[14].logic_inst_n_28 ,\gen_macc[14].logic_inst_n_29 ,\gen_macc[14].logic_inst_n_30 ,\gen_macc[14].logic_inst_n_31 }),
        .E(data_out_en_s_19),
        .Q(end_next_s_0[15]),
        .data_clk_i(data_clk_i),
        .data_en_s(data_en_s[14]),
        .data_en_s_0(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_54),
        .\final_res_s_reg[31]_0 ({\gen_macc[14].logic_inst_n_33 ,\gen_macc[14].logic_inst_n_34 ,\gen_macc[14].logic_inst_n_35 ,\gen_macc[14].logic_inst_n_36 ,\gen_macc[14].logic_inst_n_37 ,\gen_macc[14].logic_inst_n_38 ,\gen_macc[14].logic_inst_n_39 ,\gen_macc[14].logic_inst_n_40 ,\gen_macc[14].logic_inst_n_41 ,\gen_macc[14].logic_inst_n_42 ,\gen_macc[14].logic_inst_n_43 ,\gen_macc[14].logic_inst_n_44 ,\gen_macc[14].logic_inst_n_45 ,\gen_macc[14].logic_inst_n_46 ,\gen_macc[14].logic_inst_n_47 ,\gen_macc[14].logic_inst_n_48 ,\gen_macc[14].logic_inst_n_49 ,\gen_macc[14].logic_inst_n_50 ,\gen_macc[14].logic_inst_n_51 ,\gen_macc[14].logic_inst_n_52 ,\gen_macc[14].logic_inst_n_53 ,\gen_macc[14].logic_inst_n_54 ,\gen_macc[14].logic_inst_n_55 ,\gen_macc[14].logic_inst_n_56 ,\gen_macc[14].logic_inst_n_57 ,\gen_macc[14].logic_inst_n_58 ,\gen_macc[14].logic_inst_n_59 ,\gen_macc[14].logic_inst_n_60 ,\gen_macc[14].logic_inst_n_61 ,\gen_macc[14].logic_inst_n_62 ,\gen_macc[14].logic_inst_n_63 ,\gen_macc[14].logic_inst_n_64 }),
        .ready_s(ready_s_53),
        .ready_s_reg_0(ready_next_s[15]),
        .res_s0(res_s0_18),
        .res_s_reg_0({\gen_macc[13].logic_inst_n_2 ,\gen_macc[13].logic_inst_n_3 ,\gen_macc[13].logic_inst_n_4 ,\gen_macc[13].logic_inst_n_5 ,\gen_macc[13].logic_inst_n_6 ,\gen_macc[13].logic_inst_n_7 ,\gen_macc[13].logic_inst_n_8 ,\gen_macc[13].logic_inst_n_9 ,\gen_macc[13].logic_inst_n_10 ,\gen_macc[13].logic_inst_n_11 ,\gen_macc[13].logic_inst_n_12 ,\gen_macc[13].logic_inst_n_13 ,\gen_macc[13].logic_inst_n_14 ,\gen_macc[13].logic_inst_n_15 ,\gen_macc[13].logic_inst_n_16 ,\gen_macc[13].logic_inst_n_17 ,\gen_macc[13].logic_inst_n_18 ,\gen_macc[13].logic_inst_n_19 ,\gen_macc[13].logic_inst_n_20 ,\gen_macc[13].logic_inst_n_21 ,\gen_macc[13].logic_inst_n_22 ,\gen_macc[13].logic_inst_n_23 ,\gen_macc[13].logic_inst_n_24 ,\gen_macc[13].logic_inst_n_25 ,\gen_macc[13].logic_inst_n_26 ,\gen_macc[13].logic_inst_n_27 ,\gen_macc[13].logic_inst_n_28 ,\gen_macc[13].logic_inst_n_29 ,\gen_macc[13].logic_inst_n_30 ,\gen_macc[13].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_5 \gen_macc[15].logic_inst 
       (.ACOUT({\gen_macc[15].logic_inst_n_1 ,\gen_macc[15].logic_inst_n_2 ,\gen_macc[15].logic_inst_n_3 ,\gen_macc[15].logic_inst_n_4 ,\gen_macc[15].logic_inst_n_5 ,\gen_macc[15].logic_inst_n_6 ,\gen_macc[15].logic_inst_n_7 ,\gen_macc[15].logic_inst_n_8 ,\gen_macc[15].logic_inst_n_9 ,\gen_macc[15].logic_inst_n_10 ,\gen_macc[15].logic_inst_n_11 ,\gen_macc[15].logic_inst_n_12 ,\gen_macc[15].logic_inst_n_13 ,\gen_macc[15].logic_inst_n_14 ,\gen_macc[15].logic_inst_n_15 ,\gen_macc[15].logic_inst_n_16 ,\gen_macc[15].logic_inst_n_17 ,\gen_macc[15].logic_inst_n_18 ,\gen_macc[15].logic_inst_n_19 ,\gen_macc[15].logic_inst_n_20 ,\gen_macc[15].logic_inst_n_21 ,\gen_macc[15].logic_inst_n_22 ,\gen_macc[15].logic_inst_n_23 ,\gen_macc[15].logic_inst_n_24 ,\gen_macc[15].logic_inst_n_25 ,\gen_macc[15].logic_inst_n_26 ,\gen_macc[15].logic_inst_n_27 ,\gen_macc[15].logic_inst_n_28 ,\gen_macc[15].logic_inst_n_29 ,\gen_macc[15].logic_inst_n_30 }),
        .E(data_out_en_s_17),
        .Q(end_next_s_0[16]),
        .\cpt_store_s_reg[0]_rep ({data_en_s[18:16],data_en_s[14:13]}),
        .data_clk_i(data_clk_i),
        .data_en_o_reg_0(\gen_macc[15].logic_inst_n_32 ),
        .data_en_s(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .\data_out_s_reg[0]_i_6 (\cpt_store_s_reg[1]_rep_n_0 ),
        .\data_out_s_reg[10]_i_6 (\cpt_store_s_reg[0]_rep_n_0 ),
        .\data_out_s_reg[31]_i_14 ({\gen_macc[14].logic_inst_n_33 ,\gen_macc[14].logic_inst_n_34 ,\gen_macc[14].logic_inst_n_35 ,\gen_macc[14].logic_inst_n_36 ,\gen_macc[14].logic_inst_n_37 ,\gen_macc[14].logic_inst_n_38 ,\gen_macc[14].logic_inst_n_39 ,\gen_macc[14].logic_inst_n_40 ,\gen_macc[14].logic_inst_n_41 ,\gen_macc[14].logic_inst_n_42 ,\gen_macc[14].logic_inst_n_43 ,\gen_macc[14].logic_inst_n_44 ,\gen_macc[14].logic_inst_n_45 ,\gen_macc[14].logic_inst_n_46 ,\gen_macc[14].logic_inst_n_47 ,\gen_macc[14].logic_inst_n_48 ,\gen_macc[14].logic_inst_n_49 ,\gen_macc[14].logic_inst_n_50 ,\gen_macc[14].logic_inst_n_51 ,\gen_macc[14].logic_inst_n_52 ,\gen_macc[14].logic_inst_n_53 ,\gen_macc[14].logic_inst_n_54 ,\gen_macc[14].logic_inst_n_55 ,\gen_macc[14].logic_inst_n_56 ,\gen_macc[14].logic_inst_n_57 ,\gen_macc[14].logic_inst_n_58 ,\gen_macc[14].logic_inst_n_59 ,\gen_macc[14].logic_inst_n_60 ,\gen_macc[14].logic_inst_n_61 ,\gen_macc[14].logic_inst_n_62 ,\gen_macc[14].logic_inst_n_63 ,\gen_macc[14].logic_inst_n_64 }),
        .\data_out_s_reg[31]_i_14_0 ({\gen_macc[13].logic_inst_n_33 ,\gen_macc[13].logic_inst_n_34 ,\gen_macc[13].logic_inst_n_35 ,\gen_macc[13].logic_inst_n_36 ,\gen_macc[13].logic_inst_n_37 ,\gen_macc[13].logic_inst_n_38 ,\gen_macc[13].logic_inst_n_39 ,\gen_macc[13].logic_inst_n_40 ,\gen_macc[13].logic_inst_n_41 ,\gen_macc[13].logic_inst_n_42 ,\gen_macc[13].logic_inst_n_43 ,\gen_macc[13].logic_inst_n_44 ,\gen_macc[13].logic_inst_n_45 ,\gen_macc[13].logic_inst_n_46 ,\gen_macc[13].logic_inst_n_47 ,\gen_macc[13].logic_inst_n_48 ,\gen_macc[13].logic_inst_n_49 ,\gen_macc[13].logic_inst_n_50 ,\gen_macc[13].logic_inst_n_51 ,\gen_macc[13].logic_inst_n_52 ,\gen_macc[13].logic_inst_n_53 ,\gen_macc[13].logic_inst_n_54 ,\gen_macc[13].logic_inst_n_55 ,\gen_macc[13].logic_inst_n_56 ,\gen_macc[13].logic_inst_n_57 ,\gen_macc[13].logic_inst_n_58 ,\gen_macc[13].logic_inst_n_59 ,\gen_macc[13].logic_inst_n_60 ,\gen_macc[13].logic_inst_n_61 ,\gen_macc[13].logic_inst_n_62 ,\gen_macc[13].logic_inst_n_63 ,\gen_macc[13].logic_inst_n_64 }),
        .\data_out_s_reg[31]_i_14_1 (cpt_store_s_reg[1:0]),
        .\data_out_s_reg[31]_i_14_2 ({\gen_macc[12].logic_inst_n_33 ,\gen_macc[12].logic_inst_n_34 ,\gen_macc[12].logic_inst_n_35 ,\gen_macc[12].logic_inst_n_36 ,\gen_macc[12].logic_inst_n_37 ,\gen_macc[12].logic_inst_n_38 ,\gen_macc[12].logic_inst_n_39 ,\gen_macc[12].logic_inst_n_40 ,\gen_macc[12].logic_inst_n_41 ,\gen_macc[12].logic_inst_n_42 ,\gen_macc[12].logic_inst_n_43 ,\gen_macc[12].logic_inst_n_44 ,\gen_macc[12].logic_inst_n_45 ,\gen_macc[12].logic_inst_n_46 ,\gen_macc[12].logic_inst_n_47 ,\gen_macc[12].logic_inst_n_48 ,\gen_macc[12].logic_inst_n_49 ,\gen_macc[12].logic_inst_n_50 ,\gen_macc[12].logic_inst_n_51 ,\gen_macc[12].logic_inst_n_52 ,\gen_macc[12].logic_inst_n_53 ,\gen_macc[12].logic_inst_n_54 ,\gen_macc[12].logic_inst_n_55 ,\gen_macc[12].logic_inst_n_56 ,\gen_macc[12].logic_inst_n_57 ,\gen_macc[12].logic_inst_n_58 ,\gen_macc[12].logic_inst_n_59 ,\gen_macc[12].logic_inst_n_60 ,\gen_macc[12].logic_inst_n_61 ,\gen_macc[12].logic_inst_n_62 ,\gen_macc[12].logic_inst_n_63 ,\gen_macc[12].logic_inst_n_64 }),
        .data_rst_i(data_rst_i),
        .end_s(end_s_56),
        .\final_res_s_reg[0]_0 (\gen_macc[15].logic_inst_n_33 ),
        .\final_res_s_reg[10]_0 (\gen_macc[15].logic_inst_n_43 ),
        .\final_res_s_reg[11]_0 (\gen_macc[15].logic_inst_n_44 ),
        .\final_res_s_reg[12]_0 (\gen_macc[15].logic_inst_n_45 ),
        .\final_res_s_reg[13]_0 (\gen_macc[15].logic_inst_n_46 ),
        .\final_res_s_reg[14]_0 (\gen_macc[15].logic_inst_n_47 ),
        .\final_res_s_reg[15]_0 (\gen_macc[15].logic_inst_n_48 ),
        .\final_res_s_reg[16]_0 (\gen_macc[15].logic_inst_n_49 ),
        .\final_res_s_reg[17]_0 (\gen_macc[15].logic_inst_n_50 ),
        .\final_res_s_reg[18]_0 (\gen_macc[15].logic_inst_n_51 ),
        .\final_res_s_reg[19]_0 (\gen_macc[15].logic_inst_n_52 ),
        .\final_res_s_reg[1]_0 (\gen_macc[15].logic_inst_n_34 ),
        .\final_res_s_reg[20]_0 (\gen_macc[15].logic_inst_n_53 ),
        .\final_res_s_reg[21]_0 (\gen_macc[15].logic_inst_n_54 ),
        .\final_res_s_reg[22]_0 (\gen_macc[15].logic_inst_n_55 ),
        .\final_res_s_reg[23]_0 (\gen_macc[15].logic_inst_n_56 ),
        .\final_res_s_reg[24]_0 (\gen_macc[15].logic_inst_n_57 ),
        .\final_res_s_reg[25]_0 (\gen_macc[15].logic_inst_n_58 ),
        .\final_res_s_reg[26]_0 (\gen_macc[15].logic_inst_n_59 ),
        .\final_res_s_reg[27]_0 (\gen_macc[15].logic_inst_n_60 ),
        .\final_res_s_reg[28]_0 (\gen_macc[15].logic_inst_n_61 ),
        .\final_res_s_reg[29]_0 (\gen_macc[15].logic_inst_n_62 ),
        .\final_res_s_reg[2]_0 (\gen_macc[15].logic_inst_n_35 ),
        .\final_res_s_reg[30]_0 (\gen_macc[15].logic_inst_n_63 ),
        .\final_res_s_reg[31]_0 (\gen_macc[15].logic_inst_n_64 ),
        .\final_res_s_reg[3]_0 (\gen_macc[15].logic_inst_n_36 ),
        .\final_res_s_reg[4]_0 (\gen_macc[15].logic_inst_n_37 ),
        .\final_res_s_reg[5]_0 (\gen_macc[15].logic_inst_n_38 ),
        .\final_res_s_reg[6]_0 (\gen_macc[15].logic_inst_n_39 ),
        .\final_res_s_reg[7]_0 (\gen_macc[15].logic_inst_n_40 ),
        .\final_res_s_reg[8]_0 (\gen_macc[15].logic_inst_n_41 ),
        .\final_res_s_reg[9]_0 (\gen_macc[15].logic_inst_n_42 ),
        .ready_s(ready_s_55),
        .ready_s_reg_0(ready_next_s[16]),
        .res_s0(res_s0_16),
        .res_s_reg_0({\gen_macc[14].logic_inst_n_2 ,\gen_macc[14].logic_inst_n_3 ,\gen_macc[14].logic_inst_n_4 ,\gen_macc[14].logic_inst_n_5 ,\gen_macc[14].logic_inst_n_6 ,\gen_macc[14].logic_inst_n_7 ,\gen_macc[14].logic_inst_n_8 ,\gen_macc[14].logic_inst_n_9 ,\gen_macc[14].logic_inst_n_10 ,\gen_macc[14].logic_inst_n_11 ,\gen_macc[14].logic_inst_n_12 ,\gen_macc[14].logic_inst_n_13 ,\gen_macc[14].logic_inst_n_14 ,\gen_macc[14].logic_inst_n_15 ,\gen_macc[14].logic_inst_n_16 ,\gen_macc[14].logic_inst_n_17 ,\gen_macc[14].logic_inst_n_18 ,\gen_macc[14].logic_inst_n_19 ,\gen_macc[14].logic_inst_n_20 ,\gen_macc[14].logic_inst_n_21 ,\gen_macc[14].logic_inst_n_22 ,\gen_macc[14].logic_inst_n_23 ,\gen_macc[14].logic_inst_n_24 ,\gen_macc[14].logic_inst_n_25 ,\gen_macc[14].logic_inst_n_26 ,\gen_macc[14].logic_inst_n_27 ,\gen_macc[14].logic_inst_n_28 ,\gen_macc[14].logic_inst_n_29 ,\gen_macc[14].logic_inst_n_30 ,\gen_macc[14].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_6 \gen_macc[16].logic_inst 
       (.ACOUT({\gen_macc[16].logic_inst_n_2 ,\gen_macc[16].logic_inst_n_3 ,\gen_macc[16].logic_inst_n_4 ,\gen_macc[16].logic_inst_n_5 ,\gen_macc[16].logic_inst_n_6 ,\gen_macc[16].logic_inst_n_7 ,\gen_macc[16].logic_inst_n_8 ,\gen_macc[16].logic_inst_n_9 ,\gen_macc[16].logic_inst_n_10 ,\gen_macc[16].logic_inst_n_11 ,\gen_macc[16].logic_inst_n_12 ,\gen_macc[16].logic_inst_n_13 ,\gen_macc[16].logic_inst_n_14 ,\gen_macc[16].logic_inst_n_15 ,\gen_macc[16].logic_inst_n_16 ,\gen_macc[16].logic_inst_n_17 ,\gen_macc[16].logic_inst_n_18 ,\gen_macc[16].logic_inst_n_19 ,\gen_macc[16].logic_inst_n_20 ,\gen_macc[16].logic_inst_n_21 ,\gen_macc[16].logic_inst_n_22 ,\gen_macc[16].logic_inst_n_23 ,\gen_macc[16].logic_inst_n_24 ,\gen_macc[16].logic_inst_n_25 ,\gen_macc[16].logic_inst_n_26 ,\gen_macc[16].logic_inst_n_27 ,\gen_macc[16].logic_inst_n_28 ,\gen_macc[16].logic_inst_n_29 ,\gen_macc[16].logic_inst_n_30 ,\gen_macc[16].logic_inst_n_31 }),
        .E(data_out_en_s_15),
        .Q(end_next_s_0[17]),
        .data_clk_i(data_clk_i),
        .data_en_o_reg_0(data_en_s[16]),
        .data_en_s(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_58),
        .\final_res_s_reg[31]_0 ({\gen_macc[16].logic_inst_n_33 ,\gen_macc[16].logic_inst_n_34 ,\gen_macc[16].logic_inst_n_35 ,\gen_macc[16].logic_inst_n_36 ,\gen_macc[16].logic_inst_n_37 ,\gen_macc[16].logic_inst_n_38 ,\gen_macc[16].logic_inst_n_39 ,\gen_macc[16].logic_inst_n_40 ,\gen_macc[16].logic_inst_n_41 ,\gen_macc[16].logic_inst_n_42 ,\gen_macc[16].logic_inst_n_43 ,\gen_macc[16].logic_inst_n_44 ,\gen_macc[16].logic_inst_n_45 ,\gen_macc[16].logic_inst_n_46 ,\gen_macc[16].logic_inst_n_47 ,\gen_macc[16].logic_inst_n_48 ,\gen_macc[16].logic_inst_n_49 ,\gen_macc[16].logic_inst_n_50 ,\gen_macc[16].logic_inst_n_51 ,\gen_macc[16].logic_inst_n_52 ,\gen_macc[16].logic_inst_n_53 ,\gen_macc[16].logic_inst_n_54 ,\gen_macc[16].logic_inst_n_55 ,\gen_macc[16].logic_inst_n_56 ,\gen_macc[16].logic_inst_n_57 ,\gen_macc[16].logic_inst_n_58 ,\gen_macc[16].logic_inst_n_59 ,\gen_macc[16].logic_inst_n_60 ,\gen_macc[16].logic_inst_n_61 ,\gen_macc[16].logic_inst_n_62 ,\gen_macc[16].logic_inst_n_63 ,\gen_macc[16].logic_inst_n_64 }),
        .ready_s(ready_s_57),
        .ready_s_reg_0(ready_next_s[17]),
        .res_s0(res_s0_14),
        .res_s_reg_0({\gen_macc[15].logic_inst_n_1 ,\gen_macc[15].logic_inst_n_2 ,\gen_macc[15].logic_inst_n_3 ,\gen_macc[15].logic_inst_n_4 ,\gen_macc[15].logic_inst_n_5 ,\gen_macc[15].logic_inst_n_6 ,\gen_macc[15].logic_inst_n_7 ,\gen_macc[15].logic_inst_n_8 ,\gen_macc[15].logic_inst_n_9 ,\gen_macc[15].logic_inst_n_10 ,\gen_macc[15].logic_inst_n_11 ,\gen_macc[15].logic_inst_n_12 ,\gen_macc[15].logic_inst_n_13 ,\gen_macc[15].logic_inst_n_14 ,\gen_macc[15].logic_inst_n_15 ,\gen_macc[15].logic_inst_n_16 ,\gen_macc[15].logic_inst_n_17 ,\gen_macc[15].logic_inst_n_18 ,\gen_macc[15].logic_inst_n_19 ,\gen_macc[15].logic_inst_n_20 ,\gen_macc[15].logic_inst_n_21 ,\gen_macc[15].logic_inst_n_22 ,\gen_macc[15].logic_inst_n_23 ,\gen_macc[15].logic_inst_n_24 ,\gen_macc[15].logic_inst_n_25 ,\gen_macc[15].logic_inst_n_26 ,\gen_macc[15].logic_inst_n_27 ,\gen_macc[15].logic_inst_n_28 ,\gen_macc[15].logic_inst_n_29 ,\gen_macc[15].logic_inst_n_30 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_7 \gen_macc[17].logic_inst 
       (.ACOUT({\gen_macc[17].logic_inst_n_2 ,\gen_macc[17].logic_inst_n_3 ,\gen_macc[17].logic_inst_n_4 ,\gen_macc[17].logic_inst_n_5 ,\gen_macc[17].logic_inst_n_6 ,\gen_macc[17].logic_inst_n_7 ,\gen_macc[17].logic_inst_n_8 ,\gen_macc[17].logic_inst_n_9 ,\gen_macc[17].logic_inst_n_10 ,\gen_macc[17].logic_inst_n_11 ,\gen_macc[17].logic_inst_n_12 ,\gen_macc[17].logic_inst_n_13 ,\gen_macc[17].logic_inst_n_14 ,\gen_macc[17].logic_inst_n_15 ,\gen_macc[17].logic_inst_n_16 ,\gen_macc[17].logic_inst_n_17 ,\gen_macc[17].logic_inst_n_18 ,\gen_macc[17].logic_inst_n_19 ,\gen_macc[17].logic_inst_n_20 ,\gen_macc[17].logic_inst_n_21 ,\gen_macc[17].logic_inst_n_22 ,\gen_macc[17].logic_inst_n_23 ,\gen_macc[17].logic_inst_n_24 ,\gen_macc[17].logic_inst_n_25 ,\gen_macc[17].logic_inst_n_26 ,\gen_macc[17].logic_inst_n_27 ,\gen_macc[17].logic_inst_n_28 ,\gen_macc[17].logic_inst_n_29 ,\gen_macc[17].logic_inst_n_30 ,\gen_macc[17].logic_inst_n_31 }),
        .E(data_out_en_s_13),
        .Q(end_next_s_0[18]),
        .data_clk_i(data_clk_i),
        .data_en_o_reg_0(data_en_s[17]),
        .data_en_s(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_60),
        .\final_res_s_reg[31]_0 ({\gen_macc[17].logic_inst_n_33 ,\gen_macc[17].logic_inst_n_34 ,\gen_macc[17].logic_inst_n_35 ,\gen_macc[17].logic_inst_n_36 ,\gen_macc[17].logic_inst_n_37 ,\gen_macc[17].logic_inst_n_38 ,\gen_macc[17].logic_inst_n_39 ,\gen_macc[17].logic_inst_n_40 ,\gen_macc[17].logic_inst_n_41 ,\gen_macc[17].logic_inst_n_42 ,\gen_macc[17].logic_inst_n_43 ,\gen_macc[17].logic_inst_n_44 ,\gen_macc[17].logic_inst_n_45 ,\gen_macc[17].logic_inst_n_46 ,\gen_macc[17].logic_inst_n_47 ,\gen_macc[17].logic_inst_n_48 ,\gen_macc[17].logic_inst_n_49 ,\gen_macc[17].logic_inst_n_50 ,\gen_macc[17].logic_inst_n_51 ,\gen_macc[17].logic_inst_n_52 ,\gen_macc[17].logic_inst_n_53 ,\gen_macc[17].logic_inst_n_54 ,\gen_macc[17].logic_inst_n_55 ,\gen_macc[17].logic_inst_n_56 ,\gen_macc[17].logic_inst_n_57 ,\gen_macc[17].logic_inst_n_58 ,\gen_macc[17].logic_inst_n_59 ,\gen_macc[17].logic_inst_n_60 ,\gen_macc[17].logic_inst_n_61 ,\gen_macc[17].logic_inst_n_62 ,\gen_macc[17].logic_inst_n_63 ,\gen_macc[17].logic_inst_n_64 }),
        .ready_s(ready_s_59),
        .ready_s_reg_0(ready_next_s[18]),
        .res_s0(res_s0_12),
        .res_s_reg_0({\gen_macc[16].logic_inst_n_2 ,\gen_macc[16].logic_inst_n_3 ,\gen_macc[16].logic_inst_n_4 ,\gen_macc[16].logic_inst_n_5 ,\gen_macc[16].logic_inst_n_6 ,\gen_macc[16].logic_inst_n_7 ,\gen_macc[16].logic_inst_n_8 ,\gen_macc[16].logic_inst_n_9 ,\gen_macc[16].logic_inst_n_10 ,\gen_macc[16].logic_inst_n_11 ,\gen_macc[16].logic_inst_n_12 ,\gen_macc[16].logic_inst_n_13 ,\gen_macc[16].logic_inst_n_14 ,\gen_macc[16].logic_inst_n_15 ,\gen_macc[16].logic_inst_n_16 ,\gen_macc[16].logic_inst_n_17 ,\gen_macc[16].logic_inst_n_18 ,\gen_macc[16].logic_inst_n_19 ,\gen_macc[16].logic_inst_n_20 ,\gen_macc[16].logic_inst_n_21 ,\gen_macc[16].logic_inst_n_22 ,\gen_macc[16].logic_inst_n_23 ,\gen_macc[16].logic_inst_n_24 ,\gen_macc[16].logic_inst_n_25 ,\gen_macc[16].logic_inst_n_26 ,\gen_macc[16].logic_inst_n_27 ,\gen_macc[16].logic_inst_n_28 ,\gen_macc[16].logic_inst_n_29 ,\gen_macc[16].logic_inst_n_30 ,\gen_macc[16].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_8 \gen_macc[18].logic_inst 
       (.ACOUT({\gen_macc[18].logic_inst_n_2 ,\gen_macc[18].logic_inst_n_3 ,\gen_macc[18].logic_inst_n_4 ,\gen_macc[18].logic_inst_n_5 ,\gen_macc[18].logic_inst_n_6 ,\gen_macc[18].logic_inst_n_7 ,\gen_macc[18].logic_inst_n_8 ,\gen_macc[18].logic_inst_n_9 ,\gen_macc[18].logic_inst_n_10 ,\gen_macc[18].logic_inst_n_11 ,\gen_macc[18].logic_inst_n_12 ,\gen_macc[18].logic_inst_n_13 ,\gen_macc[18].logic_inst_n_14 ,\gen_macc[18].logic_inst_n_15 ,\gen_macc[18].logic_inst_n_16 ,\gen_macc[18].logic_inst_n_17 ,\gen_macc[18].logic_inst_n_18 ,\gen_macc[18].logic_inst_n_19 ,\gen_macc[18].logic_inst_n_20 ,\gen_macc[18].logic_inst_n_21 ,\gen_macc[18].logic_inst_n_22 ,\gen_macc[18].logic_inst_n_23 ,\gen_macc[18].logic_inst_n_24 ,\gen_macc[18].logic_inst_n_25 ,\gen_macc[18].logic_inst_n_26 ,\gen_macc[18].logic_inst_n_27 ,\gen_macc[18].logic_inst_n_28 ,\gen_macc[18].logic_inst_n_29 ,\gen_macc[18].logic_inst_n_30 ,\gen_macc[18].logic_inst_n_31 }),
        .E(data_out_en_s_11),
        .Q(end_next_s_0[19]),
        .data_clk_i(data_clk_i),
        .data_en_o_reg_0(data_en_s[18]),
        .data_en_s(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_62),
        .\final_res_s_reg[31]_0 ({\gen_macc[18].logic_inst_n_33 ,\gen_macc[18].logic_inst_n_34 ,\gen_macc[18].logic_inst_n_35 ,\gen_macc[18].logic_inst_n_36 ,\gen_macc[18].logic_inst_n_37 ,\gen_macc[18].logic_inst_n_38 ,\gen_macc[18].logic_inst_n_39 ,\gen_macc[18].logic_inst_n_40 ,\gen_macc[18].logic_inst_n_41 ,\gen_macc[18].logic_inst_n_42 ,\gen_macc[18].logic_inst_n_43 ,\gen_macc[18].logic_inst_n_44 ,\gen_macc[18].logic_inst_n_45 ,\gen_macc[18].logic_inst_n_46 ,\gen_macc[18].logic_inst_n_47 ,\gen_macc[18].logic_inst_n_48 ,\gen_macc[18].logic_inst_n_49 ,\gen_macc[18].logic_inst_n_50 ,\gen_macc[18].logic_inst_n_51 ,\gen_macc[18].logic_inst_n_52 ,\gen_macc[18].logic_inst_n_53 ,\gen_macc[18].logic_inst_n_54 ,\gen_macc[18].logic_inst_n_55 ,\gen_macc[18].logic_inst_n_56 ,\gen_macc[18].logic_inst_n_57 ,\gen_macc[18].logic_inst_n_58 ,\gen_macc[18].logic_inst_n_59 ,\gen_macc[18].logic_inst_n_60 ,\gen_macc[18].logic_inst_n_61 ,\gen_macc[18].logic_inst_n_62 ,\gen_macc[18].logic_inst_n_63 ,\gen_macc[18].logic_inst_n_64 }),
        .ready_s(ready_s_61),
        .ready_s_reg_0(ready_next_s[19]),
        .res_s0(res_s0_10),
        .res_s_reg_0({\gen_macc[17].logic_inst_n_2 ,\gen_macc[17].logic_inst_n_3 ,\gen_macc[17].logic_inst_n_4 ,\gen_macc[17].logic_inst_n_5 ,\gen_macc[17].logic_inst_n_6 ,\gen_macc[17].logic_inst_n_7 ,\gen_macc[17].logic_inst_n_8 ,\gen_macc[17].logic_inst_n_9 ,\gen_macc[17].logic_inst_n_10 ,\gen_macc[17].logic_inst_n_11 ,\gen_macc[17].logic_inst_n_12 ,\gen_macc[17].logic_inst_n_13 ,\gen_macc[17].logic_inst_n_14 ,\gen_macc[17].logic_inst_n_15 ,\gen_macc[17].logic_inst_n_16 ,\gen_macc[17].logic_inst_n_17 ,\gen_macc[17].logic_inst_n_18 ,\gen_macc[17].logic_inst_n_19 ,\gen_macc[17].logic_inst_n_20 ,\gen_macc[17].logic_inst_n_21 ,\gen_macc[17].logic_inst_n_22 ,\gen_macc[17].logic_inst_n_23 ,\gen_macc[17].logic_inst_n_24 ,\gen_macc[17].logic_inst_n_25 ,\gen_macc[17].logic_inst_n_26 ,\gen_macc[17].logic_inst_n_27 ,\gen_macc[17].logic_inst_n_28 ,\gen_macc[17].logic_inst_n_29 ,\gen_macc[17].logic_inst_n_30 ,\gen_macc[17].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_9 \gen_macc[19].logic_inst 
       (.ACOUT({\gen_macc[19].logic_inst_n_2 ,\gen_macc[19].logic_inst_n_3 ,\gen_macc[19].logic_inst_n_4 ,\gen_macc[19].logic_inst_n_5 ,\gen_macc[19].logic_inst_n_6 ,\gen_macc[19].logic_inst_n_7 ,\gen_macc[19].logic_inst_n_8 ,\gen_macc[19].logic_inst_n_9 ,\gen_macc[19].logic_inst_n_10 ,\gen_macc[19].logic_inst_n_11 ,\gen_macc[19].logic_inst_n_12 ,\gen_macc[19].logic_inst_n_13 ,\gen_macc[19].logic_inst_n_14 ,\gen_macc[19].logic_inst_n_15 ,\gen_macc[19].logic_inst_n_16 ,\gen_macc[19].logic_inst_n_17 ,\gen_macc[19].logic_inst_n_18 ,\gen_macc[19].logic_inst_n_19 ,\gen_macc[19].logic_inst_n_20 ,\gen_macc[19].logic_inst_n_21 ,\gen_macc[19].logic_inst_n_22 ,\gen_macc[19].logic_inst_n_23 ,\gen_macc[19].logic_inst_n_24 ,\gen_macc[19].logic_inst_n_25 ,\gen_macc[19].logic_inst_n_26 ,\gen_macc[19].logic_inst_n_27 ,\gen_macc[19].logic_inst_n_28 ,\gen_macc[19].logic_inst_n_29 ,\gen_macc[19].logic_inst_n_30 ,\gen_macc[19].logic_inst_n_31 }),
        .E(data_out_en_s_9),
        .Q(end_next_s_0[20]),
        .data_clk_i(data_clk_i),
        .data_en_s(data_en_s[19]),
        .data_en_s_0(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .\data_out_s_reg[10] (cpt_store_s_reg[1:0]),
        .\data_out_s_reg[31] ({\gen_macc[18].logic_inst_n_33 ,\gen_macc[18].logic_inst_n_34 ,\gen_macc[18].logic_inst_n_35 ,\gen_macc[18].logic_inst_n_36 ,\gen_macc[18].logic_inst_n_37 ,\gen_macc[18].logic_inst_n_38 ,\gen_macc[18].logic_inst_n_39 ,\gen_macc[18].logic_inst_n_40 ,\gen_macc[18].logic_inst_n_41 ,\gen_macc[18].logic_inst_n_42 ,\gen_macc[18].logic_inst_n_43 ,\gen_macc[18].logic_inst_n_44 ,\gen_macc[18].logic_inst_n_45 ,\gen_macc[18].logic_inst_n_46 ,\gen_macc[18].logic_inst_n_47 ,\gen_macc[18].logic_inst_n_48 ,\gen_macc[18].logic_inst_n_49 ,\gen_macc[18].logic_inst_n_50 ,\gen_macc[18].logic_inst_n_51 ,\gen_macc[18].logic_inst_n_52 ,\gen_macc[18].logic_inst_n_53 ,\gen_macc[18].logic_inst_n_54 ,\gen_macc[18].logic_inst_n_55 ,\gen_macc[18].logic_inst_n_56 ,\gen_macc[18].logic_inst_n_57 ,\gen_macc[18].logic_inst_n_58 ,\gen_macc[18].logic_inst_n_59 ,\gen_macc[18].logic_inst_n_60 ,\gen_macc[18].logic_inst_n_61 ,\gen_macc[18].logic_inst_n_62 ,\gen_macc[18].logic_inst_n_63 ,\gen_macc[18].logic_inst_n_64 }),
        .\data_out_s_reg[31]_0 ({\gen_macc[17].logic_inst_n_33 ,\gen_macc[17].logic_inst_n_34 ,\gen_macc[17].logic_inst_n_35 ,\gen_macc[17].logic_inst_n_36 ,\gen_macc[17].logic_inst_n_37 ,\gen_macc[17].logic_inst_n_38 ,\gen_macc[17].logic_inst_n_39 ,\gen_macc[17].logic_inst_n_40 ,\gen_macc[17].logic_inst_n_41 ,\gen_macc[17].logic_inst_n_42 ,\gen_macc[17].logic_inst_n_43 ,\gen_macc[17].logic_inst_n_44 ,\gen_macc[17].logic_inst_n_45 ,\gen_macc[17].logic_inst_n_46 ,\gen_macc[17].logic_inst_n_47 ,\gen_macc[17].logic_inst_n_48 ,\gen_macc[17].logic_inst_n_49 ,\gen_macc[17].logic_inst_n_50 ,\gen_macc[17].logic_inst_n_51 ,\gen_macc[17].logic_inst_n_52 ,\gen_macc[17].logic_inst_n_53 ,\gen_macc[17].logic_inst_n_54 ,\gen_macc[17].logic_inst_n_55 ,\gen_macc[17].logic_inst_n_56 ,\gen_macc[17].logic_inst_n_57 ,\gen_macc[17].logic_inst_n_58 ,\gen_macc[17].logic_inst_n_59 ,\gen_macc[17].logic_inst_n_60 ,\gen_macc[17].logic_inst_n_61 ,\gen_macc[17].logic_inst_n_62 ,\gen_macc[17].logic_inst_n_63 ,\gen_macc[17].logic_inst_n_64 }),
        .\data_out_s_reg[31]_1 ({\gen_macc[16].logic_inst_n_33 ,\gen_macc[16].logic_inst_n_34 ,\gen_macc[16].logic_inst_n_35 ,\gen_macc[16].logic_inst_n_36 ,\gen_macc[16].logic_inst_n_37 ,\gen_macc[16].logic_inst_n_38 ,\gen_macc[16].logic_inst_n_39 ,\gen_macc[16].logic_inst_n_40 ,\gen_macc[16].logic_inst_n_41 ,\gen_macc[16].logic_inst_n_42 ,\gen_macc[16].logic_inst_n_43 ,\gen_macc[16].logic_inst_n_44 ,\gen_macc[16].logic_inst_n_45 ,\gen_macc[16].logic_inst_n_46 ,\gen_macc[16].logic_inst_n_47 ,\gen_macc[16].logic_inst_n_48 ,\gen_macc[16].logic_inst_n_49 ,\gen_macc[16].logic_inst_n_50 ,\gen_macc[16].logic_inst_n_51 ,\gen_macc[16].logic_inst_n_52 ,\gen_macc[16].logic_inst_n_53 ,\gen_macc[16].logic_inst_n_54 ,\gen_macc[16].logic_inst_n_55 ,\gen_macc[16].logic_inst_n_56 ,\gen_macc[16].logic_inst_n_57 ,\gen_macc[16].logic_inst_n_58 ,\gen_macc[16].logic_inst_n_59 ,\gen_macc[16].logic_inst_n_60 ,\gen_macc[16].logic_inst_n_61 ,\gen_macc[16].logic_inst_n_62 ,\gen_macc[16].logic_inst_n_63 ,\gen_macc[16].logic_inst_n_64 }),
        .\data_out_s_reg[31]_2 (\cpt_store_s_reg[0]_rep_n_0 ),
        .\data_out_s_reg[9] (\cpt_store_s_reg[1]_rep_n_0 ),
        .data_rst_i(data_rst_i),
        .end_s(end_s_64),
        .\final_res_s_reg[0]_0 (\gen_macc[19].logic_inst_n_33 ),
        .\final_res_s_reg[10]_0 (\gen_macc[19].logic_inst_n_43 ),
        .\final_res_s_reg[11]_0 (\gen_macc[19].logic_inst_n_44 ),
        .\final_res_s_reg[12]_0 (\gen_macc[19].logic_inst_n_45 ),
        .\final_res_s_reg[13]_0 (\gen_macc[19].logic_inst_n_46 ),
        .\final_res_s_reg[14]_0 (\gen_macc[19].logic_inst_n_47 ),
        .\final_res_s_reg[15]_0 (\gen_macc[19].logic_inst_n_48 ),
        .\final_res_s_reg[16]_0 (\gen_macc[19].logic_inst_n_49 ),
        .\final_res_s_reg[17]_0 (\gen_macc[19].logic_inst_n_50 ),
        .\final_res_s_reg[18]_0 (\gen_macc[19].logic_inst_n_51 ),
        .\final_res_s_reg[19]_0 (\gen_macc[19].logic_inst_n_52 ),
        .\final_res_s_reg[1]_0 (\gen_macc[19].logic_inst_n_34 ),
        .\final_res_s_reg[20]_0 (\gen_macc[19].logic_inst_n_53 ),
        .\final_res_s_reg[21]_0 (\gen_macc[19].logic_inst_n_54 ),
        .\final_res_s_reg[22]_0 (\gen_macc[19].logic_inst_n_55 ),
        .\final_res_s_reg[23]_0 (\gen_macc[19].logic_inst_n_56 ),
        .\final_res_s_reg[24]_0 (\gen_macc[19].logic_inst_n_57 ),
        .\final_res_s_reg[25]_0 (\gen_macc[19].logic_inst_n_58 ),
        .\final_res_s_reg[26]_0 (\gen_macc[19].logic_inst_n_59 ),
        .\final_res_s_reg[27]_0 (\gen_macc[19].logic_inst_n_60 ),
        .\final_res_s_reg[28]_0 (\gen_macc[19].logic_inst_n_61 ),
        .\final_res_s_reg[29]_0 (\gen_macc[19].logic_inst_n_62 ),
        .\final_res_s_reg[2]_0 (\gen_macc[19].logic_inst_n_35 ),
        .\final_res_s_reg[30]_0 (\gen_macc[19].logic_inst_n_63 ),
        .\final_res_s_reg[31]_0 (\gen_macc[19].logic_inst_n_64 ),
        .\final_res_s_reg[3]_0 (\gen_macc[19].logic_inst_n_36 ),
        .\final_res_s_reg[4]_0 (\gen_macc[19].logic_inst_n_37 ),
        .\final_res_s_reg[5]_0 (\gen_macc[19].logic_inst_n_38 ),
        .\final_res_s_reg[6]_0 (\gen_macc[19].logic_inst_n_39 ),
        .\final_res_s_reg[7]_0 (\gen_macc[19].logic_inst_n_40 ),
        .\final_res_s_reg[8]_0 (\gen_macc[19].logic_inst_n_41 ),
        .\final_res_s_reg[9]_0 (\gen_macc[19].logic_inst_n_42 ),
        .ready_s(ready_s_63),
        .ready_s_reg_0(ready_next_s[20]),
        .res_s0(res_s0_8),
        .res_s_reg_0({\gen_macc[18].logic_inst_n_2 ,\gen_macc[18].logic_inst_n_3 ,\gen_macc[18].logic_inst_n_4 ,\gen_macc[18].logic_inst_n_5 ,\gen_macc[18].logic_inst_n_6 ,\gen_macc[18].logic_inst_n_7 ,\gen_macc[18].logic_inst_n_8 ,\gen_macc[18].logic_inst_n_9 ,\gen_macc[18].logic_inst_n_10 ,\gen_macc[18].logic_inst_n_11 ,\gen_macc[18].logic_inst_n_12 ,\gen_macc[18].logic_inst_n_13 ,\gen_macc[18].logic_inst_n_14 ,\gen_macc[18].logic_inst_n_15 ,\gen_macc[18].logic_inst_n_16 ,\gen_macc[18].logic_inst_n_17 ,\gen_macc[18].logic_inst_n_18 ,\gen_macc[18].logic_inst_n_19 ,\gen_macc[18].logic_inst_n_20 ,\gen_macc[18].logic_inst_n_21 ,\gen_macc[18].logic_inst_n_22 ,\gen_macc[18].logic_inst_n_23 ,\gen_macc[18].logic_inst_n_24 ,\gen_macc[18].logic_inst_n_25 ,\gen_macc[18].logic_inst_n_26 ,\gen_macc[18].logic_inst_n_27 ,\gen_macc[18].logic_inst_n_28 ,\gen_macc[18].logic_inst_n_29 ,\gen_macc[18].logic_inst_n_30 ,\gen_macc[18].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_10 \gen_macc[1].logic_inst 
       (.ACOUT({\gen_macc[1].logic_inst_n_2 ,\gen_macc[1].logic_inst_n_3 ,\gen_macc[1].logic_inst_n_4 ,\gen_macc[1].logic_inst_n_5 ,\gen_macc[1].logic_inst_n_6 ,\gen_macc[1].logic_inst_n_7 ,\gen_macc[1].logic_inst_n_8 ,\gen_macc[1].logic_inst_n_9 ,\gen_macc[1].logic_inst_n_10 ,\gen_macc[1].logic_inst_n_11 ,\gen_macc[1].logic_inst_n_12 ,\gen_macc[1].logic_inst_n_13 ,\gen_macc[1].logic_inst_n_14 ,\gen_macc[1].logic_inst_n_15 ,\gen_macc[1].logic_inst_n_16 ,\gen_macc[1].logic_inst_n_17 ,\gen_macc[1].logic_inst_n_18 ,\gen_macc[1].logic_inst_n_19 ,\gen_macc[1].logic_inst_n_20 ,\gen_macc[1].logic_inst_n_21 ,\gen_macc[1].logic_inst_n_22 ,\gen_macc[1].logic_inst_n_23 ,\gen_macc[1].logic_inst_n_24 ,\gen_macc[1].logic_inst_n_25 ,\gen_macc[1].logic_inst_n_26 ,\gen_macc[1].logic_inst_n_27 ,\gen_macc[1].logic_inst_n_28 ,\gen_macc[1].logic_inst_n_29 ,\gen_macc[1].logic_inst_n_30 ,\gen_macc[1].logic_inst_n_31 }),
        .DOBDO(coeff_s),
        .E(data_out_en_s_45),
        .Q(end_next_s_0[2]),
        .data_clk_i(data_clk_i),
        .data_en_s(data_en_s[1]),
        .data_en_s_0(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_66),
        .\final_res_s_reg[31]_0 ({\gen_macc[1].logic_inst_n_33 ,\gen_macc[1].logic_inst_n_34 ,\gen_macc[1].logic_inst_n_35 ,\gen_macc[1].logic_inst_n_36 ,\gen_macc[1].logic_inst_n_37 ,\gen_macc[1].logic_inst_n_38 ,\gen_macc[1].logic_inst_n_39 ,\gen_macc[1].logic_inst_n_40 ,\gen_macc[1].logic_inst_n_41 ,\gen_macc[1].logic_inst_n_42 ,\gen_macc[1].logic_inst_n_43 ,\gen_macc[1].logic_inst_n_44 ,\gen_macc[1].logic_inst_n_45 ,\gen_macc[1].logic_inst_n_46 ,\gen_macc[1].logic_inst_n_47 ,\gen_macc[1].logic_inst_n_48 ,\gen_macc[1].logic_inst_n_49 ,\gen_macc[1].logic_inst_n_50 ,\gen_macc[1].logic_inst_n_51 ,\gen_macc[1].logic_inst_n_52 ,\gen_macc[1].logic_inst_n_53 ,\gen_macc[1].logic_inst_n_54 ,\gen_macc[1].logic_inst_n_55 ,\gen_macc[1].logic_inst_n_56 ,\gen_macc[1].logic_inst_n_57 ,\gen_macc[1].logic_inst_n_58 ,\gen_macc[1].logic_inst_n_59 ,\gen_macc[1].logic_inst_n_60 ,\gen_macc[1].logic_inst_n_61 ,\gen_macc[1].logic_inst_n_62 ,\gen_macc[1].logic_inst_n_63 ,\gen_macc[1].logic_inst_n_64 }),
        .ready_s(ready_s_65),
        .ready_s_reg_0(ready_next_s[2]),
        .res_s0(res_s0_44));
  double_iq_pid_vco_firReal_0_0_firReal_proc_11 \gen_macc[20].logic_inst 
       (.ACOUT({\gen_macc[20].logic_inst_n_2 ,\gen_macc[20].logic_inst_n_3 ,\gen_macc[20].logic_inst_n_4 ,\gen_macc[20].logic_inst_n_5 ,\gen_macc[20].logic_inst_n_6 ,\gen_macc[20].logic_inst_n_7 ,\gen_macc[20].logic_inst_n_8 ,\gen_macc[20].logic_inst_n_9 ,\gen_macc[20].logic_inst_n_10 ,\gen_macc[20].logic_inst_n_11 ,\gen_macc[20].logic_inst_n_12 ,\gen_macc[20].logic_inst_n_13 ,\gen_macc[20].logic_inst_n_14 ,\gen_macc[20].logic_inst_n_15 ,\gen_macc[20].logic_inst_n_16 ,\gen_macc[20].logic_inst_n_17 ,\gen_macc[20].logic_inst_n_18 ,\gen_macc[20].logic_inst_n_19 ,\gen_macc[20].logic_inst_n_20 ,\gen_macc[20].logic_inst_n_21 ,\gen_macc[20].logic_inst_n_22 ,\gen_macc[20].logic_inst_n_23 ,\gen_macc[20].logic_inst_n_24 ,\gen_macc[20].logic_inst_n_25 ,\gen_macc[20].logic_inst_n_26 ,\gen_macc[20].logic_inst_n_27 ,\gen_macc[20].logic_inst_n_28 ,\gen_macc[20].logic_inst_n_29 ,\gen_macc[20].logic_inst_n_30 ,\gen_macc[20].logic_inst_n_31 }),
        .E(data_out_en_s_7),
        .Q(end_next_s_0[21]),
        .data_clk_i(data_clk_i),
        .data_en_s(data_en_s[20]),
        .data_en_s_0(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_68),
        .\final_res_s_reg[31]_0 ({\gen_macc[20].logic_inst_n_33 ,\gen_macc[20].logic_inst_n_34 ,\gen_macc[20].logic_inst_n_35 ,\gen_macc[20].logic_inst_n_36 ,\gen_macc[20].logic_inst_n_37 ,\gen_macc[20].logic_inst_n_38 ,\gen_macc[20].logic_inst_n_39 ,\gen_macc[20].logic_inst_n_40 ,\gen_macc[20].logic_inst_n_41 ,\gen_macc[20].logic_inst_n_42 ,\gen_macc[20].logic_inst_n_43 ,\gen_macc[20].logic_inst_n_44 ,\gen_macc[20].logic_inst_n_45 ,\gen_macc[20].logic_inst_n_46 ,\gen_macc[20].logic_inst_n_47 ,\gen_macc[20].logic_inst_n_48 ,\gen_macc[20].logic_inst_n_49 ,\gen_macc[20].logic_inst_n_50 ,\gen_macc[20].logic_inst_n_51 ,\gen_macc[20].logic_inst_n_52 ,\gen_macc[20].logic_inst_n_53 ,\gen_macc[20].logic_inst_n_54 ,\gen_macc[20].logic_inst_n_55 ,\gen_macc[20].logic_inst_n_56 ,\gen_macc[20].logic_inst_n_57 ,\gen_macc[20].logic_inst_n_58 ,\gen_macc[20].logic_inst_n_59 ,\gen_macc[20].logic_inst_n_60 ,\gen_macc[20].logic_inst_n_61 ,\gen_macc[20].logic_inst_n_62 ,\gen_macc[20].logic_inst_n_63 ,\gen_macc[20].logic_inst_n_64 }),
        .ready_s(ready_s_67),
        .ready_s_reg_0(ready_next_s[21]),
        .res_s0(res_s0_6),
        .res_s_reg_0({\gen_macc[19].logic_inst_n_2 ,\gen_macc[19].logic_inst_n_3 ,\gen_macc[19].logic_inst_n_4 ,\gen_macc[19].logic_inst_n_5 ,\gen_macc[19].logic_inst_n_6 ,\gen_macc[19].logic_inst_n_7 ,\gen_macc[19].logic_inst_n_8 ,\gen_macc[19].logic_inst_n_9 ,\gen_macc[19].logic_inst_n_10 ,\gen_macc[19].logic_inst_n_11 ,\gen_macc[19].logic_inst_n_12 ,\gen_macc[19].logic_inst_n_13 ,\gen_macc[19].logic_inst_n_14 ,\gen_macc[19].logic_inst_n_15 ,\gen_macc[19].logic_inst_n_16 ,\gen_macc[19].logic_inst_n_17 ,\gen_macc[19].logic_inst_n_18 ,\gen_macc[19].logic_inst_n_19 ,\gen_macc[19].logic_inst_n_20 ,\gen_macc[19].logic_inst_n_21 ,\gen_macc[19].logic_inst_n_22 ,\gen_macc[19].logic_inst_n_23 ,\gen_macc[19].logic_inst_n_24 ,\gen_macc[19].logic_inst_n_25 ,\gen_macc[19].logic_inst_n_26 ,\gen_macc[19].logic_inst_n_27 ,\gen_macc[19].logic_inst_n_28 ,\gen_macc[19].logic_inst_n_29 ,\gen_macc[19].logic_inst_n_30 ,\gen_macc[19].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_12 \gen_macc[21].logic_inst 
       (.ACOUT({\gen_macc[21].logic_inst_n_2 ,\gen_macc[21].logic_inst_n_3 ,\gen_macc[21].logic_inst_n_4 ,\gen_macc[21].logic_inst_n_5 ,\gen_macc[21].logic_inst_n_6 ,\gen_macc[21].logic_inst_n_7 ,\gen_macc[21].logic_inst_n_8 ,\gen_macc[21].logic_inst_n_9 ,\gen_macc[21].logic_inst_n_10 ,\gen_macc[21].logic_inst_n_11 ,\gen_macc[21].logic_inst_n_12 ,\gen_macc[21].logic_inst_n_13 ,\gen_macc[21].logic_inst_n_14 ,\gen_macc[21].logic_inst_n_15 ,\gen_macc[21].logic_inst_n_16 ,\gen_macc[21].logic_inst_n_17 ,\gen_macc[21].logic_inst_n_18 ,\gen_macc[21].logic_inst_n_19 ,\gen_macc[21].logic_inst_n_20 ,\gen_macc[21].logic_inst_n_21 ,\gen_macc[21].logic_inst_n_22 ,\gen_macc[21].logic_inst_n_23 ,\gen_macc[21].logic_inst_n_24 ,\gen_macc[21].logic_inst_n_25 ,\gen_macc[21].logic_inst_n_26 ,\gen_macc[21].logic_inst_n_27 ,\gen_macc[21].logic_inst_n_28 ,\gen_macc[21].logic_inst_n_29 ,\gen_macc[21].logic_inst_n_30 ,\gen_macc[21].logic_inst_n_31 }),
        .E(data_out_en_s_5),
        .Q(end_next_s_0[22]),
        .data_clk_i(data_clk_i),
        .data_en_s(data_en_s[21]),
        .data_en_s_0(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_70),
        .\final_res_s_reg[31]_0 ({\gen_macc[21].logic_inst_n_33 ,\gen_macc[21].logic_inst_n_34 ,\gen_macc[21].logic_inst_n_35 ,\gen_macc[21].logic_inst_n_36 ,\gen_macc[21].logic_inst_n_37 ,\gen_macc[21].logic_inst_n_38 ,\gen_macc[21].logic_inst_n_39 ,\gen_macc[21].logic_inst_n_40 ,\gen_macc[21].logic_inst_n_41 ,\gen_macc[21].logic_inst_n_42 ,\gen_macc[21].logic_inst_n_43 ,\gen_macc[21].logic_inst_n_44 ,\gen_macc[21].logic_inst_n_45 ,\gen_macc[21].logic_inst_n_46 ,\gen_macc[21].logic_inst_n_47 ,\gen_macc[21].logic_inst_n_48 ,\gen_macc[21].logic_inst_n_49 ,\gen_macc[21].logic_inst_n_50 ,\gen_macc[21].logic_inst_n_51 ,\gen_macc[21].logic_inst_n_52 ,\gen_macc[21].logic_inst_n_53 ,\gen_macc[21].logic_inst_n_54 ,\gen_macc[21].logic_inst_n_55 ,\gen_macc[21].logic_inst_n_56 ,\gen_macc[21].logic_inst_n_57 ,\gen_macc[21].logic_inst_n_58 ,\gen_macc[21].logic_inst_n_59 ,\gen_macc[21].logic_inst_n_60 ,\gen_macc[21].logic_inst_n_61 ,\gen_macc[21].logic_inst_n_62 ,\gen_macc[21].logic_inst_n_63 ,\gen_macc[21].logic_inst_n_64 }),
        .ready_s(ready_s_69),
        .ready_s_reg_0(ready_next_s[22]),
        .res_s0(res_s0_4),
        .res_s_reg_0({\gen_macc[20].logic_inst_n_2 ,\gen_macc[20].logic_inst_n_3 ,\gen_macc[20].logic_inst_n_4 ,\gen_macc[20].logic_inst_n_5 ,\gen_macc[20].logic_inst_n_6 ,\gen_macc[20].logic_inst_n_7 ,\gen_macc[20].logic_inst_n_8 ,\gen_macc[20].logic_inst_n_9 ,\gen_macc[20].logic_inst_n_10 ,\gen_macc[20].logic_inst_n_11 ,\gen_macc[20].logic_inst_n_12 ,\gen_macc[20].logic_inst_n_13 ,\gen_macc[20].logic_inst_n_14 ,\gen_macc[20].logic_inst_n_15 ,\gen_macc[20].logic_inst_n_16 ,\gen_macc[20].logic_inst_n_17 ,\gen_macc[20].logic_inst_n_18 ,\gen_macc[20].logic_inst_n_19 ,\gen_macc[20].logic_inst_n_20 ,\gen_macc[20].logic_inst_n_21 ,\gen_macc[20].logic_inst_n_22 ,\gen_macc[20].logic_inst_n_23 ,\gen_macc[20].logic_inst_n_24 ,\gen_macc[20].logic_inst_n_25 ,\gen_macc[20].logic_inst_n_26 ,\gen_macc[20].logic_inst_n_27 ,\gen_macc[20].logic_inst_n_28 ,\gen_macc[20].logic_inst_n_29 ,\gen_macc[20].logic_inst_n_30 ,\gen_macc[20].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_13 \gen_macc[22].logic_inst 
       (.ACOUT({\gen_macc[22].logic_inst_n_2 ,\gen_macc[22].logic_inst_n_3 ,\gen_macc[22].logic_inst_n_4 ,\gen_macc[22].logic_inst_n_5 ,\gen_macc[22].logic_inst_n_6 ,\gen_macc[22].logic_inst_n_7 ,\gen_macc[22].logic_inst_n_8 ,\gen_macc[22].logic_inst_n_9 ,\gen_macc[22].logic_inst_n_10 ,\gen_macc[22].logic_inst_n_11 ,\gen_macc[22].logic_inst_n_12 ,\gen_macc[22].logic_inst_n_13 ,\gen_macc[22].logic_inst_n_14 ,\gen_macc[22].logic_inst_n_15 ,\gen_macc[22].logic_inst_n_16 ,\gen_macc[22].logic_inst_n_17 ,\gen_macc[22].logic_inst_n_18 ,\gen_macc[22].logic_inst_n_19 ,\gen_macc[22].logic_inst_n_20 ,\gen_macc[22].logic_inst_n_21 ,\gen_macc[22].logic_inst_n_22 ,\gen_macc[22].logic_inst_n_23 ,\gen_macc[22].logic_inst_n_24 ,\gen_macc[22].logic_inst_n_25 ,\gen_macc[22].logic_inst_n_26 ,\gen_macc[22].logic_inst_n_27 ,\gen_macc[22].logic_inst_n_28 ,\gen_macc[22].logic_inst_n_29 ,\gen_macc[22].logic_inst_n_30 ,\gen_macc[22].logic_inst_n_31 }),
        .E(data_out_en_s_3),
        .Q(end_next_s_0[23]),
        .data_clk_i(data_clk_i),
        .data_en_s(data_en_s[22]),
        .data_en_s_0(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_72),
        .\final_res_s_reg[31]_0 ({\gen_macc[22].logic_inst_n_33 ,\gen_macc[22].logic_inst_n_34 ,\gen_macc[22].logic_inst_n_35 ,\gen_macc[22].logic_inst_n_36 ,\gen_macc[22].logic_inst_n_37 ,\gen_macc[22].logic_inst_n_38 ,\gen_macc[22].logic_inst_n_39 ,\gen_macc[22].logic_inst_n_40 ,\gen_macc[22].logic_inst_n_41 ,\gen_macc[22].logic_inst_n_42 ,\gen_macc[22].logic_inst_n_43 ,\gen_macc[22].logic_inst_n_44 ,\gen_macc[22].logic_inst_n_45 ,\gen_macc[22].logic_inst_n_46 ,\gen_macc[22].logic_inst_n_47 ,\gen_macc[22].logic_inst_n_48 ,\gen_macc[22].logic_inst_n_49 ,\gen_macc[22].logic_inst_n_50 ,\gen_macc[22].logic_inst_n_51 ,\gen_macc[22].logic_inst_n_52 ,\gen_macc[22].logic_inst_n_53 ,\gen_macc[22].logic_inst_n_54 ,\gen_macc[22].logic_inst_n_55 ,\gen_macc[22].logic_inst_n_56 ,\gen_macc[22].logic_inst_n_57 ,\gen_macc[22].logic_inst_n_58 ,\gen_macc[22].logic_inst_n_59 ,\gen_macc[22].logic_inst_n_60 ,\gen_macc[22].logic_inst_n_61 ,\gen_macc[22].logic_inst_n_62 ,\gen_macc[22].logic_inst_n_63 ,\gen_macc[22].logic_inst_n_64 }),
        .ready_s(ready_s_71),
        .ready_s_reg_0(ready_next_s[23]),
        .res_s0(res_s0_2),
        .res_s_reg_0({\gen_macc[21].logic_inst_n_2 ,\gen_macc[21].logic_inst_n_3 ,\gen_macc[21].logic_inst_n_4 ,\gen_macc[21].logic_inst_n_5 ,\gen_macc[21].logic_inst_n_6 ,\gen_macc[21].logic_inst_n_7 ,\gen_macc[21].logic_inst_n_8 ,\gen_macc[21].logic_inst_n_9 ,\gen_macc[21].logic_inst_n_10 ,\gen_macc[21].logic_inst_n_11 ,\gen_macc[21].logic_inst_n_12 ,\gen_macc[21].logic_inst_n_13 ,\gen_macc[21].logic_inst_n_14 ,\gen_macc[21].logic_inst_n_15 ,\gen_macc[21].logic_inst_n_16 ,\gen_macc[21].logic_inst_n_17 ,\gen_macc[21].logic_inst_n_18 ,\gen_macc[21].logic_inst_n_19 ,\gen_macc[21].logic_inst_n_20 ,\gen_macc[21].logic_inst_n_21 ,\gen_macc[21].logic_inst_n_22 ,\gen_macc[21].logic_inst_n_23 ,\gen_macc[21].logic_inst_n_24 ,\gen_macc[21].logic_inst_n_25 ,\gen_macc[21].logic_inst_n_26 ,\gen_macc[21].logic_inst_n_27 ,\gen_macc[21].logic_inst_n_28 ,\gen_macc[21].logic_inst_n_29 ,\gen_macc[21].logic_inst_n_30 ,\gen_macc[21].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_14 \gen_macc[23].logic_inst 
       (.ACOUT({\gen_macc[23].logic_inst_n_1 ,\gen_macc[23].logic_inst_n_2 ,\gen_macc[23].logic_inst_n_3 ,\gen_macc[23].logic_inst_n_4 ,\gen_macc[23].logic_inst_n_5 ,\gen_macc[23].logic_inst_n_6 ,\gen_macc[23].logic_inst_n_7 ,\gen_macc[23].logic_inst_n_8 ,\gen_macc[23].logic_inst_n_9 ,\gen_macc[23].logic_inst_n_10 ,\gen_macc[23].logic_inst_n_11 ,\gen_macc[23].logic_inst_n_12 ,\gen_macc[23].logic_inst_n_13 ,\gen_macc[23].logic_inst_n_14 ,\gen_macc[23].logic_inst_n_15 ,\gen_macc[23].logic_inst_n_16 ,\gen_macc[23].logic_inst_n_17 ,\gen_macc[23].logic_inst_n_18 ,\gen_macc[23].logic_inst_n_19 ,\gen_macc[23].logic_inst_n_20 ,\gen_macc[23].logic_inst_n_21 ,\gen_macc[23].logic_inst_n_22 ,\gen_macc[23].logic_inst_n_23 ,\gen_macc[23].logic_inst_n_24 ,\gen_macc[23].logic_inst_n_25 ,\gen_macc[23].logic_inst_n_26 ,\gen_macc[23].logic_inst_n_27 ,\gen_macc[23].logic_inst_n_28 ,\gen_macc[23].logic_inst_n_29 ,\gen_macc[23].logic_inst_n_30 }),
        .E(data_out_en_s_1),
        .Q(end_next_s_0[24]),
        .\cpt_store_s_reg[0]_rep ({data_en_s[24],data_en_s[22:19]}),
        .data_clk_i(data_clk_i),
        .data_en_o_reg_0(\gen_macc[23].logic_inst_n_32 ),
        .data_en_s(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .\data_out_s_reg[10] (cpt_store_s_reg[1:0]),
        .\data_out_s_reg[31] ({\gen_macc[22].logic_inst_n_33 ,\gen_macc[22].logic_inst_n_34 ,\gen_macc[22].logic_inst_n_35 ,\gen_macc[22].logic_inst_n_36 ,\gen_macc[22].logic_inst_n_37 ,\gen_macc[22].logic_inst_n_38 ,\gen_macc[22].logic_inst_n_39 ,\gen_macc[22].logic_inst_n_40 ,\gen_macc[22].logic_inst_n_41 ,\gen_macc[22].logic_inst_n_42 ,\gen_macc[22].logic_inst_n_43 ,\gen_macc[22].logic_inst_n_44 ,\gen_macc[22].logic_inst_n_45 ,\gen_macc[22].logic_inst_n_46 ,\gen_macc[22].logic_inst_n_47 ,\gen_macc[22].logic_inst_n_48 ,\gen_macc[22].logic_inst_n_49 ,\gen_macc[22].logic_inst_n_50 ,\gen_macc[22].logic_inst_n_51 ,\gen_macc[22].logic_inst_n_52 ,\gen_macc[22].logic_inst_n_53 ,\gen_macc[22].logic_inst_n_54 ,\gen_macc[22].logic_inst_n_55 ,\gen_macc[22].logic_inst_n_56 ,\gen_macc[22].logic_inst_n_57 ,\gen_macc[22].logic_inst_n_58 ,\gen_macc[22].logic_inst_n_59 ,\gen_macc[22].logic_inst_n_60 ,\gen_macc[22].logic_inst_n_61 ,\gen_macc[22].logic_inst_n_62 ,\gen_macc[22].logic_inst_n_63 ,\gen_macc[22].logic_inst_n_64 }),
        .\data_out_s_reg[31]_0 ({\gen_macc[21].logic_inst_n_33 ,\gen_macc[21].logic_inst_n_34 ,\gen_macc[21].logic_inst_n_35 ,\gen_macc[21].logic_inst_n_36 ,\gen_macc[21].logic_inst_n_37 ,\gen_macc[21].logic_inst_n_38 ,\gen_macc[21].logic_inst_n_39 ,\gen_macc[21].logic_inst_n_40 ,\gen_macc[21].logic_inst_n_41 ,\gen_macc[21].logic_inst_n_42 ,\gen_macc[21].logic_inst_n_43 ,\gen_macc[21].logic_inst_n_44 ,\gen_macc[21].logic_inst_n_45 ,\gen_macc[21].logic_inst_n_46 ,\gen_macc[21].logic_inst_n_47 ,\gen_macc[21].logic_inst_n_48 ,\gen_macc[21].logic_inst_n_49 ,\gen_macc[21].logic_inst_n_50 ,\gen_macc[21].logic_inst_n_51 ,\gen_macc[21].logic_inst_n_52 ,\gen_macc[21].logic_inst_n_53 ,\gen_macc[21].logic_inst_n_54 ,\gen_macc[21].logic_inst_n_55 ,\gen_macc[21].logic_inst_n_56 ,\gen_macc[21].logic_inst_n_57 ,\gen_macc[21].logic_inst_n_58 ,\gen_macc[21].logic_inst_n_59 ,\gen_macc[21].logic_inst_n_60 ,\gen_macc[21].logic_inst_n_61 ,\gen_macc[21].logic_inst_n_62 ,\gen_macc[21].logic_inst_n_63 ,\gen_macc[21].logic_inst_n_64 }),
        .\data_out_s_reg[31]_1 ({\gen_macc[20].logic_inst_n_33 ,\gen_macc[20].logic_inst_n_34 ,\gen_macc[20].logic_inst_n_35 ,\gen_macc[20].logic_inst_n_36 ,\gen_macc[20].logic_inst_n_37 ,\gen_macc[20].logic_inst_n_38 ,\gen_macc[20].logic_inst_n_39 ,\gen_macc[20].logic_inst_n_40 ,\gen_macc[20].logic_inst_n_41 ,\gen_macc[20].logic_inst_n_42 ,\gen_macc[20].logic_inst_n_43 ,\gen_macc[20].logic_inst_n_44 ,\gen_macc[20].logic_inst_n_45 ,\gen_macc[20].logic_inst_n_46 ,\gen_macc[20].logic_inst_n_47 ,\gen_macc[20].logic_inst_n_48 ,\gen_macc[20].logic_inst_n_49 ,\gen_macc[20].logic_inst_n_50 ,\gen_macc[20].logic_inst_n_51 ,\gen_macc[20].logic_inst_n_52 ,\gen_macc[20].logic_inst_n_53 ,\gen_macc[20].logic_inst_n_54 ,\gen_macc[20].logic_inst_n_55 ,\gen_macc[20].logic_inst_n_56 ,\gen_macc[20].logic_inst_n_57 ,\gen_macc[20].logic_inst_n_58 ,\gen_macc[20].logic_inst_n_59 ,\gen_macc[20].logic_inst_n_60 ,\gen_macc[20].logic_inst_n_61 ,\gen_macc[20].logic_inst_n_62 ,\gen_macc[20].logic_inst_n_63 ,\gen_macc[20].logic_inst_n_64 }),
        .\data_out_s_reg[31]_2 (\cpt_store_s_reg[0]_rep_n_0 ),
        .\data_out_s_reg[9] (\cpt_store_s_reg[1]_rep_n_0 ),
        .data_rst_i(data_rst_i),
        .end_s(end_s_74),
        .\final_res_s_reg[0]_0 (\gen_macc[23].logic_inst_n_33 ),
        .\final_res_s_reg[10]_0 (\gen_macc[23].logic_inst_n_43 ),
        .\final_res_s_reg[11]_0 (\gen_macc[23].logic_inst_n_44 ),
        .\final_res_s_reg[12]_0 (\gen_macc[23].logic_inst_n_45 ),
        .\final_res_s_reg[13]_0 (\gen_macc[23].logic_inst_n_46 ),
        .\final_res_s_reg[14]_0 (\gen_macc[23].logic_inst_n_47 ),
        .\final_res_s_reg[15]_0 (\gen_macc[23].logic_inst_n_48 ),
        .\final_res_s_reg[16]_0 (\gen_macc[23].logic_inst_n_49 ),
        .\final_res_s_reg[17]_0 (\gen_macc[23].logic_inst_n_50 ),
        .\final_res_s_reg[18]_0 (\gen_macc[23].logic_inst_n_51 ),
        .\final_res_s_reg[19]_0 (\gen_macc[23].logic_inst_n_52 ),
        .\final_res_s_reg[1]_0 (\gen_macc[23].logic_inst_n_34 ),
        .\final_res_s_reg[20]_0 (\gen_macc[23].logic_inst_n_53 ),
        .\final_res_s_reg[21]_0 (\gen_macc[23].logic_inst_n_54 ),
        .\final_res_s_reg[22]_0 (\gen_macc[23].logic_inst_n_55 ),
        .\final_res_s_reg[23]_0 (\gen_macc[23].logic_inst_n_56 ),
        .\final_res_s_reg[24]_0 (\gen_macc[23].logic_inst_n_57 ),
        .\final_res_s_reg[25]_0 (\gen_macc[23].logic_inst_n_58 ),
        .\final_res_s_reg[26]_0 (\gen_macc[23].logic_inst_n_59 ),
        .\final_res_s_reg[27]_0 (\gen_macc[23].logic_inst_n_60 ),
        .\final_res_s_reg[28]_0 (\gen_macc[23].logic_inst_n_61 ),
        .\final_res_s_reg[29]_0 (\gen_macc[23].logic_inst_n_62 ),
        .\final_res_s_reg[2]_0 (\gen_macc[23].logic_inst_n_35 ),
        .\final_res_s_reg[30]_0 (\gen_macc[23].logic_inst_n_63 ),
        .\final_res_s_reg[31]_0 (\gen_macc[23].logic_inst_n_64 ),
        .\final_res_s_reg[3]_0 (\gen_macc[23].logic_inst_n_36 ),
        .\final_res_s_reg[4]_0 (\gen_macc[23].logic_inst_n_37 ),
        .\final_res_s_reg[5]_0 (\gen_macc[23].logic_inst_n_38 ),
        .\final_res_s_reg[6]_0 (\gen_macc[23].logic_inst_n_39 ),
        .\final_res_s_reg[7]_0 (\gen_macc[23].logic_inst_n_40 ),
        .\final_res_s_reg[8]_0 (\gen_macc[23].logic_inst_n_41 ),
        .\final_res_s_reg[9]_0 (\gen_macc[23].logic_inst_n_42 ),
        .ready_s(ready_s_73),
        .ready_s_reg_0(ready_next_s[24]),
        .res_s0(res_s0_0),
        .res_s_reg_0({\gen_macc[22].logic_inst_n_2 ,\gen_macc[22].logic_inst_n_3 ,\gen_macc[22].logic_inst_n_4 ,\gen_macc[22].logic_inst_n_5 ,\gen_macc[22].logic_inst_n_6 ,\gen_macc[22].logic_inst_n_7 ,\gen_macc[22].logic_inst_n_8 ,\gen_macc[22].logic_inst_n_9 ,\gen_macc[22].logic_inst_n_10 ,\gen_macc[22].logic_inst_n_11 ,\gen_macc[22].logic_inst_n_12 ,\gen_macc[22].logic_inst_n_13 ,\gen_macc[22].logic_inst_n_14 ,\gen_macc[22].logic_inst_n_15 ,\gen_macc[22].logic_inst_n_16 ,\gen_macc[22].logic_inst_n_17 ,\gen_macc[22].logic_inst_n_18 ,\gen_macc[22].logic_inst_n_19 ,\gen_macc[22].logic_inst_n_20 ,\gen_macc[22].logic_inst_n_21 ,\gen_macc[22].logic_inst_n_22 ,\gen_macc[22].logic_inst_n_23 ,\gen_macc[22].logic_inst_n_24 ,\gen_macc[22].logic_inst_n_25 ,\gen_macc[22].logic_inst_n_26 ,\gen_macc[22].logic_inst_n_27 ,\gen_macc[22].logic_inst_n_28 ,\gen_macc[22].logic_inst_n_29 ,\gen_macc[22].logic_inst_n_30 ,\gen_macc[22].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_15 \gen_macc[24].logic_inst 
       (.ACOUT({\gen_macc[23].logic_inst_n_1 ,\gen_macc[23].logic_inst_n_2 ,\gen_macc[23].logic_inst_n_3 ,\gen_macc[23].logic_inst_n_4 ,\gen_macc[23].logic_inst_n_5 ,\gen_macc[23].logic_inst_n_6 ,\gen_macc[23].logic_inst_n_7 ,\gen_macc[23].logic_inst_n_8 ,\gen_macc[23].logic_inst_n_9 ,\gen_macc[23].logic_inst_n_10 ,\gen_macc[23].logic_inst_n_11 ,\gen_macc[23].logic_inst_n_12 ,\gen_macc[23].logic_inst_n_13 ,\gen_macc[23].logic_inst_n_14 ,\gen_macc[23].logic_inst_n_15 ,\gen_macc[23].logic_inst_n_16 ,\gen_macc[23].logic_inst_n_17 ,\gen_macc[23].logic_inst_n_18 ,\gen_macc[23].logic_inst_n_19 ,\gen_macc[23].logic_inst_n_20 ,\gen_macc[23].logic_inst_n_21 ,\gen_macc[23].logic_inst_n_22 ,\gen_macc[23].logic_inst_n_23 ,\gen_macc[23].logic_inst_n_24 ,\gen_macc[23].logic_inst_n_25 ,\gen_macc[23].logic_inst_n_26 ,\gen_macc[23].logic_inst_n_27 ,\gen_macc[23].logic_inst_n_28 ,\gen_macc[23].logic_inst_n_29 ,\gen_macc[23].logic_inst_n_30 }),
        .E(data_out_en_s),
        .Q(\end_s_reg_n_0_[24] ),
        .data_clk_i(data_clk_i),
        .data_en_o_reg_0(data_en_s[24]),
        .data_en_s(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_76),
        .\final_res_s_reg[31]_0 ({\gen_macc[24].logic_inst_n_3 ,\gen_macc[24].logic_inst_n_4 ,\gen_macc[24].logic_inst_n_5 ,\gen_macc[24].logic_inst_n_6 ,\gen_macc[24].logic_inst_n_7 ,\gen_macc[24].logic_inst_n_8 ,\gen_macc[24].logic_inst_n_9 ,\gen_macc[24].logic_inst_n_10 ,\gen_macc[24].logic_inst_n_11 ,\gen_macc[24].logic_inst_n_12 ,\gen_macc[24].logic_inst_n_13 ,\gen_macc[24].logic_inst_n_14 ,\gen_macc[24].logic_inst_n_15 ,\gen_macc[24].logic_inst_n_16 ,\gen_macc[24].logic_inst_n_17 ,\gen_macc[24].logic_inst_n_18 ,\gen_macc[24].logic_inst_n_19 ,\gen_macc[24].logic_inst_n_20 ,\gen_macc[24].logic_inst_n_21 ,\gen_macc[24].logic_inst_n_22 ,\gen_macc[24].logic_inst_n_23 ,\gen_macc[24].logic_inst_n_24 ,\gen_macc[24].logic_inst_n_25 ,\gen_macc[24].logic_inst_n_26 ,\gen_macc[24].logic_inst_n_27 ,\gen_macc[24].logic_inst_n_28 ,\gen_macc[24].logic_inst_n_29 ,\gen_macc[24].logic_inst_n_30 ,\gen_macc[24].logic_inst_n_31 ,\gen_macc[24].logic_inst_n_32 ,\gen_macc[24].logic_inst_n_33 ,\gen_macc[24].logic_inst_n_34 }),
        .ready_s(ready_s_75),
        .ready_s_reg_0(ready_next_s[0]),
        .res_s0(res_s0));
  double_iq_pid_vco_firReal_0_0_firReal_proc_16 \gen_macc[2].logic_inst 
       (.ACOUT({\gen_macc[2].logic_inst_n_2 ,\gen_macc[2].logic_inst_n_3 ,\gen_macc[2].logic_inst_n_4 ,\gen_macc[2].logic_inst_n_5 ,\gen_macc[2].logic_inst_n_6 ,\gen_macc[2].logic_inst_n_7 ,\gen_macc[2].logic_inst_n_8 ,\gen_macc[2].logic_inst_n_9 ,\gen_macc[2].logic_inst_n_10 ,\gen_macc[2].logic_inst_n_11 ,\gen_macc[2].logic_inst_n_12 ,\gen_macc[2].logic_inst_n_13 ,\gen_macc[2].logic_inst_n_14 ,\gen_macc[2].logic_inst_n_15 ,\gen_macc[2].logic_inst_n_16 ,\gen_macc[2].logic_inst_n_17 ,\gen_macc[2].logic_inst_n_18 ,\gen_macc[2].logic_inst_n_19 ,\gen_macc[2].logic_inst_n_20 ,\gen_macc[2].logic_inst_n_21 ,\gen_macc[2].logic_inst_n_22 ,\gen_macc[2].logic_inst_n_23 ,\gen_macc[2].logic_inst_n_24 ,\gen_macc[2].logic_inst_n_25 ,\gen_macc[2].logic_inst_n_26 ,\gen_macc[2].logic_inst_n_27 ,\gen_macc[2].logic_inst_n_28 ,\gen_macc[2].logic_inst_n_29 ,\gen_macc[2].logic_inst_n_30 ,\gen_macc[2].logic_inst_n_31 }),
        .E(data_out_en_s_43),
        .Q(end_next_s_0[3]),
        .data_clk_i(data_clk_i),
        .data_en_s(data_en_s[2]),
        .data_en_s_0(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_78),
        .\final_res_s_reg[31]_0 ({\gen_macc[2].logic_inst_n_33 ,\gen_macc[2].logic_inst_n_34 ,\gen_macc[2].logic_inst_n_35 ,\gen_macc[2].logic_inst_n_36 ,\gen_macc[2].logic_inst_n_37 ,\gen_macc[2].logic_inst_n_38 ,\gen_macc[2].logic_inst_n_39 ,\gen_macc[2].logic_inst_n_40 ,\gen_macc[2].logic_inst_n_41 ,\gen_macc[2].logic_inst_n_42 ,\gen_macc[2].logic_inst_n_43 ,\gen_macc[2].logic_inst_n_44 ,\gen_macc[2].logic_inst_n_45 ,\gen_macc[2].logic_inst_n_46 ,\gen_macc[2].logic_inst_n_47 ,\gen_macc[2].logic_inst_n_48 ,\gen_macc[2].logic_inst_n_49 ,\gen_macc[2].logic_inst_n_50 ,\gen_macc[2].logic_inst_n_51 ,\gen_macc[2].logic_inst_n_52 ,\gen_macc[2].logic_inst_n_53 ,\gen_macc[2].logic_inst_n_54 ,\gen_macc[2].logic_inst_n_55 ,\gen_macc[2].logic_inst_n_56 ,\gen_macc[2].logic_inst_n_57 ,\gen_macc[2].logic_inst_n_58 ,\gen_macc[2].logic_inst_n_59 ,\gen_macc[2].logic_inst_n_60 ,\gen_macc[2].logic_inst_n_61 ,\gen_macc[2].logic_inst_n_62 ,\gen_macc[2].logic_inst_n_63 ,\gen_macc[2].logic_inst_n_64 }),
        .ready_s(ready_s_77),
        .ready_s_reg_0(ready_next_s[3]),
        .res_s0(res_s0_42),
        .res_s_reg_0({\gen_macc[1].logic_inst_n_2 ,\gen_macc[1].logic_inst_n_3 ,\gen_macc[1].logic_inst_n_4 ,\gen_macc[1].logic_inst_n_5 ,\gen_macc[1].logic_inst_n_6 ,\gen_macc[1].logic_inst_n_7 ,\gen_macc[1].logic_inst_n_8 ,\gen_macc[1].logic_inst_n_9 ,\gen_macc[1].logic_inst_n_10 ,\gen_macc[1].logic_inst_n_11 ,\gen_macc[1].logic_inst_n_12 ,\gen_macc[1].logic_inst_n_13 ,\gen_macc[1].logic_inst_n_14 ,\gen_macc[1].logic_inst_n_15 ,\gen_macc[1].logic_inst_n_16 ,\gen_macc[1].logic_inst_n_17 ,\gen_macc[1].logic_inst_n_18 ,\gen_macc[1].logic_inst_n_19 ,\gen_macc[1].logic_inst_n_20 ,\gen_macc[1].logic_inst_n_21 ,\gen_macc[1].logic_inst_n_22 ,\gen_macc[1].logic_inst_n_23 ,\gen_macc[1].logic_inst_n_24 ,\gen_macc[1].logic_inst_n_25 ,\gen_macc[1].logic_inst_n_26 ,\gen_macc[1].logic_inst_n_27 ,\gen_macc[1].logic_inst_n_28 ,\gen_macc[1].logic_inst_n_29 ,\gen_macc[1].logic_inst_n_30 ,\gen_macc[1].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_17 \gen_macc[3].logic_inst 
       (.ACOUT({\gen_macc[3].logic_inst_n_1 ,\gen_macc[3].logic_inst_n_2 ,\gen_macc[3].logic_inst_n_3 ,\gen_macc[3].logic_inst_n_4 ,\gen_macc[3].logic_inst_n_5 ,\gen_macc[3].logic_inst_n_6 ,\gen_macc[3].logic_inst_n_7 ,\gen_macc[3].logic_inst_n_8 ,\gen_macc[3].logic_inst_n_9 ,\gen_macc[3].logic_inst_n_10 ,\gen_macc[3].logic_inst_n_11 ,\gen_macc[3].logic_inst_n_12 ,\gen_macc[3].logic_inst_n_13 ,\gen_macc[3].logic_inst_n_14 ,\gen_macc[3].logic_inst_n_15 ,\gen_macc[3].logic_inst_n_16 ,\gen_macc[3].logic_inst_n_17 ,\gen_macc[3].logic_inst_n_18 ,\gen_macc[3].logic_inst_n_19 ,\gen_macc[3].logic_inst_n_20 ,\gen_macc[3].logic_inst_n_21 ,\gen_macc[3].logic_inst_n_22 ,\gen_macc[3].logic_inst_n_23 ,\gen_macc[3].logic_inst_n_24 ,\gen_macc[3].logic_inst_n_25 ,\gen_macc[3].logic_inst_n_26 ,\gen_macc[3].logic_inst_n_27 ,\gen_macc[3].logic_inst_n_28 ,\gen_macc[3].logic_inst_n_29 ,\gen_macc[3].logic_inst_n_30 }),
        .D(\data_s[24]_0 ),
        .E(data_out_en_s_41),
        .Q(end_next_s_0[4]),
        .SR(clear),
        .\cpt_store_s_reg[0]_rep (data_en_s[2:0]),
        .\cpt_store_s_reg[0]_rep_0 (\cpt_store_s[4]_i_3_n_0 ),
        .\cpt_store_s_reg[0]_rep_1 (\gen_macc[5].logic_inst_n_32 ),
        .\cpt_store_s_reg[0]_rep_2 (\gen_macc[12].logic_inst_n_32 ),
        .\cpt_store_s_reg[0]_rep_3 (\gen_macc[15].logic_inst_n_32 ),
        .\cpt_store_s_reg[0]_rep_4 (\gen_macc[23].logic_inst_n_32 ),
        .data_clk_i(data_clk_i),
        .data_en_next(data_en_next),
        .data_en_s(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .\data_out_s_reg[0] (\data_out_s[31]_i_9_n_0 ),
        .\data_out_s_reg[0]_0 (\gen_macc[23].logic_inst_n_33 ),
        .\data_out_s_reg[0]_1 (\data_out_s[31]_i_11_n_0 ),
        .\data_out_s_reg[0]_2 (\gen_macc[19].logic_inst_n_33 ),
        .\data_out_s_reg[0]_3 (cpt_store_s_reg[3:0]),
        .\data_out_s_reg[0]_4 (\gen_macc[11].logic_inst_n_33 ),
        .\data_out_s_reg[0]_i_2_0 (\gen_macc[7].logic_inst_n_33 ),
        .\data_out_s_reg[0]_i_5_0 (\cpt_store_s_reg[1]_rep_n_0 ),
        .\data_out_s_reg[10] (\gen_macc[23].logic_inst_n_43 ),
        .\data_out_s_reg[10]_0 (\gen_macc[19].logic_inst_n_43 ),
        .\data_out_s_reg[10]_1 (\gen_macc[11].logic_inst_n_43 ),
        .\data_out_s_reg[10]_i_2_0 (\gen_macc[7].logic_inst_n_43 ),
        .\data_out_s_reg[10]_i_5_0 (\cpt_store_s_reg[0]_rep_n_0 ),
        .\data_out_s_reg[11] (\gen_macc[23].logic_inst_n_44 ),
        .\data_out_s_reg[11]_0 (\gen_macc[19].logic_inst_n_44 ),
        .\data_out_s_reg[11]_1 (\gen_macc[11].logic_inst_n_44 ),
        .\data_out_s_reg[11]_i_2_0 (\gen_macc[7].logic_inst_n_44 ),
        .\data_out_s_reg[12] (\gen_macc[23].logic_inst_n_45 ),
        .\data_out_s_reg[12]_0 (\gen_macc[19].logic_inst_n_45 ),
        .\data_out_s_reg[12]_1 (\gen_macc[11].logic_inst_n_45 ),
        .\data_out_s_reg[12]_i_2_0 (\gen_macc[7].logic_inst_n_45 ),
        .\data_out_s_reg[13] (\gen_macc[23].logic_inst_n_46 ),
        .\data_out_s_reg[13]_0 (\gen_macc[19].logic_inst_n_46 ),
        .\data_out_s_reg[13]_1 (\gen_macc[11].logic_inst_n_46 ),
        .\data_out_s_reg[13]_i_2_0 (\gen_macc[7].logic_inst_n_46 ),
        .\data_out_s_reg[14] (\gen_macc[23].logic_inst_n_47 ),
        .\data_out_s_reg[14]_0 (\gen_macc[19].logic_inst_n_47 ),
        .\data_out_s_reg[14]_1 (\gen_macc[11].logic_inst_n_47 ),
        .\data_out_s_reg[14]_i_2_0 (\gen_macc[7].logic_inst_n_47 ),
        .\data_out_s_reg[15] (\gen_macc[23].logic_inst_n_48 ),
        .\data_out_s_reg[15]_0 (\gen_macc[19].logic_inst_n_48 ),
        .\data_out_s_reg[15]_1 (\gen_macc[11].logic_inst_n_48 ),
        .\data_out_s_reg[15]_i_2_0 (\gen_macc[7].logic_inst_n_48 ),
        .\data_out_s_reg[16] (\gen_macc[23].logic_inst_n_49 ),
        .\data_out_s_reg[16]_0 (\gen_macc[19].logic_inst_n_49 ),
        .\data_out_s_reg[16]_1 (\gen_macc[11].logic_inst_n_49 ),
        .\data_out_s_reg[16]_i_2_0 (\gen_macc[7].logic_inst_n_49 ),
        .\data_out_s_reg[17] (\gen_macc[23].logic_inst_n_50 ),
        .\data_out_s_reg[17]_0 (\gen_macc[19].logic_inst_n_50 ),
        .\data_out_s_reg[17]_1 (\gen_macc[11].logic_inst_n_50 ),
        .\data_out_s_reg[17]_i_2_0 (\gen_macc[7].logic_inst_n_50 ),
        .\data_out_s_reg[18] (\gen_macc[23].logic_inst_n_51 ),
        .\data_out_s_reg[18]_0 (\gen_macc[19].logic_inst_n_51 ),
        .\data_out_s_reg[18]_1 (\gen_macc[11].logic_inst_n_51 ),
        .\data_out_s_reg[18]_i_2_0 (\gen_macc[7].logic_inst_n_51 ),
        .\data_out_s_reg[19] (\gen_macc[23].logic_inst_n_52 ),
        .\data_out_s_reg[19]_0 (\gen_macc[19].logic_inst_n_52 ),
        .\data_out_s_reg[19]_1 (\gen_macc[11].logic_inst_n_52 ),
        .\data_out_s_reg[19]_i_2_0 (\gen_macc[7].logic_inst_n_52 ),
        .\data_out_s_reg[1] (\gen_macc[23].logic_inst_n_34 ),
        .\data_out_s_reg[1]_0 (\gen_macc[19].logic_inst_n_34 ),
        .\data_out_s_reg[1]_1 (\gen_macc[11].logic_inst_n_34 ),
        .\data_out_s_reg[1]_i_2_0 (\gen_macc[7].logic_inst_n_34 ),
        .\data_out_s_reg[20] (\gen_macc[23].logic_inst_n_53 ),
        .\data_out_s_reg[20]_0 (\gen_macc[19].logic_inst_n_53 ),
        .\data_out_s_reg[20]_1 (\gen_macc[11].logic_inst_n_53 ),
        .\data_out_s_reg[20]_i_2_0 (\gen_macc[7].logic_inst_n_53 ),
        .\data_out_s_reg[21] (\gen_macc[23].logic_inst_n_54 ),
        .\data_out_s_reg[21]_0 (\gen_macc[19].logic_inst_n_54 ),
        .\data_out_s_reg[21]_1 (\gen_macc[11].logic_inst_n_54 ),
        .\data_out_s_reg[21]_i_2_0 (\gen_macc[7].logic_inst_n_54 ),
        .\data_out_s_reg[22] (\gen_macc[23].logic_inst_n_55 ),
        .\data_out_s_reg[22]_0 (\gen_macc[19].logic_inst_n_55 ),
        .\data_out_s_reg[22]_1 (\gen_macc[11].logic_inst_n_55 ),
        .\data_out_s_reg[22]_i_2_0 (\gen_macc[7].logic_inst_n_55 ),
        .\data_out_s_reg[23] (\gen_macc[23].logic_inst_n_56 ),
        .\data_out_s_reg[23]_0 (\gen_macc[19].logic_inst_n_56 ),
        .\data_out_s_reg[23]_1 (\gen_macc[11].logic_inst_n_56 ),
        .\data_out_s_reg[23]_i_2_0 (\gen_macc[7].logic_inst_n_56 ),
        .\data_out_s_reg[24] (\gen_macc[23].logic_inst_n_57 ),
        .\data_out_s_reg[24]_0 (\gen_macc[19].logic_inst_n_57 ),
        .\data_out_s_reg[24]_1 (\gen_macc[11].logic_inst_n_57 ),
        .\data_out_s_reg[24]_i_2_0 (\gen_macc[7].logic_inst_n_57 ),
        .\data_out_s_reg[25] (\gen_macc[23].logic_inst_n_58 ),
        .\data_out_s_reg[25]_0 (\gen_macc[19].logic_inst_n_58 ),
        .\data_out_s_reg[25]_1 (\gen_macc[11].logic_inst_n_58 ),
        .\data_out_s_reg[25]_i_2_0 (\gen_macc[7].logic_inst_n_58 ),
        .\data_out_s_reg[26] (\gen_macc[23].logic_inst_n_59 ),
        .\data_out_s_reg[26]_0 (\gen_macc[19].logic_inst_n_59 ),
        .\data_out_s_reg[26]_1 (\gen_macc[11].logic_inst_n_59 ),
        .\data_out_s_reg[26]_i_2_0 (\gen_macc[7].logic_inst_n_59 ),
        .\data_out_s_reg[27] (\gen_macc[23].logic_inst_n_60 ),
        .\data_out_s_reg[27]_0 (\gen_macc[19].logic_inst_n_60 ),
        .\data_out_s_reg[27]_1 (\gen_macc[11].logic_inst_n_60 ),
        .\data_out_s_reg[27]_i_2_0 (\gen_macc[7].logic_inst_n_60 ),
        .\data_out_s_reg[28] (\gen_macc[23].logic_inst_n_61 ),
        .\data_out_s_reg[28]_0 (\gen_macc[19].logic_inst_n_61 ),
        .\data_out_s_reg[28]_1 (\gen_macc[11].logic_inst_n_61 ),
        .\data_out_s_reg[28]_i_2_0 (\gen_macc[7].logic_inst_n_61 ),
        .\data_out_s_reg[29] (\gen_macc[23].logic_inst_n_62 ),
        .\data_out_s_reg[29]_0 (\gen_macc[19].logic_inst_n_62 ),
        .\data_out_s_reg[29]_1 (\gen_macc[11].logic_inst_n_62 ),
        .\data_out_s_reg[29]_i_2_0 (\gen_macc[7].logic_inst_n_62 ),
        .\data_out_s_reg[2] (\gen_macc[23].logic_inst_n_35 ),
        .\data_out_s_reg[2]_0 (\gen_macc[19].logic_inst_n_35 ),
        .\data_out_s_reg[2]_1 (\gen_macc[11].logic_inst_n_35 ),
        .\data_out_s_reg[2]_i_2_0 (\gen_macc[7].logic_inst_n_35 ),
        .\data_out_s_reg[30] (\gen_macc[23].logic_inst_n_63 ),
        .\data_out_s_reg[30]_0 (\gen_macc[19].logic_inst_n_63 ),
        .\data_out_s_reg[30]_1 (\gen_macc[11].logic_inst_n_63 ),
        .\data_out_s_reg[30]_i_2_0 (\gen_macc[7].logic_inst_n_63 ),
        .\data_out_s_reg[31] ({\gen_macc[24].logic_inst_n_3 ,\gen_macc[24].logic_inst_n_4 ,\gen_macc[24].logic_inst_n_5 ,\gen_macc[24].logic_inst_n_6 ,\gen_macc[24].logic_inst_n_7 ,\gen_macc[24].logic_inst_n_8 ,\gen_macc[24].logic_inst_n_9 ,\gen_macc[24].logic_inst_n_10 ,\gen_macc[24].logic_inst_n_11 ,\gen_macc[24].logic_inst_n_12 ,\gen_macc[24].logic_inst_n_13 ,\gen_macc[24].logic_inst_n_14 ,\gen_macc[24].logic_inst_n_15 ,\gen_macc[24].logic_inst_n_16 ,\gen_macc[24].logic_inst_n_17 ,\gen_macc[24].logic_inst_n_18 ,\gen_macc[24].logic_inst_n_19 ,\gen_macc[24].logic_inst_n_20 ,\gen_macc[24].logic_inst_n_21 ,\gen_macc[24].logic_inst_n_22 ,\gen_macc[24].logic_inst_n_23 ,\gen_macc[24].logic_inst_n_24 ,\gen_macc[24].logic_inst_n_25 ,\gen_macc[24].logic_inst_n_26 ,\gen_macc[24].logic_inst_n_27 ,\gen_macc[24].logic_inst_n_28 ,\gen_macc[24].logic_inst_n_29 ,\gen_macc[24].logic_inst_n_30 ,\gen_macc[24].logic_inst_n_31 ,\gen_macc[24].logic_inst_n_32 ,\gen_macc[24].logic_inst_n_33 ,\gen_macc[24].logic_inst_n_34 }),
        .\data_out_s_reg[31]_0 (\gen_macc[23].logic_inst_n_64 ),
        .\data_out_s_reg[31]_1 (\gen_macc[19].logic_inst_n_64 ),
        .\data_out_s_reg[31]_2 (\gen_macc[11].logic_inst_n_64 ),
        .\data_out_s_reg[31]_i_13_0 ({\gen_macc[2].logic_inst_n_33 ,\gen_macc[2].logic_inst_n_34 ,\gen_macc[2].logic_inst_n_35 ,\gen_macc[2].logic_inst_n_36 ,\gen_macc[2].logic_inst_n_37 ,\gen_macc[2].logic_inst_n_38 ,\gen_macc[2].logic_inst_n_39 ,\gen_macc[2].logic_inst_n_40 ,\gen_macc[2].logic_inst_n_41 ,\gen_macc[2].logic_inst_n_42 ,\gen_macc[2].logic_inst_n_43 ,\gen_macc[2].logic_inst_n_44 ,\gen_macc[2].logic_inst_n_45 ,\gen_macc[2].logic_inst_n_46 ,\gen_macc[2].logic_inst_n_47 ,\gen_macc[2].logic_inst_n_48 ,\gen_macc[2].logic_inst_n_49 ,\gen_macc[2].logic_inst_n_50 ,\gen_macc[2].logic_inst_n_51 ,\gen_macc[2].logic_inst_n_52 ,\gen_macc[2].logic_inst_n_53 ,\gen_macc[2].logic_inst_n_54 ,\gen_macc[2].logic_inst_n_55 ,\gen_macc[2].logic_inst_n_56 ,\gen_macc[2].logic_inst_n_57 ,\gen_macc[2].logic_inst_n_58 ,\gen_macc[2].logic_inst_n_59 ,\gen_macc[2].logic_inst_n_60 ,\gen_macc[2].logic_inst_n_61 ,\gen_macc[2].logic_inst_n_62 ,\gen_macc[2].logic_inst_n_63 ,\gen_macc[2].logic_inst_n_64 }),
        .\data_out_s_reg[31]_i_13_1 ({\gen_macc[1].logic_inst_n_33 ,\gen_macc[1].logic_inst_n_34 ,\gen_macc[1].logic_inst_n_35 ,\gen_macc[1].logic_inst_n_36 ,\gen_macc[1].logic_inst_n_37 ,\gen_macc[1].logic_inst_n_38 ,\gen_macc[1].logic_inst_n_39 ,\gen_macc[1].logic_inst_n_40 ,\gen_macc[1].logic_inst_n_41 ,\gen_macc[1].logic_inst_n_42 ,\gen_macc[1].logic_inst_n_43 ,\gen_macc[1].logic_inst_n_44 ,\gen_macc[1].logic_inst_n_45 ,\gen_macc[1].logic_inst_n_46 ,\gen_macc[1].logic_inst_n_47 ,\gen_macc[1].logic_inst_n_48 ,\gen_macc[1].logic_inst_n_49 ,\gen_macc[1].logic_inst_n_50 ,\gen_macc[1].logic_inst_n_51 ,\gen_macc[1].logic_inst_n_52 ,\gen_macc[1].logic_inst_n_53 ,\gen_macc[1].logic_inst_n_54 ,\gen_macc[1].logic_inst_n_55 ,\gen_macc[1].logic_inst_n_56 ,\gen_macc[1].logic_inst_n_57 ,\gen_macc[1].logic_inst_n_58 ,\gen_macc[1].logic_inst_n_59 ,\gen_macc[1].logic_inst_n_60 ,\gen_macc[1].logic_inst_n_61 ,\gen_macc[1].logic_inst_n_62 ,\gen_macc[1].logic_inst_n_63 ,\gen_macc[1].logic_inst_n_64 }),
        .\data_out_s_reg[31]_i_13_2 (final_res_s),
        .\data_out_s_reg[31]_i_8_0 (\gen_macc[7].logic_inst_n_64 ),
        .\data_out_s_reg[3] (\gen_macc[23].logic_inst_n_36 ),
        .\data_out_s_reg[3]_0 (\gen_macc[19].logic_inst_n_36 ),
        .\data_out_s_reg[3]_1 (\gen_macc[11].logic_inst_n_36 ),
        .\data_out_s_reg[3]_i_2_0 (\gen_macc[7].logic_inst_n_36 ),
        .\data_out_s_reg[4] (\gen_macc[23].logic_inst_n_37 ),
        .\data_out_s_reg[4]_0 (\gen_macc[19].logic_inst_n_37 ),
        .\data_out_s_reg[4]_1 (\gen_macc[11].logic_inst_n_37 ),
        .\data_out_s_reg[4]_i_2_0 (\gen_macc[7].logic_inst_n_37 ),
        .\data_out_s_reg[5] (\gen_macc[23].logic_inst_n_38 ),
        .\data_out_s_reg[5]_0 (\gen_macc[19].logic_inst_n_38 ),
        .\data_out_s_reg[5]_1 (\gen_macc[11].logic_inst_n_38 ),
        .\data_out_s_reg[5]_i_2_0 (\gen_macc[7].logic_inst_n_38 ),
        .\data_out_s_reg[6] (\gen_macc[23].logic_inst_n_39 ),
        .\data_out_s_reg[6]_0 (\gen_macc[19].logic_inst_n_39 ),
        .\data_out_s_reg[6]_1 (\gen_macc[11].logic_inst_n_39 ),
        .\data_out_s_reg[6]_i_2_0 (\gen_macc[7].logic_inst_n_39 ),
        .\data_out_s_reg[7] (\gen_macc[23].logic_inst_n_40 ),
        .\data_out_s_reg[7]_0 (\gen_macc[19].logic_inst_n_40 ),
        .\data_out_s_reg[7]_1 (\gen_macc[11].logic_inst_n_40 ),
        .\data_out_s_reg[7]_i_2_0 (\gen_macc[7].logic_inst_n_40 ),
        .\data_out_s_reg[8] (\gen_macc[23].logic_inst_n_41 ),
        .\data_out_s_reg[8]_0 (\gen_macc[19].logic_inst_n_41 ),
        .\data_out_s_reg[8]_1 (\gen_macc[11].logic_inst_n_41 ),
        .\data_out_s_reg[8]_i_2_0 (\gen_macc[7].logic_inst_n_41 ),
        .\data_out_s_reg[9] (\gen_macc[23].logic_inst_n_42 ),
        .\data_out_s_reg[9]_0 (\gen_macc[19].logic_inst_n_42 ),
        .\data_out_s_reg[9]_1 (\gen_macc[11].logic_inst_n_42 ),
        .\data_out_s_reg[9]_i_2_0 (\gen_macc[7].logic_inst_n_42 ),
        .data_rst_i(data_rst_i),
        .end_s(end_s_80),
        .ready_s(ready_s_79),
        .ready_s_reg_0(ready_next_s[4]),
        .res_s0(res_s0_40),
        .res_s_reg_0({\gen_macc[2].logic_inst_n_2 ,\gen_macc[2].logic_inst_n_3 ,\gen_macc[2].logic_inst_n_4 ,\gen_macc[2].logic_inst_n_5 ,\gen_macc[2].logic_inst_n_6 ,\gen_macc[2].logic_inst_n_7 ,\gen_macc[2].logic_inst_n_8 ,\gen_macc[2].logic_inst_n_9 ,\gen_macc[2].logic_inst_n_10 ,\gen_macc[2].logic_inst_n_11 ,\gen_macc[2].logic_inst_n_12 ,\gen_macc[2].logic_inst_n_13 ,\gen_macc[2].logic_inst_n_14 ,\gen_macc[2].logic_inst_n_15 ,\gen_macc[2].logic_inst_n_16 ,\gen_macc[2].logic_inst_n_17 ,\gen_macc[2].logic_inst_n_18 ,\gen_macc[2].logic_inst_n_19 ,\gen_macc[2].logic_inst_n_20 ,\gen_macc[2].logic_inst_n_21 ,\gen_macc[2].logic_inst_n_22 ,\gen_macc[2].logic_inst_n_23 ,\gen_macc[2].logic_inst_n_24 ,\gen_macc[2].logic_inst_n_25 ,\gen_macc[2].logic_inst_n_26 ,\gen_macc[2].logic_inst_n_27 ,\gen_macc[2].logic_inst_n_28 ,\gen_macc[2].logic_inst_n_29 ,\gen_macc[2].logic_inst_n_30 ,\gen_macc[2].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_18 \gen_macc[4].logic_inst 
       (.ACOUT({\gen_macc[4].logic_inst_n_2 ,\gen_macc[4].logic_inst_n_3 ,\gen_macc[4].logic_inst_n_4 ,\gen_macc[4].logic_inst_n_5 ,\gen_macc[4].logic_inst_n_6 ,\gen_macc[4].logic_inst_n_7 ,\gen_macc[4].logic_inst_n_8 ,\gen_macc[4].logic_inst_n_9 ,\gen_macc[4].logic_inst_n_10 ,\gen_macc[4].logic_inst_n_11 ,\gen_macc[4].logic_inst_n_12 ,\gen_macc[4].logic_inst_n_13 ,\gen_macc[4].logic_inst_n_14 ,\gen_macc[4].logic_inst_n_15 ,\gen_macc[4].logic_inst_n_16 ,\gen_macc[4].logic_inst_n_17 ,\gen_macc[4].logic_inst_n_18 ,\gen_macc[4].logic_inst_n_19 ,\gen_macc[4].logic_inst_n_20 ,\gen_macc[4].logic_inst_n_21 ,\gen_macc[4].logic_inst_n_22 ,\gen_macc[4].logic_inst_n_23 ,\gen_macc[4].logic_inst_n_24 ,\gen_macc[4].logic_inst_n_25 ,\gen_macc[4].logic_inst_n_26 ,\gen_macc[4].logic_inst_n_27 ,\gen_macc[4].logic_inst_n_28 ,\gen_macc[4].logic_inst_n_29 ,\gen_macc[4].logic_inst_n_30 ,\gen_macc[4].logic_inst_n_31 }),
        .E(data_out_en_s_39),
        .Q(end_next_s_0[5]),
        .data_clk_i(data_clk_i),
        .data_en_s(data_en_s[4]),
        .data_en_s_0(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_82),
        .\final_res_s_reg[31]_0 ({\gen_macc[4].logic_inst_n_33 ,\gen_macc[4].logic_inst_n_34 ,\gen_macc[4].logic_inst_n_35 ,\gen_macc[4].logic_inst_n_36 ,\gen_macc[4].logic_inst_n_37 ,\gen_macc[4].logic_inst_n_38 ,\gen_macc[4].logic_inst_n_39 ,\gen_macc[4].logic_inst_n_40 ,\gen_macc[4].logic_inst_n_41 ,\gen_macc[4].logic_inst_n_42 ,\gen_macc[4].logic_inst_n_43 ,\gen_macc[4].logic_inst_n_44 ,\gen_macc[4].logic_inst_n_45 ,\gen_macc[4].logic_inst_n_46 ,\gen_macc[4].logic_inst_n_47 ,\gen_macc[4].logic_inst_n_48 ,\gen_macc[4].logic_inst_n_49 ,\gen_macc[4].logic_inst_n_50 ,\gen_macc[4].logic_inst_n_51 ,\gen_macc[4].logic_inst_n_52 ,\gen_macc[4].logic_inst_n_53 ,\gen_macc[4].logic_inst_n_54 ,\gen_macc[4].logic_inst_n_55 ,\gen_macc[4].logic_inst_n_56 ,\gen_macc[4].logic_inst_n_57 ,\gen_macc[4].logic_inst_n_58 ,\gen_macc[4].logic_inst_n_59 ,\gen_macc[4].logic_inst_n_60 ,\gen_macc[4].logic_inst_n_61 ,\gen_macc[4].logic_inst_n_62 ,\gen_macc[4].logic_inst_n_63 ,\gen_macc[4].logic_inst_n_64 }),
        .ready_s(ready_s_81),
        .ready_s_reg_0(ready_next_s[5]),
        .res_s0(res_s0_38),
        .res_s_reg_0({\gen_macc[3].logic_inst_n_1 ,\gen_macc[3].logic_inst_n_2 ,\gen_macc[3].logic_inst_n_3 ,\gen_macc[3].logic_inst_n_4 ,\gen_macc[3].logic_inst_n_5 ,\gen_macc[3].logic_inst_n_6 ,\gen_macc[3].logic_inst_n_7 ,\gen_macc[3].logic_inst_n_8 ,\gen_macc[3].logic_inst_n_9 ,\gen_macc[3].logic_inst_n_10 ,\gen_macc[3].logic_inst_n_11 ,\gen_macc[3].logic_inst_n_12 ,\gen_macc[3].logic_inst_n_13 ,\gen_macc[3].logic_inst_n_14 ,\gen_macc[3].logic_inst_n_15 ,\gen_macc[3].logic_inst_n_16 ,\gen_macc[3].logic_inst_n_17 ,\gen_macc[3].logic_inst_n_18 ,\gen_macc[3].logic_inst_n_19 ,\gen_macc[3].logic_inst_n_20 ,\gen_macc[3].logic_inst_n_21 ,\gen_macc[3].logic_inst_n_22 ,\gen_macc[3].logic_inst_n_23 ,\gen_macc[3].logic_inst_n_24 ,\gen_macc[3].logic_inst_n_25 ,\gen_macc[3].logic_inst_n_26 ,\gen_macc[3].logic_inst_n_27 ,\gen_macc[3].logic_inst_n_28 ,\gen_macc[3].logic_inst_n_29 ,\gen_macc[3].logic_inst_n_30 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_19 \gen_macc[5].logic_inst 
       (.ACOUT({\gen_macc[5].logic_inst_n_1 ,\gen_macc[5].logic_inst_n_2 ,\gen_macc[5].logic_inst_n_3 ,\gen_macc[5].logic_inst_n_4 ,\gen_macc[5].logic_inst_n_5 ,\gen_macc[5].logic_inst_n_6 ,\gen_macc[5].logic_inst_n_7 ,\gen_macc[5].logic_inst_n_8 ,\gen_macc[5].logic_inst_n_9 ,\gen_macc[5].logic_inst_n_10 ,\gen_macc[5].logic_inst_n_11 ,\gen_macc[5].logic_inst_n_12 ,\gen_macc[5].logic_inst_n_13 ,\gen_macc[5].logic_inst_n_14 ,\gen_macc[5].logic_inst_n_15 ,\gen_macc[5].logic_inst_n_16 ,\gen_macc[5].logic_inst_n_17 ,\gen_macc[5].logic_inst_n_18 ,\gen_macc[5].logic_inst_n_19 ,\gen_macc[5].logic_inst_n_20 ,\gen_macc[5].logic_inst_n_21 ,\gen_macc[5].logic_inst_n_22 ,\gen_macc[5].logic_inst_n_23 ,\gen_macc[5].logic_inst_n_24 ,\gen_macc[5].logic_inst_n_25 ,\gen_macc[5].logic_inst_n_26 ,\gen_macc[5].logic_inst_n_27 ,\gen_macc[5].logic_inst_n_28 ,\gen_macc[5].logic_inst_n_29 ,\gen_macc[5].logic_inst_n_30 }),
        .E(data_out_en_s_37),
        .Q(end_next_s_0[6]),
        .\cpt_store_s_reg[0]_rep ({data_en_s[6],data_en_s[4]}),
        .data_clk_i(data_clk_i),
        .data_en_o_reg_0(\gen_macc[5].logic_inst_n_32 ),
        .data_en_s(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_84),
        .\final_res_s_reg[31]_0 ({\gen_macc[5].logic_inst_n_33 ,\gen_macc[5].logic_inst_n_34 ,\gen_macc[5].logic_inst_n_35 ,\gen_macc[5].logic_inst_n_36 ,\gen_macc[5].logic_inst_n_37 ,\gen_macc[5].logic_inst_n_38 ,\gen_macc[5].logic_inst_n_39 ,\gen_macc[5].logic_inst_n_40 ,\gen_macc[5].logic_inst_n_41 ,\gen_macc[5].logic_inst_n_42 ,\gen_macc[5].logic_inst_n_43 ,\gen_macc[5].logic_inst_n_44 ,\gen_macc[5].logic_inst_n_45 ,\gen_macc[5].logic_inst_n_46 ,\gen_macc[5].logic_inst_n_47 ,\gen_macc[5].logic_inst_n_48 ,\gen_macc[5].logic_inst_n_49 ,\gen_macc[5].logic_inst_n_50 ,\gen_macc[5].logic_inst_n_51 ,\gen_macc[5].logic_inst_n_52 ,\gen_macc[5].logic_inst_n_53 ,\gen_macc[5].logic_inst_n_54 ,\gen_macc[5].logic_inst_n_55 ,\gen_macc[5].logic_inst_n_56 ,\gen_macc[5].logic_inst_n_57 ,\gen_macc[5].logic_inst_n_58 ,\gen_macc[5].logic_inst_n_59 ,\gen_macc[5].logic_inst_n_60 ,\gen_macc[5].logic_inst_n_61 ,\gen_macc[5].logic_inst_n_62 ,\gen_macc[5].logic_inst_n_63 ,\gen_macc[5].logic_inst_n_64 }),
        .ready_s(ready_s_83),
        .ready_s_reg_0(ready_next_s[6]),
        .res_s0(res_s0_36),
        .res_s_reg_0({\gen_macc[4].logic_inst_n_2 ,\gen_macc[4].logic_inst_n_3 ,\gen_macc[4].logic_inst_n_4 ,\gen_macc[4].logic_inst_n_5 ,\gen_macc[4].logic_inst_n_6 ,\gen_macc[4].logic_inst_n_7 ,\gen_macc[4].logic_inst_n_8 ,\gen_macc[4].logic_inst_n_9 ,\gen_macc[4].logic_inst_n_10 ,\gen_macc[4].logic_inst_n_11 ,\gen_macc[4].logic_inst_n_12 ,\gen_macc[4].logic_inst_n_13 ,\gen_macc[4].logic_inst_n_14 ,\gen_macc[4].logic_inst_n_15 ,\gen_macc[4].logic_inst_n_16 ,\gen_macc[4].logic_inst_n_17 ,\gen_macc[4].logic_inst_n_18 ,\gen_macc[4].logic_inst_n_19 ,\gen_macc[4].logic_inst_n_20 ,\gen_macc[4].logic_inst_n_21 ,\gen_macc[4].logic_inst_n_22 ,\gen_macc[4].logic_inst_n_23 ,\gen_macc[4].logic_inst_n_24 ,\gen_macc[4].logic_inst_n_25 ,\gen_macc[4].logic_inst_n_26 ,\gen_macc[4].logic_inst_n_27 ,\gen_macc[4].logic_inst_n_28 ,\gen_macc[4].logic_inst_n_29 ,\gen_macc[4].logic_inst_n_30 ,\gen_macc[4].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_20 \gen_macc[6].logic_inst 
       (.ACOUT({\gen_macc[6].logic_inst_n_2 ,\gen_macc[6].logic_inst_n_3 ,\gen_macc[6].logic_inst_n_4 ,\gen_macc[6].logic_inst_n_5 ,\gen_macc[6].logic_inst_n_6 ,\gen_macc[6].logic_inst_n_7 ,\gen_macc[6].logic_inst_n_8 ,\gen_macc[6].logic_inst_n_9 ,\gen_macc[6].logic_inst_n_10 ,\gen_macc[6].logic_inst_n_11 ,\gen_macc[6].logic_inst_n_12 ,\gen_macc[6].logic_inst_n_13 ,\gen_macc[6].logic_inst_n_14 ,\gen_macc[6].logic_inst_n_15 ,\gen_macc[6].logic_inst_n_16 ,\gen_macc[6].logic_inst_n_17 ,\gen_macc[6].logic_inst_n_18 ,\gen_macc[6].logic_inst_n_19 ,\gen_macc[6].logic_inst_n_20 ,\gen_macc[6].logic_inst_n_21 ,\gen_macc[6].logic_inst_n_22 ,\gen_macc[6].logic_inst_n_23 ,\gen_macc[6].logic_inst_n_24 ,\gen_macc[6].logic_inst_n_25 ,\gen_macc[6].logic_inst_n_26 ,\gen_macc[6].logic_inst_n_27 ,\gen_macc[6].logic_inst_n_28 ,\gen_macc[6].logic_inst_n_29 ,\gen_macc[6].logic_inst_n_30 ,\gen_macc[6].logic_inst_n_31 }),
        .E(data_out_en_s_35),
        .Q(end_next_s_0[7]),
        .data_clk_i(data_clk_i),
        .data_en_o_reg_0(data_en_s[6]),
        .data_en_s(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_86),
        .\final_res_s_reg[31]_0 ({\gen_macc[6].logic_inst_n_33 ,\gen_macc[6].logic_inst_n_34 ,\gen_macc[6].logic_inst_n_35 ,\gen_macc[6].logic_inst_n_36 ,\gen_macc[6].logic_inst_n_37 ,\gen_macc[6].logic_inst_n_38 ,\gen_macc[6].logic_inst_n_39 ,\gen_macc[6].logic_inst_n_40 ,\gen_macc[6].logic_inst_n_41 ,\gen_macc[6].logic_inst_n_42 ,\gen_macc[6].logic_inst_n_43 ,\gen_macc[6].logic_inst_n_44 ,\gen_macc[6].logic_inst_n_45 ,\gen_macc[6].logic_inst_n_46 ,\gen_macc[6].logic_inst_n_47 ,\gen_macc[6].logic_inst_n_48 ,\gen_macc[6].logic_inst_n_49 ,\gen_macc[6].logic_inst_n_50 ,\gen_macc[6].logic_inst_n_51 ,\gen_macc[6].logic_inst_n_52 ,\gen_macc[6].logic_inst_n_53 ,\gen_macc[6].logic_inst_n_54 ,\gen_macc[6].logic_inst_n_55 ,\gen_macc[6].logic_inst_n_56 ,\gen_macc[6].logic_inst_n_57 ,\gen_macc[6].logic_inst_n_58 ,\gen_macc[6].logic_inst_n_59 ,\gen_macc[6].logic_inst_n_60 ,\gen_macc[6].logic_inst_n_61 ,\gen_macc[6].logic_inst_n_62 ,\gen_macc[6].logic_inst_n_63 ,\gen_macc[6].logic_inst_n_64 }),
        .ready_s(ready_s_85),
        .ready_s_reg_0(ready_next_s[7]),
        .res_s0(res_s0_34),
        .res_s_reg_0({\gen_macc[5].logic_inst_n_1 ,\gen_macc[5].logic_inst_n_2 ,\gen_macc[5].logic_inst_n_3 ,\gen_macc[5].logic_inst_n_4 ,\gen_macc[5].logic_inst_n_5 ,\gen_macc[5].logic_inst_n_6 ,\gen_macc[5].logic_inst_n_7 ,\gen_macc[5].logic_inst_n_8 ,\gen_macc[5].logic_inst_n_9 ,\gen_macc[5].logic_inst_n_10 ,\gen_macc[5].logic_inst_n_11 ,\gen_macc[5].logic_inst_n_12 ,\gen_macc[5].logic_inst_n_13 ,\gen_macc[5].logic_inst_n_14 ,\gen_macc[5].logic_inst_n_15 ,\gen_macc[5].logic_inst_n_16 ,\gen_macc[5].logic_inst_n_17 ,\gen_macc[5].logic_inst_n_18 ,\gen_macc[5].logic_inst_n_19 ,\gen_macc[5].logic_inst_n_20 ,\gen_macc[5].logic_inst_n_21 ,\gen_macc[5].logic_inst_n_22 ,\gen_macc[5].logic_inst_n_23 ,\gen_macc[5].logic_inst_n_24 ,\gen_macc[5].logic_inst_n_25 ,\gen_macc[5].logic_inst_n_26 ,\gen_macc[5].logic_inst_n_27 ,\gen_macc[5].logic_inst_n_28 ,\gen_macc[5].logic_inst_n_29 ,\gen_macc[5].logic_inst_n_30 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_21 \gen_macc[7].logic_inst 
       (.ACOUT({\gen_macc[7].logic_inst_n_2 ,\gen_macc[7].logic_inst_n_3 ,\gen_macc[7].logic_inst_n_4 ,\gen_macc[7].logic_inst_n_5 ,\gen_macc[7].logic_inst_n_6 ,\gen_macc[7].logic_inst_n_7 ,\gen_macc[7].logic_inst_n_8 ,\gen_macc[7].logic_inst_n_9 ,\gen_macc[7].logic_inst_n_10 ,\gen_macc[7].logic_inst_n_11 ,\gen_macc[7].logic_inst_n_12 ,\gen_macc[7].logic_inst_n_13 ,\gen_macc[7].logic_inst_n_14 ,\gen_macc[7].logic_inst_n_15 ,\gen_macc[7].logic_inst_n_16 ,\gen_macc[7].logic_inst_n_17 ,\gen_macc[7].logic_inst_n_18 ,\gen_macc[7].logic_inst_n_19 ,\gen_macc[7].logic_inst_n_20 ,\gen_macc[7].logic_inst_n_21 ,\gen_macc[7].logic_inst_n_22 ,\gen_macc[7].logic_inst_n_23 ,\gen_macc[7].logic_inst_n_24 ,\gen_macc[7].logic_inst_n_25 ,\gen_macc[7].logic_inst_n_26 ,\gen_macc[7].logic_inst_n_27 ,\gen_macc[7].logic_inst_n_28 ,\gen_macc[7].logic_inst_n_29 ,\gen_macc[7].logic_inst_n_30 ,\gen_macc[7].logic_inst_n_31 }),
        .E(data_out_en_s_33),
        .Q(end_next_s_0[8]),
        .data_clk_i(data_clk_i),
        .data_en_o_reg_0(data_en_s[7]),
        .data_en_s(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .\data_out_s_reg[0]_i_5 (\cpt_store_s_reg[1]_rep_n_0 ),
        .\data_out_s_reg[10]_i_5 (\cpt_store_s_reg[0]_rep_n_0 ),
        .\data_out_s_reg[31]_i_13 ({\gen_macc[6].logic_inst_n_33 ,\gen_macc[6].logic_inst_n_34 ,\gen_macc[6].logic_inst_n_35 ,\gen_macc[6].logic_inst_n_36 ,\gen_macc[6].logic_inst_n_37 ,\gen_macc[6].logic_inst_n_38 ,\gen_macc[6].logic_inst_n_39 ,\gen_macc[6].logic_inst_n_40 ,\gen_macc[6].logic_inst_n_41 ,\gen_macc[6].logic_inst_n_42 ,\gen_macc[6].logic_inst_n_43 ,\gen_macc[6].logic_inst_n_44 ,\gen_macc[6].logic_inst_n_45 ,\gen_macc[6].logic_inst_n_46 ,\gen_macc[6].logic_inst_n_47 ,\gen_macc[6].logic_inst_n_48 ,\gen_macc[6].logic_inst_n_49 ,\gen_macc[6].logic_inst_n_50 ,\gen_macc[6].logic_inst_n_51 ,\gen_macc[6].logic_inst_n_52 ,\gen_macc[6].logic_inst_n_53 ,\gen_macc[6].logic_inst_n_54 ,\gen_macc[6].logic_inst_n_55 ,\gen_macc[6].logic_inst_n_56 ,\gen_macc[6].logic_inst_n_57 ,\gen_macc[6].logic_inst_n_58 ,\gen_macc[6].logic_inst_n_59 ,\gen_macc[6].logic_inst_n_60 ,\gen_macc[6].logic_inst_n_61 ,\gen_macc[6].logic_inst_n_62 ,\gen_macc[6].logic_inst_n_63 ,\gen_macc[6].logic_inst_n_64 }),
        .\data_out_s_reg[31]_i_13_0 ({\gen_macc[5].logic_inst_n_33 ,\gen_macc[5].logic_inst_n_34 ,\gen_macc[5].logic_inst_n_35 ,\gen_macc[5].logic_inst_n_36 ,\gen_macc[5].logic_inst_n_37 ,\gen_macc[5].logic_inst_n_38 ,\gen_macc[5].logic_inst_n_39 ,\gen_macc[5].logic_inst_n_40 ,\gen_macc[5].logic_inst_n_41 ,\gen_macc[5].logic_inst_n_42 ,\gen_macc[5].logic_inst_n_43 ,\gen_macc[5].logic_inst_n_44 ,\gen_macc[5].logic_inst_n_45 ,\gen_macc[5].logic_inst_n_46 ,\gen_macc[5].logic_inst_n_47 ,\gen_macc[5].logic_inst_n_48 ,\gen_macc[5].logic_inst_n_49 ,\gen_macc[5].logic_inst_n_50 ,\gen_macc[5].logic_inst_n_51 ,\gen_macc[5].logic_inst_n_52 ,\gen_macc[5].logic_inst_n_53 ,\gen_macc[5].logic_inst_n_54 ,\gen_macc[5].logic_inst_n_55 ,\gen_macc[5].logic_inst_n_56 ,\gen_macc[5].logic_inst_n_57 ,\gen_macc[5].logic_inst_n_58 ,\gen_macc[5].logic_inst_n_59 ,\gen_macc[5].logic_inst_n_60 ,\gen_macc[5].logic_inst_n_61 ,\gen_macc[5].logic_inst_n_62 ,\gen_macc[5].logic_inst_n_63 ,\gen_macc[5].logic_inst_n_64 }),
        .\data_out_s_reg[31]_i_13_1 (cpt_store_s_reg[1:0]),
        .\data_out_s_reg[31]_i_13_2 ({\gen_macc[4].logic_inst_n_33 ,\gen_macc[4].logic_inst_n_34 ,\gen_macc[4].logic_inst_n_35 ,\gen_macc[4].logic_inst_n_36 ,\gen_macc[4].logic_inst_n_37 ,\gen_macc[4].logic_inst_n_38 ,\gen_macc[4].logic_inst_n_39 ,\gen_macc[4].logic_inst_n_40 ,\gen_macc[4].logic_inst_n_41 ,\gen_macc[4].logic_inst_n_42 ,\gen_macc[4].logic_inst_n_43 ,\gen_macc[4].logic_inst_n_44 ,\gen_macc[4].logic_inst_n_45 ,\gen_macc[4].logic_inst_n_46 ,\gen_macc[4].logic_inst_n_47 ,\gen_macc[4].logic_inst_n_48 ,\gen_macc[4].logic_inst_n_49 ,\gen_macc[4].logic_inst_n_50 ,\gen_macc[4].logic_inst_n_51 ,\gen_macc[4].logic_inst_n_52 ,\gen_macc[4].logic_inst_n_53 ,\gen_macc[4].logic_inst_n_54 ,\gen_macc[4].logic_inst_n_55 ,\gen_macc[4].logic_inst_n_56 ,\gen_macc[4].logic_inst_n_57 ,\gen_macc[4].logic_inst_n_58 ,\gen_macc[4].logic_inst_n_59 ,\gen_macc[4].logic_inst_n_60 ,\gen_macc[4].logic_inst_n_61 ,\gen_macc[4].logic_inst_n_62 ,\gen_macc[4].logic_inst_n_63 ,\gen_macc[4].logic_inst_n_64 }),
        .data_rst_i(data_rst_i),
        .end_s(end_s_88),
        .\final_res_s_reg[0]_0 (\gen_macc[7].logic_inst_n_33 ),
        .\final_res_s_reg[10]_0 (\gen_macc[7].logic_inst_n_43 ),
        .\final_res_s_reg[11]_0 (\gen_macc[7].logic_inst_n_44 ),
        .\final_res_s_reg[12]_0 (\gen_macc[7].logic_inst_n_45 ),
        .\final_res_s_reg[13]_0 (\gen_macc[7].logic_inst_n_46 ),
        .\final_res_s_reg[14]_0 (\gen_macc[7].logic_inst_n_47 ),
        .\final_res_s_reg[15]_0 (\gen_macc[7].logic_inst_n_48 ),
        .\final_res_s_reg[16]_0 (\gen_macc[7].logic_inst_n_49 ),
        .\final_res_s_reg[17]_0 (\gen_macc[7].logic_inst_n_50 ),
        .\final_res_s_reg[18]_0 (\gen_macc[7].logic_inst_n_51 ),
        .\final_res_s_reg[19]_0 (\gen_macc[7].logic_inst_n_52 ),
        .\final_res_s_reg[1]_0 (\gen_macc[7].logic_inst_n_34 ),
        .\final_res_s_reg[20]_0 (\gen_macc[7].logic_inst_n_53 ),
        .\final_res_s_reg[21]_0 (\gen_macc[7].logic_inst_n_54 ),
        .\final_res_s_reg[22]_0 (\gen_macc[7].logic_inst_n_55 ),
        .\final_res_s_reg[23]_0 (\gen_macc[7].logic_inst_n_56 ),
        .\final_res_s_reg[24]_0 (\gen_macc[7].logic_inst_n_57 ),
        .\final_res_s_reg[25]_0 (\gen_macc[7].logic_inst_n_58 ),
        .\final_res_s_reg[26]_0 (\gen_macc[7].logic_inst_n_59 ),
        .\final_res_s_reg[27]_0 (\gen_macc[7].logic_inst_n_60 ),
        .\final_res_s_reg[28]_0 (\gen_macc[7].logic_inst_n_61 ),
        .\final_res_s_reg[29]_0 (\gen_macc[7].logic_inst_n_62 ),
        .\final_res_s_reg[2]_0 (\gen_macc[7].logic_inst_n_35 ),
        .\final_res_s_reg[30]_0 (\gen_macc[7].logic_inst_n_63 ),
        .\final_res_s_reg[31]_0 (\gen_macc[7].logic_inst_n_64 ),
        .\final_res_s_reg[3]_0 (\gen_macc[7].logic_inst_n_36 ),
        .\final_res_s_reg[4]_0 (\gen_macc[7].logic_inst_n_37 ),
        .\final_res_s_reg[5]_0 (\gen_macc[7].logic_inst_n_38 ),
        .\final_res_s_reg[6]_0 (\gen_macc[7].logic_inst_n_39 ),
        .\final_res_s_reg[7]_0 (\gen_macc[7].logic_inst_n_40 ),
        .\final_res_s_reg[8]_0 (\gen_macc[7].logic_inst_n_41 ),
        .\final_res_s_reg[9]_0 (\gen_macc[7].logic_inst_n_42 ),
        .ready_s(ready_s_87),
        .ready_s_reg_0(ready_next_s[8]),
        .res_s0(res_s0_32),
        .res_s_reg_0({\gen_macc[6].logic_inst_n_2 ,\gen_macc[6].logic_inst_n_3 ,\gen_macc[6].logic_inst_n_4 ,\gen_macc[6].logic_inst_n_5 ,\gen_macc[6].logic_inst_n_6 ,\gen_macc[6].logic_inst_n_7 ,\gen_macc[6].logic_inst_n_8 ,\gen_macc[6].logic_inst_n_9 ,\gen_macc[6].logic_inst_n_10 ,\gen_macc[6].logic_inst_n_11 ,\gen_macc[6].logic_inst_n_12 ,\gen_macc[6].logic_inst_n_13 ,\gen_macc[6].logic_inst_n_14 ,\gen_macc[6].logic_inst_n_15 ,\gen_macc[6].logic_inst_n_16 ,\gen_macc[6].logic_inst_n_17 ,\gen_macc[6].logic_inst_n_18 ,\gen_macc[6].logic_inst_n_19 ,\gen_macc[6].logic_inst_n_20 ,\gen_macc[6].logic_inst_n_21 ,\gen_macc[6].logic_inst_n_22 ,\gen_macc[6].logic_inst_n_23 ,\gen_macc[6].logic_inst_n_24 ,\gen_macc[6].logic_inst_n_25 ,\gen_macc[6].logic_inst_n_26 ,\gen_macc[6].logic_inst_n_27 ,\gen_macc[6].logic_inst_n_28 ,\gen_macc[6].logic_inst_n_29 ,\gen_macc[6].logic_inst_n_30 ,\gen_macc[6].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_22 \gen_macc[8].logic_inst 
       (.ACOUT({\gen_macc[8].logic_inst_n_2 ,\gen_macc[8].logic_inst_n_3 ,\gen_macc[8].logic_inst_n_4 ,\gen_macc[8].logic_inst_n_5 ,\gen_macc[8].logic_inst_n_6 ,\gen_macc[8].logic_inst_n_7 ,\gen_macc[8].logic_inst_n_8 ,\gen_macc[8].logic_inst_n_9 ,\gen_macc[8].logic_inst_n_10 ,\gen_macc[8].logic_inst_n_11 ,\gen_macc[8].logic_inst_n_12 ,\gen_macc[8].logic_inst_n_13 ,\gen_macc[8].logic_inst_n_14 ,\gen_macc[8].logic_inst_n_15 ,\gen_macc[8].logic_inst_n_16 ,\gen_macc[8].logic_inst_n_17 ,\gen_macc[8].logic_inst_n_18 ,\gen_macc[8].logic_inst_n_19 ,\gen_macc[8].logic_inst_n_20 ,\gen_macc[8].logic_inst_n_21 ,\gen_macc[8].logic_inst_n_22 ,\gen_macc[8].logic_inst_n_23 ,\gen_macc[8].logic_inst_n_24 ,\gen_macc[8].logic_inst_n_25 ,\gen_macc[8].logic_inst_n_26 ,\gen_macc[8].logic_inst_n_27 ,\gen_macc[8].logic_inst_n_28 ,\gen_macc[8].logic_inst_n_29 ,\gen_macc[8].logic_inst_n_30 ,\gen_macc[8].logic_inst_n_31 }),
        .E(data_out_en_s_31),
        .Q(end_next_s_0[9]),
        .data_clk_i(data_clk_i),
        .data_en_o_reg_0(data_en_s[8]),
        .data_en_s(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_90),
        .\final_res_s_reg[31]_0 ({\gen_macc[8].logic_inst_n_33 ,\gen_macc[8].logic_inst_n_34 ,\gen_macc[8].logic_inst_n_35 ,\gen_macc[8].logic_inst_n_36 ,\gen_macc[8].logic_inst_n_37 ,\gen_macc[8].logic_inst_n_38 ,\gen_macc[8].logic_inst_n_39 ,\gen_macc[8].logic_inst_n_40 ,\gen_macc[8].logic_inst_n_41 ,\gen_macc[8].logic_inst_n_42 ,\gen_macc[8].logic_inst_n_43 ,\gen_macc[8].logic_inst_n_44 ,\gen_macc[8].logic_inst_n_45 ,\gen_macc[8].logic_inst_n_46 ,\gen_macc[8].logic_inst_n_47 ,\gen_macc[8].logic_inst_n_48 ,\gen_macc[8].logic_inst_n_49 ,\gen_macc[8].logic_inst_n_50 ,\gen_macc[8].logic_inst_n_51 ,\gen_macc[8].logic_inst_n_52 ,\gen_macc[8].logic_inst_n_53 ,\gen_macc[8].logic_inst_n_54 ,\gen_macc[8].logic_inst_n_55 ,\gen_macc[8].logic_inst_n_56 ,\gen_macc[8].logic_inst_n_57 ,\gen_macc[8].logic_inst_n_58 ,\gen_macc[8].logic_inst_n_59 ,\gen_macc[8].logic_inst_n_60 ,\gen_macc[8].logic_inst_n_61 ,\gen_macc[8].logic_inst_n_62 ,\gen_macc[8].logic_inst_n_63 ,\gen_macc[8].logic_inst_n_64 }),
        .ready_s(ready_s_89),
        .ready_s_reg_0(ready_next_s[9]),
        .res_s0(res_s0_30),
        .res_s_reg_0({\gen_macc[7].logic_inst_n_2 ,\gen_macc[7].logic_inst_n_3 ,\gen_macc[7].logic_inst_n_4 ,\gen_macc[7].logic_inst_n_5 ,\gen_macc[7].logic_inst_n_6 ,\gen_macc[7].logic_inst_n_7 ,\gen_macc[7].logic_inst_n_8 ,\gen_macc[7].logic_inst_n_9 ,\gen_macc[7].logic_inst_n_10 ,\gen_macc[7].logic_inst_n_11 ,\gen_macc[7].logic_inst_n_12 ,\gen_macc[7].logic_inst_n_13 ,\gen_macc[7].logic_inst_n_14 ,\gen_macc[7].logic_inst_n_15 ,\gen_macc[7].logic_inst_n_16 ,\gen_macc[7].logic_inst_n_17 ,\gen_macc[7].logic_inst_n_18 ,\gen_macc[7].logic_inst_n_19 ,\gen_macc[7].logic_inst_n_20 ,\gen_macc[7].logic_inst_n_21 ,\gen_macc[7].logic_inst_n_22 ,\gen_macc[7].logic_inst_n_23 ,\gen_macc[7].logic_inst_n_24 ,\gen_macc[7].logic_inst_n_25 ,\gen_macc[7].logic_inst_n_26 ,\gen_macc[7].logic_inst_n_27 ,\gen_macc[7].logic_inst_n_28 ,\gen_macc[7].logic_inst_n_29 ,\gen_macc[7].logic_inst_n_30 ,\gen_macc[7].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_proc_23 \gen_macc[9].logic_inst 
       (.ACOUT({\gen_macc[8].logic_inst_n_2 ,\gen_macc[8].logic_inst_n_3 ,\gen_macc[8].logic_inst_n_4 ,\gen_macc[8].logic_inst_n_5 ,\gen_macc[8].logic_inst_n_6 ,\gen_macc[8].logic_inst_n_7 ,\gen_macc[8].logic_inst_n_8 ,\gen_macc[8].logic_inst_n_9 ,\gen_macc[8].logic_inst_n_10 ,\gen_macc[8].logic_inst_n_11 ,\gen_macc[8].logic_inst_n_12 ,\gen_macc[8].logic_inst_n_13 ,\gen_macc[8].logic_inst_n_14 ,\gen_macc[8].logic_inst_n_15 ,\gen_macc[8].logic_inst_n_16 ,\gen_macc[8].logic_inst_n_17 ,\gen_macc[8].logic_inst_n_18 ,\gen_macc[8].logic_inst_n_19 ,\gen_macc[8].logic_inst_n_20 ,\gen_macc[8].logic_inst_n_21 ,\gen_macc[8].logic_inst_n_22 ,\gen_macc[8].logic_inst_n_23 ,\gen_macc[8].logic_inst_n_24 ,\gen_macc[8].logic_inst_n_25 ,\gen_macc[8].logic_inst_n_26 ,\gen_macc[8].logic_inst_n_27 ,\gen_macc[8].logic_inst_n_28 ,\gen_macc[8].logic_inst_n_29 ,\gen_macc[8].logic_inst_n_30 ,\gen_macc[8].logic_inst_n_31 }),
        .E(data_out_en_s_29),
        .Q(end_next_s_0[10]),
        .data_clk_i(data_clk_i),
        .data_en_o_reg_0(data_en_s[9]),
        .data_en_s(data_en_s_46),
        .data_i(data_i),
        .data_in_en_s(data_in_en_s),
        .data_rst_i(data_rst_i),
        .end_s(end_s_92),
        .\final_res_s_reg[31]_0 ({\gen_macc[9].logic_inst_n_33 ,\gen_macc[9].logic_inst_n_34 ,\gen_macc[9].logic_inst_n_35 ,\gen_macc[9].logic_inst_n_36 ,\gen_macc[9].logic_inst_n_37 ,\gen_macc[9].logic_inst_n_38 ,\gen_macc[9].logic_inst_n_39 ,\gen_macc[9].logic_inst_n_40 ,\gen_macc[9].logic_inst_n_41 ,\gen_macc[9].logic_inst_n_42 ,\gen_macc[9].logic_inst_n_43 ,\gen_macc[9].logic_inst_n_44 ,\gen_macc[9].logic_inst_n_45 ,\gen_macc[9].logic_inst_n_46 ,\gen_macc[9].logic_inst_n_47 ,\gen_macc[9].logic_inst_n_48 ,\gen_macc[9].logic_inst_n_49 ,\gen_macc[9].logic_inst_n_50 ,\gen_macc[9].logic_inst_n_51 ,\gen_macc[9].logic_inst_n_52 ,\gen_macc[9].logic_inst_n_53 ,\gen_macc[9].logic_inst_n_54 ,\gen_macc[9].logic_inst_n_55 ,\gen_macc[9].logic_inst_n_56 ,\gen_macc[9].logic_inst_n_57 ,\gen_macc[9].logic_inst_n_58 ,\gen_macc[9].logic_inst_n_59 ,\gen_macc[9].logic_inst_n_60 ,\gen_macc[9].logic_inst_n_61 ,\gen_macc[9].logic_inst_n_62 ,\gen_macc[9].logic_inst_n_63 ,\gen_macc[9].logic_inst_n_64 }),
        .ready_s(ready_s_91),
        .ready_s_reg_0(ready_next_s[10]),
        .res_s0(res_s0_28),
        .res_s_reg_0({\gen_macc[9].logic_inst_n_2 ,\gen_macc[9].logic_inst_n_3 ,\gen_macc[9].logic_inst_n_4 ,\gen_macc[9].logic_inst_n_5 ,\gen_macc[9].logic_inst_n_6 ,\gen_macc[9].logic_inst_n_7 ,\gen_macc[9].logic_inst_n_8 ,\gen_macc[9].logic_inst_n_9 ,\gen_macc[9].logic_inst_n_10 ,\gen_macc[9].logic_inst_n_11 ,\gen_macc[9].logic_inst_n_12 ,\gen_macc[9].logic_inst_n_13 ,\gen_macc[9].logic_inst_n_14 ,\gen_macc[9].logic_inst_n_15 ,\gen_macc[9].logic_inst_n_16 ,\gen_macc[9].logic_inst_n_17 ,\gen_macc[9].logic_inst_n_18 ,\gen_macc[9].logic_inst_n_19 ,\gen_macc[9].logic_inst_n_20 ,\gen_macc[9].logic_inst_n_21 ,\gen_macc[9].logic_inst_n_22 ,\gen_macc[9].logic_inst_n_23 ,\gen_macc[9].logic_inst_n_24 ,\gen_macc[9].logic_inst_n_25 ,\gen_macc[9].logic_inst_n_26 ,\gen_macc[9].logic_inst_n_27 ,\gen_macc[9].logic_inst_n_28 ,\gen_macc[9].logic_inst_n_29 ,\gen_macc[9].logic_inst_n_30 ,\gen_macc[9].logic_inst_n_31 }));
  double_iq_pid_vco_firReal_0_0_firReal_ram ram_coeff
       (.DOBDO(coeff_s),
        .Q({\cpt_s_reg_n_0_[4] ,\cpt_s_reg_n_0_[3] ,\cpt_s_reg_n_0_[2] ,\cpt_s_reg_n_0_[1] ,\cpt_s_reg_n_0_[0] }),
        .coeff_en_s(coeff_en_s),
        .data_clk_i(data_clk_i),
        .mem_reg_0(mem_reg),
        .mem_reg_1(mem_reg_0),
        .s00_axi_aclk(s00_axi_aclk));
  FDSE \ready_s_reg[0] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[0]),
        .Q(ready_next_s[1]),
        .S(data_rst_i));
  FDRE \ready_s_reg[10] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[10]),
        .Q(ready_next_s[11]),
        .R(data_rst_i));
  FDRE \ready_s_reg[11] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[11]),
        .Q(ready_next_s[12]),
        .R(data_rst_i));
  FDRE \ready_s_reg[12] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[12]),
        .Q(ready_next_s[13]),
        .R(data_rst_i));
  FDRE \ready_s_reg[13] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[13]),
        .Q(ready_next_s[14]),
        .R(data_rst_i));
  FDRE \ready_s_reg[14] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[14]),
        .Q(ready_next_s[15]),
        .R(data_rst_i));
  FDRE \ready_s_reg[15] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[15]),
        .Q(ready_next_s[16]),
        .R(data_rst_i));
  FDRE \ready_s_reg[16] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[16]),
        .Q(ready_next_s[17]),
        .R(data_rst_i));
  FDRE \ready_s_reg[17] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[17]),
        .Q(ready_next_s[18]),
        .R(data_rst_i));
  FDRE \ready_s_reg[18] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[18]),
        .Q(ready_next_s[19]),
        .R(data_rst_i));
  FDRE \ready_s_reg[19] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[19]),
        .Q(ready_next_s[20]),
        .R(data_rst_i));
  FDRE \ready_s_reg[1] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[1]),
        .Q(ready_next_s[2]),
        .R(data_rst_i));
  FDRE \ready_s_reg[20] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[20]),
        .Q(ready_next_s[21]),
        .R(data_rst_i));
  FDRE \ready_s_reg[21] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[21]),
        .Q(ready_next_s[22]),
        .R(data_rst_i));
  FDRE \ready_s_reg[22] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[22]),
        .Q(ready_next_s[23]),
        .R(data_rst_i));
  FDRE \ready_s_reg[23] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[23]),
        .Q(ready_next_s[24]),
        .R(data_rst_i));
  FDRE \ready_s_reg[24] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[24]),
        .Q(ready_next_s[0]),
        .R(data_rst_i));
  FDRE \ready_s_reg[2] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[2]),
        .Q(ready_next_s[3]),
        .R(data_rst_i));
  FDRE \ready_s_reg[3] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[3]),
        .Q(ready_next_s[4]),
        .R(data_rst_i));
  FDRE \ready_s_reg[4] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[4]),
        .Q(ready_next_s[5]),
        .R(data_rst_i));
  FDRE \ready_s_reg[5] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[5]),
        .Q(ready_next_s[6]),
        .R(data_rst_i));
  FDRE \ready_s_reg[6] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[6]),
        .Q(ready_next_s[7]),
        .R(data_rst_i));
  FDRE \ready_s_reg[7] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[7]),
        .Q(ready_next_s[8]),
        .R(data_rst_i));
  FDRE \ready_s_reg[8] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[8]),
        .Q(ready_next_s[9]),
        .R(data_rst_i));
  FDRE \ready_s_reg[9] 
       (.C(data_clk_i),
        .CE(data_in_en_s),
        .D(ready_next_s[9]),
        .Q(ready_next_s[10]),
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
