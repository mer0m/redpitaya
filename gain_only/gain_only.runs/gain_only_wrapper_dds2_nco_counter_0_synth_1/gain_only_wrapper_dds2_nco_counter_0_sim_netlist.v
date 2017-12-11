// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Thu Dec  7 10:31:58 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.1 (stretch)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gain_only_wrapper_dds2_nco_counter_0_sim_netlist.v
// Design      : gain_only_wrapper_dds2_nco_counter_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "gain_only_wrapper_dds2_nco_counter_0,nco_counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "nco_counter,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
    test_o,
    cos_fake_o,
    sin_fake_o,
    wave_clk_o,
    wave_rst_o,
    wave_en_o);
  input ref_clk_i;
  input ref_rst_i;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_signal_clock CLK" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_signal_reset RST" *) input s00_axi_reset;
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
  (* x_interface_info = "xilinx.com:interface:real:1.0 pinc_in DATA" *) input [31:0]pinc_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 pinc_in DATA_EN" *) input pinc_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 pinc_in DATA_RST" *) input pinc_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 pinc_in DATA_CLK" *) input pinc_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 poff_in DATA" *) input [11:0]poff_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 poff_in DATA_EN" *) input poff_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 poff_in DATA_RST" *) input poff_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 poff_in DATA_CLK" *) input poff_clk_i;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_dds DATA_I" *) output [13:0]dds_cos_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_dds DATA_Q" *) output [13:0]dds_sin_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_dds DATA_EN" *) output dds_en_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_dds DATA_CLK" *) output dds_clk_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_dds DATA_RST" *) output dds_rst_o;
  output test_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_I" *) output cos_fake_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_Q" *) output sin_fake_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_CLK" *) output wave_clk_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_RST" *) output wave_rst_o;
  (* x_interface_info = "xilinx.com:interface:complex:1.0 data_out DATA_EN" *) output wave_en_o;

  wire cos_fake_o;
  wire dds_clk_o;
  wire [13:0]dds_cos_o;
  wire dds_en_o;
  wire dds_rst_o;
  wire [13:0]dds_sin_o;
  wire pinc_clk_i;
  wire pinc_en_i;
  wire [31:0]pinc_i;
  wire pinc_rst_i;
  wire poff_clk_i;
  wire poff_en_i;
  wire [11:0]poff_i;
  wire poff_rst_i;
  wire ref_clk_i;
  wire ref_rst_i;
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
  wire sin_fake_o;
  wire test_o;
  wire wave_clk_o;
  wire wave_en_o;
  wire wave_rst_o;

  (* COUNTER_SIZE = "32" *) 
  (* C_S00_AXI_ADDR_WIDTH = "4" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  (* DATA_SIZE = "14" *) 
  (* DEFAULT_RST_ACCUM_VAL = "25" *) 
  (* LUT_SIZE = "12" *) 
  (* RESET_ACCUM = "FALSE" *) 
  (* id = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nco_counter U0
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
        .test_o(test_o),
        .wave_clk_o(wave_clk_o),
        .wave_en_o(wave_en_o),
        .wave_rst_o(wave_rst_o));
endmodule

(* COUNTER_SIZE = "32" *) (* C_S00_AXI_ADDR_WIDTH = "4" *) (* C_S00_AXI_DATA_WIDTH = "32" *) 
(* DATA_SIZE = "14" *) (* DEFAULT_RST_ACCUM_VAL = "25" *) (* LUT_SIZE = "12" *) 
(* RESET_ACCUM = "FALSE" *) (* id = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nco_counter
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
    test_o,
    cos_fake_o,
    sin_fake_o,
    wave_clk_o,
    wave_rst_o,
    wave_en_o);
  input ref_clk_i;
  input ref_rst_i;
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
  input [31:0]pinc_i;
  input pinc_en_i;
  input pinc_rst_i;
  input pinc_clk_i;
  input [11:0]poff_i;
  input poff_en_i;
  input poff_rst_i;
  input poff_clk_i;
  output [13:0]dds_cos_o;
  output [13:0]dds_sin_o;
  output dds_en_o;
  output dds_clk_o;
  output dds_rst_o;
  output test_o;
  output cos_fake_o;
  output sin_fake_o;
  output wave_clk_o;
  output wave_rst_o;
  output wave_en_o;

  wire \<const0> ;
  wire [1:0]addr_s;
  wire cos_fake_o;
  wire [11:0]cpt_off_mux_s;
  wire [31:0]cpt_step_mux_s;
  wire [13:0]dds_cos_o;
  wire [13:0]dds_sin_o;
  wire handle_comm_n_10;
  wire handle_comm_n_11;
  wire handle_comm_n_7;
  wire handle_comm_n_8;
  wire handle_comm_n_9;
  wire [31:0]pinc_i;
  wire pinc_sw1_s;
  wire pinc_sw2_s;
  wire pinc_sw_s;
  wire [11:0]poff_i;
  wire poff_sw1_s;
  wire poff_sw2_s;
  wire poff_sw_s;
  wire ref_clk_i;
  wire ref_rst_i;
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
  wire sin_fake_o;
  wire test_o;
  wire wave_en_o;

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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nco_counter_handcomm handle_comm
       (.E(handle_comm_n_7),
        .addr_s(addr_s),
        .\cpt_off_s_reg[0] (handle_comm_n_11),
        .\cpt_step_s_reg[0] (handle_comm_n_10),
        .pinc_sw_s(pinc_sw_s),
        .pinc_sw_s_reg(handle_comm_n_9),
        .poff_sw_s(poff_sw_s),
        .poff_sw_s_reg(handle_comm_n_8),
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
        .s00_axi_wdata(s00_axi_wdata[1:0]),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nco_counter_logic nco_inst1
       (.cos_fake_o(cos_fake_o),
        .cpt_off_mux_s(cpt_off_mux_s),
        .cpt_step_mux_s(cpt_step_mux_s),
        .dds_cos_o(dds_cos_o),
        .dds_sin_o(dds_sin_o),
        .ref_clk_i(ref_clk_i),
        .ref_rst_i(ref_rst_i),
        .sin_fake_o(sin_fake_o),
        .test_o(test_o),
        .wave_en_o(wave_en_o));
  FDRE pinc_sw1_s_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(pinc_sw_s),
        .Q(pinc_sw1_s),
        .R(1'b0));
  FDRE pinc_sw2_s_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(pinc_sw1_s),
        .Q(pinc_sw2_s),
        .R(1'b0));
  FDRE poff_sw1_s_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(poff_sw_s),
        .Q(poff_sw1_s),
        .R(1'b0));
  FDRE poff_sw2_s_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(poff_sw1_s),
        .Q(poff_sw2_s),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_nco_counter wb_nco_inst
       (.E(handle_comm_n_10),
        .addr_s(addr_s),
        .axi_arready_reg(handle_comm_n_7),
        .axi_wready_reg(handle_comm_n_11),
        .cpt_off_mux_s(cpt_off_mux_s),
        .cpt_step_mux_s(cpt_step_mux_s),
        .pinc_i(pinc_i),
        .pinc_sw2_s(pinc_sw2_s),
        .pinc_sw_s(pinc_sw_s),
        .pinc_sw_s_reg_0(handle_comm_n_9),
        .poff_i(poff_i),
        .poff_sw2_s(poff_sw2_s),
        .poff_sw_s(poff_sw_s),
        .poff_sw_s_reg_0(handle_comm_n_8),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_wdata(s00_axi_wdata));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nco_counter_cos_rom_a12_d16
   (S,
    data_a_reg_0_0,
    data_a_reg_0_1,
    data_a_reg_0_2,
    data_a_reg_1_0,
    data_a_reg_1_1,
    dds_cos_o,
    dds_sin_o,
    counter_scale_s,
    cpt_off_s,
    O,
    counter_scale_s__0,
    ref_clk_i,
    sel,
    ADDRBWRADDR);
  output [3:0]S;
  output [3:0]data_a_reg_0_0;
  output [3:0]data_a_reg_0_1;
  output [3:0]data_a_reg_0_2;
  output [3:0]data_a_reg_1_0;
  output [3:0]data_a_reg_1_1;
  output [13:0]dds_cos_o;
  output [13:0]dds_sin_o;
  input [0:0]counter_scale_s;
  input [11:0]cpt_off_s;
  input [2:0]O;
  input [10:0]counter_scale_s__0;
  input ref_clk_i;
  input [11:0]sel;
  input [10:0]ADDRBWRADDR;

  wire [10:0]ADDRBWRADDR;
  wire [2:0]O;
  wire [3:0]S;
  wire [0:0]counter_scale_s;
  wire [10:0]counter_scale_s__0;
  wire [11:0]cpt_off_s;
  wire [3:0]data_a_reg_0_0;
  wire [3:0]data_a_reg_0_1;
  wire [3:0]data_a_reg_0_2;
  wire data_a_reg_0_n_51;
  wire data_a_reg_0_n_52;
  wire [3:0]data_a_reg_1_0;
  wire [3:0]data_a_reg_1_1;
  wire data_a_reg_1_i_1_n_0;
  wire [13:0]dds_cos_o;
  wire [13:0]dds_sin_o;
  wire ref_clk_i;
  wire [11:0]sel;
  wire NLW_data_a_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_a_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_a_reg_0_DBITERR_UNCONNECTED;
  wire NLW_data_a_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_a_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_a_reg_0_SBITERR_UNCONNECTED;
  wire [31:8]NLW_data_a_reg_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_a_reg_0_DOBDO_UNCONNECTED;
  wire [3:1]NLW_data_a_reg_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_data_a_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_a_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_a_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_data_a_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_a_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_a_reg_1_DBITERR_UNCONNECTED;
  wire NLW_data_a_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_a_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_a_reg_1_SBITERR_UNCONNECTED;
  wire [31:7]NLW_data_a_reg_1_DOADO_UNCONNECTED;
  wire [31:7]NLW_data_a_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_a_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_a_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_a_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_a_reg_1_RDADDRECC_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry__0_i_1
       (.I0(counter_scale_s__0[7]),
        .I1(cpt_off_s[7]),
        .O(data_a_reg_1_1[3]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry__0_i_2
       (.I0(counter_scale_s__0[6]),
        .I1(cpt_off_s[6]),
        .O(data_a_reg_1_1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry__0_i_3
       (.I0(counter_scale_s__0[5]),
        .I1(cpt_off_s[5]),
        .O(data_a_reg_1_1[1]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry__0_i_4
       (.I0(counter_scale_s__0[4]),
        .I1(cpt_off_s[4]),
        .O(data_a_reg_1_1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry__1_i_1
       (.I0(counter_scale_s),
        .I1(cpt_off_s[11]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry__1_i_2
       (.I0(counter_scale_s__0[10]),
        .I1(cpt_off_s[10]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry__1_i_3
       (.I0(counter_scale_s__0[9]),
        .I1(cpt_off_s[9]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry__1_i_4
       (.I0(counter_scale_s__0[8]),
        .I1(cpt_off_s[8]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry_i_1
       (.I0(counter_scale_s__0[3]),
        .I1(cpt_off_s[3]),
        .O(data_a_reg_1_0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry_i_2
       (.I0(counter_scale_s__0[2]),
        .I1(cpt_off_s[2]),
        .O(data_a_reg_1_0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry_i_3
       (.I0(counter_scale_s__0[1]),
        .I1(cpt_off_s[1]),
        .O(data_a_reg_1_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry_i_4
       (.I0(counter_scale_s__0[0]),
        .I1(cpt_off_s[0]),
        .O(data_a_reg_1_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry__0_i_1
       (.I0(counter_scale_s__0[7]),
        .I1(cpt_off_s[7]),
        .O(data_a_reg_0_1[3]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry__0_i_2
       (.I0(counter_scale_s__0[6]),
        .I1(cpt_off_s[6]),
        .O(data_a_reg_0_1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry__0_i_3
       (.I0(counter_scale_s__0[5]),
        .I1(cpt_off_s[5]),
        .O(data_a_reg_0_1[1]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry__0_i_4
       (.I0(counter_scale_s__0[4]),
        .I1(cpt_off_s[4]),
        .O(data_a_reg_0_1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry__1_i_1
       (.I0(O[2]),
        .I1(cpt_off_s[11]),
        .O(data_a_reg_0_0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry__1_i_2
       (.I0(O[1]),
        .I1(cpt_off_s[10]),
        .O(data_a_reg_0_0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry__1_i_3
       (.I0(O[0]),
        .I1(cpt_off_s[9]),
        .O(data_a_reg_0_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry__1_i_4
       (.I0(counter_scale_s__0[8]),
        .I1(cpt_off_s[8]),
        .O(data_a_reg_0_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry_i_1
       (.I0(counter_scale_s__0[3]),
        .I1(cpt_off_s[3]),
        .O(data_a_reg_0_2[3]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry_i_2
       (.I0(counter_scale_s__0[2]),
        .I1(cpt_off_s[2]),
        .O(data_a_reg_0_2[2]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry_i_3
       (.I0(counter_scale_s__0[1]),
        .I1(cpt_off_s[1]),
        .O(data_a_reg_0_2[1]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry_i_4
       (.I0(counter_scale_s__0[0]),
        .I1(cpt_off_s[0]),
        .O(data_a_reg_0_2[0]));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "nco_inst1/rom_12.rom12_inst/data_a" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h003FFF0001FFFE00007FFFF000003FFFFFF000000003FFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'h1FC03F807F00FF00FF00FF807FC01FF007FC00FFC00FFC007FF001FFE001FFF0),
    .INITP_02(256'hF81F03E07E0FC0FC1F81F81F81F81F81F81F80FC0FE07F03F81FC07F01FC07F0),
    .INITP_03(256'h07C1F07C1F07C0F83E0F83E07C1F07C0F83E0FC1F07E0F81F07E0F81F03E07C0),
    .INITP_04(256'hF83F07E0FC1F03E0FC1F07E0F83F07C1F83E0F83E07C1F07C1F03E0F83E0F83E),
    .INITP_05(256'hE03F80FE03F80FC07E03F01F81FC0FC0FC0FC0FC0FC0FC0F81F81F03F07E0FC1),
    .INITP_06(256'hE000FFF000FFE003FF801FF801FF803FE00FF803FC01FE01FE01FE03FC07F80F),
    .INITP_07(256'h000000000000000000007FFFFFFFE0000007FFFFE00003FFFF0000FFFE0007FF),
    .INITP_08(256'hFFC000FFFE0001FFFF80000FFFFFC000000FFFFFFFFC00000000000000000000),
    .INITP_09(256'hE03FC07F80FF00FF00FF007F803FE00FF803FF003FF003FF800FFE001FFE000F),
    .INITP_0A(256'h07E0FC1F81F03F03E07E07E07E07E07E07E07F03F01F80FC07E03F80FE03F80F),
    .INITP_0B(256'hF83E0F83E0F81F07C1F07C0F83E0F83F07C1F83E0FC1F07E0F81F07E0FC1F83F),
    .INITP_0C(256'h07C0F81F03E0FC1F03E0FC1F07E0F83E07C1F07C0F83E0F83E07C1F07C1F07C0),
    .INITP_0D(256'h1FC07F01FC07F03F81FC0FE07E03F03F03F03F03F03F03F07E07E0FC0F81F03E),
    .INITP_0E(256'h1FFF000FFF001FFC007FE007FE007FC01FF007FC03FE01FE01FE01FC03F807F0),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFF800000001FFFFFF800001FFFFC0000FFFF0001FFF800),
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
        .DIPADIP({1'b0,1'b0,1'b0,1'b1}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_a_reg_0_DOADO_UNCONNECTED[31:8],dds_cos_o[5:0],data_a_reg_0_n_51,data_a_reg_0_n_52}),
        .DOBDO({NLW_data_a_reg_0_DOBDO_UNCONNECTED[31:8],dds_sin_o[5:0],NLW_data_a_reg_0_DOBDO_UNCONNECTED[1:0]}),
        .DOPADOP({NLW_data_a_reg_0_DOPADOP_UNCONNECTED[3:1],dds_cos_o[6]}),
        .DOPBDOP({NLW_data_a_reg_0_DOPBDOP_UNCONNECTED[3:1],dds_sin_o[6]}),
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
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "nco_inst1/rom_12.rom12_inst/data_a" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "15" *) 
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
    .INIT_00(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_01(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_02(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_03(256'h3E3E3E3E3E3E3E3E3E3E3E3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_04(256'h3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E),
    .INIT_05(256'h3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3E3E3E3E),
    .INIT_06(256'h3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3D3D3D3D3D3D3D3D3D),
    .INIT_07(256'h3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3C3C3C3C3C3C3C3C),
    .INIT_08(256'h3939393A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3B3B3B3B),
    .INIT_09(256'h3838383838383838383838383939393939393939393939393939393939393939),
    .INIT_0A(256'h3636373737373737373737373737373737373737373738383838383838383838),
    .INIT_0B(256'h3535353535353535353535353535363636363636363636363636363636363636),
    .INIT_0C(256'h3333333333333333333334343434343434343434343434343434343435353535),
    .INIT_0D(256'h3131313131313131323232323232323232323232323232323233333333333333),
    .INIT_0E(256'h2F2F2F2F2F2F2F2F303030303030303030303030303030303131313131313131),
    .INIT_0F(256'h2D2D2D2D2D2D2D2D2D2D2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2F2F2F2F2F2F2F),
    .INIT_10(256'h2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C2C2C2C2C2C2C2C2C2C2C2C2C2C2D2D2D2D),
    .INIT_11(256'h2828282828292929292929292929292929292A2A2A2A2A2A2A2A2A2A2A2A2A2A),
    .INIT_12(256'h2626262626262626262626272727272727272727272727272828282828282828),
    .INIT_13(256'h2323232323242424242424242424242424252525252525252525252525252626),
    .INIT_14(256'h2021212121212121212121212122222222222222222222222223232323232323),
    .INIT_15(256'h1E1E1E1E1E1E1E1E1E1F1F1F1F1F1F1F1F1F1F1F1F2020202020202020202020),
    .INIT_16(256'h1B1B1B1B1B1B1B1C1C1C1C1C1C1C1C1C1C1C1D1D1D1D1D1D1D1D1D1D1D1D1E1E),
    .INIT_17(256'h181818181819191919191919191919191A1A1A1A1A1A1A1A1A1A1A1B1B1B1B1B),
    .INIT_18(256'h1515151516161616161616161616161717171717171717171717181818181818),
    .INIT_19(256'h1212121213131313131313131313131414141414141414141415151515151515),
    .INIT_1A(256'h0F0F0F0F10101010101010101010101111111111111111111112121212121212),
    .INIT_1B(256'h0C0C0C0C0C0D0D0D0D0D0D0D0D0D0D0E0E0E0E0E0E0E0E0E0E0E0F0F0F0F0F0F),
    .INIT_1C(256'h0909090909090A0A0A0A0A0A0A0A0A0A0B0B0B0B0B0B0B0B0B0B0C0C0C0C0C0C),
    .INIT_1D(256'h0606060606060607070707070707070707080808080808080808080909090909),
    .INIT_1E(256'h0303030303030303040404040404040404040505050505050505050505060606),
    .INIT_1F(256'h0000000000000000000001010101010101010101020202020202020202020303),
    .INIT_20(256'h7C7D7D7D7D7D7D7D7D7D7D7E7E7E7E7E7E7E7E7E7E7F7F7F7F7F7F7F7F7F7F00),
    .INIT_21(256'h79797A7A7A7A7A7A7A7A7A7A7B7B7B7B7B7B7B7B7B7B7B7C7C7C7C7C7C7C7C7C),
    .INIT_22(256'h7676767777777777777777777777787878787878787878787979797979797979),
    .INIT_23(256'h7373737373747474747474747474747575757575757575757576767676767676),
    .INIT_24(256'h7070707070717171717171717171717172727272727272727272737373737373),
    .INIT_25(256'h6D6D6D6D6D6D6E6E6E6E6E6E6E6E6E6E6F6F6F6F6F6F6F6F6F6F6F7070707070),
    .INIT_26(256'h6A6A6A6A6A6A6B6B6B6B6B6B6B6B6B6B6C6C6C6C6C6C6C6C6C6C6C6D6D6D6D6D),
    .INIT_27(256'h6767676767686868686868686868686869696969696969696969696A6A6A6A6A),
    .INIT_28(256'h6464646465656565656565656565656666666666666666666666676767676767),
    .INIT_29(256'h6162626262626262626262626263636363636363636363636464646464646464),
    .INIT_2A(256'h5F5F5F5F5F5F5F5F5F5F60606060606060606060606061616161616161616161),
    .INIT_2B(256'h5C5C5C5C5C5C5D5D5D5D5D5D5D5D5D5D5D5D5E5E5E5E5E5E5E5E5E5E5E5E5F5F),
    .INIT_2C(256'h595A5A5A5A5A5A5A5A5A5A5A5A5A5B5B5B5B5B5B5B5B5B5B5B5B5C5C5C5C5C5C),
    .INIT_2D(256'h5757575757575758585858585858585858585858595959595959595959595959),
    .INIT_2E(256'h5555555555555555555555555556565656565656565656565656575757575757),
    .INIT_2F(256'h5252525353535353535353535353535353545454545454545454545454545455),
    .INIT_30(256'h5050505050505151515151515151515151515151515252525252525252525252),
    .INIT_31(256'h4E4E4E4E4E4E4E4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F505050505050505050),
    .INIT_32(256'h4C4C4C4C4C4C4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4E4E4E4E4E4E4E4E4E),
    .INIT_33(256'h4A4A4A4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_34(256'h49494949494949494949494949494949494A4A4A4A4A4A4A4A4A4A4A4A4A4A4A),
    .INIT_35(256'h4747474747474747474848484848484848484848484848484848484848494949),
    .INIT_36(256'h4646464646464646464646464646464646464647474747474747474747474747),
    .INIT_37(256'h4444444545454545454545454545454545454545454545454545454546464646),
    .INIT_38(256'h4343434343434344444444444444444444444444444444444444444444444444),
    .INIT_39(256'h4242424242424242434343434343434343434343434343434343434343434343),
    .INIT_3A(256'h4141414242424242424242424242424242424242424242424242424242424242),
    .INIT_3B(256'h4141414141414141414141414141414141414141414141414141414141414141),
    .INIT_3C(256'h4040404040404040404040404040404040404041414141414141414141414141),
    .INIT_3D(256'h4040404040404040404040404040404040404040404040404040404040404040),
    .INIT_3E(256'h4040404040404040404040404040404040404040404040404040404040404040),
    .INIT_3F(256'h4040404040404040404040404040404040404040404040404040404040404040),
    .INIT_40(256'h4040404040404040404040404040404040404040404040404040404040404040),
    .INIT_41(256'h4040404040404040404040404040404040404040404040404040404040404040),
    .INIT_42(256'h4040404040404040404040404040404040404040404040404040404040404040),
    .INIT_43(256'h4141414141414141414141414040404040404040404040404040404040404040),
    .INIT_44(256'h4141414141414141414141414141414141414141414141414141414141414141),
    .INIT_45(256'h4242424242424242424242424242424242424242424242424242424241414141),
    .INIT_46(256'h4343434343434343434343434343434343434343434343424242424242424242),
    .INIT_47(256'h4444444444444444444444444444444444444444444444444343434343434343),
    .INIT_48(256'h4646464545454545454545454545454545454545454545454545454544444444),
    .INIT_49(256'h4747474747474747474747474646464646464646464646464646464646464646),
    .INIT_4A(256'h4949484848484848484848484848484848484848484847474747474747474747),
    .INIT_4B(256'h4A4A4A4A4A4A4A4A4A4A4A4A4A4A494949494949494949494949494949494949),
    .INIT_4C(256'h4C4C4C4C4C4C4C4C4C4C4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4A4A4A4A),
    .INIT_4D(256'h4E4E4E4E4E4E4E4E4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4C4C4C4C4C4C4C),
    .INIT_4E(256'h50505050505050504F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E4E4E4E4E4E4E4E),
    .INIT_4F(256'h5252525252525252525251515151515151515151515151515150505050505050),
    .INIT_50(256'h5454545454545454545454545454535353535353535353535353535352525252),
    .INIT_51(256'h5757575757565656565656565656565656565555555555555555555555555555),
    .INIT_52(256'h5959595959595959595959585858585858585858585858585757575757575757),
    .INIT_53(256'h5C5C5C5C5C5B5B5B5B5B5B5B5B5B5B5B5B5A5A5A5A5A5A5A5A5A5A5A5A5A5959),
    .INIT_54(256'h5F5E5E5E5E5E5E5E5E5E5E5E5E5D5D5D5D5D5D5D5D5D5D5D5D5C5C5C5C5C5C5C),
    .INIT_55(256'h6161616161616161616060606060606060606060605F5F5F5F5F5F5F5F5F5F5F),
    .INIT_56(256'h6464646464646463636363636363636363636262626262626262626262626161),
    .INIT_57(256'h6767676767666666666666666666666665656565656565656565656464646464),
    .INIT_58(256'h6A6A6A6A69696969696969696969696868686868686868686868676767676767),
    .INIT_59(256'h6D6D6D6D6C6C6C6C6C6C6C6C6C6C6C6B6B6B6B6B6B6B6B6B6B6A6A6A6A6A6A6A),
    .INIT_5A(256'h707070706F6F6F6F6F6F6F6F6F6F6F6E6E6E6E6E6E6E6E6E6E6D6D6D6D6D6D6D),
    .INIT_5B(256'h7373737373727272727272727272727171717171717171717171707070707070),
    .INIT_5C(256'h7676767676767575757575757575757574747474747474747474737373737373),
    .INIT_5D(256'h7979797979797978787878787878787878777777777777777777777776767676),
    .INIT_5E(256'h7C7C7C7C7C7C7C7C7B7B7B7B7B7B7B7B7B7B7B7A7A7A7A7A7A7A7A7A7A797979),
    .INIT_5F(256'h7F7F7F7F7F7F7F7F7F7F7E7E7E7E7E7E7E7E7E7E7D7D7D7D7D7D7D7D7D7D7C7C),
    .INIT_60(256'h0302020202020202020202010101010101010101010000000000000000000000),
    .INIT_61(256'h0606050505050505050505050504040404040404040404030303030303030303),
    .INIT_62(256'h0909090908080808080808080808070707070707070707070606060606060606),
    .INIT_63(256'h0C0C0C0C0C0B0B0B0B0B0B0B0B0B0B0A0A0A0A0A0A0A0A0A0A09090909090909),
    .INIT_64(256'h0F0F0F0F0F0E0E0E0E0E0E0E0E0E0E0E0D0D0D0D0D0D0D0D0D0D0C0C0C0C0C0C),
    .INIT_65(256'h1212121212121111111111111111111110101010101010101010100F0F0F0F0F),
    .INIT_66(256'h1515151515151414141414141414141413131313131313131313131212121212),
    .INIT_67(256'h1818181818171717171717171717171716161616161616161616161515151515),
    .INIT_68(256'h1B1B1B1B1A1A1A1A1A1A1A1A1A1A1A1919191919191919191919181818181818),
    .INIT_69(256'h1E1D1D1D1D1D1D1D1D1D1D1D1D1C1C1C1C1C1C1C1C1C1C1C1B1B1B1B1B1B1B1B),
    .INIT_6A(256'h202020202020202020201F1F1F1F1F1F1F1F1F1F1F1F1E1E1E1E1E1E1E1E1E1E),
    .INIT_6B(256'h2323232323232222222222222222222222222121212121212121212121212020),
    .INIT_6C(256'h2625252525252525252525252525242424242424242424242424232323232323),
    .INIT_6D(256'h2828282828282827272727272727272727272727262626262626262626262626),
    .INIT_6E(256'h2A2A2A2A2A2A2A2A2A2A2A2A2A29292929292929292929292929282828282828),
    .INIT_6F(256'h2D2D2D2C2C2C2C2C2C2C2C2C2C2C2C2C2C2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A),
    .INIT_70(256'h2F2F2F2F2F2F2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2D2D2D2D2D2D2D2D2D2D2D),
    .INIT_71(256'h31313131313131303030303030303030303030303030302F2F2F2F2F2F2F2F2F),
    .INIT_72(256'h3333333333333232323232323232323232323232323232313131313131313131),
    .INIT_73(256'h3535353434343434343434343434343434343434343333333333333333333333),
    .INIT_74(256'h3636363636363636363636363636363636353535353535353535353535353535),
    .INIT_75(256'h3838383838383838383737373737373737373737373737373737373737363636),
    .INIT_76(256'h3939393939393939393939393939393939393938383838383838383838383838),
    .INIT_77(256'h3B3B3B3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A39393939),
    .INIT_78(256'h3C3C3C3C3C3C3C3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B),
    .INIT_79(256'h3D3D3D3D3D3D3D3D3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C),
    .INIT_7A(256'h3E3E3E3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D),
    .INIT_7B(256'h3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E),
    .INIT_7C(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3E3E3E3E3E3E3E3E3E3E3E3E),
    .INIT_7D(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_7E(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_7F(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_a_reg_1_DOADO_UNCONNECTED[31:7],dds_cos_o[13:7]}),
        .DOBDO({NLW_data_a_reg_1_DOBDO_UNCONNECTED[31:7],dds_sin_o[13:7]}),
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
  LUT2 #(
    .INIT(4'h6)) 
    data_a_reg_1_i_1
       (.I0(counter_scale_s__0[0]),
        .I1(cpt_off_s[0]),
        .O(data_a_reg_1_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nco_counter_handcomm
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    addr_s,
    E,
    poff_sw_s_reg,
    pinc_sw_s_reg,
    \cpt_step_s_reg[0] ,
    \cpt_off_s_reg[0] ,
    s00_axi_reset,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    poff_sw_s,
    pinc_sw_s,
    s00_axi_awaddr,
    s00_axi_araddr);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [1:0]addr_s;
  output [0:0]E;
  output poff_sw_s_reg;
  output pinc_sw_s_reg;
  output [0:0]\cpt_step_s_reg[0] ;
  output [0:0]\cpt_off_s_reg[0] ;
  input s00_axi_reset;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_wdata;
  input poff_sw_s;
  input pinc_sw_s;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;

  wire [0:0]E;
  wire [1:0]addr_reg;
  wire \addr_reg[1]_i_2_n_0 ;
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
  wire [0:0]\cpt_off_s_reg[0] ;
  wire [0:0]\cpt_step_s_reg[0] ;
  wire pinc_sw_s;
  wire pinc_sw_s_reg;
  wire poff_sw_s;
  wire poff_sw_s_reg;
  wire [1:0]read_addr_s;
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
  wire [1:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire [1:0]write_addr_s;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \addr_reg[0]_i_1 
       (.I0(read_addr_s[0]),
        .I1(E),
        .I2(addr_reg[0]),
        .I3(\addr_reg[1]_i_2_n_0 ),
        .I4(write_addr_s[0]),
        .O(addr_s[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \addr_reg[1]_i_1 
       (.I0(read_addr_s[1]),
        .I1(E),
        .I2(addr_reg[1]),
        .I3(\addr_reg[1]_i_2_n_0 ),
        .I4(write_addr_s[1]),
        .O(addr_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \addr_reg[1]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .O(\addr_reg[1]_i_2_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \cpt_off_s[31]_i_1 
       (.I0(addr_s[0]),
        .I1(addr_s[1]),
        .I2(s00_axi_wready),
        .I3(s00_axi_awready),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wvalid),
        .O(\cpt_off_s_reg[0] ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \cpt_step_s[31]_i_1 
       (.I0(addr_s[1]),
        .I1(addr_s[0]),
        .I2(s00_axi_wready),
        .I3(s00_axi_awready),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wvalid),
        .O(\cpt_step_s_reg[0] ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    pinc_sw_s_i_1
       (.I0(s00_axi_wdata[0]),
        .I1(addr_s[1]),
        .I2(addr_s[0]),
        .I3(\addr_reg[1]_i_2_n_0 ),
        .I4(pinc_sw_s),
        .O(pinc_sw_s_reg));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    poff_sw_s_i_1
       (.I0(s00_axi_wdata[1]),
        .I1(addr_s[1]),
        .I2(addr_s[0]),
        .I3(\addr_reg[1]_i_2_n_0 ),
        .I4(poff_sw_s),
        .O(poff_sw_s_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \readdata_s[31]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .I2(s00_axi_rvalid),
        .O(E));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nco_counter_logic
   (wave_en_o,
    sin_fake_o,
    cos_fake_o,
    dds_cos_o,
    dds_sin_o,
    test_o,
    ref_rst_i,
    ref_clk_i,
    cpt_step_mux_s,
    cpt_off_mux_s);
  output wave_en_o;
  output sin_fake_o;
  output cos_fake_o;
  output [13:0]dds_cos_o;
  output [13:0]dds_sin_o;
  output test_o;
  input ref_rst_i;
  input ref_clk_i;
  input [31:0]cpt_step_mux_s;
  input [11:0]cpt_off_mux_s;

  wire cos_fake_o;
  wire counter_cos_off_s_carry__0_n_0;
  wire counter_cos_off_s_carry__0_n_1;
  wire counter_cos_off_s_carry__0_n_2;
  wire counter_cos_off_s_carry__0_n_3;
  wire counter_cos_off_s_carry__1_n_1;
  wire counter_cos_off_s_carry__1_n_2;
  wire counter_cos_off_s_carry__1_n_3;
  wire counter_cos_off_s_carry_n_0;
  wire counter_cos_off_s_carry_n_1;
  wire counter_cos_off_s_carry_n_2;
  wire counter_cos_off_s_carry_n_3;
  wire \counter_s[0]_i_1_n_0 ;
  wire \counter_s[0]_i_3_n_0 ;
  wire \counter_s[0]_i_4_n_0 ;
  wire \counter_s[0]_i_5_n_0 ;
  wire \counter_s[0]_i_6_n_0 ;
  wire \counter_s[12]_i_2_n_0 ;
  wire \counter_s[12]_i_3_n_0 ;
  wire \counter_s[12]_i_4_n_0 ;
  wire \counter_s[12]_i_5_n_0 ;
  wire \counter_s[16]_i_2_n_0 ;
  wire \counter_s[16]_i_3_n_0 ;
  wire \counter_s[16]_i_4_n_0 ;
  wire \counter_s[16]_i_5_n_0 ;
  wire \counter_s[20]_i_2_n_0 ;
  wire \counter_s[20]_i_3_n_0 ;
  wire \counter_s[20]_i_4_n_0 ;
  wire \counter_s[20]_i_5_n_0 ;
  wire \counter_s[24]_i_2_n_0 ;
  wire \counter_s[24]_i_3_n_0 ;
  wire \counter_s[24]_i_4_n_0 ;
  wire \counter_s[24]_i_5_n_0 ;
  wire \counter_s[28]_i_2_n_0 ;
  wire \counter_s[28]_i_3_n_0 ;
  wire \counter_s[28]_i_4_n_0 ;
  wire \counter_s[28]_i_5_n_0 ;
  wire \counter_s[4]_i_2_n_0 ;
  wire \counter_s[4]_i_3_n_0 ;
  wire \counter_s[4]_i_4_n_0 ;
  wire \counter_s[4]_i_5_n_0 ;
  wire \counter_s[8]_i_2_n_0 ;
  wire \counter_s[8]_i_3_n_0 ;
  wire \counter_s[8]_i_4_n_0 ;
  wire \counter_s[8]_i_5_n_0 ;
  wire \counter_s_reg[0]_i_2_n_0 ;
  wire \counter_s_reg[0]_i_2_n_1 ;
  wire \counter_s_reg[0]_i_2_n_2 ;
  wire \counter_s_reg[0]_i_2_n_3 ;
  wire \counter_s_reg[0]_i_2_n_4 ;
  wire \counter_s_reg[0]_i_2_n_5 ;
  wire \counter_s_reg[0]_i_2_n_6 ;
  wire \counter_s_reg[0]_i_2_n_7 ;
  wire \counter_s_reg[12]_i_1_n_0 ;
  wire \counter_s_reg[12]_i_1_n_1 ;
  wire \counter_s_reg[12]_i_1_n_2 ;
  wire \counter_s_reg[12]_i_1_n_3 ;
  wire \counter_s_reg[12]_i_1_n_4 ;
  wire \counter_s_reg[12]_i_1_n_5 ;
  wire \counter_s_reg[12]_i_1_n_6 ;
  wire \counter_s_reg[12]_i_1_n_7 ;
  wire \counter_s_reg[16]_i_1_n_0 ;
  wire \counter_s_reg[16]_i_1_n_1 ;
  wire \counter_s_reg[16]_i_1_n_2 ;
  wire \counter_s_reg[16]_i_1_n_3 ;
  wire \counter_s_reg[16]_i_1_n_4 ;
  wire \counter_s_reg[16]_i_1_n_5 ;
  wire \counter_s_reg[16]_i_1_n_6 ;
  wire \counter_s_reg[16]_i_1_n_7 ;
  wire \counter_s_reg[20]_i_1_n_0 ;
  wire \counter_s_reg[20]_i_1_n_1 ;
  wire \counter_s_reg[20]_i_1_n_2 ;
  wire \counter_s_reg[20]_i_1_n_3 ;
  wire \counter_s_reg[20]_i_1_n_4 ;
  wire \counter_s_reg[20]_i_1_n_5 ;
  wire \counter_s_reg[20]_i_1_n_6 ;
  wire \counter_s_reg[20]_i_1_n_7 ;
  wire \counter_s_reg[24]_i_1_n_0 ;
  wire \counter_s_reg[24]_i_1_n_1 ;
  wire \counter_s_reg[24]_i_1_n_2 ;
  wire \counter_s_reg[24]_i_1_n_3 ;
  wire \counter_s_reg[24]_i_1_n_4 ;
  wire \counter_s_reg[24]_i_1_n_5 ;
  wire \counter_s_reg[24]_i_1_n_6 ;
  wire \counter_s_reg[24]_i_1_n_7 ;
  wire \counter_s_reg[28]_i_1_n_1 ;
  wire \counter_s_reg[28]_i_1_n_2 ;
  wire \counter_s_reg[28]_i_1_n_3 ;
  wire \counter_s_reg[28]_i_1_n_4 ;
  wire \counter_s_reg[28]_i_1_n_5 ;
  wire \counter_s_reg[28]_i_1_n_6 ;
  wire \counter_s_reg[28]_i_1_n_7 ;
  wire \counter_s_reg[4]_i_1_n_0 ;
  wire \counter_s_reg[4]_i_1_n_1 ;
  wire \counter_s_reg[4]_i_1_n_2 ;
  wire \counter_s_reg[4]_i_1_n_3 ;
  wire \counter_s_reg[4]_i_1_n_4 ;
  wire \counter_s_reg[4]_i_1_n_5 ;
  wire \counter_s_reg[4]_i_1_n_6 ;
  wire \counter_s_reg[4]_i_1_n_7 ;
  wire \counter_s_reg[8]_i_1_n_0 ;
  wire \counter_s_reg[8]_i_1_n_1 ;
  wire \counter_s_reg[8]_i_1_n_2 ;
  wire \counter_s_reg[8]_i_1_n_3 ;
  wire \counter_s_reg[8]_i_1_n_4 ;
  wire \counter_s_reg[8]_i_1_n_5 ;
  wire \counter_s_reg[8]_i_1_n_6 ;
  wire \counter_s_reg[8]_i_1_n_7 ;
  wire \counter_s_reg_n_0_[0] ;
  wire \counter_s_reg_n_0_[10] ;
  wire \counter_s_reg_n_0_[11] ;
  wire \counter_s_reg_n_0_[12] ;
  wire \counter_s_reg_n_0_[13] ;
  wire \counter_s_reg_n_0_[14] ;
  wire \counter_s_reg_n_0_[15] ;
  wire \counter_s_reg_n_0_[16] ;
  wire \counter_s_reg_n_0_[17] ;
  wire \counter_s_reg_n_0_[18] ;
  wire \counter_s_reg_n_0_[19] ;
  wire \counter_s_reg_n_0_[1] ;
  wire \counter_s_reg_n_0_[2] ;
  wire \counter_s_reg_n_0_[3] ;
  wire \counter_s_reg_n_0_[4] ;
  wire \counter_s_reg_n_0_[5] ;
  wire \counter_s_reg_n_0_[6] ;
  wire \counter_s_reg_n_0_[7] ;
  wire \counter_s_reg_n_0_[8] ;
  wire \counter_s_reg_n_0_[9] ;
  wire [11:11]counter_scale_s;
  wire [10:0]counter_scale_s__0;
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
  wire counter_sin_off_s_carry_n_0;
  wire counter_sin_off_s_carry_n_1;
  wire counter_sin_off_s_carry_n_2;
  wire counter_sin_off_s_carry_n_3;
  wire counter_sin_off_s_carry_n_4;
  wire counter_sin_off_s_carry_n_5;
  wire counter_sin_off_s_carry_n_6;
  wire \cpt_inc2_s_reg[0]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[10]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[11]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[12]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[13]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[14]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[15]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[16]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[17]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[18]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[19]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[1]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[20]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[21]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[22]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[23]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[24]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[25]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[26]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[27]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[28]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[29]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[2]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[30]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[31]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[3]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[4]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[5]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[6]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[7]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[8]_srl2_n_0 ;
  wire \cpt_inc2_s_reg[9]_srl2_n_0 ;
  wire \cpt_off2_s_reg[0]_srl2_n_0 ;
  wire \cpt_off2_s_reg[10]_srl2_n_0 ;
  wire \cpt_off2_s_reg[11]_srl2_n_0 ;
  wire \cpt_off2_s_reg[1]_srl2_n_0 ;
  wire \cpt_off2_s_reg[2]_srl2_n_0 ;
  wire \cpt_off2_s_reg[3]_srl2_n_0 ;
  wire \cpt_off2_s_reg[4]_srl2_n_0 ;
  wire \cpt_off2_s_reg[5]_srl2_n_0 ;
  wire \cpt_off2_s_reg[6]_srl2_n_0 ;
  wire \cpt_off2_s_reg[7]_srl2_n_0 ;
  wire \cpt_off2_s_reg[8]_srl2_n_0 ;
  wire \cpt_off2_s_reg[9]_srl2_n_0 ;
  wire [11:0]cpt_off_mux_s;
  wire [11:0]cpt_off_s;
  wire [31:0]cpt_step_mux_s;
  wire [13:0]dds_cos_o;
  wire [13:0]dds_sin_o;
  wire [31:0]in;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire ready2_s;
  wire ref_clk_i;
  wire ref_rst_i;
  wire \rom_12.rom12_inst_n_0 ;
  wire \rom_12.rom12_inst_n_1 ;
  wire \rom_12.rom12_inst_n_10 ;
  wire \rom_12.rom12_inst_n_11 ;
  wire \rom_12.rom12_inst_n_12 ;
  wire \rom_12.rom12_inst_n_13 ;
  wire \rom_12.rom12_inst_n_14 ;
  wire \rom_12.rom12_inst_n_15 ;
  wire \rom_12.rom12_inst_n_16 ;
  wire \rom_12.rom12_inst_n_17 ;
  wire \rom_12.rom12_inst_n_18 ;
  wire \rom_12.rom12_inst_n_19 ;
  wire \rom_12.rom12_inst_n_2 ;
  wire \rom_12.rom12_inst_n_20 ;
  wire \rom_12.rom12_inst_n_21 ;
  wire \rom_12.rom12_inst_n_22 ;
  wire \rom_12.rom12_inst_n_23 ;
  wire \rom_12.rom12_inst_n_3 ;
  wire \rom_12.rom12_inst_n_4 ;
  wire \rom_12.rom12_inst_n_5 ;
  wire \rom_12.rom12_inst_n_6 ;
  wire \rom_12.rom12_inst_n_7 ;
  wire \rom_12.rom12_inst_n_8 ;
  wire \rom_12.rom12_inst_n_9 ;
  wire [11:0]sel;
  wire sin_fake_o;
  wire sin_next;
  wire test_o;
  wire test_o_INST_0_i_1_n_0;
  wire wave_en_o;
  wire [3:3]NLW_counter_cos_off_s_carry__1_CO_UNCONNECTED;
  wire [3:3]\NLW_counter_s_reg[28]_i_1_CO_UNCONNECTED ;
  wire [0:0]NLW_counter_sin_off_s_carry_O_UNCONNECTED;
  wire [3:3]NLW_counter_sin_off_s_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_minusOp_carry_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry_O_UNCONNECTED;

  FDSE cos_fake_o_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(counter_scale_s),
        .Q(cos_fake_o),
        .S(ref_rst_i));
  CARRY4 counter_cos_off_s_carry
       (.CI(1'b0),
        .CO({counter_cos_off_s_carry_n_0,counter_cos_off_s_carry_n_1,counter_cos_off_s_carry_n_2,counter_cos_off_s_carry_n_3}),
        .CYINIT(1'b0),
        .DI(counter_scale_s__0[3:0]),
        .O(sel[3:0]),
        .S({\rom_12.rom12_inst_n_16 ,\rom_12.rom12_inst_n_17 ,\rom_12.rom12_inst_n_18 ,\rom_12.rom12_inst_n_19 }));
  CARRY4 counter_cos_off_s_carry__0
       (.CI(counter_cos_off_s_carry_n_0),
        .CO({counter_cos_off_s_carry__0_n_0,counter_cos_off_s_carry__0_n_1,counter_cos_off_s_carry__0_n_2,counter_cos_off_s_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter_scale_s__0[7:4]),
        .O(sel[7:4]),
        .S({\rom_12.rom12_inst_n_20 ,\rom_12.rom12_inst_n_21 ,\rom_12.rom12_inst_n_22 ,\rom_12.rom12_inst_n_23 }));
  CARRY4 counter_cos_off_s_carry__1
       (.CI(counter_cos_off_s_carry__0_n_0),
        .CO({NLW_counter_cos_off_s_carry__1_CO_UNCONNECTED[3],counter_cos_off_s_carry__1_n_1,counter_cos_off_s_carry__1_n_2,counter_cos_off_s_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,counter_scale_s__0[10:8]}),
        .O(sel[11:8]),
        .S({\rom_12.rom12_inst_n_0 ,\rom_12.rom12_inst_n_1 ,\rom_12.rom12_inst_n_2 ,\rom_12.rom12_inst_n_3 }));
  LUT2 #(
    .INIT(4'hB)) 
    \counter_s[0]_i_1 
       (.I0(ref_rst_i),
        .I1(wave_en_o),
        .O(\counter_s[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[0]_i_3 
       (.I0(in[3]),
        .I1(\counter_s_reg_n_0_[3] ),
        .O(\counter_s[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[0]_i_4 
       (.I0(in[2]),
        .I1(\counter_s_reg_n_0_[2] ),
        .O(\counter_s[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[0]_i_5 
       (.I0(in[1]),
        .I1(\counter_s_reg_n_0_[1] ),
        .O(\counter_s[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[0]_i_6 
       (.I0(in[0]),
        .I1(\counter_s_reg_n_0_[0] ),
        .O(\counter_s[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[12]_i_2 
       (.I0(in[15]),
        .I1(\counter_s_reg_n_0_[15] ),
        .O(\counter_s[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[12]_i_3 
       (.I0(in[14]),
        .I1(\counter_s_reg_n_0_[14] ),
        .O(\counter_s[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[12]_i_4 
       (.I0(in[13]),
        .I1(\counter_s_reg_n_0_[13] ),
        .O(\counter_s[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[12]_i_5 
       (.I0(in[12]),
        .I1(\counter_s_reg_n_0_[12] ),
        .O(\counter_s[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[16]_i_2 
       (.I0(in[19]),
        .I1(\counter_s_reg_n_0_[19] ),
        .O(\counter_s[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[16]_i_3 
       (.I0(in[18]),
        .I1(\counter_s_reg_n_0_[18] ),
        .O(\counter_s[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[16]_i_4 
       (.I0(in[17]),
        .I1(\counter_s_reg_n_0_[17] ),
        .O(\counter_s[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[16]_i_5 
       (.I0(in[16]),
        .I1(\counter_s_reg_n_0_[16] ),
        .O(\counter_s[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[20]_i_2 
       (.I0(in[23]),
        .I1(counter_scale_s__0[3]),
        .O(\counter_s[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[20]_i_3 
       (.I0(in[22]),
        .I1(counter_scale_s__0[2]),
        .O(\counter_s[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[20]_i_4 
       (.I0(in[21]),
        .I1(counter_scale_s__0[1]),
        .O(\counter_s[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[20]_i_5 
       (.I0(in[20]),
        .I1(counter_scale_s__0[0]),
        .O(\counter_s[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[24]_i_2 
       (.I0(in[27]),
        .I1(counter_scale_s__0[7]),
        .O(\counter_s[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[24]_i_3 
       (.I0(in[26]),
        .I1(counter_scale_s__0[6]),
        .O(\counter_s[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[24]_i_4 
       (.I0(in[25]),
        .I1(counter_scale_s__0[5]),
        .O(\counter_s[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[24]_i_5 
       (.I0(in[24]),
        .I1(counter_scale_s__0[4]),
        .O(\counter_s[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[28]_i_2 
       (.I0(in[31]),
        .I1(counter_scale_s),
        .O(\counter_s[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[28]_i_3 
       (.I0(in[30]),
        .I1(counter_scale_s__0[10]),
        .O(\counter_s[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[28]_i_4 
       (.I0(in[29]),
        .I1(counter_scale_s__0[9]),
        .O(\counter_s[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[28]_i_5 
       (.I0(in[28]),
        .I1(counter_scale_s__0[8]),
        .O(\counter_s[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[4]_i_2 
       (.I0(in[7]),
        .I1(\counter_s_reg_n_0_[7] ),
        .O(\counter_s[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[4]_i_3 
       (.I0(in[6]),
        .I1(\counter_s_reg_n_0_[6] ),
        .O(\counter_s[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[4]_i_4 
       (.I0(in[5]),
        .I1(\counter_s_reg_n_0_[5] ),
        .O(\counter_s[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[4]_i_5 
       (.I0(in[4]),
        .I1(\counter_s_reg_n_0_[4] ),
        .O(\counter_s[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[8]_i_2 
       (.I0(in[11]),
        .I1(\counter_s_reg_n_0_[11] ),
        .O(\counter_s[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[8]_i_3 
       (.I0(in[10]),
        .I1(\counter_s_reg_n_0_[10] ),
        .O(\counter_s[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[8]_i_4 
       (.I0(in[9]),
        .I1(\counter_s_reg_n_0_[9] ),
        .O(\counter_s[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[8]_i_5 
       (.I0(in[8]),
        .I1(\counter_s_reg_n_0_[8] ),
        .O(\counter_s[8]_i_5_n_0 ));
  FDRE \counter_s_reg[0] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[0]_i_2_n_7 ),
        .Q(\counter_s_reg_n_0_[0] ),
        .R(\counter_s[0]_i_1_n_0 ));
  CARRY4 \counter_s_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_s_reg[0]_i_2_n_0 ,\counter_s_reg[0]_i_2_n_1 ,\counter_s_reg[0]_i_2_n_2 ,\counter_s_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(in[3:0]),
        .O({\counter_s_reg[0]_i_2_n_4 ,\counter_s_reg[0]_i_2_n_5 ,\counter_s_reg[0]_i_2_n_6 ,\counter_s_reg[0]_i_2_n_7 }),
        .S({\counter_s[0]_i_3_n_0 ,\counter_s[0]_i_4_n_0 ,\counter_s[0]_i_5_n_0 ,\counter_s[0]_i_6_n_0 }));
  FDRE \counter_s_reg[10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[8]_i_1_n_5 ),
        .Q(\counter_s_reg_n_0_[10] ),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[8]_i_1_n_4 ),
        .Q(\counter_s_reg_n_0_[11] ),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[12]_i_1_n_7 ),
        .Q(\counter_s_reg_n_0_[12] ),
        .R(\counter_s[0]_i_1_n_0 ));
  CARRY4 \counter_s_reg[12]_i_1 
       (.CI(\counter_s_reg[8]_i_1_n_0 ),
        .CO({\counter_s_reg[12]_i_1_n_0 ,\counter_s_reg[12]_i_1_n_1 ,\counter_s_reg[12]_i_1_n_2 ,\counter_s_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[15:12]),
        .O({\counter_s_reg[12]_i_1_n_4 ,\counter_s_reg[12]_i_1_n_5 ,\counter_s_reg[12]_i_1_n_6 ,\counter_s_reg[12]_i_1_n_7 }),
        .S({\counter_s[12]_i_2_n_0 ,\counter_s[12]_i_3_n_0 ,\counter_s[12]_i_4_n_0 ,\counter_s[12]_i_5_n_0 }));
  FDRE \counter_s_reg[13] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[12]_i_1_n_6 ),
        .Q(\counter_s_reg_n_0_[13] ),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[14] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[12]_i_1_n_5 ),
        .Q(\counter_s_reg_n_0_[14] ),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[15] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[12]_i_1_n_4 ),
        .Q(\counter_s_reg_n_0_[15] ),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[16] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[16]_i_1_n_7 ),
        .Q(\counter_s_reg_n_0_[16] ),
        .R(\counter_s[0]_i_1_n_0 ));
  CARRY4 \counter_s_reg[16]_i_1 
       (.CI(\counter_s_reg[12]_i_1_n_0 ),
        .CO({\counter_s_reg[16]_i_1_n_0 ,\counter_s_reg[16]_i_1_n_1 ,\counter_s_reg[16]_i_1_n_2 ,\counter_s_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[19:16]),
        .O({\counter_s_reg[16]_i_1_n_4 ,\counter_s_reg[16]_i_1_n_5 ,\counter_s_reg[16]_i_1_n_6 ,\counter_s_reg[16]_i_1_n_7 }),
        .S({\counter_s[16]_i_2_n_0 ,\counter_s[16]_i_3_n_0 ,\counter_s[16]_i_4_n_0 ,\counter_s[16]_i_5_n_0 }));
  FDRE \counter_s_reg[17] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[16]_i_1_n_6 ),
        .Q(\counter_s_reg_n_0_[17] ),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[18] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[16]_i_1_n_5 ),
        .Q(\counter_s_reg_n_0_[18] ),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[19] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[16]_i_1_n_4 ),
        .Q(\counter_s_reg_n_0_[19] ),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[0]_i_2_n_6 ),
        .Q(\counter_s_reg_n_0_[1] ),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[20] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[20]_i_1_n_7 ),
        .Q(counter_scale_s__0[0]),
        .R(\counter_s[0]_i_1_n_0 ));
  CARRY4 \counter_s_reg[20]_i_1 
       (.CI(\counter_s_reg[16]_i_1_n_0 ),
        .CO({\counter_s_reg[20]_i_1_n_0 ,\counter_s_reg[20]_i_1_n_1 ,\counter_s_reg[20]_i_1_n_2 ,\counter_s_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[23:20]),
        .O({\counter_s_reg[20]_i_1_n_4 ,\counter_s_reg[20]_i_1_n_5 ,\counter_s_reg[20]_i_1_n_6 ,\counter_s_reg[20]_i_1_n_7 }),
        .S({\counter_s[20]_i_2_n_0 ,\counter_s[20]_i_3_n_0 ,\counter_s[20]_i_4_n_0 ,\counter_s[20]_i_5_n_0 }));
  FDRE \counter_s_reg[21] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[20]_i_1_n_6 ),
        .Q(counter_scale_s__0[1]),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[22] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[20]_i_1_n_5 ),
        .Q(counter_scale_s__0[2]),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[23] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[20]_i_1_n_4 ),
        .Q(counter_scale_s__0[3]),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[24] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[24]_i_1_n_7 ),
        .Q(counter_scale_s__0[4]),
        .R(\counter_s[0]_i_1_n_0 ));
  CARRY4 \counter_s_reg[24]_i_1 
       (.CI(\counter_s_reg[20]_i_1_n_0 ),
        .CO({\counter_s_reg[24]_i_1_n_0 ,\counter_s_reg[24]_i_1_n_1 ,\counter_s_reg[24]_i_1_n_2 ,\counter_s_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[27:24]),
        .O({\counter_s_reg[24]_i_1_n_4 ,\counter_s_reg[24]_i_1_n_5 ,\counter_s_reg[24]_i_1_n_6 ,\counter_s_reg[24]_i_1_n_7 }),
        .S({\counter_s[24]_i_2_n_0 ,\counter_s[24]_i_3_n_0 ,\counter_s[24]_i_4_n_0 ,\counter_s[24]_i_5_n_0 }));
  FDRE \counter_s_reg[25] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[24]_i_1_n_6 ),
        .Q(counter_scale_s__0[5]),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[26] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[24]_i_1_n_5 ),
        .Q(counter_scale_s__0[6]),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[27] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[24]_i_1_n_4 ),
        .Q(counter_scale_s__0[7]),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[28] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[28]_i_1_n_7 ),
        .Q(counter_scale_s__0[8]),
        .R(\counter_s[0]_i_1_n_0 ));
  CARRY4 \counter_s_reg[28]_i_1 
       (.CI(\counter_s_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_s_reg[28]_i_1_CO_UNCONNECTED [3],\counter_s_reg[28]_i_1_n_1 ,\counter_s_reg[28]_i_1_n_2 ,\counter_s_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,in[30:28]}),
        .O({\counter_s_reg[28]_i_1_n_4 ,\counter_s_reg[28]_i_1_n_5 ,\counter_s_reg[28]_i_1_n_6 ,\counter_s_reg[28]_i_1_n_7 }),
        .S({\counter_s[28]_i_2_n_0 ,\counter_s[28]_i_3_n_0 ,\counter_s[28]_i_4_n_0 ,\counter_s[28]_i_5_n_0 }));
  FDRE \counter_s_reg[29] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[28]_i_1_n_6 ),
        .Q(counter_scale_s__0[9]),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[0]_i_2_n_5 ),
        .Q(\counter_s_reg_n_0_[2] ),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[30] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[28]_i_1_n_5 ),
        .Q(counter_scale_s__0[10]),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[31] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[28]_i_1_n_4 ),
        .Q(counter_scale_s),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[0]_i_2_n_4 ),
        .Q(\counter_s_reg_n_0_[3] ),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[4]_i_1_n_7 ),
        .Q(\counter_s_reg_n_0_[4] ),
        .R(\counter_s[0]_i_1_n_0 ));
  CARRY4 \counter_s_reg[4]_i_1 
       (.CI(\counter_s_reg[0]_i_2_n_0 ),
        .CO({\counter_s_reg[4]_i_1_n_0 ,\counter_s_reg[4]_i_1_n_1 ,\counter_s_reg[4]_i_1_n_2 ,\counter_s_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[7:4]),
        .O({\counter_s_reg[4]_i_1_n_4 ,\counter_s_reg[4]_i_1_n_5 ,\counter_s_reg[4]_i_1_n_6 ,\counter_s_reg[4]_i_1_n_7 }),
        .S({\counter_s[4]_i_2_n_0 ,\counter_s[4]_i_3_n_0 ,\counter_s[4]_i_4_n_0 ,\counter_s[4]_i_5_n_0 }));
  FDRE \counter_s_reg[5] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[4]_i_1_n_6 ),
        .Q(\counter_s_reg_n_0_[5] ),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[4]_i_1_n_5 ),
        .Q(\counter_s_reg_n_0_[6] ),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[4]_i_1_n_4 ),
        .Q(\counter_s_reg_n_0_[7] ),
        .R(\counter_s[0]_i_1_n_0 ));
  FDRE \counter_s_reg[8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[8]_i_1_n_7 ),
        .Q(\counter_s_reg_n_0_[8] ),
        .R(\counter_s[0]_i_1_n_0 ));
  CARRY4 \counter_s_reg[8]_i_1 
       (.CI(\counter_s_reg[4]_i_1_n_0 ),
        .CO({\counter_s_reg[8]_i_1_n_0 ,\counter_s_reg[8]_i_1_n_1 ,\counter_s_reg[8]_i_1_n_2 ,\counter_s_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[11:8]),
        .O({\counter_s_reg[8]_i_1_n_4 ,\counter_s_reg[8]_i_1_n_5 ,\counter_s_reg[8]_i_1_n_6 ,\counter_s_reg[8]_i_1_n_7 }),
        .S({\counter_s[8]_i_2_n_0 ,\counter_s[8]_i_3_n_0 ,\counter_s[8]_i_4_n_0 ,\counter_s[8]_i_5_n_0 }));
  FDRE \counter_s_reg[9] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[8]_i_1_n_6 ),
        .Q(\counter_s_reg_n_0_[9] ),
        .R(\counter_s[0]_i_1_n_0 ));
  CARRY4 counter_sin_off_s_carry
       (.CI(1'b0),
        .CO({counter_sin_off_s_carry_n_0,counter_sin_off_s_carry_n_1,counter_sin_off_s_carry_n_2,counter_sin_off_s_carry_n_3}),
        .CYINIT(1'b0),
        .DI(counter_scale_s__0[3:0]),
        .O({counter_sin_off_s_carry_n_4,counter_sin_off_s_carry_n_5,counter_sin_off_s_carry_n_6,NLW_counter_sin_off_s_carry_O_UNCONNECTED[0]}),
        .S({\rom_12.rom12_inst_n_12 ,\rom_12.rom12_inst_n_13 ,\rom_12.rom12_inst_n_14 ,\rom_12.rom12_inst_n_15 }));
  CARRY4 counter_sin_off_s_carry__0
       (.CI(counter_sin_off_s_carry_n_0),
        .CO({counter_sin_off_s_carry__0_n_0,counter_sin_off_s_carry__0_n_1,counter_sin_off_s_carry__0_n_2,counter_sin_off_s_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter_scale_s__0[7:4]),
        .O({counter_sin_off_s_carry__0_n_4,counter_sin_off_s_carry__0_n_5,counter_sin_off_s_carry__0_n_6,counter_sin_off_s_carry__0_n_7}),
        .S({\rom_12.rom12_inst_n_8 ,\rom_12.rom12_inst_n_9 ,\rom_12.rom12_inst_n_10 ,\rom_12.rom12_inst_n_11 }));
  CARRY4 counter_sin_off_s_carry__1
       (.CI(counter_sin_off_s_carry__0_n_0),
        .CO({NLW_counter_sin_off_s_carry__1_CO_UNCONNECTED[3],counter_sin_off_s_carry__1_n_1,counter_sin_off_s_carry__1_n_2,counter_sin_off_s_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,minusOp_carry_n_6,minusOp_carry_n_7,counter_scale_s__0[8]}),
        .O({counter_sin_off_s_carry__1_n_4,counter_sin_off_s_carry__1_n_5,counter_sin_off_s_carry__1_n_6,counter_sin_off_s_carry__1_n_7}),
        .S({\rom_12.rom12_inst_n_4 ,\rom_12.rom12_inst_n_5 ,\rom_12.rom12_inst_n_6 ,\rom_12.rom12_inst_n_7 }));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[0]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[0]),
        .Q(\cpt_inc2_s_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[10]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[10]),
        .Q(\cpt_inc2_s_reg[10]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[11]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[11]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[11]),
        .Q(\cpt_inc2_s_reg[11]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[12]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[12]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[12]),
        .Q(\cpt_inc2_s_reg[12]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[13]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[13]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[13]),
        .Q(\cpt_inc2_s_reg[13]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[14]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[14]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[14]),
        .Q(\cpt_inc2_s_reg[14]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[15]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[15]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[15]),
        .Q(\cpt_inc2_s_reg[15]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[16]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[16]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[16]),
        .Q(\cpt_inc2_s_reg[16]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[17]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[17]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[17]),
        .Q(\cpt_inc2_s_reg[17]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[18]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[18]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[18]),
        .Q(\cpt_inc2_s_reg[18]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[19]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[19]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[19]),
        .Q(\cpt_inc2_s_reg[19]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[1]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[1]),
        .Q(\cpt_inc2_s_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[20]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[20]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[20]),
        .Q(\cpt_inc2_s_reg[20]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[21]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[21]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[21]),
        .Q(\cpt_inc2_s_reg[21]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[22]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[22]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[22]),
        .Q(\cpt_inc2_s_reg[22]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[23]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[23]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[23]),
        .Q(\cpt_inc2_s_reg[23]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[24]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[24]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[24]),
        .Q(\cpt_inc2_s_reg[24]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[25]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[25]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[25]),
        .Q(\cpt_inc2_s_reg[25]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[26]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[26]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[26]),
        .Q(\cpt_inc2_s_reg[26]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[27]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[27]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[27]),
        .Q(\cpt_inc2_s_reg[27]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[28]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[28]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[28]),
        .Q(\cpt_inc2_s_reg[28]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[29]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[29]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[29]),
        .Q(\cpt_inc2_s_reg[29]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[2]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[2]),
        .Q(\cpt_inc2_s_reg[2]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[30]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[30]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[30]),
        .Q(\cpt_inc2_s_reg[30]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[31]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[31]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[31]),
        .Q(\cpt_inc2_s_reg[31]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[3]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[3]),
        .Q(\cpt_inc2_s_reg[3]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[4]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[4]),
        .Q(\cpt_inc2_s_reg[4]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[5]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[5]),
        .Q(\cpt_inc2_s_reg[5]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[6]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[6]),
        .Q(\cpt_inc2_s_reg[6]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[7]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[7]),
        .Q(\cpt_inc2_s_reg[7]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[8]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[8]),
        .Q(\cpt_inc2_s_reg[8]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_inc2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_inc2_s_reg[9]_srl2 " *) 
  SRL16E \cpt_inc2_s_reg[9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_step_mux_s[9]),
        .Q(\cpt_inc2_s_reg[9]_srl2_n_0 ));
  FDRE \cpt_inc_s_reg[0]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[0]_srl2_n_0 ),
        .Q(in[0]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[10]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[10]_srl2_n_0 ),
        .Q(in[10]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[11]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[11]_srl2_n_0 ),
        .Q(in[11]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[12]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[12]_srl2_n_0 ),
        .Q(in[12]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[13]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[13]_srl2_n_0 ),
        .Q(in[13]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[14]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[14]_srl2_n_0 ),
        .Q(in[14]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[15]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[15]_srl2_n_0 ),
        .Q(in[15]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[16]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[16]_srl2_n_0 ),
        .Q(in[16]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[17]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[17]_srl2_n_0 ),
        .Q(in[17]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[18]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[18]_srl2_n_0 ),
        .Q(in[18]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[19]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[19]_srl2_n_0 ),
        .Q(in[19]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[1]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[1]_srl2_n_0 ),
        .Q(in[1]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[20]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[20]_srl2_n_0 ),
        .Q(in[20]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[21]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[21]_srl2_n_0 ),
        .Q(in[21]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[22]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[22]_srl2_n_0 ),
        .Q(in[22]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[23]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[23]_srl2_n_0 ),
        .Q(in[23]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[24]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[24]_srl2_n_0 ),
        .Q(in[24]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[25]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[25]_srl2_n_0 ),
        .Q(in[25]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[26]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[26]_srl2_n_0 ),
        .Q(in[26]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[27]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[27]_srl2_n_0 ),
        .Q(in[27]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[28]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[28]_srl2_n_0 ),
        .Q(in[28]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[29]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[29]_srl2_n_0 ),
        .Q(in[29]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[2]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[2]_srl2_n_0 ),
        .Q(in[2]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[30]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[30]_srl2_n_0 ),
        .Q(in[30]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[31]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[31]_srl2_n_0 ),
        .Q(in[31]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[3]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[3]_srl2_n_0 ),
        .Q(in[3]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[4]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[4]_srl2_n_0 ),
        .Q(in[4]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[5]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[5]_srl2_n_0 ),
        .Q(in[5]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[6]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[6]_srl2_n_0 ),
        .Q(in[6]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[7]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[7]_srl2_n_0 ),
        .Q(in[7]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[8]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[8]_srl2_n_0 ),
        .Q(in[8]),
        .R(1'b0));
  FDRE \cpt_inc_s_reg[9]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_inc2_s_reg[9]_srl2_n_0 ),
        .Q(in[9]),
        .R(1'b0));
  (* srl_bus_name = "U0/\nco_inst1/cpt_off2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_off2_s_reg[0]_srl2 " *) 
  SRL16E \cpt_off2_s_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_off_mux_s[0]),
        .Q(\cpt_off2_s_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_off2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_off2_s_reg[10]_srl2 " *) 
  SRL16E \cpt_off2_s_reg[10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_off_mux_s[10]),
        .Q(\cpt_off2_s_reg[10]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_off2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_off2_s_reg[11]_srl2 " *) 
  SRL16E \cpt_off2_s_reg[11]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_off_mux_s[11]),
        .Q(\cpt_off2_s_reg[11]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_off2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_off2_s_reg[1]_srl2 " *) 
  SRL16E \cpt_off2_s_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_off_mux_s[1]),
        .Q(\cpt_off2_s_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_off2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_off2_s_reg[2]_srl2 " *) 
  SRL16E \cpt_off2_s_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_off_mux_s[2]),
        .Q(\cpt_off2_s_reg[2]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_off2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_off2_s_reg[3]_srl2 " *) 
  SRL16E \cpt_off2_s_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_off_mux_s[3]),
        .Q(\cpt_off2_s_reg[3]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_off2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_off2_s_reg[4]_srl2 " *) 
  SRL16E \cpt_off2_s_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_off_mux_s[4]),
        .Q(\cpt_off2_s_reg[4]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_off2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_off2_s_reg[5]_srl2 " *) 
  SRL16E \cpt_off2_s_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_off_mux_s[5]),
        .Q(\cpt_off2_s_reg[5]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_off2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_off2_s_reg[6]_srl2 " *) 
  SRL16E \cpt_off2_s_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_off_mux_s[6]),
        .Q(\cpt_off2_s_reg[6]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_off2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_off2_s_reg[7]_srl2 " *) 
  SRL16E \cpt_off2_s_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_off_mux_s[7]),
        .Q(\cpt_off2_s_reg[7]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_off2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_off2_s_reg[8]_srl2 " *) 
  SRL16E \cpt_off2_s_reg[8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_off_mux_s[8]),
        .Q(\cpt_off2_s_reg[8]_srl2_n_0 ));
  (* srl_bus_name = "U0/\nco_inst1/cpt_off2_s_reg " *) 
  (* srl_name = "U0/\nco_inst1/cpt_off2_s_reg[9]_srl2 " *) 
  SRL16E \cpt_off2_s_reg[9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ref_clk_i),
        .D(cpt_off_mux_s[9]),
        .Q(\cpt_off2_s_reg[9]_srl2_n_0 ));
  FDRE \cpt_off_s_reg[0]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_off2_s_reg[0]_srl2_n_0 ),
        .Q(cpt_off_s[0]),
        .R(1'b0));
  FDRE \cpt_off_s_reg[10]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_off2_s_reg[10]_srl2_n_0 ),
        .Q(cpt_off_s[10]),
        .R(1'b0));
  FDRE \cpt_off_s_reg[11]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_off2_s_reg[11]_srl2_n_0 ),
        .Q(cpt_off_s[11]),
        .R(1'b0));
  FDRE \cpt_off_s_reg[1]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_off2_s_reg[1]_srl2_n_0 ),
        .Q(cpt_off_s[1]),
        .R(1'b0));
  FDRE \cpt_off_s_reg[2]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_off2_s_reg[2]_srl2_n_0 ),
        .Q(cpt_off_s[2]),
        .R(1'b0));
  FDRE \cpt_off_s_reg[3]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_off2_s_reg[3]_srl2_n_0 ),
        .Q(cpt_off_s[3]),
        .R(1'b0));
  FDRE \cpt_off_s_reg[4]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_off2_s_reg[4]_srl2_n_0 ),
        .Q(cpt_off_s[4]),
        .R(1'b0));
  FDRE \cpt_off_s_reg[5]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_off2_s_reg[5]_srl2_n_0 ),
        .Q(cpt_off_s[5]),
        .R(1'b0));
  FDRE \cpt_off_s_reg[6]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_off2_s_reg[6]_srl2_n_0 ),
        .Q(cpt_off_s[6]),
        .R(1'b0));
  FDRE \cpt_off_s_reg[7]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_off2_s_reg[7]_srl2_n_0 ),
        .Q(cpt_off_s[7]),
        .R(1'b0));
  FDRE \cpt_off_s_reg[8]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_off2_s_reg[8]_srl2_n_0 ),
        .Q(cpt_off_s[8]),
        .R(1'b0));
  FDRE \cpt_off_s_reg[9]__0 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\cpt_off2_s_reg[9]_srl2_n_0 ),
        .Q(cpt_off_s[9]),
        .R(1'b0));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({NLW_minusOp_carry_CO_UNCONNECTED[3:2],minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter_scale_s__0[10],1'b0}),
        .O({NLW_minusOp_carry_O_UNCONNECTED[3],sin_next,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({1'b0,minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(counter_scale_s),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(counter_scale_s__0[10]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    minusOp_carry_i_3
       (.I0(counter_scale_s__0[9]),
        .O(minusOp_carry_i_3_n_0));
  FDSE #(
    .INIT(1'b0)) 
    ready2_s_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(ready2_s),
        .Q(ready2_s),
        .S(ref_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    ready_s_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(ready2_s),
        .Q(wave_en_o),
        .R(ref_rst_i));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nco_counter_cos_rom_a12_d16 \rom_12.rom12_inst 
       (.ADDRBWRADDR({counter_sin_off_s_carry__1_n_4,counter_sin_off_s_carry__1_n_5,counter_sin_off_s_carry__1_n_6,counter_sin_off_s_carry__1_n_7,counter_sin_off_s_carry__0_n_4,counter_sin_off_s_carry__0_n_5,counter_sin_off_s_carry__0_n_6,counter_sin_off_s_carry__0_n_7,counter_sin_off_s_carry_n_4,counter_sin_off_s_carry_n_5,counter_sin_off_s_carry_n_6}),
        .O({sin_next,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({\rom_12.rom12_inst_n_0 ,\rom_12.rom12_inst_n_1 ,\rom_12.rom12_inst_n_2 ,\rom_12.rom12_inst_n_3 }),
        .counter_scale_s(counter_scale_s),
        .counter_scale_s__0(counter_scale_s__0),
        .cpt_off_s(cpt_off_s),
        .data_a_reg_0_0({\rom_12.rom12_inst_n_4 ,\rom_12.rom12_inst_n_5 ,\rom_12.rom12_inst_n_6 ,\rom_12.rom12_inst_n_7 }),
        .data_a_reg_0_1({\rom_12.rom12_inst_n_8 ,\rom_12.rom12_inst_n_9 ,\rom_12.rom12_inst_n_10 ,\rom_12.rom12_inst_n_11 }),
        .data_a_reg_0_2({\rom_12.rom12_inst_n_12 ,\rom_12.rom12_inst_n_13 ,\rom_12.rom12_inst_n_14 ,\rom_12.rom12_inst_n_15 }),
        .data_a_reg_1_0({\rom_12.rom12_inst_n_16 ,\rom_12.rom12_inst_n_17 ,\rom_12.rom12_inst_n_18 ,\rom_12.rom12_inst_n_19 }),
        .data_a_reg_1_1({\rom_12.rom12_inst_n_20 ,\rom_12.rom12_inst_n_21 ,\rom_12.rom12_inst_n_22 ,\rom_12.rom12_inst_n_23 }),
        .dds_cos_o(dds_cos_o),
        .dds_sin_o(dds_sin_o),
        .ref_clk_i(ref_clk_i),
        .sel(sel));
  FDSE sin_fake_o_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sin_next),
        .Q(sin_fake_o),
        .S(ref_rst_i));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    test_o_INST_0
       (.I0(test_o_INST_0_i_1_n_0),
        .I1(counter_scale_s__0[7]),
        .I2(counter_scale_s__0[8]),
        .I3(counter_scale_s__0[5]),
        .I4(counter_scale_s__0[4]),
        .I5(counter_scale_s__0[6]),
        .O(test_o));
  LUT6 #(
    .INIT(64'h000000000000001F)) 
    test_o_INST_0_i_1
       (.I0(counter_scale_s__0[2]),
        .I1(counter_scale_s__0[1]),
        .I2(counter_scale_s__0[3]),
        .I3(counter_scale_s__0[9]),
        .I4(counter_scale_s),
        .I5(counter_scale_s__0[10]),
        .O(test_o_INST_0_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_nco_counter
   (pinc_sw_s,
    poff_sw_s,
    cpt_step_mux_s,
    cpt_off_mux_s,
    s00_axi_rdata,
    s00_axi_reset,
    pinc_sw_s_reg_0,
    s00_axi_aclk,
    poff_sw_s_reg_0,
    addr_s,
    pinc_i,
    pinc_sw2_s,
    poff_i,
    poff_sw2_s,
    E,
    s00_axi_wdata,
    axi_wready_reg,
    axi_arready_reg);
  output pinc_sw_s;
  output poff_sw_s;
  output [31:0]cpt_step_mux_s;
  output [11:0]cpt_off_mux_s;
  output [31:0]s00_axi_rdata;
  input s00_axi_reset;
  input pinc_sw_s_reg_0;
  input s00_axi_aclk;
  input poff_sw_s_reg_0;
  input [1:0]addr_s;
  input [31:0]pinc_i;
  input pinc_sw2_s;
  input [11:0]poff_i;
  input poff_sw2_s;
  input [0:0]E;
  input [31:0]s00_axi_wdata;
  input [0:0]axi_wready_reg;
  input [0:0]axi_arready_reg;

  wire [0:0]E;
  wire [1:0]addr_s;
  wire [0:0]axi_arready_reg;
  wire [0:0]axi_wready_reg;
  wire [11:0]cpt_off_mux_s;
  wire \cpt_off_s_reg_n_0_[0] ;
  wire \cpt_off_s_reg_n_0_[10] ;
  wire \cpt_off_s_reg_n_0_[11] ;
  wire \cpt_off_s_reg_n_0_[12] ;
  wire \cpt_off_s_reg_n_0_[13] ;
  wire \cpt_off_s_reg_n_0_[14] ;
  wire \cpt_off_s_reg_n_0_[15] ;
  wire \cpt_off_s_reg_n_0_[16] ;
  wire \cpt_off_s_reg_n_0_[17] ;
  wire \cpt_off_s_reg_n_0_[18] ;
  wire \cpt_off_s_reg_n_0_[19] ;
  wire \cpt_off_s_reg_n_0_[1] ;
  wire \cpt_off_s_reg_n_0_[20] ;
  wire \cpt_off_s_reg_n_0_[21] ;
  wire \cpt_off_s_reg_n_0_[22] ;
  wire \cpt_off_s_reg_n_0_[23] ;
  wire \cpt_off_s_reg_n_0_[24] ;
  wire \cpt_off_s_reg_n_0_[25] ;
  wire \cpt_off_s_reg_n_0_[26] ;
  wire \cpt_off_s_reg_n_0_[27] ;
  wire \cpt_off_s_reg_n_0_[28] ;
  wire \cpt_off_s_reg_n_0_[29] ;
  wire \cpt_off_s_reg_n_0_[2] ;
  wire \cpt_off_s_reg_n_0_[30] ;
  wire \cpt_off_s_reg_n_0_[31] ;
  wire \cpt_off_s_reg_n_0_[3] ;
  wire \cpt_off_s_reg_n_0_[4] ;
  wire \cpt_off_s_reg_n_0_[5] ;
  wire \cpt_off_s_reg_n_0_[6] ;
  wire \cpt_off_s_reg_n_0_[7] ;
  wire \cpt_off_s_reg_n_0_[8] ;
  wire \cpt_off_s_reg_n_0_[9] ;
  wire [31:0]cpt_step_mux_s;
  wire [31:0]cpt_step_s;
  wire [31:0]p_0_in;
  wire [31:0]pinc_i;
  wire pinc_sw2_s;
  wire pinc_sw_s;
  wire pinc_sw_s_reg_0;
  wire [11:0]poff_i;
  wire poff_sw2_s;
  wire poff_sw_s;
  wire poff_sw_s_reg_0;
  wire s00_axi_aclk;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire [31:0]s00_axi_wdata;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[0]_srl2_i_1 
       (.I0(cpt_step_s[0]),
        .I1(pinc_i[0]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[10]_srl2_i_1 
       (.I0(cpt_step_s[10]),
        .I1(pinc_i[10]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[11]_srl2_i_1 
       (.I0(cpt_step_s[11]),
        .I1(pinc_i[11]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[12]_srl2_i_1 
       (.I0(cpt_step_s[12]),
        .I1(pinc_i[12]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[13]_srl2_i_1 
       (.I0(cpt_step_s[13]),
        .I1(pinc_i[13]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[14]_srl2_i_1 
       (.I0(cpt_step_s[14]),
        .I1(pinc_i[14]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[15]_srl2_i_1 
       (.I0(cpt_step_s[15]),
        .I1(pinc_i[15]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[16]_srl2_i_1 
       (.I0(cpt_step_s[16]),
        .I1(pinc_i[16]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[17]_srl2_i_1 
       (.I0(cpt_step_s[17]),
        .I1(pinc_i[17]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[18]_srl2_i_1 
       (.I0(cpt_step_s[18]),
        .I1(pinc_i[18]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[19]_srl2_i_1 
       (.I0(cpt_step_s[19]),
        .I1(pinc_i[19]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[19]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[1]_srl2_i_1 
       (.I0(cpt_step_s[1]),
        .I1(pinc_i[1]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[20]_srl2_i_1 
       (.I0(cpt_step_s[20]),
        .I1(pinc_i[20]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[20]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[21]_srl2_i_1 
       (.I0(cpt_step_s[21]),
        .I1(pinc_i[21]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[22]_srl2_i_1 
       (.I0(cpt_step_s[22]),
        .I1(pinc_i[22]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[22]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[23]_srl2_i_1 
       (.I0(cpt_step_s[23]),
        .I1(pinc_i[23]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[23]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[24]_srl2_i_1 
       (.I0(cpt_step_s[24]),
        .I1(pinc_i[24]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[24]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[25]_srl2_i_1 
       (.I0(cpt_step_s[25]),
        .I1(pinc_i[25]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[25]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[26]_srl2_i_1 
       (.I0(cpt_step_s[26]),
        .I1(pinc_i[26]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[27]_srl2_i_1 
       (.I0(cpt_step_s[27]),
        .I1(pinc_i[27]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[28]_srl2_i_1 
       (.I0(cpt_step_s[28]),
        .I1(pinc_i[28]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[29]_srl2_i_1 
       (.I0(cpt_step_s[29]),
        .I1(pinc_i[29]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[29]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[2]_srl2_i_1 
       (.I0(cpt_step_s[2]),
        .I1(pinc_i[2]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[30]_srl2_i_1 
       (.I0(cpt_step_s[30]),
        .I1(pinc_i[30]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[30]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[31]_srl2_i_1 
       (.I0(cpt_step_s[31]),
        .I1(pinc_i[31]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[31]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[3]_srl2_i_1 
       (.I0(cpt_step_s[3]),
        .I1(pinc_i[3]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[4]_srl2_i_1 
       (.I0(cpt_step_s[4]),
        .I1(pinc_i[4]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[5]_srl2_i_1 
       (.I0(cpt_step_s[5]),
        .I1(pinc_i[5]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[6]_srl2_i_1 
       (.I0(cpt_step_s[6]),
        .I1(pinc_i[6]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[7]_srl2_i_1 
       (.I0(cpt_step_s[7]),
        .I1(pinc_i[7]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[8]_srl2_i_1 
       (.I0(cpt_step_s[8]),
        .I1(pinc_i[8]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[9]_srl2_i_1 
       (.I0(cpt_step_s[9]),
        .I1(pinc_i[9]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[9]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[0]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[0] ),
        .I1(poff_i[0]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[10]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[10] ),
        .I1(poff_i[10]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[11]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[11] ),
        .I1(poff_i[11]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[1]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[1] ),
        .I1(poff_i[1]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[2]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[2] ),
        .I1(poff_i[2]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[3]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[3] ),
        .I1(poff_i[3]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[4]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[4] ),
        .I1(poff_i[4]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[5]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[5] ),
        .I1(poff_i[5]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[6]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[6] ),
        .I1(poff_i[6]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[7]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[7] ),
        .I1(poff_i[7]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[8]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[8] ),
        .I1(poff_i[8]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[8]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[9]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[9] ),
        .I1(poff_i[9]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[9]));
  FDRE \cpt_off_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[0]),
        .Q(\cpt_off_s_reg_n_0_[0] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[10]),
        .Q(\cpt_off_s_reg_n_0_[10] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[11]),
        .Q(\cpt_off_s_reg_n_0_[11] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[12]),
        .Q(\cpt_off_s_reg_n_0_[12] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[13]),
        .Q(\cpt_off_s_reg_n_0_[13] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[14]),
        .Q(\cpt_off_s_reg_n_0_[14] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[15]),
        .Q(\cpt_off_s_reg_n_0_[15] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[16]),
        .Q(\cpt_off_s_reg_n_0_[16] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[17]),
        .Q(\cpt_off_s_reg_n_0_[17] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[18]),
        .Q(\cpt_off_s_reg_n_0_[18] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[19]),
        .Q(\cpt_off_s_reg_n_0_[19] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[1]),
        .Q(\cpt_off_s_reg_n_0_[1] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[20]),
        .Q(\cpt_off_s_reg_n_0_[20] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[21]),
        .Q(\cpt_off_s_reg_n_0_[21] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[22]),
        .Q(\cpt_off_s_reg_n_0_[22] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[23]),
        .Q(\cpt_off_s_reg_n_0_[23] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[24]),
        .Q(\cpt_off_s_reg_n_0_[24] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[25]),
        .Q(\cpt_off_s_reg_n_0_[25] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[26]),
        .Q(\cpt_off_s_reg_n_0_[26] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[27]),
        .Q(\cpt_off_s_reg_n_0_[27] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[28]),
        .Q(\cpt_off_s_reg_n_0_[28] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[29]),
        .Q(\cpt_off_s_reg_n_0_[29] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[2]),
        .Q(\cpt_off_s_reg_n_0_[2] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[30]),
        .Q(\cpt_off_s_reg_n_0_[30] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[31]),
        .Q(\cpt_off_s_reg_n_0_[31] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[3]),
        .Q(\cpt_off_s_reg_n_0_[3] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[4]),
        .Q(\cpt_off_s_reg_n_0_[4] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[5]),
        .Q(\cpt_off_s_reg_n_0_[5] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[6]),
        .Q(\cpt_off_s_reg_n_0_[6] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[7]),
        .Q(\cpt_off_s_reg_n_0_[7] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[8]),
        .Q(\cpt_off_s_reg_n_0_[8] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[9]),
        .Q(\cpt_off_s_reg_n_0_[9] ),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[0]),
        .Q(cpt_step_s[0]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[10]),
        .Q(cpt_step_s[10]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[11]),
        .Q(cpt_step_s[11]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[12]),
        .Q(cpt_step_s[12]),
        .S(s00_axi_reset));
  FDSE \cpt_step_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[13]),
        .Q(cpt_step_s[13]),
        .S(s00_axi_reset));
  FDSE \cpt_step_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[14]),
        .Q(cpt_step_s[14]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[15]),
        .Q(cpt_step_s[15]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[16]),
        .Q(cpt_step_s[16]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[17]),
        .Q(cpt_step_s[17]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[18]),
        .Q(cpt_step_s[18]),
        .S(s00_axi_reset));
  FDSE \cpt_step_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[19]),
        .Q(cpt_step_s[19]),
        .S(s00_axi_reset));
  FDSE \cpt_step_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[1]),
        .Q(cpt_step_s[1]),
        .S(s00_axi_reset));
  FDSE \cpt_step_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[20]),
        .Q(cpt_step_s[20]),
        .S(s00_axi_reset));
  FDSE \cpt_step_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[21]),
        .Q(cpt_step_s[21]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[22]),
        .Q(cpt_step_s[22]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[23]),
        .Q(cpt_step_s[23]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[24]),
        .Q(cpt_step_s[24]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[25]),
        .Q(cpt_step_s[25]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[26]),
        .Q(cpt_step_s[26]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[27]),
        .Q(cpt_step_s[27]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[28]),
        .Q(cpt_step_s[28]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[29]),
        .Q(cpt_step_s[29]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[2]),
        .Q(cpt_step_s[2]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[30]),
        .Q(cpt_step_s[30]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[31]),
        .Q(cpt_step_s[31]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[3]),
        .Q(cpt_step_s[3]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[4]),
        .Q(cpt_step_s[4]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[5]),
        .Q(cpt_step_s[5]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[6]),
        .Q(cpt_step_s[6]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[7]),
        .Q(cpt_step_s[7]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[8]),
        .Q(cpt_step_s[8]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[9]),
        .Q(cpt_step_s[9]),
        .R(s00_axi_reset));
  FDSE pinc_sw_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pinc_sw_s_reg_0),
        .Q(pinc_sw_s),
        .S(s00_axi_reset));
  FDSE poff_sw_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(poff_sw_s_reg_0),
        .Q(poff_sw_s),
        .S(s00_axi_reset));
  LUT5 #(
    .INIT(32'hFACF0ACF)) 
    \readdata_s[0]_i_1 
       (.I0(cpt_step_s[0]),
        .I1(\cpt_off_s_reg_n_0_[0] ),
        .I2(addr_s[1]),
        .I3(addr_s[0]),
        .I4(pinc_sw_s),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[10]_i_1 
       (.I0(cpt_step_s[10]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[10] ),
        .O(p_0_in[10]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[11]_i_1 
       (.I0(cpt_step_s[11]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[11] ),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[12]_i_1 
       (.I0(cpt_step_s[12]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[12] ),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[13]_i_1 
       (.I0(cpt_step_s[13]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[13] ),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[14]_i_1 
       (.I0(cpt_step_s[14]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[14] ),
        .O(p_0_in[14]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[15]_i_1 
       (.I0(cpt_step_s[15]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[15] ),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[16]_i_1 
       (.I0(cpt_step_s[16]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[16] ),
        .O(p_0_in[16]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[17]_i_1 
       (.I0(cpt_step_s[17]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[17] ),
        .O(p_0_in[17]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[18]_i_1 
       (.I0(cpt_step_s[18]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[18] ),
        .O(p_0_in[18]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[19]_i_1 
       (.I0(cpt_step_s[19]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[19] ),
        .O(p_0_in[19]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \readdata_s[1]_i_1 
       (.I0(poff_sw_s),
        .I1(cpt_step_s[1]),
        .I2(addr_s[0]),
        .I3(addr_s[1]),
        .I4(\cpt_off_s_reg_n_0_[1] ),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[20]_i_1 
       (.I0(cpt_step_s[20]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[20] ),
        .O(p_0_in[20]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[21]_i_1 
       (.I0(cpt_step_s[21]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[21] ),
        .O(p_0_in[21]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[22]_i_1 
       (.I0(cpt_step_s[22]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[22] ),
        .O(p_0_in[22]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[23]_i_1 
       (.I0(cpt_step_s[23]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[23] ),
        .O(p_0_in[23]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[24]_i_1 
       (.I0(cpt_step_s[24]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[24] ),
        .O(p_0_in[24]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[25]_i_1 
       (.I0(cpt_step_s[25]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[25] ),
        .O(p_0_in[25]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[26]_i_1 
       (.I0(cpt_step_s[26]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[26] ),
        .O(p_0_in[26]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[27]_i_1 
       (.I0(cpt_step_s[27]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[27] ),
        .O(p_0_in[27]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[28]_i_1 
       (.I0(cpt_step_s[28]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[28] ),
        .O(p_0_in[28]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[29]_i_1 
       (.I0(cpt_step_s[29]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[29] ),
        .O(p_0_in[29]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[2]_i_1 
       (.I0(cpt_step_s[2]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[2] ),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[30]_i_1 
       (.I0(cpt_step_s[30]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[30] ),
        .O(p_0_in[30]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[31]_i_2 
       (.I0(cpt_step_s[31]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[31] ),
        .O(p_0_in[31]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[3]_i_1 
       (.I0(cpt_step_s[3]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[3] ),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[4]_i_1 
       (.I0(cpt_step_s[4]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[5]_i_1 
       (.I0(cpt_step_s[5]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[5] ),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[6]_i_1 
       (.I0(cpt_step_s[6]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[6] ),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[7]_i_1 
       (.I0(cpt_step_s[7]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[7] ),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[8]_i_1 
       (.I0(cpt_step_s[8]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[8] ),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'h3808)) 
    \readdata_s[9]_i_1 
       (.I0(cpt_step_s[9]),
        .I1(addr_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[9] ),
        .O(p_0_in[9]));
  FDRE \readdata_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[0]),
        .Q(s00_axi_rdata[0]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[10]),
        .Q(s00_axi_rdata[10]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[11]),
        .Q(s00_axi_rdata[11]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[12]),
        .Q(s00_axi_rdata[12]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[13]),
        .Q(s00_axi_rdata[13]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[14]),
        .Q(s00_axi_rdata[14]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[15]),
        .Q(s00_axi_rdata[15]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[16]),
        .Q(s00_axi_rdata[16]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[17]),
        .Q(s00_axi_rdata[17]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[18]),
        .Q(s00_axi_rdata[18]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[19]),
        .Q(s00_axi_rdata[19]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[1]),
        .Q(s00_axi_rdata[1]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[20]),
        .Q(s00_axi_rdata[20]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[21]),
        .Q(s00_axi_rdata[21]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[22]),
        .Q(s00_axi_rdata[22]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[23]),
        .Q(s00_axi_rdata[23]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[24]),
        .Q(s00_axi_rdata[24]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[25]),
        .Q(s00_axi_rdata[25]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[26]),
        .Q(s00_axi_rdata[26]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[27]),
        .Q(s00_axi_rdata[27]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[28]),
        .Q(s00_axi_rdata[28]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[29]),
        .Q(s00_axi_rdata[29]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[2]),
        .Q(s00_axi_rdata[2]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[30]),
        .Q(s00_axi_rdata[30]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[31]),
        .Q(s00_axi_rdata[31]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[3]),
        .Q(s00_axi_rdata[3]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[4]),
        .Q(s00_axi_rdata[4]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[5]),
        .Q(s00_axi_rdata[5]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[6]),
        .Q(s00_axi_rdata[6]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[7]),
        .Q(s00_axi_rdata[7]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[8]),
        .Q(s00_axi_rdata[8]),
        .R(s00_axi_reset));
  FDRE \readdata_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_reg),
        .D(p_0_in[9]),
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
