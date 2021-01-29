// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Jan 29 17:04:56 2021
// Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim -rename_top double_iq_pid_vco_demod2_nco_0 -prefix
//               double_iq_pid_vco_demod2_nco_0_ double_iq_pid_vco_dds1_nco_0_sim_netlist.v
// Design      : double_iq_pid_vco_dds1_nco_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "double_iq_pid_vco_dds1_nco_0,nco_counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "nco_counter,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module double_iq_pid_vco_demod2_nco_0
   (ref_clk_i,
    ref_rst_i,
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
    s00_axi_rready,
    sync_i,
    pinc_i,
    pinc_en_i,
    pinc_rst_i,
    pinc_clk_i,
    poff_i,
    poff_en_i,
    poff_rst_i,
    poff_clk_i,
    dds_cos_o,
    dds_sin_o,
    dds_en_o,
    dds_clk_o,
    dds_rst_o,
    trigger_o,
    cos_fake_o,
    sin_fake_o,
    wave_clk_o,
    wave_rst_o,
    wave_en_o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ref_clk_i CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ref_clk_i, ASSOCIATED_BUSIF sine_out:square_out, ASSOCIATED_RESET ref_rst_i, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_redpitaya_converters_0_0_clk_o, INSERT_VIP 0" *) input ref_clk_i;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ref_rst_i RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ref_rst_i, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ref_rst_i;
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
  input sync_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 pinc_in DATA" *) input [39:0]pinc_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 pinc_in DATA_EN" *) input pinc_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 pinc_in DATA_RST" *) input pinc_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 pinc_in DATA_CLK" *) input pinc_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 poff_in DATA" *) input [11:0]poff_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 poff_in DATA_EN" *) input poff_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 poff_in DATA_RST" *) input poff_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 poff_in DATA_CLK" *) input poff_clk_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 sine_out DATA_I" *) output [15:0]dds_cos_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 sine_out DATA_Q" *) output [15:0]dds_sin_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 sine_out DATA_EN" *) output dds_en_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 sine_out DATA_CLK" *) output dds_clk_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 sine_out DATA_RST" *) output dds_rst_o;
  output trigger_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 square_out DATA_I" *) output cos_fake_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 square_out DATA_Q" *) output sin_fake_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 square_out DATA_CLK" *) output wave_clk_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 square_out DATA_RST" *) output wave_rst_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 square_out DATA_EN" *) output wave_en_o;

  wire cos_fake_o;
  wire dds_clk_o;
  wire [15:0]dds_cos_o;
  wire dds_en_o;
  wire dds_rst_o;
  wire [15:0]dds_sin_o;
  wire pinc_clk_i;
  wire pinc_en_i;
  wire [39:0]pinc_i;
  wire pinc_rst_i;
  wire poff_clk_i;
  wire poff_en_i;
  wire [11:0]poff_i;
  wire poff_rst_i;
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
  wire sin_fake_o;
  wire sync_i;
  wire trigger_o;
  wire wave_clk_o;
  wire wave_en_o;
  wire wave_rst_o;

  (* COUNTER_SIZE = "40" *) 
  (* C_S00_AXI_ADDR_WIDTH = "5" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  (* DATA_SIZE = "16" *) 
  (* DEFAULT_RST_ACCUM_VAL = "25" *) 
  (* LUT_SIZE = "12" *) 
  (* RESET_ACCUM = "FALSE" *) 
  (* id = "1" *) 
  double_iq_pid_vco_demod2_nco_0_nco_counter U0
       (.cos_fake_o(cos_fake_o),
        .dds_clk_o(dds_clk_o),
        .dds_cos_o(dds_cos_o),
        .dds_en_o(dds_en_o),
        .dds_rst_o(dds_rst_o),
        .dds_sin_o(dds_sin_o),
        .pinc_clk_i(pinc_clk_i),
        .pinc_en_i(pinc_en_i),
        .pinc_i(pinc_i),
        .pinc_rst_i(pinc_rst_i),
        .poff_clk_i(poff_clk_i),
        .poff_en_i(poff_en_i),
        .poff_i(poff_i),
        .poff_rst_i(poff_rst_i),
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
        .s00_axi_wvalid(s00_axi_wvalid),
        .sin_fake_o(sin_fake_o),
        .sync_i(sync_i),
        .trigger_o(trigger_o),
        .wave_clk_o(wave_clk_o),
        .wave_en_o(wave_en_o),
        .wave_rst_o(wave_rst_o));
endmodule

(* COUNTER_SIZE = "40" *) (* C_S00_AXI_ADDR_WIDTH = "5" *) (* C_S00_AXI_DATA_WIDTH = "32" *) 
(* DATA_SIZE = "16" *) (* DEFAULT_RST_ACCUM_VAL = "25" *) (* LUT_SIZE = "12" *) 
(* RESET_ACCUM = "FALSE" *) (* id = "1" *) 
module double_iq_pid_vco_demod2_nco_0_nco_counter
   (ref_clk_i,
    ref_rst_i,
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
    s00_axi_rready,
    sync_i,
    pinc_i,
    pinc_en_i,
    pinc_rst_i,
    pinc_clk_i,
    poff_i,
    poff_en_i,
    poff_rst_i,
    poff_clk_i,
    dds_cos_o,
    dds_sin_o,
    dds_en_o,
    dds_clk_o,
    dds_rst_o,
    trigger_o,
    cos_fake_o,
    sin_fake_o,
    wave_clk_o,
    wave_rst_o,
    wave_en_o);
  input ref_clk_i;
  input ref_rst_i;
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
  input sync_i;
  input [39:0]pinc_i;
  input pinc_en_i;
  input pinc_rst_i;
  input pinc_clk_i;
  input [11:0]poff_i;
  input poff_en_i;
  input poff_rst_i;
  input poff_clk_i;
  output [15:0]dds_cos_o;
  output [15:0]dds_sin_o;
  output dds_en_o;
  output dds_clk_o;
  output dds_rst_o;
  output trigger_o;
  output cos_fake_o;
  output sin_fake_o;
  output wave_clk_o;
  output wave_rst_o;
  output wave_en_o;

  wire \<const0> ;
  wire [2:0]addr_s;
  wire cos_fake_o;
  wire cos_next;
  wire [10:0]counter_scale_s;
  wire [11:0]cpt_off_s;
  wire cpt_off_s_1;
  wire [11:0]cpt_off_sync_s;
  wire cpt_step_low_s;
  wire cpt_step_s;
  wire [39:0]cpt_step_sync_s;
  wire [7:0]data1;
  wire [1:0]data3;
  wire [15:0]dds_cos_o;
  wire [15:0]dds_sin_o;
  wire enable_s;
  wire handle_comm_n_16;
  wire handle_comm_n_17;
  wire handle_comm_n_18;
  wire int_rst_s;
  wire max_accum_low_s;
  wire [39:0]max_accum_s;
  wire max_accum_s_0;
  wire nco_inst1_n_10;
  wire nco_inst1_n_11;
  wire nco_inst1_n_12;
  wire nco_inst1_n_13;
  wire nco_inst1_n_14;
  wire nco_inst1_n_15;
  wire nco_inst1_n_16;
  wire nco_inst1_n_17;
  wire nco_inst1_n_18;
  wire nco_inst1_n_19;
  wire nco_inst1_n_2;
  wire nco_inst1_n_20;
  wire nco_inst1_n_21;
  wire nco_inst1_n_22;
  wire nco_inst1_n_23;
  wire nco_inst1_n_24;
  wire nco_inst1_n_25;
  wire nco_inst1_n_26;
  wire nco_inst1_n_27;
  wire nco_inst1_n_28;
  wire nco_inst1_n_29;
  wire nco_inst1_n_3;
  wire nco_inst1_n_4;
  wire nco_inst1_n_5;
  wire nco_inst1_n_6;
  wire nco_inst1_n_7;
  wire nco_inst1_n_8;
  wire nco_inst1_n_9;
  wire [39:0]pinc_i;
  wire pinc_syn_n_0;
  wire pinc_syn_n_1;
  wire pinc_syn_n_10;
  wire pinc_syn_n_11;
  wire pinc_syn_n_12;
  wire pinc_syn_n_13;
  wire pinc_syn_n_14;
  wire pinc_syn_n_15;
  wire pinc_syn_n_16;
  wire pinc_syn_n_17;
  wire pinc_syn_n_18;
  wire pinc_syn_n_19;
  wire pinc_syn_n_2;
  wire pinc_syn_n_20;
  wire pinc_syn_n_21;
  wire pinc_syn_n_22;
  wire pinc_syn_n_23;
  wire pinc_syn_n_24;
  wire pinc_syn_n_25;
  wire pinc_syn_n_26;
  wire pinc_syn_n_27;
  wire pinc_syn_n_28;
  wire pinc_syn_n_29;
  wire pinc_syn_n_3;
  wire pinc_syn_n_30;
  wire pinc_syn_n_31;
  wire pinc_syn_n_32;
  wire pinc_syn_n_33;
  wire pinc_syn_n_34;
  wire pinc_syn_n_35;
  wire pinc_syn_n_36;
  wire pinc_syn_n_37;
  wire pinc_syn_n_38;
  wire pinc_syn_n_39;
  wire pinc_syn_n_4;
  wire pinc_syn_n_5;
  wire pinc_syn_n_6;
  wire pinc_syn_n_7;
  wire pinc_syn_n_8;
  wire pinc_syn_n_9;
  wire [11:0]poff_i;
  wire poff_sw_sync_s;
  wire read_en_s;
  wire [1:0]readdata_s;
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
  wire [31:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire sin_fake_o;
  wire sync_i;
  wire trigger_o;
  wire wave_en_o;
  wire wb_nco_inst_n_11;
  wire wb_nco_inst_n_12;
  wire wb_nco_inst_n_13;
  wire wb_nco_inst_n_14;
  wire wb_nco_inst_n_15;
  wire wb_nco_inst_n_16;
  wire wb_nco_inst_n_17;
  wire wb_nco_inst_n_18;
  wire wb_nco_inst_n_19;
  wire wb_nco_inst_n_20;
  wire wb_nco_inst_n_21;
  wire wb_nco_inst_n_22;
  wire wb_nco_inst_n_23;
  wire wb_nco_inst_n_24;
  wire wb_nco_inst_n_25;
  wire wb_nco_inst_n_26;
  wire wb_nco_inst_n_27;
  wire wb_nco_inst_n_28;
  wire wb_nco_inst_n_29;
  wire wb_nco_inst_n_30;
  wire wb_nco_inst_n_31;
  wire wb_nco_inst_n_32;
  wire wb_nco_inst_n_33;
  wire wb_nco_inst_n_34;
  wire wb_nco_inst_n_35;
  wire wb_nco_inst_n_36;
  wire wb_nco_inst_n_37;
  wire wb_nco_inst_n_38;
  wire wb_nco_inst_n_39;
  wire wb_nco_inst_n_40;
  wire wb_nco_inst_n_41;
  wire wb_nco_inst_n_42;

  assign dds_clk_o = ref_clk_i;
  assign dds_en_o = wave_en_o;
  assign dds_rst_o = ref_rst_i;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign wave_clk_o = ref_clk_i;
  assign wave_rst_o = ref_rst_i;
  GND GND
       (.G(\<const0> ));
  double_iq_pid_vco_demod2_nco_0_nco_counter_synchronizer_vector__parameterized0 cpt_off_syn
       (.Q(cpt_off_s),
        .out(cpt_off_sync_s),
        .ref_clk_i(ref_clk_i),
        .s00_axi_aclk(s00_axi_aclk));
  double_iq_pid_vco_demod2_nco_0_nco_counter_synchronizer_vector__xdcDup__1 cpt_step_syn
       (.Q({data1,wb_nco_inst_n_11,wb_nco_inst_n_12,wb_nco_inst_n_13,wb_nco_inst_n_14,wb_nco_inst_n_15,wb_nco_inst_n_16,wb_nco_inst_n_17,wb_nco_inst_n_18,wb_nco_inst_n_19,wb_nco_inst_n_20,wb_nco_inst_n_21,wb_nco_inst_n_22,wb_nco_inst_n_23,wb_nco_inst_n_24,wb_nco_inst_n_25,wb_nco_inst_n_26,wb_nco_inst_n_27,wb_nco_inst_n_28,wb_nco_inst_n_29,wb_nco_inst_n_30,wb_nco_inst_n_31,wb_nco_inst_n_32,wb_nco_inst_n_33,wb_nco_inst_n_34,wb_nco_inst_n_35,wb_nco_inst_n_36,wb_nco_inst_n_37,wb_nco_inst_n_38,wb_nco_inst_n_39,wb_nco_inst_n_40,wb_nco_inst_n_41,wb_nco_inst_n_42}),
        .out(cpt_step_sync_s),
        .ref_clk_i(ref_clk_i),
        .s00_axi_aclk(s00_axi_aclk));
  double_iq_pid_vco_demod2_nco_0_nco_counter_synchronizer_bit__xdcDup__1 enable_syn
       (.enable_s(enable_s),
        .int_rst_s(int_rst_s),
        .ref_clk_i(ref_clk_i),
        .ref_rst_i(ref_rst_i),
        .s00_axi_aclk(s00_axi_aclk),
        .sync_i(sync_i),
        .wave_en_o(wave_en_o));
  double_iq_pid_vco_demod2_nco_0_nco_counter_handcomm handle_comm
       (.D(readdata_s),
        .E(cpt_step_s),
        .Q({data1[1:0],wb_nco_inst_n_41,wb_nco_inst_n_42}),
        .addr_s(addr_s),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_awready_reg_1(cpt_step_low_s),
        .axi_awready_reg_2(cpt_off_s_1),
        .axi_awready_reg_3(max_accum_s_0),
        .axi_awready_reg_4(max_accum_low_s),
        .axi_rvalid_reg_0(s00_axi_rvalid),
        .axi_wready_reg_0(s00_axi_wready),
        .data3(data3),
        .enable_s(enable_s),
        .read_en_s(read_en_s),
        .\readdata_s_reg[1] (cpt_off_s[1:0]),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata[1:0]),
        .\s00_axi_wdata[0]_0 (handle_comm_n_18),
        .s00_axi_wdata_0_sp_1(handle_comm_n_16),
        .s00_axi_wdata_1_sp_1(handle_comm_n_17),
        .s00_axi_wvalid(s00_axi_wvalid));
  double_iq_pid_vco_demod2_nco_0_nco_counter_synchronizer_vector max_acc_syn
       (.Q(max_accum_s),
        .ref_clk_i(ref_clk_i),
        .s00_axi_aclk(s00_axi_aclk));
  double_iq_pid_vco_demod2_nco_0_nco_counter_logic nco_inst1
       (.DI({nco_inst1_n_2,nco_inst1_n_3,nco_inst1_n_4,nco_inst1_n_5}),
        .S({pinc_syn_n_4,pinc_syn_n_5,pinc_syn_n_6,pinc_syn_n_7}),
        .cos_fake_o(cos_fake_o),
        .cos_next(cos_next),
        .\counter_s_reg[11]_0 ({nco_inst1_n_10,nco_inst1_n_11,nco_inst1_n_12,nco_inst1_n_13}),
        .\counter_s_reg[11]_1 ({pinc_syn_n_12,pinc_syn_n_13,pinc_syn_n_14,pinc_syn_n_15}),
        .\counter_s_reg[15]_0 ({nco_inst1_n_14,nco_inst1_n_15,nco_inst1_n_16,nco_inst1_n_17}),
        .\counter_s_reg[15]_1 ({pinc_syn_n_16,pinc_syn_n_17,pinc_syn_n_18,pinc_syn_n_19}),
        .\counter_s_reg[19]_0 ({nco_inst1_n_18,nco_inst1_n_19,nco_inst1_n_20,nco_inst1_n_21}),
        .\counter_s_reg[19]_1 ({pinc_syn_n_20,pinc_syn_n_21,pinc_syn_n_22,pinc_syn_n_23}),
        .\counter_s_reg[23]_0 ({nco_inst1_n_22,nco_inst1_n_23,nco_inst1_n_24,nco_inst1_n_25}),
        .\counter_s_reg[23]_1 ({pinc_syn_n_24,pinc_syn_n_25,pinc_syn_n_26,pinc_syn_n_27}),
        .\counter_s_reg[27]_0 ({nco_inst1_n_26,nco_inst1_n_27,nco_inst1_n_28,nco_inst1_n_29}),
        .\counter_s_reg[27]_1 ({pinc_syn_n_28,pinc_syn_n_29,pinc_syn_n_30,pinc_syn_n_31}),
        .\counter_s_reg[31]_0 ({pinc_syn_n_32,pinc_syn_n_33,pinc_syn_n_34,pinc_syn_n_35}),
        .\counter_s_reg[35]_0 ({pinc_syn_n_36,pinc_syn_n_37,pinc_syn_n_38,pinc_syn_n_39}),
        .\counter_s_reg[39]_0 ({pinc_syn_n_0,pinc_syn_n_1,pinc_syn_n_2,pinc_syn_n_3}),
        .\counter_s_reg[7]_0 ({nco_inst1_n_6,nco_inst1_n_7,nco_inst1_n_8,nco_inst1_n_9}),
        .\counter_s_reg[7]_1 ({pinc_syn_n_8,pinc_syn_n_9,pinc_syn_n_10,pinc_syn_n_11}),
        .counter_scale_s(counter_scale_s),
        .data_a_reg_0(cpt_off_sync_s),
        .dds_cos_o(dds_cos_o),
        .dds_sin_o(dds_sin_o),
        .int_rst_s(int_rst_s),
        .out(poff_sw_sync_s),
        .poff_i(poff_i),
        .ref_clk_i(ref_clk_i),
        .ref_rst_i(ref_rst_i),
        .sin_fake_o(sin_fake_o),
        .trigger_o(trigger_o));
  double_iq_pid_vco_demod2_nco_0_nco_counter_synchronizer_bit__xdcDup__2 pinc_syn
       (.DI({nco_inst1_n_2,nco_inst1_n_3,nco_inst1_n_4,nco_inst1_n_5}),
        .S({pinc_syn_n_4,pinc_syn_n_5,pinc_syn_n_6,pinc_syn_n_7}),
        .cos_next(cos_next),
        .\counter_s_reg[11] ({nco_inst1_n_10,nco_inst1_n_11,nco_inst1_n_12,nco_inst1_n_13}),
        .\counter_s_reg[15] ({nco_inst1_n_14,nco_inst1_n_15,nco_inst1_n_16,nco_inst1_n_17}),
        .\counter_s_reg[19] ({nco_inst1_n_18,nco_inst1_n_19,nco_inst1_n_20,nco_inst1_n_21}),
        .\counter_s_reg[23] ({nco_inst1_n_22,nco_inst1_n_23,nco_inst1_n_24,nco_inst1_n_25}),
        .\counter_s_reg[27] ({nco_inst1_n_26,nco_inst1_n_27,nco_inst1_n_28,nco_inst1_n_29}),
        .\counter_s_reg[7] ({nco_inst1_n_6,nco_inst1_n_7,nco_inst1_n_8,nco_inst1_n_9}),
        .counter_scale_s(counter_scale_s),
        .data3(data3[0]),
        .out(cpt_step_sync_s),
        .pinc_i(pinc_i),
        .\pinc_i[11] ({pinc_syn_n_12,pinc_syn_n_13,pinc_syn_n_14,pinc_syn_n_15}),
        .\pinc_i[15] ({pinc_syn_n_16,pinc_syn_n_17,pinc_syn_n_18,pinc_syn_n_19}),
        .\pinc_i[19] ({pinc_syn_n_20,pinc_syn_n_21,pinc_syn_n_22,pinc_syn_n_23}),
        .\pinc_i[23] ({pinc_syn_n_24,pinc_syn_n_25,pinc_syn_n_26,pinc_syn_n_27}),
        .\pinc_i[27] ({pinc_syn_n_28,pinc_syn_n_29,pinc_syn_n_30,pinc_syn_n_31}),
        .\pinc_i[31] ({pinc_syn_n_32,pinc_syn_n_33,pinc_syn_n_34,pinc_syn_n_35}),
        .\pinc_i[35] ({pinc_syn_n_36,pinc_syn_n_37,pinc_syn_n_38,pinc_syn_n_39}),
        .\pinc_i[39] ({pinc_syn_n_0,pinc_syn_n_1,pinc_syn_n_2,pinc_syn_n_3}),
        .\pinc_i[7] ({pinc_syn_n_8,pinc_syn_n_9,pinc_syn_n_10,pinc_syn_n_11}),
        .ref_clk_i(ref_clk_i),
        .s00_axi_aclk(s00_axi_aclk));
  double_iq_pid_vco_demod2_nco_0_nco_counter_synchronizer_bit poff_syn
       (.data3(data3[1]),
        .out(poff_sw_sync_s),
        .ref_clk_i(ref_clk_i),
        .s00_axi_aclk(s00_axi_aclk));
  double_iq_pid_vco_demod2_nco_0_wb_nco_counter wb_nco_inst
       (.D(readdata_s),
        .E(max_accum_low_s),
        .Q({data1,wb_nco_inst_n_11,wb_nco_inst_n_12,wb_nco_inst_n_13,wb_nco_inst_n_14,wb_nco_inst_n_15,wb_nco_inst_n_16,wb_nco_inst_n_17,wb_nco_inst_n_18,wb_nco_inst_n_19,wb_nco_inst_n_20,wb_nco_inst_n_21,wb_nco_inst_n_22,wb_nco_inst_n_23,wb_nco_inst_n_24,wb_nco_inst_n_25,wb_nco_inst_n_26,wb_nco_inst_n_27,wb_nco_inst_n_28,wb_nco_inst_n_29,wb_nco_inst_n_30,wb_nco_inst_n_31,wb_nco_inst_n_32,wb_nco_inst_n_33,wb_nco_inst_n_34,wb_nco_inst_n_35,wb_nco_inst_n_36,wb_nco_inst_n_37,wb_nco_inst_n_38,wb_nco_inst_n_39,wb_nco_inst_n_40,wb_nco_inst_n_41,wb_nco_inst_n_42}),
        .addr_s(addr_s),
        .\cpt_off_s_reg[11]_0 (cpt_off_s),
        .\cpt_off_s_reg[31]_0 (cpt_off_s_1),
        .\cpt_step_low_s_reg[31]_0 (cpt_step_low_s),
        .\cpt_step_s_reg[63]_0 (cpt_step_s),
        .data3(data3),
        .enable_s(enable_s),
        .enable_s_reg_0(handle_comm_n_16),
        .\max_accum_s_reg[39]_0 (max_accum_s),
        .\max_accum_s_reg[39]_1 (max_accum_s_0),
        .pinc_sw_s_reg_0(handle_comm_n_18),
        .poff_sw_s_reg_0(handle_comm_n_17),
        .\readdata_s_reg[31]_0 (read_en_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_wdata(s00_axi_wdata));
endmodule

module double_iq_pid_vco_demod2_nco_0_nco_counter_cos_rom_a12_d16
   (S,
    \poff_i[11] ,
    dds_cos_o,
    dds_sin_o,
    data_a_reg_1_0,
    poff_i,
    out,
    data_a_reg_0_0,
    O,
    DI,
    data_a_reg_1_1,
    ref_clk_i,
    sel,
    ADDRBWRADDR);
  output [3:0]S;
  output [3:0]\poff_i[11] ;
  output [15:0]dds_cos_o;
  output [15:0]dds_sin_o;
  input data_a_reg_1_0;
  input [4:0]poff_i;
  input [0:0]out;
  input [4:0]data_a_reg_0_0;
  input [2:0]O;
  input [2:0]DI;
  input [0:0]data_a_reg_1_1;
  input ref_clk_i;
  input [11:0]sel;
  input [10:0]ADDRBWRADDR;

  wire [10:0]ADDRBWRADDR;
  wire [2:0]DI;
  wire [2:0]O;
  wire [3:0]S;
  wire [4:0]data_a_reg_0_0;
  wire data_a_reg_1_0;
  wire [0:0]data_a_reg_1_1;
  wire data_a_reg_1_i_1_n_0;
  wire [15:0]dds_cos_o;
  wire [15:0]dds_sin_o;
  wire [0:0]out;
  wire [4:0]poff_i;
  wire [3:0]\poff_i[11] ;
  wire ref_clk_i;
  wire [11:0]sel;
  wire NLW_data_a_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_a_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_a_reg_0_DBITERR_UNCONNECTED;
  wire NLW_data_a_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_a_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_a_reg_0_SBITERR_UNCONNECTED;
  wire [31:8]NLW_data_a_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_data_a_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_a_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_a_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_a_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_a_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_data_a_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_a_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_a_reg_1_DBITERR_UNCONNECTED;
  wire NLW_data_a_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_a_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_a_reg_1_SBITERR_UNCONNECTED;
  wire [31:8]NLW_data_a_reg_1_DOADO_UNCONNECTED;
  wire [31:8]NLW_data_a_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_a_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_a_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_a_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_a_reg_1_RDADDRECC_UNCONNECTED;

  LUT4 #(
    .INIT(16'h56A6)) 
    counter_cos_off_s_carry__1_i_1
       (.I0(data_a_reg_1_0),
        .I1(poff_i[4]),
        .I2(out),
        .I3(data_a_reg_0_0[4]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_cos_off_s_carry__1_i_2
       (.I0(DI[2]),
        .I1(poff_i[3]),
        .I2(out),
        .I3(data_a_reg_0_0[3]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_cos_off_s_carry__1_i_3
       (.I0(DI[1]),
        .I1(poff_i[2]),
        .I2(out),
        .I3(data_a_reg_0_0[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_cos_off_s_carry__1_i_4
       (.I0(DI[0]),
        .I1(poff_i[1]),
        .I2(out),
        .I3(data_a_reg_0_0[1]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_sin_off_s_carry__1_i_1
       (.I0(O[2]),
        .I1(poff_i[4]),
        .I2(out),
        .I3(data_a_reg_0_0[4]),
        .O(\poff_i[11] [3]));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_sin_off_s_carry__1_i_2
       (.I0(O[1]),
        .I1(poff_i[3]),
        .I2(out),
        .I3(data_a_reg_0_0[3]),
        .O(\poff_i[11] [2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_sin_off_s_carry__1_i_3
       (.I0(O[0]),
        .I1(poff_i[2]),
        .I2(out),
        .I3(data_a_reg_0_0[2]),
        .O(\poff_i[11] [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_sin_off_s_carry__1_i_4
       (.I0(DI[0]),
        .I1(poff_i[1]),
        .I2(out),
        .I3(data_a_reg_0_0[1]),
        .O(\poff_i[11] [0]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "nco_inst1/rom_12.rom12_inst/data_a" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hD9DCDEE0E2E4E6E8EAECEEEFF1F2F3F5F6F7F8F9FAFBFBFCFDFDFEFEFEFEFEFF),
    .INIT_01(256'h666A6F74787D81868A8E92969A9EA2A6A9ADB0B4B7BBBEC1C4C7CACDCFD2D5D7),
    .INIT_02(256'hA3AAB2B9C0C7CED4DBE2E8EFF5FC02080E141A20262C31373C42474C52575C61),
    .INIT_03(256'h939CA6B0B9C2CCD5DEE7F0F9020B131C252D363E464E565E666E767E858D949C),
    .INIT_04(256'h35414D5965707C88939FAAB6C1CCD7E2EDF8030E18232E38424D57616B757F89),
    .INIT_05(256'h8A99A7B5C4D2E0EEFC0A182533414E5C697683919EABB8C4D1DEEBF704101C29),
    .INIT_06(256'h94A5B6C6D7E7F808192939495969798998A8B8C7D7E6F504142332414F5E6D7C),
    .INIT_07(256'h53677A8DA0B2C5D8EAFD10223447596B7D8FA1B3C4D6E8F90B1C2E3F50617283),
    .INIT_08(256'hCADFF50A1F34495E73889DB1C6DBEF03182C4054687C90A4B8CCDFF3061A2D40),
    .INIT_09(256'hF9112840576E869DB4CBE2F910263D546A8197AEC4DAF0061C32485E74899FB5),
    .INIT_0A(256'hE3FC163049637C95AFC8E1FA132C455E768FA8C0D9F109223A526A829AB2CAE1),
    .INIT_0B(256'h88A4C0DBF7132E4A65809CB7D2ED08233E58738EA8C3DDF8122C47617B95AFC9),
    .INIT_0C(256'hEC0A284563819EBCD9F714314E6B88A5C2DFFC1935526E8BA7C4E0FC1834506C),
    .INIT_0D(256'h113050708FAFCEEE0D2D4C6B8AA9C8E70625446281A0BEDDFB1938567492B0CE),
    .INIT_0E(256'hF81A3B5D7EA0C1E20425466788A9CAEB0C2D4D6E8EAFCFF01030517191B1D1F1),
    .INIT_0F(256'hA5C8EC0F3256799CBFE205284B6D90B3D6F81B3D5F82A4C6E90B2D4F7193B4D6),
    .INIT_10(256'h1A3F6489AED3F81D42668BB0D4F91D42668AAFD3F71B3F6387ABCFF3163A5E81),
    .INIT_11(256'h5980A7CEF41B41688EB5DB01284E749AC0E60C32587DA3C9EF143A5F85AACFF4),
    .INIT_12(256'h678FB8E008305880A8D0F820486F97BFE60E355D84ACD3FA21497097BEE50C33),
    .INIT_13(256'h466F99C3EC163F6992BCE50E38618AB3DC052E5780A9D2FA234C749DC5EE163F),
    .INIT_14(256'hF8234E79A4CFFA25507AA5D0FA254F7AA4CFF9234E78A2CCF6204A749EC8F21C),
    .INIT_15(256'h82AEDB07335F8BB7E30F3B6793BFEB16426E99C5F01C47739ECAF5204C77A2CD),
    .INIT_16(256'hE714416F9CC9F624517EABD805325F8CB9E6123F6C99C5F21F4B78A4D1FD2956),
    .INIT_17(256'h295886B4E3113F6D9CCAF8265482B0DE0C3A6896C3F11F4D7AA8D603315E8CB9),
    .INIT_18(256'h4E7DACDB0B3A6998C7F6255483B2E1103F6E9DCCFA295886B5E412416F9ECCFB),
    .INIT_19(256'h5787B7E7174777A7D707376797C6F6265685B5E5144473A3D202316190C0EF1E),
    .INIT_1A(256'h4A7BABDC0D3D6E9FCF00306191C2F2235384B4E4154575A6D606366797C7F727),
    .INIT_1B(256'h295B8CBDEE205182B3E4154678A9DA0B3C6D9ECF00316293C3F4255687B8E819),
    .INIT_1C(256'hF92B5D8EC0F2235586B8EA1B4D7EB0E1134476A7D90A3C6D9FD001336495C7F8),
    .INIT_1D(256'hBDEF215385B7E91B4D7FB1E3154779ABDC0E4072A4D607396B9DCF00326496C7),
    .INIT_1E(256'h7AACDE104274A7D90B3D6FA1D406386A9CCE00326597C9FB2D5F91C3F527598B),
    .INIT_1F(256'h326496C9FB2D5F92C4F6285B8DBFF1245688BAED1F5183B6E81A4C7EB1E31547),
    .INIT_20(256'hEB1D4F82B4E6184A7DAFE1134678AADC0F4173A5D80A3C6EA1D305376A9CCE00),
    .INIT_21(256'hA7D90B3D6FA1D30537699BCE00326496C8FA2C5F91C3F527598CBEF0225486B9),
    .INIT_22(256'h6A9CCE00316395C7F92A5C8EC0F2245587B9EB1D4F81B3E517497BADDF114375),
    .INIT_23(256'h396B9CCDFF306193C4F627598ABCED1F5082B3E516487AABDD0E4072A3D50739),
    .INIT_24(256'h184879AADB0C3D6D9ECF00316293C4F5265788BAEB1C4D7EAFE0124374A5D708),
    .INIT_25(256'h09396999CAFA2A5A8BBBEB1C4C7CADDD0E3E6F9FD000316192C3F3245585B6E7),
    .INIT_26(256'h1140709FCFFE2E5D8DBCEC1B4B7BAADA0A3A6999C9F9295989B9E9194979A9D9),
    .INIT_27(256'h346291BFEE1C4B7AA8D706346392C1F01F4E7DACDB0A396897C6F5255483B2E2),
    .INIT_28(256'h74A2CFFD2A5886B3E10F3D6A98C6F422507EACDA08366493C1EF1D4C7AA8D705),
    .INIT_29(256'hD7032F5C88B5E10E3B6794C1EE1A4774A1CEFB285582AFDC0A376491BFEC1947),
    .INIT_2A(256'h5E89B4E00B36628DB9E4103B6792BEEA15416D99C5F11D4975A1CDF925527EAA),
    .INIT_2B(256'h0E38628CB6E00A345E88B2DD07315C86B1DB06305B86B0DB06315C87B2DD0833),
    .INIT_2C(256'hEA123B638CB4DD062E5780A9D2FB244D769FC8F21B446E97C1EA143D6791BAE4),
    .INIT_2D(256'hF41B426990B7DF062D547CA3CBF21A416991B8E008305880A8D0F820487199C1),
    .INIT_2E(256'h31567BA1C6EC11375D83A8CEF41A40668CB2D8FF254B7298BFE50C325980A7CD),
    .INIT_2F(256'hA2C6EA0D3155799DC1E5092D51769ABEE3072C50759ABEE3082D52779CC1E60C),
    .INIT_30(256'h4C6D8FB1D3F5173A5C7EA1C3E5082A4D7093B5D8FB1E416487AACEF114385B7F),
    .INIT_31(256'h2F4F6F8FAFD0F01031517292B3D3F41536577899BADBFC1E3F6082A3C5E6082A),
    .INIT_32(256'h506E8CAAC8E7052342607F9EBCDBFA1938577695B4D3F31232517190B0D0EF0F),
    .INIT_33(256'hB0CCE804203C597592AECBE704213E5B7895B2CFEC092744627F9DBBD8F61432),
    .INIT_34(256'h516B859FB9D4EE08233D58728DA8C2DDF8132E4964809BB6D2ED0925405C7894),
    .INIT_35(256'h364E667E96AEC6DEF70F274058718AA2BBD4ED061F38516B849DB7D0EA041D37),
    .INIT_36(256'h61778CA2B8CEE4FA10263C52697F96ACC3DAF0071E354C637A92A9C0D8EF071F),
    .INIT_37(256'hD3E6FA0D2134485C708498ACC0D4E8FD11253A4F63788DA2B7CCE1F60B21364B),
    .INIT_38(256'h8E9FB0C1D2E4F507182A3C4D5F718395A7B9CCDEF00316283B4E60738699ADC0),
    .INIT_39(256'h93A2B1BFCEDDECFC0B1A2939485868778797A7B7C7D7E7F80819293A4A5B6C7D),
    .INIT_3A(256'hE4F0FC0915222F3C4855626F7D8A97A4B2BFCDDBE8F60412202E3C4B59677684),
    .INIT_3B(256'h818B959FA9B3BEC8D2DDE8F2FD08131E29343F4A56616D7884909BA7B3BFCBD7),
    .INIT_3C(256'h6C737B828A929AA2AAB2BAC2CAD3DBE4EDF5FE071019222B343E47505A646D77),
    .INIT_3D(256'hA4A9AEB4B9BEC4C9CFD4DAE0E6ECF2F8FE040B11181E252C323940474E565D64),
    .INIT_3E(256'h2B2E313336393C3F4245494C5053575A5E62666A6E72767A7F83888C91969A9F),
    .INIT_3F(256'h02020202020303040505060708090A0B0D0E0F11121416181A1C1E2022242729),
    .INIT_40(256'h272422201E1C1A18161412110F0E0D0B0A090807060505040303020202020201),
    .INIT_41(256'h9A96918C88837F7A76726E6A66625E5A5753504C4945423F3C393633312E2B29),
    .INIT_42(256'h5D564E474039322C251E18110B04FEF8F2ECE6E0DAD4CFC9C4BEB9B4AEA9A49F),
    .INIT_43(256'h6D645A50473E342B22191007FEF5EDE4DBD3CAC2BAB2AAA29A928A827B736C64),
    .INIT_44(256'hCBBFB3A79B9084786D61564A3F34291E1308FDF2E8DDD2C8BEB3A99F958B8177),
    .INIT_45(256'h7667594B3C2E201204F6E8DBCDBFB2A4978A7D6F6255483C2F221509FCF0E4D7),
    .INIT_46(256'h6C5B4A3A291908F8E7D7C7B7A797877768584839291A0BFCECDDCEBFB1A29384),
    .INIT_47(256'hAD998673604E3B281603F0DECCB9A79583715F4D3C2A1807F5E4D2C1B09F8E7D),
    .INIT_48(256'h36210BF6E1CCB7A28D78634F3A2511FDE8D4C0AC9884705C4834210DFAE6D3C0),
    .INIT_49(256'h07EFD8C0A9927A634C351E07F0DAC3AC967F69523C2610FAE4CEB8A28C77614B),
    .INIT_4A(256'h1D04EAD0B79D846B51381F06EDD4BBA28A715840270FF7DEC6AE967E664E361F),
    .INIT_4B(256'h785C402509EDD2B69B8064492E13F8DDC2A88D72583D2308EED4B99F856B5137),
    .INIT_4C(256'h14F6D8BB9D7F62442709ECCFB295785B3E2104E7CBAE9275593C2004E8CCB094),
    .INIT_4D(256'hEFD0B09071513212F3D3B49576573819FADBBC9E7F60422305E7C8AA8C6E5032),
    .INIT_4E(256'h08E6C5A382603F1EFCDBBA9978573615F4D3B39272513110F0D0AF8F6F4F2F0F),
    .INIT_4F(256'h5B3814F1CEAA8764411EFBD8B593704D2A08E5C3A17E5C3A17F5D3B18F6D4C2A),
    .INIT_50(256'hE6C19C77522D08E3BE9A75502C07E3BE9A76512D09E5C19D7955310DEAC6A27F),
    .INIT_51(256'hA78059320CE5BF98724B25FFD8B28C66401AF4CEA8835D3711ECC6A17B56310C),
    .INIT_52(256'h99714820F8D0A880583008E0B89169411AF2CBA37C542D06DFB79069421BF4CD),
    .INIT_53(256'hBA91673D14EAC1976E441BF2C89F764D24FBD2A980572E06DDB48C633B12EAC1),
    .INIT_54(256'h08DDB2875C3106DBB0865B3006DBB1865C3107DDB2885E340AE0B68C62380EE4),
    .INIT_55(256'h7E5225F9CDA175491DF1C5996D4115EABE92673B10E4B98D62360BE0B4895E33),
    .INIT_56(256'h19ECBF9164370ADCAF825528FBCEA174471AEEC194673B0EE1B5885C2F03D7AA),
    .INIT_57(256'hD7A87A4C1DEFC193643608DAAC7E5022F4C6986A3D0FE1B386582AFDCFA27447),
    .INIT_58(256'hB2835425F5C69768390ADBAC7D4E1FF0C192633406D7A87A4B1CEEBF91623405),
    .INIT_59(256'hA9794919E9B9895929F9C999693A0ADAAA7B4B1BECBC8D5D2EFECF9F704011E2),
    .INIT_5A(256'hB6855524F3C392613100D09F6F3E0EDDAD7C4C1CEBBB8B5A2AFACA99693909D9),
    .INIT_5B(256'hD7A5744312E0AF7E4D1CEBBA885726F5C493623100CF9E6D3D0CDBAA794818E7),
    .INIT_5C(256'h07D5A372400EDDAB7A4816E5B382501FEDBC8A5927F6C4936130FFCD9C6B3908),
    .INIT_5D(256'h4311DFAD7B4917E5B3814F1DEBB9875524F2C08E5C2AF9C795633100CE9C6A39),
    .INIT_5E(256'h865422F0BE8C5927F5C3915F2CFAC896643200CE9B693705D3A16F3D0BD9A775),
    .INIT_5F(256'hCE9C6A3705D3A16E3C0AD8A573410FDCAA784613E1AF7D4A18E6B4824F1DEBB9),
    .INIT_60(256'h15E3B17E4C1AE8B683511FEDBA885624F1BF8D5B28F6C4925F2DFBC996643200),
    .INIT_61(256'h5927F5C3915F2DFBC997653200CE9C6A3806D4A16F3D0BD9A7744210DEAC7A47),
    .INIT_62(256'h96643200CF9D6B3907D6A472400EDCAB794715E3B17F4D1BE9B7855321EFBD8B),
    .INIT_63(256'hC795643301D09F6D3C0AD9A7764413E1B07E4D1BEAB8865523F2C08E5D2BF9C7),
    .INIT_64(256'hE8B8875625F4C393623100CF9E6D3C0BDAA9784615E4B3825120EEBD8C5B29F8),
    .INIT_65(256'hF7C797673606D6A6754515E4B4845323F2C291613000CF9F6E3D0DDCAB7B4A19),
    .INIT_66(256'hEFC090613102D2A3734414E5B5855626F6C697673707D7A7774717E7B7875727),
    .INIT_67(256'hCC9E6F4112E4B5865829FACC9D6E3F10E1B2835425F6C798693A0BDBAC7D4E1E),
    .INIT_68(256'h8C5E3103D6A87A4D1FF1C396683A0CDEB0825426F8CA9C6D3F11E3B4865829FB),
    .INIT_69(256'h29FDD1A4784B1FF2C5996C3F12E6B98C5F3205D8AB7E5124F6C99C6F4114E7B9),
    .INIT_6A(256'hA2774C20F5CA9E73471CF0C5996E4216EBBF93673B0FE3B78B5F3307DBAE8256),
    .INIT_6B(256'hF2C89E744A20F6CCA2784E23F9CFA47A4F25FAD0A57A5025FACFA4794E23F8CD),
    .INIT_6C(256'h16EEC59D744C23FAD2A980572E05DCB38A61380EE5BC92693F16ECC3996F461C),
    .INIT_6D(256'h0CE5BE97704921FAD3AC845D350EE6BF976F4820F8D0A880583008E0B88F673F),
    .INIT_6E(256'hCFAA855F3A14EFC9A37D58320CE6C09A744E2801DBB58E68411BF4CEA7805933),
    .INIT_6F(256'h5E3A16F3CFAB87633F1BF7D3AF8A66421DF9D4B08B66421DF8D3AE89643F1AF4),
    .INIT_70(256'hB493714F2D0BE9C6A4825F3D1BF8D6B3906D4B2805E2BF9C7956320FECC8A581),
    .INIT_71(256'hD1B19171513010F0CFAF8E6E4D2D0CEBCAA98867462504E2C1A07E5D3B1AF8D6),
    .INIT_72(256'hB09274563819FBDDBEA08162442506E7C8A98A6B4C2D0DEECEAF8F70503011F1),
    .INIT_73(256'h503418FCE0C4A78B6E523519FCDFC2A5886B4E3114F7D9BC9E816345280AECCE),
    .INIT_74(256'hAF957B61472C12F8DDC3A88E73583E2308EDD2B79C80654A2E13F7DBC0A4886C),
    .INIT_75(256'hCAB29A826A523A2209F1D9C0A88F765E452C13FAE1C8AF957C63493016FCE3C9),
    .INIT_76(256'h9F89745E48321C06F0DAC4AE97816A543D2610F9E2CBB49D866E57402811F9E1),
    .INIT_77(256'h2D1A06F3DFCCB8A4907C6854402C1803EFDBC6B19D88735E49341F0AF5DFCAB5),
    .INIT_78(256'h7261503F2E1C0BF9E8D6C4B3A18F7D6B5947342210FDEAD8C5B2A08D7A675340),
    .INIT_79(256'h6D5E4F4132231404F5E6D7C7B8A898897969594939291908F8E7D7C6B6A59483),
    .INIT_7A(256'h1C1004F7EBDED1C4B8AB9E918376695C4E413325180AFCEEE0D2C4B5A7998A7C),
    .INIT_7B(256'h7F756B61574D42382E23180E03F8EDE2D7CCC1B6AA9F93887C7065594D413529),
    .INIT_7C(256'h948D857E766E665E564E463E362D251C130B02F9F0E7DED5CCC2B9B0A69C9389),
    .INIT_7D(256'h5C57524C47423C37312C26201A140E0802FCF5EFE8E2DBD4CEC7C0B9B2AAA39C),
    .INIT_7E(256'hD5D2CFCDCAC7C4C1BEBBB7B4B0ADA9A6A29E9A96928E8A86817D78746F6A6661),
    .INIT_7F(256'hFEFEFEFEFEFDFDFCFBFBFAF9F8F7F6F5F3F2F1EFEEECEAE8E6E4E2E0DEDCD9D7),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(0)) 
    data_a_reg_0
       (.ADDRARDADDR({1'b1,sel,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,data_a_reg_1_i_1_n_0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_a_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_a_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ref_clk_i),
        .CLKBWRCLK(ref_clk_i),
        .DBITERR(NLW_data_a_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_a_reg_0_DOADO_UNCONNECTED[31:8],dds_cos_o[7:0]}),
        .DOBDO({NLW_data_a_reg_0_DOBDO_UNCONNECTED[31:8],dds_sin_o[7:0]}),
        .DOPADOP(NLW_data_a_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_a_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_a_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_a_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_a_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_a_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_a_reg_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "nco_inst1/rom_12.rom12_inst/data_a" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "8" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_01(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_02(256'h7E7E7E7E7E7E7E7E7E7E7E7E7E7E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_03(256'h7D7D7D7D7D7D7D7D7D7D7D7D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E),
    .INIT_04(256'h7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7D7D7D7D7D7D7D7D7D7D7D7D7D7D),
    .INIT_05(256'h7A7A7A7A7A7A7A7A7A7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7C7C7C7C),
    .INIT_06(256'h78787878787878797979797979797979797979797979797A7A7A7A7A7A7A7A7A),
    .INIT_07(256'h7676767676767676767677777777777777777777777777777878787878787878),
    .INIT_08(256'h7373737474747474747474747474747575757575757575757575757576767676),
    .INIT_09(256'h7071717171717171717171717272727272727272727272737373737373737373),
    .INIT_0A(256'h6D6D6E6E6E6E6E6E6E6E6E6E6F6F6F6F6F6F6F6F6F6F70707070707070707070),
    .INIT_0B(256'h6A6A6A6A6A6B6B6B6B6B6B6B6B6B6C6C6C6C6C6C6C6C6C6C6D6D6D6D6D6D6D6D),
    .INIT_0C(256'h666767676767676767676868686868686868686969696969696969696A6A6A6A),
    .INIT_0D(256'h6363636363636363646464646464646465656565656565656566666666666666),
    .INIT_0E(256'h5E5F5F5F5F5F5F5F606060606060606061616161616161616262626262626262),
    .INIT_0F(256'h5A5A5A5B5B5B5B5B5B5B5C5C5C5C5C5C5C5C5D5D5D5D5D5D5D5E5E5E5E5E5E5E),
    .INIT_10(256'h565656565656565757575757575758585858585858595959595959595A5A5A5A),
    .INIT_11(256'h5151515151525252525252535353535353535454545454545455555555555555),
    .INIT_12(256'h4C4C4C4C4D4D4D4D4D4D4D4E4E4E4E4E4E4F4F4F4F4F4F4F5050505050505151),
    .INIT_13(256'h47474747474848484848484949494949494A4A4A4A4A4A4A4B4B4B4B4B4B4C4C),
    .INIT_14(256'h4142424242424243434343434344444444444445454545454546464646464647),
    .INIT_15(256'h3C3C3C3D3D3D3D3D3D3E3E3E3E3E3E3F3F3F3F3F3F4040404040404141414141),
    .INIT_16(256'h3637373737373738383838383939393939393A3A3A3A3A3A3B3B3B3B3B3B3C3C),
    .INIT_17(256'h3131313131323232323232333333333334343434343435353535353636363636),
    .INIT_18(256'h2B2B2B2B2C2C2C2C2C2C2D2D2D2D2D2E2E2E2E2E2E2F2F2F2F2F303030303030),
    .INIT_19(256'h252525252626262626272727272727282828282829292929292A2A2A2A2A2A2B),
    .INIT_1A(256'h1F1F1F1F20202020202121212121212222222222232323232324242424242425),
    .INIT_1B(256'h19191919191A1A1A1A1A1B1B1B1B1B1C1C1C1C1C1D1D1D1D1D1D1E1E1E1E1E1F),
    .INIT_1C(256'h1213131313131414141414151515151516161616161717171717181818181818),
    .INIT_1D(256'h0C0C0D0D0D0D0D0E0E0E0E0E0F0F0F0F0F101010101011111111111212121212),
    .INIT_1E(256'h0606060707070707080808080809090909090A0A0A0A0A0A0B0B0B0B0B0C0C0C),
    .INIT_1F(256'h0000000000010101010102020202020303030303040404040405050505050606),
    .INIT_20(256'hF9FAFAFAFAFAFBFBFBFBFBFCFCFCFCFCFDFDFDFDFDFEFEFEFEFEFFFFFFFFFF00),
    .INIT_21(256'hF3F3F4F4F4F4F4F5F5F5F5F5F6F6F6F6F6F6F7F7F7F7F7F8F8F8F8F8F9F9F9F9),
    .INIT_22(256'hEDEDEDEEEEEEEEEEEEEFEFEFEFEFF0F0F0F0F0F1F1F1F1F1F2F2F2F2F2F3F3F3),
    .INIT_23(256'hE7E7E7E7E7E8E8E8E8E8E9E9E9E9E9EAEAEAEAEAEBEBEBEBEBECECECECECEDED),
    .INIT_24(256'hE1E1E1E1E1E2E2E2E2E2E3E3E3E3E3E3E4E4E4E4E4E5E5E5E5E5E6E6E6E6E6E7),
    .INIT_25(256'hDBDBDBDBDBDBDCDCDCDCDCDDDDDDDDDDDEDEDEDEDEDFDFDFDFDFDFE0E0E0E0E0),
    .INIT_26(256'hD5D5D5D5D5D5D6D6D6D6D6D7D7D7D7D7D8D8D8D8D8D8D9D9D9D9D9DADADADADA),
    .INIT_27(256'hCFCFCFCFCFD0D0D0D0D0D1D1D1D1D1D1D2D2D2D2D2D3D3D3D3D3D3D4D4D4D4D4),
    .INIT_28(256'hC9C9C9C9CACACACACACBCBCBCBCBCBCCCCCCCCCCCDCDCDCDCDCDCECECECECECF),
    .INIT_29(256'hC3C4C4C4C4C4C4C5C5C5C5C5C5C6C6C6C6C6C6C7C7C7C7C7C8C8C8C8C8C8C9C9),
    .INIT_2A(256'hBEBEBEBEBFBFBFBFBFBFC0C0C0C0C0C0C1C1C1C1C1C1C2C2C2C2C2C2C3C3C3C3),
    .INIT_2B(256'hB9B9B9B9B9B9BABABABABABABBBBBBBBBBBBBCBCBCBCBCBCBDBDBDBDBDBDBEBE),
    .INIT_2C(256'hB3B4B4B4B4B4B4B5B5B5B5B5B5B5B6B6B6B6B6B6B7B7B7B7B7B7B8B8B8B8B8B8),
    .INIT_2D(256'hAEAFAFAFAFAFAFB0B0B0B0B0B0B0B1B1B1B1B1B1B2B2B2B2B2B2B2B3B3B3B3B3),
    .INIT_2E(256'hAAAAAAAAAAAAABABABABABABABACACACACACACACADADADADADADAEAEAEAEAEAE),
    .INIT_2F(256'hA5A5A5A6A6A6A6A6A6A6A7A7A7A7A7A7A7A8A8A8A8A8A8A8A9A9A9A9A9A9A9AA),
    .INIT_30(256'hA1A1A1A1A1A1A2A2A2A2A2A2A2A3A3A3A3A3A3A3A3A4A4A4A4A4A4A4A5A5A5A5),
    .INIT_31(256'h9D9D9D9D9D9D9D9E9E9E9E9E9E9E9E9F9F9F9F9F9F9F9FA0A0A0A0A0A0A0A1A1),
    .INIT_32(256'h9999999999999A9A9A9A9A9A9A9A9A9B9B9B9B9B9B9B9B9C9C9C9C9C9C9C9C9D),
    .INIT_33(256'h9595959696969696969696969797979797979797979898989898989898989999),
    .INIT_34(256'h9292929292929293939393939393939393949494949494949494959595959595),
    .INIT_35(256'h8F8F8F8F8F8F8F8F8F9090909090909090909091919191919191919191929292),
    .INIT_36(256'h8C8C8C8C8C8C8C8C8D8D8D8D8D8D8D8D8D8D8D8E8E8E8E8E8E8E8E8E8E8E8F8F),
    .INIT_37(256'h8989898A8A8A8A8A8A8A8A8A8A8A8A8A8B8B8B8B8B8B8B8B8B8B8B8B8C8C8C8C),
    .INIT_38(256'h8787878787878788888888888888888888888888888989898989898989898989),
    .INIT_39(256'h8585858585858585868686868686868686868686868686868787878787878787),
    .INIT_3A(256'h8383838484848484848484848484848484848484848485858585858585858585),
    .INIT_3B(256'h8282828282828282828282828283838383838383838383838383838383838383),
    .INIT_3C(256'h8181818181818181818181818181818181818182828282828282828282828282),
    .INIT_3D(256'h8080808080808080808080808080808080818181818181818181818181818181),
    .INIT_3E(256'h8080808080808080808080808080808080808080808080808080808080808080),
    .INIT_3F(256'h8080808080808080808080808080808080808080808080808080808080808080),
    .INIT_40(256'h8080808080808080808080808080808080808080808080808080808080808080),
    .INIT_41(256'h8080808080808080808080808080808080808080808080808080808080808080),
    .INIT_42(256'h8181818181818181818181818181808080808080808080808080808080808080),
    .INIT_43(256'h8282828282828282828282828181818181818181818181818181818181818181),
    .INIT_44(256'h8383838383838383838383838383838383838282828282828282828282828282),
    .INIT_45(256'h8585858585858585858484848484848484848484848484848484848483838383),
    .INIT_46(256'h8787878787878786868686868686868686868686868686858585858585858585),
    .INIT_47(256'h8989898989898989898988888888888888888888888888888787878787878787),
    .INIT_48(256'h8C8C8C8B8B8B8B8B8B8B8B8B8B8B8B8A8A8A8A8A8A8A8A8A8A8A8A8A89898989),
    .INIT_49(256'h8F8E8E8E8E8E8E8E8E8E8E8E8D8D8D8D8D8D8D8D8D8D8D8C8C8C8C8C8C8C8C8C),
    .INIT_4A(256'h929291919191919191919191909090909090909090908F8F8F8F8F8F8F8F8F8F),
    .INIT_4B(256'h9595959595949494949494949494939393939393939393939292929292929292),
    .INIT_4C(256'h9998989898989898989897979797979797979796969696969696969695959595),
    .INIT_4D(256'h9C9C9C9C9C9C9C9C9B9B9B9B9B9B9B9B9A9A9A9A9A9A9A9A9A99999999999999),
    .INIT_4E(256'hA1A0A0A0A0A0A0A09F9F9F9F9F9F9F9F9E9E9E9E9E9E9E9E9D9D9D9D9D9D9D9D),
    .INIT_4F(256'hA5A5A5A4A4A4A4A4A4A4A3A3A3A3A3A3A3A3A2A2A2A2A2A2A2A1A1A1A1A1A1A1),
    .INIT_50(256'hA9A9A9A9A9A9A9A8A8A8A8A8A8A8A7A7A7A7A7A7A7A6A6A6A6A6A6A6A5A5A5A5),
    .INIT_51(256'hAEAEAEAEAEADADADADADADACACACACACACACABABABABABABABAAAAAAAAAAAAAA),
    .INIT_52(256'hB3B3B3B3B2B2B2B2B2B2B2B1B1B1B1B1B1B0B0B0B0B0B0B0AFAFAFAFAFAFAEAE),
    .INIT_53(256'hB8B8B8B8B8B7B7B7B7B7B7B6B6B6B6B6B6B5B5B5B5B5B5B5B4B4B4B4B4B4B3B3),
    .INIT_54(256'hBEBDBDBDBDBDBDBCBCBCBCBCBCBBBBBBBBBBBBBABABABABABAB9B9B9B9B9B9B8),
    .INIT_55(256'hC3C3C3C2C2C2C2C2C2C1C1C1C1C1C1C0C0C0C0C0C0BFBFBFBFBFBFBEBEBEBEBE),
    .INIT_56(256'hC9C8C8C8C8C8C8C7C7C7C7C7C6C6C6C6C6C6C5C5C5C5C5C5C4C4C4C4C4C4C3C3),
    .INIT_57(256'hCECECECECECDCDCDCDCDCDCCCCCCCCCCCBCBCBCBCBCBCACACACACAC9C9C9C9C9),
    .INIT_58(256'hD4D4D4D4D3D3D3D3D3D3D2D2D2D2D2D1D1D1D1D1D1D0D0D0D0D0CFCFCFCFCFCF),
    .INIT_59(256'hDADADADAD9D9D9D9D9D8D8D8D8D8D8D7D7D7D7D7D6D6D6D6D6D5D5D5D5D5D5D4),
    .INIT_5A(256'hE0E0E0E0DFDFDFDFDFDFDEDEDEDEDEDDDDDDDDDDDCDCDCDCDCDBDBDBDBDBDBDA),
    .INIT_5B(256'hE6E6E6E6E6E5E5E5E5E5E4E4E4E4E4E3E3E3E3E3E3E2E2E2E2E2E1E1E1E1E1E0),
    .INIT_5C(256'hEDECECECECECEBEBEBEBEBEAEAEAEAEAE9E9E9E9E9E8E8E8E8E8E7E7E7E7E7E7),
    .INIT_5D(256'hF3F3F2F2F2F2F2F1F1F1F1F1F0F0F0F0F0EFEFEFEFEFEEEEEEEEEEEEEDEDEDED),
    .INIT_5E(256'hF9F9F9F8F8F8F8F8F7F7F7F7F7F6F6F6F6F6F6F5F5F5F5F5F4F4F4F4F4F3F3F3),
    .INIT_5F(256'hFFFFFFFFFFFEFEFEFEFEFDFDFDFDFDFCFCFCFCFCFBFBFBFBFBFAFAFAFAFAF9F9),
    .INIT_60(256'h0605050505050404040404030303030302020202020101010101000000000000),
    .INIT_61(256'h0C0C0B0B0B0B0B0A0A0A0A0A0A09090909090808080808070707070706060606),
    .INIT_62(256'h12121212111111111110101010100F0F0F0F0F0E0E0E0E0E0D0D0D0D0D0C0C0C),
    .INIT_63(256'h1818181818171717171716161616161515151515141414141413131313131212),
    .INIT_64(256'h1E1E1E1E1E1D1D1D1D1D1D1C1C1C1C1C1B1B1B1B1B1A1A1A1A1A191919191918),
    .INIT_65(256'h2424242424242323232323222222222221212121212120202020201F1F1F1F1F),
    .INIT_66(256'h2A2A2A2A2A2A2929292929282828282827272727272726262626262525252525),
    .INIT_67(256'h30303030302F2F2F2F2F2E2E2E2E2E2E2D2D2D2D2D2C2C2C2C2C2C2B2B2B2B2B),
    .INIT_68(256'h3636363635353535353434343434343333333333323232323232313131313130),
    .INIT_69(256'h3C3B3B3B3B3B3B3A3A3A3A3A3A39393939393938383838383737373737373636),
    .INIT_6A(256'h414141414040404040403F3F3F3F3F3F3E3E3E3E3E3E3D3D3D3D3D3D3C3C3C3C),
    .INIT_6B(256'h4646464646464545454545454444444444444343434343434242424242424141),
    .INIT_6C(256'h4C4B4B4B4B4B4B4A4A4A4A4A4A4A494949494949484848484848474747474747),
    .INIT_6D(256'h515050505050504F4F4F4F4F4F4F4E4E4E4E4E4E4D4D4D4D4D4D4D4C4C4C4C4C),
    .INIT_6E(256'h5555555555555454545454545453535353535353525252525252515151515151),
    .INIT_6F(256'h5A5A5A5959595959595958585858585858575757575757575656565656565655),
    .INIT_70(256'h5E5E5E5E5E5E5D5D5D5D5D5D5D5C5C5C5C5C5C5C5C5B5B5B5B5B5B5B5A5A5A5A),
    .INIT_71(256'h62626262626262616161616161616160606060606060605F5F5F5F5F5F5F5E5E),
    .INIT_72(256'h6666666666666565656565656565656464646464646464636363636363636362),
    .INIT_73(256'h6A6A6A6969696969696969696868686868686868686767676767676767676666),
    .INIT_74(256'h6D6D6D6D6D6D6D6C6C6C6C6C6C6C6C6C6C6B6B6B6B6B6B6B6B6B6A6A6A6A6A6A),
    .INIT_75(256'h7070707070707070706F6F6F6F6F6F6F6F6F6F6E6E6E6E6E6E6E6E6E6E6D6D6D),
    .INIT_76(256'h7373737373737373727272727272727272727271717171717171717171717070),
    .INIT_77(256'h7676767575757575757575757575757574747474747474747474747473737373),
    .INIT_78(256'h7878787878787877777777777777777777777777777676767676767676767676),
    .INIT_79(256'h7A7A7A7A7A7A7A7A797979797979797979797979797979797878787878787878),
    .INIT_7A(256'h7C7C7C7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7A7A7A7A7A7A7A7A7A7A),
    .INIT_7B(256'h7D7D7D7D7D7D7D7D7D7D7D7D7D7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C),
    .INIT_7C(256'h7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7D7D7D7D7D7D7D7D7D7D7D7D7D),
    .INIT_7D(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E),
    .INIT_7E(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_7F(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(0)) 
    data_a_reg_1
       (.ADDRARDADDR({1'b1,sel,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,data_a_reg_1_i_1_n_0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_a_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_a_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ref_clk_i),
        .CLKBWRCLK(ref_clk_i),
        .DBITERR(NLW_data_a_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_a_reg_1_DOADO_UNCONNECTED[31:8],dds_cos_o[15:8]}),
        .DOBDO({NLW_data_a_reg_1_DOBDO_UNCONNECTED[31:8],dds_sin_o[15:8]}),
        .DOPADOP(NLW_data_a_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_a_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_a_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_a_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_a_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_a_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_a_reg_1_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_a_reg_1_i_1
       (.I0(data_a_reg_1_1),
        .I1(poff_i[0]),
        .I2(out),
        .I3(data_a_reg_0_0[0]),
        .O(data_a_reg_1_i_1_n_0));
endmodule

module double_iq_pid_vco_demod2_nco_0_nco_counter_handcomm
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    axi_rvalid_reg_0,
    E,
    addr_s,
    axi_awready_reg_1,
    axi_awready_reg_2,
    axi_awready_reg_3,
    axi_awready_reg_4,
    D,
    read_en_s,
    s00_axi_wdata_0_sp_1,
    s00_axi_wdata_1_sp_1,
    \s00_axi_wdata[0]_0 ,
    s00_axi_reset,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    Q,
    \readdata_s_reg[1] ,
    enable_s,
    data3,
    s00_axi_arvalid,
    s00_axi_wdata,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output axi_rvalid_reg_0;
  output [0:0]E;
  output [2:0]addr_s;
  output [0:0]axi_awready_reg_1;
  output [0:0]axi_awready_reg_2;
  output [0:0]axi_awready_reg_3;
  output [0:0]axi_awready_reg_4;
  output [1:0]D;
  output read_en_s;
  output s00_axi_wdata_0_sp_1;
  output s00_axi_wdata_1_sp_1;
  output \s00_axi_wdata[0]_0 ;
  input s00_axi_reset;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [3:0]Q;
  input [1:0]\readdata_s_reg[1] ;
  input enable_s;
  input [1:0]data3;
  input s00_axi_arvalid;
  input [1:0]s00_axi_wdata;
  input s00_axi_bready;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;

  wire [1:0]D;
  wire [0:0]E;
  wire [3:0]Q;
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
  wire [0:0]axi_awready_reg_2;
  wire [0:0]axi_awready_reg_3;
  wire [0:0]axi_awready_reg_4;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [1:0]data3;
  wire enable_s;
  wire [2:0]read_addr_s;
  wire read_en_s;
  wire \readdata_s[0]_i_2_n_0 ;
  wire \readdata_s[0]_i_3_n_0 ;
  wire \readdata_s[0]_i_4_n_0 ;
  wire \readdata_s[0]_i_5_n_0 ;
  wire \readdata_s[1]_i_2_n_0 ;
  wire \readdata_s[1]_i_3_n_0 ;
  wire [1:0]\readdata_s_reg[1] ;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire [1:0]s00_axi_wdata;
  wire \s00_axi_wdata[0]_0 ;
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(axi_rvalid_reg_0),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
    .INIT(16'h0200)) 
    \cpt_off_s[31]_i_1 
       (.I0(write_en_s),
        .I1(addr_s[1]),
        .I2(addr_s[2]),
        .I3(addr_s[0]),
        .O(axi_awready_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cpt_step_low_s[31]_i_1 
       (.I0(write_en_s),
        .I1(addr_s[1]),
        .I2(addr_s[0]),
        .I3(addr_s[2]),
        .O(axi_awready_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \cpt_step_s[63]_i_1 
       (.I0(write_en_s),
        .I1(addr_s[1]),
        .I2(addr_s[0]),
        .I3(addr_s[2]),
        .O(E));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    enable_s_i_1
       (.I0(s00_axi_wdata[0]),
        .I1(write_en_s),
        .I2(addr_s[2]),
        .I3(addr_s[0]),
        .I4(addr_s[1]),
        .I5(enable_s),
        .O(s00_axi_wdata_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \max_accum_low_s[31]_i_1 
       (.I0(write_en_s),
        .I1(addr_s[1]),
        .I2(addr_s[2]),
        .I3(addr_s[0]),
        .O(axi_awready_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \max_accum_low_s[31]_i_2 
       (.I0(axi_awready_reg_0),
        .I1(axi_wready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(write_en_s));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \max_accum_s[39]_i_1 
       (.I0(write_en_s),
        .I1(addr_s[1]),
        .I2(addr_s[2]),
        .I3(addr_s[0]),
        .O(axi_awready_reg_3));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    pinc_sw_s_i_1
       (.I0(s00_axi_wdata[0]),
        .I1(write_en_s),
        .I2(addr_s[0]),
        .I3(addr_s[2]),
        .I4(addr_s[1]),
        .I5(data3[0]),
        .O(\s00_axi_wdata[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    poff_sw_s_i_1
       (.I0(s00_axi_wdata[1]),
        .I1(write_en_s),
        .I2(addr_s[0]),
        .I3(addr_s[2]),
        .I4(addr_s[1]),
        .I5(data3[1]),
        .O(s00_axi_wdata_1_sn_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readdata_s[0]_i_1 
       (.I0(\readdata_s[0]_i_2_n_0 ),
        .I1(\readdata_s[0]_i_3_n_0 ),
        .I2(addr_s[2]),
        .I3(\readdata_s[0]_i_4_n_0 ),
        .I4(addr_s[1]),
        .I5(\readdata_s[0]_i_5_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \readdata_s[0]_i_2 
       (.I0(addr_reg[0]),
        .I1(read_en_s),
        .I2(read_addr_s[0]),
        .I3(write_en_s),
        .I4(write_addr_s[0]),
        .I5(enable_s),
        .O(\readdata_s[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \readdata_s[0]_i_3 
       (.I0(Q[2]),
        .I1(addr_reg[0]),
        .I2(read_en_s),
        .I3(read_addr_s[0]),
        .I4(write_en_s),
        .I5(write_addr_s[0]),
        .O(\readdata_s[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \readdata_s[0]_i_4 
       (.I0(Q[0]),
        .I1(write_addr_s[0]),
        .I2(write_en_s),
        .I3(\readdata_s[1]_i_3_n_0 ),
        .I4(data3[0]),
        .O(\readdata_s[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \readdata_s[0]_i_5 
       (.I0(\readdata_s_reg[1] [0]),
        .I1(addr_reg[0]),
        .I2(read_en_s),
        .I3(read_addr_s[0]),
        .I4(write_en_s),
        .I5(write_addr_s[0]),
        .O(\readdata_s[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3033308830003088)) 
    \readdata_s[1]_i_1 
       (.I0(Q[3]),
        .I1(addr_s[2]),
        .I2(\readdata_s[1]_i_2_n_0 ),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\readdata_s_reg[1] [1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \readdata_s[1]_i_2 
       (.I0(Q[1]),
        .I1(write_addr_s[0]),
        .I2(write_en_s),
        .I3(\readdata_s[1]_i_3_n_0 ),
        .I4(data3[1]),
        .O(\readdata_s[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \readdata_s[1]_i_3 
       (.I0(read_addr_s[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_rvalid_reg_0),
        .I4(addr_reg[0]),
        .O(\readdata_s[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \readdata_s[31]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(axi_rvalid_reg_0),
        .O(read_en_s));
endmodule

module double_iq_pid_vco_demod2_nco_0_nco_counter_logic
   (cos_next,
    sin_fake_o,
    DI,
    \counter_s_reg[7]_0 ,
    \counter_s_reg[11]_0 ,
    \counter_s_reg[15]_0 ,
    \counter_s_reg[19]_0 ,
    \counter_s_reg[23]_0 ,
    \counter_s_reg[27]_0 ,
    counter_scale_s,
    trigger_o,
    cos_fake_o,
    dds_cos_o,
    dds_sin_o,
    ref_clk_i,
    ref_rst_i,
    int_rst_s,
    poff_i,
    out,
    data_a_reg_0,
    S,
    \counter_s_reg[7]_1 ,
    \counter_s_reg[11]_1 ,
    \counter_s_reg[15]_1 ,
    \counter_s_reg[19]_1 ,
    \counter_s_reg[23]_1 ,
    \counter_s_reg[27]_1 ,
    \counter_s_reg[31]_0 ,
    \counter_s_reg[35]_0 ,
    \counter_s_reg[39]_0 );
  output cos_next;
  output sin_fake_o;
  output [3:0]DI;
  output [3:0]\counter_s_reg[7]_0 ;
  output [3:0]\counter_s_reg[11]_0 ;
  output [3:0]\counter_s_reg[15]_0 ;
  output [3:0]\counter_s_reg[19]_0 ;
  output [3:0]\counter_s_reg[23]_0 ;
  output [3:0]\counter_s_reg[27]_0 ;
  output [10:0]counter_scale_s;
  output trigger_o;
  output cos_fake_o;
  output [15:0]dds_cos_o;
  output [15:0]dds_sin_o;
  input ref_clk_i;
  input ref_rst_i;
  input int_rst_s;
  input [11:0]poff_i;
  input [0:0]out;
  input [11:0]data_a_reg_0;
  input [3:0]S;
  input [3:0]\counter_s_reg[7]_1 ;
  input [3:0]\counter_s_reg[11]_1 ;
  input [3:0]\counter_s_reg[15]_1 ;
  input [3:0]\counter_s_reg[19]_1 ;
  input [3:0]\counter_s_reg[23]_1 ;
  input [3:0]\counter_s_reg[27]_1 ;
  input [3:0]\counter_s_reg[31]_0 ;
  input [3:0]\counter_s_reg[35]_0 ;
  input [3:0]\counter_s_reg[39]_0 ;

  wire [3:0]DI;
  wire [3:0]S;
  wire cos_fake_o;
  wire cos_fake_o_i_1_n_0;
  wire cos_next;
  wire counter_cos_off_s_carry__0_i_1_n_0;
  wire counter_cos_off_s_carry__0_i_2_n_0;
  wire counter_cos_off_s_carry__0_i_3_n_0;
  wire counter_cos_off_s_carry__0_i_4_n_0;
  wire counter_cos_off_s_carry__0_n_0;
  wire counter_cos_off_s_carry__0_n_1;
  wire counter_cos_off_s_carry__0_n_2;
  wire counter_cos_off_s_carry__0_n_3;
  wire counter_cos_off_s_carry__1_n_1;
  wire counter_cos_off_s_carry__1_n_2;
  wire counter_cos_off_s_carry__1_n_3;
  wire counter_cos_off_s_carry_i_1_n_0;
  wire counter_cos_off_s_carry_i_2_n_0;
  wire counter_cos_off_s_carry_i_3_n_0;
  wire counter_cos_off_s_carry_i_4_n_0;
  wire counter_cos_off_s_carry_n_0;
  wire counter_cos_off_s_carry_n_1;
  wire counter_cos_off_s_carry_n_2;
  wire counter_cos_off_s_carry_n_3;
  wire counter_old_s;
  wire \counter_s_reg[0]_i_2_n_0 ;
  wire \counter_s_reg[0]_i_2_n_1 ;
  wire \counter_s_reg[0]_i_2_n_2 ;
  wire \counter_s_reg[0]_i_2_n_3 ;
  wire \counter_s_reg[0]_i_2_n_4 ;
  wire \counter_s_reg[0]_i_2_n_5 ;
  wire \counter_s_reg[0]_i_2_n_6 ;
  wire \counter_s_reg[0]_i_2_n_7 ;
  wire [3:0]\counter_s_reg[11]_0 ;
  wire [3:0]\counter_s_reg[11]_1 ;
  wire \counter_s_reg[12]_i_1_n_0 ;
  wire \counter_s_reg[12]_i_1_n_1 ;
  wire \counter_s_reg[12]_i_1_n_2 ;
  wire \counter_s_reg[12]_i_1_n_3 ;
  wire \counter_s_reg[12]_i_1_n_4 ;
  wire \counter_s_reg[12]_i_1_n_5 ;
  wire \counter_s_reg[12]_i_1_n_6 ;
  wire \counter_s_reg[12]_i_1_n_7 ;
  wire [3:0]\counter_s_reg[15]_0 ;
  wire [3:0]\counter_s_reg[15]_1 ;
  wire \counter_s_reg[16]_i_1_n_0 ;
  wire \counter_s_reg[16]_i_1_n_1 ;
  wire \counter_s_reg[16]_i_1_n_2 ;
  wire \counter_s_reg[16]_i_1_n_3 ;
  wire \counter_s_reg[16]_i_1_n_4 ;
  wire \counter_s_reg[16]_i_1_n_5 ;
  wire \counter_s_reg[16]_i_1_n_6 ;
  wire \counter_s_reg[16]_i_1_n_7 ;
  wire [3:0]\counter_s_reg[19]_0 ;
  wire [3:0]\counter_s_reg[19]_1 ;
  wire \counter_s_reg[20]_i_1_n_0 ;
  wire \counter_s_reg[20]_i_1_n_1 ;
  wire \counter_s_reg[20]_i_1_n_2 ;
  wire \counter_s_reg[20]_i_1_n_3 ;
  wire \counter_s_reg[20]_i_1_n_4 ;
  wire \counter_s_reg[20]_i_1_n_5 ;
  wire \counter_s_reg[20]_i_1_n_6 ;
  wire \counter_s_reg[20]_i_1_n_7 ;
  wire [3:0]\counter_s_reg[23]_0 ;
  wire [3:0]\counter_s_reg[23]_1 ;
  wire \counter_s_reg[24]_i_1_n_0 ;
  wire \counter_s_reg[24]_i_1_n_1 ;
  wire \counter_s_reg[24]_i_1_n_2 ;
  wire \counter_s_reg[24]_i_1_n_3 ;
  wire \counter_s_reg[24]_i_1_n_4 ;
  wire \counter_s_reg[24]_i_1_n_5 ;
  wire \counter_s_reg[24]_i_1_n_6 ;
  wire \counter_s_reg[24]_i_1_n_7 ;
  wire [3:0]\counter_s_reg[27]_0 ;
  wire [3:0]\counter_s_reg[27]_1 ;
  wire \counter_s_reg[28]_i_1_n_0 ;
  wire \counter_s_reg[28]_i_1_n_1 ;
  wire \counter_s_reg[28]_i_1_n_2 ;
  wire \counter_s_reg[28]_i_1_n_3 ;
  wire \counter_s_reg[28]_i_1_n_4 ;
  wire \counter_s_reg[28]_i_1_n_5 ;
  wire \counter_s_reg[28]_i_1_n_6 ;
  wire \counter_s_reg[28]_i_1_n_7 ;
  wire [3:0]\counter_s_reg[31]_0 ;
  wire \counter_s_reg[32]_i_1_n_0 ;
  wire \counter_s_reg[32]_i_1_n_1 ;
  wire \counter_s_reg[32]_i_1_n_2 ;
  wire \counter_s_reg[32]_i_1_n_3 ;
  wire \counter_s_reg[32]_i_1_n_4 ;
  wire \counter_s_reg[32]_i_1_n_5 ;
  wire \counter_s_reg[32]_i_1_n_6 ;
  wire \counter_s_reg[32]_i_1_n_7 ;
  wire [3:0]\counter_s_reg[35]_0 ;
  wire \counter_s_reg[36]_i_1_n_1 ;
  wire \counter_s_reg[36]_i_1_n_2 ;
  wire \counter_s_reg[36]_i_1_n_3 ;
  wire \counter_s_reg[36]_i_1_n_4 ;
  wire \counter_s_reg[36]_i_1_n_5 ;
  wire \counter_s_reg[36]_i_1_n_6 ;
  wire \counter_s_reg[36]_i_1_n_7 ;
  wire [3:0]\counter_s_reg[39]_0 ;
  wire \counter_s_reg[4]_i_1_n_0 ;
  wire \counter_s_reg[4]_i_1_n_1 ;
  wire \counter_s_reg[4]_i_1_n_2 ;
  wire \counter_s_reg[4]_i_1_n_3 ;
  wire \counter_s_reg[4]_i_1_n_4 ;
  wire \counter_s_reg[4]_i_1_n_5 ;
  wire \counter_s_reg[4]_i_1_n_6 ;
  wire \counter_s_reg[4]_i_1_n_7 ;
  wire [3:0]\counter_s_reg[7]_0 ;
  wire [3:0]\counter_s_reg[7]_1 ;
  wire \counter_s_reg[8]_i_1_n_0 ;
  wire \counter_s_reg[8]_i_1_n_1 ;
  wire \counter_s_reg[8]_i_1_n_2 ;
  wire \counter_s_reg[8]_i_1_n_3 ;
  wire \counter_s_reg[8]_i_1_n_4 ;
  wire \counter_s_reg[8]_i_1_n_5 ;
  wire \counter_s_reg[8]_i_1_n_6 ;
  wire \counter_s_reg[8]_i_1_n_7 ;
  wire [10:0]counter_scale_s;
  wire counter_sin_off_s_carry__0_i_1_n_0;
  wire counter_sin_off_s_carry__0_i_2_n_0;
  wire counter_sin_off_s_carry__0_i_3_n_0;
  wire counter_sin_off_s_carry__0_i_4_n_0;
  wire counter_sin_off_s_carry__0_n_0;
  wire counter_sin_off_s_carry__0_n_1;
  wire counter_sin_off_s_carry__0_n_2;
  wire counter_sin_off_s_carry__0_n_3;
  wire counter_sin_off_s_carry__0_n_4;
  wire counter_sin_off_s_carry__0_n_5;
  wire counter_sin_off_s_carry__0_n_6;
  wire counter_sin_off_s_carry__0_n_7;
  wire counter_sin_off_s_carry__1_n_1;
  wire counter_sin_off_s_carry__1_n_2;
  wire counter_sin_off_s_carry__1_n_3;
  wire counter_sin_off_s_carry__1_n_4;
  wire counter_sin_off_s_carry__1_n_5;
  wire counter_sin_off_s_carry__1_n_6;
  wire counter_sin_off_s_carry__1_n_7;
  wire counter_sin_off_s_carry_i_1_n_0;
  wire counter_sin_off_s_carry_i_2_n_0;
  wire counter_sin_off_s_carry_i_3_n_0;
  wire counter_sin_off_s_carry_i_4_n_0;
  wire counter_sin_off_s_carry_n_0;
  wire counter_sin_off_s_carry_n_1;
  wire counter_sin_off_s_carry_n_2;
  wire counter_sin_off_s_carry_n_3;
  wire counter_sin_off_s_carry_n_4;
  wire counter_sin_off_s_carry_n_5;
  wire counter_sin_off_s_carry_n_6;
  wire counter_sin_s_carry_i_1_n_0;
  wire counter_sin_s_carry_i_2_n_0;
  wire counter_sin_s_carry_n_2;
  wire counter_sin_s_carry_n_3;
  wire counter_sin_s_carry_n_6;
  wire counter_sin_s_carry_n_7;
  wire [11:0]data_a_reg_0;
  wire [15:0]dds_cos_o;
  wire [15:0]dds_sin_o;
  wire int_rst_s;
  wire [0:0]out;
  wire [11:0]poff_i;
  wire ref_clk_i;
  wire ref_rst_i;
  wire \rom_12.rom12_inst_n_0 ;
  wire \rom_12.rom12_inst_n_1 ;
  wire \rom_12.rom12_inst_n_2 ;
  wire \rom_12.rom12_inst_n_3 ;
  wire \rom_12.rom12_inst_n_4 ;
  wire \rom_12.rom12_inst_n_5 ;
  wire \rom_12.rom12_inst_n_6 ;
  wire \rom_12.rom12_inst_n_7 ;
  wire [11:0]sel;
  wire sin_fake_o;
  wire sin_next;
  wire [1:0]trig_cpt_s;
  wire \trig_cpt_s[0]_i_1_n_0 ;
  wire \trig_cpt_s[1]_i_1_n_0 ;
  wire trigger_o;
  wire trigger_o_i_1_n_0;
  wire [3:3]NLW_counter_cos_off_s_carry__1_CO_UNCONNECTED;
  wire [3:3]\NLW_counter_s_reg[36]_i_1_CO_UNCONNECTED ;
  wire [0:0]NLW_counter_sin_off_s_carry_O_UNCONNECTED;
  wire [3:3]NLW_counter_sin_off_s_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_counter_sin_s_carry_CO_UNCONNECTED;
  wire [3:3]NLW_counter_sin_s_carry_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'hE)) 
    cos_fake_o_i_1
       (.I0(cos_next),
        .I1(ref_rst_i),
        .O(cos_fake_o_i_1_n_0));
  FDRE cos_fake_o_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(cos_fake_o_i_1_n_0),
        .Q(cos_fake_o),
        .R(1'b0));
  CARRY4 counter_cos_off_s_carry
       (.CI(1'b0),
        .CO({counter_cos_off_s_carry_n_0,counter_cos_off_s_carry_n_1,counter_cos_off_s_carry_n_2,counter_cos_off_s_carry_n_3}),
        .CYINIT(1'b0),
        .DI(counter_scale_s[3:0]),
        .O(sel[3:0]),
        .S({counter_cos_off_s_carry_i_1_n_0,counter_cos_off_s_carry_i_2_n_0,counter_cos_off_s_carry_i_3_n_0,counter_cos_off_s_carry_i_4_n_0}));
  CARRY4 counter_cos_off_s_carry__0
       (.CI(counter_cos_off_s_carry_n_0),
        .CO({counter_cos_off_s_carry__0_n_0,counter_cos_off_s_carry__0_n_1,counter_cos_off_s_carry__0_n_2,counter_cos_off_s_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter_scale_s[7:4]),
        .O(sel[7:4]),
        .S({counter_cos_off_s_carry__0_i_1_n_0,counter_cos_off_s_carry__0_i_2_n_0,counter_cos_off_s_carry__0_i_3_n_0,counter_cos_off_s_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_cos_off_s_carry__0_i_1
       (.I0(counter_scale_s[7]),
        .I1(poff_i[7]),
        .I2(out),
        .I3(data_a_reg_0[7]),
        .O(counter_cos_off_s_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_cos_off_s_carry__0_i_2
       (.I0(counter_scale_s[6]),
        .I1(poff_i[6]),
        .I2(out),
        .I3(data_a_reg_0[6]),
        .O(counter_cos_off_s_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_cos_off_s_carry__0_i_3
       (.I0(counter_scale_s[5]),
        .I1(poff_i[5]),
        .I2(out),
        .I3(data_a_reg_0[5]),
        .O(counter_cos_off_s_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_cos_off_s_carry__0_i_4
       (.I0(counter_scale_s[4]),
        .I1(poff_i[4]),
        .I2(out),
        .I3(data_a_reg_0[4]),
        .O(counter_cos_off_s_carry__0_i_4_n_0));
  CARRY4 counter_cos_off_s_carry__1
       (.CI(counter_cos_off_s_carry__0_n_0),
        .CO({NLW_counter_cos_off_s_carry__1_CO_UNCONNECTED[3],counter_cos_off_s_carry__1_n_1,counter_cos_off_s_carry__1_n_2,counter_cos_off_s_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,counter_scale_s[10:8]}),
        .O(sel[11:8]),
        .S({\rom_12.rom12_inst_n_0 ,\rom_12.rom12_inst_n_1 ,\rom_12.rom12_inst_n_2 ,\rom_12.rom12_inst_n_3 }));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_cos_off_s_carry_i_1
       (.I0(counter_scale_s[3]),
        .I1(poff_i[3]),
        .I2(out),
        .I3(data_a_reg_0[3]),
        .O(counter_cos_off_s_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_cos_off_s_carry_i_2
       (.I0(counter_scale_s[2]),
        .I1(poff_i[2]),
        .I2(out),
        .I3(data_a_reg_0[2]),
        .O(counter_cos_off_s_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_cos_off_s_carry_i_3
       (.I0(counter_scale_s[1]),
        .I1(poff_i[1]),
        .I2(out),
        .I3(data_a_reg_0[1]),
        .O(counter_cos_off_s_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_cos_off_s_carry_i_4
       (.I0(counter_scale_s[0]),
        .I1(poff_i[0]),
        .I2(out),
        .I3(data_a_reg_0[0]),
        .O(counter_cos_off_s_carry_i_4_n_0));
  FDRE counter_old_s_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(cos_next),
        .Q(counter_old_s),
        .R(1'b0));
  FDRE \counter_s_reg[0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[0]_i_2_n_7 ),
        .Q(DI[0]),
        .R(int_rst_s));
  CARRY4 \counter_s_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_s_reg[0]_i_2_n_0 ,\counter_s_reg[0]_i_2_n_1 ,\counter_s_reg[0]_i_2_n_2 ,\counter_s_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(DI),
        .O({\counter_s_reg[0]_i_2_n_4 ,\counter_s_reg[0]_i_2_n_5 ,\counter_s_reg[0]_i_2_n_6 ,\counter_s_reg[0]_i_2_n_7 }),
        .S(S));
  FDRE \counter_s_reg[10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[8]_i_1_n_5 ),
        .Q(\counter_s_reg[11]_0 [2]),
        .R(int_rst_s));
  FDRE \counter_s_reg[11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[8]_i_1_n_4 ),
        .Q(\counter_s_reg[11]_0 [3]),
        .R(int_rst_s));
  FDRE \counter_s_reg[12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[12]_i_1_n_7 ),
        .Q(\counter_s_reg[15]_0 [0]),
        .R(int_rst_s));
  CARRY4 \counter_s_reg[12]_i_1 
       (.CI(\counter_s_reg[8]_i_1_n_0 ),
        .CO({\counter_s_reg[12]_i_1_n_0 ,\counter_s_reg[12]_i_1_n_1 ,\counter_s_reg[12]_i_1_n_2 ,\counter_s_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\counter_s_reg[15]_0 ),
        .O({\counter_s_reg[12]_i_1_n_4 ,\counter_s_reg[12]_i_1_n_5 ,\counter_s_reg[12]_i_1_n_6 ,\counter_s_reg[12]_i_1_n_7 }),
        .S(\counter_s_reg[15]_1 ));
  FDRE \counter_s_reg[13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[12]_i_1_n_6 ),
        .Q(\counter_s_reg[15]_0 [1]),
        .R(int_rst_s));
  FDRE \counter_s_reg[14] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[12]_i_1_n_5 ),
        .Q(\counter_s_reg[15]_0 [2]),
        .R(int_rst_s));
  FDRE \counter_s_reg[15] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[12]_i_1_n_4 ),
        .Q(\counter_s_reg[15]_0 [3]),
        .R(int_rst_s));
  FDRE \counter_s_reg[16] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[16]_i_1_n_7 ),
        .Q(\counter_s_reg[19]_0 [0]),
        .R(int_rst_s));
  CARRY4 \counter_s_reg[16]_i_1 
       (.CI(\counter_s_reg[12]_i_1_n_0 ),
        .CO({\counter_s_reg[16]_i_1_n_0 ,\counter_s_reg[16]_i_1_n_1 ,\counter_s_reg[16]_i_1_n_2 ,\counter_s_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\counter_s_reg[19]_0 ),
        .O({\counter_s_reg[16]_i_1_n_4 ,\counter_s_reg[16]_i_1_n_5 ,\counter_s_reg[16]_i_1_n_6 ,\counter_s_reg[16]_i_1_n_7 }),
        .S(\counter_s_reg[19]_1 ));
  FDRE \counter_s_reg[17] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[16]_i_1_n_6 ),
        .Q(\counter_s_reg[19]_0 [1]),
        .R(int_rst_s));
  FDRE \counter_s_reg[18] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[16]_i_1_n_5 ),
        .Q(\counter_s_reg[19]_0 [2]),
        .R(int_rst_s));
  FDRE \counter_s_reg[19] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[16]_i_1_n_4 ),
        .Q(\counter_s_reg[19]_0 [3]),
        .R(int_rst_s));
  FDRE \counter_s_reg[1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[0]_i_2_n_6 ),
        .Q(DI[1]),
        .R(int_rst_s));
  FDRE \counter_s_reg[20] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[20]_i_1_n_7 ),
        .Q(\counter_s_reg[23]_0 [0]),
        .R(int_rst_s));
  CARRY4 \counter_s_reg[20]_i_1 
       (.CI(\counter_s_reg[16]_i_1_n_0 ),
        .CO({\counter_s_reg[20]_i_1_n_0 ,\counter_s_reg[20]_i_1_n_1 ,\counter_s_reg[20]_i_1_n_2 ,\counter_s_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\counter_s_reg[23]_0 ),
        .O({\counter_s_reg[20]_i_1_n_4 ,\counter_s_reg[20]_i_1_n_5 ,\counter_s_reg[20]_i_1_n_6 ,\counter_s_reg[20]_i_1_n_7 }),
        .S(\counter_s_reg[23]_1 ));
  FDRE \counter_s_reg[21] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[20]_i_1_n_6 ),
        .Q(\counter_s_reg[23]_0 [1]),
        .R(int_rst_s));
  FDRE \counter_s_reg[22] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[20]_i_1_n_5 ),
        .Q(\counter_s_reg[23]_0 [2]),
        .R(int_rst_s));
  FDRE \counter_s_reg[23] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[20]_i_1_n_4 ),
        .Q(\counter_s_reg[23]_0 [3]),
        .R(int_rst_s));
  FDRE \counter_s_reg[24] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[24]_i_1_n_7 ),
        .Q(\counter_s_reg[27]_0 [0]),
        .R(int_rst_s));
  CARRY4 \counter_s_reg[24]_i_1 
       (.CI(\counter_s_reg[20]_i_1_n_0 ),
        .CO({\counter_s_reg[24]_i_1_n_0 ,\counter_s_reg[24]_i_1_n_1 ,\counter_s_reg[24]_i_1_n_2 ,\counter_s_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\counter_s_reg[27]_0 ),
        .O({\counter_s_reg[24]_i_1_n_4 ,\counter_s_reg[24]_i_1_n_5 ,\counter_s_reg[24]_i_1_n_6 ,\counter_s_reg[24]_i_1_n_7 }),
        .S(\counter_s_reg[27]_1 ));
  FDRE \counter_s_reg[25] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[24]_i_1_n_6 ),
        .Q(\counter_s_reg[27]_0 [1]),
        .R(int_rst_s));
  FDRE \counter_s_reg[26] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[24]_i_1_n_5 ),
        .Q(\counter_s_reg[27]_0 [2]),
        .R(int_rst_s));
  FDRE \counter_s_reg[27] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[24]_i_1_n_4 ),
        .Q(\counter_s_reg[27]_0 [3]),
        .R(int_rst_s));
  FDRE \counter_s_reg[28] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[28]_i_1_n_7 ),
        .Q(counter_scale_s[0]),
        .R(int_rst_s));
  CARRY4 \counter_s_reg[28]_i_1 
       (.CI(\counter_s_reg[24]_i_1_n_0 ),
        .CO({\counter_s_reg[28]_i_1_n_0 ,\counter_s_reg[28]_i_1_n_1 ,\counter_s_reg[28]_i_1_n_2 ,\counter_s_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_scale_s[3:0]),
        .O({\counter_s_reg[28]_i_1_n_4 ,\counter_s_reg[28]_i_1_n_5 ,\counter_s_reg[28]_i_1_n_6 ,\counter_s_reg[28]_i_1_n_7 }),
        .S(\counter_s_reg[31]_0 ));
  FDRE \counter_s_reg[29] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[28]_i_1_n_6 ),
        .Q(counter_scale_s[1]),
        .R(int_rst_s));
  FDRE \counter_s_reg[2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[0]_i_2_n_5 ),
        .Q(DI[2]),
        .R(int_rst_s));
  FDRE \counter_s_reg[30] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[28]_i_1_n_5 ),
        .Q(counter_scale_s[2]),
        .R(int_rst_s));
  FDRE \counter_s_reg[31] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[28]_i_1_n_4 ),
        .Q(counter_scale_s[3]),
        .R(int_rst_s));
  FDRE \counter_s_reg[32] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[32]_i_1_n_7 ),
        .Q(counter_scale_s[4]),
        .R(int_rst_s));
  CARRY4 \counter_s_reg[32]_i_1 
       (.CI(\counter_s_reg[28]_i_1_n_0 ),
        .CO({\counter_s_reg[32]_i_1_n_0 ,\counter_s_reg[32]_i_1_n_1 ,\counter_s_reg[32]_i_1_n_2 ,\counter_s_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_scale_s[7:4]),
        .O({\counter_s_reg[32]_i_1_n_4 ,\counter_s_reg[32]_i_1_n_5 ,\counter_s_reg[32]_i_1_n_6 ,\counter_s_reg[32]_i_1_n_7 }),
        .S(\counter_s_reg[35]_0 ));
  FDRE \counter_s_reg[33] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[32]_i_1_n_6 ),
        .Q(counter_scale_s[5]),
        .R(int_rst_s));
  FDRE \counter_s_reg[34] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[32]_i_1_n_5 ),
        .Q(counter_scale_s[6]),
        .R(int_rst_s));
  FDRE \counter_s_reg[35] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[32]_i_1_n_4 ),
        .Q(counter_scale_s[7]),
        .R(int_rst_s));
  FDRE \counter_s_reg[36] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[36]_i_1_n_7 ),
        .Q(counter_scale_s[8]),
        .R(int_rst_s));
  CARRY4 \counter_s_reg[36]_i_1 
       (.CI(\counter_s_reg[32]_i_1_n_0 ),
        .CO({\NLW_counter_s_reg[36]_i_1_CO_UNCONNECTED [3],\counter_s_reg[36]_i_1_n_1 ,\counter_s_reg[36]_i_1_n_2 ,\counter_s_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,counter_scale_s[10:8]}),
        .O({\counter_s_reg[36]_i_1_n_4 ,\counter_s_reg[36]_i_1_n_5 ,\counter_s_reg[36]_i_1_n_6 ,\counter_s_reg[36]_i_1_n_7 }),
        .S(\counter_s_reg[39]_0 ));
  FDRE \counter_s_reg[37] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[36]_i_1_n_6 ),
        .Q(counter_scale_s[9]),
        .R(int_rst_s));
  FDRE \counter_s_reg[38] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[36]_i_1_n_5 ),
        .Q(counter_scale_s[10]),
        .R(int_rst_s));
  FDRE \counter_s_reg[39] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[36]_i_1_n_4 ),
        .Q(cos_next),
        .R(int_rst_s));
  FDRE \counter_s_reg[3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[0]_i_2_n_4 ),
        .Q(DI[3]),
        .R(int_rst_s));
  FDRE \counter_s_reg[4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[4]_i_1_n_7 ),
        .Q(\counter_s_reg[7]_0 [0]),
        .R(int_rst_s));
  CARRY4 \counter_s_reg[4]_i_1 
       (.CI(\counter_s_reg[0]_i_2_n_0 ),
        .CO({\counter_s_reg[4]_i_1_n_0 ,\counter_s_reg[4]_i_1_n_1 ,\counter_s_reg[4]_i_1_n_2 ,\counter_s_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\counter_s_reg[7]_0 ),
        .O({\counter_s_reg[4]_i_1_n_4 ,\counter_s_reg[4]_i_1_n_5 ,\counter_s_reg[4]_i_1_n_6 ,\counter_s_reg[4]_i_1_n_7 }),
        .S(\counter_s_reg[7]_1 ));
  FDRE \counter_s_reg[5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[4]_i_1_n_6 ),
        .Q(\counter_s_reg[7]_0 [1]),
        .R(int_rst_s));
  FDRE \counter_s_reg[6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[4]_i_1_n_5 ),
        .Q(\counter_s_reg[7]_0 [2]),
        .R(int_rst_s));
  FDRE \counter_s_reg[7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[4]_i_1_n_4 ),
        .Q(\counter_s_reg[7]_0 [3]),
        .R(int_rst_s));
  FDRE \counter_s_reg[8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[8]_i_1_n_7 ),
        .Q(\counter_s_reg[11]_0 [0]),
        .R(int_rst_s));
  CARRY4 \counter_s_reg[8]_i_1 
       (.CI(\counter_s_reg[4]_i_1_n_0 ),
        .CO({\counter_s_reg[8]_i_1_n_0 ,\counter_s_reg[8]_i_1_n_1 ,\counter_s_reg[8]_i_1_n_2 ,\counter_s_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\counter_s_reg[11]_0 ),
        .O({\counter_s_reg[8]_i_1_n_4 ,\counter_s_reg[8]_i_1_n_5 ,\counter_s_reg[8]_i_1_n_6 ,\counter_s_reg[8]_i_1_n_7 }),
        .S(\counter_s_reg[11]_1 ));
  FDRE \counter_s_reg[9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[8]_i_1_n_6 ),
        .Q(\counter_s_reg[11]_0 [1]),
        .R(int_rst_s));
  CARRY4 counter_sin_off_s_carry
       (.CI(1'b0),
        .CO({counter_sin_off_s_carry_n_0,counter_sin_off_s_carry_n_1,counter_sin_off_s_carry_n_2,counter_sin_off_s_carry_n_3}),
        .CYINIT(1'b0),
        .DI(counter_scale_s[3:0]),
        .O({counter_sin_off_s_carry_n_4,counter_sin_off_s_carry_n_5,counter_sin_off_s_carry_n_6,NLW_counter_sin_off_s_carry_O_UNCONNECTED[0]}),
        .S({counter_sin_off_s_carry_i_1_n_0,counter_sin_off_s_carry_i_2_n_0,counter_sin_off_s_carry_i_3_n_0,counter_sin_off_s_carry_i_4_n_0}));
  CARRY4 counter_sin_off_s_carry__0
       (.CI(counter_sin_off_s_carry_n_0),
        .CO({counter_sin_off_s_carry__0_n_0,counter_sin_off_s_carry__0_n_1,counter_sin_off_s_carry__0_n_2,counter_sin_off_s_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter_scale_s[7:4]),
        .O({counter_sin_off_s_carry__0_n_4,counter_sin_off_s_carry__0_n_5,counter_sin_off_s_carry__0_n_6,counter_sin_off_s_carry__0_n_7}),
        .S({counter_sin_off_s_carry__0_i_1_n_0,counter_sin_off_s_carry__0_i_2_n_0,counter_sin_off_s_carry__0_i_3_n_0,counter_sin_off_s_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_sin_off_s_carry__0_i_1
       (.I0(counter_scale_s[7]),
        .I1(poff_i[7]),
        .I2(out),
        .I3(data_a_reg_0[7]),
        .O(counter_sin_off_s_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_sin_off_s_carry__0_i_2
       (.I0(counter_scale_s[6]),
        .I1(poff_i[6]),
        .I2(out),
        .I3(data_a_reg_0[6]),
        .O(counter_sin_off_s_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_sin_off_s_carry__0_i_3
       (.I0(counter_scale_s[5]),
        .I1(poff_i[5]),
        .I2(out),
        .I3(data_a_reg_0[5]),
        .O(counter_sin_off_s_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_sin_off_s_carry__0_i_4
       (.I0(counter_scale_s[4]),
        .I1(poff_i[4]),
        .I2(out),
        .I3(data_a_reg_0[4]),
        .O(counter_sin_off_s_carry__0_i_4_n_0));
  CARRY4 counter_sin_off_s_carry__1
       (.CI(counter_sin_off_s_carry__0_n_0),
        .CO({NLW_counter_sin_off_s_carry__1_CO_UNCONNECTED[3],counter_sin_off_s_carry__1_n_1,counter_sin_off_s_carry__1_n_2,counter_sin_off_s_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,counter_sin_s_carry_n_6,counter_sin_s_carry_n_7,counter_scale_s[8]}),
        .O({counter_sin_off_s_carry__1_n_4,counter_sin_off_s_carry__1_n_5,counter_sin_off_s_carry__1_n_6,counter_sin_off_s_carry__1_n_7}),
        .S({\rom_12.rom12_inst_n_4 ,\rom_12.rom12_inst_n_5 ,\rom_12.rom12_inst_n_6 ,\rom_12.rom12_inst_n_7 }));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_sin_off_s_carry_i_1
       (.I0(counter_scale_s[3]),
        .I1(poff_i[3]),
        .I2(out),
        .I3(data_a_reg_0[3]),
        .O(counter_sin_off_s_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_sin_off_s_carry_i_2
       (.I0(counter_scale_s[2]),
        .I1(poff_i[2]),
        .I2(out),
        .I3(data_a_reg_0[2]),
        .O(counter_sin_off_s_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_sin_off_s_carry_i_3
       (.I0(counter_scale_s[1]),
        .I1(poff_i[1]),
        .I2(out),
        .I3(data_a_reg_0[1]),
        .O(counter_sin_off_s_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    counter_sin_off_s_carry_i_4
       (.I0(counter_scale_s[0]),
        .I1(poff_i[0]),
        .I2(out),
        .I3(data_a_reg_0[0]),
        .O(counter_sin_off_s_carry_i_4_n_0));
  CARRY4 counter_sin_s_carry
       (.CI(1'b0),
        .CO({NLW_counter_sin_s_carry_CO_UNCONNECTED[3:2],counter_sin_s_carry_n_2,counter_sin_s_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter_scale_s[10],1'b0}),
        .O({NLW_counter_sin_s_carry_O_UNCONNECTED[3],sin_next,counter_sin_s_carry_n_6,counter_sin_s_carry_n_7}),
        .S({1'b0,counter_sin_s_carry_i_1_n_0,counter_sin_s_carry_i_2_n_0,counter_scale_s[9]}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_sin_s_carry_i_1
       (.I0(cos_next),
        .O(counter_sin_s_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_sin_s_carry_i_2
       (.I0(counter_scale_s[10]),
        .O(counter_sin_s_carry_i_2_n_0));
  double_iq_pid_vco_demod2_nco_0_nco_counter_cos_rom_a12_d16 \rom_12.rom12_inst 
       (.ADDRBWRADDR({counter_sin_off_s_carry__1_n_4,counter_sin_off_s_carry__1_n_5,counter_sin_off_s_carry__1_n_6,counter_sin_off_s_carry__1_n_7,counter_sin_off_s_carry__0_n_4,counter_sin_off_s_carry__0_n_5,counter_sin_off_s_carry__0_n_6,counter_sin_off_s_carry__0_n_7,counter_sin_off_s_carry_n_4,counter_sin_off_s_carry_n_5,counter_sin_off_s_carry_n_6}),
        .DI(counter_scale_s[10:8]),
        .O({sin_next,counter_sin_s_carry_n_6,counter_sin_s_carry_n_7}),
        .S({\rom_12.rom12_inst_n_0 ,\rom_12.rom12_inst_n_1 ,\rom_12.rom12_inst_n_2 ,\rom_12.rom12_inst_n_3 }),
        .data_a_reg_0_0({data_a_reg_0[11:8],data_a_reg_0[0]}),
        .data_a_reg_1_0(cos_next),
        .data_a_reg_1_1(counter_scale_s[0]),
        .dds_cos_o(dds_cos_o),
        .dds_sin_o(dds_sin_o),
        .out(out),
        .poff_i({poff_i[11:8],poff_i[0]}),
        .\poff_i[11] ({\rom_12.rom12_inst_n_4 ,\rom_12.rom12_inst_n_5 ,\rom_12.rom12_inst_n_6 ,\rom_12.rom12_inst_n_7 }),
        .ref_clk_i(ref_clk_i),
        .sel(sel));
  FDSE sin_fake_o_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sin_next),
        .Q(sin_fake_o),
        .S(ref_rst_i));
  LUT5 #(
    .INIT(32'h0D0D000D)) 
    \trig_cpt_s[0]_i_1 
       (.I0(trig_cpt_s[0]),
        .I1(trig_cpt_s[1]),
        .I2(int_rst_s),
        .I3(counter_old_s),
        .I4(cos_next),
        .O(\trig_cpt_s[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0E0E000E)) 
    \trig_cpt_s[1]_i_1 
       (.I0(trig_cpt_s[0]),
        .I1(trig_cpt_s[1]),
        .I2(int_rst_s),
        .I3(counter_old_s),
        .I4(cos_next),
        .O(\trig_cpt_s[1]_i_1_n_0 ));
  FDRE \trig_cpt_s_reg[0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\trig_cpt_s[0]_i_1_n_0 ),
        .Q(trig_cpt_s[0]),
        .R(1'b0));
  FDRE \trig_cpt_s_reg[1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\trig_cpt_s[1]_i_1_n_0 ),
        .Q(trig_cpt_s[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00515151)) 
    trigger_o_i_1
       (.I0(int_rst_s),
        .I1(counter_old_s),
        .I2(cos_next),
        .I3(trig_cpt_s[1]),
        .I4(trig_cpt_s[0]),
        .O(trigger_o_i_1_n_0));
  FDRE trigger_o_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(trigger_o_i_1_n_0),
        .Q(trigger_o),
        .R(1'b0));
endmodule

module double_iq_pid_vco_demod2_nco_0_nco_counter_synchronizer_bit
   (out,
    data3,
    s00_axi_aclk,
    ref_clk_i);
  output [0:0]out;
  input [0:0]data3;
  input s00_axi_aclk;
  input ref_clk_i;

  wire [0:0]data3;
  (* async_reg = "true" *) wire [2:0]flipflops;
  wire ref_clk_i;
  wire s00_axi_aclk;
  wire sync_stage0_s_reg_n_0;

  assign out[0] = flipflops[2];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_stage0_s_reg_n_0),
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
        .D(data3),
        .Q(sync_stage0_s_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "nco_counter_synchronizer_bit" *) 
module double_iq_pid_vco_demod2_nco_0_nco_counter_synchronizer_bit__xdcDup__1
   (wave_en_o,
    int_rst_s,
    enable_s,
    s00_axi_aclk,
    ref_rst_i,
    sync_i,
    ref_clk_i);
  output wave_en_o;
  output int_rst_s;
  input enable_s;
  input s00_axi_aclk;
  input ref_rst_i;
  input sync_i;
  input ref_clk_i;

  wire enable_s;
  (* async_reg = "true" *) wire [2:0]flipflops;
  wire int_rst_s;
  wire ref_clk_i;
  wire ref_rst_i;
  wire s00_axi_aclk;
  wire sync_i;
  wire sync_stage0_s_reg_n_0;

  assign wave_en_o = flipflops[2];
  LUT3 #(
    .INIT(8'hEF)) 
    \counter_s[0]_i_1 
       (.I0(ref_rst_i),
        .I1(sync_i),
        .I2(flipflops[2]),
        .O(int_rst_s));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_stage0_s_reg_n_0),
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
        .D(enable_s),
        .Q(sync_stage0_s_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "nco_counter_synchronizer_bit" *) 
module double_iq_pid_vco_demod2_nco_0_nco_counter_synchronizer_bit__xdcDup__2
   (\pinc_i[39] ,
    S,
    \pinc_i[7] ,
    \pinc_i[11] ,
    \pinc_i[15] ,
    \pinc_i[19] ,
    \pinc_i[23] ,
    \pinc_i[27] ,
    \pinc_i[31] ,
    \pinc_i[35] ,
    data3,
    s00_axi_aclk,
    pinc_i,
    out,
    cos_next,
    DI,
    \counter_s_reg[7] ,
    \counter_s_reg[11] ,
    \counter_s_reg[15] ,
    \counter_s_reg[19] ,
    \counter_s_reg[23] ,
    \counter_s_reg[27] ,
    counter_scale_s,
    ref_clk_i);
  output [3:0]\pinc_i[39] ;
  output [3:0]S;
  output [3:0]\pinc_i[7] ;
  output [3:0]\pinc_i[11] ;
  output [3:0]\pinc_i[15] ;
  output [3:0]\pinc_i[19] ;
  output [3:0]\pinc_i[23] ;
  output [3:0]\pinc_i[27] ;
  output [3:0]\pinc_i[31] ;
  output [3:0]\pinc_i[35] ;
  input [0:0]data3;
  input s00_axi_aclk;
  input [39:0]pinc_i;
  input [39:0]out;
  input cos_next;
  input [3:0]DI;
  input [3:0]\counter_s_reg[7] ;
  input [3:0]\counter_s_reg[11] ;
  input [3:0]\counter_s_reg[15] ;
  input [3:0]\counter_s_reg[19] ;
  input [3:0]\counter_s_reg[23] ;
  input [3:0]\counter_s_reg[27] ;
  input [10:0]counter_scale_s;
  input ref_clk_i;

  wire [3:0]DI;
  wire [3:0]S;
  wire cos_next;
  wire [3:0]\counter_s_reg[11] ;
  wire [3:0]\counter_s_reg[15] ;
  wire [3:0]\counter_s_reg[19] ;
  wire [3:0]\counter_s_reg[23] ;
  wire [3:0]\counter_s_reg[27] ;
  wire [3:0]\counter_s_reg[7] ;
  wire [10:0]counter_scale_s;
  wire [0:0]data3;
  (* async_reg = "true" *) wire [2:0]flipflops;
  wire [39:0]out;
  wire [39:0]pinc_i;
  wire [3:0]\pinc_i[11] ;
  wire [3:0]\pinc_i[15] ;
  wire [3:0]\pinc_i[19] ;
  wire [3:0]\pinc_i[23] ;
  wire [3:0]\pinc_i[27] ;
  wire [3:0]\pinc_i[31] ;
  wire [3:0]\pinc_i[35] ;
  wire [3:0]\pinc_i[39] ;
  wire [3:0]\pinc_i[7] ;
  wire ref_clk_i;
  wire s00_axi_aclk;
  wire sync_stage0_s;

  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[0]_i_3 
       (.I0(pinc_i[3]),
        .I1(flipflops[2]),
        .I2(out[3]),
        .I3(DI[3]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[0]_i_4 
       (.I0(pinc_i[2]),
        .I1(flipflops[2]),
        .I2(out[2]),
        .I3(DI[2]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[0]_i_5 
       (.I0(pinc_i[1]),
        .I1(flipflops[2]),
        .I2(out[1]),
        .I3(DI[1]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[0]_i_6 
       (.I0(pinc_i[0]),
        .I1(flipflops[2]),
        .I2(out[0]),
        .I3(DI[0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[12]_i_2 
       (.I0(pinc_i[15]),
        .I1(flipflops[2]),
        .I2(out[15]),
        .I3(\counter_s_reg[15] [3]),
        .O(\pinc_i[15] [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[12]_i_3 
       (.I0(pinc_i[14]),
        .I1(flipflops[2]),
        .I2(out[14]),
        .I3(\counter_s_reg[15] [2]),
        .O(\pinc_i[15] [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[12]_i_4 
       (.I0(pinc_i[13]),
        .I1(flipflops[2]),
        .I2(out[13]),
        .I3(\counter_s_reg[15] [1]),
        .O(\pinc_i[15] [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[12]_i_5 
       (.I0(pinc_i[12]),
        .I1(flipflops[2]),
        .I2(out[12]),
        .I3(\counter_s_reg[15] [0]),
        .O(\pinc_i[15] [0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[16]_i_2 
       (.I0(pinc_i[19]),
        .I1(flipflops[2]),
        .I2(out[19]),
        .I3(\counter_s_reg[19] [3]),
        .O(\pinc_i[19] [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[16]_i_3 
       (.I0(pinc_i[18]),
        .I1(flipflops[2]),
        .I2(out[18]),
        .I3(\counter_s_reg[19] [2]),
        .O(\pinc_i[19] [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[16]_i_4 
       (.I0(pinc_i[17]),
        .I1(flipflops[2]),
        .I2(out[17]),
        .I3(\counter_s_reg[19] [1]),
        .O(\pinc_i[19] [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[16]_i_5 
       (.I0(pinc_i[16]),
        .I1(flipflops[2]),
        .I2(out[16]),
        .I3(\counter_s_reg[19] [0]),
        .O(\pinc_i[19] [0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[20]_i_2 
       (.I0(pinc_i[23]),
        .I1(flipflops[2]),
        .I2(out[23]),
        .I3(\counter_s_reg[23] [3]),
        .O(\pinc_i[23] [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[20]_i_3 
       (.I0(pinc_i[22]),
        .I1(flipflops[2]),
        .I2(out[22]),
        .I3(\counter_s_reg[23] [2]),
        .O(\pinc_i[23] [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[20]_i_4 
       (.I0(pinc_i[21]),
        .I1(flipflops[2]),
        .I2(out[21]),
        .I3(\counter_s_reg[23] [1]),
        .O(\pinc_i[23] [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[20]_i_5 
       (.I0(pinc_i[20]),
        .I1(flipflops[2]),
        .I2(out[20]),
        .I3(\counter_s_reg[23] [0]),
        .O(\pinc_i[23] [0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[24]_i_2 
       (.I0(pinc_i[27]),
        .I1(flipflops[2]),
        .I2(out[27]),
        .I3(\counter_s_reg[27] [3]),
        .O(\pinc_i[27] [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[24]_i_3 
       (.I0(pinc_i[26]),
        .I1(flipflops[2]),
        .I2(out[26]),
        .I3(\counter_s_reg[27] [2]),
        .O(\pinc_i[27] [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[24]_i_4 
       (.I0(pinc_i[25]),
        .I1(flipflops[2]),
        .I2(out[25]),
        .I3(\counter_s_reg[27] [1]),
        .O(\pinc_i[27] [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[24]_i_5 
       (.I0(pinc_i[24]),
        .I1(flipflops[2]),
        .I2(out[24]),
        .I3(\counter_s_reg[27] [0]),
        .O(\pinc_i[27] [0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[28]_i_2 
       (.I0(pinc_i[31]),
        .I1(flipflops[2]),
        .I2(out[31]),
        .I3(counter_scale_s[3]),
        .O(\pinc_i[31] [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[28]_i_3 
       (.I0(pinc_i[30]),
        .I1(flipflops[2]),
        .I2(out[30]),
        .I3(counter_scale_s[2]),
        .O(\pinc_i[31] [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[28]_i_4 
       (.I0(pinc_i[29]),
        .I1(flipflops[2]),
        .I2(out[29]),
        .I3(counter_scale_s[1]),
        .O(\pinc_i[31] [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[28]_i_5 
       (.I0(pinc_i[28]),
        .I1(flipflops[2]),
        .I2(out[28]),
        .I3(counter_scale_s[0]),
        .O(\pinc_i[31] [0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[32]_i_2 
       (.I0(pinc_i[35]),
        .I1(flipflops[2]),
        .I2(out[35]),
        .I3(counter_scale_s[7]),
        .O(\pinc_i[35] [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[32]_i_3 
       (.I0(pinc_i[34]),
        .I1(flipflops[2]),
        .I2(out[34]),
        .I3(counter_scale_s[6]),
        .O(\pinc_i[35] [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[32]_i_4 
       (.I0(pinc_i[33]),
        .I1(flipflops[2]),
        .I2(out[33]),
        .I3(counter_scale_s[5]),
        .O(\pinc_i[35] [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[32]_i_5 
       (.I0(pinc_i[32]),
        .I1(flipflops[2]),
        .I2(out[32]),
        .I3(counter_scale_s[4]),
        .O(\pinc_i[35] [0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[36]_i_2 
       (.I0(pinc_i[39]),
        .I1(flipflops[2]),
        .I2(out[39]),
        .I3(cos_next),
        .O(\pinc_i[39] [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[36]_i_3 
       (.I0(pinc_i[38]),
        .I1(flipflops[2]),
        .I2(out[38]),
        .I3(counter_scale_s[10]),
        .O(\pinc_i[39] [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[36]_i_4 
       (.I0(pinc_i[37]),
        .I1(flipflops[2]),
        .I2(out[37]),
        .I3(counter_scale_s[9]),
        .O(\pinc_i[39] [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[36]_i_5 
       (.I0(pinc_i[36]),
        .I1(flipflops[2]),
        .I2(out[36]),
        .I3(counter_scale_s[8]),
        .O(\pinc_i[39] [0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[4]_i_2 
       (.I0(pinc_i[7]),
        .I1(flipflops[2]),
        .I2(out[7]),
        .I3(\counter_s_reg[7] [3]),
        .O(\pinc_i[7] [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[4]_i_3 
       (.I0(pinc_i[6]),
        .I1(flipflops[2]),
        .I2(out[6]),
        .I3(\counter_s_reg[7] [2]),
        .O(\pinc_i[7] [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[4]_i_4 
       (.I0(pinc_i[5]),
        .I1(flipflops[2]),
        .I2(out[5]),
        .I3(\counter_s_reg[7] [1]),
        .O(\pinc_i[7] [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[4]_i_5 
       (.I0(pinc_i[4]),
        .I1(flipflops[2]),
        .I2(out[4]),
        .I3(\counter_s_reg[7] [0]),
        .O(\pinc_i[7] [0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[8]_i_2 
       (.I0(pinc_i[11]),
        .I1(flipflops[2]),
        .I2(out[11]),
        .I3(\counter_s_reg[11] [3]),
        .O(\pinc_i[11] [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[8]_i_3 
       (.I0(pinc_i[10]),
        .I1(flipflops[2]),
        .I2(out[10]),
        .I3(\counter_s_reg[11] [2]),
        .O(\pinc_i[11] [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[8]_i_4 
       (.I0(pinc_i[9]),
        .I1(flipflops[2]),
        .I2(out[9]),
        .I3(\counter_s_reg[11] [1]),
        .O(\pinc_i[11] [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \counter_s[8]_i_5 
       (.I0(pinc_i[8]),
        .I1(flipflops[2]),
        .I2(out[8]),
        .I3(\counter_s_reg[11] [0]),
        .O(\pinc_i[11] [0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_reg[0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_stage0_s),
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
        .D(data3),
        .Q(sync_stage0_s),
        .R(1'b0));
endmodule

module double_iq_pid_vco_demod2_nco_0_nco_counter_synchronizer_vector
   (Q,
    s00_axi_aclk,
    ref_clk_i);
  input [39:0]Q;
  input s00_axi_aclk;
  input ref_clk_i;

  wire [39:0]Q;
  (* async_reg = "true" *) wire [39:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [39:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [39:0]\flipflops_vect[2]_2 ;
  wire ref_clk_i;
  wire s00_axi_aclk;
  wire [39:0]sync_vect_stage0_s;

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
    \flipflops_vect_reg[0][14] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[14]),
        .Q(\flipflops_vect[0]_0 [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][15] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[15]),
        .Q(\flipflops_vect[0]_0 [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][16] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[16]),
        .Q(\flipflops_vect[0]_0 [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][17] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[17]),
        .Q(\flipflops_vect[0]_0 [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][18] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[18]),
        .Q(\flipflops_vect[0]_0 [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][19] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[19]),
        .Q(\flipflops_vect[0]_0 [19]),
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
    \flipflops_vect_reg[0][20] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[20]),
        .Q(\flipflops_vect[0]_0 [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][21] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[21]),
        .Q(\flipflops_vect[0]_0 [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][22] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[22]),
        .Q(\flipflops_vect[0]_0 [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][23] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[23]),
        .Q(\flipflops_vect[0]_0 [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][24] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[24]),
        .Q(\flipflops_vect[0]_0 [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][25] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[25]),
        .Q(\flipflops_vect[0]_0 [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][26] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[26]),
        .Q(\flipflops_vect[0]_0 [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][27] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[27]),
        .Q(\flipflops_vect[0]_0 [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][28] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[28]),
        .Q(\flipflops_vect[0]_0 [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][29] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[29]),
        .Q(\flipflops_vect[0]_0 [29]),
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
    \flipflops_vect_reg[0][30] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[30]),
        .Q(\flipflops_vect[0]_0 [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][31] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[31]),
        .Q(\flipflops_vect[0]_0 [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][32] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[32]),
        .Q(\flipflops_vect[0]_0 [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][33] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[33]),
        .Q(\flipflops_vect[0]_0 [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][34] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[34]),
        .Q(\flipflops_vect[0]_0 [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][35] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[35]),
        .Q(\flipflops_vect[0]_0 [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][36] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[36]),
        .Q(\flipflops_vect[0]_0 [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][37] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[37]),
        .Q(\flipflops_vect[0]_0 [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][38] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[38]),
        .Q(\flipflops_vect[0]_0 [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][39] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[39]),
        .Q(\flipflops_vect[0]_0 [39]),
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
    \flipflops_vect_reg[1][14] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [14]),
        .Q(\flipflops_vect[1]_1 [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][15] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [15]),
        .Q(\flipflops_vect[1]_1 [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][16] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [16]),
        .Q(\flipflops_vect[1]_1 [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][17] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [17]),
        .Q(\flipflops_vect[1]_1 [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][18] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [18]),
        .Q(\flipflops_vect[1]_1 [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][19] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [19]),
        .Q(\flipflops_vect[1]_1 [19]),
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
    \flipflops_vect_reg[1][20] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [20]),
        .Q(\flipflops_vect[1]_1 [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][21] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [21]),
        .Q(\flipflops_vect[1]_1 [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][22] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [22]),
        .Q(\flipflops_vect[1]_1 [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][23] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [23]),
        .Q(\flipflops_vect[1]_1 [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][24] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [24]),
        .Q(\flipflops_vect[1]_1 [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][25] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [25]),
        .Q(\flipflops_vect[1]_1 [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][26] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [26]),
        .Q(\flipflops_vect[1]_1 [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][27] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [27]),
        .Q(\flipflops_vect[1]_1 [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][28] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [28]),
        .Q(\flipflops_vect[1]_1 [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][29] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [29]),
        .Q(\flipflops_vect[1]_1 [29]),
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
    \flipflops_vect_reg[1][30] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [30]),
        .Q(\flipflops_vect[1]_1 [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][31] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [31]),
        .Q(\flipflops_vect[1]_1 [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][32] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [32]),
        .Q(\flipflops_vect[1]_1 [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][33] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [33]),
        .Q(\flipflops_vect[1]_1 [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][34] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [34]),
        .Q(\flipflops_vect[1]_1 [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][35] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [35]),
        .Q(\flipflops_vect[1]_1 [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][36] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [36]),
        .Q(\flipflops_vect[1]_1 [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][37] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [37]),
        .Q(\flipflops_vect[1]_1 [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][38] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [38]),
        .Q(\flipflops_vect[1]_1 [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][39] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [39]),
        .Q(\flipflops_vect[1]_1 [39]),
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
    \flipflops_vect_reg[2][14] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [14]),
        .Q(\flipflops_vect[2]_2 [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][15] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [15]),
        .Q(\flipflops_vect[2]_2 [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][16] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [16]),
        .Q(\flipflops_vect[2]_2 [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][17] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [17]),
        .Q(\flipflops_vect[2]_2 [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][18] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [18]),
        .Q(\flipflops_vect[2]_2 [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][19] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [19]),
        .Q(\flipflops_vect[2]_2 [19]),
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
    \flipflops_vect_reg[2][20] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [20]),
        .Q(\flipflops_vect[2]_2 [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][21] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [21]),
        .Q(\flipflops_vect[2]_2 [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][22] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [22]),
        .Q(\flipflops_vect[2]_2 [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][23] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [23]),
        .Q(\flipflops_vect[2]_2 [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][24] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [24]),
        .Q(\flipflops_vect[2]_2 [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][25] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [25]),
        .Q(\flipflops_vect[2]_2 [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][26] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [26]),
        .Q(\flipflops_vect[2]_2 [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][27] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [27]),
        .Q(\flipflops_vect[2]_2 [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][28] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [28]),
        .Q(\flipflops_vect[2]_2 [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][29] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [29]),
        .Q(\flipflops_vect[2]_2 [29]),
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
    \flipflops_vect_reg[2][30] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [30]),
        .Q(\flipflops_vect[2]_2 [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][31] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [31]),
        .Q(\flipflops_vect[2]_2 [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][32] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [32]),
        .Q(\flipflops_vect[2]_2 [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][33] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [33]),
        .Q(\flipflops_vect[2]_2 [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][34] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [34]),
        .Q(\flipflops_vect[2]_2 [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][35] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [35]),
        .Q(\flipflops_vect[2]_2 [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][36] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [36]),
        .Q(\flipflops_vect[2]_2 [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][37] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [37]),
        .Q(\flipflops_vect[2]_2 [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][38] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [38]),
        .Q(\flipflops_vect[2]_2 [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][39] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [39]),
        .Q(\flipflops_vect[2]_2 [39]),
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
        .D(Q[0]),
        .Q(sync_vect_stage0_s[0]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(sync_vect_stage0_s[10]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(sync_vect_stage0_s[11]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(sync_vect_stage0_s[12]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(sync_vect_stage0_s[13]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(sync_vect_stage0_s[14]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(sync_vect_stage0_s[15]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(sync_vect_stage0_s[16]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(sync_vect_stage0_s[17]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(sync_vect_stage0_s[18]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(sync_vect_stage0_s[19]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(sync_vect_stage0_s[1]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(sync_vect_stage0_s[20]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(sync_vect_stage0_s[21]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(sync_vect_stage0_s[22]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(sync_vect_stage0_s[23]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(sync_vect_stage0_s[24]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(sync_vect_stage0_s[25]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(sync_vect_stage0_s[26]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(sync_vect_stage0_s[27]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(sync_vect_stage0_s[28]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(sync_vect_stage0_s[29]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(sync_vect_stage0_s[2]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(sync_vect_stage0_s[30]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(sync_vect_stage0_s[31]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[32] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[32]),
        .Q(sync_vect_stage0_s[32]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[33] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[33]),
        .Q(sync_vect_stage0_s[33]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[34] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[34]),
        .Q(sync_vect_stage0_s[34]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[35] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[35]),
        .Q(sync_vect_stage0_s[35]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[36] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[36]),
        .Q(sync_vect_stage0_s[36]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[37] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[37]),
        .Q(sync_vect_stage0_s[37]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[38] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[38]),
        .Q(sync_vect_stage0_s[38]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[39] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[39]),
        .Q(sync_vect_stage0_s[39]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(sync_vect_stage0_s[3]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(sync_vect_stage0_s[4]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(sync_vect_stage0_s[5]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(sync_vect_stage0_s[6]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(sync_vect_stage0_s[7]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(sync_vect_stage0_s[8]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(sync_vect_stage0_s[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "nco_counter_synchronizer_vector" *) 
module double_iq_pid_vco_demod2_nco_0_nco_counter_synchronizer_vector__parameterized0
   (out,
    Q,
    s00_axi_aclk,
    ref_clk_i);
  output [11:0]out;
  input [11:0]Q;
  input s00_axi_aclk;
  input ref_clk_i;

  wire [11:0]Q;
  (* async_reg = "true" *) wire [11:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [11:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [11:0]\flipflops_vect[2]_2 ;
  wire ref_clk_i;
  wire s00_axi_aclk;
  wire [11:0]sync_vect_stage0_s;

  assign out[11:0] = \flipflops_vect[2]_2 ;
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
        .D(Q[0]),
        .Q(sync_vect_stage0_s[0]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(sync_vect_stage0_s[10]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(sync_vect_stage0_s[11]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(sync_vect_stage0_s[1]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(sync_vect_stage0_s[2]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(sync_vect_stage0_s[3]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(sync_vect_stage0_s[4]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(sync_vect_stage0_s[5]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(sync_vect_stage0_s[6]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(sync_vect_stage0_s[7]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(sync_vect_stage0_s[8]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(sync_vect_stage0_s[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "nco_counter_synchronizer_vector" *) 
module double_iq_pid_vco_demod2_nco_0_nco_counter_synchronizer_vector__xdcDup__1
   (out,
    Q,
    s00_axi_aclk,
    ref_clk_i);
  output [39:0]out;
  input [39:0]Q;
  input s00_axi_aclk;
  input ref_clk_i;

  wire [39:0]Q;
  (* async_reg = "true" *) wire [39:0]\flipflops_vect[0]_0 ;
  (* async_reg = "true" *) wire [39:0]\flipflops_vect[1]_1 ;
  (* async_reg = "true" *) wire [39:0]\flipflops_vect[2]_2 ;
  wire ref_clk_i;
  wire s00_axi_aclk;
  wire [39:0]sync_vect_stage0_s;

  assign out[39:0] = \flipflops_vect[2]_2 ;
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
    \flipflops_vect_reg[0][14] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[14]),
        .Q(\flipflops_vect[0]_0 [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][15] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[15]),
        .Q(\flipflops_vect[0]_0 [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][16] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[16]),
        .Q(\flipflops_vect[0]_0 [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][17] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[17]),
        .Q(\flipflops_vect[0]_0 [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][18] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[18]),
        .Q(\flipflops_vect[0]_0 [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][19] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[19]),
        .Q(\flipflops_vect[0]_0 [19]),
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
    \flipflops_vect_reg[0][20] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[20]),
        .Q(\flipflops_vect[0]_0 [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][21] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[21]),
        .Q(\flipflops_vect[0]_0 [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][22] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[22]),
        .Q(\flipflops_vect[0]_0 [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][23] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[23]),
        .Q(\flipflops_vect[0]_0 [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][24] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[24]),
        .Q(\flipflops_vect[0]_0 [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][25] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[25]),
        .Q(\flipflops_vect[0]_0 [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][26] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[26]),
        .Q(\flipflops_vect[0]_0 [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][27] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[27]),
        .Q(\flipflops_vect[0]_0 [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][28] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[28]),
        .Q(\flipflops_vect[0]_0 [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][29] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[29]),
        .Q(\flipflops_vect[0]_0 [29]),
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
    \flipflops_vect_reg[0][30] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[30]),
        .Q(\flipflops_vect[0]_0 [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][31] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[31]),
        .Q(\flipflops_vect[0]_0 [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][32] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[32]),
        .Q(\flipflops_vect[0]_0 [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][33] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[33]),
        .Q(\flipflops_vect[0]_0 [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][34] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[34]),
        .Q(\flipflops_vect[0]_0 [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][35] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[35]),
        .Q(\flipflops_vect[0]_0 [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][36] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[36]),
        .Q(\flipflops_vect[0]_0 [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][37] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[37]),
        .Q(\flipflops_vect[0]_0 [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][38] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[38]),
        .Q(\flipflops_vect[0]_0 [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[0][39] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sync_vect_stage0_s[39]),
        .Q(\flipflops_vect[0]_0 [39]),
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
    \flipflops_vect_reg[1][14] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [14]),
        .Q(\flipflops_vect[1]_1 [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][15] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [15]),
        .Q(\flipflops_vect[1]_1 [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][16] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [16]),
        .Q(\flipflops_vect[1]_1 [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][17] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [17]),
        .Q(\flipflops_vect[1]_1 [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][18] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [18]),
        .Q(\flipflops_vect[1]_1 [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][19] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [19]),
        .Q(\flipflops_vect[1]_1 [19]),
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
    \flipflops_vect_reg[1][20] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [20]),
        .Q(\flipflops_vect[1]_1 [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][21] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [21]),
        .Q(\flipflops_vect[1]_1 [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][22] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [22]),
        .Q(\flipflops_vect[1]_1 [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][23] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [23]),
        .Q(\flipflops_vect[1]_1 [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][24] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [24]),
        .Q(\flipflops_vect[1]_1 [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][25] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [25]),
        .Q(\flipflops_vect[1]_1 [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][26] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [26]),
        .Q(\flipflops_vect[1]_1 [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][27] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [27]),
        .Q(\flipflops_vect[1]_1 [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][28] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [28]),
        .Q(\flipflops_vect[1]_1 [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][29] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [29]),
        .Q(\flipflops_vect[1]_1 [29]),
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
    \flipflops_vect_reg[1][30] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [30]),
        .Q(\flipflops_vect[1]_1 [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][31] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [31]),
        .Q(\flipflops_vect[1]_1 [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][32] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [32]),
        .Q(\flipflops_vect[1]_1 [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][33] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [33]),
        .Q(\flipflops_vect[1]_1 [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][34] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [34]),
        .Q(\flipflops_vect[1]_1 [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][35] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [35]),
        .Q(\flipflops_vect[1]_1 [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][36] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [36]),
        .Q(\flipflops_vect[1]_1 [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][37] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [37]),
        .Q(\flipflops_vect[1]_1 [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][38] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [38]),
        .Q(\flipflops_vect[1]_1 [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[1][39] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[0]_0 [39]),
        .Q(\flipflops_vect[1]_1 [39]),
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
    \flipflops_vect_reg[2][14] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [14]),
        .Q(\flipflops_vect[2]_2 [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][15] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [15]),
        .Q(\flipflops_vect[2]_2 [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][16] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [16]),
        .Q(\flipflops_vect[2]_2 [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][17] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [17]),
        .Q(\flipflops_vect[2]_2 [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][18] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [18]),
        .Q(\flipflops_vect[2]_2 [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][19] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [19]),
        .Q(\flipflops_vect[2]_2 [19]),
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
    \flipflops_vect_reg[2][20] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [20]),
        .Q(\flipflops_vect[2]_2 [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][21] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [21]),
        .Q(\flipflops_vect[2]_2 [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][22] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [22]),
        .Q(\flipflops_vect[2]_2 [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][23] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [23]),
        .Q(\flipflops_vect[2]_2 [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][24] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [24]),
        .Q(\flipflops_vect[2]_2 [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][25] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [25]),
        .Q(\flipflops_vect[2]_2 [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][26] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [26]),
        .Q(\flipflops_vect[2]_2 [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][27] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [27]),
        .Q(\flipflops_vect[2]_2 [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][28] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [28]),
        .Q(\flipflops_vect[2]_2 [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][29] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [29]),
        .Q(\flipflops_vect[2]_2 [29]),
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
    \flipflops_vect_reg[2][30] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [30]),
        .Q(\flipflops_vect[2]_2 [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][31] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [31]),
        .Q(\flipflops_vect[2]_2 [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][32] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [32]),
        .Q(\flipflops_vect[2]_2 [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][33] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [33]),
        .Q(\flipflops_vect[2]_2 [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][34] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [34]),
        .Q(\flipflops_vect[2]_2 [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][35] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [35]),
        .Q(\flipflops_vect[2]_2 [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][36] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [36]),
        .Q(\flipflops_vect[2]_2 [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][37] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [37]),
        .Q(\flipflops_vect[2]_2 [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][38] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [38]),
        .Q(\flipflops_vect[2]_2 [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \flipflops_vect_reg[2][39] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\flipflops_vect[1]_1 [39]),
        .Q(\flipflops_vect[2]_2 [39]),
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
        .D(Q[0]),
        .Q(sync_vect_stage0_s[0]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(sync_vect_stage0_s[10]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(sync_vect_stage0_s[11]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(sync_vect_stage0_s[12]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(sync_vect_stage0_s[13]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(sync_vect_stage0_s[14]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(sync_vect_stage0_s[15]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(sync_vect_stage0_s[16]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(sync_vect_stage0_s[17]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(sync_vect_stage0_s[18]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(sync_vect_stage0_s[19]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(sync_vect_stage0_s[1]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(sync_vect_stage0_s[20]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(sync_vect_stage0_s[21]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(sync_vect_stage0_s[22]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(sync_vect_stage0_s[23]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(sync_vect_stage0_s[24]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(sync_vect_stage0_s[25]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(sync_vect_stage0_s[26]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(sync_vect_stage0_s[27]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(sync_vect_stage0_s[28]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(sync_vect_stage0_s[29]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(sync_vect_stage0_s[2]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(sync_vect_stage0_s[30]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(sync_vect_stage0_s[31]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[32] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[32]),
        .Q(sync_vect_stage0_s[32]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[33] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[33]),
        .Q(sync_vect_stage0_s[33]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[34] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[34]),
        .Q(sync_vect_stage0_s[34]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[35] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[35]),
        .Q(sync_vect_stage0_s[35]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[36] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[36]),
        .Q(sync_vect_stage0_s[36]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[37] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[37]),
        .Q(sync_vect_stage0_s[37]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[38] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[38]),
        .Q(sync_vect_stage0_s[38]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[39] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[39]),
        .Q(sync_vect_stage0_s[39]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(sync_vect_stage0_s[3]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(sync_vect_stage0_s[4]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(sync_vect_stage0_s[5]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(sync_vect_stage0_s[6]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(sync_vect_stage0_s[7]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(sync_vect_stage0_s[8]),
        .R(1'b0));
  FDRE \sync_vect_stage0_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(sync_vect_stage0_s[9]),
        .R(1'b0));
endmodule

module double_iq_pid_vco_demod2_nco_0_wb_nco_counter
   (data3,
    enable_s,
    Q,
    \cpt_off_s_reg[11]_0 ,
    \max_accum_s_reg[39]_0 ,
    s00_axi_rdata,
    s00_axi_reset,
    pinc_sw_s_reg_0,
    s00_axi_aclk,
    poff_sw_s_reg_0,
    enable_s_reg_0,
    D,
    addr_s,
    E,
    s00_axi_wdata,
    \max_accum_s_reg[39]_1 ,
    \cpt_off_s_reg[31]_0 ,
    \cpt_step_low_s_reg[31]_0 ,
    \cpt_step_s_reg[63]_0 ,
    \readdata_s_reg[31]_0 );
  output [1:0]data3;
  output enable_s;
  output [39:0]Q;
  output [11:0]\cpt_off_s_reg[11]_0 ;
  output [39:0]\max_accum_s_reg[39]_0 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_reset;
  input pinc_sw_s_reg_0;
  input s00_axi_aclk;
  input poff_sw_s_reg_0;
  input enable_s_reg_0;
  input [1:0]D;
  input [2:0]addr_s;
  input [0:0]E;
  input [31:0]s00_axi_wdata;
  input [0:0]\max_accum_s_reg[39]_1 ;
  input [0:0]\cpt_off_s_reg[31]_0 ;
  input [0:0]\cpt_step_low_s_reg[31]_0 ;
  input [0:0]\cpt_step_s_reg[63]_0 ;
  input [0:0]\readdata_s_reg[31]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [39:0]Q;
  wire [2:0]addr_s;
  wire [31:12]cpt_off_s;
  wire [11:0]\cpt_off_s_reg[11]_0 ;
  wire [0:0]\cpt_off_s_reg[31]_0 ;
  wire [31:0]cpt_step_low_s;
  wire [0:0]\cpt_step_low_s_reg[31]_0 ;
  wire [0:0]\cpt_step_s_reg[63]_0 ;
  wire [31:8]data1;
  wire [1:0]data3;
  wire enable_s;
  wire enable_s_reg_0;
  wire [31:0]max_accum_low_s;
  wire [39:0]\max_accum_s_reg[39]_0 ;
  wire [0:0]\max_accum_s_reg[39]_1 ;
  wire pinc_sw_s_reg_0;
  wire poff_sw_s_reg_0;
  wire [31:2]readdata_s;
  wire [0:0]\readdata_s_reg[31]_0 ;
  wire s00_axi_aclk;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire [31:0]s00_axi_wdata;

  FDRE \cpt_off_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\cpt_off_s_reg[11]_0 [0]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\cpt_off_s_reg[11]_0 [10]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\cpt_off_s_reg[11]_0 [11]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[12]),
        .Q(cpt_off_s[12]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[13]),
        .Q(cpt_off_s[13]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[14]),
        .Q(cpt_off_s[14]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[15]),
        .Q(cpt_off_s[15]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[16]),
        .Q(cpt_off_s[16]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[17]),
        .Q(cpt_off_s[17]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[18]),
        .Q(cpt_off_s[18]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[19]),
        .Q(cpt_off_s[19]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\cpt_off_s_reg[11]_0 [1]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[20]),
        .Q(cpt_off_s[20]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[21]),
        .Q(cpt_off_s[21]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[22]),
        .Q(cpt_off_s[22]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[23]),
        .Q(cpt_off_s[23]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[24]),
        .Q(cpt_off_s[24]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[25]),
        .Q(cpt_off_s[25]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[26]),
        .Q(cpt_off_s[26]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[27]),
        .Q(cpt_off_s[27]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[28]),
        .Q(cpt_off_s[28]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[29]),
        .Q(cpt_off_s[29]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\cpt_off_s_reg[11]_0 [2]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[30]),
        .Q(cpt_off_s[30]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[31]),
        .Q(cpt_off_s[31]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\cpt_off_s_reg[11]_0 [3]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\cpt_off_s_reg[11]_0 [4]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\cpt_off_s_reg[11]_0 [5]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\cpt_off_s_reg[11]_0 [6]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\cpt_off_s_reg[11]_0 [7]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\cpt_off_s_reg[11]_0 [8]),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\cpt_off_s_reg[31]_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\cpt_off_s_reg[11]_0 [9]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[0]),
        .Q(cpt_step_low_s[0]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[10]),
        .Q(cpt_step_low_s[10]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[11]),
        .Q(cpt_step_low_s[11]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[12]),
        .Q(cpt_step_low_s[12]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[13]),
        .Q(cpt_step_low_s[13]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[14]),
        .Q(cpt_step_low_s[14]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[15]),
        .Q(cpt_step_low_s[15]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[16]),
        .Q(cpt_step_low_s[16]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[17]),
        .Q(cpt_step_low_s[17]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[18]),
        .Q(cpt_step_low_s[18]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[19]),
        .Q(cpt_step_low_s[19]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[1]),
        .Q(cpt_step_low_s[1]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[20]),
        .Q(cpt_step_low_s[20]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[21]),
        .Q(cpt_step_low_s[21]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[22]),
        .Q(cpt_step_low_s[22]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[23]),
        .Q(cpt_step_low_s[23]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[24]),
        .Q(cpt_step_low_s[24]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[25]),
        .Q(cpt_step_low_s[25]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[26]),
        .Q(cpt_step_low_s[26]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[27]),
        .Q(cpt_step_low_s[27]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[28]),
        .Q(cpt_step_low_s[28]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[29]),
        .Q(cpt_step_low_s[29]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[2]),
        .Q(cpt_step_low_s[2]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[30]),
        .Q(cpt_step_low_s[30]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[31]),
        .Q(cpt_step_low_s[31]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[3]),
        .Q(cpt_step_low_s[3]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[4]),
        .Q(cpt_step_low_s[4]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[5]),
        .Q(cpt_step_low_s[5]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[6]),
        .Q(cpt_step_low_s[6]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[7]),
        .Q(cpt_step_low_s[7]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[8]),
        .Q(cpt_step_low_s[8]),
        .R(s00_axi_reset));
  FDRE \cpt_step_low_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_low_s_reg[31]_0 ),
        .D(s00_axi_wdata[9]),
        .Q(cpt_step_low_s[9]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[0]),
        .Q(Q[0]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[10]),
        .Q(Q[10]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[11]),
        .Q(Q[11]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[12]),
        .Q(Q[12]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[13]),
        .Q(Q[13]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[14]),
        .Q(Q[14]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[15]),
        .Q(Q[15]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[16]),
        .Q(Q[16]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[17]),
        .Q(Q[17]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[18]),
        .Q(Q[18]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[19]),
        .Q(Q[19]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[1]),
        .Q(Q[1]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[20]),
        .Q(Q[20]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[21]),
        .Q(Q[21]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[22]),
        .Q(Q[22]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[23]),
        .Q(Q[23]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[24]),
        .Q(Q[24]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[25]),
        .Q(Q[25]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[26]),
        .Q(Q[26]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[27]),
        .Q(Q[27]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[28]),
        .Q(Q[28]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[29]),
        .Q(Q[29]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[2]),
        .Q(Q[2]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[30]),
        .Q(Q[30]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[31]),
        .Q(Q[31]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[0]),
        .Q(Q[32]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[33] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[1]),
        .Q(Q[33]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[34] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[2]),
        .Q(Q[34]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[35] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[3]),
        .Q(Q[35]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[36] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[4]),
        .Q(Q[36]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[5]),
        .Q(Q[37]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[38] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[6]),
        .Q(Q[38]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[39] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[7]),
        .Q(Q[39]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[3]),
        .Q(Q[3]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[40] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[8]),
        .Q(data1[8]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[41] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[9]),
        .Q(data1[9]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[42] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[10]),
        .Q(data1[10]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[43] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[11]),
        .Q(data1[11]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[44] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[12]),
        .Q(data1[12]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[45] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[13]),
        .Q(data1[13]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[46] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[14]),
        .Q(data1[14]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[47] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[15]),
        .Q(data1[15]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[48] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[16]),
        .Q(data1[16]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[49] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[17]),
        .Q(data1[17]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[4]),
        .Q(Q[4]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[50] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[18]),
        .Q(data1[18]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[51] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[19]),
        .Q(data1[19]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[52] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[20]),
        .Q(data1[20]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[53] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[21]),
        .Q(data1[21]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[54] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[22]),
        .Q(data1[22]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[55] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[23]),
        .Q(data1[23]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[56] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[24]),
        .Q(data1[24]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[57] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[25]),
        .Q(data1[25]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[58] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[26]),
        .Q(data1[26]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[59] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[27]),
        .Q(data1[27]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[5]),
        .Q(Q[5]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[60] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[28]),
        .Q(data1[28]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[61] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[29]),
        .Q(data1[29]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[62] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[30]),
        .Q(data1[30]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[63] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(s00_axi_wdata[31]),
        .Q(data1[31]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[6]),
        .Q(Q[6]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[7]),
        .Q(Q[7]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[8]),
        .Q(Q[8]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\cpt_step_s_reg[63]_0 ),
        .D(cpt_step_low_s[9]),
        .Q(Q[9]),
        .R(s00_axi_reset));
  FDSE enable_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(enable_s_reg_0),
        .Q(enable_s),
        .S(s00_axi_reset));
  FDRE \max_accum_low_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[0]),
        .Q(max_accum_low_s[0]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[10]),
        .Q(max_accum_low_s[10]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[11]),
        .Q(max_accum_low_s[11]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[12]),
        .Q(max_accum_low_s[12]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[13]),
        .Q(max_accum_low_s[13]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[14]),
        .Q(max_accum_low_s[14]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[15]),
        .Q(max_accum_low_s[15]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[16]),
        .Q(max_accum_low_s[16]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[17]),
        .Q(max_accum_low_s[17]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[18]),
        .Q(max_accum_low_s[18]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[19]),
        .Q(max_accum_low_s[19]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[1]),
        .Q(max_accum_low_s[1]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[20]),
        .Q(max_accum_low_s[20]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[21]),
        .Q(max_accum_low_s[21]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[22]),
        .Q(max_accum_low_s[22]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[23]),
        .Q(max_accum_low_s[23]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[24]),
        .Q(max_accum_low_s[24]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[25]),
        .Q(max_accum_low_s[25]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[26]),
        .Q(max_accum_low_s[26]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[27]),
        .Q(max_accum_low_s[27]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[28]),
        .Q(max_accum_low_s[28]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[29]),
        .Q(max_accum_low_s[29]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[2]),
        .Q(max_accum_low_s[2]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[30]),
        .Q(max_accum_low_s[30]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[31]),
        .Q(max_accum_low_s[31]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[3]),
        .Q(max_accum_low_s[3]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[4]),
        .Q(max_accum_low_s[4]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[5]),
        .Q(max_accum_low_s[5]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[6]),
        .Q(max_accum_low_s[6]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[7]),
        .Q(max_accum_low_s[7]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[8]),
        .Q(max_accum_low_s[8]),
        .R(s00_axi_reset));
  FDRE \max_accum_low_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[9]),
        .Q(max_accum_low_s[9]),
        .R(s00_axi_reset));
  FDSE \max_accum_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[0]),
        .Q(\max_accum_s_reg[39]_0 [0]),
        .S(s00_axi_reset));
  FDRE \max_accum_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[10]),
        .Q(\max_accum_s_reg[39]_0 [10]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[11]),
        .Q(\max_accum_s_reg[39]_0 [11]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[12]),
        .Q(\max_accum_s_reg[39]_0 [12]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[13]),
        .Q(\max_accum_s_reg[39]_0 [13]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[14]),
        .Q(\max_accum_s_reg[39]_0 [14]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[15]),
        .Q(\max_accum_s_reg[39]_0 [15]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[16]),
        .Q(\max_accum_s_reg[39]_0 [16]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[17]),
        .Q(\max_accum_s_reg[39]_0 [17]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[18]),
        .Q(\max_accum_s_reg[39]_0 [18]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[19]),
        .Q(\max_accum_s_reg[39]_0 [19]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[1]),
        .Q(\max_accum_s_reg[39]_0 [1]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[20]),
        .Q(\max_accum_s_reg[39]_0 [20]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[21]),
        .Q(\max_accum_s_reg[39]_0 [21]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[22]),
        .Q(\max_accum_s_reg[39]_0 [22]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[23]),
        .Q(\max_accum_s_reg[39]_0 [23]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[24]),
        .Q(\max_accum_s_reg[39]_0 [24]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[25]),
        .Q(\max_accum_s_reg[39]_0 [25]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[26]),
        .Q(\max_accum_s_reg[39]_0 [26]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[27]),
        .Q(\max_accum_s_reg[39]_0 [27]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[28]),
        .Q(\max_accum_s_reg[39]_0 [28]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[29]),
        .Q(\max_accum_s_reg[39]_0 [29]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[2]),
        .Q(\max_accum_s_reg[39]_0 [2]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[30]),
        .Q(\max_accum_s_reg[39]_0 [30]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[31]),
        .Q(\max_accum_s_reg[39]_0 [31]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(s00_axi_wdata[0]),
        .Q(\max_accum_s_reg[39]_0 [32]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[33] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(s00_axi_wdata[1]),
        .Q(\max_accum_s_reg[39]_0 [33]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[34] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(s00_axi_wdata[2]),
        .Q(\max_accum_s_reg[39]_0 [34]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[35] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(s00_axi_wdata[3]),
        .Q(\max_accum_s_reg[39]_0 [35]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[36] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(s00_axi_wdata[4]),
        .Q(\max_accum_s_reg[39]_0 [36]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(s00_axi_wdata[5]),
        .Q(\max_accum_s_reg[39]_0 [37]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[38] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(s00_axi_wdata[6]),
        .Q(\max_accum_s_reg[39]_0 [38]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[39] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(s00_axi_wdata[7]),
        .Q(\max_accum_s_reg[39]_0 [39]),
        .R(s00_axi_reset));
  FDSE \max_accum_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[3]),
        .Q(\max_accum_s_reg[39]_0 [3]),
        .S(s00_axi_reset));
  FDSE \max_accum_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[4]),
        .Q(\max_accum_s_reg[39]_0 [4]),
        .S(s00_axi_reset));
  FDRE \max_accum_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[5]),
        .Q(\max_accum_s_reg[39]_0 [5]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[6]),
        .Q(\max_accum_s_reg[39]_0 [6]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[7]),
        .Q(\max_accum_s_reg[39]_0 [7]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[8]),
        .Q(\max_accum_s_reg[39]_0 [8]),
        .R(s00_axi_reset));
  FDRE \max_accum_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\max_accum_s_reg[39]_1 ),
        .D(max_accum_low_s[9]),
        .Q(\max_accum_s_reg[39]_0 [9]),
        .R(s00_axi_reset));
  FDSE pinc_sw_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pinc_sw_s_reg_0),
        .Q(data3[0]),
        .S(s00_axi_reset));
  FDSE poff_sw_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(poff_sw_s_reg_0),
        .Q(data3[1]),
        .S(s00_axi_reset));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[10]_i_1 
       (.I0(data1[10]),
        .I1(addr_s[2]),
        .I2(Q[10]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\cpt_off_s_reg[11]_0 [10]),
        .O(readdata_s[10]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[11]_i_1 
       (.I0(data1[11]),
        .I1(addr_s[2]),
        .I2(Q[11]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\cpt_off_s_reg[11]_0 [11]),
        .O(readdata_s[11]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[12]_i_1 
       (.I0(data1[12]),
        .I1(addr_s[2]),
        .I2(Q[12]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[12]),
        .O(readdata_s[12]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[13]_i_1 
       (.I0(data1[13]),
        .I1(addr_s[2]),
        .I2(Q[13]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[13]),
        .O(readdata_s[13]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[14]_i_1 
       (.I0(data1[14]),
        .I1(addr_s[2]),
        .I2(Q[14]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[14]),
        .O(readdata_s[14]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[15]_i_1 
       (.I0(data1[15]),
        .I1(addr_s[2]),
        .I2(Q[15]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[15]),
        .O(readdata_s[15]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[16]_i_1 
       (.I0(data1[16]),
        .I1(addr_s[2]),
        .I2(Q[16]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[16]),
        .O(readdata_s[16]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[17]_i_1 
       (.I0(data1[17]),
        .I1(addr_s[2]),
        .I2(Q[17]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[17]),
        .O(readdata_s[17]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[18]_i_1 
       (.I0(data1[18]),
        .I1(addr_s[2]),
        .I2(Q[18]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[18]),
        .O(readdata_s[18]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[19]_i_1 
       (.I0(data1[19]),
        .I1(addr_s[2]),
        .I2(Q[19]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[19]),
        .O(readdata_s[19]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[20]_i_1 
       (.I0(data1[20]),
        .I1(addr_s[2]),
        .I2(Q[20]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[20]),
        .O(readdata_s[20]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[21]_i_1 
       (.I0(data1[21]),
        .I1(addr_s[2]),
        .I2(Q[21]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[21]),
        .O(readdata_s[21]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[22]_i_1 
       (.I0(data1[22]),
        .I1(addr_s[2]),
        .I2(Q[22]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[22]),
        .O(readdata_s[22]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[23]_i_1 
       (.I0(data1[23]),
        .I1(addr_s[2]),
        .I2(Q[23]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[23]),
        .O(readdata_s[23]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[24]_i_1 
       (.I0(data1[24]),
        .I1(addr_s[2]),
        .I2(Q[24]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[24]),
        .O(readdata_s[24]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[25]_i_1 
       (.I0(data1[25]),
        .I1(addr_s[2]),
        .I2(Q[25]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[25]),
        .O(readdata_s[25]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[26]_i_1 
       (.I0(data1[26]),
        .I1(addr_s[2]),
        .I2(Q[26]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[26]),
        .O(readdata_s[26]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[27]_i_1 
       (.I0(data1[27]),
        .I1(addr_s[2]),
        .I2(Q[27]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[27]),
        .O(readdata_s[27]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[28]_i_1 
       (.I0(data1[28]),
        .I1(addr_s[2]),
        .I2(Q[28]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[28]),
        .O(readdata_s[28]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[29]_i_1 
       (.I0(data1[29]),
        .I1(addr_s[2]),
        .I2(Q[29]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[29]),
        .O(readdata_s[29]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[2]_i_1 
       (.I0(Q[34]),
        .I1(addr_s[2]),
        .I2(Q[2]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\cpt_off_s_reg[11]_0 [2]),
        .O(readdata_s[2]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[30]_i_1 
       (.I0(data1[30]),
        .I1(addr_s[2]),
        .I2(Q[30]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[30]),
        .O(readdata_s[30]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[31]_i_2 
       (.I0(data1[31]),
        .I1(addr_s[2]),
        .I2(Q[31]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(cpt_off_s[31]),
        .O(readdata_s[31]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[3]_i_1 
       (.I0(Q[35]),
        .I1(addr_s[2]),
        .I2(Q[3]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\cpt_off_s_reg[11]_0 [3]),
        .O(readdata_s[3]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[4]_i_1 
       (.I0(Q[36]),
        .I1(addr_s[2]),
        .I2(Q[4]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\cpt_off_s_reg[11]_0 [4]),
        .O(readdata_s[4]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[5]_i_1 
       (.I0(Q[37]),
        .I1(addr_s[2]),
        .I2(Q[5]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\cpt_off_s_reg[11]_0 [5]),
        .O(readdata_s[5]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[6]_i_1 
       (.I0(Q[38]),
        .I1(addr_s[2]),
        .I2(Q[6]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\cpt_off_s_reg[11]_0 [6]),
        .O(readdata_s[6]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[7]_i_1 
       (.I0(Q[39]),
        .I1(addr_s[2]),
        .I2(Q[7]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\cpt_off_s_reg[11]_0 [7]),
        .O(readdata_s[7]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[8]_i_1 
       (.I0(data1[8]),
        .I1(addr_s[2]),
        .I2(Q[8]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\cpt_off_s_reg[11]_0 [8]),
        .O(readdata_s[8]));
  LUT6 #(
    .INIT(64'h3033008830000088)) 
    \readdata_s[9]_i_1 
       (.I0(data1[9]),
        .I1(addr_s[2]),
        .I2(Q[9]),
        .I3(addr_s[1]),
        .I4(addr_s[0]),
        .I5(\cpt_off_s_reg[11]_0 [9]),
        .O(readdata_s[9]));
  FDRE \readdata_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(D[0]),
        .Q(s00_axi_rdata[0]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[10]),
        .Q(s00_axi_rdata[10]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[11]),
        .Q(s00_axi_rdata[11]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[12]),
        .Q(s00_axi_rdata[12]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[13]),
        .Q(s00_axi_rdata[13]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[14]),
        .Q(s00_axi_rdata[14]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[15]),
        .Q(s00_axi_rdata[15]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[16]),
        .Q(s00_axi_rdata[16]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[17]),
        .Q(s00_axi_rdata[17]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[18]),
        .Q(s00_axi_rdata[18]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[19]),
        .Q(s00_axi_rdata[19]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(D[1]),
        .Q(s00_axi_rdata[1]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[20]),
        .Q(s00_axi_rdata[20]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[21]),
        .Q(s00_axi_rdata[21]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[22]),
        .Q(s00_axi_rdata[22]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[23]),
        .Q(s00_axi_rdata[23]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[24]),
        .Q(s00_axi_rdata[24]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[25]),
        .Q(s00_axi_rdata[25]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[26]),
        .Q(s00_axi_rdata[26]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[27]),
        .Q(s00_axi_rdata[27]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[28]),
        .Q(s00_axi_rdata[28]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[29]),
        .Q(s00_axi_rdata[29]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[2]),
        .Q(s00_axi_rdata[2]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[30]),
        .Q(s00_axi_rdata[30]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[31]),
        .Q(s00_axi_rdata[31]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[3]),
        .Q(s00_axi_rdata[3]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[4]),
        .Q(s00_axi_rdata[4]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[5]),
        .Q(s00_axi_rdata[5]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[6]),
        .Q(s00_axi_rdata[6]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[7]),
        .Q(s00_axi_rdata[7]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[8]),
        .Q(s00_axi_rdata[8]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\readdata_s_reg[31]_0 ),
        .D(readdata_s[9]),
        .Q(s00_axi_rdata[9]),
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
