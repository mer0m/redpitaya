// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun May 31 18:43:55 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim -rename_top double_dds_pwm_axi_1_0 -prefix
//               double_dds_pwm_axi_1_0_ double_dds_pwm_axi_0_0_sim_netlist.v
// Design      : double_dds_pwm_axi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "double_dds_pwm_axi_0_0,pwm_axi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "pwm_axi,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module double_dds_pwm_axi_1_0
   (s00_axi_reset,
    s00_axi_aclk,
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
    ref_rst_i,
    ref_clk_i,
    pwm_o);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input s00_axi_reset;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_dds_ps7_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_dds_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s00_axi_awaddr;
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
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [4:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ref_rst_i RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ref_rst_i, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ref_rst_i;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ref_clk_i CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ref_clk_i, ASSOCIATED_BUSIF pwm_o, ASSOCIATED_RESET ref_rst_i, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_dds_redpitaya_converters_0_0_clk_o, INSERT_VIP 0" *) input ref_clk_i;
  output pwm_o;

  wire pwm_o;
  wire ref_clk_i;
  wire ref_rst_i;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire [2:0]s00_axi_arprot;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
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

  (* COUNTER_SIZE = "14" *) 
  (* C_S00_AXI_ADDR_WIDTH = "5" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  (* id = "0" *) 
  double_dds_pwm_axi_1_0_pwm_axi U0
       (.pwm_o(pwm_o),
        .ref_clk_i(ref_clk_i),
        .ref_rst_i(ref_rst_i),
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

(* COUNTER_SIZE = "14" *) (* C_S00_AXI_ADDR_WIDTH = "5" *) (* C_S00_AXI_DATA_WIDTH = "32" *) 
(* ID = "0" *) 
module double_dds_pwm_axi_1_0_pwm_axi
   (s00_axi_reset,
    s00_axi_aclk,
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
    ref_rst_i,
    ref_clk_i,
    pwm_o);
  input s00_axi_reset;
  input s00_axi_aclk;
  input [4:0]s00_axi_awaddr;
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
  input [4:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input ref_rst_i;
  input ref_clk_i;
  output pwm_o;

  wire \<const0> ;
  wire [2:0]addr_s;
  wire [1:0]data0;
  wire [13:0]duty_s;
  wire duty_s_1;
  wire [13:0]duty_sync_s;
  wire enable_sync_s;
  wire handle_comm_n_14;
  wire handle_comm_n_15;
  wire invert_sync_s;
  wire [13:0]nb_tick_s_reg;
  wire [13:0]period_s;
  wire period_s_2;
  wire [12:0]period_sync_s;
  wire [13:0]prescaler_s;
  wire prescaler_s_0;
  wire [13:0]prescaler_sync_s;
  wire pwm_o;
  wire pwm_reg;
  wire read_en_s;
  wire [31:0]readdata_s;
  wire ref_clk_i;
  wire ref_rst_i;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
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
  wire sync_duty_n_14;
  wire sync_duty_n_15;
  wire sync_duty_n_16;
  wire sync_duty_n_17;
  wire sync_duty_n_18;
  wire sync_duty_n_19;
  wire sync_duty_n_20;
  wire sync_period_n_13;
  wire sync_period_n_14;
  wire sync_period_n_15;
  wire sync_period_n_16;
  wire sync_period_n_17;
  wire sync_period_n_18;
  wire sync_period_n_19;
  wire sync_period_n_20;
  wire sync_period_n_21;
  wire sync_period_n_22;
  wire sync_period_n_23;
  wire sync_period_n_24;
  wire sync_period_n_25;

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
  assign s00_axi_rdata[13:0] = \^s00_axi_rdata [13:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  double_dds_pwm_axi_1_0_pwm_handCom handle_comm
       (.D({readdata_s[31],readdata_s[1:0]}),
        .E(period_s_2),
        .Q(prescaler_s[1:0]),
        .addr_s(addr_s),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_awready_reg_1(duty_s_1),
        .axi_wready_reg_0(s00_axi_wready),
        .data0(data0),
        .read_en_s(read_en_s),
        .\readdata_s_reg[1] (period_s[1:0]),
        .\readdata_s_reg[1]_0 (duty_s[1:0]),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_awvalid_0(prescaler_s_0),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata[1:0]),
        .s00_axi_wdata_0_sp_1(handle_comm_n_15),
        .s00_axi_wdata_1_sp_1(handle_comm_n_14),
        .s00_axi_wvalid(s00_axi_wvalid));
  double_dds_pwm_axi_1_0_pwm_comm pwm_comm_inst
       (.D({readdata_s[31],readdata_s[1:0]}),
        .E(read_en_s),
        .Q(period_s),
        .addr_s(addr_s),
        .data0(data0),
        .\duty_s_reg[13]_0 (duty_s),
        .\duty_s_reg[13]_1 (duty_s_1),
        .enable_s_reg_0(handle_comm_n_15),
        .invert_s_reg_0(handle_comm_n_14),
        .\period_s_reg[13]_0 (period_s_2),
        .\prescaler_s_reg[13]_0 (prescaler_s),
        .\prescaler_s_reg[13]_1 (prescaler_s_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata({\^s00_axi_rdata [30],\^s00_axi_rdata [13:0]}),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[13:0]));
  double_dds_pwm_axi_1_0_pwm_logic pwm_log_inst
       (.CO(pwm_reg),
        .I22(period_sync_s),
        .S({sync_period_n_22,sync_period_n_23,sync_period_n_24,sync_period_n_25}),
        .\cpt_s_reg[13] (prescaler_sync_s),
        .nb_tick_s1_carry__0_i_4_0(sync_period_n_13),
        .nb_tick_s1_carry__0_i_6_0({sync_period_n_14,sync_period_n_15,sync_period_n_16,sync_period_n_17}),
        .nb_tick_s1_carry_i_6_0({sync_period_n_18,sync_period_n_19,sync_period_n_20,sync_period_n_21}),
        .\nb_tick_s_reg[13]_0 (nb_tick_s_reg),
        .out(enable_sync_s),
        .pwm_o({sync_duty_n_18,sync_duty_n_19,sync_duty_n_20}),
        .pwm_o1_carry__0_0({sync_duty_n_14,sync_duty_n_15,sync_duty_n_16,sync_duty_n_17}),
        .pwm_o1_carry__0_1(duty_sync_s),
        .ref_clk_i(ref_clk_i),
        .ref_rst_i(ref_rst_i));
  double_dds_pwm_axi_1_0_pwm_sync_vector__xdcDup__1 sync_duty
       (.D(duty_s),
        .\flipflops_vect_reg[2][13]_0 ({sync_duty_n_18,sync_duty_n_19,sync_duty_n_20}),
        .\flipflops_vect_reg[2][7]_0 ({sync_duty_n_14,sync_duty_n_15,sync_duty_n_16,sync_duty_n_17}),
        .out(duty_sync_s),
        .pwm_o1_carry__0(nb_tick_s_reg),
        .ref_clk_i(ref_clk_i),
        .s00_axi_aclk(s00_axi_aclk));
  double_dds_pwm_axi_1_0_pwm_sync_bit__xdcDup__1 sync_enable
       (.CO(pwm_reg),
        .data0(data0[0]),
        .out(enable_sync_s),
        .pwm_o(pwm_o),
        .pwm_o_0(invert_sync_s),
        .ref_clk_i(ref_clk_i),
        .s00_axi_aclk(s00_axi_aclk));
  double_dds_pwm_axi_1_0_pwm_sync_bit sync_invert
       (.data0(data0[1]),
        .out(invert_sync_s),
        .ref_clk_i(ref_clk_i),
        .s00_axi_aclk(s00_axi_aclk));
  double_dds_pwm_axi_1_0_pwm_sync_vector__xdcDup__2 sync_period
       (.D(period_s),
        .S({sync_period_n_22,sync_period_n_23,sync_period_n_24,sync_period_n_25}),
        .\flipflops_vect_reg[2][12]_0 ({sync_period_n_14,sync_period_n_15,sync_period_n_16,sync_period_n_17}),
        .\flipflops_vect_reg[2][13]_0 (sync_period_n_13),
        .\flipflops_vect_reg[2][8]_0 ({sync_period_n_18,sync_period_n_19,sync_period_n_20,sync_period_n_21}),
        .out(period_sync_s),
        .ref_clk_i(ref_clk_i),
        .s00_axi_aclk(s00_axi_aclk));
  double_dds_pwm_axi_1_0_pwm_sync_vector sync_prescaler
       (.D(prescaler_s),
        .out(prescaler_sync_s),
        .ref_clk_i(ref_clk_i),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

module double_dds_pwm_axi_1_0_pwm_comm
   (s00_axi_rvalid,
    data0,
    Q,
    \duty_s_reg[13]_0 ,
    \prescaler_s_reg[13]_0 ,
    s00_axi_rdata,
    E,
    s00_axi_aclk,
    s00_axi_reset,
    enable_s_reg_0,
    invert_s_reg_0,
    D,
    addr_s,
    \duty_s_reg[13]_1 ,
    s00_axi_wdata,
    \period_s_reg[13]_0 ,
    \prescaler_s_reg[13]_1 );
  output s00_axi_rvalid;
  output [1:0]data0;
  output [13:0]Q;
  output [13:0]\duty_s_reg[13]_0 ;
  output [13:0]\prescaler_s_reg[13]_0 ;
  output [14:0]s00_axi_rdata;
  input [0:0]E;
  input s00_axi_aclk;
  input s00_axi_reset;
  input enable_s_reg_0;
  input invert_s_reg_0;
  input [2:0]D;
  input [2:0]addr_s;
  input [0:0]\duty_s_reg[13]_1 ;
  input [13:0]s00_axi_wdata;
  input [0:0]\period_s_reg[13]_0 ;
  input [0:0]\prescaler_s_reg[13]_1 ;

  wire [2:0]D;
  wire [0:0]E;
  wire [13:0]Q;
  wire [2:0]addr_s;
  wire [1:0]data0;
  wire [13:0]\duty_s_reg[13]_0 ;
  wire [0:0]\duty_s_reg[13]_1 ;
  wire enable_s_reg_0;
  wire invert_s_reg_0;
  wire [0:0]\period_s_reg[13]_0 ;
  wire [13:0]\prescaler_s_reg[13]_0 ;
  wire [0:0]\prescaler_s_reg[13]_1 ;
  wire [13:2]readdata_s;
  wire s00_axi_aclk;
  wire [14:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire s00_axi_rvalid;
  wire [13:0]s00_axi_wdata;

  FDRE \duty_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\duty_s_reg[13]_1 ),
        .D(s00_axi_wdata[0]),
        .Q(\duty_s_reg[13]_0 [0]),
        .R(s00_axi_reset));
  FDRE \duty_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\duty_s_reg[13]_1 ),
        .D(s00_axi_wdata[10]),
        .Q(\duty_s_reg[13]_0 [10]),
        .R(s00_axi_reset));
  FDRE \duty_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\duty_s_reg[13]_1 ),
        .D(s00_axi_wdata[11]),
        .Q(\duty_s_reg[13]_0 [11]),
        .R(s00_axi_reset));
  FDRE \duty_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\duty_s_reg[13]_1 ),
        .D(s00_axi_wdata[12]),
        .Q(\duty_s_reg[13]_0 [12]),
        .R(s00_axi_reset));
  FDRE \duty_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\duty_s_reg[13]_1 ),
        .D(s00_axi_wdata[13]),
        .Q(\duty_s_reg[13]_0 [13]),
        .R(s00_axi_reset));
  FDRE \duty_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\duty_s_reg[13]_1 ),
        .D(s00_axi_wdata[1]),
        .Q(\duty_s_reg[13]_0 [1]),
        .R(s00_axi_reset));
  FDRE \duty_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\duty_s_reg[13]_1 ),
        .D(s00_axi_wdata[2]),
        .Q(\duty_s_reg[13]_0 [2]),
        .R(s00_axi_reset));
  FDRE \duty_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\duty_s_reg[13]_1 ),
        .D(s00_axi_wdata[3]),
        .Q(\duty_s_reg[13]_0 [3]),
        .R(s00_axi_reset));
  FDRE \duty_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\duty_s_reg[13]_1 ),
        .D(s00_axi_wdata[4]),
        .Q(\duty_s_reg[13]_0 [4]),
        .R(s00_axi_reset));
  FDRE \duty_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\duty_s_reg[13]_1 ),
        .D(s00_axi_wdata[5]),
        .Q(\duty_s_reg[13]_0 [5]),
        .R(s00_axi_reset));
  FDRE \duty_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\duty_s_reg[13]_1 ),
        .D(s00_axi_wdata[6]),
        .Q(\duty_s_reg[13]_0 [6]),
        .R(s00_axi_reset));
  FDRE \duty_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\duty_s_reg[13]_1 ),
        .D(s00_axi_wdata[7]),
        .Q(\duty_s_reg[13]_0 [7]),
        .R(s00_axi_reset));
  FDRE \duty_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\duty_s_reg[13]_1 ),
        .D(s00_axi_wdata[8]),
        .Q(\duty_s_reg[13]_0 [8]),
        .R(s00_axi_reset));
  FDRE \duty_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\duty_s_reg[13]_1 ),
        .D(s00_axi_wdata[9]),
        .Q(\duty_s_reg[13]_0 [9]),
        .R(s00_axi_reset));
  FDRE enable_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(enable_s_reg_0),
        .Q(data0[0]),
        .R(s00_axi_reset));
  FDRE invert_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(invert_s_reg_0),
        .Q(data0[1]),
        .R(s00_axi_reset));
  FDRE \period_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\period_s_reg[13]_0 ),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(s00_axi_reset));
  FDRE \period_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\period_s_reg[13]_0 ),
        .D(s00_axi_wdata[10]),
        .Q(Q[10]),
        .R(s00_axi_reset));
  FDRE \period_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\period_s_reg[13]_0 ),
        .D(s00_axi_wdata[11]),
        .Q(Q[11]),
        .R(s00_axi_reset));
  FDRE \period_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\period_s_reg[13]_0 ),
        .D(s00_axi_wdata[12]),
        .Q(Q[12]),
        .R(s00_axi_reset));
  FDRE \period_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\period_s_reg[13]_0 ),
        .D(s00_axi_wdata[13]),
        .Q(Q[13]),
        .R(s00_axi_reset));
  FDRE \period_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\period_s_reg[13]_0 ),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(s00_axi_reset));
  FDRE \period_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\period_s_reg[13]_0 ),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(s00_axi_reset));
  FDRE \period_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\period_s_reg[13]_0 ),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(s00_axi_reset));
  FDRE \period_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\period_s_reg[13]_0 ),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]),
        .R(s00_axi_reset));
  FDRE \period_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\period_s_reg[13]_0 ),
        .D(s00_axi_wdata[5]),
        .Q(Q[5]),
        .R(s00_axi_reset));
  FDRE \period_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\period_s_reg[13]_0 ),
        .D(s00_axi_wdata[6]),
        .Q(Q[6]),
        .R(s00_axi_reset));
  FDRE \period_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\period_s_reg[13]_0 ),
        .D(s00_axi_wdata[7]),
        .Q(Q[7]),
        .R(s00_axi_reset));
  FDRE \period_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\period_s_reg[13]_0 ),
        .D(s00_axi_wdata[8]),
        .Q(Q[8]),
        .R(s00_axi_reset));
  FDRE \period_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\period_s_reg[13]_0 ),
        .D(s00_axi_wdata[9]),
        .Q(Q[9]),
        .R(s00_axi_reset));
  FDRE \prescaler_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\prescaler_s_reg[13]_1 ),
        .D(s00_axi_wdata[0]),
        .Q(\prescaler_s_reg[13]_0 [0]),
        .R(s00_axi_reset));
  FDRE \prescaler_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\prescaler_s_reg[13]_1 ),
        .D(s00_axi_wdata[10]),
        .Q(\prescaler_s_reg[13]_0 [10]),
        .R(s00_axi_reset));
  FDRE \prescaler_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\prescaler_s_reg[13]_1 ),
        .D(s00_axi_wdata[11]),
        .Q(\prescaler_s_reg[13]_0 [11]),
        .R(s00_axi_reset));
  FDRE \prescaler_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\prescaler_s_reg[13]_1 ),
        .D(s00_axi_wdata[12]),
        .Q(\prescaler_s_reg[13]_0 [12]),
        .R(s00_axi_reset));
  FDRE \prescaler_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\prescaler_s_reg[13]_1 ),
        .D(s00_axi_wdata[13]),
        .Q(\prescaler_s_reg[13]_0 [13]),
        .R(s00_axi_reset));
  FDRE \prescaler_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\prescaler_s_reg[13]_1 ),
        .D(s00_axi_wdata[1]),
        .Q(\prescaler_s_reg[13]_0 [1]),
        .R(s00_axi_reset));
  FDRE \prescaler_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\prescaler_s_reg[13]_1 ),
        .D(s00_axi_wdata[2]),
        .Q(\prescaler_s_reg[13]_0 [2]),
        .R(s00_axi_reset));
  FDRE \prescaler_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\prescaler_s_reg[13]_1 ),
        .D(s00_axi_wdata[3]),
        .Q(\prescaler_s_reg[13]_0 [3]),
        .R(s00_axi_reset));
  FDRE \prescaler_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\prescaler_s_reg[13]_1 ),
        .D(s00_axi_wdata[4]),
        .Q(\prescaler_s_reg[13]_0 [4]),
        .R(s00_axi_reset));
  FDRE \prescaler_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\prescaler_s_reg[13]_1 ),
        .D(s00_axi_wdata[5]),
        .Q(\prescaler_s_reg[13]_0 [5]),
        .R(s00_axi_reset));
  FDRE \prescaler_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\prescaler_s_reg[13]_1 ),
        .D(s00_axi_wdata[6]),
        .Q(\prescaler_s_reg[13]_0 [6]),
        .R(s00_axi_reset));
  FDRE \prescaler_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\prescaler_s_reg[13]_1 ),
        .D(s00_axi_wdata[7]),
        .Q(\prescaler_s_reg[13]_0 [7]),
        .R(s00_axi_reset));
  FDRE \prescaler_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\prescaler_s_reg[13]_1 ),
        .D(s00_axi_wdata[8]),
        .Q(\prescaler_s_reg[13]_0 [8]),
        .R(s00_axi_reset));
  FDRE \prescaler_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\prescaler_s_reg[13]_1 ),
        .D(s00_axi_wdata[9]),
        .Q(\prescaler_s_reg[13]_0 [9]),
        .R(s00_axi_reset));
  FDCE read_ack_o_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_reset),
        .D(E),
        .Q(s00_axi_rvalid));
  LUT6 #(
    .INIT(64'hFFA0FFC0FFA0F0C0)) 
    \readdata_s[10]_i_1 
       (.I0(Q[10]),
        .I1(\duty_s_reg[13]_0 [10]),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(\prescaler_s_reg[13]_0 [10]),
        .O(readdata_s[10]));
  LUT6 #(
    .INIT(64'hFFA0FFC0FFA0F0C0)) 
    \readdata_s[11]_i_1 
       (.I0(Q[11]),
        .I1(\duty_s_reg[13]_0 [11]),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(\prescaler_s_reg[13]_0 [11]),
        .O(readdata_s[11]));
  LUT6 #(
    .INIT(64'hFFA0FFC0FFA0F0C0)) 
    \readdata_s[12]_i_1 
       (.I0(Q[12]),
        .I1(\duty_s_reg[13]_0 [12]),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(\prescaler_s_reg[13]_0 [12]),
        .O(readdata_s[12]));
  LUT6 #(
    .INIT(64'hFFA0FFC0FFA0F0C0)) 
    \readdata_s[13]_i_1 
       (.I0(Q[13]),
        .I1(\duty_s_reg[13]_0 [13]),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(\prescaler_s_reg[13]_0 [13]),
        .O(readdata_s[13]));
  LUT6 #(
    .INIT(64'hFFA0FFC0FFA0F0C0)) 
    \readdata_s[2]_i_1 
       (.I0(Q[2]),
        .I1(\duty_s_reg[13]_0 [2]),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(\prescaler_s_reg[13]_0 [2]),
        .O(readdata_s[2]));
  LUT6 #(
    .INIT(64'hFFA0FFC0FFA0F0C0)) 
    \readdata_s[3]_i_1 
       (.I0(Q[3]),
        .I1(\duty_s_reg[13]_0 [3]),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(\prescaler_s_reg[13]_0 [3]),
        .O(readdata_s[3]));
  LUT6 #(
    .INIT(64'hFFA0FFC0FFA0F0C0)) 
    \readdata_s[4]_i_1 
       (.I0(Q[4]),
        .I1(\duty_s_reg[13]_0 [4]),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(\prescaler_s_reg[13]_0 [4]),
        .O(readdata_s[4]));
  LUT6 #(
    .INIT(64'hFFA0FFC0FFA0F0C0)) 
    \readdata_s[5]_i_1 
       (.I0(Q[5]),
        .I1(\duty_s_reg[13]_0 [5]),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(\prescaler_s_reg[13]_0 [5]),
        .O(readdata_s[5]));
  LUT6 #(
    .INIT(64'hFFA0FFC0FFA0F0C0)) 
    \readdata_s[6]_i_1 
       (.I0(Q[6]),
        .I1(\duty_s_reg[13]_0 [6]),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(\prescaler_s_reg[13]_0 [6]),
        .O(readdata_s[6]));
  LUT6 #(
    .INIT(64'hFFA0FFC0FFA0F0C0)) 
    \readdata_s[7]_i_1 
       (.I0(Q[7]),
        .I1(\duty_s_reg[13]_0 [7]),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(\prescaler_s_reg[13]_0 [7]),
        .O(readdata_s[7]));
  LUT6 #(
    .INIT(64'hFFA0FFC0FFA0F0C0)) 
    \readdata_s[8]_i_1 
       (.I0(Q[8]),
        .I1(\duty_s_reg[13]_0 [8]),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(\prescaler_s_reg[13]_0 [8]),
        .O(readdata_s[8]));
  LUT6 #(
    .INIT(64'hFFA0FFC0FFA0F0C0)) 
    \readdata_s[9]_i_1 
       (.I0(Q[9]),
        .I1(\duty_s_reg[13]_0 [9]),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(\prescaler_s_reg[13]_0 [9]),
        .O(readdata_s[9]));
  FDCE \readdata_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(D[0]),
        .Q(s00_axi_rdata[0]));
  FDCE \readdata_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(readdata_s[10]),
        .Q(s00_axi_rdata[10]));
  FDCE \readdata_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(readdata_s[11]),
        .Q(s00_axi_rdata[11]));
  FDCE \readdata_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(readdata_s[12]),
        .Q(s00_axi_rdata[12]));
  FDCE \readdata_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(readdata_s[13]),
        .Q(s00_axi_rdata[13]));
  FDCE \readdata_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(D[1]),
        .Q(s00_axi_rdata[1]));
  FDCE \readdata_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(readdata_s[2]),
        .Q(s00_axi_rdata[2]));
  FDCE \readdata_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(D[2]),
        .Q(s00_axi_rdata[14]));
  FDCE \readdata_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(readdata_s[3]),
        .Q(s00_axi_rdata[3]));
  FDCE \readdata_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(readdata_s[4]),
        .Q(s00_axi_rdata[4]));
  FDCE \readdata_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(readdata_s[5]),
        .Q(s00_axi_rdata[5]));
  FDCE \readdata_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(readdata_s[6]),
        .Q(s00_axi_rdata[6]));
  FDCE \readdata_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(readdata_s[7]),
        .Q(s00_axi_rdata[7]));
  FDCE \readdata_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(readdata_s[8]),
        .Q(s00_axi_rdata[8]));
  FDCE \readdata_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(s00_axi_reset),
        .D(readdata_s[9]),
        .Q(s00_axi_rdata[9]));
endmodule

module double_dds_pwm_axi_1_0_pwm_cpt
   (ref_rst_i_0,
    tick_s,
    ref_clk_i,
    ref_rst_i,
    CO,
    out,
    \cpt_s_reg[13]_0 );
  output ref_rst_i_0;
  output tick_s;
  input ref_clk_i;
  input ref_rst_i;
  input [0:0]CO;
  input [0:0]out;
  input [13:0]\cpt_s_reg[13]_0 ;

  wire [0:0]CO;
  wire \cpt_s[0]_i_2_n_0 ;
  wire \cpt_s[0]_i_3_n_0 ;
  wire \cpt_s[0]_i_4_n_0 ;
  wire \cpt_s[0]_i_5_n_0 ;
  wire \cpt_s[12]_i_2_n_0 ;
  wire \cpt_s[12]_i_3_n_0 ;
  wire \cpt_s[4]_i_2_n_0 ;
  wire \cpt_s[4]_i_3_n_0 ;
  wire \cpt_s[4]_i_4_n_0 ;
  wire \cpt_s[4]_i_5_n_0 ;
  wire \cpt_s[8]_i_2_n_0 ;
  wire \cpt_s[8]_i_3_n_0 ;
  wire \cpt_s[8]_i_4_n_0 ;
  wire \cpt_s[8]_i_5_n_0 ;
  wire [13:0]cpt_s_reg;
  wire \cpt_s_reg[0]_i_1_n_0 ;
  wire \cpt_s_reg[0]_i_1_n_1 ;
  wire \cpt_s_reg[0]_i_1_n_2 ;
  wire \cpt_s_reg[0]_i_1_n_3 ;
  wire \cpt_s_reg[0]_i_1_n_4 ;
  wire \cpt_s_reg[0]_i_1_n_5 ;
  wire \cpt_s_reg[0]_i_1_n_6 ;
  wire \cpt_s_reg[0]_i_1_n_7 ;
  wire \cpt_s_reg[12]_i_1_n_3 ;
  wire \cpt_s_reg[12]_i_1_n_6 ;
  wire \cpt_s_reg[12]_i_1_n_7 ;
  wire [13:0]\cpt_s_reg[13]_0 ;
  wire \cpt_s_reg[4]_i_1_n_0 ;
  wire \cpt_s_reg[4]_i_1_n_1 ;
  wire \cpt_s_reg[4]_i_1_n_2 ;
  wire \cpt_s_reg[4]_i_1_n_3 ;
  wire \cpt_s_reg[4]_i_1_n_4 ;
  wire \cpt_s_reg[4]_i_1_n_5 ;
  wire \cpt_s_reg[4]_i_1_n_6 ;
  wire \cpt_s_reg[4]_i_1_n_7 ;
  wire \cpt_s_reg[8]_i_1_n_0 ;
  wire \cpt_s_reg[8]_i_1_n_1 ;
  wire \cpt_s_reg[8]_i_1_n_2 ;
  wire \cpt_s_reg[8]_i_1_n_3 ;
  wire \cpt_s_reg[8]_i_1_n_4 ;
  wire \cpt_s_reg[8]_i_1_n_5 ;
  wire \cpt_s_reg[8]_i_1_n_6 ;
  wire \cpt_s_reg[8]_i_1_n_7 ;
  wire \nb_tick_s[0]_i_4_n_0 ;
  wire \nb_tick_s[0]_i_5_n_0 ;
  wire [0:0]out;
  wire ref_clk_i;
  wire ref_rst_i;
  wire ref_rst_i_0;
  wire tick_s;
  wire [3:1]\NLW_cpt_s_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_cpt_s_reg[12]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \cpt_s[0]_i_2 
       (.I0(cpt_s_reg[3]),
        .I1(ref_rst_i),
        .I2(out),
        .I3(tick_s),
        .I4(\cpt_s_reg[13]_0 [3]),
        .O(\cpt_s[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \cpt_s[0]_i_3 
       (.I0(cpt_s_reg[2]),
        .I1(ref_rst_i),
        .I2(out),
        .I3(tick_s),
        .I4(\cpt_s_reg[13]_0 [2]),
        .O(\cpt_s[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \cpt_s[0]_i_4 
       (.I0(cpt_s_reg[1]),
        .I1(ref_rst_i),
        .I2(out),
        .I3(tick_s),
        .I4(\cpt_s_reg[13]_0 [1]),
        .O(\cpt_s[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \cpt_s[0]_i_5 
       (.I0(cpt_s_reg[0]),
        .I1(ref_rst_i),
        .I2(out),
        .I3(tick_s),
        .I4(\cpt_s_reg[13]_0 [0]),
        .O(\cpt_s[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \cpt_s[12]_i_2 
       (.I0(cpt_s_reg[13]),
        .I1(ref_rst_i),
        .I2(out),
        .I3(tick_s),
        .I4(\cpt_s_reg[13]_0 [13]),
        .O(\cpt_s[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \cpt_s[12]_i_3 
       (.I0(cpt_s_reg[12]),
        .I1(ref_rst_i),
        .I2(out),
        .I3(tick_s),
        .I4(\cpt_s_reg[13]_0 [12]),
        .O(\cpt_s[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \cpt_s[4]_i_2 
       (.I0(cpt_s_reg[7]),
        .I1(ref_rst_i),
        .I2(out),
        .I3(tick_s),
        .I4(\cpt_s_reg[13]_0 [7]),
        .O(\cpt_s[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \cpt_s[4]_i_3 
       (.I0(cpt_s_reg[6]),
        .I1(ref_rst_i),
        .I2(out),
        .I3(tick_s),
        .I4(\cpt_s_reg[13]_0 [6]),
        .O(\cpt_s[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \cpt_s[4]_i_4 
       (.I0(cpt_s_reg[5]),
        .I1(ref_rst_i),
        .I2(out),
        .I3(tick_s),
        .I4(\cpt_s_reg[13]_0 [5]),
        .O(\cpt_s[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \cpt_s[4]_i_5 
       (.I0(cpt_s_reg[4]),
        .I1(ref_rst_i),
        .I2(out),
        .I3(tick_s),
        .I4(\cpt_s_reg[13]_0 [4]),
        .O(\cpt_s[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \cpt_s[8]_i_2 
       (.I0(cpt_s_reg[11]),
        .I1(ref_rst_i),
        .I2(out),
        .I3(tick_s),
        .I4(\cpt_s_reg[13]_0 [11]),
        .O(\cpt_s[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \cpt_s[8]_i_3 
       (.I0(cpt_s_reg[10]),
        .I1(ref_rst_i),
        .I2(out),
        .I3(tick_s),
        .I4(\cpt_s_reg[13]_0 [10]),
        .O(\cpt_s[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \cpt_s[8]_i_4 
       (.I0(cpt_s_reg[9]),
        .I1(ref_rst_i),
        .I2(out),
        .I3(tick_s),
        .I4(\cpt_s_reg[13]_0 [9]),
        .O(\cpt_s[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \cpt_s[8]_i_5 
       (.I0(cpt_s_reg[8]),
        .I1(ref_rst_i),
        .I2(out),
        .I3(tick_s),
        .I4(\cpt_s_reg[13]_0 [8]),
        .O(\cpt_s[8]_i_5_n_0 ));
  FDRE \cpt_s_reg[0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_s_reg[0]_i_1_n_7 ),
        .Q(cpt_s_reg[0]),
        .R(1'b0));
  CARRY4 \cpt_s_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cpt_s_reg[0]_i_1_n_0 ,\cpt_s_reg[0]_i_1_n_1 ,\cpt_s_reg[0]_i_1_n_2 ,\cpt_s_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\cpt_s_reg[0]_i_1_n_4 ,\cpt_s_reg[0]_i_1_n_5 ,\cpt_s_reg[0]_i_1_n_6 ,\cpt_s_reg[0]_i_1_n_7 }),
        .S({\cpt_s[0]_i_2_n_0 ,\cpt_s[0]_i_3_n_0 ,\cpt_s[0]_i_4_n_0 ,\cpt_s[0]_i_5_n_0 }));
  FDRE \cpt_s_reg[10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_s_reg[8]_i_1_n_5 ),
        .Q(cpt_s_reg[10]),
        .R(1'b0));
  FDRE \cpt_s_reg[11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_s_reg[8]_i_1_n_4 ),
        .Q(cpt_s_reg[11]),
        .R(1'b0));
  FDRE \cpt_s_reg[12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_s_reg[12]_i_1_n_7 ),
        .Q(cpt_s_reg[12]),
        .R(1'b0));
  CARRY4 \cpt_s_reg[12]_i_1 
       (.CI(\cpt_s_reg[8]_i_1_n_0 ),
        .CO({\NLW_cpt_s_reg[12]_i_1_CO_UNCONNECTED [3:1],\cpt_s_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\NLW_cpt_s_reg[12]_i_1_O_UNCONNECTED [3:2],\cpt_s_reg[12]_i_1_n_6 ,\cpt_s_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\cpt_s[12]_i_2_n_0 ,\cpt_s[12]_i_3_n_0 }));
  FDRE \cpt_s_reg[13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_s_reg[12]_i_1_n_6 ),
        .Q(cpt_s_reg[13]),
        .R(1'b0));
  FDRE \cpt_s_reg[1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_s_reg[0]_i_1_n_6 ),
        .Q(cpt_s_reg[1]),
        .R(1'b0));
  FDRE \cpt_s_reg[2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_s_reg[0]_i_1_n_5 ),
        .Q(cpt_s_reg[2]),
        .R(1'b0));
  FDRE \cpt_s_reg[3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_s_reg[0]_i_1_n_4 ),
        .Q(cpt_s_reg[3]),
        .R(1'b0));
  FDRE \cpt_s_reg[4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_s_reg[4]_i_1_n_7 ),
        .Q(cpt_s_reg[4]),
        .R(1'b0));
  CARRY4 \cpt_s_reg[4]_i_1 
       (.CI(\cpt_s_reg[0]_i_1_n_0 ),
        .CO({\cpt_s_reg[4]_i_1_n_0 ,\cpt_s_reg[4]_i_1_n_1 ,\cpt_s_reg[4]_i_1_n_2 ,\cpt_s_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\cpt_s_reg[4]_i_1_n_4 ,\cpt_s_reg[4]_i_1_n_5 ,\cpt_s_reg[4]_i_1_n_6 ,\cpt_s_reg[4]_i_1_n_7 }),
        .S({\cpt_s[4]_i_2_n_0 ,\cpt_s[4]_i_3_n_0 ,\cpt_s[4]_i_4_n_0 ,\cpt_s[4]_i_5_n_0 }));
  FDRE \cpt_s_reg[5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_s_reg[4]_i_1_n_6 ),
        .Q(cpt_s_reg[5]),
        .R(1'b0));
  FDRE \cpt_s_reg[6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_s_reg[4]_i_1_n_5 ),
        .Q(cpt_s_reg[6]),
        .R(1'b0));
  FDRE \cpt_s_reg[7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_s_reg[4]_i_1_n_4 ),
        .Q(cpt_s_reg[7]),
        .R(1'b0));
  FDRE \cpt_s_reg[8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_s_reg[8]_i_1_n_7 ),
        .Q(cpt_s_reg[8]),
        .R(1'b0));
  CARRY4 \cpt_s_reg[8]_i_1 
       (.CI(\cpt_s_reg[4]_i_1_n_0 ),
        .CO({\cpt_s_reg[8]_i_1_n_0 ,\cpt_s_reg[8]_i_1_n_1 ,\cpt_s_reg[8]_i_1_n_2 ,\cpt_s_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\cpt_s_reg[8]_i_1_n_4 ,\cpt_s_reg[8]_i_1_n_5 ,\cpt_s_reg[8]_i_1_n_6 ,\cpt_s_reg[8]_i_1_n_7 }),
        .S({\cpt_s[8]_i_2_n_0 ,\cpt_s[8]_i_3_n_0 ,\cpt_s[8]_i_4_n_0 ,\cpt_s[8]_i_5_n_0 }));
  FDRE \cpt_s_reg[9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_s_reg[8]_i_1_n_6 ),
        .Q(cpt_s_reg[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    \nb_tick_s[0]_i_1 
       (.I0(ref_rst_i),
        .I1(CO),
        .I2(tick_s),
        .O(ref_rst_i_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \nb_tick_s[0]_i_2 
       (.I0(\nb_tick_s[0]_i_4_n_0 ),
        .I1(\nb_tick_s[0]_i_5_n_0 ),
        .I2(cpt_s_reg[13]),
        .I3(cpt_s_reg[4]),
        .I4(cpt_s_reg[11]),
        .I5(cpt_s_reg[5]),
        .O(tick_s));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \nb_tick_s[0]_i_4 
       (.I0(cpt_s_reg[12]),
        .I1(cpt_s_reg[1]),
        .I2(cpt_s_reg[0]),
        .I3(cpt_s_reg[10]),
        .I4(cpt_s_reg[7]),
        .I5(cpt_s_reg[8]),
        .O(\nb_tick_s[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nb_tick_s[0]_i_5 
       (.I0(cpt_s_reg[9]),
        .I1(cpt_s_reg[6]),
        .I2(cpt_s_reg[3]),
        .I3(cpt_s_reg[2]),
        .O(\nb_tick_s[0]_i_5_n_0 ));
endmodule

module double_dds_pwm_axi_1_0_pwm_handCom
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    E,
    addr_s,
    axi_awready_reg_1,
    s00_axi_awvalid_0,
    D,
    read_en_s,
    s00_axi_wdata_1_sp_1,
    s00_axi_wdata_0_sp_1,
    s00_axi_reset,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    data0,
    Q,
    \readdata_s_reg[1] ,
    \readdata_s_reg[1]_0 ,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output [0:0]E;
  output [2:0]addr_s;
  output [0:0]axi_awready_reg_1;
  output [0:0]s00_axi_awvalid_0;
  output [2:0]D;
  output read_en_s;
  output s00_axi_wdata_1_sp_1;
  output s00_axi_wdata_0_sp_1;
  input s00_axi_reset;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [1:0]data0;
  input [1:0]Q;
  input [1:0]\readdata_s_reg[1] ;
  input [1:0]\readdata_s_reg[1]_0 ;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input [1:0]s00_axi_wdata;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;

  wire [2:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [2:0]addr_reg;
  wire [2:0]addr_s;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire [0:0]axi_awready_reg_1;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [1:0]data0;
  wire [2:0]read_addr_s;
  wire read_en_s;
  wire \readdata_s[0]_i_2_n_0 ;
  wire \readdata_s[1]_i_2_n_0 ;
  wire \readdata_s[1]_i_3_n_0 ;
  wire [1:0]\readdata_s_reg[1] ;
  wire [1:0]\readdata_s_reg[1]_0 ;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire [0:0]s00_axi_awvalid_0;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire [1:0]s00_axi_wdata;
  wire s00_axi_wdata_0_sn_1;
  wire s00_axi_wdata_1_sn_1;
  wire s00_axi_wvalid;
  wire [2:0]write_addr_s;
  wire write_en_s;

  assign s00_axi_wdata_0_sp_1 = s00_axi_wdata_0_sn_1;
  assign s00_axi_wdata_1_sp_1 = s00_axi_wdata_1_sn_1;
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
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addr_reg[2]_i_1 
       (.I0(write_addr_s[2]),
        .I1(write_en_s),
        .I2(read_addr_s[2]),
        .I3(read_en_s),
        .I4(addr_reg[2]),
        .O(addr_s[2]));
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
  FDRE \addr_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(addr_s[2]),
        .Q(addr_reg[2]),
        .R(1'b0));
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
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(read_addr_s[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
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
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(read_addr_s[2]),
        .S(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(write_addr_s[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
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
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(write_addr_s[2]),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \duty_s[13]_i_1 
       (.I0(write_en_s),
        .I1(addr_s[0]),
        .I2(addr_s[2]),
        .I3(addr_s[1]),
        .O(axi_awready_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \duty_s[13]_i_2 
       (.I0(axi_awready_reg_0),
        .I1(axi_wready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(write_en_s));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    enable_s_i_1
       (.I0(s00_axi_wdata[0]),
        .I1(write_en_s),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(data0[0]),
        .O(s00_axi_wdata_0_sn_1));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    invert_s_i_1
       (.I0(s00_axi_wdata[1]),
        .I1(write_en_s),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(data0[1]),
        .O(s00_axi_wdata_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \period_s[13]_i_1 
       (.I0(write_en_s),
        .I1(addr_s[1]),
        .I2(addr_s[0]),
        .I3(addr_s[2]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \prescaler_s[13]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(addr_s[1]),
        .I5(addr_s[0]),
        .O(s00_axi_awvalid_0));
  LUT6 #(
    .INIT(64'hFFCAFFC0FFCAF0C0)) 
    \readdata_s[0]_i_1 
       (.I0(data0[0]),
        .I1(\readdata_s[0]_i_2_n_0 ),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(Q[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \readdata_s[0]_i_2 
       (.I0(\readdata_s_reg[1] [0]),
        .I1(write_addr_s[0]),
        .I2(write_en_s),
        .I3(\readdata_s[1]_i_3_n_0 ),
        .I4(\readdata_s_reg[1]_0 [0]),
        .O(\readdata_s[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFCAFFC0FFCAF0C0)) 
    \readdata_s[1]_i_1 
       (.I0(data0[1]),
        .I1(\readdata_s[1]_i_2_n_0 ),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(addr_s[0]),
        .I5(Q[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \readdata_s[1]_i_2 
       (.I0(\readdata_s_reg[1] [1]),
        .I1(write_addr_s[0]),
        .I2(write_en_s),
        .I3(\readdata_s[1]_i_3_n_0 ),
        .I4(\readdata_s_reg[1]_0 [1]),
        .O(\readdata_s[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \readdata_s[1]_i_3 
       (.I0(read_addr_s[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_rvalid_reg_n_0),
        .I4(addr_reg[0]),
        .O(\readdata_s[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \readdata_s[31]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(axi_rvalid_reg_n_0),
        .O(read_en_s));
  LUT3 #(
    .INIT(8'hE0)) 
    \readdata_s[31]_i_2 
       (.I0(addr_s[1]),
        .I1(addr_s[0]),
        .I2(addr_s[2]),
        .O(D[2]));
endmodule

module double_dds_pwm_axi_1_0_pwm_logic
   (CO,
    \nb_tick_s_reg[13]_0 ,
    ref_clk_i,
    I22,
    S,
    nb_tick_s1_carry_i_6_0,
    nb_tick_s1_carry__0_i_6_0,
    nb_tick_s1_carry__0_i_4_0,
    pwm_o1_carry__0_0,
    pwm_o,
    ref_rst_i,
    out,
    \cpt_s_reg[13] ,
    pwm_o1_carry__0_1);
  output [0:0]CO;
  output [13:0]\nb_tick_s_reg[13]_0 ;
  input ref_clk_i;
  input [12:0]I22;
  input [3:0]S;
  input [3:0]nb_tick_s1_carry_i_6_0;
  input [3:0]nb_tick_s1_carry__0_i_6_0;
  input [0:0]nb_tick_s1_carry__0_i_4_0;
  input [3:0]pwm_o1_carry__0_0;
  input [2:0]pwm_o;
  input ref_rst_i;
  input [0:0]out;
  input [13:0]\cpt_s_reg[13] ;
  input [13:0]pwm_o1_carry__0_1;

  wire [0:0]CO;
  wire [12:0]I22;
  wire [3:0]S;
  wire [13:0]\cpt_s_reg[13] ;
  wire [13:1]minusOp;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire nb_tick_s1_carry__0_i_1_n_0;
  wire nb_tick_s1_carry__0_i_2_n_0;
  wire nb_tick_s1_carry__0_i_3_n_0;
  wire [0:0]nb_tick_s1_carry__0_i_4_0;
  wire nb_tick_s1_carry__0_i_4_n_0;
  wire nb_tick_s1_carry__0_i_5_n_0;
  wire [3:0]nb_tick_s1_carry__0_i_6_0;
  wire nb_tick_s1_carry__0_i_6_n_0;
  wire nb_tick_s1_carry__0_n_1;
  wire nb_tick_s1_carry__0_n_2;
  wire nb_tick_s1_carry__0_n_3;
  wire nb_tick_s1_carry_i_1_n_0;
  wire nb_tick_s1_carry_i_2_n_0;
  wire nb_tick_s1_carry_i_3_n_0;
  wire nb_tick_s1_carry_i_4_n_0;
  wire nb_tick_s1_carry_i_5_n_0;
  wire [3:0]nb_tick_s1_carry_i_6_0;
  wire nb_tick_s1_carry_i_6_n_0;
  wire nb_tick_s1_carry_i_7_n_0;
  wire nb_tick_s1_carry_i_8_n_0;
  wire nb_tick_s1_carry_n_0;
  wire nb_tick_s1_carry_n_1;
  wire nb_tick_s1_carry_n_2;
  wire nb_tick_s1_carry_n_3;
  wire \nb_tick_s[0]_i_6_n_0 ;
  wire \nb_tick_s_reg[0]_i_3_n_0 ;
  wire \nb_tick_s_reg[0]_i_3_n_1 ;
  wire \nb_tick_s_reg[0]_i_3_n_2 ;
  wire \nb_tick_s_reg[0]_i_3_n_3 ;
  wire \nb_tick_s_reg[0]_i_3_n_4 ;
  wire \nb_tick_s_reg[0]_i_3_n_5 ;
  wire \nb_tick_s_reg[0]_i_3_n_6 ;
  wire \nb_tick_s_reg[0]_i_3_n_7 ;
  wire \nb_tick_s_reg[12]_i_1_n_3 ;
  wire \nb_tick_s_reg[12]_i_1_n_6 ;
  wire \nb_tick_s_reg[12]_i_1_n_7 ;
  wire [13:0]\nb_tick_s_reg[13]_0 ;
  wire \nb_tick_s_reg[4]_i_1_n_0 ;
  wire \nb_tick_s_reg[4]_i_1_n_1 ;
  wire \nb_tick_s_reg[4]_i_1_n_2 ;
  wire \nb_tick_s_reg[4]_i_1_n_3 ;
  wire \nb_tick_s_reg[4]_i_1_n_4 ;
  wire \nb_tick_s_reg[4]_i_1_n_5 ;
  wire \nb_tick_s_reg[4]_i_1_n_6 ;
  wire \nb_tick_s_reg[4]_i_1_n_7 ;
  wire \nb_tick_s_reg[8]_i_1_n_0 ;
  wire \nb_tick_s_reg[8]_i_1_n_1 ;
  wire \nb_tick_s_reg[8]_i_1_n_2 ;
  wire \nb_tick_s_reg[8]_i_1_n_3 ;
  wire \nb_tick_s_reg[8]_i_1_n_4 ;
  wire \nb_tick_s_reg[8]_i_1_n_5 ;
  wire \nb_tick_s_reg[8]_i_1_n_6 ;
  wire \nb_tick_s_reg[8]_i_1_n_7 ;
  wire [0:0]out;
  wire pwm_cpt_inst_n_0;
  wire [2:0]pwm_o;
  wire [3:0]pwm_o1_carry__0_0;
  wire [13:0]pwm_o1_carry__0_1;
  wire pwm_o1_carry__0_i_1_n_0;
  wire pwm_o1_carry__0_i_2_n_0;
  wire pwm_o1_carry__0_i_3_n_0;
  wire pwm_o1_carry__0_n_2;
  wire pwm_o1_carry__0_n_3;
  wire pwm_o1_carry_i_1_n_0;
  wire pwm_o1_carry_i_2_n_0;
  wire pwm_o1_carry_i_3_n_0;
  wire pwm_o1_carry_i_4_n_0;
  wire pwm_o1_carry_n_0;
  wire pwm_o1_carry_n_1;
  wire pwm_o1_carry_n_2;
  wire pwm_o1_carry_n_3;
  wire ref_clk_i;
  wire ref_rst_i;
  wire tick_s;
  wire [3:0]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_minusOp_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_nb_tick_s1_carry_O_UNCONNECTED;
  wire [3:3]NLW_nb_tick_s1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_nb_tick_s1_carry__0_O_UNCONNECTED;
  wire [3:1]\NLW_nb_tick_s_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_nb_tick_s_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_pwm_o1_carry_O_UNCONNECTED;
  wire [3:3]NLW_pwm_o1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_o1_carry__0_O_UNCONNECTED;

  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(I22[0]),
        .DI(I22[4:1]),
        .O(minusOp[4:1]),
        .S(S));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(I22[8:5]),
        .O(minusOp[8:5]),
        .S(nb_tick_s1_carry_i_6_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(I22[12:9]),
        .O(minusOp[12:9]),
        .S(nb_tick_s1_carry__0_i_6_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO(NLW_minusOp_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3:1],minusOp[13]}),
        .S({1'b0,1'b0,1'b0,nb_tick_s1_carry__0_i_4_0}));
  CARRY4 nb_tick_s1_carry
       (.CI(1'b0),
        .CO({nb_tick_s1_carry_n_0,nb_tick_s1_carry_n_1,nb_tick_s1_carry_n_2,nb_tick_s1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({nb_tick_s1_carry_i_1_n_0,nb_tick_s1_carry_i_2_n_0,nb_tick_s1_carry_i_3_n_0,nb_tick_s1_carry_i_4_n_0}),
        .O(NLW_nb_tick_s1_carry_O_UNCONNECTED[3:0]),
        .S({nb_tick_s1_carry_i_5_n_0,nb_tick_s1_carry_i_6_n_0,nb_tick_s1_carry_i_7_n_0,nb_tick_s1_carry_i_8_n_0}));
  CARRY4 nb_tick_s1_carry__0
       (.CI(nb_tick_s1_carry_n_0),
        .CO({NLW_nb_tick_s1_carry__0_CO_UNCONNECTED[3],nb_tick_s1_carry__0_n_1,nb_tick_s1_carry__0_n_2,nb_tick_s1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,nb_tick_s1_carry__0_i_1_n_0,nb_tick_s1_carry__0_i_2_n_0,nb_tick_s1_carry__0_i_3_n_0}),
        .O(NLW_nb_tick_s1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,nb_tick_s1_carry__0_i_4_n_0,nb_tick_s1_carry__0_i_5_n_0,nb_tick_s1_carry__0_i_6_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    nb_tick_s1_carry__0_i_1
       (.I0(minusOp[13]),
        .I1(\nb_tick_s_reg[13]_0 [13]),
        .I2(minusOp[12]),
        .I3(\nb_tick_s_reg[13]_0 [12]),
        .O(nb_tick_s1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    nb_tick_s1_carry__0_i_2
       (.I0(minusOp[11]),
        .I1(\nb_tick_s_reg[13]_0 [11]),
        .I2(minusOp[10]),
        .I3(\nb_tick_s_reg[13]_0 [10]),
        .O(nb_tick_s1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    nb_tick_s1_carry__0_i_3
       (.I0(minusOp[9]),
        .I1(\nb_tick_s_reg[13]_0 [9]),
        .I2(minusOp[8]),
        .I3(\nb_tick_s_reg[13]_0 [8]),
        .O(nb_tick_s1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    nb_tick_s1_carry__0_i_4
       (.I0(\nb_tick_s_reg[13]_0 [13]),
        .I1(minusOp[13]),
        .I2(\nb_tick_s_reg[13]_0 [12]),
        .I3(minusOp[12]),
        .O(nb_tick_s1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    nb_tick_s1_carry__0_i_5
       (.I0(\nb_tick_s_reg[13]_0 [11]),
        .I1(minusOp[11]),
        .I2(\nb_tick_s_reg[13]_0 [10]),
        .I3(minusOp[10]),
        .O(nb_tick_s1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    nb_tick_s1_carry__0_i_6
       (.I0(\nb_tick_s_reg[13]_0 [9]),
        .I1(minusOp[9]),
        .I2(\nb_tick_s_reg[13]_0 [8]),
        .I3(minusOp[8]),
        .O(nb_tick_s1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    nb_tick_s1_carry_i_1
       (.I0(minusOp[7]),
        .I1(\nb_tick_s_reg[13]_0 [7]),
        .I2(minusOp[6]),
        .I3(\nb_tick_s_reg[13]_0 [6]),
        .O(nb_tick_s1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    nb_tick_s1_carry_i_2
       (.I0(minusOp[5]),
        .I1(\nb_tick_s_reg[13]_0 [5]),
        .I2(minusOp[4]),
        .I3(\nb_tick_s_reg[13]_0 [4]),
        .O(nb_tick_s1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    nb_tick_s1_carry_i_3
       (.I0(minusOp[3]),
        .I1(\nb_tick_s_reg[13]_0 [3]),
        .I2(minusOp[2]),
        .I3(\nb_tick_s_reg[13]_0 [2]),
        .O(nb_tick_s1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h222B)) 
    nb_tick_s1_carry_i_4
       (.I0(minusOp[1]),
        .I1(\nb_tick_s_reg[13]_0 [1]),
        .I2(I22[0]),
        .I3(\nb_tick_s_reg[13]_0 [0]),
        .O(nb_tick_s1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    nb_tick_s1_carry_i_5
       (.I0(\nb_tick_s_reg[13]_0 [7]),
        .I1(minusOp[7]),
        .I2(\nb_tick_s_reg[13]_0 [6]),
        .I3(minusOp[6]),
        .O(nb_tick_s1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    nb_tick_s1_carry_i_6
       (.I0(\nb_tick_s_reg[13]_0 [5]),
        .I1(minusOp[5]),
        .I2(\nb_tick_s_reg[13]_0 [4]),
        .I3(minusOp[4]),
        .O(nb_tick_s1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    nb_tick_s1_carry_i_7
       (.I0(\nb_tick_s_reg[13]_0 [3]),
        .I1(minusOp[3]),
        .I2(\nb_tick_s_reg[13]_0 [2]),
        .I3(minusOp[2]),
        .O(nb_tick_s1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    nb_tick_s1_carry_i_8
       (.I0(\nb_tick_s_reg[13]_0 [1]),
        .I1(minusOp[1]),
        .I2(\nb_tick_s_reg[13]_0 [0]),
        .I3(I22[0]),
        .O(nb_tick_s1_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \nb_tick_s[0]_i_6 
       (.I0(\nb_tick_s_reg[13]_0 [0]),
        .O(\nb_tick_s[0]_i_6_n_0 ));
  FDRE \nb_tick_s_reg[0] 
       (.C(ref_clk_i),
        .CE(tick_s),
        .D(\nb_tick_s_reg[0]_i_3_n_7 ),
        .Q(\nb_tick_s_reg[13]_0 [0]),
        .R(pwm_cpt_inst_n_0));
  CARRY4 \nb_tick_s_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\nb_tick_s_reg[0]_i_3_n_0 ,\nb_tick_s_reg[0]_i_3_n_1 ,\nb_tick_s_reg[0]_i_3_n_2 ,\nb_tick_s_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\nb_tick_s_reg[0]_i_3_n_4 ,\nb_tick_s_reg[0]_i_3_n_5 ,\nb_tick_s_reg[0]_i_3_n_6 ,\nb_tick_s_reg[0]_i_3_n_7 }),
        .S({\nb_tick_s_reg[13]_0 [3:1],\nb_tick_s[0]_i_6_n_0 }));
  FDRE \nb_tick_s_reg[10] 
       (.C(ref_clk_i),
        .CE(tick_s),
        .D(\nb_tick_s_reg[8]_i_1_n_5 ),
        .Q(\nb_tick_s_reg[13]_0 [10]),
        .R(pwm_cpt_inst_n_0));
  FDRE \nb_tick_s_reg[11] 
       (.C(ref_clk_i),
        .CE(tick_s),
        .D(\nb_tick_s_reg[8]_i_1_n_4 ),
        .Q(\nb_tick_s_reg[13]_0 [11]),
        .R(pwm_cpt_inst_n_0));
  FDRE \nb_tick_s_reg[12] 
       (.C(ref_clk_i),
        .CE(tick_s),
        .D(\nb_tick_s_reg[12]_i_1_n_7 ),
        .Q(\nb_tick_s_reg[13]_0 [12]),
        .R(pwm_cpt_inst_n_0));
  CARRY4 \nb_tick_s_reg[12]_i_1 
       (.CI(\nb_tick_s_reg[8]_i_1_n_0 ),
        .CO({\NLW_nb_tick_s_reg[12]_i_1_CO_UNCONNECTED [3:1],\nb_tick_s_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_nb_tick_s_reg[12]_i_1_O_UNCONNECTED [3:2],\nb_tick_s_reg[12]_i_1_n_6 ,\nb_tick_s_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\nb_tick_s_reg[13]_0 [13:12]}));
  FDRE \nb_tick_s_reg[13] 
       (.C(ref_clk_i),
        .CE(tick_s),
        .D(\nb_tick_s_reg[12]_i_1_n_6 ),
        .Q(\nb_tick_s_reg[13]_0 [13]),
        .R(pwm_cpt_inst_n_0));
  FDRE \nb_tick_s_reg[1] 
       (.C(ref_clk_i),
        .CE(tick_s),
        .D(\nb_tick_s_reg[0]_i_3_n_6 ),
        .Q(\nb_tick_s_reg[13]_0 [1]),
        .R(pwm_cpt_inst_n_0));
  FDRE \nb_tick_s_reg[2] 
       (.C(ref_clk_i),
        .CE(tick_s),
        .D(\nb_tick_s_reg[0]_i_3_n_5 ),
        .Q(\nb_tick_s_reg[13]_0 [2]),
        .R(pwm_cpt_inst_n_0));
  FDRE \nb_tick_s_reg[3] 
       (.C(ref_clk_i),
        .CE(tick_s),
        .D(\nb_tick_s_reg[0]_i_3_n_4 ),
        .Q(\nb_tick_s_reg[13]_0 [3]),
        .R(pwm_cpt_inst_n_0));
  FDRE \nb_tick_s_reg[4] 
       (.C(ref_clk_i),
        .CE(tick_s),
        .D(\nb_tick_s_reg[4]_i_1_n_7 ),
        .Q(\nb_tick_s_reg[13]_0 [4]),
        .R(pwm_cpt_inst_n_0));
  CARRY4 \nb_tick_s_reg[4]_i_1 
       (.CI(\nb_tick_s_reg[0]_i_3_n_0 ),
        .CO({\nb_tick_s_reg[4]_i_1_n_0 ,\nb_tick_s_reg[4]_i_1_n_1 ,\nb_tick_s_reg[4]_i_1_n_2 ,\nb_tick_s_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nb_tick_s_reg[4]_i_1_n_4 ,\nb_tick_s_reg[4]_i_1_n_5 ,\nb_tick_s_reg[4]_i_1_n_6 ,\nb_tick_s_reg[4]_i_1_n_7 }),
        .S(\nb_tick_s_reg[13]_0 [7:4]));
  FDRE \nb_tick_s_reg[5] 
       (.C(ref_clk_i),
        .CE(tick_s),
        .D(\nb_tick_s_reg[4]_i_1_n_6 ),
        .Q(\nb_tick_s_reg[13]_0 [5]),
        .R(pwm_cpt_inst_n_0));
  FDRE \nb_tick_s_reg[6] 
       (.C(ref_clk_i),
        .CE(tick_s),
        .D(\nb_tick_s_reg[4]_i_1_n_5 ),
        .Q(\nb_tick_s_reg[13]_0 [6]),
        .R(pwm_cpt_inst_n_0));
  FDRE \nb_tick_s_reg[7] 
       (.C(ref_clk_i),
        .CE(tick_s),
        .D(\nb_tick_s_reg[4]_i_1_n_4 ),
        .Q(\nb_tick_s_reg[13]_0 [7]),
        .R(pwm_cpt_inst_n_0));
  FDRE \nb_tick_s_reg[8] 
       (.C(ref_clk_i),
        .CE(tick_s),
        .D(\nb_tick_s_reg[8]_i_1_n_7 ),
        .Q(\nb_tick_s_reg[13]_0 [8]),
        .R(pwm_cpt_inst_n_0));
  CARRY4 \nb_tick_s_reg[8]_i_1 
       (.CI(\nb_tick_s_reg[4]_i_1_n_0 ),
        .CO({\nb_tick_s_reg[8]_i_1_n_0 ,\nb_tick_s_reg[8]_i_1_n_1 ,\nb_tick_s_reg[8]_i_1_n_2 ,\nb_tick_s_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nb_tick_s_reg[8]_i_1_n_4 ,\nb_tick_s_reg[8]_i_1_n_5 ,\nb_tick_s_reg[8]_i_1_n_6 ,\nb_tick_s_reg[8]_i_1_n_7 }),
        .S(\nb_tick_s_reg[13]_0 [11:8]));
  FDRE \nb_tick_s_reg[9] 
       (.C(ref_clk_i),
        .CE(tick_s),
        .D(\nb_tick_s_reg[8]_i_1_n_6 ),
        .Q(\nb_tick_s_reg[13]_0 [9]),
        .R(pwm_cpt_inst_n_0));
  double_dds_pwm_axi_1_0_pwm_cpt pwm_cpt_inst
       (.CO(nb_tick_s1_carry__0_n_1),
        .\cpt_s_reg[13]_0 (\cpt_s_reg[13] ),
        .out(out),
        .ref_clk_i(ref_clk_i),
        .ref_rst_i(ref_rst_i),
        .ref_rst_i_0(pwm_cpt_inst_n_0),
        .tick_s(tick_s));
  CARRY4 pwm_o1_carry
       (.CI(1'b0),
        .CO({pwm_o1_carry_n_0,pwm_o1_carry_n_1,pwm_o1_carry_n_2,pwm_o1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_o1_carry_i_1_n_0,pwm_o1_carry_i_2_n_0,pwm_o1_carry_i_3_n_0,pwm_o1_carry_i_4_n_0}),
        .O(NLW_pwm_o1_carry_O_UNCONNECTED[3:0]),
        .S(pwm_o1_carry__0_0));
  CARRY4 pwm_o1_carry__0
       (.CI(pwm_o1_carry_n_0),
        .CO({NLW_pwm_o1_carry__0_CO_UNCONNECTED[3],CO,pwm_o1_carry__0_n_2,pwm_o1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,pwm_o1_carry__0_i_1_n_0,pwm_o1_carry__0_i_2_n_0,pwm_o1_carry__0_i_3_n_0}),
        .O(NLW_pwm_o1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,pwm_o}));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_o1_carry__0_i_1
       (.I0(\nb_tick_s_reg[13]_0 [13]),
        .I1(pwm_o1_carry__0_1[13]),
        .I2(pwm_o1_carry__0_1[12]),
        .I3(\nb_tick_s_reg[13]_0 [12]),
        .O(pwm_o1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_o1_carry__0_i_2
       (.I0(\nb_tick_s_reg[13]_0 [11]),
        .I1(pwm_o1_carry__0_1[11]),
        .I2(pwm_o1_carry__0_1[10]),
        .I3(\nb_tick_s_reg[13]_0 [10]),
        .O(pwm_o1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_o1_carry__0_i_3
       (.I0(\nb_tick_s_reg[13]_0 [9]),
        .I1(pwm_o1_carry__0_1[9]),
        .I2(pwm_o1_carry__0_1[8]),
        .I3(\nb_tick_s_reg[13]_0 [8]),
        .O(pwm_o1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_o1_carry_i_1
       (.I0(\nb_tick_s_reg[13]_0 [7]),
        .I1(pwm_o1_carry__0_1[7]),
        .I2(pwm_o1_carry__0_1[6]),
        .I3(\nb_tick_s_reg[13]_0 [6]),
        .O(pwm_o1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_o1_carry_i_2
       (.I0(\nb_tick_s_reg[13]_0 [5]),
        .I1(pwm_o1_carry__0_1[5]),
        .I2(pwm_o1_carry__0_1[4]),
        .I3(\nb_tick_s_reg[13]_0 [4]),
        .O(pwm_o1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_o1_carry_i_3
       (.I0(\nb_tick_s_reg[13]_0 [3]),
        .I1(pwm_o1_carry__0_1[3]),
        .I2(pwm_o1_carry__0_1[2]),
        .I3(\nb_tick_s_reg[13]_0 [2]),
        .O(pwm_o1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_o1_carry_i_4
       (.I0(\nb_tick_s_reg[13]_0 [1]),
        .I1(pwm_o1_carry__0_1[1]),
        .I2(pwm_o1_carry__0_1[0]),
        .I3(\nb_tick_s_reg[13]_0 [0]),
        .O(pwm_o1_carry_i_4_n_0));
endmodule

module double_dds_pwm_axi_1_0_pwm_sync_bit
   (out,
    data0,
    s00_axi_aclk,
    ref_clk_i);
  output [0:0]out;
  input [0:0]data0;
  input s00_axi_aclk;
  input ref_clk_i;

  wire [0:0]data0;
  (* async_reg = "true" *) wire [2:0]flipflops;
  wire [0:0]p_0_in;
  wire ref_clk_i;
  wire s00_axi_aclk;

  assign out[0] = flipflops[2];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(p_0_in),
        .Q(flipflops[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(flipflops[0]),
        .Q(flipflops[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(flipflops[1]),
        .Q(flipflops[2]),
        .R(1'b0));
  FDRE sync_stage0_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pwm_sync_bit" *) 
module double_dds_pwm_axi_1_0_pwm_sync_bit__xdcDup__1
   (out,
    pwm_o,
    data0,
    s00_axi_aclk,
    pwm_o_0,
    CO,
    ref_clk_i);
  output [0:0]out;
  output pwm_o;
  input [0:0]data0;
  input s00_axi_aclk;
  input [0:0]pwm_o_0;
  input [0:0]CO;
  input ref_clk_i;

  wire [0:0]CO;
  wire [0:0]data0;
  (* async_reg = "true" *) wire [2:0]flipflops;
  wire [0:0]p_0_in;
  wire pwm_o;
  wire [0:0]pwm_o_0;
  wire ref_clk_i;
  wire s00_axi_aclk;

  assign out[0] = flipflops[2];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(p_0_in),
        .Q(flipflops[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(flipflops[0]),
        .Q(flipflops[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(flipflops[1]),
        .Q(flipflops[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h28)) 
    pwm_o_INST_0
       (.I0(flipflops[2]),
        .I1(pwm_o_0),
        .I2(CO),
        .O(pwm_o));
  FDRE sync_stage0_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0),
        .Q(p_0_in),
        .R(1'b0));
endmodule

module double_dds_pwm_axi_1_0_pwm_sync_vector
   (out,
    D,
    s00_axi_aclk,
    ref_clk_i);
  output [13:0]out;
  input [13:0]D;
  input s00_axi_aclk;
  input ref_clk_i;

  wire [13:0]D;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[2]_2 ;
  wire ref_clk_i;
  wire s00_axi_aclk;
  wire [13:0]sync_vect_stage0_s;

  assign out[13:0] = \flipflops_vect[2]_2 ;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[0]),
        .Q(\flipflops_vect[0]_0 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[10]),
        .Q(\flipflops_vect[0]_0 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[11]),
        .Q(\flipflops_vect[0]_0 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[12]),
        .Q(\flipflops_vect[0]_0 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[13]),
        .Q(\flipflops_vect[0]_0 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[1]),
        .Q(\flipflops_vect[0]_0 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[2]),
        .Q(\flipflops_vect[0]_0 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[3]),
        .Q(\flipflops_vect[0]_0 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[4]),
        .Q(\flipflops_vect[0]_0 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[5]),
        .Q(\flipflops_vect[0]_0 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[6]),
        .Q(\flipflops_vect[0]_0 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[7]),
        .Q(\flipflops_vect[0]_0 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[8]),
        .Q(\flipflops_vect[0]_0 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[9]),
        .Q(\flipflops_vect[0]_0 [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [0]),
        .Q(\flipflops_vect[1]_1 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [10]),
        .Q(\flipflops_vect[1]_1 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [11]),
        .Q(\flipflops_vect[1]_1 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [12]),
        .Q(\flipflops_vect[1]_1 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [13]),
        .Q(\flipflops_vect[1]_1 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [1]),
        .Q(\flipflops_vect[1]_1 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [2]),
        .Q(\flipflops_vect[1]_1 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [3]),
        .Q(\flipflops_vect[1]_1 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [4]),
        .Q(\flipflops_vect[1]_1 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [5]),
        .Q(\flipflops_vect[1]_1 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [6]),
        .Q(\flipflops_vect[1]_1 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [7]),
        .Q(\flipflops_vect[1]_1 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [8]),
        .Q(\flipflops_vect[1]_1 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [9]),
        .Q(\flipflops_vect[1]_1 [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [0]),
        .Q(\flipflops_vect[2]_2 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [10]),
        .Q(\flipflops_vect[2]_2 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [11]),
        .Q(\flipflops_vect[2]_2 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [12]),
        .Q(\flipflops_vect[2]_2 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [13]),
        .Q(\flipflops_vect[2]_2 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [1]),
        .Q(\flipflops_vect[2]_2 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [2]),
        .Q(\flipflops_vect[2]_2 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [3]),
        .Q(\flipflops_vect[2]_2 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [4]),
        .Q(\flipflops_vect[2]_2 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [5]),
        .Q(\flipflops_vect[2]_2 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [6]),
        .Q(\flipflops_vect[2]_2 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [7]),
        .Q(\flipflops_vect[2]_2 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [8]),
        .Q(\flipflops_vect[2]_2 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [9]),
        .Q(\flipflops_vect[2]_2 [9]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(sync_vect_stage0_s[0]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(sync_vect_stage0_s[10]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(sync_vect_stage0_s[11]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(sync_vect_stage0_s[12]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(sync_vect_stage0_s[13]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(sync_vect_stage0_s[1]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(sync_vect_stage0_s[2]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(sync_vect_stage0_s[3]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(sync_vect_stage0_s[4]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(sync_vect_stage0_s[5]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(sync_vect_stage0_s[6]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(sync_vect_stage0_s[7]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(sync_vect_stage0_s[8]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(sync_vect_stage0_s[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pwm_sync_vector" *) 
module double_dds_pwm_axi_1_0_pwm_sync_vector__xdcDup__1
   (out,
    \flipflops_vect_reg[2][7]_0 ,
    \flipflops_vect_reg[2][13]_0 ,
    pwm_o1_carry__0,
    D,
    s00_axi_aclk,
    ref_clk_i);
  output [13:0]out;
  output [3:0]\flipflops_vect_reg[2][7]_0 ;
  output [2:0]\flipflops_vect_reg[2][13]_0 ;
  input [13:0]pwm_o1_carry__0;
  input [13:0]D;
  input s00_axi_aclk;
  input ref_clk_i;

  wire [13:0]D;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[2]_2 ;
  wire [2:0]\flipflops_vect_reg[2][13]_0 ;
  wire [3:0]\flipflops_vect_reg[2][7]_0 ;
  wire [13:0]pwm_o1_carry__0;
  wire ref_clk_i;
  wire s00_axi_aclk;
  wire [13:0]sync_vect_stage0_s;

  assign out[13:0] = \flipflops_vect[2]_2 ;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[0]),
        .Q(\flipflops_vect[0]_0 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[10]),
        .Q(\flipflops_vect[0]_0 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[11]),
        .Q(\flipflops_vect[0]_0 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[12]),
        .Q(\flipflops_vect[0]_0 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[13]),
        .Q(\flipflops_vect[0]_0 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[1]),
        .Q(\flipflops_vect[0]_0 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[2]),
        .Q(\flipflops_vect[0]_0 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[3]),
        .Q(\flipflops_vect[0]_0 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[4]),
        .Q(\flipflops_vect[0]_0 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[5]),
        .Q(\flipflops_vect[0]_0 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[6]),
        .Q(\flipflops_vect[0]_0 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[7]),
        .Q(\flipflops_vect[0]_0 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[8]),
        .Q(\flipflops_vect[0]_0 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[9]),
        .Q(\flipflops_vect[0]_0 [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [0]),
        .Q(\flipflops_vect[1]_1 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [10]),
        .Q(\flipflops_vect[1]_1 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [11]),
        .Q(\flipflops_vect[1]_1 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [12]),
        .Q(\flipflops_vect[1]_1 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [13]),
        .Q(\flipflops_vect[1]_1 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [1]),
        .Q(\flipflops_vect[1]_1 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [2]),
        .Q(\flipflops_vect[1]_1 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [3]),
        .Q(\flipflops_vect[1]_1 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [4]),
        .Q(\flipflops_vect[1]_1 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [5]),
        .Q(\flipflops_vect[1]_1 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [6]),
        .Q(\flipflops_vect[1]_1 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [7]),
        .Q(\flipflops_vect[1]_1 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [8]),
        .Q(\flipflops_vect[1]_1 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [9]),
        .Q(\flipflops_vect[1]_1 [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [0]),
        .Q(\flipflops_vect[2]_2 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [10]),
        .Q(\flipflops_vect[2]_2 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [11]),
        .Q(\flipflops_vect[2]_2 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [12]),
        .Q(\flipflops_vect[2]_2 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [13]),
        .Q(\flipflops_vect[2]_2 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [1]),
        .Q(\flipflops_vect[2]_2 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [2]),
        .Q(\flipflops_vect[2]_2 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [3]),
        .Q(\flipflops_vect[2]_2 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [4]),
        .Q(\flipflops_vect[2]_2 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [5]),
        .Q(\flipflops_vect[2]_2 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [6]),
        .Q(\flipflops_vect[2]_2 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [7]),
        .Q(\flipflops_vect[2]_2 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [8]),
        .Q(\flipflops_vect[2]_2 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [9]),
        .Q(\flipflops_vect[2]_2 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_o1_carry__0_i_4
       (.I0(\flipflops_vect[2]_2 [13]),
        .I1(pwm_o1_carry__0[13]),
        .I2(\flipflops_vect[2]_2 [12]),
        .I3(pwm_o1_carry__0[12]),
        .O(\flipflops_vect_reg[2][13]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_o1_carry__0_i_5
       (.I0(\flipflops_vect[2]_2 [11]),
        .I1(pwm_o1_carry__0[11]),
        .I2(\flipflops_vect[2]_2 [10]),
        .I3(pwm_o1_carry__0[10]),
        .O(\flipflops_vect_reg[2][13]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_o1_carry__0_i_6
       (.I0(\flipflops_vect[2]_2 [9]),
        .I1(pwm_o1_carry__0[9]),
        .I2(\flipflops_vect[2]_2 [8]),
        .I3(pwm_o1_carry__0[8]),
        .O(\flipflops_vect_reg[2][13]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_o1_carry_i_5
       (.I0(\flipflops_vect[2]_2 [7]),
        .I1(pwm_o1_carry__0[7]),
        .I2(\flipflops_vect[2]_2 [6]),
        .I3(pwm_o1_carry__0[6]),
        .O(\flipflops_vect_reg[2][7]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_o1_carry_i_6
       (.I0(\flipflops_vect[2]_2 [5]),
        .I1(pwm_o1_carry__0[5]),
        .I2(\flipflops_vect[2]_2 [4]),
        .I3(pwm_o1_carry__0[4]),
        .O(\flipflops_vect_reg[2][7]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_o1_carry_i_7
       (.I0(\flipflops_vect[2]_2 [3]),
        .I1(pwm_o1_carry__0[3]),
        .I2(\flipflops_vect[2]_2 [2]),
        .I3(pwm_o1_carry__0[2]),
        .O(\flipflops_vect_reg[2][7]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_o1_carry_i_8
       (.I0(\flipflops_vect[2]_2 [1]),
        .I1(pwm_o1_carry__0[1]),
        .I2(\flipflops_vect[2]_2 [0]),
        .I3(pwm_o1_carry__0[0]),
        .O(\flipflops_vect_reg[2][7]_0 [0]));
  FDRE \sync_vect_stage0_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(sync_vect_stage0_s[0]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(sync_vect_stage0_s[10]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(sync_vect_stage0_s[11]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(sync_vect_stage0_s[12]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(sync_vect_stage0_s[13]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(sync_vect_stage0_s[1]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(sync_vect_stage0_s[2]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(sync_vect_stage0_s[3]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(sync_vect_stage0_s[4]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(sync_vect_stage0_s[5]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(sync_vect_stage0_s[6]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(sync_vect_stage0_s[7]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(sync_vect_stage0_s[8]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(sync_vect_stage0_s[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pwm_sync_vector" *) 
module double_dds_pwm_axi_1_0_pwm_sync_vector__xdcDup__2
   (out,
    \flipflops_vect_reg[2][13]_0 ,
    \flipflops_vect_reg[2][12]_0 ,
    \flipflops_vect_reg[2][8]_0 ,
    S,
    D,
    s00_axi_aclk,
    ref_clk_i);
  output [12:0]out;
  output [0:0]\flipflops_vect_reg[2][13]_0 ;
  output [3:0]\flipflops_vect_reg[2][12]_0 ;
  output [3:0]\flipflops_vect_reg[2][8]_0 ;
  output [3:0]S;
  input [13:0]D;
  input s00_axi_aclk;
  input ref_clk_i;

  wire [13:0]D;
  wire [3:0]S;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[2]_2 ;
  wire [3:0]\flipflops_vect_reg[2][12]_0 ;
  wire [0:0]\flipflops_vect_reg[2][13]_0 ;
  wire [3:0]\flipflops_vect_reg[2][8]_0 ;
  wire ref_clk_i;
  wire s00_axi_aclk;
  wire [13:0]sync_vect_stage0_s;

  assign out[12:0] = \flipflops_vect[2]_2 [12:0];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[0]),
        .Q(\flipflops_vect[0]_0 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[10]),
        .Q(\flipflops_vect[0]_0 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[11]),
        .Q(\flipflops_vect[0]_0 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[12]),
        .Q(\flipflops_vect[0]_0 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[13]),
        .Q(\flipflops_vect[0]_0 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[1]),
        .Q(\flipflops_vect[0]_0 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[2]),
        .Q(\flipflops_vect[0]_0 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[3]),
        .Q(\flipflops_vect[0]_0 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[4]),
        .Q(\flipflops_vect[0]_0 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[5]),
        .Q(\flipflops_vect[0]_0 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[6]),
        .Q(\flipflops_vect[0]_0 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[7]),
        .Q(\flipflops_vect[0]_0 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[8]),
        .Q(\flipflops_vect[0]_0 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[9]),
        .Q(\flipflops_vect[0]_0 [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [0]),
        .Q(\flipflops_vect[1]_1 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [10]),
        .Q(\flipflops_vect[1]_1 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [11]),
        .Q(\flipflops_vect[1]_1 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [12]),
        .Q(\flipflops_vect[1]_1 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [13]),
        .Q(\flipflops_vect[1]_1 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [1]),
        .Q(\flipflops_vect[1]_1 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [2]),
        .Q(\flipflops_vect[1]_1 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [3]),
        .Q(\flipflops_vect[1]_1 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [4]),
        .Q(\flipflops_vect[1]_1 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [5]),
        .Q(\flipflops_vect[1]_1 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [6]),
        .Q(\flipflops_vect[1]_1 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [7]),
        .Q(\flipflops_vect[1]_1 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [8]),
        .Q(\flipflops_vect[1]_1 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [9]),
        .Q(\flipflops_vect[1]_1 [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [0]),
        .Q(\flipflops_vect[2]_2 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [10]),
        .Q(\flipflops_vect[2]_2 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [11]),
        .Q(\flipflops_vect[2]_2 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [12]),
        .Q(\flipflops_vect[2]_2 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [13]),
        .Q(\flipflops_vect[2]_2 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [1]),
        .Q(\flipflops_vect[2]_2 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [2]),
        .Q(\flipflops_vect[2]_2 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [3]),
        .Q(\flipflops_vect[2]_2 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [4]),
        .Q(\flipflops_vect[2]_2 [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [5]),
        .Q(\flipflops_vect[2]_2 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [6]),
        .Q(\flipflops_vect[2]_2 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [7]),
        .Q(\flipflops_vect[2]_2 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [8]),
        .Q(\flipflops_vect[2]_2 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [9]),
        .Q(\flipflops_vect[2]_2 [9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(\flipflops_vect[2]_2 [8]),
        .O(\flipflops_vect_reg[2][8]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(\flipflops_vect[2]_2 [7]),
        .O(\flipflops_vect_reg[2][8]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(\flipflops_vect[2]_2 [6]),
        .O(\flipflops_vect_reg[2][8]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(\flipflops_vect[2]_2 [5]),
        .O(\flipflops_vect_reg[2][8]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(\flipflops_vect[2]_2 [12]),
        .O(\flipflops_vect_reg[2][12]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(\flipflops_vect[2]_2 [11]),
        .O(\flipflops_vect_reg[2][12]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(\flipflops_vect[2]_2 [10]),
        .O(\flipflops_vect_reg[2][12]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(\flipflops_vect[2]_2 [9]),
        .O(\flipflops_vect_reg[2][12]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(\flipflops_vect[2]_2 [13]),
        .O(\flipflops_vect_reg[2][13]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(\flipflops_vect[2]_2 [4]),
        .O(S[3]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(\flipflops_vect[2]_2 [3]),
        .O(S[2]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(\flipflops_vect[2]_2 [2]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(\flipflops_vect[2]_2 [1]),
        .O(S[0]));
  FDRE \sync_vect_stage0_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(sync_vect_stage0_s[0]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(sync_vect_stage0_s[10]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(sync_vect_stage0_s[11]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(sync_vect_stage0_s[12]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(sync_vect_stage0_s[13]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(sync_vect_stage0_s[1]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(sync_vect_stage0_s[2]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(sync_vect_stage0_s[3]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(sync_vect_stage0_s[4]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(sync_vect_stage0_s[5]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(sync_vect_stage0_s[6]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(sync_vect_stage0_s[7]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(sync_vect_stage0_s[8]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(sync_vect_stage0_s[9]),
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
