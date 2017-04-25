// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Fri Apr 21 11:19:59 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode funcsim
//               /home/bma/git/fpga_design/redpitaya/double_pid_vco/double_pid_vco.srcs/sources_1/bd/double_pid_vco_wrapper/ip/double_pid_vco_wrapper_dds1_nco_0/double_pid_vco_wrapper_dds1_nco_0_sim_netlist.v
// Design      : double_pid_vco_wrapper_dds1_nco_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "double_pid_vco_wrapper_dds1_nco_0,nco_counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "nco_counter,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module double_pid_vco_wrapper_dds1_nco_0
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
  (* LUT_SIZE = "12" *) 
  (* id = "1" *) 
  double_pid_vco_wrapper_dds1_nco_0_nco_counter U0
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
(* DATA_SIZE = "14" *) (* LUT_SIZE = "12" *) (* ORIG_REF_NAME = "nco_counter" *) 
(* id = "1" *) 
module double_pid_vco_wrapper_dds1_nco_0_nco_counter
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
  wire \<const1> ;
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

  assign dds_clk_o = ref_clk_i;
  assign dds_en_o = \<const1> ;
  assign dds_rst_o = ref_rst_i;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign wave_clk_o = ref_clk_i;
  assign wave_en_o = \<const1> ;
  assign wave_rst_o = ref_rst_i;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  double_pid_vco_wrapper_dds1_nco_0_nco_counter_handcomm handle_comm
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
  double_pid_vco_wrapper_dds1_nco_0_nco_counter_logic nco_inst1
       (.cos_fake_o(cos_fake_o),
        .cpt_off_mux_s(cpt_off_mux_s),
        .cpt_step_mux_s(cpt_step_mux_s),
        .dds_cos_o(dds_cos_o),
        .dds_sin_o(dds_sin_o),
        .ref_clk_i(ref_clk_i),
        .ref_rst_i(ref_rst_i),
        .sin_fake_o(sin_fake_o),
        .test_o(test_o));
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
  double_pid_vco_wrapper_dds1_nco_0_wb_nco_counter wb_nco_inst
       (.E(handle_comm_n_11),
        .addr_s(addr_s),
        .axi_arready_reg(handle_comm_n_7),
        .axi_wready_reg(handle_comm_n_10),
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

(* ORIG_REF_NAME = "nco_counter_cos_rom_a12_d16" *) 
module double_pid_vco_wrapper_dds1_nco_0_nco_counter_cos_rom_a12_d16
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
  (* RTL_RAM_NAME = "nco_inst1/rom_12.rom_inst/data_a" *) 
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
    .INITP_02(256'hF81F03F07E07C0FC0F81F81F81F81F81F81FC0FC0FE07F03F80FC07F01FC07F0),
    .INITP_03(256'h07C1F07C1F83E0F83E0F81F07C1F03E0F83E07C1F03E0FC1F03E0FC1F03E07C0),
    .INITP_04(256'hF81F03E0FC1F83E07C1F83E0FC1F07C0F83E0FC1F07C1F07E0F83E0F83E0FC1F),
    .INITP_05(256'hF01FC07F03F80FE07F03F81F80FC0FC07E07E07E07E0FC0FC0F81F83F03E07C0),
    .INITP_06(256'hE000FFF000FFF001FF800FFC00FF801FF007FC03FE01FE01FE01FE01FC03F80F),
    .INITP_07(256'h000000000000000000003FFFFFFFE0000007FFFFE00001FFFF00007FFF0003FF),
    .INITP_08(256'hFFC000FFFE0000FFFF800007FFFFE0000007FFFFFFFC00000000000000000000),
    .INITP_09(256'hF01FC03F807F807F807F807FC03FE00FF801FF003FF001FF800FFF000FFF0007),
    .INITP_0A(256'h03E07C0FC1F81F03F03F07E07E07E07E03F03F01F81FC0FE07F01FC0FE03F80F),
    .INITP_0B(256'hF83F07C1F07C1F07E0F83E0F83F07C1F03E0F83F07C1F83E07C1F83F07C0F81F),
    .INITP_0C(256'h03E07C0F83F07C0F83F07C0F83E07C1F07C0F83E0F81F07C1F07C1F83E0F83E0),
    .INITP_0D(256'h0FE03F80FE03F01FC0FE07F03F03F81F81F81F81F81F81F03F03E07E0FC0F81F),
    .INITP_0E(256'h0FFF8007FF800FFE003FF003FF003FE00FF803FE01FF00FF00FF00FE01FC03F8),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFC00000000FFFFFFC00000FFFFE00007FFF8000FFFC00),
    .INIT_00(256'hD9DCDEE0E2E4E6E8EAECEDEFF1F2F3F5F6F7F8F9FAFBFBFCFDFDFEFEFEFEFEFF),
    .INIT_01(256'h666A6F74787D81868A8E92969A9EA2A6A9ADB0B4B7BABEC1C4C7CACDCFD2D5D7),
    .INIT_02(256'hA3AAB1B9C0C7CDD4DBE2E8EFF5FB02080E141A20262C31373C42474C52575C61),
    .INIT_03(256'h929CA6AFB9C2CBD5DEE7F0F9020B131C242D353E464E565E666E767E858D949C),
    .INIT_04(256'h34404C5864707C87939EAAB5C1CCD7E2EDF8030D18232D38424C57616B757F89),
    .INIT_05(256'h8998A6B5C3D1DFEDFB09172532404E5B687683909DAAB7C4D1DDEAF7030F1C28),
    .INIT_06(256'h93A4B5C5D6E6F707182838485868788898A7B7C6D6E5F404132231404F5E6C7B),
    .INIT_07(256'h5265788B9EB1C4D7E9FC0E213345586A7C8EA0B2C3D5E7F80A1B2D3E4F607182),
    .INIT_08(256'hC8DEF3081E33485D72869BB0C5D9EE02162B3F53677B8FA3B7CADEF105182C3F),
    .INIT_09(256'hF70F263E556D849BB2C9E0F70E253B52697F96ACC2D8EF051B31475C72889DB3),
    .INIT_0A(256'hE0FA142D47607A93ACC6DFF8112A435C748DA6BED7EF07203850688098B0C8E0),
    .INIT_0B(256'h85A1BDD9F4102C47627E99B4CFEA05203B56718BA6C1DBF5102A445E7993ADC6),
    .INIT_0C(256'hE9072542607E9BB9D6F4112E4B6885A2BFDCF916324F6C88A4C1DDF915324E6A),
    .INIT_0D(256'h0D2D4D6C8CABCBEA0A29486887A6C5E40322405F7E9CBBD9F8163553718FADCB),
    .INIT_0E(256'hF41637597A9CBDDE0021426384A5C6E70829496A8BABCCEC0C2D4D6D8DADCDED),
    .INIT_0F(256'hA0C4E70A2E517497BADE002346698CAFD1F416395B7EA0C2E407294B6D8FB0D2),
    .INIT_10(256'h153A5F84A9CEF3183D6186ABCFF4183D6186AACEF2163A5E82A6CAEE1235597D),
    .INIT_11(256'h547BA1C8EF153C6289AFD6FC22486F95BBE1072D52789EC4E90F345A7FA5CAEF),
    .INIT_12(256'h6189B2DA022A527AA2CAF21A426991B9E00830577EA6CDF41C436A91B8DF062D),
    .INIT_13(256'h3F6992BCE60F39628CB5DE08315A83ADD6FF28517AA2CBF41D456E97BFE81039),
    .INIT_14(256'hF11C47729DC8F31E48739EC8F31E48739DC8F21C47719BC5EF19446E97C1EB15),
    .INIT_15(256'h7AA6D3FF2B5783AFDC08335F8BB7E30F3A6692BDE915406B97C2EE19446F9BC6),
    .INIT_16(256'hDE0C396694C1EE1B4876A3D0FD2A5784B1DE0A376491BDEA1743709CC9F5224E),
    .INIT_17(256'h204F7DABDA08366593C1EF1D4B79A7D503315F8DBBE91644729FCDFB285683B1),
    .INIT_18(256'h4473A3D20130608FBEED1C4B7AA9D807366593C2F1204F7DACDB09386695C3F2),
    .INIT_19(256'h4D7DADDD0D3D6D9DCDFD2D5D8DBDEC1C4C7BABDB0A3A6A99C9F8285787B6E515),
    .INIT_1A(256'h3F70A1D202336494C5F5265687B8E8184979AADA0B3B6B9BCCFC2C5C8DBDED1D),
    .INIT_1B(256'h1E4F81B2E3144677A8D90A3B6D9ECF00316293C4F5265788B9EA1A4B7CADDE0F),
    .INIT_1C(256'hED1F5183B4E618497BACDE104173A4D607396B9CCDFF306293C5F627598ABCED),
    .INIT_1D(256'hB1E3154779ABDD0F4173A5D7093B6D9FD002346698CAFC2D5F91C3F526588ABC),
    .INIT_1E(256'h6D9FD10436689ACCFE316395C7F92B5E90C2F426588ABCEF215385B7E91B4D7F),
    .INIT_1F(256'h255789BCEE205285B7E91B4E80B2E517497BAEE0124477A9DB0D4072A4D6083B),
    .INIT_20(256'hDC0F4173A5D80A3C6EA1D305376A9CCE00336597C9FC2E6092C5F7295C8EC0F2),
    .INIT_21(256'h98CAFC2E6092C4F6295B8DBFF1235587B9EC1E5082B4E6194B7DAFE1144678AA),
    .INIT_22(256'h5B8DBFF0225486B8E91B4D7FB1E3154678AADC0E4072A4D6083A6C9ED0023466),
    .INIT_23(256'h2A5B8CBEEF215283B5E618497BACDE0F4172A4D607396A9CCEFF316394C6F829),
    .INIT_24(256'h0839699ACBFC2D5E8FC0F1225384B5E6174879AADB0C3D6FA0D102336596C7F9),
    .INIT_25(256'hF9295989BAEA1A4A7BABDB0C3C6C9DCDFE2E5F8FC0F0215282B3E3144576A6D7),
    .INIT_26(256'h0130608FBFEE1D4D7DACDC0B3B6B9ACAFA2A5989B9E9194979A9D909396999C9),
    .INIT_27(256'h235280AFDD0C3B6998C7F6245382B1E00F3E6C9BCBFA295887B6E5144473A2D2),
    .INIT_28(256'h6491BFED1A4875A3D1FF2C5A88B6E412406E9CCAF8265482B1DF0D3B6A98C6F5),
    .INIT_29(256'hC6F31F4C78A5D1FE2A5784B0DD0A376491BEEB1845729FCCF9265481AEDC0937),
    .INIT_2A(256'h4E79A4CFFB26517DA8D4FF2B5682AED905315D89B5E10C396591BDE915416E9A),
    .INIT_2B(256'hFE28527BA5CFFA244E78A2CDF7214C76A1CBF6204B76A0CBF6214C77A2CDF823),
    .INIT_2C(256'hDA022B537CA4CDF61E477099C2EB143D668FB8E20B345E87B1DA042D5780AAD4),
    .INIT_2D(256'hE40B325980A8CFF61D446C93BBE20A315981A8D0F820487098C0E810386189B1),
    .INIT_2E(256'h21476C91B7DC02284D7399BFE40A30567CA3C9EF153C6288AFD5FC23497097BE),
    .INIT_2F(256'h93B7DAFE22466A8EB2D6FA1E42668BAFD3F81C41668AAFD4F91E42678DB2D7FC),
    .INIT_30(256'h3D5F80A2C4E6092B4D6F92B4D6F91B3E6184A6C9EC0F3255789BBFE205294C70),
    .INIT_31(256'h21416181A1C1E10222436384A4C5E6062748698AABCCEE0F30527394B6D8F91B),
    .INIT_32(256'h42607E9CBAD9F71534527190AECDEC0B2A496887A6C5E50423436282A2C1E101),
    .INIT_33(256'hA2BEDAF7132F4B6884A1BDDAF713304D6A87A4C1DFFC193754728FADCAE80624),
    .INIT_34(256'h455E7892ADC7E1FB16304B65809BB5D0EB06213C57738EA9C5E0FC17334F6B86),
    .INIT_35(256'h2A425A728AA2BAD2EA031B344C657D96AFC8E1FA132C455E7891AAC4DEF7112B),
    .INIT_36(256'h566B8197ADC2D8EE041A31475D748AA1B7CEE5FC122940576F869DB5CCE3FB13),
    .INIT_37(256'hC9DCEF03162A3E5165798DA1B5C9DDF2061B2F44586D8297ACC1D6EB00162B40),
    .INIT_38(256'h8495A6B8C9DAECFD0F2032445567798B9DAFC2D4E6F90B1E314356697C8FA2B5),
    .INIT_39(256'h8A99A8B7C6D5E4F3021120303F4F5F6E7E8E9EAEBECEDEEFFF0F203041526373),
    .INIT_3A(256'hDCE8F5010E1A2734414D5A6775828F9CAAB7C5D2E0EEFC0A18263442515F6D7C),
    .INIT_3B(256'h7A848E98A2ADB7C1CCD6E1EBF6010C17222D38434E5A65717C8894A0ACB8C4D0),
    .INIT_3C(256'h666D757D848C949CA4ACB4BCC5CDD5DEE6EFF8010A131C252E37414A545D6771),
    .INIT_3D(256'hA0A5AAAFB4BABFC4CAD0D5DBE1E7EDF3F9FF060C131920262D343B424950575F),
    .INIT_3E(256'h282B2D303336393C3F4245484C4F53565A5E62666A6E72767B7F83888D91969B),
    .INIT_3F(256'h000000000001010202030405060708090A0B0D0E1011131517191B1D1F212326),
    .INIT_40(256'h2623211F1D1B1917151311100E0D0B0A09080706050403020201010000000000),
    .INIT_41(256'h9B96918D88837F7B76726E6A66625E5A56534F4C4845423F3C393633302D2B28),
    .INIT_42(256'h5F575049423B342D262019130C06FFF9F3EDE7E1DBD5D0CAC4BFBAB4AFAAA5A0),
    .INIT_43(256'h71675D544A41372E251C130A01F8EFE6DED5CDC5BCB4ACA49C948C847D756D66),
    .INIT_44(256'hD0C4B8ACA094887C71655A4E43382D22170C01F6EBE1D6CCC1B7ADA2988E847A),
    .INIT_45(256'h7C6D5F51423426180AFCEEE0D2C5B7AA9C8F8275675A4D4134271A0E01F5E8DC),
    .INIT_46(256'h7363524130200FFFEFDECEBEAE9E8E7E6E5F4F3F30201102F3E4D5C6B7A8998A),
    .INIT_47(256'hB5A28F7C695643311E0BF9E6D4C2AF9D8B7967554432200FFDECDAC9B8A69584),
    .INIT_48(256'h402B1600EBD6C1AC97826D58442F1B06F2DDC9B5A18D7965513E2A1603EFDCC9),
    .INIT_49(256'h13FBE3CCB59D866F57402912FCE5CEB7A18A745D47311A04EED8C2AD97816B56),
    .INIT_4A(256'h2B11F7DEC4AA91785E452C13FAE1C8AF967D654C341B03EAD2BAA28A725A422A),
    .INIT_4B(256'h866B4F3317FCE0C5A98E73573C2106EBD0B59B80654B3016FBE1C7AD92785E45),
    .INIT_4C(256'h2406E8CAAD8F72543719FCDFC1A4876A4D3013F7DABDA184684B2F13F7DABEA2),
    .INIT_4D(256'h01E1C1A28262432304E5C5A68768492A0BECCDAE9071523415F7D9BA9C7E6042),
    .INIT_4E(256'h1BF9D8B6947352300FEECCAB8A69482706E6C5A48463432202E1C1A181614121),
    .INIT_4F(256'h704C2905E2BF9B7855320FECC9A684613E1BF9D6B4926F4D2B09E6C4A2805F3D),
    .INIT_50(256'hFCD7B28D67421EF9D4AF8A66411CF8D3AF8B66421EFAD6B28E6A4622FEDAB793),
    .INIT_51(256'hBE97704923FCD5AF88623C15EFC9A37C56300AE4BF99734D2802DCB7916C4721),
    .INIT_52(256'hB189613810E8C098704820F8D0A88159310AE2BB936C441DF6CFA88059320BE4),
    .INIT_53(256'hD4AA80572D04DAB1875E340BE2B88F663D14EBC29970471EF6CDA47C532B02DA),
    .INIT_54(256'h23F8CDA2774C21F6CBA0764B20F6CBA1764C21F7CDA2784E24FACFA57B5228FE),
    .INIT_55(256'h9A6E4115E9BD9165390CE1B5895D3105D9AE82562BFFD4A87D5126FBCFA4794E),
    .INIT_56(256'h3709DCAE815426F9CC9F724518EBBE9164370ADDB084572AFED1A5784C1FF3C6),
    .INIT_57(256'hF5C6986A3B0DDFB1825426F8CA9C6E4012E4B6885A2CFFD1A375481AEDBF9164),
    .INIT_58(256'hD2A2734414E5B6875829FACB9B6C3E0FE0B1825324F6C798693B0CDDAF805223),
    .INIT_59(256'hC999693909D9A9794919E9B989592AFACA9A6B3B0BDCAC7D4D1DEEBF8F603001),
    .INIT_5A(256'hD7A6764514E3B3825221F0C08F5F2EFECD9D6C3C0CDBAB7B4A1AEABA895929F9),
    .INIT_5B(256'hF9C796653302D1A06F3D0CDBAA794817E6B5845322F1C08F5E2DFCCB9A693908),
    .INIT_5C(256'h29F8C6946331FFCE9C6A3907D6A472410FDEAC7B4918E6B5835221EFBE8C5B2A),
    .INIT_5D(256'h663402D09E6C3A08D6A472400EDCAA784615E3B17F4D1BE9B8865422F0BF8D5B),
    .INIT_5E(256'hAA784614E1AF7D4B19E6B482501EECB9875523F1BF8D5B29F6C492602EFCCA98),
    .INIT_5F(256'hF2C08E5C29F7C592602EFCC997653300CE9C6A3705D3A16E3C0AD8A573410FDC),
    .INIT_60(256'h3B08D6A472400DDBA9774412E0AE7B4917E5B2804E1BE9B7855220EEBC895725),
    .INIT_61(256'h7F4D1BE9B7855321EFBC8A5826F4C2905E2BF9C7956331FECC9A683604D19F6D),
    .INIT_62(256'hBC8A5826F5C3915F2DFCCA98663402D09F6D3B09D7A573410FDDAB794715E3B1),
    .INIT_63(256'hEDBC8A5927F6C5936230FFCD9C6B3907D6A4734110DEAC7B4918E6B483511FED),
    .INIT_64(256'h0FDEAD7C4B1AEAB9885726F5C493623100CF9E6D3B0AD9A8774614E3B2814F1E),
    .INIT_65(256'h1DEDBD8D5C2CFCCC9B6B3B0BDAAA794918E8B8875626F5C594643302D2A1703F),
    .INIT_66(256'h15E5B6875728F8C9996A3A0ADBAB7B4C1CECBD8D5D2DFDCD9D6D3D0DDDAD7D4D),
    .INIT_67(256'hF2C395663809DBAC7D4F20F1C293653607D8A97A4B1CEDBE8F603001D2A37344),
    .INIT_68(256'hB1835628FBCD9F724416E9BB8D5F3103D5A7794B1DEFC193653608DAAB7D4F20),
    .INIT_69(256'h4E22F5C99C704317EABD9164370ADEB184572AFDD0A376481BEEC19466390CDE),
    .INIT_6A(256'hC69B6F4419EEC2976B4015E9BD92663A0FE3B78B5F3308DCAF83572BFFD3A67A),
    .INIT_6B(256'h15EBC1976E4419EFC59B71471CF2C89D73481EF3C89E73481EF3C89D72471CF1),
    .INIT_6C(256'h3910E8BF976E451DF4CBA27A5128FFD6AD835A3108DEB58C62390FE6BC92693F),
    .INIT_6D(256'h2D06DFB8916A431CF4CDA67E573008E0B99169421AF2CAA27A522A02DAB28961),
    .INIT_6E(256'hEFCAA57F5A340FE9C49E78522D07E1BB956F4822FCD6AF89623C15EFC8A17B54),
    .INIT_6F(256'h7D593512EECAA6825E3A16F2CEAA86613D18F4CFAB86613D18F3CEA9845F3A15),
    .INIT_70(256'hD2B08F6D4B2907E4C2A07E5B3916F4D1AF8C69462300DEBA9774512E0AE7C4A0),
    .INIT_71(256'hEDCDAD8D6D4D2D0CECCCAB8B6A492908E7C6A58463422100DEBD9C7A593716F4),
    .INIT_72(256'hCBAD8F71533516F8D9BB9C7E5F402203E4C5A6876848290AEACBAB8C6C4D2D0D),
    .INIT_73(256'h6A4E3215F9DDC1A4886C4F3216F9DCBFA285684B2E11F4D6B99B7E60422507E9),
    .INIT_74(256'hC6AD93795E442A10F5DBC1A68B71563B2005EACFB4997E62472C10F4D9BDA185),
    .INIT_75(256'hE0C8B098806850382007EFD7BEA68D745C432A11F8DFC6AC937A60472D14FAE0),
    .INIT_76(256'hB39D88725C47311B05EFD8C2AC967F69523B250EF7E0C9B29B846D553E260FF7),
    .INIT_77(256'h3F2C1805F1DECAB7A38F7B67533F2B1602EED9C5B09B86725D48331E08F3DEC8),
    .INIT_78(256'h8271604F3E2D1B0AF8E7D5C3B2A08E7C6A584533210EFCE9D7C4B19E8B786552),
    .INIT_79(256'h7B6C5E4F4031221304F4E5D6C6B7A798887868584838281807F7E6D6C5B5A493),
    .INIT_7A(256'h281C0F03F7EADDD1C4B7AA9D908376685B4E4032251709FBEDDFD1C3B5A69889),
    .INIT_7B(256'h897F756B61574C42382D23180D03F8EDE2D7CCC1B5AA9E93877C7064584C4034),
    .INIT_7C(256'h9C948D857E766E665E564E463E352D241C130B02F9F0E7DED5CBC2B9AFA69C92),
    .INIT_7D(256'h615C57524C47423C37312C26201A140E0802FBF5EFE8E2DBD4CDC7C0B9B1AAA3),
    .INIT_7E(256'hD7D5D2CFCDCAC7C4C1BEBAB7B4B0ADA9A6A29E9A96928E8A86817D78746F6A66),
    .INIT_7F(256'hFFFEFEFEFEFEFDFDFCFBFBFAF9F8F7F6F5F3F2F1EFEDECEAE8E6E4E2E0DEDCD9),
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
  (* RTL_RAM_NAME = "nco_inst1/rom_12.rom_inst/data_a" *) 
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
    .INIT_13(256'h2323232323242424242424242424242424242525252525252525252525252626),
    .INIT_14(256'h2021212121212121212121212122222222222222222222222223232323232323),
    .INIT_15(256'h1E1E1E1E1E1E1E1E1E1F1F1F1F1F1F1F1F1F1F1F1F2020202020202020202020),
    .INIT_16(256'h1B1B1B1B1B1B1B1C1C1C1C1C1C1C1C1C1C1C1D1D1D1D1D1D1D1D1D1D1D1D1E1E),
    .INIT_17(256'h181818181819191919191919191919191A1A1A1A1A1A1A1A1A1A1A1A1B1B1B1B),
    .INIT_18(256'h1515151516161616161616161616161717171717171717171717181818181818),
    .INIT_19(256'h1212121213131313131313131313131414141414141414141414151515151515),
    .INIT_1A(256'h0F0F0F0F10101010101010101010101111111111111111111111121212121212),
    .INIT_1B(256'h0C0C0C0C0C0D0D0D0D0D0D0D0D0D0D0E0E0E0E0E0E0E0E0E0E0E0F0F0F0F0F0F),
    .INIT_1C(256'h0909090909090A0A0A0A0A0A0A0A0A0A0B0B0B0B0B0B0B0B0B0B0B0C0C0C0C0C),
    .INIT_1D(256'h0606060606060607070707070707070707080808080808080808080809090909),
    .INIT_1E(256'h0303030303030303030404040404040404040405050505050505050505060606),
    .INIT_1F(256'h0000000000000000000001010101010101010101020202020202020202020303),
    .INIT_20(256'h7C7D7D7D7D7D7D7D7D7D7D7E7E7E7E7E7E7E7E7E7E7E7F7F7F7F7F7F7F7F7F7F),
    .INIT_21(256'h7979797A7A7A7A7A7A7A7A7A7A7B7B7B7B7B7B7B7B7B7B7C7C7C7C7C7C7C7C7C),
    .INIT_22(256'h7676767677777777777777777777787878787878787878787979797979797979),
    .INIT_23(256'h7373737373747474747474747474747575757575757575757575767676767676),
    .INIT_24(256'h7070707070707171717171717171717172727272727272727272737373737373),
    .INIT_25(256'h6D6D6D6D6D6D6E6E6E6E6E6E6E6E6E6E6E6F6F6F6F6F6F6F6F6F6F7070707070),
    .INIT_26(256'h6A6A6A6A6A6A6B6B6B6B6B6B6B6B6B6B6B6C6C6C6C6C6C6C6C6C6C6D6D6D6D6D),
    .INIT_27(256'h6767676767686868686868686868686869696969696969696969696A6A6A6A6A),
    .INIT_28(256'h6464646465656565656565656565656666666666666666666666676767676767),
    .INIT_29(256'h6161626262626262626262626263636363636363636363636364646464646464),
    .INIT_2A(256'h5F5F5F5F5F5F5F5F5F5F5F606060606060606060606061616161616161616161),
    .INIT_2B(256'h5C5C5C5C5C5C5C5D5D5D5D5D5D5D5D5D5D5D5D5E5E5E5E5E5E5E5E5E5E5E5E5F),
    .INIT_2C(256'h595A5A5A5A5A5A5A5A5A5A5A5A5A5B5B5B5B5B5B5B5B5B5B5B5B5C5C5C5C5C5C),
    .INIT_2D(256'h5757575757575757585858585858585858585858585959595959595959595959),
    .INIT_2E(256'h5555555555555555555555555556565656565656565656565656565757575757),
    .INIT_2F(256'h5252525253535353535353535353535353535454545454545454545454545454),
    .INIT_30(256'h5050505050505151515151515151515151515151515252525252525252525252),
    .INIT_31(256'h4E4E4E4E4E4E4E4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F505050505050505050),
    .INIT_32(256'h4C4C4C4C4C4C4C4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4E4E4E4E4E4E4E4E4E),
    .INIT_33(256'h4A4A4A4A4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4C4C4C4C4C4C4C4C4C4C),
    .INIT_34(256'h49494949494949494949494949494949494A4A4A4A4A4A4A4A4A4A4A4A4A4A4A),
    .INIT_35(256'h4747474747474747474848484848484848484848484848484848484848484949),
    .INIT_36(256'h4646464646464646464646464646464646464646474747474747474747474747),
    .INIT_37(256'h4444444545454545454545454545454545454545454545454545454546464646),
    .INIT_38(256'h4343434343434343444444444444444444444444444444444444444444444444),
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
    .INIT_43(256'h4141414141414141414141414140404040404040404040404040404040404040),
    .INIT_44(256'h4141414141414141414141414141414141414141414141414141414141414141),
    .INIT_45(256'h4242424242424242424242424242424242424242424242424242424242414141),
    .INIT_46(256'h4343434343434343434343434343434343434343434343434242424242424242),
    .INIT_47(256'h4444444444444444444444444444444444444444444444444343434343434343),
    .INIT_48(256'h4646464645454545454545454545454545454545454545454545454545444444),
    .INIT_49(256'h4747474747474747474747474646464646464646464646464646464646464646),
    .INIT_4A(256'h4949484848484848484848484848484848484848484848474747474747474747),
    .INIT_4B(256'h4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4949494949494949494949494949494949),
    .INIT_4C(256'h4C4C4C4C4C4C4C4C4C4C4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4A4A4A4A),
    .INIT_4D(256'h4E4E4E4E4E4E4E4E4E4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4C4C4C4C4C4C4C),
    .INIT_4E(256'h5050505050505050504F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E4E4E4E4E4E4E),
    .INIT_4F(256'h5252525252525252525252515151515151515151515151515151505050505050),
    .INIT_50(256'h5454545454545454545454545454535353535353535353535353535352525252),
    .INIT_51(256'h5757575757565656565656565656565656565655555555555555555555555555),
    .INIT_52(256'h5959595959595959595959585858585858585858585858585757575757575757),
    .INIT_53(256'h5C5C5C5C5C5C5B5B5B5B5B5B5B5B5B5B5B5B5A5A5A5A5A5A5A5A5A5A5A5A5A59),
    .INIT_54(256'h5F5E5E5E5E5E5E5E5E5E5E5E5E5D5D5D5D5D5D5D5D5D5D5D5D5C5C5C5C5C5C5C),
    .INIT_55(256'h6161616161616161616160606060606060606060605F5F5F5F5F5F5F5F5F5F5F),
    .INIT_56(256'h6464646464646463636363636363636363636362626262626262626262626161),
    .INIT_57(256'h6767676767676666666666666666666666656565656565656565656564646464),
    .INIT_58(256'h6A6A6A6A6A696969696969696969696968686868686868686868686767676767),
    .INIT_59(256'h6D6D6D6D6D6C6C6C6C6C6C6C6C6C6C6B6B6B6B6B6B6B6B6B6B6B6A6A6A6A6A6A),
    .INIT_5A(256'h70707070706F6F6F6F6F6F6F6F6F6F6E6E6E6E6E6E6E6E6E6E6E6D6D6D6D6D6D),
    .INIT_5B(256'h7373737373737272727272727272727271717171717171717171707070707070),
    .INIT_5C(256'h7676767676767575757575757575757575747474747474747474747373737373),
    .INIT_5D(256'h7979797979797979787878787878787878787777777777777777777776767676),
    .INIT_5E(256'h7C7C7C7C7C7C7C7C7C7B7B7B7B7B7B7B7B7B7B7A7A7A7A7A7A7A7A7A7A797979),
    .INIT_5F(256'h7F7F7F7F7F7F7F7F7F7F7E7E7E7E7E7E7E7E7E7E7E7D7D7D7D7D7D7D7D7D7D7C),
    .INIT_60(256'h0303020202020202020202020101010101010101010100000000000000000000),
    .INIT_61(256'h0606060505050505050505050504040404040404040404030303030303030303),
    .INIT_62(256'h0909090908080808080808080808080707070707070707070706060606060606),
    .INIT_63(256'h0C0C0C0C0C0B0B0B0B0B0B0B0B0B0B0B0A0A0A0A0A0A0A0A0A0A090909090909),
    .INIT_64(256'h0F0F0F0F0F0F0E0E0E0E0E0E0E0E0E0E0E0D0D0D0D0D0D0D0D0D0D0C0C0C0C0C),
    .INIT_65(256'h121212121212111111111111111111111110101010101010101010100F0F0F0F),
    .INIT_66(256'h1515151515151414141414141414141414131313131313131313131312121212),
    .INIT_67(256'h1818181818181717171717171717171717161616161616161616161615151515),
    .INIT_68(256'h1B1B1B1B1A1A1A1A1A1A1A1A1A1A1A1A19191919191919191919191818181818),
    .INIT_69(256'h1E1E1D1D1D1D1D1D1D1D1D1D1D1D1C1C1C1C1C1C1C1C1C1C1C1B1B1B1B1B1B1B),
    .INIT_6A(256'h20202020202020202020201F1F1F1F1F1F1F1F1F1F1F1F1E1E1E1E1E1E1E1E1E),
    .INIT_6B(256'h2323232323232322222222222222222222222221212121212121212121212120),
    .INIT_6C(256'h2626252525252525252525252525242424242424242424242424242323232323),
    .INIT_6D(256'h2828282828282828272727272727272727272727272626262626262626262626),
    .INIT_6E(256'h2A2A2A2A2A2A2A2A2A2A2A2A2A2A292929292929292929292929292828282828),
    .INIT_6F(256'h2D2D2D2D2C2C2C2C2C2C2C2C2C2C2C2C2C2C2B2B2B2B2B2B2B2B2B2B2B2B2B2B),
    .INIT_70(256'h2F2F2F2F2F2F2F2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2D2D2D2D2D2D2D2D2D2D),
    .INIT_71(256'h3131313131313131303030303030303030303030303030302F2F2F2F2F2F2F2F),
    .INIT_72(256'h3333333333333332323232323232323232323232323232323131313131313131),
    .INIT_73(256'h3535353534343434343434343434343434343434343433333333333333333333),
    .INIT_74(256'h3636363636363636363636363636363636363535353535353535353535353535),
    .INIT_75(256'h3838383838383838383837373737373737373737373737373737373737373636),
    .INIT_76(256'h3939393939393939393939393939393939393939383838383838383838383838),
    .INIT_77(256'h3B3B3B3B3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A393939),
    .INIT_78(256'h3C3C3C3C3C3C3C3C3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B),
    .INIT_79(256'h3D3D3D3D3D3D3D3D3D3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C),
    .INIT_7A(256'h3E3E3E3E3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D),
    .INIT_7B(256'h3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E),
    .INIT_7C(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3E3E3E3E3E3E3E3E3E3E3E),
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

(* ORIG_REF_NAME = "nco_counter_handcomm" *) 
module double_pid_vco_wrapper_dds1_nco_0_nco_counter_handcomm
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

(* ORIG_REF_NAME = "nco_counter_logic" *) 
module double_pid_vco_wrapper_dds1_nco_0_nco_counter_logic
   (sin_fake_o,
    cos_fake_o,
    dds_cos_o,
    dds_sin_o,
    test_o,
    ref_rst_i,
    ref_clk_i,
    cpt_off_mux_s,
    cpt_step_mux_s);
  output sin_fake_o;
  output cos_fake_o;
  output [13:0]dds_cos_o;
  output [13:0]dds_sin_o;
  output test_o;
  input ref_rst_i;
  input ref_clk_i;
  input [11:0]cpt_off_mux_s;
  input [31:0]cpt_step_mux_s;

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
  wire \counter_s[0]_i_2_n_0 ;
  wire \counter_s[0]_i_3_n_0 ;
  wire \counter_s[0]_i_4_n_0 ;
  wire \counter_s[0]_i_5_n_0 ;
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
  wire \counter_s_reg[0]_i_1_n_0 ;
  wire \counter_s_reg[0]_i_1_n_1 ;
  wire \counter_s_reg[0]_i_1_n_2 ;
  wire \counter_s_reg[0]_i_1_n_3 ;
  wire \counter_s_reg[0]_i_1_n_4 ;
  wire \counter_s_reg[0]_i_1_n_5 ;
  wire \counter_s_reg[0]_i_1_n_6 ;
  wire \counter_s_reg[0]_i_1_n_7 ;
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
  wire ref_clk_i;
  wire ref_rst_i;
  wire \rom_12.rom_inst_n_0 ;
  wire \rom_12.rom_inst_n_1 ;
  wire \rom_12.rom_inst_n_10 ;
  wire \rom_12.rom_inst_n_11 ;
  wire \rom_12.rom_inst_n_12 ;
  wire \rom_12.rom_inst_n_13 ;
  wire \rom_12.rom_inst_n_14 ;
  wire \rom_12.rom_inst_n_15 ;
  wire \rom_12.rom_inst_n_16 ;
  wire \rom_12.rom_inst_n_17 ;
  wire \rom_12.rom_inst_n_18 ;
  wire \rom_12.rom_inst_n_19 ;
  wire \rom_12.rom_inst_n_2 ;
  wire \rom_12.rom_inst_n_20 ;
  wire \rom_12.rom_inst_n_21 ;
  wire \rom_12.rom_inst_n_22 ;
  wire \rom_12.rom_inst_n_23 ;
  wire \rom_12.rom_inst_n_3 ;
  wire \rom_12.rom_inst_n_4 ;
  wire \rom_12.rom_inst_n_5 ;
  wire \rom_12.rom_inst_n_6 ;
  wire \rom_12.rom_inst_n_7 ;
  wire \rom_12.rom_inst_n_8 ;
  wire \rom_12.rom_inst_n_9 ;
  wire [11:0]sel;
  wire sin_fake_o;
  wire sin_next;
  wire test_o;
  wire test_o_INST_0_i_1_n_0;
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
        .S({\rom_12.rom_inst_n_16 ,\rom_12.rom_inst_n_17 ,\rom_12.rom_inst_n_18 ,\rom_12.rom_inst_n_19 }));
  CARRY4 counter_cos_off_s_carry__0
       (.CI(counter_cos_off_s_carry_n_0),
        .CO({counter_cos_off_s_carry__0_n_0,counter_cos_off_s_carry__0_n_1,counter_cos_off_s_carry__0_n_2,counter_cos_off_s_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter_scale_s__0[7:4]),
        .O(sel[7:4]),
        .S({\rom_12.rom_inst_n_20 ,\rom_12.rom_inst_n_21 ,\rom_12.rom_inst_n_22 ,\rom_12.rom_inst_n_23 }));
  CARRY4 counter_cos_off_s_carry__1
       (.CI(counter_cos_off_s_carry__0_n_0),
        .CO({NLW_counter_cos_off_s_carry__1_CO_UNCONNECTED[3],counter_cos_off_s_carry__1_n_1,counter_cos_off_s_carry__1_n_2,counter_cos_off_s_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,counter_scale_s__0[10:8]}),
        .O(sel[11:8]),
        .S({\rom_12.rom_inst_n_0 ,\rom_12.rom_inst_n_1 ,\rom_12.rom_inst_n_2 ,\rom_12.rom_inst_n_3 }));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[0]_i_2 
       (.I0(in[3]),
        .I1(\counter_s_reg_n_0_[3] ),
        .O(\counter_s[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[0]_i_3 
       (.I0(in[2]),
        .I1(\counter_s_reg_n_0_[2] ),
        .O(\counter_s[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[0]_i_4 
       (.I0(in[1]),
        .I1(\counter_s_reg_n_0_[1] ),
        .O(\counter_s[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[0]_i_5 
       (.I0(in[0]),
        .I1(\counter_s_reg_n_0_[0] ),
        .O(\counter_s[0]_i_5_n_0 ));
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
        .D(\counter_s_reg[0]_i_1_n_7 ),
        .Q(\counter_s_reg_n_0_[0] ),
        .R(ref_rst_i));
  CARRY4 \counter_s_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_s_reg[0]_i_1_n_0 ,\counter_s_reg[0]_i_1_n_1 ,\counter_s_reg[0]_i_1_n_2 ,\counter_s_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[3:0]),
        .O({\counter_s_reg[0]_i_1_n_4 ,\counter_s_reg[0]_i_1_n_5 ,\counter_s_reg[0]_i_1_n_6 ,\counter_s_reg[0]_i_1_n_7 }),
        .S({\counter_s[0]_i_2_n_0 ,\counter_s[0]_i_3_n_0 ,\counter_s[0]_i_4_n_0 ,\counter_s[0]_i_5_n_0 }));
  FDRE \counter_s_reg[10] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[8]_i_1_n_5 ),
        .Q(\counter_s_reg_n_0_[10] ),
        .R(ref_rst_i));
  FDRE \counter_s_reg[11] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[8]_i_1_n_4 ),
        .Q(\counter_s_reg_n_0_[11] ),
        .R(ref_rst_i));
  FDRE \counter_s_reg[12] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[12]_i_1_n_7 ),
        .Q(\counter_s_reg_n_0_[12] ),
        .R(ref_rst_i));
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
        .R(ref_rst_i));
  FDRE \counter_s_reg[14] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[12]_i_1_n_5 ),
        .Q(\counter_s_reg_n_0_[14] ),
        .R(ref_rst_i));
  FDRE \counter_s_reg[15] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[12]_i_1_n_4 ),
        .Q(\counter_s_reg_n_0_[15] ),
        .R(ref_rst_i));
  FDRE \counter_s_reg[16] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[16]_i_1_n_7 ),
        .Q(\counter_s_reg_n_0_[16] ),
        .R(ref_rst_i));
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
        .R(ref_rst_i));
  FDRE \counter_s_reg[18] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[16]_i_1_n_5 ),
        .Q(\counter_s_reg_n_0_[18] ),
        .R(ref_rst_i));
  FDRE \counter_s_reg[19] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[16]_i_1_n_4 ),
        .Q(\counter_s_reg_n_0_[19] ),
        .R(ref_rst_i));
  FDRE \counter_s_reg[1] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[0]_i_1_n_6 ),
        .Q(\counter_s_reg_n_0_[1] ),
        .R(ref_rst_i));
  FDRE \counter_s_reg[20] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[20]_i_1_n_7 ),
        .Q(counter_scale_s__0[0]),
        .R(ref_rst_i));
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
        .R(ref_rst_i));
  FDRE \counter_s_reg[22] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[20]_i_1_n_5 ),
        .Q(counter_scale_s__0[2]),
        .R(ref_rst_i));
  FDRE \counter_s_reg[23] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[20]_i_1_n_4 ),
        .Q(counter_scale_s__0[3]),
        .R(ref_rst_i));
  FDRE \counter_s_reg[24] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[24]_i_1_n_7 ),
        .Q(counter_scale_s__0[4]),
        .R(ref_rst_i));
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
        .R(ref_rst_i));
  FDRE \counter_s_reg[26] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[24]_i_1_n_5 ),
        .Q(counter_scale_s__0[6]),
        .R(ref_rst_i));
  FDRE \counter_s_reg[27] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[24]_i_1_n_4 ),
        .Q(counter_scale_s__0[7]),
        .R(ref_rst_i));
  FDRE \counter_s_reg[28] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[28]_i_1_n_7 ),
        .Q(counter_scale_s__0[8]),
        .R(ref_rst_i));
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
        .R(ref_rst_i));
  FDRE \counter_s_reg[2] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[0]_i_1_n_5 ),
        .Q(\counter_s_reg_n_0_[2] ),
        .R(ref_rst_i));
  FDRE \counter_s_reg[30] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[28]_i_1_n_5 ),
        .Q(counter_scale_s__0[10]),
        .R(ref_rst_i));
  FDRE \counter_s_reg[31] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[28]_i_1_n_4 ),
        .Q(counter_scale_s),
        .R(ref_rst_i));
  FDRE \counter_s_reg[3] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[0]_i_1_n_4 ),
        .Q(\counter_s_reg_n_0_[3] ),
        .R(ref_rst_i));
  FDRE \counter_s_reg[4] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[4]_i_1_n_7 ),
        .Q(\counter_s_reg_n_0_[4] ),
        .R(ref_rst_i));
  CARRY4 \counter_s_reg[4]_i_1 
       (.CI(\counter_s_reg[0]_i_1_n_0 ),
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
        .R(ref_rst_i));
  FDRE \counter_s_reg[6] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[4]_i_1_n_5 ),
        .Q(\counter_s_reg_n_0_[6] ),
        .R(ref_rst_i));
  FDRE \counter_s_reg[7] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[4]_i_1_n_4 ),
        .Q(\counter_s_reg_n_0_[7] ),
        .R(ref_rst_i));
  FDRE \counter_s_reg[8] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[8]_i_1_n_7 ),
        .Q(\counter_s_reg_n_0_[8] ),
        .R(ref_rst_i));
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
        .R(ref_rst_i));
  CARRY4 counter_sin_off_s_carry
       (.CI(1'b0),
        .CO({counter_sin_off_s_carry_n_0,counter_sin_off_s_carry_n_1,counter_sin_off_s_carry_n_2,counter_sin_off_s_carry_n_3}),
        .CYINIT(1'b0),
        .DI(counter_scale_s__0[3:0]),
        .O({counter_sin_off_s_carry_n_4,counter_sin_off_s_carry_n_5,counter_sin_off_s_carry_n_6,NLW_counter_sin_off_s_carry_O_UNCONNECTED[0]}),
        .S({\rom_12.rom_inst_n_12 ,\rom_12.rom_inst_n_13 ,\rom_12.rom_inst_n_14 ,\rom_12.rom_inst_n_15 }));
  CARRY4 counter_sin_off_s_carry__0
       (.CI(counter_sin_off_s_carry_n_0),
        .CO({counter_sin_off_s_carry__0_n_0,counter_sin_off_s_carry__0_n_1,counter_sin_off_s_carry__0_n_2,counter_sin_off_s_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter_scale_s__0[7:4]),
        .O({counter_sin_off_s_carry__0_n_4,counter_sin_off_s_carry__0_n_5,counter_sin_off_s_carry__0_n_6,counter_sin_off_s_carry__0_n_7}),
        .S({\rom_12.rom_inst_n_8 ,\rom_12.rom_inst_n_9 ,\rom_12.rom_inst_n_10 ,\rom_12.rom_inst_n_11 }));
  CARRY4 counter_sin_off_s_carry__1
       (.CI(counter_sin_off_s_carry__0_n_0),
        .CO({NLW_counter_sin_off_s_carry__1_CO_UNCONNECTED[3],counter_sin_off_s_carry__1_n_1,counter_sin_off_s_carry__1_n_2,counter_sin_off_s_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,minusOp_carry_n_6,minusOp_carry_n_7,counter_scale_s__0[8]}),
        .O({counter_sin_off_s_carry__1_n_4,counter_sin_off_s_carry__1_n_5,counter_sin_off_s_carry__1_n_6,counter_sin_off_s_carry__1_n_7}),
        .S({\rom_12.rom_inst_n_4 ,\rom_12.rom_inst_n_5 ,\rom_12.rom_inst_n_6 ,\rom_12.rom_inst_n_7 }));
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
  double_pid_vco_wrapper_dds1_nco_0_nco_counter_cos_rom_a12_d16 \rom_12.rom_inst 
       (.ADDRBWRADDR({counter_sin_off_s_carry__1_n_4,counter_sin_off_s_carry__1_n_5,counter_sin_off_s_carry__1_n_6,counter_sin_off_s_carry__1_n_7,counter_sin_off_s_carry__0_n_4,counter_sin_off_s_carry__0_n_5,counter_sin_off_s_carry__0_n_6,counter_sin_off_s_carry__0_n_7,counter_sin_off_s_carry_n_4,counter_sin_off_s_carry_n_5,counter_sin_off_s_carry_n_6}),
        .O({sin_next,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({\rom_12.rom_inst_n_0 ,\rom_12.rom_inst_n_1 ,\rom_12.rom_inst_n_2 ,\rom_12.rom_inst_n_3 }),
        .counter_scale_s(counter_scale_s),
        .counter_scale_s__0(counter_scale_s__0),
        .cpt_off_s(cpt_off_s),
        .data_a_reg_0_0({\rom_12.rom_inst_n_4 ,\rom_12.rom_inst_n_5 ,\rom_12.rom_inst_n_6 ,\rom_12.rom_inst_n_7 }),
        .data_a_reg_0_1({\rom_12.rom_inst_n_8 ,\rom_12.rom_inst_n_9 ,\rom_12.rom_inst_n_10 ,\rom_12.rom_inst_n_11 }),
        .data_a_reg_0_2({\rom_12.rom_inst_n_12 ,\rom_12.rom_inst_n_13 ,\rom_12.rom_inst_n_14 ,\rom_12.rom_inst_n_15 }),
        .data_a_reg_1_0({\rom_12.rom_inst_n_16 ,\rom_12.rom_inst_n_17 ,\rom_12.rom_inst_n_18 ,\rom_12.rom_inst_n_19 }),
        .data_a_reg_1_1({\rom_12.rom_inst_n_20 ,\rom_12.rom_inst_n_21 ,\rom_12.rom_inst_n_22 ,\rom_12.rom_inst_n_23 }),
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

(* ORIG_REF_NAME = "wb_nco_counter" *) 
module double_pid_vco_wrapper_dds1_nco_0_wb_nco_counter
   (pinc_sw_s,
    poff_sw_s,
    cpt_off_mux_s,
    cpt_step_mux_s,
    s00_axi_rdata,
    s00_axi_reset,
    pinc_sw_s_reg_0,
    s00_axi_aclk,
    poff_sw_s_reg_0,
    addr_s,
    poff_i,
    poff_sw2_s,
    pinc_i,
    pinc_sw2_s,
    E,
    s00_axi_wdata,
    axi_wready_reg,
    axi_arready_reg);
  output pinc_sw_s;
  output poff_sw_s;
  output [11:0]cpt_off_mux_s;
  output [31:0]cpt_step_mux_s;
  output [31:0]s00_axi_rdata;
  input s00_axi_reset;
  input pinc_sw_s_reg_0;
  input s00_axi_aclk;
  input poff_sw_s_reg_0;
  input [1:0]addr_s;
  input [11:0]poff_i;
  input poff_sw2_s;
  input [31:0]pinc_i;
  input pinc_sw2_s;
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

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[0]_srl2_i_1 
       (.I0(cpt_step_s[0]),
        .I1(pinc_i[0]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[10]_srl2_i_1 
       (.I0(cpt_step_s[10]),
        .I1(pinc_i[10]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[11]_srl2_i_1 
       (.I0(cpt_step_s[11]),
        .I1(pinc_i[11]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[12]_srl2_i_1 
       (.I0(cpt_step_s[12]),
        .I1(pinc_i[12]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[13]_srl2_i_1 
       (.I0(cpt_step_s[13]),
        .I1(pinc_i[13]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[14]_srl2_i_1 
       (.I0(cpt_step_s[14]),
        .I1(pinc_i[14]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[15]_srl2_i_1 
       (.I0(cpt_step_s[15]),
        .I1(pinc_i[15]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[16]_srl2_i_1 
       (.I0(cpt_step_s[16]),
        .I1(pinc_i[16]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[17]_srl2_i_1 
       (.I0(cpt_step_s[17]),
        .I1(pinc_i[17]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[18]_srl2_i_1 
       (.I0(cpt_step_s[18]),
        .I1(pinc_i[18]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[19]_srl2_i_1 
       (.I0(cpt_step_s[19]),
        .I1(pinc_i[19]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[1]_srl2_i_1 
       (.I0(cpt_step_s[1]),
        .I1(pinc_i[1]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[20]_srl2_i_1 
       (.I0(cpt_step_s[20]),
        .I1(pinc_i[20]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[20]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[21]_srl2_i_1 
       (.I0(cpt_step_s[21]),
        .I1(pinc_i[21]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[22]_srl2_i_1 
       (.I0(cpt_step_s[22]),
        .I1(pinc_i[22]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[23]_srl2_i_1 
       (.I0(cpt_step_s[23]),
        .I1(pinc_i[23]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[24]_srl2_i_1 
       (.I0(cpt_step_s[24]),
        .I1(pinc_i[24]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[24]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[25]_srl2_i_1 
       (.I0(cpt_step_s[25]),
        .I1(pinc_i[25]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[25]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[26]_srl2_i_1 
       (.I0(cpt_step_s[26]),
        .I1(pinc_i[26]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[26]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[27]_srl2_i_1 
       (.I0(cpt_step_s[27]),
        .I1(pinc_i[27]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[27]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[28]_srl2_i_1 
       (.I0(cpt_step_s[28]),
        .I1(pinc_i[28]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[28]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[29]_srl2_i_1 
       (.I0(cpt_step_s[29]),
        .I1(pinc_i[29]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[29]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[2]_srl2_i_1 
       (.I0(cpt_step_s[2]),
        .I1(pinc_i[2]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[30]_srl2_i_1 
       (.I0(cpt_step_s[30]),
        .I1(pinc_i[30]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[30]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[31]_srl2_i_1 
       (.I0(cpt_step_s[31]),
        .I1(pinc_i[31]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[3]_srl2_i_1 
       (.I0(cpt_step_s[3]),
        .I1(pinc_i[3]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[4]_srl2_i_1 
       (.I0(cpt_step_s[4]),
        .I1(pinc_i[4]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[5]_srl2_i_1 
       (.I0(cpt_step_s[5]),
        .I1(pinc_i[5]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[6]_srl2_i_1 
       (.I0(cpt_step_s[6]),
        .I1(pinc_i[6]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[7]_srl2_i_1 
       (.I0(cpt_step_s[7]),
        .I1(pinc_i[7]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[8]_srl2_i_1 
       (.I0(cpt_step_s[8]),
        .I1(pinc_i[8]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[9]_srl2_i_1 
       (.I0(cpt_step_s[9]),
        .I1(pinc_i[9]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[0]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[0] ),
        .I1(poff_i[0]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[10]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[10] ),
        .I1(poff_i[10]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[11]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[11] ),
        .I1(poff_i[11]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[1]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[1] ),
        .I1(poff_i[1]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[2]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[2] ),
        .I1(poff_i[2]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[3]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[3] ),
        .I1(poff_i[3]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[4]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[4] ),
        .I1(poff_i[4]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[5]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[5] ),
        .I1(poff_i[5]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[6]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[6] ),
        .I1(poff_i[6]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[7]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[7] ),
        .I1(poff_i[7]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[8]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[8] ),
        .I1(poff_i[8]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_off2_s_reg[9]_srl2_i_1 
       (.I0(\cpt_off_s_reg_n_0_[9] ),
        .I1(poff_i[9]),
        .I2(poff_sw2_s),
        .O(cpt_off_mux_s[9]));
  FDRE \cpt_off_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[0]),
        .Q(\cpt_off_s_reg_n_0_[0] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[10]),
        .Q(\cpt_off_s_reg_n_0_[10] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[11]),
        .Q(\cpt_off_s_reg_n_0_[11] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[12]),
        .Q(\cpt_off_s_reg_n_0_[12] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[13]),
        .Q(\cpt_off_s_reg_n_0_[13] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[14]),
        .Q(\cpt_off_s_reg_n_0_[14] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[15]),
        .Q(\cpt_off_s_reg_n_0_[15] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[16]),
        .Q(\cpt_off_s_reg_n_0_[16] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[17]),
        .Q(\cpt_off_s_reg_n_0_[17] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[18]),
        .Q(\cpt_off_s_reg_n_0_[18] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[19]),
        .Q(\cpt_off_s_reg_n_0_[19] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[1]),
        .Q(\cpt_off_s_reg_n_0_[1] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[20]),
        .Q(\cpt_off_s_reg_n_0_[20] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[21]),
        .Q(\cpt_off_s_reg_n_0_[21] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[22]),
        .Q(\cpt_off_s_reg_n_0_[22] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[23]),
        .Q(\cpt_off_s_reg_n_0_[23] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[24]),
        .Q(\cpt_off_s_reg_n_0_[24] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[25]),
        .Q(\cpt_off_s_reg_n_0_[25] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[26]),
        .Q(\cpt_off_s_reg_n_0_[26] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[27]),
        .Q(\cpt_off_s_reg_n_0_[27] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[28]),
        .Q(\cpt_off_s_reg_n_0_[28] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[29]),
        .Q(\cpt_off_s_reg_n_0_[29] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[2]),
        .Q(\cpt_off_s_reg_n_0_[2] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[30]),
        .Q(\cpt_off_s_reg_n_0_[30] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[31]),
        .Q(\cpt_off_s_reg_n_0_[31] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[3]),
        .Q(\cpt_off_s_reg_n_0_[3] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[4]),
        .Q(\cpt_off_s_reg_n_0_[4] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[5]),
        .Q(\cpt_off_s_reg_n_0_[5] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[6]),
        .Q(\cpt_off_s_reg_n_0_[6] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[7]),
        .Q(\cpt_off_s_reg_n_0_[7] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[8]),
        .Q(\cpt_off_s_reg_n_0_[8] ),
        .R(s00_axi_reset));
  FDRE \cpt_off_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(s00_axi_wdata[9]),
        .Q(\cpt_off_s_reg_n_0_[9] ),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[0]),
        .Q(cpt_step_s[0]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[10]),
        .Q(cpt_step_s[10]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[11]),
        .Q(cpt_step_s[11]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[12]),
        .Q(cpt_step_s[12]),
        .S(s00_axi_reset));
  FDSE \cpt_step_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[13]),
        .Q(cpt_step_s[13]),
        .S(s00_axi_reset));
  FDSE \cpt_step_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[14]),
        .Q(cpt_step_s[14]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[15]),
        .Q(cpt_step_s[15]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[16]),
        .Q(cpt_step_s[16]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[17]),
        .Q(cpt_step_s[17]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[18]),
        .Q(cpt_step_s[18]),
        .S(s00_axi_reset));
  FDSE \cpt_step_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[19]),
        .Q(cpt_step_s[19]),
        .S(s00_axi_reset));
  FDSE \cpt_step_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[1]),
        .Q(cpt_step_s[1]),
        .S(s00_axi_reset));
  FDSE \cpt_step_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[20]),
        .Q(cpt_step_s[20]),
        .S(s00_axi_reset));
  FDSE \cpt_step_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[21]),
        .Q(cpt_step_s[21]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[22]),
        .Q(cpt_step_s[22]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[23]),
        .Q(cpt_step_s[23]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[24]),
        .Q(cpt_step_s[24]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[25]),
        .Q(cpt_step_s[25]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[26]),
        .Q(cpt_step_s[26]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[27]),
        .Q(cpt_step_s[27]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[28]),
        .Q(cpt_step_s[28]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[29]),
        .Q(cpt_step_s[29]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[2]),
        .Q(cpt_step_s[2]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[30]),
        .Q(cpt_step_s[30]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[31]),
        .Q(cpt_step_s[31]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[3]),
        .Q(cpt_step_s[3]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[4]),
        .Q(cpt_step_s[4]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[5]),
        .Q(cpt_step_s[5]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[6]),
        .Q(cpt_step_s[6]),
        .R(s00_axi_reset));
  FDSE \cpt_step_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[7]),
        .Q(cpt_step_s[7]),
        .S(s00_axi_reset));
  FDRE \cpt_step_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
        .D(s00_axi_wdata[8]),
        .Q(cpt_step_s[8]),
        .R(s00_axi_reset));
  FDRE \cpt_step_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_wready_reg),
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
    .INIT(32'hACACF000)) 
    \readdata_s[0]_i_1 
       (.I0(pinc_sw_s),
        .I1(cpt_step_s[0]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[0] ),
        .I4(addr_s[0]),
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
    .INIT(32'hACACF000)) 
    \readdata_s[1]_i_1 
       (.I0(poff_sw_s),
        .I1(cpt_step_s[1]),
        .I2(addr_s[1]),
        .I3(\cpt_off_s_reg_n_0_[1] ),
        .I4(addr_s[0]),
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
