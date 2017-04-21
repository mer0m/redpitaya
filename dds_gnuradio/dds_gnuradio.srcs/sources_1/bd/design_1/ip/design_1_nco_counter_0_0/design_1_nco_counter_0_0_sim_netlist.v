// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Tue Mar 28 17:45:44 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode funcsim
//               /home/bma/git/fpga_design/redpitaya/dds_gnuradio/dds_gnuradio.srcs/sources_1/bd/design_1/ip/design_1_nco_counter_0_0/design_1_nco_counter_0_0_sim_netlist.v
// Design      : design_1_nco_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_nco_counter_0_0,nco_counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "nco_counter,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module design_1_nco_counter_0_0
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
  (* x_interface_info = "xilinx.com:interface:real:1.0 poff_in DATA" *) input [9:0]poff_i;
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
  wire [9:0]poff_i;
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
  (* LUT_SIZE = "10" *) 
  (* id = "1" *) 
  design_1_nco_counter_0_0_nco_counter U0
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
(* DATA_SIZE = "14" *) (* LUT_SIZE = "10" *) (* ORIG_REF_NAME = "nco_counter" *) 
(* id = "1" *) 
module design_1_nco_counter_0_0_nco_counter
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
  input [9:0]poff_i;
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
  wire [9:0]cpt_off_mux_s;
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
  wire [9:0]poff_i;
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
  design_1_nco_counter_0_0_nco_counter_handcomm handle_comm
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
  design_1_nco_counter_0_0_nco_counter_logic nco_inst1
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
  design_1_nco_counter_0_0_wb_nco_counter wb_nco_inst
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

(* ORIG_REF_NAME = "nco_counter_cos_rom" *) 
module design_1_nco_counter_0_0_nco_counter_cos_rom
   (dds_cos_o,
    dds_sin_o,
    S,
    data_a_reg_0,
    data_a_reg_1,
    data_a_reg_2,
    data_a_reg_3,
    data_a_reg_4,
    ref_clk_i,
    ADDRARDADDR,
    ADDRBWRADDR,
    counter_scale_s,
    cpt_off_s,
    O,
    counter_scale_s__0);
  output [13:0]dds_cos_o;
  output [13:0]dds_sin_o;
  output [1:0]S;
  output [1:0]data_a_reg_0;
  output [3:0]data_a_reg_1;
  output [3:0]data_a_reg_2;
  output [3:0]data_a_reg_3;
  output [3:0]data_a_reg_4;
  input ref_clk_i;
  input [9:0]ADDRARDADDR;
  input [8:0]ADDRBWRADDR;
  input [0:0]counter_scale_s;
  input [9:0]cpt_off_s;
  input [2:0]O;
  input [8:0]counter_scale_s__0;

  wire [9:0]ADDRARDADDR;
  wire [8:0]ADDRBWRADDR;
  wire [2:0]O;
  wire [1:0]S;
  wire [0:0]counter_scale_s;
  wire [8:0]counter_scale_s__0;
  wire [9:0]cpt_off_s;
  wire [1:0]data_a_reg_0;
  wire [3:0]data_a_reg_1;
  wire [3:0]data_a_reg_2;
  wire [3:0]data_a_reg_3;
  wire [3:0]data_a_reg_4;
  wire data_a_reg_i_1_n_0;
  wire data_a_reg_n_14;
  wire data_a_reg_n_15;
  wire [13:0]dds_cos_o;
  wire [13:0]dds_sin_o;
  wire ref_clk_i;
  wire [1:0]NLW_data_a_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_data_a_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_data_a_reg_DOPBDOP_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry__0_i_1
       (.I0(counter_scale_s__0[7]),
        .I1(cpt_off_s[7]),
        .O(data_a_reg_1[3]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry__0_i_2
       (.I0(counter_scale_s__0[6]),
        .I1(cpt_off_s[6]),
        .O(data_a_reg_1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry__0_i_3
       (.I0(counter_scale_s__0[5]),
        .I1(cpt_off_s[5]),
        .O(data_a_reg_1[1]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry__0_i_4
       (.I0(counter_scale_s__0[4]),
        .I1(cpt_off_s[4]),
        .O(data_a_reg_1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry__1_i_1
       (.I0(counter_scale_s),
        .I1(cpt_off_s[9]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry__1_i_2
       (.I0(counter_scale_s__0[8]),
        .I1(cpt_off_s[8]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry_i_1
       (.I0(counter_scale_s__0[3]),
        .I1(cpt_off_s[3]),
        .O(data_a_reg_4[3]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry_i_2
       (.I0(counter_scale_s__0[2]),
        .I1(cpt_off_s[2]),
        .O(data_a_reg_4[2]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry_i_3
       (.I0(counter_scale_s__0[1]),
        .I1(cpt_off_s[1]),
        .O(data_a_reg_4[1]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_cos_off_s_carry_i_4
       (.I0(counter_scale_s__0[0]),
        .I1(cpt_off_s[0]),
        .O(data_a_reg_4[0]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry__0_i_1
       (.I0(O[0]),
        .I1(cpt_off_s[7]),
        .O(data_a_reg_2[3]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry__0_i_2
       (.I0(counter_scale_s__0[6]),
        .I1(cpt_off_s[6]),
        .O(data_a_reg_2[2]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry__0_i_3
       (.I0(counter_scale_s__0[5]),
        .I1(cpt_off_s[5]),
        .O(data_a_reg_2[1]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry__0_i_4
       (.I0(counter_scale_s__0[4]),
        .I1(cpt_off_s[4]),
        .O(data_a_reg_2[0]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry__1_i_1
       (.I0(O[2]),
        .I1(cpt_off_s[9]),
        .O(data_a_reg_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry__1_i_2
       (.I0(O[1]),
        .I1(cpt_off_s[8]),
        .O(data_a_reg_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry_i_1
       (.I0(counter_scale_s__0[3]),
        .I1(cpt_off_s[3]),
        .O(data_a_reg_3[3]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry_i_2
       (.I0(counter_scale_s__0[2]),
        .I1(cpt_off_s[2]),
        .O(data_a_reg_3[2]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry_i_3
       (.I0(counter_scale_s__0[1]),
        .I1(cpt_off_s[1]),
        .O(data_a_reg_3[1]));
  LUT2 #(
    .INIT(4'h6)) 
    counter_sin_off_s_carry_i_4
       (.I0(counter_scale_s__0[0]),
        .I1(cpt_off_s[0]),
        .O(data_a_reg_3[0]));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "nco_inst1/rom_10.rom_inst/data_a" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
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
    .INIT_00(256'h7F747F857F967FA67FB47FC17FCC7FD77FE07FE87FEF7FF57FF97FFC7FFE7FFF),
    .INIT_01(256'h7DAE7DD47DF87E1B7E3D7E5E7E7D7E9B7EB87ED47EEE7F087F207F367F4C7F60),
    .INIT_02(256'h7AB37AEB7B237B597B8E7BC27BF57C277C577C867CB47CE17D0C7D377D607D88),
    .INIT_03(256'h768876D3771E776777AF77F5783B787F78C379057946798579C47A017A3E7A79),
    .INIT_04(256'h7138719671F2724D72A77300735873AE7404745874AC74FE754F759F75EE763B),
    .INIT_05(256'h6AD16B3F6BAD6C196C846CEE6D586DC06E276E8D6EF26F556FB8701A707A70DA),
    .INIT_06(256'h636263E0645E64DA655665D0664966C2673967B06825689A690D698069F16A62),
    .INIT_07(256'h5AFD5B8A5C175CA25D2C5DB65E3F5EC65F4D5FD3605860DC615F61E1626262E3),
    .INIT_08(256'h51B8525252EC5385541D54B4554B55E056755709579C582F58C0595159E05A6F),
    .INIT_09(256'h47A9484F48F5499A4A3E4AE24B844C274CC84D694E094EA84F464FE45081511D),
    .INIT_0A(256'h3CE83D993E493EF93FA84056410341B1425D430943B4445E450845B1465A4701),
    .INIT_0B(256'h3191324B330433BC3474352B35E23698374E380338B8396C3A203AD33B853C37),
    .INIT_0C(256'h25C02680274027FF28BE297D2A3B2AF92BB62C732D302DEC2EA82F63301D30D8),
    .INIT_0D(256'h19921A571B1C1BE01CA41D691E2C1EF01FB32076213821FA22BC237E243F2500),
    .INIT_0E(256'h0D240DEC0EB40F7C1044110B11D3129A1361142814EE15B5167B1741180718CC),
    .INIT_0F(256'h0096015F022802F203BB0484054D061606DF07A80871093A0A020ACB0B930C5C),
    .INIT_10(256'hF406F4CFF597F660F729F7F1F8BAF983FA4CFB15FBDFFCA8FD71FE3AFF03FFCD),
    .INIT_11(256'hE794E85AE920E9E6EAACEB73EC3AED01EDC8EE8FEF56F01EF0E6F1AEF276F33E),
    .INIT_12(256'hDB5FDC20DCE1DDA3DE65DF27DFEAE0ADE170E234E2F7E3BCE480E545E60AE6CF),
    .INIT_13(256'hCF83D03ED0F9D1B4D270D32CD3E9D4A6D564D622D6E0D79FD85ED91ED9DEDA9E),
    .INIT_14(256'hC420C4D2C585C638C6ECC7A0C855C90BC9C1CA77CB2ECBE6CC9ECD57CE10CEC9),
    .INIT_15(256'hB950B9F8BAA1BB4BBBF5BCA0BD4BBDF7BEA4BF51BFFFC0AEC15DC20DC2BDC36E),
    .INIT_16(256'hAF2FAFCCB069B107B1A6B245B2E6B387B428B4CBB56EB612B6B7B75CB802B8A9),
    .INIT_17(256'hA5D6A665A6F5A786A818A8ABA93FA9D3AA68AAFEAB95AC2DACC5AD5FADF9AE94),
    .INIT_18(256'h9D5B9DDC9E5E9EE09F649FE8A06EA0F4A17BA204A28DA317A3A2A42DA4BAA548),
    .INIT_19(256'h95D4964596B7972A979E981398899900997899F19A6B9AE69B629BDF9C5D9CDC),
    .INIT_1A(256'h8F548FB49015907790DA913F91A4920B927292DB934493AF941B948894F69564),
    .INIT_1B(256'h89E98A388A878AD78B298B7C8BD08C258C7B8CD28D2A8D848DDE8E3A8E978EF5),
    .INIT_1C(256'h85A385DE861B8659869886D9871A875D87A187E6882C887388BC89058950899C),
    .INIT_1D(256'h828A82B382DC830783338361838F83BF83F084228456848A84C084F7852F8568),
    .INIT_1E(256'h80A880BD80D380EA8103811D813881548172819181B181D281F48218823D8263),
    .INIT_1F(256'h8000800180038007800C8012801A8022802C8037804480518060807080818094),
    .INIT_20(256'h8094808180708060805180448037802C8022801A8012800C8007800380018000),
    .INIT_21(256'h8263823D821881F481D281B18191817281548138811D810380EA80D380BD80A8),
    .INIT_22(256'h8568852F84F784C0848A8456842283F083BF838F83618333830782DC82B3828A),
    .INIT_23(256'h899C8950890588BC8873882C87E687A1875D871A86D986988659861B85DE85A3),
    .INIT_24(256'h8EF58E978E3A8DDE8D848D2A8CD28C7B8C258BD08B7C8B298AD78A878A3889E9),
    .INIT_25(256'h956494F69488941B93AF934492DB9272920B91A4913F90DA907790158FB48F54),
    .INIT_26(256'h9CDC9C5D9BDF9B629AE69A6B99F19978990098899813979E972A96B7964595D4),
    .INIT_27(256'hA548A4BAA42DA3A2A317A28DA204A17BA0F4A06E9FE89F649EE09E5E9DDC9D5B),
    .INIT_28(256'hAE94ADF9AD5FACC5AC2DAB95AAFEAA68A9D3A93FA8ABA818A786A6F5A665A5D6),
    .INIT_29(256'hB8A9B802B75CB6B7B612B56EB4CBB428B387B2E6B245B1A6B107B069AFCCAF2F),
    .INIT_2A(256'hC36EC2BDC20DC15DC0AEBFFFBF51BEA4BDF7BD4BBCA0BBF5BB4BBAA1B9F8B950),
    .INIT_2B(256'hCEC9CE10CD57CC9ECBE6CB2ECA77C9C1C90BC855C7A0C6ECC638C585C4D2C420),
    .INIT_2C(256'hDA9ED9DED91ED85ED79FD6E0D622D564D4A6D3E9D32CD270D1B4D0F9D03ECF83),
    .INIT_2D(256'hE6CFE60AE545E480E3BCE2F7E234E170E0ADDFEADF27DE65DDA3DCE1DC20DB5F),
    .INIT_2E(256'hF33EF276F1AEF0E6F01EEF56EE8FEDC8ED01EC3AEB73EAACE9E6E920E85AE794),
    .INIT_2F(256'hFFCDFF03FE3AFD71FCA8FBDFFB15FA4CF983F8BAF7F1F729F660F597F4CFF406),
    .INIT_30(256'h0C5C0B930ACB0A02093A087107A806DF0616054D048403BB02F20228015F0096),
    .INIT_31(256'h18CC18071741167B15B514EE14281361129A11D3110B10440F7C0EB40DEC0D24),
    .INIT_32(256'h2500243F237E22BC21FA213820761FB31EF01E2C1D691CA41BE01B1C1A571992),
    .INIT_33(256'h30D8301D2F632EA82DEC2D302C732BB62AF92A3B297D28BE27FF2740268025C0),
    .INIT_34(256'h3C373B853AD33A20396C38B83803374E369835E2352B347433BC3304324B3191),
    .INIT_35(256'h4701465A45B14508445E43B44309425D41B1410340563FA83EF93E493D993CE8),
    .INIT_36(256'h511D50814FE44F464EA84E094D694CC84C274B844AE24A3E499A48F5484F47A9),
    .INIT_37(256'h5A6F59E0595158C0582F579C5709567555E0554B54B4541D538552EC525251B8),
    .INIT_38(256'h62E3626261E1615F60DC60585FD35F4D5EC65E3F5DB65D2C5CA25C175B8A5AFD),
    .INIT_39(256'h6A6269F16980690D689A682567B0673966C2664965D0655664DA645E63E06362),
    .INIT_3A(256'h70DA707A701A6FB86F556EF26E8D6E276DC06D586CEE6C846C196BAD6B3F6AD1),
    .INIT_3B(256'h763B75EE759F754F74FE74AC7458740473AE7358730072A7724D71F271967138),
    .INIT_3C(256'h7A797A3E7A0179C479857946790578C3787F783B77F577AF7767771E76D37688),
    .INIT_3D(256'h7D887D607D377D0C7CE17CB47C867C577C277BF57BC27B8E7B597B237AEB7AB3),
    .INIT_3E(256'h7F607F4C7F367F207F087EEE7ED47EB87E9B7E7D7E5E7E3D7E1B7DF87DD47DAE),
    .INIT_3F(256'h7FFF7FFE7FFC7FF97FF57FEF7FE87FE07FD77FCC7FC17FB47FA67F967F857F74),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    data_a_reg
       (.ADDRARDADDR({ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({ADDRBWRADDR,data_a_reg_i_1_n_0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(ref_clk_i),
        .CLKBWRCLK(ref_clk_i),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({dds_cos_o,data_a_reg_n_14,data_a_reg_n_15}),
        .DOBDO({dds_sin_o,NLW_data_a_reg_DOBDO_UNCONNECTED[1:0]}),
        .DOPADOP(NLW_data_a_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_data_a_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_a_reg_i_1
       (.I0(counter_scale_s__0[0]),
        .I1(cpt_off_s[0]),
        .O(data_a_reg_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "nco_counter_handcomm" *) 
module design_1_nco_counter_0_0_nco_counter_handcomm
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
module design_1_nco_counter_0_0_nco_counter_logic
   (dds_cos_o,
    dds_sin_o,
    sin_fake_o,
    cos_fake_o,
    test_o,
    ref_clk_i,
    ref_rst_i,
    cpt_off_mux_s,
    cpt_step_mux_s);
  output [13:0]dds_cos_o;
  output [13:0]dds_sin_o;
  output sin_fake_o;
  output cos_fake_o;
  output test_o;
  input ref_clk_i;
  input ref_rst_i;
  input [9:0]cpt_off_mux_s;
  input [31:0]cpt_step_mux_s;

  wire cos_fake_o;
  wire counter_cos_off_s_carry__0_n_0;
  wire counter_cos_off_s_carry__0_n_1;
  wire counter_cos_off_s_carry__0_n_2;
  wire counter_cos_off_s_carry__0_n_3;
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
  wire \counter_s_reg_n_0_[20] ;
  wire \counter_s_reg_n_0_[21] ;
  wire \counter_s_reg_n_0_[2] ;
  wire \counter_s_reg_n_0_[3] ;
  wire \counter_s_reg_n_0_[4] ;
  wire \counter_s_reg_n_0_[5] ;
  wire \counter_s_reg_n_0_[6] ;
  wire \counter_s_reg_n_0_[7] ;
  wire \counter_s_reg_n_0_[8] ;
  wire \counter_s_reg_n_0_[9] ;
  wire [9:9]counter_scale_s;
  wire [8:0]counter_scale_s__0;
  wire counter_sin_off_s_carry__0_n_0;
  wire counter_sin_off_s_carry__0_n_1;
  wire counter_sin_off_s_carry__0_n_2;
  wire counter_sin_off_s_carry__0_n_3;
  wire counter_sin_off_s_carry__0_n_4;
  wire counter_sin_off_s_carry__0_n_5;
  wire counter_sin_off_s_carry__0_n_6;
  wire counter_sin_off_s_carry__0_n_7;
  wire counter_sin_off_s_carry__1_n_3;
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
  wire \cpt_off2_s_reg[1]_srl2_n_0 ;
  wire \cpt_off2_s_reg[2]_srl2_n_0 ;
  wire \cpt_off2_s_reg[3]_srl2_n_0 ;
  wire \cpt_off2_s_reg[4]_srl2_n_0 ;
  wire \cpt_off2_s_reg[5]_srl2_n_0 ;
  wire \cpt_off2_s_reg[6]_srl2_n_0 ;
  wire \cpt_off2_s_reg[7]_srl2_n_0 ;
  wire \cpt_off2_s_reg[8]_srl2_n_0 ;
  wire \cpt_off2_s_reg[9]_srl2_n_0 ;
  wire [9:0]cpt_off_mux_s;
  wire [9:0]cpt_off_s;
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
  wire \rom_10.rom_inst_n_28 ;
  wire \rom_10.rom_inst_n_29 ;
  wire \rom_10.rom_inst_n_30 ;
  wire \rom_10.rom_inst_n_31 ;
  wire \rom_10.rom_inst_n_32 ;
  wire \rom_10.rom_inst_n_33 ;
  wire \rom_10.rom_inst_n_34 ;
  wire \rom_10.rom_inst_n_35 ;
  wire \rom_10.rom_inst_n_36 ;
  wire \rom_10.rom_inst_n_37 ;
  wire \rom_10.rom_inst_n_38 ;
  wire \rom_10.rom_inst_n_39 ;
  wire \rom_10.rom_inst_n_40 ;
  wire \rom_10.rom_inst_n_41 ;
  wire \rom_10.rom_inst_n_42 ;
  wire \rom_10.rom_inst_n_43 ;
  wire \rom_10.rom_inst_n_44 ;
  wire \rom_10.rom_inst_n_45 ;
  wire \rom_10.rom_inst_n_46 ;
  wire \rom_10.rom_inst_n_47 ;
  wire [9:0]sel;
  wire sin_fake_o;
  wire sin_next;
  wire test_o;
  wire test_o_INST_0_i_1_n_0;
  wire [3:1]NLW_counter_cos_off_s_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_counter_cos_off_s_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_counter_s_reg[28]_i_1_CO_UNCONNECTED ;
  wire [0:0]NLW_counter_sin_off_s_carry_O_UNCONNECTED;
  wire [3:1]NLW_counter_sin_off_s_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_counter_sin_off_s_carry__1_O_UNCONNECTED;
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
        .S({\rom_10.rom_inst_n_44 ,\rom_10.rom_inst_n_45 ,\rom_10.rom_inst_n_46 ,\rom_10.rom_inst_n_47 }));
  CARRY4 counter_cos_off_s_carry__0
       (.CI(counter_cos_off_s_carry_n_0),
        .CO({counter_cos_off_s_carry__0_n_0,counter_cos_off_s_carry__0_n_1,counter_cos_off_s_carry__0_n_2,counter_cos_off_s_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter_scale_s__0[7:4]),
        .O(sel[7:4]),
        .S({\rom_10.rom_inst_n_32 ,\rom_10.rom_inst_n_33 ,\rom_10.rom_inst_n_34 ,\rom_10.rom_inst_n_35 }));
  CARRY4 counter_cos_off_s_carry__1
       (.CI(counter_cos_off_s_carry__0_n_0),
        .CO({NLW_counter_cos_off_s_carry__1_CO_UNCONNECTED[3:1],counter_cos_off_s_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,counter_scale_s__0[8]}),
        .O({NLW_counter_cos_off_s_carry__1_O_UNCONNECTED[3:2],sel[9:8]}),
        .S({1'b0,1'b0,\rom_10.rom_inst_n_28 ,\rom_10.rom_inst_n_29 }));
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
        .I1(counter_scale_s__0[1]),
        .O(\counter_s[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[20]_i_3 
       (.I0(in[22]),
        .I1(counter_scale_s__0[0]),
        .O(\counter_s[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[20]_i_4 
       (.I0(in[21]),
        .I1(\counter_s_reg_n_0_[21] ),
        .O(\counter_s[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[20]_i_5 
       (.I0(in[20]),
        .I1(\counter_s_reg_n_0_[20] ),
        .O(\counter_s[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[24]_i_2 
       (.I0(in[27]),
        .I1(counter_scale_s__0[5]),
        .O(\counter_s[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[24]_i_3 
       (.I0(in[26]),
        .I1(counter_scale_s__0[4]),
        .O(\counter_s[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[24]_i_4 
       (.I0(in[25]),
        .I1(counter_scale_s__0[3]),
        .O(\counter_s[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[24]_i_5 
       (.I0(in[24]),
        .I1(counter_scale_s__0[2]),
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
        .I1(counter_scale_s__0[8]),
        .O(\counter_s[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[28]_i_4 
       (.I0(in[29]),
        .I1(counter_scale_s__0[7]),
        .O(\counter_s[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_s[28]_i_5 
       (.I0(in[28]),
        .I1(counter_scale_s__0[6]),
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
        .Q(\counter_s_reg_n_0_[20] ),
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
        .Q(\counter_s_reg_n_0_[21] ),
        .R(ref_rst_i));
  FDRE \counter_s_reg[22] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[20]_i_1_n_5 ),
        .Q(counter_scale_s__0[0]),
        .R(ref_rst_i));
  FDRE \counter_s_reg[23] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[20]_i_1_n_4 ),
        .Q(counter_scale_s__0[1]),
        .R(ref_rst_i));
  FDRE \counter_s_reg[24] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[24]_i_1_n_7 ),
        .Q(counter_scale_s__0[2]),
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
        .Q(counter_scale_s__0[3]),
        .R(ref_rst_i));
  FDRE \counter_s_reg[26] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[24]_i_1_n_5 ),
        .Q(counter_scale_s__0[4]),
        .R(ref_rst_i));
  FDRE \counter_s_reg[27] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[24]_i_1_n_4 ),
        .Q(counter_scale_s__0[5]),
        .R(ref_rst_i));
  FDRE \counter_s_reg[28] 
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(\counter_s_reg[28]_i_1_n_7 ),
        .Q(counter_scale_s__0[6]),
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
        .Q(counter_scale_s__0[7]),
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
        .Q(counter_scale_s__0[8]),
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
        .S({\rom_10.rom_inst_n_40 ,\rom_10.rom_inst_n_41 ,\rom_10.rom_inst_n_42 ,\rom_10.rom_inst_n_43 }));
  CARRY4 counter_sin_off_s_carry__0
       (.CI(counter_sin_off_s_carry_n_0),
        .CO({counter_sin_off_s_carry__0_n_0,counter_sin_off_s_carry__0_n_1,counter_sin_off_s_carry__0_n_2,counter_sin_off_s_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({minusOp_carry_n_7,counter_scale_s__0[6:4]}),
        .O({counter_sin_off_s_carry__0_n_4,counter_sin_off_s_carry__0_n_5,counter_sin_off_s_carry__0_n_6,counter_sin_off_s_carry__0_n_7}),
        .S({\rom_10.rom_inst_n_36 ,\rom_10.rom_inst_n_37 ,\rom_10.rom_inst_n_38 ,\rom_10.rom_inst_n_39 }));
  CARRY4 counter_sin_off_s_carry__1
       (.CI(counter_sin_off_s_carry__0_n_0),
        .CO({NLW_counter_sin_off_s_carry__1_CO_UNCONNECTED[3:1],counter_sin_off_s_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,minusOp_carry_n_6}),
        .O({NLW_counter_sin_off_s_carry__1_O_UNCONNECTED[3:2],counter_sin_off_s_carry__1_n_6,counter_sin_off_s_carry__1_n_7}),
        .S({1'b0,1'b0,\rom_10.rom_inst_n_30 ,\rom_10.rom_inst_n_31 }));
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
        .DI({1'b0,1'b0,counter_scale_s__0[8],1'b0}),
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
       (.I0(counter_scale_s__0[8]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    minusOp_carry_i_3
       (.I0(counter_scale_s__0[7]),
        .O(minusOp_carry_i_3_n_0));
  design_1_nco_counter_0_0_nco_counter_cos_rom \rom_10.rom_inst 
       (.ADDRARDADDR(sel),
        .ADDRBWRADDR({counter_sin_off_s_carry__1_n_6,counter_sin_off_s_carry__1_n_7,counter_sin_off_s_carry__0_n_4,counter_sin_off_s_carry__0_n_5,counter_sin_off_s_carry__0_n_6,counter_sin_off_s_carry__0_n_7,counter_sin_off_s_carry_n_4,counter_sin_off_s_carry_n_5,counter_sin_off_s_carry_n_6}),
        .O({sin_next,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({\rom_10.rom_inst_n_28 ,\rom_10.rom_inst_n_29 }),
        .counter_scale_s(counter_scale_s),
        .counter_scale_s__0(counter_scale_s__0),
        .cpt_off_s(cpt_off_s),
        .data_a_reg_0({\rom_10.rom_inst_n_30 ,\rom_10.rom_inst_n_31 }),
        .data_a_reg_1({\rom_10.rom_inst_n_32 ,\rom_10.rom_inst_n_33 ,\rom_10.rom_inst_n_34 ,\rom_10.rom_inst_n_35 }),
        .data_a_reg_2({\rom_10.rom_inst_n_36 ,\rom_10.rom_inst_n_37 ,\rom_10.rom_inst_n_38 ,\rom_10.rom_inst_n_39 }),
        .data_a_reg_3({\rom_10.rom_inst_n_40 ,\rom_10.rom_inst_n_41 ,\rom_10.rom_inst_n_42 ,\rom_10.rom_inst_n_43 }),
        .data_a_reg_4({\rom_10.rom_inst_n_44 ,\rom_10.rom_inst_n_45 ,\rom_10.rom_inst_n_46 ,\rom_10.rom_inst_n_47 }),
        .dds_cos_o(dds_cos_o),
        .dds_sin_o(dds_sin_o),
        .ref_clk_i(ref_clk_i));
  FDSE sin_fake_o_reg
       (.C(ref_clk_i),
        .CE(1'b1),
        .D(sin_next),
        .Q(sin_fake_o),
        .S(ref_rst_i));
  LUT5 #(
    .INIT(32'h00000002)) 
    test_o_INST_0
       (.I0(test_o_INST_0_i_1_n_0),
        .I1(counter_scale_s__0[6]),
        .I2(counter_scale_s__0[7]),
        .I3(counter_scale_s__0[4]),
        .I4(counter_scale_s__0[5]),
        .O(test_o));
  LUT5 #(
    .INIT(32'h0000001F)) 
    test_o_INST_0_i_1
       (.I0(counter_scale_s__0[2]),
        .I1(counter_scale_s__0[1]),
        .I2(counter_scale_s__0[3]),
        .I3(counter_scale_s__0[8]),
        .I4(counter_scale_s),
        .O(test_o_INST_0_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "wb_nco_counter" *) 
module design_1_nco_counter_0_0_wb_nco_counter
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
  output [9:0]cpt_off_mux_s;
  output [31:0]cpt_step_mux_s;
  output [31:0]s00_axi_rdata;
  input s00_axi_reset;
  input pinc_sw_s_reg_0;
  input s00_axi_aclk;
  input poff_sw_s_reg_0;
  input [1:0]addr_s;
  input [9:0]poff_i;
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
  wire [9:0]cpt_off_mux_s;
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
  wire [9:0]poff_i;
  wire poff_sw2_s;
  wire poff_sw_s;
  wire poff_sw_s_reg_0;
  wire s00_axi_aclk;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire [31:0]s00_axi_wdata;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[0]_srl2_i_1 
       (.I0(cpt_step_s[0]),
        .I1(pinc_i[0]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[10]_srl2_i_1 
       (.I0(cpt_step_s[10]),
        .I1(pinc_i[10]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[11]_srl2_i_1 
       (.I0(cpt_step_s[11]),
        .I1(pinc_i[11]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[12]_srl2_i_1 
       (.I0(cpt_step_s[12]),
        .I1(pinc_i[12]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[13]_srl2_i_1 
       (.I0(cpt_step_s[13]),
        .I1(pinc_i[13]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[14]_srl2_i_1 
       (.I0(cpt_step_s[14]),
        .I1(pinc_i[14]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[15]_srl2_i_1 
       (.I0(cpt_step_s[15]),
        .I1(pinc_i[15]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[16]_srl2_i_1 
       (.I0(cpt_step_s[16]),
        .I1(pinc_i[16]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[17]_srl2_i_1 
       (.I0(cpt_step_s[17]),
        .I1(pinc_i[17]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[18]_srl2_i_1 
       (.I0(cpt_step_s[18]),
        .I1(pinc_i[18]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[19]_srl2_i_1 
       (.I0(cpt_step_s[19]),
        .I1(pinc_i[19]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[19]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[1]_srl2_i_1 
       (.I0(cpt_step_s[1]),
        .I1(pinc_i[1]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[20]_srl2_i_1 
       (.I0(cpt_step_s[20]),
        .I1(pinc_i[20]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[21]_srl2_i_1 
       (.I0(cpt_step_s[21]),
        .I1(pinc_i[21]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[21]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[22]_srl2_i_1 
       (.I0(cpt_step_s[22]),
        .I1(pinc_i[22]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[22]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[23]_srl2_i_1 
       (.I0(cpt_step_s[23]),
        .I1(pinc_i[23]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[24]_srl2_i_1 
       (.I0(cpt_step_s[24]),
        .I1(pinc_i[24]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[25]_srl2_i_1 
       (.I0(cpt_step_s[25]),
        .I1(pinc_i[25]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[26]_srl2_i_1 
       (.I0(cpt_step_s[26]),
        .I1(pinc_i[26]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[27]_srl2_i_1 
       (.I0(cpt_step_s[27]),
        .I1(pinc_i[27]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[27]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[28]_srl2_i_1 
       (.I0(cpt_step_s[28]),
        .I1(pinc_i[28]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[29]_srl2_i_1 
       (.I0(cpt_step_s[29]),
        .I1(pinc_i[29]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[29]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[2]_srl2_i_1 
       (.I0(cpt_step_s[2]),
        .I1(pinc_i[2]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[30]_srl2_i_1 
       (.I0(cpt_step_s[30]),
        .I1(pinc_i[30]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[30]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[31]_srl2_i_1 
       (.I0(cpt_step_s[31]),
        .I1(pinc_i[31]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[31]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[3]_srl2_i_1 
       (.I0(cpt_step_s[3]),
        .I1(pinc_i[3]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[4]_srl2_i_1 
       (.I0(cpt_step_s[4]),
        .I1(pinc_i[4]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[5]_srl2_i_1 
       (.I0(cpt_step_s[5]),
        .I1(pinc_i[5]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[6]_srl2_i_1 
       (.I0(cpt_step_s[6]),
        .I1(pinc_i[6]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[7]_srl2_i_1 
       (.I0(cpt_step_s[7]),
        .I1(pinc_i[7]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cpt_inc2_s_reg[8]_srl2_i_1 
       (.I0(cpt_step_s[8]),
        .I1(pinc_i[8]),
        .I2(pinc_sw2_s),
        .O(cpt_step_mux_s[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
