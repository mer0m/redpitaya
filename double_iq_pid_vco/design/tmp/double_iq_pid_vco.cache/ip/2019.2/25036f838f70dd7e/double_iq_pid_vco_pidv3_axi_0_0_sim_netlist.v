// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri May 15 18:40:13 2020
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_iq_pid_vco_pidv3_axi_0_0_sim_netlist.v
// Design      : double_iq_pid_vco_pidv3_axi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "double_iq_pid_vco_pidv3_axi_0_0,pidv3_axi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "pidv3_axi,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (data_i,
    data_en_i,
    data_clk_i,
    data_rst_i,
    setpoint_i,
    kp_i,
    ki_i,
    kd_i,
    sign_i,
    int_rst_i,
    data_o,
    data_en_o,
    data_clk_o,
    data_rst_o,
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
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA" *) input [13:0]data_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_EN" *) input data_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_CLK" *) input data_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_in DATA_RST" *) input data_rst_i;
  input [13:0]setpoint_i;
  input [13:0]kp_i;
  input [17:0]ki_i;
  input [13:0]kd_i;
  input sign_i;
  input int_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA" *) output [13:0]data_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_EN" *) output data_en_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_CLK" *) output data_clk_o;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data_out DATA_RST" *) output data_rst_o;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input s00_axi_reset;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s00_axi_awaddr;
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

  wire data_clk_i;
  wire data_clk_o;
  wire data_en_i;
  wire data_en_o;
  wire [13:0]data_i;
  wire [13:0]data_o;
  wire data_rst_i;
  wire data_rst_o;
  wire int_rst_i;
  wire [13:0]kd_i;
  wire [17:0]ki_i;
  wire [13:0]kp_i;
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
  wire [13:0]setpoint_i;
  wire sign_i;

  (* C_S00_AXI_ADDR_WIDTH = "5" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  (* DATA_IN_SIZE = "14" *) 
  (* DATA_OUT_SIZE = "14" *) 
  (* DSR = "1" *) 
  (* D_SIZE = "14" *) 
  (* ISR = "19" *) 
  (* I_SIZE = "18" *) 
  (* PSR = "13" *) 
  (* P_SIZE = "14" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi U0
       (.data_clk_i(data_clk_i),
        .data_clk_o(data_clk_o),
        .data_en_i(data_en_i),
        .data_en_o(data_en_o),
        .data_i(data_i),
        .data_o(data_o),
        .data_rst_i(data_rst_i),
        .data_rst_o(data_rst_o),
        .int_rst_i(int_rst_i),
        .kd_i(kd_i),
        .ki_i(ki_i),
        .kp_i(kp_i),
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
        .s00_axi_wvalid(s00_axi_wvalid),
        .setpoint_i(setpoint_i),
        .sign_i(sign_i));
endmodule

(* C_S00_AXI_ADDR_WIDTH = "5" *) (* C_S00_AXI_DATA_WIDTH = "32" *) (* DATA_IN_SIZE = "14" *) 
(* DATA_OUT_SIZE = "14" *) (* DSR = "1" *) (* D_SIZE = "14" *) 
(* ISR = "19" *) (* I_SIZE = "18" *) (* PSR = "13" *) 
(* P_SIZE = "14" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi
   (data_i,
    data_en_i,
    data_clk_i,
    data_rst_i,
    setpoint_i,
    kp_i,
    ki_i,
    kd_i,
    sign_i,
    int_rst_i,
    data_o,
    data_en_o,
    data_clk_o,
    data_rst_o,
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
  input [13:0]data_i;
  input data_en_i;
  input data_clk_i;
  input data_rst_i;
  input [13:0]setpoint_i;
  input [13:0]kp_i;
  input [17:0]ki_i;
  input [13:0]kd_i;
  input sign_i;
  input int_rst_i;
  output [13:0]data_o;
  output data_en_o;
  output data_clk_o;
  output data_rst_o;
  input s00_axi_aclk;
  input s00_axi_reset;
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

  wire \<const0> ;
  wire [17:0]A;
  wire [13:0]B;
  wire [2:0]addr_s;
  wire comm_inst_n_17;
  wire comm_inst_n_18;
  wire comm_inst_n_19;
  wire comm_inst_n_2;
  wire comm_inst_n_20;
  wire comm_inst_n_22;
  wire comm_inst_n_23;
  wire comm_inst_n_24;
  wire comm_inst_n_25;
  wire comm_inst_n_26;
  wire comm_inst_n_27;
  wire comm_inst_n_28;
  wire comm_inst_n_29;
  wire comm_inst_n_30;
  wire comm_inst_n_31;
  wire comm_inst_n_32;
  wire comm_inst_n_33;
  wire comm_inst_n_34;
  wire comm_inst_n_41;
  wire comm_inst_n_42;
  wire comm_inst_n_43;
  wire comm_inst_n_44;
  wire data10;
  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire [13:0]data_i;
  wire [13:0]data_o;
  wire data_rst_i;
  wire handle_comm_n_26;
  wire handle_comm_n_28;
  wire handle_comm_n_29;
  wire input_syn_n_5;
  wire int_rst_i;
  wire int_rst_s;
  wire int_rst_sync_s;
  wire [5:0]is_input_s;
  wire is_input_s_3;
  wire [5:0]is_input_sync_s;
  wire [13:0]kd_s;
  wire kd_s_1;
  wire [17:0]ki_i;
  wire ki_s;
  wire [13:0]kp_i;
  wire [13:0]kp_s;
  wire kp_s_0;
  wire pidv3_axiLogic_n_15;
  wire pidv3_axiLogic_n_16;
  wire pidv3_axiLogic_n_17;
  wire pidv3_axiLogic_n_18;
  wire pidv3_axiLogic_n_19;
  wire pidv3_axiLogic_n_20;
  wire pidv3_axiLogic_n_21;
  wire pidv3_axiLogic_n_22;
  wire pidv3_axiLogic_n_23;
  wire pidv3_axiLogic_n_24;
  wire pidv3_axiLogic_n_25;
  wire pidv3_axiLogic_n_26;
  wire pidv3_axiLogic_n_27;
  wire pidv3_axiLogic_n_28;
  wire pidv3_axiLogic_n_29;
  wire read_en_s;
  wire [12:0]readdata_next_s;
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
  wire septpoint_syn_n_14;
  wire septpoint_syn_n_15;
  wire septpoint_syn_n_16;
  wire septpoint_syn_n_17;
  wire septpoint_syn_n_18;
  wire septpoint_syn_n_19;
  wire septpoint_syn_n_20;
  wire septpoint_syn_n_21;
  wire septpoint_syn_n_22;
  wire septpoint_syn_n_23;
  wire septpoint_syn_n_24;
  wire septpoint_syn_n_25;
  wire septpoint_syn_n_26;
  wire septpoint_syn_n_27;
  wire septpoint_syn_n_28;
  wire [13:0]setpoint_i;
  wire [13:0]setpoint_s;
  wire setpoint_s_2;
  wire [13:0]setpoint_sync_s;
  wire sign2_s;
  wire sign_i;
  wire sign_s;

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
  assign s00_axi_rdata[17:14] = \^s00_axi_rdata [17:14];
  assign s00_axi_rdata[13] = \^s00_axi_rdata [30];
  assign s00_axi_rdata[12:0] = \^s00_axi_rdata [12:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_comm comm_inst
       (.D(readdata_next_s),
        .E(setpoint_s_2),
        .Q(kp_s),
        .addr_s(addr_s),
        .int_rst_s(int_rst_s),
        .int_rst_s_reg_0(handle_comm_n_29),
        .\is_input_s_reg[5]_0 (is_input_s),
        .\is_input_s_reg[5]_1 (is_input_s_3),
        .\kd_s_reg[13]_0 (kd_s),
        .\kd_s_reg[13]_1 (kd_s_1),
        .\ki_s_reg[17]_0 ({comm_inst_n_17,comm_inst_n_18,comm_inst_n_19,comm_inst_n_20,data10,comm_inst_n_22,comm_inst_n_23,comm_inst_n_24,comm_inst_n_25,comm_inst_n_26,comm_inst_n_27,comm_inst_n_28,comm_inst_n_29,comm_inst_n_30,comm_inst_n_31,comm_inst_n_32,comm_inst_n_33,comm_inst_n_34}),
        .\ki_s_reg[17]_1 (ki_s),
        .\kp_s_reg[13]_0 (kp_s_0),
        .\kp_s_reg[1]_0 (comm_inst_n_2),
        .\kp_s_reg[2]_0 (comm_inst_n_41),
        .\kp_s_reg[3]_0 (comm_inst_n_42),
        .\kp_s_reg[4]_0 (comm_inst_n_43),
        .\kp_s_reg[5]_0 (comm_inst_n_44),
        .read_en_s(read_en_s),
        .\readdata_s_reg[14]_0 (handle_comm_n_26),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata({\^s00_axi_rdata [30],\^s00_axi_rdata [17:14],\^s00_axi_rdata [12:0]}),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_wdata(s00_axi_wdata[17:0]),
        .\setpoint_s_reg[13]_0 (setpoint_s),
        .sign_s(sign_s),
        .sign_s_reg_0(handle_comm_n_28));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_handComm handle_comm
       (.D(readdata_next_s),
        .E(setpoint_s_2),
        .\addr_reg_reg[0]_0 (kp_s_0),
        .\addr_reg_reg[0]_1 (handle_comm_n_26),
        .\addr_reg_reg[2]_0 (kd_s_1),
        .addr_s(addr_s),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_awready_reg_1(is_input_s_3),
        .axi_awready_reg_2(ki_s),
        .axi_wready_reg_0(s00_axi_wready),
        .int_rst_s(int_rst_s),
        .read_en_s(read_en_s),
        .\readdata_s_reg[0] (is_input_s[0]),
        .\readdata_s_reg[12] (kd_s[12:0]),
        .\readdata_s_reg[12]_0 ({comm_inst_n_22,comm_inst_n_23,comm_inst_n_24,comm_inst_n_25,comm_inst_n_26,comm_inst_n_27,comm_inst_n_28,comm_inst_n_34}),
        .\readdata_s_reg[12]_1 (setpoint_s[12:0]),
        .\readdata_s_reg[12]_2 ({kp_s[12:6],kp_s[0]}),
        .\readdata_s_reg[1] (comm_inst_n_2),
        .\readdata_s_reg[2] (comm_inst_n_41),
        .\readdata_s_reg[3] (comm_inst_n_42),
        .\readdata_s_reg[4] (comm_inst_n_43),
        .\readdata_s_reg[5] (comm_inst_n_44),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[0]),
        .\s00_axi_wdata[0]_0 (handle_comm_n_29),
        .s00_axi_wdata_0_sp_1(handle_comm_n_28),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sign_s(sign_s));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_sync_vector__parameterized1 input_syn
       (.D(is_input_s),
        .\I_s_reg[13] (int_rst_sync_s),
        .data_clk_i(data_clk_i),
        .data_rst_i(data_rst_i),
        .data_rst_i_0(input_syn_n_5),
        .int_rst_i(int_rst_i),
        .out({is_input_sync_s[5:4],is_input_sync_s[2:0]}),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_sync_bit__xdcDup__1 int_rst_syn
       (.data_clk_i(data_clk_i),
        .int_rst_s(int_rst_s),
        .out(int_rst_sync_s),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_sync_vector__xdcDup__1 kd_syn
       (.D(kd_s),
        .data_clk_i(data_clk_i),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_sync_vector__parameterized0 ki_syn
       (.B(A),
        .D({comm_inst_n_17,comm_inst_n_18,comm_inst_n_19,comm_inst_n_20,data10,comm_inst_n_22,comm_inst_n_23,comm_inst_n_24,comm_inst_n_25,comm_inst_n_26,comm_inst_n_27,comm_inst_n_28,comm_inst_n_29,comm_inst_n_30,comm_inst_n_31,comm_inst_n_32,comm_inst_n_33,comm_inst_n_34}),
        .data_clk_i(data_clk_i),
        .ki_i(ki_i),
        .out(is_input_sync_s[2]),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_sync_vector__xdcDup__2 kp_syn
       (.B(B),
        .D(kp_s),
        .data_clk_i(data_clk_i),
        .kp_i(kp_i),
        .out(is_input_sync_s[1]),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_logic pidv3_axiLogic
       (.A({septpoint_syn_n_14,septpoint_syn_n_15,septpoint_syn_n_16,septpoint_syn_n_17,septpoint_syn_n_18,septpoint_syn_n_19,septpoint_syn_n_20,septpoint_syn_n_21,septpoint_syn_n_22,septpoint_syn_n_23,septpoint_syn_n_24,septpoint_syn_n_25,septpoint_syn_n_26,septpoint_syn_n_27,septpoint_syn_n_28}),
        .B(A),
        .\I_s_reg[13]_0 (input_syn_n_5),
        .I_sum_s_0(setpoint_sync_s),
        .\I_temp_s_reg[19]_0 ({is_input_sync_s[5],is_input_sync_s[0]}),
        .P_temp_s_0(B),
        .S({pidv3_axiLogic_n_15,pidv3_axiLogic_n_16,pidv3_axiLogic_n_17,pidv3_axiLogic_n_18}),
        .data_clk_i(data_clk_i),
        .data_en_i(data_en_i),
        .data_en_o(data_en_o),
        .data_i(data_i),
        .\data_i[11] ({pidv3_axiLogic_n_23,pidv3_axiLogic_n_24,pidv3_axiLogic_n_25,pidv3_axiLogic_n_26}),
        .\data_i[13] ({pidv3_axiLogic_n_27,pidv3_axiLogic_n_28,pidv3_axiLogic_n_29}),
        .\data_i[7] ({pidv3_axiLogic_n_19,pidv3_axiLogic_n_20,pidv3_axiLogic_n_21,pidv3_axiLogic_n_22}),
        .data_o(data_o),
        .data_rst_i(data_rst_i),
        .int_rst_i(int_rst_i),
        .out(int_rst_sync_s),
        .setpoint_i(setpoint_i));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_sync_vector septpoint_syn
       (.A({septpoint_syn_n_14,septpoint_syn_n_15,septpoint_syn_n_16,septpoint_syn_n_17,septpoint_syn_n_18,septpoint_syn_n_19,septpoint_syn_n_20,septpoint_syn_n_21,septpoint_syn_n_22,septpoint_syn_n_23,septpoint_syn_n_24,septpoint_syn_n_25,septpoint_syn_n_26,septpoint_syn_n_27,septpoint_syn_n_28}),
        .D(setpoint_s),
        .I_sum_s(is_input_sync_s[0]),
        .I_sum_s_0({pidv3_axiLogic_n_19,pidv3_axiLogic_n_20,pidv3_axiLogic_n_21,pidv3_axiLogic_n_22}),
        .I_sum_s_1({pidv3_axiLogic_n_23,pidv3_axiLogic_n_24,pidv3_axiLogic_n_25,pidv3_axiLogic_n_26}),
        .I_sum_s_2({pidv3_axiLogic_n_27,pidv3_axiLogic_n_28,pidv3_axiLogic_n_29}),
        .S({pidv3_axiLogic_n_15,pidv3_axiLogic_n_16,pidv3_axiLogic_n_17,pidv3_axiLogic_n_18}),
        .data_clk_i(data_clk_i),
        .data_i(data_i),
        .out(setpoint_sync_s),
        .s00_axi_aclk(s00_axi_aclk),
        .setpoint_i(setpoint_i),
        .sign2_s(sign2_s));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_sync_bit sign_syn
       (.data_clk_i(data_clk_i),
        .out(is_input_sync_s[4]),
        .s00_axi_aclk(s00_axi_aclk),
        .sign2_s(sign2_s),
        .sign_i(sign_i),
        .sign_s(sign_s));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_comm
   (sign_s,
    int_rst_s,
    \kp_s_reg[1]_0 ,
    Q,
    \ki_s_reg[17]_0 ,
    \is_input_s_reg[5]_0 ,
    \kp_s_reg[2]_0 ,
    \kp_s_reg[3]_0 ,
    \kp_s_reg[4]_0 ,
    \kp_s_reg[5]_0 ,
    \setpoint_s_reg[13]_0 ,
    \kd_s_reg[13]_0 ,
    s00_axi_rdata,
    s00_axi_reset,
    sign_s_reg_0,
    s00_axi_aclk,
    int_rst_s_reg_0,
    addr_s,
    D,
    \readdata_s_reg[14]_0 ,
    E,
    s00_axi_wdata,
    \kp_s_reg[13]_0 ,
    \ki_s_reg[17]_1 ,
    \kd_s_reg[13]_1 ,
    \is_input_s_reg[5]_1 ,
    read_en_s);
  output sign_s;
  output int_rst_s;
  output \kp_s_reg[1]_0 ;
  output [13:0]Q;
  output [17:0]\ki_s_reg[17]_0 ;
  output [5:0]\is_input_s_reg[5]_0 ;
  output \kp_s_reg[2]_0 ;
  output \kp_s_reg[3]_0 ;
  output \kp_s_reg[4]_0 ;
  output \kp_s_reg[5]_0 ;
  output [13:0]\setpoint_s_reg[13]_0 ;
  output [13:0]\kd_s_reg[13]_0 ;
  output [17:0]s00_axi_rdata;
  input s00_axi_reset;
  input sign_s_reg_0;
  input s00_axi_aclk;
  input int_rst_s_reg_0;
  input [2:0]addr_s;
  input [12:0]D;
  input \readdata_s_reg[14]_0 ;
  input [0:0]E;
  input [17:0]s00_axi_wdata;
  input [0:0]\kp_s_reg[13]_0 ;
  input [0:0]\ki_s_reg[17]_1 ;
  input [0:0]\kd_s_reg[13]_1 ;
  input [0:0]\is_input_s_reg[5]_1 ;
  input read_en_s;

  wire [12:0]D;
  wire [0:0]E;
  wire [13:0]Q;
  wire [2:0]addr_s;
  wire int_rst_s;
  wire int_rst_s_reg_0;
  wire [5:0]\is_input_s_reg[5]_0 ;
  wire [0:0]\is_input_s_reg[5]_1 ;
  wire [13:0]\kd_s_reg[13]_0 ;
  wire [0:0]\kd_s_reg[13]_1 ;
  wire [17:0]\ki_s_reg[17]_0 ;
  wire [0:0]\ki_s_reg[17]_1 ;
  wire [0:0]\kp_s_reg[13]_0 ;
  wire \kp_s_reg[1]_0 ;
  wire \kp_s_reg[2]_0 ;
  wire \kp_s_reg[3]_0 ;
  wire \kp_s_reg[4]_0 ;
  wire \kp_s_reg[5]_0 ;
  wire read_en_s;
  wire [31:14]readdata_next_s;
  wire \readdata_s[31]_i_4_n_0 ;
  wire \readdata_s_reg[14]_0 ;
  wire s00_axi_aclk;
  wire [17:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire [17:0]s00_axi_wdata;
  wire [13:0]\setpoint_s_reg[13]_0 ;
  wire sign_s;
  wire sign_s_reg_0;

  FDRE int_rst_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_rst_s_reg_0),
        .Q(int_rst_s),
        .R(s00_axi_reset));
  FDSE \is_input_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\is_input_s_reg[5]_1 ),
        .D(s00_axi_wdata[0]),
        .Q(\is_input_s_reg[5]_0 [0]),
        .S(s00_axi_reset));
  FDSE \is_input_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\is_input_s_reg[5]_1 ),
        .D(s00_axi_wdata[1]),
        .Q(\is_input_s_reg[5]_0 [1]),
        .S(s00_axi_reset));
  FDSE \is_input_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\is_input_s_reg[5]_1 ),
        .D(s00_axi_wdata[2]),
        .Q(\is_input_s_reg[5]_0 [2]),
        .S(s00_axi_reset));
  FDSE \is_input_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\is_input_s_reg[5]_1 ),
        .D(s00_axi_wdata[3]),
        .Q(\is_input_s_reg[5]_0 [3]),
        .S(s00_axi_reset));
  FDSE \is_input_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\is_input_s_reg[5]_1 ),
        .D(s00_axi_wdata[4]),
        .Q(\is_input_s_reg[5]_0 [4]),
        .S(s00_axi_reset));
  FDSE \is_input_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\is_input_s_reg[5]_1 ),
        .D(s00_axi_wdata[5]),
        .Q(\is_input_s_reg[5]_0 [5]),
        .S(s00_axi_reset));
  FDRE \kd_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\kd_s_reg[13]_1 ),
        .D(s00_axi_wdata[0]),
        .Q(\kd_s_reg[13]_0 [0]),
        .R(s00_axi_reset));
  FDRE \kd_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\kd_s_reg[13]_1 ),
        .D(s00_axi_wdata[10]),
        .Q(\kd_s_reg[13]_0 [10]),
        .R(s00_axi_reset));
  FDRE \kd_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\kd_s_reg[13]_1 ),
        .D(s00_axi_wdata[11]),
        .Q(\kd_s_reg[13]_0 [11]),
        .R(s00_axi_reset));
  FDRE \kd_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\kd_s_reg[13]_1 ),
        .D(s00_axi_wdata[12]),
        .Q(\kd_s_reg[13]_0 [12]),
        .R(s00_axi_reset));
  FDRE \kd_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\kd_s_reg[13]_1 ),
        .D(s00_axi_wdata[13]),
        .Q(\kd_s_reg[13]_0 [13]),
        .R(s00_axi_reset));
  FDRE \kd_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\kd_s_reg[13]_1 ),
        .D(s00_axi_wdata[1]),
        .Q(\kd_s_reg[13]_0 [1]),
        .R(s00_axi_reset));
  FDRE \kd_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\kd_s_reg[13]_1 ),
        .D(s00_axi_wdata[2]),
        .Q(\kd_s_reg[13]_0 [2]),
        .R(s00_axi_reset));
  FDRE \kd_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\kd_s_reg[13]_1 ),
        .D(s00_axi_wdata[3]),
        .Q(\kd_s_reg[13]_0 [3]),
        .R(s00_axi_reset));
  FDRE \kd_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\kd_s_reg[13]_1 ),
        .D(s00_axi_wdata[4]),
        .Q(\kd_s_reg[13]_0 [4]),
        .R(s00_axi_reset));
  FDRE \kd_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\kd_s_reg[13]_1 ),
        .D(s00_axi_wdata[5]),
        .Q(\kd_s_reg[13]_0 [5]),
        .R(s00_axi_reset));
  FDRE \kd_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\kd_s_reg[13]_1 ),
        .D(s00_axi_wdata[6]),
        .Q(\kd_s_reg[13]_0 [6]),
        .R(s00_axi_reset));
  FDRE \kd_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\kd_s_reg[13]_1 ),
        .D(s00_axi_wdata[7]),
        .Q(\kd_s_reg[13]_0 [7]),
        .R(s00_axi_reset));
  FDRE \kd_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\kd_s_reg[13]_1 ),
        .D(s00_axi_wdata[8]),
        .Q(\kd_s_reg[13]_0 [8]),
        .R(s00_axi_reset));
  FDRE \kd_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\kd_s_reg[13]_1 ),
        .D(s00_axi_wdata[9]),
        .Q(\kd_s_reg[13]_0 [9]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[0]),
        .Q(\ki_s_reg[17]_0 [0]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[10]),
        .Q(\ki_s_reg[17]_0 [10]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[11]),
        .Q(\ki_s_reg[17]_0 [11]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[12]),
        .Q(\ki_s_reg[17]_0 [12]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[13]),
        .Q(\ki_s_reg[17]_0 [13]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[14]),
        .Q(\ki_s_reg[17]_0 [14]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[15]),
        .Q(\ki_s_reg[17]_0 [15]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[16]),
        .Q(\ki_s_reg[17]_0 [16]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[17]),
        .Q(\ki_s_reg[17]_0 [17]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[1]),
        .Q(\ki_s_reg[17]_0 [1]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[2]),
        .Q(\ki_s_reg[17]_0 [2]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[3]),
        .Q(\ki_s_reg[17]_0 [3]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[4]),
        .Q(\ki_s_reg[17]_0 [4]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[5]),
        .Q(\ki_s_reg[17]_0 [5]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[6]),
        .Q(\ki_s_reg[17]_0 [6]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[7]),
        .Q(\ki_s_reg[17]_0 [7]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[8]),
        .Q(\ki_s_reg[17]_0 [8]),
        .R(s00_axi_reset));
  FDRE \ki_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\ki_s_reg[17]_1 ),
        .D(s00_axi_wdata[9]),
        .Q(\ki_s_reg[17]_0 [9]),
        .R(s00_axi_reset));
  FDRE \kp_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\kp_s_reg[13]_0 ),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(s00_axi_reset));
  FDRE \kp_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\kp_s_reg[13]_0 ),
        .D(s00_axi_wdata[10]),
        .Q(Q[10]),
        .R(s00_axi_reset));
  FDRE \kp_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\kp_s_reg[13]_0 ),
        .D(s00_axi_wdata[11]),
        .Q(Q[11]),
        .R(s00_axi_reset));
  FDRE \kp_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\kp_s_reg[13]_0 ),
        .D(s00_axi_wdata[12]),
        .Q(Q[12]),
        .R(s00_axi_reset));
  FDRE \kp_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\kp_s_reg[13]_0 ),
        .D(s00_axi_wdata[13]),
        .Q(Q[13]),
        .R(s00_axi_reset));
  FDRE \kp_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\kp_s_reg[13]_0 ),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(s00_axi_reset));
  FDRE \kp_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\kp_s_reg[13]_0 ),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(s00_axi_reset));
  FDRE \kp_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\kp_s_reg[13]_0 ),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(s00_axi_reset));
  FDRE \kp_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\kp_s_reg[13]_0 ),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]),
        .R(s00_axi_reset));
  FDRE \kp_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\kp_s_reg[13]_0 ),
        .D(s00_axi_wdata[5]),
        .Q(Q[5]),
        .R(s00_axi_reset));
  FDRE \kp_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\kp_s_reg[13]_0 ),
        .D(s00_axi_wdata[6]),
        .Q(Q[6]),
        .R(s00_axi_reset));
  FDRE \kp_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\kp_s_reg[13]_0 ),
        .D(s00_axi_wdata[7]),
        .Q(Q[7]),
        .R(s00_axi_reset));
  FDRE \kp_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\kp_s_reg[13]_0 ),
        .D(s00_axi_wdata[8]),
        .Q(Q[8]),
        .R(s00_axi_reset));
  FDRE \kp_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\kp_s_reg[13]_0 ),
        .D(s00_axi_wdata[9]),
        .Q(Q[9]),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \readdata_s[14]_i_1 
       (.I0(\ki_s_reg[17]_0 [14]),
        .I1(\readdata_s_reg[14]_0 ),
        .I2(\readdata_s[31]_i_4_n_0 ),
        .O(readdata_next_s[14]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \readdata_s[15]_i_1 
       (.I0(\ki_s_reg[17]_0 [15]),
        .I1(\readdata_s_reg[14]_0 ),
        .I2(\readdata_s[31]_i_4_n_0 ),
        .O(readdata_next_s[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \readdata_s[16]_i_1 
       (.I0(\ki_s_reg[17]_0 [16]),
        .I1(\readdata_s_reg[14]_0 ),
        .I2(\readdata_s[31]_i_4_n_0 ),
        .O(readdata_next_s[16]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \readdata_s[17]_i_1 
       (.I0(\ki_s_reg[17]_0 [17]),
        .I1(\readdata_s_reg[14]_0 ),
        .I2(\readdata_s[31]_i_4_n_0 ),
        .O(readdata_next_s[17]));
  LUT6 #(
    .INIT(64'hF0FCF00AF0FC000A)) 
    \readdata_s[1]_i_2 
       (.I0(Q[1]),
        .I1(\ki_s_reg[17]_0 [1]),
        .I2(addr_s[2]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\is_input_s_reg[5]_0 [1]),
        .O(\kp_s_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF0FCF00AF0FC000A)) 
    \readdata_s[2]_i_2 
       (.I0(Q[2]),
        .I1(\ki_s_reg[17]_0 [2]),
        .I2(addr_s[2]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\is_input_s_reg[5]_0 [2]),
        .O(\kp_s_reg[2]_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \readdata_s[31]_i_2 
       (.I0(\ki_s_reg[17]_0 [13]),
        .I1(\readdata_s_reg[14]_0 ),
        .I2(\readdata_s[31]_i_4_n_0 ),
        .O(readdata_next_s[31]));
  LUT6 #(
    .INIT(64'hFF00FF00AAF000CC)) 
    \readdata_s[31]_i_4 
       (.I0(\setpoint_s_reg[13]_0 [13]),
        .I1(Q[13]),
        .I2(\kd_s_reg[13]_0 [13]),
        .I3(addr_s[0]),
        .I4(addr_s[1]),
        .I5(addr_s[2]),
        .O(\readdata_s[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0FCF00AF0FC000A)) 
    \readdata_s[3]_i_2 
       (.I0(Q[3]),
        .I1(\ki_s_reg[17]_0 [3]),
        .I2(addr_s[2]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\is_input_s_reg[5]_0 [3]),
        .O(\kp_s_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hF0FCF00AF0FC000A)) 
    \readdata_s[4]_i_2 
       (.I0(Q[4]),
        .I1(\ki_s_reg[17]_0 [4]),
        .I2(addr_s[2]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\is_input_s_reg[5]_0 [4]),
        .O(\kp_s_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hF0FCF00AF0FC000A)) 
    \readdata_s[5]_i_2 
       (.I0(Q[5]),
        .I1(\ki_s_reg[17]_0 [5]),
        .I2(addr_s[2]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\is_input_s_reg[5]_0 [5]),
        .O(\kp_s_reg[5]_0 ));
  FDRE \readdata_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(D[0]),
        .Q(s00_axi_rdata[0]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(D[10]),
        .Q(s00_axi_rdata[10]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(D[11]),
        .Q(s00_axi_rdata[11]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(D[12]),
        .Q(s00_axi_rdata[12]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(readdata_next_s[14]),
        .Q(s00_axi_rdata[13]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(readdata_next_s[15]),
        .Q(s00_axi_rdata[14]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(readdata_next_s[16]),
        .Q(s00_axi_rdata[15]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(readdata_next_s[17]),
        .Q(s00_axi_rdata[16]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(D[1]),
        .Q(s00_axi_rdata[1]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(D[2]),
        .Q(s00_axi_rdata[2]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(readdata_next_s[31]),
        .Q(s00_axi_rdata[17]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(D[3]),
        .Q(s00_axi_rdata[3]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(D[4]),
        .Q(s00_axi_rdata[4]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(D[5]),
        .Q(s00_axi_rdata[5]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(D[6]),
        .Q(s00_axi_rdata[6]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(D[7]),
        .Q(s00_axi_rdata[7]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(D[8]),
        .Q(s00_axi_rdata[8]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(read_en_s),
        .D(D[9]),
        .Q(s00_axi_rdata[9]),
        .R(s00_axi_reset));
  FDRE \setpoint_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[0]),
        .Q(\setpoint_s_reg[13]_0 [0]),
        .R(s00_axi_reset));
  FDRE \setpoint_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[10]),
        .Q(\setpoint_s_reg[13]_0 [10]),
        .R(s00_axi_reset));
  FDRE \setpoint_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[11]),
        .Q(\setpoint_s_reg[13]_0 [11]),
        .R(s00_axi_reset));
  FDRE \setpoint_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[12]),
        .Q(\setpoint_s_reg[13]_0 [12]),
        .R(s00_axi_reset));
  FDRE \setpoint_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[13]),
        .Q(\setpoint_s_reg[13]_0 [13]),
        .R(s00_axi_reset));
  FDRE \setpoint_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[1]),
        .Q(\setpoint_s_reg[13]_0 [1]),
        .R(s00_axi_reset));
  FDRE \setpoint_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[2]),
        .Q(\setpoint_s_reg[13]_0 [2]),
        .R(s00_axi_reset));
  FDRE \setpoint_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[3]),
        .Q(\setpoint_s_reg[13]_0 [3]),
        .R(s00_axi_reset));
  FDRE \setpoint_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[4]),
        .Q(\setpoint_s_reg[13]_0 [4]),
        .R(s00_axi_reset));
  FDRE \setpoint_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[5]),
        .Q(\setpoint_s_reg[13]_0 [5]),
        .R(s00_axi_reset));
  FDRE \setpoint_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[6]),
        .Q(\setpoint_s_reg[13]_0 [6]),
        .R(s00_axi_reset));
  FDRE \setpoint_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[7]),
        .Q(\setpoint_s_reg[13]_0 [7]),
        .R(s00_axi_reset));
  FDRE \setpoint_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[8]),
        .Q(\setpoint_s_reg[13]_0 [8]),
        .R(s00_axi_reset));
  FDRE \setpoint_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[9]),
        .Q(\setpoint_s_reg[13]_0 [9]),
        .R(s00_axi_reset));
  FDRE sign_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sign_s_reg_0),
        .Q(sign_s),
        .R(s00_axi_reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_handComm
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_rvalid,
    axi_awready_reg_1,
    addr_s,
    E,
    \addr_reg_reg[2]_0 ,
    \addr_reg_reg[0]_0 ,
    axi_awready_reg_2,
    D,
    \addr_reg_reg[0]_1 ,
    read_en_s,
    s00_axi_wdata_0_sp_1,
    \s00_axi_wdata[0]_0 ,
    s00_axi_reset,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    \readdata_s_reg[12] ,
    \readdata_s_reg[12]_0 ,
    \readdata_s_reg[0] ,
    \readdata_s_reg[12]_1 ,
    \readdata_s_reg[12]_2 ,
    sign_s,
    s00_axi_arvalid,
    s00_axi_wdata,
    int_rst_s,
    s00_axi_bready,
    s00_axi_rready,
    \readdata_s_reg[5] ,
    \readdata_s_reg[4] ,
    \readdata_s_reg[3] ,
    \readdata_s_reg[2] ,
    \readdata_s_reg[1] ,
    s00_axi_awaddr,
    s00_axi_araddr);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [0:0]axi_awready_reg_1;
  output [2:0]addr_s;
  output [0:0]E;
  output [0:0]\addr_reg_reg[2]_0 ;
  output [0:0]\addr_reg_reg[0]_0 ;
  output [0:0]axi_awready_reg_2;
  output [12:0]D;
  output \addr_reg_reg[0]_1 ;
  output read_en_s;
  output s00_axi_wdata_0_sp_1;
  output \s00_axi_wdata[0]_0 ;
  input s00_axi_reset;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [12:0]\readdata_s_reg[12] ;
  input [7:0]\readdata_s_reg[12]_0 ;
  input [0:0]\readdata_s_reg[0] ;
  input [12:0]\readdata_s_reg[12]_1 ;
  input [7:0]\readdata_s_reg[12]_2 ;
  input sign_s;
  input s00_axi_arvalid;
  input [0:0]s00_axi_wdata;
  input int_rst_s;
  input s00_axi_bready;
  input s00_axi_rready;
  input \readdata_s_reg[5] ;
  input \readdata_s_reg[4] ;
  input \readdata_s_reg[3] ;
  input \readdata_s_reg[2] ;
  input \readdata_s_reg[1] ;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;

  wire [12:0]D;
  wire [0:0]E;
  wire [2:0]addr_reg;
  wire [0:0]\addr_reg_reg[0]_0 ;
  wire \addr_reg_reg[0]_1 ;
  wire [0:0]\addr_reg_reg[2]_0 ;
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
  wire [0:0]axi_awready_reg_2;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire int_rst_s;
  wire \is_input_s[5]_i_2_n_0 ;
  wire [2:0]read_addr_s;
  wire read_en_s;
  wire \readdata_s[0]_i_2_n_0 ;
  wire \readdata_s[0]_i_3_n_0 ;
  wire \readdata_s[10]_i_2_n_0 ;
  wire \readdata_s[11]_i_2_n_0 ;
  wire \readdata_s[12]_i_2_n_0 ;
  wire \readdata_s[12]_i_3_n_0 ;
  wire \readdata_s[6]_i_2_n_0 ;
  wire \readdata_s[7]_i_2_n_0 ;
  wire \readdata_s[8]_i_2_n_0 ;
  wire \readdata_s[9]_i_2_n_0 ;
  wire [0:0]\readdata_s_reg[0] ;
  wire [12:0]\readdata_s_reg[12] ;
  wire [7:0]\readdata_s_reg[12]_0 ;
  wire [12:0]\readdata_s_reg[12]_1 ;
  wire [7:0]\readdata_s_reg[12]_2 ;
  wire \readdata_s_reg[1] ;
  wire \readdata_s_reg[2] ;
  wire \readdata_s_reg[3] ;
  wire \readdata_s_reg[4] ;
  wire \readdata_s_reg[5] ;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [0:0]s00_axi_wdata;
  wire \s00_axi_wdata[0]_0 ;
  wire s00_axi_wdata_0_sn_1;
  wire s00_axi_wvalid;
  wire sign_s;
  wire [2:0]write_addr_s;
  wire write_en_s;

  assign s00_axi_wdata_0_sp_1 = s00_axi_wdata_0_sn_1;
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
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \addr_reg[2]_i_1 
       (.I0(read_en_s),
        .I1(addr_reg[2]),
        .I2(read_addr_s[2]),
        .I3(write_en_s),
        .I4(write_addr_s[2]),
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    axi_rvalid_i_1
       (.I0(s00_axi_rready),
        .I1(s00_axi_rvalid),
        .I2(s00_axi_arvalid),
        .I3(axi_arready_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
    .INIT(64'hFBFFFFFF08000000)) 
    int_rst_s_i_1
       (.I0(s00_axi_wdata),
        .I1(write_en_s),
        .I2(addr_s[1]),
        .I3(addr_s[0]),
        .I4(addr_s[2]),
        .I5(int_rst_s),
        .O(\s00_axi_wdata[0]_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \is_input_s[5]_i_1 
       (.I0(\is_input_s[5]_i_2_n_0 ),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(addr_s[1]),
        .O(axi_awready_reg_1));
  LUT6 #(
    .INIT(64'hBABFBABFBABABFBF)) 
    \is_input_s[5]_i_2 
       (.I0(addr_s[0]),
        .I1(write_addr_s[2]),
        .I2(write_en_s),
        .I3(read_addr_s[2]),
        .I4(addr_reg[2]),
        .I5(read_en_s),
        .O(\is_input_s[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \kd_s[13]_i_1 
       (.I0(addr_s[2]),
        .I1(addr_s[1]),
        .I2(addr_s[0]),
        .I3(write_en_s),
        .O(\addr_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \ki_s[17]_i_1 
       (.I0(write_en_s),
        .I1(addr_s[1]),
        .I2(addr_s[0]),
        .I3(addr_s[2]),
        .O(axi_awready_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \kp_s[13]_i_1 
       (.I0(addr_s[0]),
        .I1(write_en_s),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .O(\addr_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \readdata_s[0]_i_1 
       (.I0(\readdata_s[0]_i_2_n_0 ),
        .I1(\readdata_s_reg[12] [0]),
        .I2(\readdata_s[12]_i_3_n_0 ),
        .I3(\readdata_s_reg[12]_0 [0]),
        .I4(\addr_reg_reg[0]_1 ),
        .I5(\readdata_s[0]_i_3_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hCF020002)) 
    \readdata_s[0]_i_2 
       (.I0(\readdata_s_reg[12]_2 [0]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(addr_s[2]),
        .I4(sign_s),
        .O(\readdata_s[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFAC0F000)) 
    \readdata_s[0]_i_3 
       (.I0(\readdata_s_reg[0] ),
        .I1(\readdata_s_reg[12]_1 [0]),
        .I2(addr_s[0]),
        .I3(addr_s[2]),
        .I4(addr_s[1]),
        .O(\readdata_s[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \readdata_s[10]_i_1 
       (.I0(\readdata_s[10]_i_2_n_0 ),
        .I1(\addr_reg_reg[0]_1 ),
        .I2(\readdata_s_reg[12]_0 [5]),
        .I3(\readdata_s[12]_i_3_n_0 ),
        .I4(\readdata_s_reg[12] [10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hF0C0F00A)) 
    \readdata_s[10]_i_2 
       (.I0(\readdata_s_reg[12]_2 [5]),
        .I1(\readdata_s_reg[12]_1 [10]),
        .I2(addr_s[0]),
        .I3(addr_s[2]),
        .I4(addr_s[1]),
        .O(\readdata_s[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \readdata_s[11]_i_1 
       (.I0(\readdata_s[11]_i_2_n_0 ),
        .I1(\addr_reg_reg[0]_1 ),
        .I2(\readdata_s_reg[12]_0 [6]),
        .I3(\readdata_s[12]_i_3_n_0 ),
        .I4(\readdata_s_reg[12] [11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hF0C0F00A)) 
    \readdata_s[11]_i_2 
       (.I0(\readdata_s_reg[12]_2 [6]),
        .I1(\readdata_s_reg[12]_1 [11]),
        .I2(addr_s[0]),
        .I3(addr_s[2]),
        .I4(addr_s[1]),
        .O(\readdata_s[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \readdata_s[12]_i_1 
       (.I0(\readdata_s[12]_i_2_n_0 ),
        .I1(\addr_reg_reg[0]_1 ),
        .I2(\readdata_s_reg[12]_0 [7]),
        .I3(\readdata_s[12]_i_3_n_0 ),
        .I4(\readdata_s_reg[12] [12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hF0C0F00A)) 
    \readdata_s[12]_i_2 
       (.I0(\readdata_s_reg[12]_2 [7]),
        .I1(\readdata_s_reg[12]_1 [12]),
        .I2(addr_s[0]),
        .I3(addr_s[2]),
        .I4(addr_s[1]),
        .O(\readdata_s[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \readdata_s[12]_i_3 
       (.I0(addr_s[0]),
        .I1(addr_s[2]),
        .I2(addr_s[1]),
        .O(\readdata_s[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \readdata_s[1]_i_1 
       (.I0(addr_s[0]),
        .I1(addr_s[1]),
        .I2(\readdata_s_reg[1] ),
        .I3(\readdata_s[12]_i_3_n_0 ),
        .I4(\readdata_s_reg[12] [1]),
        .I5(\readdata_s_reg[12]_1 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \readdata_s[2]_i_1 
       (.I0(addr_s[0]),
        .I1(addr_s[1]),
        .I2(\readdata_s_reg[2] ),
        .I3(\readdata_s[12]_i_3_n_0 ),
        .I4(\readdata_s_reg[12] [2]),
        .I5(\readdata_s_reg[12]_1 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \readdata_s[31]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(read_en_s));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readdata_s[31]_i_3 
       (.I0(addr_s[0]),
        .I1(addr_s[1]),
        .O(\addr_reg_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \readdata_s[3]_i_1 
       (.I0(addr_s[0]),
        .I1(addr_s[1]),
        .I2(\readdata_s_reg[3] ),
        .I3(\readdata_s[12]_i_3_n_0 ),
        .I4(\readdata_s_reg[12] [3]),
        .I5(\readdata_s_reg[12]_1 [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \readdata_s[4]_i_1 
       (.I0(addr_s[0]),
        .I1(addr_s[1]),
        .I2(\readdata_s_reg[4] ),
        .I3(\readdata_s[12]_i_3_n_0 ),
        .I4(\readdata_s_reg[12] [4]),
        .I5(\readdata_s_reg[12]_1 [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0F0F0)) 
    \readdata_s[5]_i_1 
       (.I0(addr_s[0]),
        .I1(addr_s[1]),
        .I2(\readdata_s_reg[5] ),
        .I3(\readdata_s[12]_i_3_n_0 ),
        .I4(\readdata_s_reg[12] [5]),
        .I5(\readdata_s_reg[12]_1 [5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \readdata_s[6]_i_1 
       (.I0(\readdata_s[6]_i_2_n_0 ),
        .I1(\addr_reg_reg[0]_1 ),
        .I2(\readdata_s_reg[12]_0 [1]),
        .I3(\readdata_s[12]_i_3_n_0 ),
        .I4(\readdata_s_reg[12] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF0C0F00A)) 
    \readdata_s[6]_i_2 
       (.I0(\readdata_s_reg[12]_2 [1]),
        .I1(\readdata_s_reg[12]_1 [6]),
        .I2(addr_s[0]),
        .I3(addr_s[2]),
        .I4(addr_s[1]),
        .O(\readdata_s[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \readdata_s[7]_i_1 
       (.I0(\readdata_s[7]_i_2_n_0 ),
        .I1(\addr_reg_reg[0]_1 ),
        .I2(\readdata_s_reg[12]_0 [2]),
        .I3(\readdata_s[12]_i_3_n_0 ),
        .I4(\readdata_s_reg[12] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0C0F00A)) 
    \readdata_s[7]_i_2 
       (.I0(\readdata_s_reg[12]_2 [2]),
        .I1(\readdata_s_reg[12]_1 [7]),
        .I2(addr_s[0]),
        .I3(addr_s[2]),
        .I4(addr_s[1]),
        .O(\readdata_s[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \readdata_s[8]_i_1 
       (.I0(\readdata_s[8]_i_2_n_0 ),
        .I1(\addr_reg_reg[0]_1 ),
        .I2(\readdata_s_reg[12]_0 [3]),
        .I3(\readdata_s[12]_i_3_n_0 ),
        .I4(\readdata_s_reg[12] [8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hF0C0F00A)) 
    \readdata_s[8]_i_2 
       (.I0(\readdata_s_reg[12]_2 [3]),
        .I1(\readdata_s_reg[12]_1 [8]),
        .I2(addr_s[0]),
        .I3(addr_s[2]),
        .I4(addr_s[1]),
        .O(\readdata_s[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \readdata_s[9]_i_1 
       (.I0(\readdata_s[9]_i_2_n_0 ),
        .I1(\addr_reg_reg[0]_1 ),
        .I2(\readdata_s_reg[12]_0 [4]),
        .I3(\readdata_s[12]_i_3_n_0 ),
        .I4(\readdata_s_reg[12] [9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hF0C0F00A)) 
    \readdata_s[9]_i_2 
       (.I0(\readdata_s_reg[12]_2 [4]),
        .I1(\readdata_s_reg[12]_1 [9]),
        .I2(addr_s[0]),
        .I3(addr_s[2]),
        .I4(addr_s[1]),
        .O(\readdata_s[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \setpoint_s[13]_i_1 
       (.I0(addr_s[2]),
        .I1(addr_s[1]),
        .I2(write_en_s),
        .I3(addr_s[0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \setpoint_s[13]_i_2 
       (.I0(axi_awready_reg_0),
        .I1(axi_wready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(write_en_s));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    sign_s_i_1
       (.I0(s00_axi_wdata),
        .I1(addr_s[1]),
        .I2(write_en_s),
        .I3(\is_input_s[5]_i_2_n_0 ),
        .I4(sign_s),
        .O(s00_axi_wdata_0_sn_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_logic
   (data_en_o,
    data_o,
    S,
    \data_i[7] ,
    \data_i[11] ,
    \data_i[13] ,
    data_en_i,
    data_clk_i,
    data_rst_i,
    B,
    A,
    P_temp_s_0,
    out,
    \I_temp_s_reg[19]_0 ,
    int_rst_i,
    \I_s_reg[13]_0 ,
    data_i,
    setpoint_i,
    I_sum_s_0);
  output data_en_o;
  output [13:0]data_o;
  output [3:0]S;
  output [3:0]\data_i[7] ;
  output [3:0]\data_i[11] ;
  output [2:0]\data_i[13] ;
  input data_en_i;
  input data_clk_i;
  input data_rst_i;
  input [17:0]B;
  input [14:0]A;
  input [13:0]P_temp_s_0;
  input [0:0]out;
  input [1:0]\I_temp_s_reg[19]_0 ;
  input int_rst_i;
  input \I_s_reg[13]_0 ;
  input [13:0]data_i;
  input [13:0]setpoint_i;
  input [13:0]I_sum_s_0;

  wire [14:0]A;
  wire [17:0]B;
  wire [32:0]C;
  wire CEC;
  wire [13:0]I_s;
  wire \I_s_reg[13]_0 ;
  wire [13:0]I_sum_s_0;
  wire I_sum_s_n_100;
  wire I_sum_s_n_101;
  wire I_sum_s_n_102;
  wire I_sum_s_n_103;
  wire I_sum_s_n_104;
  wire I_sum_s_n_105;
  wire I_sum_s_n_74;
  wire I_sum_s_n_75;
  wire I_sum_s_n_76;
  wire I_sum_s_n_77;
  wire I_sum_s_n_78;
  wire I_sum_s_n_79;
  wire I_sum_s_n_80;
  wire I_sum_s_n_81;
  wire I_sum_s_n_82;
  wire I_sum_s_n_83;
  wire I_sum_s_n_84;
  wire I_sum_s_n_85;
  wire I_sum_s_n_86;
  wire I_sum_s_n_87;
  wire I_sum_s_n_88;
  wire I_sum_s_n_89;
  wire I_sum_s_n_90;
  wire I_sum_s_n_91;
  wire I_sum_s_n_92;
  wire I_sum_s_n_93;
  wire I_sum_s_n_94;
  wire I_sum_s_n_95;
  wire I_sum_s_n_96;
  wire I_sum_s_n_97;
  wire I_sum_s_n_98;
  wire I_sum_s_n_99;
  wire I_temp_s1;
  wire I_temp_s11_in;
  wire \I_temp_s[19]_i_1_n_0 ;
  wire \I_temp_s[20]_i_1_n_0 ;
  wire \I_temp_s[21]_i_1_n_0 ;
  wire \I_temp_s[22]_i_1_n_0 ;
  wire \I_temp_s[23]_i_1_n_0 ;
  wire \I_temp_s[24]_i_1_n_0 ;
  wire \I_temp_s[25]_i_1_n_0 ;
  wire \I_temp_s[26]_i_1_n_0 ;
  wire \I_temp_s[27]_i_1_n_0 ;
  wire \I_temp_s[28]_i_1_n_0 ;
  wire \I_temp_s[29]_i_1_n_0 ;
  wire \I_temp_s[30]_i_1_n_0 ;
  wire \I_temp_s[31]_i_1_n_0 ;
  wire \I_temp_s[32]_i_1_n_0 ;
  wire \I_temp_s[32]_i_2_n_0 ;
  wire [1:0]\I_temp_s_reg[19]_0 ;
  wire [15:0]P_s;
  wire [13:0]P_temp_s_0;
  wire P_temp_s_n_100;
  wire P_temp_s_n_101;
  wire P_temp_s_n_102;
  wire P_temp_s_n_103;
  wire P_temp_s_n_104;
  wire P_temp_s_n_105;
  wire P_temp_s_n_93;
  wire P_temp_s_n_94;
  wire P_temp_s_n_95;
  wire P_temp_s_n_96;
  wire P_temp_s_n_97;
  wire P_temp_s_n_98;
  wire P_temp_s_n_99;
  wire [3:0]S;
  wire data2_en_s;
  wire data2_en_s_i_1_n_0;
  wire data_clk_i;
  wire data_en_i;
  wire data_en_o;
  wire data_en_o_i_1_n_0;
  wire data_en_s;
  wire data_en_s_i_1_n_0;
  wire [13:0]data_i;
  wire [3:0]\data_i[11] ;
  wire [2:0]\data_i[13] ;
  wire [3:0]\data_i[7] ;
  wire [13:0]data_o;
  wire data_rst_i;
  wire int_rst_i;
  wire [0:0]out;
  wire [1:0]p_0_in;
  wire [13:0]p_1_in;
  wire \pid_out_s[0]_i_1_n_0 ;
  wire \pid_out_s[10]_i_1_n_0 ;
  wire \pid_out_s[11]_i_1_n_0 ;
  wire \pid_out_s[12]_i_1_n_0 ;
  wire \pid_out_s[13]_i_1_n_0 ;
  wire \pid_out_s[1]_i_1_n_0 ;
  wire \pid_out_s[2]_i_1_n_0 ;
  wire \pid_out_s[3]_i_1_n_0 ;
  wire \pid_out_s[4]_i_1_n_0 ;
  wire \pid_out_s[5]_i_1_n_0 ;
  wire \pid_out_s[6]_i_1_n_0 ;
  wire \pid_out_s[7]_i_1_n_0 ;
  wire \pid_out_s[8]_i_1_n_0 ;
  wire \pid_out_s[9]_i_1_n_0 ;
  wire \pid_out_s_reg[13]_i_2_n_3 ;
  wire pid_sum_s_carry__0_i_1_n_0;
  wire pid_sum_s_carry__0_i_2_n_0;
  wire pid_sum_s_carry__0_i_3_n_0;
  wire pid_sum_s_carry__0_i_4_n_0;
  wire pid_sum_s_carry__0_n_0;
  wire pid_sum_s_carry__0_n_1;
  wire pid_sum_s_carry__0_n_2;
  wire pid_sum_s_carry__0_n_3;
  wire pid_sum_s_carry__0_n_4;
  wire pid_sum_s_carry__0_n_5;
  wire pid_sum_s_carry__0_n_6;
  wire pid_sum_s_carry__0_n_7;
  wire pid_sum_s_carry__1_i_1_n_0;
  wire pid_sum_s_carry__1_i_2_n_0;
  wire pid_sum_s_carry__1_i_3_n_0;
  wire pid_sum_s_carry__1_i_4_n_0;
  wire pid_sum_s_carry__1_n_0;
  wire pid_sum_s_carry__1_n_1;
  wire pid_sum_s_carry__1_n_2;
  wire pid_sum_s_carry__1_n_3;
  wire pid_sum_s_carry__1_n_4;
  wire pid_sum_s_carry__1_n_5;
  wire pid_sum_s_carry__1_n_6;
  wire pid_sum_s_carry__1_n_7;
  wire pid_sum_s_carry__2_i_1_n_0;
  wire pid_sum_s_carry__2_i_2_n_0;
  wire pid_sum_s_carry__2_i_3_n_0;
  wire pid_sum_s_carry__2_i_4_n_0;
  wire pid_sum_s_carry__2_i_5_n_0;
  wire pid_sum_s_carry__2_n_0;
  wire pid_sum_s_carry__2_n_1;
  wire pid_sum_s_carry__2_n_2;
  wire pid_sum_s_carry__2_n_3;
  wire pid_sum_s_carry__2_n_4;
  wire pid_sum_s_carry__2_n_6;
  wire pid_sum_s_carry__2_n_7;
  wire pid_sum_s_carry_i_1_n_0;
  wire pid_sum_s_carry_i_2_n_0;
  wire pid_sum_s_carry_i_3_n_0;
  wire pid_sum_s_carry_i_4_n_0;
  wire pid_sum_s_carry_n_0;
  wire pid_sum_s_carry_n_1;
  wire pid_sum_s_carry_n_2;
  wire pid_sum_s_carry_n_3;
  wire pid_sum_s_carry_n_4;
  wire pid_sum_s_carry_n_5;
  wire pid_sum_s_carry_n_6;
  wire pid_sum_s_carry_n_7;
  wire [13:0]setpoint_i;
  wire NLW_I_sum_s_CARRYCASCOUT_UNCONNECTED;
  wire NLW_I_sum_s_MULTSIGNOUT_UNCONNECTED;
  wire NLW_I_sum_s_OVERFLOW_UNCONNECTED;
  wire NLW_I_sum_s_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_I_sum_s_ACOUT_UNCONNECTED;
  wire [17:0]NLW_I_sum_s_BCOUT_UNCONNECTED;
  wire [3:0]NLW_I_sum_s_CARRYOUT_UNCONNECTED;
  wire [47:34]NLW_I_sum_s_P_UNCONNECTED;
  wire [47:0]NLW_I_sum_s_PCOUT_UNCONNECTED;
  wire NLW_P_temp_s_CARRYCASCOUT_UNCONNECTED;
  wire NLW_P_temp_s_MULTSIGNOUT_UNCONNECTED;
  wire NLW_P_temp_s_OVERFLOW_UNCONNECTED;
  wire NLW_P_temp_s_PATTERNBDETECT_UNCONNECTED;
  wire NLW_P_temp_s_PATTERNDETECT_UNCONNECTED;
  wire NLW_P_temp_s_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_P_temp_s_ACOUT_UNCONNECTED;
  wire [17:0]NLW_P_temp_s_BCOUT_UNCONNECTED;
  wire [3:0]NLW_P_temp_s_CARRYOUT_UNCONNECTED;
  wire [47:29]NLW_P_temp_s_P_UNCONNECTED;
  wire [47:0]NLW_P_temp_s_PCOUT_UNCONNECTED;
  wire [3:1]\NLW_pid_out_s_reg[13]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_pid_out_s_reg[13]_i_2_O_UNCONNECTED ;
  wire [2:2]NLW_pid_sum_s_carry__2_O_UNCONNECTED;

  FDRE \I_s_reg[0] 
       (.C(data_clk_i),
        .CE(data_en_s),
        .D(p_1_in[0]),
        .Q(I_s[0]),
        .R(\I_s_reg[13]_0 ));
  FDRE \I_s_reg[10] 
       (.C(data_clk_i),
        .CE(data_en_s),
        .D(p_1_in[10]),
        .Q(I_s[10]),
        .R(\I_s_reg[13]_0 ));
  FDRE \I_s_reg[11] 
       (.C(data_clk_i),
        .CE(data_en_s),
        .D(p_1_in[11]),
        .Q(I_s[11]),
        .R(\I_s_reg[13]_0 ));
  FDRE \I_s_reg[12] 
       (.C(data_clk_i),
        .CE(data_en_s),
        .D(p_1_in[12]),
        .Q(I_s[12]),
        .R(\I_s_reg[13]_0 ));
  FDRE \I_s_reg[13] 
       (.C(data_clk_i),
        .CE(data_en_s),
        .D(p_1_in[13]),
        .Q(I_s[13]),
        .R(\I_s_reg[13]_0 ));
  FDRE \I_s_reg[1] 
       (.C(data_clk_i),
        .CE(data_en_s),
        .D(p_1_in[1]),
        .Q(I_s[1]),
        .R(\I_s_reg[13]_0 ));
  FDRE \I_s_reg[2] 
       (.C(data_clk_i),
        .CE(data_en_s),
        .D(p_1_in[2]),
        .Q(I_s[2]),
        .R(\I_s_reg[13]_0 ));
  FDRE \I_s_reg[3] 
       (.C(data_clk_i),
        .CE(data_en_s),
        .D(p_1_in[3]),
        .Q(I_s[3]),
        .R(\I_s_reg[13]_0 ));
  FDRE \I_s_reg[4] 
       (.C(data_clk_i),
        .CE(data_en_s),
        .D(p_1_in[4]),
        .Q(I_s[4]),
        .R(\I_s_reg[13]_0 ));
  FDRE \I_s_reg[5] 
       (.C(data_clk_i),
        .CE(data_en_s),
        .D(p_1_in[5]),
        .Q(I_s[5]),
        .R(\I_s_reg[13]_0 ));
  FDRE \I_s_reg[6] 
       (.C(data_clk_i),
        .CE(data_en_s),
        .D(p_1_in[6]),
        .Q(I_s[6]),
        .R(\I_s_reg[13]_0 ));
  FDRE \I_s_reg[7] 
       (.C(data_clk_i),
        .CE(data_en_s),
        .D(p_1_in[7]),
        .Q(I_s[7]),
        .R(\I_s_reg[13]_0 ));
  FDRE \I_s_reg[8] 
       (.C(data_clk_i),
        .CE(data_en_s),
        .D(p_1_in[8]),
        .Q(I_s[8]),
        .R(\I_s_reg[13]_0 ));
  FDRE \I_s_reg[9] 
       (.C(data_clk_i),
        .CE(data_en_s),
        .D(p_1_in[9]),
        .Q(I_s[9]),
        .R(\I_s_reg[13]_0 ));
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
    .MASK(48'hFFFCFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'hFFFDFFFFFFFF),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("PATDET"),
    .USE_SIMD("ONE48")) 
    I_sum_s
       (.A({A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_I_sum_s_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_I_sum_s_BCOUT_UNCONNECTED[17:0]),
        .C({C[32],C[32],C[32],C[32],C[32],C[32],C[32],C[32],C[32],C[32],C[32],C[32],C[32],C[32],C[32],C}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_I_sum_s_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_I_sum_s_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_en_i),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(CEC),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_I_sum_s_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_I_sum_s_OVERFLOW_UNCONNECTED),
        .P({NLW_I_sum_s_P_UNCONNECTED[47:34],p_0_in,I_sum_s_n_74,I_sum_s_n_75,I_sum_s_n_76,I_sum_s_n_77,I_sum_s_n_78,I_sum_s_n_79,I_sum_s_n_80,I_sum_s_n_81,I_sum_s_n_82,I_sum_s_n_83,I_sum_s_n_84,I_sum_s_n_85,I_sum_s_n_86,I_sum_s_n_87,I_sum_s_n_88,I_sum_s_n_89,I_sum_s_n_90,I_sum_s_n_91,I_sum_s_n_92,I_sum_s_n_93,I_sum_s_n_94,I_sum_s_n_95,I_sum_s_n_96,I_sum_s_n_97,I_sum_s_n_98,I_sum_s_n_99,I_sum_s_n_100,I_sum_s_n_101,I_sum_s_n_102,I_sum_s_n_103,I_sum_s_n_104,I_sum_s_n_105}),
        .PATTERNBDETECT(I_temp_s1),
        .PATTERNDETECT(I_temp_s11_in),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_I_sum_s_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_I_sum_s_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'hFFFFEFEA)) 
    I_sum_s_i_1
       (.I0(data_en_s),
        .I1(out),
        .I2(\I_temp_s_reg[19]_0 [1]),
        .I3(int_rst_i),
        .I4(data_rst_i),
        .O(CEC));
  LUT4 #(
    .INIT(16'h0054)) 
    I_sum_s_i_24
       (.I0(I_temp_s11_in),
        .I1(I_temp_s1),
        .I2(p_0_in[0]),
        .I3(\I_s_reg[13]_0 ),
        .O(C[32]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_25
       (.I0(I_sum_s_n_74),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[31]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_26
       (.I0(I_sum_s_n_75),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[30]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_27
       (.I0(I_sum_s_n_76),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[29]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_28
       (.I0(I_sum_s_n_77),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[28]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_29
       (.I0(I_sum_s_n_78),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[27]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_30
       (.I0(I_sum_s_n_79),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[26]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_31
       (.I0(I_sum_s_n_80),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[25]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_32
       (.I0(I_sum_s_n_81),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[24]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_33
       (.I0(I_sum_s_n_82),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[23]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_34
       (.I0(I_sum_s_n_83),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[22]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_35
       (.I0(I_sum_s_n_84),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[21]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_36
       (.I0(I_sum_s_n_85),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[20]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_37
       (.I0(I_sum_s_n_86),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[19]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_38
       (.I0(I_sum_s_n_87),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[18]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_39
       (.I0(I_sum_s_n_88),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[17]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_40
       (.I0(I_sum_s_n_89),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[16]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_41
       (.I0(I_sum_s_n_90),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[15]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_42
       (.I0(I_sum_s_n_91),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[14]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_43
       (.I0(I_sum_s_n_92),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[13]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_44
       (.I0(I_sum_s_n_93),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[12]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_45
       (.I0(I_sum_s_n_94),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[11]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_46
       (.I0(I_sum_s_n_95),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[10]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_47
       (.I0(I_sum_s_n_96),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[9]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_48
       (.I0(I_sum_s_n_97),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[8]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_49
       (.I0(I_sum_s_n_98),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[7]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_50
       (.I0(I_sum_s_n_99),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[6]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_51
       (.I0(I_sum_s_n_100),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[5]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_52
       (.I0(I_sum_s_n_101),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[4]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_53
       (.I0(I_sum_s_n_102),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[3]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_54
       (.I0(I_sum_s_n_103),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[2]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_55
       (.I0(I_sum_s_n_104),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[1]));
  LUT4 #(
    .INIT(16'h00F2)) 
    I_sum_s_i_56
       (.I0(I_sum_s_n_105),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .I3(\I_s_reg[13]_0 ),
        .O(C[0]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_59
       (.I0(data_i[13]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[13]),
        .I3(I_sum_s_0[13]),
        .O(\data_i[13] [2]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_60
       (.I0(data_i[13]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[13]),
        .I3(I_sum_s_0[13]),
        .O(\data_i[13] [1]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_61
       (.I0(data_i[12]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[12]),
        .I3(I_sum_s_0[12]),
        .O(\data_i[13] [0]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_66
       (.I0(data_i[11]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[11]),
        .I3(I_sum_s_0[11]),
        .O(\data_i[11] [3]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_67
       (.I0(data_i[10]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[10]),
        .I3(I_sum_s_0[10]),
        .O(\data_i[11] [2]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_68
       (.I0(data_i[9]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[9]),
        .I3(I_sum_s_0[9]),
        .O(\data_i[11] [1]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_69
       (.I0(data_i[8]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[8]),
        .I3(I_sum_s_0[8]),
        .O(\data_i[11] [0]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_74
       (.I0(data_i[7]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[7]),
        .I3(I_sum_s_0[7]),
        .O(\data_i[7] [3]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_75
       (.I0(data_i[6]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[6]),
        .I3(I_sum_s_0[6]),
        .O(\data_i[7] [2]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_76
       (.I0(data_i[5]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[5]),
        .I3(I_sum_s_0[5]),
        .O(\data_i[7] [1]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_77
       (.I0(data_i[4]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[4]),
        .I3(I_sum_s_0[4]),
        .O(\data_i[7] [0]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_82
       (.I0(data_i[3]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[3]),
        .I3(I_sum_s_0[3]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_83
       (.I0(data_i[2]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[2]),
        .I3(I_sum_s_0[2]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_84
       (.I0(data_i[1]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[1]),
        .I3(I_sum_s_0[1]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hA965)) 
    I_sum_s_i_85
       (.I0(data_i[0]),
        .I1(\I_temp_s_reg[19]_0 [0]),
        .I2(setpoint_i[0]),
        .I3(I_sum_s_0[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I_temp_s[19]_i_1 
       (.I0(I_temp_s11_in),
        .I1(I_temp_s1),
        .I2(I_sum_s_n_86),
        .O(\I_temp_s[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I_temp_s[20]_i_1 
       (.I0(I_temp_s11_in),
        .I1(I_temp_s1),
        .I2(I_sum_s_n_85),
        .O(\I_temp_s[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I_temp_s[21]_i_1 
       (.I0(I_temp_s11_in),
        .I1(I_temp_s1),
        .I2(I_sum_s_n_84),
        .O(\I_temp_s[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I_temp_s[22]_i_1 
       (.I0(I_temp_s11_in),
        .I1(I_temp_s1),
        .I2(I_sum_s_n_83),
        .O(\I_temp_s[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I_temp_s[23]_i_1 
       (.I0(I_temp_s11_in),
        .I1(I_temp_s1),
        .I2(I_sum_s_n_82),
        .O(\I_temp_s[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I_temp_s[24]_i_1 
       (.I0(I_temp_s11_in),
        .I1(I_temp_s1),
        .I2(I_sum_s_n_81),
        .O(\I_temp_s[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I_temp_s[25]_i_1 
       (.I0(I_temp_s11_in),
        .I1(I_temp_s1),
        .I2(I_sum_s_n_80),
        .O(\I_temp_s[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I_temp_s[26]_i_1 
       (.I0(I_temp_s11_in),
        .I1(I_temp_s1),
        .I2(I_sum_s_n_79),
        .O(\I_temp_s[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I_temp_s[27]_i_1 
       (.I0(I_temp_s11_in),
        .I1(I_temp_s1),
        .I2(I_sum_s_n_78),
        .O(\I_temp_s[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I_temp_s[28]_i_1 
       (.I0(I_temp_s11_in),
        .I1(I_temp_s1),
        .I2(I_sum_s_n_77),
        .O(\I_temp_s[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I_temp_s[29]_i_1 
       (.I0(I_temp_s11_in),
        .I1(I_temp_s1),
        .I2(I_sum_s_n_76),
        .O(\I_temp_s[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I_temp_s[30]_i_1 
       (.I0(I_temp_s11_in),
        .I1(I_temp_s1),
        .I2(I_sum_s_n_75),
        .O(\I_temp_s[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \I_temp_s[31]_i_1 
       (.I0(I_temp_s11_in),
        .I1(I_temp_s1),
        .I2(I_sum_s_n_74),
        .O(\I_temp_s[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \I_temp_s[32]_i_1 
       (.I0(data_rst_i),
        .I1(int_rst_i),
        .I2(\I_temp_s_reg[19]_0 [1]),
        .I3(out),
        .O(\I_temp_s[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \I_temp_s[32]_i_2 
       (.I0(p_0_in[0]),
        .I1(I_temp_s1),
        .I2(I_temp_s11_in),
        .O(\I_temp_s[32]_i_2_n_0 ));
  FDRE \I_temp_s_reg[19] 
       (.C(data_clk_i),
        .CE(CEC),
        .D(\I_temp_s[19]_i_1_n_0 ),
        .Q(p_1_in[0]),
        .R(\I_temp_s[32]_i_1_n_0 ));
  FDRE \I_temp_s_reg[20] 
       (.C(data_clk_i),
        .CE(CEC),
        .D(\I_temp_s[20]_i_1_n_0 ),
        .Q(p_1_in[1]),
        .R(\I_temp_s[32]_i_1_n_0 ));
  FDRE \I_temp_s_reg[21] 
       (.C(data_clk_i),
        .CE(CEC),
        .D(\I_temp_s[21]_i_1_n_0 ),
        .Q(p_1_in[2]),
        .R(\I_temp_s[32]_i_1_n_0 ));
  FDRE \I_temp_s_reg[22] 
       (.C(data_clk_i),
        .CE(CEC),
        .D(\I_temp_s[22]_i_1_n_0 ),
        .Q(p_1_in[3]),
        .R(\I_temp_s[32]_i_1_n_0 ));
  FDRE \I_temp_s_reg[23] 
       (.C(data_clk_i),
        .CE(CEC),
        .D(\I_temp_s[23]_i_1_n_0 ),
        .Q(p_1_in[4]),
        .R(\I_temp_s[32]_i_1_n_0 ));
  FDRE \I_temp_s_reg[24] 
       (.C(data_clk_i),
        .CE(CEC),
        .D(\I_temp_s[24]_i_1_n_0 ),
        .Q(p_1_in[5]),
        .R(\I_temp_s[32]_i_1_n_0 ));
  FDRE \I_temp_s_reg[25] 
       (.C(data_clk_i),
        .CE(CEC),
        .D(\I_temp_s[25]_i_1_n_0 ),
        .Q(p_1_in[6]),
        .R(\I_temp_s[32]_i_1_n_0 ));
  FDRE \I_temp_s_reg[26] 
       (.C(data_clk_i),
        .CE(CEC),
        .D(\I_temp_s[26]_i_1_n_0 ),
        .Q(p_1_in[7]),
        .R(\I_temp_s[32]_i_1_n_0 ));
  FDRE \I_temp_s_reg[27] 
       (.C(data_clk_i),
        .CE(CEC),
        .D(\I_temp_s[27]_i_1_n_0 ),
        .Q(p_1_in[8]),
        .R(\I_temp_s[32]_i_1_n_0 ));
  FDRE \I_temp_s_reg[28] 
       (.C(data_clk_i),
        .CE(CEC),
        .D(\I_temp_s[28]_i_1_n_0 ),
        .Q(p_1_in[9]),
        .R(\I_temp_s[32]_i_1_n_0 ));
  FDRE \I_temp_s_reg[29] 
       (.C(data_clk_i),
        .CE(CEC),
        .D(\I_temp_s[29]_i_1_n_0 ),
        .Q(p_1_in[10]),
        .R(\I_temp_s[32]_i_1_n_0 ));
  FDRE \I_temp_s_reg[30] 
       (.C(data_clk_i),
        .CE(CEC),
        .D(\I_temp_s[30]_i_1_n_0 ),
        .Q(p_1_in[11]),
        .R(\I_temp_s[32]_i_1_n_0 ));
  FDRE \I_temp_s_reg[31] 
       (.C(data_clk_i),
        .CE(CEC),
        .D(\I_temp_s[31]_i_1_n_0 ),
        .Q(p_1_in[12]),
        .R(\I_temp_s[32]_i_1_n_0 ));
  FDRE \I_temp_s_reg[32] 
       (.C(data_clk_i),
        .CE(CEC),
        .D(\I_temp_s[32]_i_2_n_0 ),
        .Q(p_1_in[13]),
        .R(\I_temp_s[32]_i_1_n_0 ));
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
    P_temp_s
       (.A({A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A[14],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_P_temp_s_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({P_temp_s_0[13],P_temp_s_0[13],P_temp_s_0[13],P_temp_s_0[13],P_temp_s_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_P_temp_s_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_P_temp_s_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_P_temp_s_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(data_en_i),
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
        .CEP(data_en_s),
        .CLK(data_clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_P_temp_s_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_P_temp_s_OVERFLOW_UNCONNECTED),
        .P({NLW_P_temp_s_P_UNCONNECTED[47:29],P_s,P_temp_s_n_93,P_temp_s_n_94,P_temp_s_n_95,P_temp_s_n_96,P_temp_s_n_97,P_temp_s_n_98,P_temp_s_n_99,P_temp_s_n_100,P_temp_s_n_101,P_temp_s_n_102,P_temp_s_n_103,P_temp_s_n_104,P_temp_s_n_105}),
        .PATTERNBDETECT(NLW_P_temp_s_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_P_temp_s_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_P_temp_s_PCOUT_UNCONNECTED[47:0]),
        .RSTA(data_rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_rst_i),
        .UNDERFLOW(NLW_P_temp_s_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    data2_en_s_i_1
       (.I0(data_en_s),
        .I1(data_rst_i),
        .O(data2_en_s_i_1_n_0));
  FDRE data2_en_s_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data2_en_s_i_1_n_0),
        .Q(data2_en_s),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    data_en_o_i_1
       (.I0(data2_en_s),
        .I1(data_rst_i),
        .O(data_en_o_i_1_n_0));
  FDRE data_en_o_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_en_o_i_1_n_0),
        .Q(data_en_o),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
        .Q(data_en_s),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pid_out_s[0]_i_1 
       (.I0(\pid_out_s_reg[13]_i_2_n_3 ),
        .I1(pid_sum_s_carry__2_n_4),
        .I2(pid_sum_s_carry_n_7),
        .O(\pid_out_s[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pid_out_s[10]_i_1 
       (.I0(\pid_out_s_reg[13]_i_2_n_3 ),
        .I1(pid_sum_s_carry__2_n_4),
        .I2(pid_sum_s_carry__1_n_5),
        .O(\pid_out_s[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pid_out_s[11]_i_1 
       (.I0(\pid_out_s_reg[13]_i_2_n_3 ),
        .I1(pid_sum_s_carry__2_n_4),
        .I2(pid_sum_s_carry__1_n_4),
        .O(\pid_out_s[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pid_out_s[12]_i_1 
       (.I0(\pid_out_s_reg[13]_i_2_n_3 ),
        .I1(pid_sum_s_carry__2_n_4),
        .I2(pid_sum_s_carry__2_n_7),
        .O(\pid_out_s[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pid_out_s[13]_i_1 
       (.I0(\pid_out_s_reg[13]_i_2_n_3 ),
        .I1(pid_sum_s_carry__2_n_4),
        .I2(pid_sum_s_carry__2_n_6),
        .O(\pid_out_s[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pid_out_s[1]_i_1 
       (.I0(\pid_out_s_reg[13]_i_2_n_3 ),
        .I1(pid_sum_s_carry__2_n_4),
        .I2(pid_sum_s_carry_n_6),
        .O(\pid_out_s[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pid_out_s[2]_i_1 
       (.I0(\pid_out_s_reg[13]_i_2_n_3 ),
        .I1(pid_sum_s_carry__2_n_4),
        .I2(pid_sum_s_carry_n_5),
        .O(\pid_out_s[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pid_out_s[3]_i_1 
       (.I0(\pid_out_s_reg[13]_i_2_n_3 ),
        .I1(pid_sum_s_carry__2_n_4),
        .I2(pid_sum_s_carry_n_4),
        .O(\pid_out_s[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pid_out_s[4]_i_1 
       (.I0(\pid_out_s_reg[13]_i_2_n_3 ),
        .I1(pid_sum_s_carry__2_n_4),
        .I2(pid_sum_s_carry__0_n_7),
        .O(\pid_out_s[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pid_out_s[5]_i_1 
       (.I0(\pid_out_s_reg[13]_i_2_n_3 ),
        .I1(pid_sum_s_carry__2_n_4),
        .I2(pid_sum_s_carry__0_n_6),
        .O(\pid_out_s[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pid_out_s[6]_i_1 
       (.I0(\pid_out_s_reg[13]_i_2_n_3 ),
        .I1(pid_sum_s_carry__2_n_4),
        .I2(pid_sum_s_carry__0_n_5),
        .O(\pid_out_s[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pid_out_s[7]_i_1 
       (.I0(\pid_out_s_reg[13]_i_2_n_3 ),
        .I1(pid_sum_s_carry__2_n_4),
        .I2(pid_sum_s_carry__0_n_4),
        .O(\pid_out_s[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pid_out_s[8]_i_1 
       (.I0(\pid_out_s_reg[13]_i_2_n_3 ),
        .I1(pid_sum_s_carry__2_n_4),
        .I2(pid_sum_s_carry__1_n_7),
        .O(\pid_out_s[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pid_out_s[9]_i_1 
       (.I0(\pid_out_s_reg[13]_i_2_n_3 ),
        .I1(pid_sum_s_carry__2_n_4),
        .I2(pid_sum_s_carry__1_n_6),
        .O(\pid_out_s[9]_i_1_n_0 ));
  FDRE \pid_out_s_reg[0] 
       (.C(data_clk_i),
        .CE(data2_en_s),
        .D(\pid_out_s[0]_i_1_n_0 ),
        .Q(data_o[0]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[10] 
       (.C(data_clk_i),
        .CE(data2_en_s),
        .D(\pid_out_s[10]_i_1_n_0 ),
        .Q(data_o[10]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[11] 
       (.C(data_clk_i),
        .CE(data2_en_s),
        .D(\pid_out_s[11]_i_1_n_0 ),
        .Q(data_o[11]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[12] 
       (.C(data_clk_i),
        .CE(data2_en_s),
        .D(\pid_out_s[12]_i_1_n_0 ),
        .Q(data_o[12]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[13] 
       (.C(data_clk_i),
        .CE(data2_en_s),
        .D(\pid_out_s[13]_i_1_n_0 ),
        .Q(data_o[13]),
        .R(data_rst_i));
  CARRY4 \pid_out_s_reg[13]_i_2 
       (.CI(pid_sum_s_carry__2_n_0),
        .CO({\NLW_pid_out_s_reg[13]_i_2_CO_UNCONNECTED [3:1],\pid_out_s_reg[13]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_pid_out_s_reg[13]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \pid_out_s_reg[1] 
       (.C(data_clk_i),
        .CE(data2_en_s),
        .D(\pid_out_s[1]_i_1_n_0 ),
        .Q(data_o[1]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[2] 
       (.C(data_clk_i),
        .CE(data2_en_s),
        .D(\pid_out_s[2]_i_1_n_0 ),
        .Q(data_o[2]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[3] 
       (.C(data_clk_i),
        .CE(data2_en_s),
        .D(\pid_out_s[3]_i_1_n_0 ),
        .Q(data_o[3]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[4] 
       (.C(data_clk_i),
        .CE(data2_en_s),
        .D(\pid_out_s[4]_i_1_n_0 ),
        .Q(data_o[4]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[5] 
       (.C(data_clk_i),
        .CE(data2_en_s),
        .D(\pid_out_s[5]_i_1_n_0 ),
        .Q(data_o[5]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[6] 
       (.C(data_clk_i),
        .CE(data2_en_s),
        .D(\pid_out_s[6]_i_1_n_0 ),
        .Q(data_o[6]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[7] 
       (.C(data_clk_i),
        .CE(data2_en_s),
        .D(\pid_out_s[7]_i_1_n_0 ),
        .Q(data_o[7]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[8] 
       (.C(data_clk_i),
        .CE(data2_en_s),
        .D(\pid_out_s[8]_i_1_n_0 ),
        .Q(data_o[8]),
        .R(data_rst_i));
  FDRE \pid_out_s_reg[9] 
       (.C(data_clk_i),
        .CE(data2_en_s),
        .D(\pid_out_s[9]_i_1_n_0 ),
        .Q(data_o[9]),
        .R(data_rst_i));
  CARRY4 pid_sum_s_carry
       (.CI(1'b0),
        .CO({pid_sum_s_carry_n_0,pid_sum_s_carry_n_1,pid_sum_s_carry_n_2,pid_sum_s_carry_n_3}),
        .CYINIT(1'b0),
        .DI(P_s[3:0]),
        .O({pid_sum_s_carry_n_4,pid_sum_s_carry_n_5,pid_sum_s_carry_n_6,pid_sum_s_carry_n_7}),
        .S({pid_sum_s_carry_i_1_n_0,pid_sum_s_carry_i_2_n_0,pid_sum_s_carry_i_3_n_0,pid_sum_s_carry_i_4_n_0}));
  CARRY4 pid_sum_s_carry__0
       (.CI(pid_sum_s_carry_n_0),
        .CO({pid_sum_s_carry__0_n_0,pid_sum_s_carry__0_n_1,pid_sum_s_carry__0_n_2,pid_sum_s_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(P_s[7:4]),
        .O({pid_sum_s_carry__0_n_4,pid_sum_s_carry__0_n_5,pid_sum_s_carry__0_n_6,pid_sum_s_carry__0_n_7}),
        .S({pid_sum_s_carry__0_i_1_n_0,pid_sum_s_carry__0_i_2_n_0,pid_sum_s_carry__0_i_3_n_0,pid_sum_s_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__0_i_1
       (.I0(P_s[7]),
        .I1(I_s[7]),
        .O(pid_sum_s_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__0_i_2
       (.I0(P_s[6]),
        .I1(I_s[6]),
        .O(pid_sum_s_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__0_i_3
       (.I0(P_s[5]),
        .I1(I_s[5]),
        .O(pid_sum_s_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__0_i_4
       (.I0(P_s[4]),
        .I1(I_s[4]),
        .O(pid_sum_s_carry__0_i_4_n_0));
  CARRY4 pid_sum_s_carry__1
       (.CI(pid_sum_s_carry__0_n_0),
        .CO({pid_sum_s_carry__1_n_0,pid_sum_s_carry__1_n_1,pid_sum_s_carry__1_n_2,pid_sum_s_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(P_s[11:8]),
        .O({pid_sum_s_carry__1_n_4,pid_sum_s_carry__1_n_5,pid_sum_s_carry__1_n_6,pid_sum_s_carry__1_n_7}),
        .S({pid_sum_s_carry__1_i_1_n_0,pid_sum_s_carry__1_i_2_n_0,pid_sum_s_carry__1_i_3_n_0,pid_sum_s_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__1_i_1
       (.I0(P_s[11]),
        .I1(I_s[11]),
        .O(pid_sum_s_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__1_i_2
       (.I0(P_s[10]),
        .I1(I_s[10]),
        .O(pid_sum_s_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__1_i_3
       (.I0(P_s[9]),
        .I1(I_s[9]),
        .O(pid_sum_s_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__1_i_4
       (.I0(P_s[8]),
        .I1(I_s[8]),
        .O(pid_sum_s_carry__1_i_4_n_0));
  CARRY4 pid_sum_s_carry__2
       (.CI(pid_sum_s_carry__1_n_0),
        .CO({pid_sum_s_carry__2_n_0,pid_sum_s_carry__2_n_1,pid_sum_s_carry__2_n_2,pid_sum_s_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({P_s[14],pid_sum_s_carry__2_i_1_n_0,I_s[13],P_s[12]}),
        .O({pid_sum_s_carry__2_n_4,NLW_pid_sum_s_carry__2_O_UNCONNECTED[2],pid_sum_s_carry__2_n_6,pid_sum_s_carry__2_n_7}),
        .S({pid_sum_s_carry__2_i_2_n_0,pid_sum_s_carry__2_i_3_n_0,pid_sum_s_carry__2_i_4_n_0,pid_sum_s_carry__2_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pid_sum_s_carry__2_i_1
       (.I0(I_s[13]),
        .O(pid_sum_s_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pid_sum_s_carry__2_i_2
       (.I0(P_s[14]),
        .I1(P_s[15]),
        .O(pid_sum_s_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__2_i_3
       (.I0(I_s[13]),
        .I1(P_s[14]),
        .O(pid_sum_s_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__2_i_4
       (.I0(I_s[13]),
        .I1(P_s[13]),
        .O(pid_sum_s_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry__2_i_5
       (.I0(P_s[12]),
        .I1(I_s[12]),
        .O(pid_sum_s_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry_i_1
       (.I0(P_s[3]),
        .I1(I_s[3]),
        .O(pid_sum_s_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry_i_2
       (.I0(P_s[2]),
        .I1(I_s[2]),
        .O(pid_sum_s_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry_i_3
       (.I0(P_s[1]),
        .I1(I_s[1]),
        .O(pid_sum_s_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pid_sum_s_carry_i_4
       (.I0(P_s[0]),
        .I1(I_s[0]),
        .O(pid_sum_s_carry_i_4_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_sync_bit
   (sign2_s,
    sign_s,
    s00_axi_aclk,
    out,
    sign_i,
    data_clk_i);
  output sign2_s;
  input sign_s;
  input s00_axi_aclk;
  input [0:0]out;
  input sign_i;
  input data_clk_i;

  wire data_clk_i;
  (* async_reg = "true" *) wire [2:0]flipflops;
  wire [0:0]out;
  wire s00_axi_aclk;
  wire sign2_s;
  wire sign_i;
  wire sign_s;
  wire sync_stage0_s;

  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_86
       (.I0(flipflops[2]),
        .I1(out),
        .I2(sign_i),
        .O(sign2_s));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_stage0_s),
        .Q(flipflops[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(flipflops[0]),
        .Q(flipflops[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(flipflops[1]),
        .Q(flipflops[2]),
        .R(1'b0));
  FDRE sync_stage0_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sign_s),
        .Q(sync_stage0_s),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pidv3_axi_sync_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_sync_bit__xdcDup__1
   (out,
    int_rst_s,
    s00_axi_aclk,
    data_clk_i);
  output [0:0]out;
  input int_rst_s;
  input s00_axi_aclk;
  input data_clk_i;

  wire data_clk_i;
  (* async_reg = "true" *) wire [2:0]flipflops;
  wire int_rst_s;
  wire s00_axi_aclk;
  wire sync_stage0_s_reg_n_0;

  assign out[0] = flipflops[2];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_stage0_s_reg_n_0),
        .Q(flipflops[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(flipflops[0]),
        .Q(flipflops[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[2] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(flipflops[1]),
        .Q(flipflops[2]),
        .R(1'b0));
  FDRE sync_stage0_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_rst_s),
        .Q(sync_stage0_s_reg_n_0),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_sync_vector
   (out,
    A,
    data_i,
    setpoint_i,
    I_sum_s,
    sign2_s,
    S,
    I_sum_s_0,
    I_sum_s_1,
    I_sum_s_2,
    D,
    s00_axi_aclk,
    data_clk_i);
  output [13:0]out;
  output [14:0]A;
  input [13:0]data_i;
  input [13:0]setpoint_i;
  input [0:0]I_sum_s;
  input sign2_s;
  input [3:0]S;
  input [3:0]I_sum_s_0;
  input [3:0]I_sum_s_1;
  input [2:0]I_sum_s_2;
  input [13:0]D;
  input s00_axi_aclk;
  input data_clk_i;

  wire [14:0]A;
  wire [13:0]D;
  wire [0:0]I_sum_s;
  wire [3:0]I_sum_s_0;
  wire [3:0]I_sum_s_1;
  wire [2:0]I_sum_s_2;
  wire I_sum_s_i_20_n_2;
  wire I_sum_s_i_20_n_3;
  wire I_sum_s_i_21_n_0;
  wire I_sum_s_i_21_n_1;
  wire I_sum_s_i_21_n_2;
  wire I_sum_s_i_21_n_3;
  wire I_sum_s_i_22_n_0;
  wire I_sum_s_i_22_n_1;
  wire I_sum_s_i_22_n_2;
  wire I_sum_s_i_22_n_3;
  wire I_sum_s_i_23_n_0;
  wire I_sum_s_i_23_n_1;
  wire I_sum_s_i_23_n_2;
  wire I_sum_s_i_23_n_3;
  wire I_sum_s_i_57_n_0;
  wire I_sum_s_i_58_n_0;
  wire I_sum_s_i_62_n_0;
  wire I_sum_s_i_63_n_0;
  wire I_sum_s_i_64_n_0;
  wire I_sum_s_i_65_n_0;
  wire I_sum_s_i_70_n_0;
  wire I_sum_s_i_71_n_0;
  wire I_sum_s_i_72_n_0;
  wire I_sum_s_i_73_n_0;
  wire I_sum_s_i_78_n_0;
  wire I_sum_s_i_79_n_0;
  wire I_sum_s_i_80_n_0;
  wire I_sum_s_i_81_n_0;
  wire [3:0]S;
  wire data_clk_i;
  wire [13:0]data_i;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[2]_2 ;
  wire s00_axi_aclk;
  wire [13:0]setpoint_i;
  wire sign2_s;
  wire [13:0]sync_vect_stage0_s;
  wire [3:2]NLW_I_sum_s_i_20_CO_UNCONNECTED;
  wire [3:3]NLW_I_sum_s_i_20_O_UNCONNECTED;

  assign out[13:0] = \flipflops_vect[2]_2 ;
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 I_sum_s_i_20
       (.CI(I_sum_s_i_21_n_0),
        .CO({NLW_I_sum_s_i_20_CO_UNCONNECTED[3:2],I_sum_s_i_20_n_2,I_sum_s_i_20_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,I_sum_s_i_57_n_0,I_sum_s_i_58_n_0}),
        .O({NLW_I_sum_s_i_20_O_UNCONNECTED[3],A[14:12]}),
        .S({1'b0,I_sum_s_2}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 I_sum_s_i_21
       (.CI(I_sum_s_i_22_n_0),
        .CO({I_sum_s_i_21_n_0,I_sum_s_i_21_n_1,I_sum_s_i_21_n_2,I_sum_s_i_21_n_3}),
        .CYINIT(1'b0),
        .DI({I_sum_s_i_62_n_0,I_sum_s_i_63_n_0,I_sum_s_i_64_n_0,I_sum_s_i_65_n_0}),
        .O(A[11:8]),
        .S(I_sum_s_1));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 I_sum_s_i_22
       (.CI(I_sum_s_i_23_n_0),
        .CO({I_sum_s_i_22_n_0,I_sum_s_i_22_n_1,I_sum_s_i_22_n_2,I_sum_s_i_22_n_3}),
        .CYINIT(1'b0),
        .DI({I_sum_s_i_70_n_0,I_sum_s_i_71_n_0,I_sum_s_i_72_n_0,I_sum_s_i_73_n_0}),
        .O(A[7:4]),
        .S(I_sum_s_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 I_sum_s_i_23
       (.CI(1'b0),
        .CO({I_sum_s_i_23_n_0,I_sum_s_i_23_n_1,I_sum_s_i_23_n_2,I_sum_s_i_23_n_3}),
        .CYINIT(1'b1),
        .DI({I_sum_s_i_78_n_0,I_sum_s_i_79_n_0,I_sum_s_i_80_n_0,I_sum_s_i_81_n_0}),
        .O(A[3:0]),
        .S(S));
  LUT5 #(
    .INIT(32'h5555330F)) 
    I_sum_s_i_57
       (.I0(data_i[13]),
        .I1(\flipflops_vect[2]_2 [13]),
        .I2(setpoint_i[13]),
        .I3(I_sum_s),
        .I4(sign2_s),
        .O(I_sum_s_i_57_n_0));
  LUT5 #(
    .INIT(32'h5555330F)) 
    I_sum_s_i_58
       (.I0(data_i[12]),
        .I1(\flipflops_vect[2]_2 [12]),
        .I2(setpoint_i[12]),
        .I3(I_sum_s),
        .I4(sign2_s),
        .O(I_sum_s_i_58_n_0));
  LUT5 #(
    .INIT(32'h5555330F)) 
    I_sum_s_i_62
       (.I0(data_i[11]),
        .I1(\flipflops_vect[2]_2 [11]),
        .I2(setpoint_i[11]),
        .I3(I_sum_s),
        .I4(sign2_s),
        .O(I_sum_s_i_62_n_0));
  LUT5 #(
    .INIT(32'h5555330F)) 
    I_sum_s_i_63
       (.I0(data_i[10]),
        .I1(\flipflops_vect[2]_2 [10]),
        .I2(setpoint_i[10]),
        .I3(I_sum_s),
        .I4(sign2_s),
        .O(I_sum_s_i_63_n_0));
  LUT5 #(
    .INIT(32'h5555330F)) 
    I_sum_s_i_64
       (.I0(data_i[9]),
        .I1(\flipflops_vect[2]_2 [9]),
        .I2(setpoint_i[9]),
        .I3(I_sum_s),
        .I4(sign2_s),
        .O(I_sum_s_i_64_n_0));
  LUT5 #(
    .INIT(32'h5555330F)) 
    I_sum_s_i_65
       (.I0(data_i[8]),
        .I1(\flipflops_vect[2]_2 [8]),
        .I2(setpoint_i[8]),
        .I3(I_sum_s),
        .I4(sign2_s),
        .O(I_sum_s_i_65_n_0));
  LUT5 #(
    .INIT(32'h5555330F)) 
    I_sum_s_i_70
       (.I0(data_i[7]),
        .I1(\flipflops_vect[2]_2 [7]),
        .I2(setpoint_i[7]),
        .I3(I_sum_s),
        .I4(sign2_s),
        .O(I_sum_s_i_70_n_0));
  LUT5 #(
    .INIT(32'h5555330F)) 
    I_sum_s_i_71
       (.I0(data_i[6]),
        .I1(\flipflops_vect[2]_2 [6]),
        .I2(setpoint_i[6]),
        .I3(I_sum_s),
        .I4(sign2_s),
        .O(I_sum_s_i_71_n_0));
  LUT5 #(
    .INIT(32'h5555330F)) 
    I_sum_s_i_72
       (.I0(data_i[5]),
        .I1(\flipflops_vect[2]_2 [5]),
        .I2(setpoint_i[5]),
        .I3(I_sum_s),
        .I4(sign2_s),
        .O(I_sum_s_i_72_n_0));
  LUT5 #(
    .INIT(32'h5555330F)) 
    I_sum_s_i_73
       (.I0(data_i[4]),
        .I1(\flipflops_vect[2]_2 [4]),
        .I2(setpoint_i[4]),
        .I3(I_sum_s),
        .I4(sign2_s),
        .O(I_sum_s_i_73_n_0));
  LUT5 #(
    .INIT(32'h5555330F)) 
    I_sum_s_i_78
       (.I0(data_i[3]),
        .I1(\flipflops_vect[2]_2 [3]),
        .I2(setpoint_i[3]),
        .I3(I_sum_s),
        .I4(sign2_s),
        .O(I_sum_s_i_78_n_0));
  LUT5 #(
    .INIT(32'h5555330F)) 
    I_sum_s_i_79
       (.I0(data_i[2]),
        .I1(\flipflops_vect[2]_2 [2]),
        .I2(setpoint_i[2]),
        .I3(I_sum_s),
        .I4(sign2_s),
        .O(I_sum_s_i_79_n_0));
  LUT5 #(
    .INIT(32'h5555330F)) 
    I_sum_s_i_80
       (.I0(data_i[1]),
        .I1(\flipflops_vect[2]_2 [1]),
        .I2(setpoint_i[1]),
        .I3(I_sum_s),
        .I4(sign2_s),
        .O(I_sum_s_i_80_n_0));
  LUT5 #(
    .INIT(32'h5555330F)) 
    I_sum_s_i_81
       (.I0(data_i[0]),
        .I1(\flipflops_vect[2]_2 [0]),
        .I2(setpoint_i[0]),
        .I3(I_sum_s),
        .I4(sign2_s),
        .O(I_sum_s_i_81_n_0));
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
    \flipflops_vect_reg[0][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[10]),
        .Q(\flipflops_vect[0]_0 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[11]),
        .Q(\flipflops_vect[0]_0 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[12]),
        .Q(\flipflops_vect[0]_0 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[13]),
        .Q(\flipflops_vect[0]_0 [13]),
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
    \flipflops_vect_reg[0][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[5]),
        .Q(\flipflops_vect[0]_0 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[6]),
        .Q(\flipflops_vect[0]_0 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[7]),
        .Q(\flipflops_vect[0]_0 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[8]),
        .Q(\flipflops_vect[0]_0 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[9]),
        .Q(\flipflops_vect[0]_0 [9]),
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
    \flipflops_vect_reg[1][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [10]),
        .Q(\flipflops_vect[1]_1 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [11]),
        .Q(\flipflops_vect[1]_1 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [12]),
        .Q(\flipflops_vect[1]_1 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [13]),
        .Q(\flipflops_vect[1]_1 [13]),
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
    \flipflops_vect_reg[1][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [5]),
        .Q(\flipflops_vect[1]_1 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [6]),
        .Q(\flipflops_vect[1]_1 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [7]),
        .Q(\flipflops_vect[1]_1 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [8]),
        .Q(\flipflops_vect[1]_1 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [9]),
        .Q(\flipflops_vect[1]_1 [9]),
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
    \flipflops_vect_reg[2][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [10]),
        .Q(\flipflops_vect[2]_2 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [11]),
        .Q(\flipflops_vect[2]_2 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [12]),
        .Q(\flipflops_vect[2]_2 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [13]),
        .Q(\flipflops_vect[2]_2 [13]),
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
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [5]),
        .Q(\flipflops_vect[2]_2 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [6]),
        .Q(\flipflops_vect[2]_2 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [7]),
        .Q(\flipflops_vect[2]_2 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [8]),
        .Q(\flipflops_vect[2]_2 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][9] 
       (.C(data_clk_i),
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

(* ORIG_REF_NAME = "pidv3_axi_sync_vector" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_sync_vector__parameterized0
   (B,
    D,
    s00_axi_aclk,
    data_clk_i,
    out,
    ki_i);
  output [17:0]B;
  input [17:0]D;
  input s00_axi_aclk;
  input data_clk_i;
  input [0:0]out;
  input [17:0]ki_i;

  wire [17:0]B;
  wire [17:0]D;
  wire data_clk_i;
  (* async_reg = "true" *) wire [17:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [17:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [17:0]\flipflops_vect[2]_2 ;
  wire [17:0]ki_i;
  wire [0:0]out;
  wire s00_axi_aclk;
  wire [17:0]sync_vect_stage0_s;

  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_10
       (.I0(\flipflops_vect[2]_2 [9]),
        .I1(out),
        .I2(ki_i[9]),
        .O(B[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_11
       (.I0(\flipflops_vect[2]_2 [8]),
        .I1(out),
        .I2(ki_i[8]),
        .O(B[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_12
       (.I0(\flipflops_vect[2]_2 [7]),
        .I1(out),
        .I2(ki_i[7]),
        .O(B[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_13
       (.I0(\flipflops_vect[2]_2 [6]),
        .I1(out),
        .I2(ki_i[6]),
        .O(B[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_14
       (.I0(\flipflops_vect[2]_2 [5]),
        .I1(out),
        .I2(ki_i[5]),
        .O(B[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_15
       (.I0(\flipflops_vect[2]_2 [4]),
        .I1(out),
        .I2(ki_i[4]),
        .O(B[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_16
       (.I0(\flipflops_vect[2]_2 [3]),
        .I1(out),
        .I2(ki_i[3]),
        .O(B[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_17
       (.I0(\flipflops_vect[2]_2 [2]),
        .I1(out),
        .I2(ki_i[2]),
        .O(B[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_18
       (.I0(\flipflops_vect[2]_2 [1]),
        .I1(out),
        .I2(ki_i[1]),
        .O(B[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_19
       (.I0(\flipflops_vect[2]_2 [0]),
        .I1(out),
        .I2(ki_i[0]),
        .O(B[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_2
       (.I0(\flipflops_vect[2]_2 [17]),
        .I1(out),
        .I2(ki_i[17]),
        .O(B[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_3
       (.I0(\flipflops_vect[2]_2 [16]),
        .I1(out),
        .I2(ki_i[16]),
        .O(B[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_4
       (.I0(\flipflops_vect[2]_2 [15]),
        .I1(out),
        .I2(ki_i[15]),
        .O(B[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_5
       (.I0(\flipflops_vect[2]_2 [14]),
        .I1(out),
        .I2(ki_i[14]),
        .O(B[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_6
       (.I0(\flipflops_vect[2]_2 [13]),
        .I1(out),
        .I2(ki_i[13]),
        .O(B[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_7
       (.I0(\flipflops_vect[2]_2 [12]),
        .I1(out),
        .I2(ki_i[12]),
        .O(B[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_8
       (.I0(\flipflops_vect[2]_2 [11]),
        .I1(out),
        .I2(ki_i[11]),
        .O(B[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    I_sum_s_i_9
       (.I0(\flipflops_vect[2]_2 [10]),
        .I1(out),
        .I2(ki_i[10]),
        .O(B[10]));
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
    \flipflops_vect_reg[0][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[10]),
        .Q(\flipflops_vect[0]_0 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[11]),
        .Q(\flipflops_vect[0]_0 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[12]),
        .Q(\flipflops_vect[0]_0 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[13]),
        .Q(\flipflops_vect[0]_0 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][14] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[14]),
        .Q(\flipflops_vect[0]_0 [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][15] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[15]),
        .Q(\flipflops_vect[0]_0 [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][16] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[16]),
        .Q(\flipflops_vect[0]_0 [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][17] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[17]),
        .Q(\flipflops_vect[0]_0 [17]),
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
    \flipflops_vect_reg[0][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[5]),
        .Q(\flipflops_vect[0]_0 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[6]),
        .Q(\flipflops_vect[0]_0 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[7]),
        .Q(\flipflops_vect[0]_0 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[8]),
        .Q(\flipflops_vect[0]_0 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[9]),
        .Q(\flipflops_vect[0]_0 [9]),
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
    \flipflops_vect_reg[1][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [10]),
        .Q(\flipflops_vect[1]_1 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [11]),
        .Q(\flipflops_vect[1]_1 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [12]),
        .Q(\flipflops_vect[1]_1 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [13]),
        .Q(\flipflops_vect[1]_1 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][14] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [14]),
        .Q(\flipflops_vect[1]_1 [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][15] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [15]),
        .Q(\flipflops_vect[1]_1 [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][16] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [16]),
        .Q(\flipflops_vect[1]_1 [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][17] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [17]),
        .Q(\flipflops_vect[1]_1 [17]),
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
    \flipflops_vect_reg[1][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [5]),
        .Q(\flipflops_vect[1]_1 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [6]),
        .Q(\flipflops_vect[1]_1 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [7]),
        .Q(\flipflops_vect[1]_1 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [8]),
        .Q(\flipflops_vect[1]_1 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [9]),
        .Q(\flipflops_vect[1]_1 [9]),
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
    \flipflops_vect_reg[2][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [10]),
        .Q(\flipflops_vect[2]_2 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [11]),
        .Q(\flipflops_vect[2]_2 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [12]),
        .Q(\flipflops_vect[2]_2 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [13]),
        .Q(\flipflops_vect[2]_2 [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][14] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [14]),
        .Q(\flipflops_vect[2]_2 [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][15] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [15]),
        .Q(\flipflops_vect[2]_2 [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][16] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [16]),
        .Q(\flipflops_vect[2]_2 [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][17] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [17]),
        .Q(\flipflops_vect[2]_2 [17]),
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
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [5]),
        .Q(\flipflops_vect[2]_2 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [6]),
        .Q(\flipflops_vect[2]_2 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [7]),
        .Q(\flipflops_vect[2]_2 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [8]),
        .Q(\flipflops_vect[2]_2 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][9] 
       (.C(data_clk_i),
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
  FDRE \sync_vect_stage0_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(sync_vect_stage0_s[14]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(sync_vect_stage0_s[15]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(sync_vect_stage0_s[16]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(sync_vect_stage0_s[17]),
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

(* ORIG_REF_NAME = "pidv3_axi_sync_vector" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_sync_vector__parameterized1
   (out,
    data_rst_i_0,
    data_rst_i,
    int_rst_i,
    \I_s_reg[13] ,
    D,
    s00_axi_aclk,
    data_clk_i);
  output [4:0]out;
  output data_rst_i_0;
  input data_rst_i;
  input int_rst_i;
  input [0:0]\I_s_reg[13] ;
  input [5:0]D;
  input s00_axi_aclk;
  input data_clk_i;

  wire [5:0]D;
  wire [0:0]\I_s_reg[13] ;
  wire data_clk_i;
  wire data_rst_i;
  wire data_rst_i_0;
  (* async_reg = "true" *) wire [5:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [5:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [5:0]\flipflops_vect[2]_2 ;
  wire int_rst_i;
  wire s00_axi_aclk;
  wire [5:0]sync_vect_stage0_s;

  assign out[4:3] = \flipflops_vect[2]_2 [5:4];
  assign out[2:0] = \flipflops_vect[2]_2 [2:0];
  LUT4 #(
    .INIT(16'hFEAE)) 
    \I_s[13]_i_1 
       (.I0(data_rst_i),
        .I1(int_rst_i),
        .I2(\flipflops_vect[2]_2 [5]),
        .I3(\I_s_reg[13] ),
        .O(data_rst_i_0));
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
    \flipflops_vect_reg[0][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[5]),
        .Q(\flipflops_vect[0]_0 [5]),
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
    \flipflops_vect_reg[1][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [5]),
        .Q(\flipflops_vect[1]_1 [5]),
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
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [5]),
        .Q(\flipflops_vect[2]_2 [5]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(sync_vect_stage0_s[0]),
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
endmodule

(* ORIG_REF_NAME = "pidv3_axi_sync_vector" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_sync_vector__xdcDup__1
   (D,
    s00_axi_aclk,
    data_clk_i);
  input [13:0]D;
  input s00_axi_aclk;
  input data_clk_i;

  wire [13:0]D;
  wire data_clk_i;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[2]_2 ;
  wire s00_axi_aclk;
  wire [13:0]sync_vect_stage0_s;

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
    \flipflops_vect_reg[0][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[10]),
        .Q(\flipflops_vect[0]_0 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[11]),
        .Q(\flipflops_vect[0]_0 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[12]),
        .Q(\flipflops_vect[0]_0 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[13]),
        .Q(\flipflops_vect[0]_0 [13]),
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
    \flipflops_vect_reg[0][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[5]),
        .Q(\flipflops_vect[0]_0 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[6]),
        .Q(\flipflops_vect[0]_0 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[7]),
        .Q(\flipflops_vect[0]_0 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[8]),
        .Q(\flipflops_vect[0]_0 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[9]),
        .Q(\flipflops_vect[0]_0 [9]),
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
    \flipflops_vect_reg[1][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [10]),
        .Q(\flipflops_vect[1]_1 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [11]),
        .Q(\flipflops_vect[1]_1 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [12]),
        .Q(\flipflops_vect[1]_1 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [13]),
        .Q(\flipflops_vect[1]_1 [13]),
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
    \flipflops_vect_reg[1][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [5]),
        .Q(\flipflops_vect[1]_1 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [6]),
        .Q(\flipflops_vect[1]_1 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [7]),
        .Q(\flipflops_vect[1]_1 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [8]),
        .Q(\flipflops_vect[1]_1 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [9]),
        .Q(\flipflops_vect[1]_1 [9]),
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
    \flipflops_vect_reg[2][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [10]),
        .Q(\flipflops_vect[2]_2 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [11]),
        .Q(\flipflops_vect[2]_2 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [12]),
        .Q(\flipflops_vect[2]_2 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [13]),
        .Q(\flipflops_vect[2]_2 [13]),
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
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [5]),
        .Q(\flipflops_vect[2]_2 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [6]),
        .Q(\flipflops_vect[2]_2 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [7]),
        .Q(\flipflops_vect[2]_2 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [8]),
        .Q(\flipflops_vect[2]_2 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][9] 
       (.C(data_clk_i),
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

(* ORIG_REF_NAME = "pidv3_axi_sync_vector" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pidv3_axi_sync_vector__xdcDup__2
   (B,
    D,
    s00_axi_aclk,
    data_clk_i,
    out,
    kp_i);
  output [13:0]B;
  input [13:0]D;
  input s00_axi_aclk;
  input data_clk_i;
  input [0:0]out;
  input [13:0]kp_i;

  wire [13:0]B;
  wire [13:0]D;
  wire data_clk_i;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [13:0]\flipflops_vect[2]_2 ;
  wire [13:0]kp_i;
  wire [0:0]out;
  wire s00_axi_aclk;
  wire [13:0]sync_vect_stage0_s;

  LUT3 #(
    .INIT(8'hB8)) 
    P_temp_s_i_1
       (.I0(\flipflops_vect[2]_2 [13]),
        .I1(out),
        .I2(kp_i[13]),
        .O(B[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    P_temp_s_i_10
       (.I0(\flipflops_vect[2]_2 [4]),
        .I1(out),
        .I2(kp_i[4]),
        .O(B[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    P_temp_s_i_11
       (.I0(\flipflops_vect[2]_2 [3]),
        .I1(out),
        .I2(kp_i[3]),
        .O(B[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    P_temp_s_i_12
       (.I0(\flipflops_vect[2]_2 [2]),
        .I1(out),
        .I2(kp_i[2]),
        .O(B[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    P_temp_s_i_13
       (.I0(\flipflops_vect[2]_2 [1]),
        .I1(out),
        .I2(kp_i[1]),
        .O(B[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    P_temp_s_i_14
       (.I0(\flipflops_vect[2]_2 [0]),
        .I1(out),
        .I2(kp_i[0]),
        .O(B[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    P_temp_s_i_2
       (.I0(\flipflops_vect[2]_2 [12]),
        .I1(out),
        .I2(kp_i[12]),
        .O(B[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    P_temp_s_i_3
       (.I0(\flipflops_vect[2]_2 [11]),
        .I1(out),
        .I2(kp_i[11]),
        .O(B[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    P_temp_s_i_4
       (.I0(\flipflops_vect[2]_2 [10]),
        .I1(out),
        .I2(kp_i[10]),
        .O(B[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    P_temp_s_i_5
       (.I0(\flipflops_vect[2]_2 [9]),
        .I1(out),
        .I2(kp_i[9]),
        .O(B[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    P_temp_s_i_6
       (.I0(\flipflops_vect[2]_2 [8]),
        .I1(out),
        .I2(kp_i[8]),
        .O(B[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    P_temp_s_i_7
       (.I0(\flipflops_vect[2]_2 [7]),
        .I1(out),
        .I2(kp_i[7]),
        .O(B[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    P_temp_s_i_8
       (.I0(\flipflops_vect[2]_2 [6]),
        .I1(out),
        .I2(kp_i[6]),
        .O(B[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    P_temp_s_i_9
       (.I0(\flipflops_vect[2]_2 [5]),
        .I1(out),
        .I2(kp_i[5]),
        .O(B[5]));
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
    \flipflops_vect_reg[0][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[10]),
        .Q(\flipflops_vect[0]_0 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[11]),
        .Q(\flipflops_vect[0]_0 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[12]),
        .Q(\flipflops_vect[0]_0 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[13]),
        .Q(\flipflops_vect[0]_0 [13]),
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
    \flipflops_vect_reg[0][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[5]),
        .Q(\flipflops_vect[0]_0 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[6]),
        .Q(\flipflops_vect[0]_0 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[7]),
        .Q(\flipflops_vect[0]_0 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[8]),
        .Q(\flipflops_vect[0]_0 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[9]),
        .Q(\flipflops_vect[0]_0 [9]),
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
    \flipflops_vect_reg[1][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [10]),
        .Q(\flipflops_vect[1]_1 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [11]),
        .Q(\flipflops_vect[1]_1 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [12]),
        .Q(\flipflops_vect[1]_1 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [13]),
        .Q(\flipflops_vect[1]_1 [13]),
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
    \flipflops_vect_reg[1][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [5]),
        .Q(\flipflops_vect[1]_1 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [6]),
        .Q(\flipflops_vect[1]_1 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [7]),
        .Q(\flipflops_vect[1]_1 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [8]),
        .Q(\flipflops_vect[1]_1 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][9] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [9]),
        .Q(\flipflops_vect[1]_1 [9]),
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
    \flipflops_vect_reg[2][10] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [10]),
        .Q(\flipflops_vect[2]_2 [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][11] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [11]),
        .Q(\flipflops_vect[2]_2 [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][12] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [12]),
        .Q(\flipflops_vect[2]_2 [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][13] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [13]),
        .Q(\flipflops_vect[2]_2 [13]),
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
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][5] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [5]),
        .Q(\flipflops_vect[2]_2 [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][6] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [6]),
        .Q(\flipflops_vect[2]_2 [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][7] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [7]),
        .Q(\flipflops_vect[2]_2 [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][8] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [8]),
        .Q(\flipflops_vect[2]_2 [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][9] 
       (.C(data_clk_i),
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
