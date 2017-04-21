// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Wed Jan 25 16:56:12 2017
// Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
// Command     : write_verilog -force -mode funcsim
//               /home/bma/fpga_design/redpitaya/adc2dac_ram_offset/adc2dac_ram_offset.srcs/sources_1/bd/adc2dac_ram_offset/ip/adc2dac_ram_offset_data16_multi_to_ram_0_0/adc2dac_ram_offset_data16_multi_to_ram_0_0_sim_netlist.v
// Design      : adc2dac_ram_offset_data16_multi_to_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adc2dac_ram_offset_data16_multi_to_ram_0_0,data16_multi_to_ram,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "data16_multi_to_ram,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module adc2dac_ram_offset_data16_multi_to_ram_0_0
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
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1 DATA" *) input [15:0]data1_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1 DATA_EN" *) input data1_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1 DATA_CLK" *) input data1_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1 DATA_RST" *) input data1_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data1 DATA_EOF" *) input data1_eof_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2 DATA" *) input [15:0]data2_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2 DATA_EN" *) input data2_en_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2 DATA_CLK" *) input data2_clk_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2 DATA_RST" *) input data2_rst_i;
  (* x_interface_info = "xilinx.com:interface:real:1.0 data2 DATA_EOF" *) input data2_eof_i;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_reset RST" *) input s00_axi_reset;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) input [5:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [5:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) input s00_axi_rready;

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
  wire [5:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire [1:0]s00_axi_rresp;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;

  (* ADDR_SIZE = "12" *) 
  (* C_S00_AXI_ADDR_WIDTH = "6" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  (* DATA_FORMAT = "signed" *) 
  (* DATA_SIZE = "16" *) 
  (* NB_INPUT = "2" *) 
  (* id = "1" *) 
  adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram U0
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
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rresp(s00_axi_rresp),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ADDR_SIZE = "12" *) (* C_S00_AXI_ADDR_WIDTH = "6" *) (* C_S00_AXI_DATA_WIDTH = "32" *) 
(* DATA_FORMAT = "signed" *) (* DATA_SIZE = "16" *) (* NB_INPUT = "2" *) 
(* ORIG_REF_NAME = "data16_multi_to_ram" *) (* id = "1" *) 
module adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram
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
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
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
  input [5:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [5:0]s00_axi_araddr;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;

  wire \<const0> ;
  wire [2:0]addr_s;
  wire data1_clk_i;
  wire data1_en_i;
  wire [15:0]data1_i;
  wire data1_rst_i;
  wire data2_clk_i;
  wire data2_en_i;
  wire [15:0]data2_i;
  wire data2_rst_i;
  wire data32_top_inst_n_0;
  wire handle_comm_n_12;
  wire handle_comm_n_13;
  wire handle_comm_n_14;
  wire handle_comm_n_15;
  wire handle_comm_n_16;
  wire handle_comm_n_17;
  wire handle_comm_n_18;
  wire handle_comm_n_19;
  wire handle_comm_n_20;
  wire handle_comm_n_21;
  wire handle_comm_n_22;
  wire handle_comm_n_23;
  wire handle_comm_n_24;
  wire handle_comm_n_25;
  wire handle_comm_n_26;
  wire handle_comm_n_27;
  wire handle_comm_n_28;
  wire handle_comm_n_29;
  wire handle_comm_n_30;
  wire handle_comm_n_31;
  wire handle_comm_n_32;
  wire handle_comm_n_33;
  wire handle_comm_n_34;
  wire handle_comm_n_35;
  wire handle_comm_n_36;
  wire handle_comm_n_37;
  wire handle_comm_n_38;
  wire handle_comm_n_39;
  wire handle_comm_n_4;
  wire handle_comm_n_40;
  wire handle_comm_n_41;
  wire handle_comm_n_42;
  wire handle_comm_n_5;
  wire ram_addr_s;
  wire read_en_s;
  wire readdata_s;
  wire [11:0]res_addr_s;
  wire [31:1]res_s;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
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

  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_top data32_top_inst
       (.D(data32_top_inst_n_0),
        .Q(res_addr_s),
        .addr_s(addr_s[1:0]),
        .\axi_araddr_reg[5] (handle_comm_n_5),
        .data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_i(data1_i),
        .data1_rst_i(data1_rst_i),
        .data2_clk_i(data2_clk_i),
        .data2_en_i(data2_en_i),
        .data2_i(data2_i),
        .data2_rst_i(data2_rst_i),
        .\readdata_s_reg[31] (res_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .start_o(start_o));
  adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_handCom handle_comm
       (.D({handle_comm_n_12,handle_comm_n_13,handle_comm_n_14,handle_comm_n_15,handle_comm_n_16,handle_comm_n_17,handle_comm_n_18,handle_comm_n_19,handle_comm_n_20,handle_comm_n_21,handle_comm_n_22,handle_comm_n_23,handle_comm_n_24,handle_comm_n_25,handle_comm_n_26,handle_comm_n_27,handle_comm_n_28,handle_comm_n_29,handle_comm_n_30,handle_comm_n_31,handle_comm_n_32,handle_comm_n_33,handle_comm_n_34,handle_comm_n_35,handle_comm_n_36,handle_comm_n_37,handle_comm_n_38,handle_comm_n_39,handle_comm_n_40,handle_comm_n_41,handle_comm_n_42}),
        .E(ram_addr_s),
        .\addr_reg_reg[2]_0 (addr_s),
        .mem_reg_1(res_s),
        .read_en_s(read_en_s),
        .\readdata_s_reg[31] (readdata_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid),
        .start_o_reg(handle_comm_n_4),
        .start_o_reg_0(handle_comm_n_5));
  adc2dac_ram_offset_data16_multi_to_ram_0_0_wb_data16_multi_to_ram wb_inst
       (.D({handle_comm_n_12,handle_comm_n_13,handle_comm_n_14,handle_comm_n_15,handle_comm_n_16,handle_comm_n_17,handle_comm_n_18,handle_comm_n_19,handle_comm_n_20,handle_comm_n_21,handle_comm_n_22,handle_comm_n_23,handle_comm_n_24,handle_comm_n_25,handle_comm_n_26,handle_comm_n_27,handle_comm_n_28,handle_comm_n_29,handle_comm_n_30,handle_comm_n_31,handle_comm_n_32,handle_comm_n_33,handle_comm_n_34,handle_comm_n_35,handle_comm_n_36,handle_comm_n_37,handle_comm_n_38,handle_comm_n_39,handle_comm_n_40,handle_comm_n_41,handle_comm_n_42,data32_top_inst_n_0}),
        .E(readdata_s),
        .Q(res_addr_s),
        .\axi_araddr_reg[5] (handle_comm_n_4),
        .\axi_awaddr_reg[2] (ram_addr_s),
        .\axi_awaddr_reg[4] (addr_s[2]),
        .read_en_s(read_en_s),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_reset(s00_axi_reset),
        .s00_axi_rvalid(s00_axi_rvalid),
        .start_o(start_o));
endmodule

(* ORIG_REF_NAME = "data16_multi_to_ram_handCom" *) 
module adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_handCom
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    start_o_reg,
    start_o_reg_0,
    \addr_reg_reg[2]_0 ,
    E,
    read_en_s,
    \readdata_s_reg[31] ,
    D,
    s00_axi_reset,
    s00_axi_aclk,
    mem_reg_1,
    s00_axi_arvalid,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output start_o_reg;
  output start_o_reg_0;
  output [2:0]\addr_reg_reg[2]_0 ;
  output [0:0]E;
  output read_en_s;
  output [0:0]\readdata_s_reg[31] ;
  output [30:0]D;
  input s00_axi_reset;
  input s00_axi_aclk;
  input [30:0]mem_reg_1;
  input s00_axi_arvalid;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input [3:0]s00_axi_awaddr;
  input [3:0]s00_axi_araddr;

  wire [30:0]D;
  wire [0:0]E;
  wire [3:0]addr_reg;
  wire [2:0]\addr_reg_reg[2]_0 ;
  wire [3:3]addr_s;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_n_0;
  wire axi_wready0;
  wire [30:0]mem_reg_1;
  wire [3:0]read_addr_s;
  wire read_en_s;
  wire [0:0]\readdata_s_reg[31] ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire s00_axi_reset;
  wire s00_axi_rready;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire start_o_i_2_n_0;
  wire start_o_reg;
  wire start_o_reg_0;
  wire [3:0]write_addr_s;

  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \addr_reg[0]_i_1 
       (.I0(write_addr_s[0]),
        .I1(addr_reg[0]),
        .I2(read_addr_s[0]),
        .I3(start_o_i_2_n_0),
        .I4(read_en_s),
        .O(\addr_reg_reg[2]_0 [0]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \addr_reg[1]_i_1 
       (.I0(write_addr_s[1]),
        .I1(addr_reg[1]),
        .I2(read_addr_s[1]),
        .I3(start_o_i_2_n_0),
        .I4(read_en_s),
        .O(\addr_reg_reg[2]_0 [1]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \addr_reg[2]_i_1 
       (.I0(write_addr_s[2]),
        .I1(addr_reg[2]),
        .I2(read_addr_s[2]),
        .I3(start_o_i_2_n_0),
        .I4(read_en_s),
        .O(\addr_reg_reg[2]_0 [2]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \addr_reg[3]_i_1 
       (.I0(write_addr_s[3]),
        .I1(addr_reg[3]),
        .I2(read_addr_s[3]),
        .I3(start_o_i_2_n_0),
        .I4(read_en_s),
        .O(addr_s));
  FDRE \addr_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\addr_reg_reg[2]_0 [0]),
        .Q(addr_reg[0]),
        .R(1'b0));
  FDRE \addr_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\addr_reg_reg[2]_0 [1]),
        .Q(addr_reg[1]),
        .R(1'b0));
  FDRE \addr_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\addr_reg_reg[2]_0 [2]),
        .Q(addr_reg[2]),
        .R(1'b0));
  FDRE \addr_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(addr_s),
        .Q(addr_reg[3]),
        .R(1'b0));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(read_addr_s[0]),
        .S(s00_axi_reset));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(read_addr_s[1]),
        .S(s00_axi_reset));
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(read_addr_s[2]),
        .S(s00_axi_reset));
  FDSE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(read_addr_s[3]),
        .S(s00_axi_reset));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(s00_axi_reset));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(write_addr_s[0]),
        .R(s00_axi_reset));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(write_addr_s[1]),
        .R(s00_axi_reset));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(write_addr_s[2]),
        .R(s00_axi_reset));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(write_addr_s[3]),
        .R(s00_axi_reset));
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(s00_axi_reset));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awready),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h55C0)) 
    axi_rvalid_i_1
       (.I0(s00_axi_rready),
        .I1(s00_axi_arready),
        .I2(s00_axi_arvalid),
        .I3(axi_rvalid_reg_n_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_n_0),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(s00_axi_reset));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h02001000)) 
    \ram_addr_s[11]_i_1__0 
       (.I0(\addr_reg_reg[2]_0 [0]),
        .I1(addr_s),
        .I2(\addr_reg_reg[2]_0 [2]),
        .I3(read_en_s),
        .I4(\addr_reg_reg[2]_0 [1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[10]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hECFC)) 
    \readdata_s[11]_i_1 
       (.I0(mem_reg_1[10]),
        .I1(start_o_reg_0),
        .I2(\addr_reg_reg[2]_0 [0]),
        .I3(\addr_reg_reg[2]_0 [1]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[12]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hECFC)) 
    \readdata_s[13]_i_1 
       (.I0(mem_reg_1[12]),
        .I1(start_o_reg_0),
        .I2(\addr_reg_reg[2]_0 [0]),
        .I3(\addr_reg_reg[2]_0 [1]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[14]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hECFC)) 
    \readdata_s[15]_i_1 
       (.I0(mem_reg_1[14]),
        .I1(start_o_reg_0),
        .I2(\addr_reg_reg[2]_0 [0]),
        .I3(\addr_reg_reg[2]_0 [1]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hECFC)) 
    \readdata_s[16]_i_1 
       (.I0(mem_reg_1[15]),
        .I1(start_o_reg_0),
        .I2(\addr_reg_reg[2]_0 [0]),
        .I3(\addr_reg_reg[2]_0 [1]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hECFC)) 
    \readdata_s[17]_i_1 
       (.I0(mem_reg_1[16]),
        .I1(start_o_reg_0),
        .I2(\addr_reg_reg[2]_0 [0]),
        .I3(\addr_reg_reg[2]_0 [1]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[18]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[19]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[1]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hECFC)) 
    \readdata_s[20]_i_1 
       (.I0(mem_reg_1[19]),
        .I1(start_o_reg_0),
        .I2(\addr_reg_reg[2]_0 [0]),
        .I3(\addr_reg_reg[2]_0 [1]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hECFC)) 
    \readdata_s[21]_i_1 
       (.I0(mem_reg_1[20]),
        .I1(start_o_reg_0),
        .I2(\addr_reg_reg[2]_0 [0]),
        .I3(\addr_reg_reg[2]_0 [1]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[22]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[23]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[24]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[25]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hECFC)) 
    \readdata_s[26]_i_1 
       (.I0(mem_reg_1[25]),
        .I1(start_o_reg_0),
        .I2(\addr_reg_reg[2]_0 [0]),
        .I3(\addr_reg_reg[2]_0 [1]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[27]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[28]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[29]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hECFC)) 
    \readdata_s[2]_i_1 
       (.I0(mem_reg_1[1]),
        .I1(start_o_reg_0),
        .I2(\addr_reg_reg[2]_0 [0]),
        .I3(\addr_reg_reg[2]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hECFC)) 
    \readdata_s[30]_i_1 
       (.I0(mem_reg_1[29]),
        .I1(start_o_reg_0),
        .I2(\addr_reg_reg[2]_0 [0]),
        .I3(\addr_reg_reg[2]_0 [1]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \readdata_s[31]_i_1 
       (.I0(\addr_reg_reg[2]_0 [1]),
        .I1(\addr_reg_reg[2]_0 [2]),
        .I2(\addr_reg_reg[2]_0 [0]),
        .I3(addr_s),
        .I4(read_en_s),
        .O(\readdata_s_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[31]_i_2 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[30]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7B3C480)) 
    \readdata_s[31]_i_3 
       (.I0(read_en_s),
        .I1(start_o_i_2_n_0),
        .I2(read_addr_s[3]),
        .I3(addr_reg[3]),
        .I4(write_addr_s[3]),
        .I5(\addr_reg_reg[2]_0 [2]),
        .O(start_o_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[3]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hECFC)) 
    \readdata_s[4]_i_1 
       (.I0(mem_reg_1[3]),
        .I1(start_o_reg_0),
        .I2(\addr_reg_reg[2]_0 [0]),
        .I3(\addr_reg_reg[2]_0 [1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[5]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hECFC)) 
    \readdata_s[6]_i_1 
       (.I0(mem_reg_1[5]),
        .I1(start_o_reg_0),
        .I2(\addr_reg_reg[2]_0 [0]),
        .I3(\addr_reg_reg[2]_0 [1]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[7]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \readdata_s[8]_i_1 
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(\addr_reg_reg[2]_0 [1]),
        .I3(mem_reg_1[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hECFC)) 
    \readdata_s[9]_i_1 
       (.I0(mem_reg_1[8]),
        .I1(start_o_reg_0),
        .I2(\addr_reg_reg[2]_0 [0]),
        .I3(\addr_reg_reg[2]_0 [1]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    start_o_i_1
       (.I0(start_o_reg_0),
        .I1(\addr_reg_reg[2]_0 [0]),
        .I2(start_o_i_2_n_0),
        .I3(\addr_reg_reg[2]_0 [1]),
        .O(start_o_reg));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    start_o_i_2
       (.I0(s00_axi_awready),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_wready),
        .O(start_o_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    wbs_read_ack_i_1
       (.I0(axi_rvalid_reg_n_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .O(read_en_s));
endmodule

(* ORIG_REF_NAME = "data16_multi_to_ram_logic" *) 
module adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_logic
   (start_acquisition2_s_reg,
    WEA,
    start_acquisition2_s_reg_0,
    Q,
    mem_reg_1,
    data2_clk_i,
    start_acquisition4_s,
    data2_en_i,
    data2_rst_i,
    start_acquisition2_s_reg_1,
    start_o,
    s00_axi_reset,
    data2_i);
  output [0:0]start_acquisition2_s_reg;
  output [0:0]WEA;
  output start_acquisition2_s_reg_0;
  output [11:0]Q;
  output [15:0]mem_reg_1;
  input data2_clk_i;
  input start_acquisition4_s;
  input data2_en_i;
  input data2_rst_i;
  input start_acquisition2_s_reg_1;
  input start_o;
  input s00_axi_reset;
  input [15:0]data2_i;

  wire [11:0]Q;
  wire [0:0]WEA;
  wire acquis_reg;
  wire acquis_reg_i_1__0_n_0;
  wire busy_s_i_1__0_n_0;
  wire busy_s_i_2_n_0;
  wire busy_s_i_3_n_0;
  wire busy_s_i_4_n_0;
  wire \counter[0]_i_2__0_n_0 ;
  wire \counter[0]_i_3__0_n_0 ;
  wire \counter[0]_i_4__0_n_0 ;
  wire \counter[0]_i_5__0_n_0 ;
  wire \counter[4]_i_2__0_n_0 ;
  wire \counter[4]_i_3__0_n_0 ;
  wire \counter[4]_i_4__0_n_0 ;
  wire \counter[4]_i_5__0_n_0 ;
  wire \counter[8]_i_2__0_n_0 ;
  wire \counter[8]_i_3__0_n_0 ;
  wire \counter[8]_i_4__0_n_0 ;
  wire \counter[8]_i_5__0_n_0 ;
  wire [11:0]counter_reg;
  wire \counter_reg[0]_i_1__0_n_0 ;
  wire \counter_reg[0]_i_1__0_n_1 ;
  wire \counter_reg[0]_i_1__0_n_2 ;
  wire \counter_reg[0]_i_1__0_n_3 ;
  wire \counter_reg[0]_i_1__0_n_4 ;
  wire \counter_reg[0]_i_1__0_n_5 ;
  wire \counter_reg[0]_i_1__0_n_6 ;
  wire \counter_reg[0]_i_1__0_n_7 ;
  wire \counter_reg[4]_i_1__0_n_0 ;
  wire \counter_reg[4]_i_1__0_n_1 ;
  wire \counter_reg[4]_i_1__0_n_2 ;
  wire \counter_reg[4]_i_1__0_n_3 ;
  wire \counter_reg[4]_i_1__0_n_4 ;
  wire \counter_reg[4]_i_1__0_n_5 ;
  wire \counter_reg[4]_i_1__0_n_6 ;
  wire \counter_reg[4]_i_1__0_n_7 ;
  wire \counter_reg[8]_i_1__0_n_1 ;
  wire \counter_reg[8]_i_1__0_n_2 ;
  wire \counter_reg[8]_i_1__0_n_3 ;
  wire \counter_reg[8]_i_1__0_n_4 ;
  wire \counter_reg[8]_i_1__0_n_5 ;
  wire \counter_reg[8]_i_1__0_n_6 ;
  wire \counter_reg[8]_i_1__0_n_7 ;
  wire data2_clk_i;
  wire data2_en_i;
  wire [15:0]data2_i;
  wire data2_rst_i;
  wire [15:0]mem_reg_1;
  wire ram_addr_s;
  wire \ram_addr_s[11]_i_1__1_n_0 ;
  wire ram_en_o_i_1__0_n_0;
  wire s00_axi_reset;
  wire [0:0]start_acquisition2_s_reg;
  wire start_acquisition2_s_reg_0;
  wire start_acquisition2_s_reg_1;
  wire start_acquisition4_s;
  wire start_o;
  wire [3:3]\NLW_counter_reg[8]_i_1__0_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000EE2E)) 
    acquis_reg_i_1__0
       (.I0(start_acquisition4_s),
        .I1(acquis_reg),
        .I2(data2_en_i),
        .I3(busy_s_i_2_n_0),
        .I4(data2_rst_i),
        .O(acquis_reg_i_1__0_n_0));
  FDRE acquis_reg_reg
       (.C(data2_clk_i),
        .CE(1'b1),
        .D(acquis_reg_i_1__0_n_0),
        .Q(acquis_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AEAE0EAE)) 
    busy_s_i_1__0
       (.I0(start_acquisition2_s_reg),
        .I1(start_acquisition4_s),
        .I2(acquis_reg),
        .I3(data2_en_i),
        .I4(busy_s_i_2_n_0),
        .I5(data2_rst_i),
        .O(busy_s_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    busy_s_i_2
       (.I0(busy_s_i_3_n_0),
        .I1(counter_reg[5]),
        .I2(counter_reg[4]),
        .I3(counter_reg[7]),
        .I4(counter_reg[6]),
        .I5(busy_s_i_4_n_0),
        .O(busy_s_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    busy_s_i_3
       (.I0(counter_reg[9]),
        .I1(counter_reg[8]),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .O(busy_s_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    busy_s_i_4
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[3]),
        .I3(counter_reg[2]),
        .O(busy_s_i_4_n_0));
  FDRE busy_s_reg
       (.C(data2_clk_i),
        .CE(1'b1),
        .D(busy_s_i_1__0_n_0),
        .Q(start_acquisition2_s_reg),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_2__0 
       (.I0(counter_reg[3]),
        .O(\counter[0]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_3__0 
       (.I0(counter_reg[2]),
        .O(\counter[0]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_4__0 
       (.I0(counter_reg[1]),
        .O(\counter[0]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_5__0 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_2__0 
       (.I0(counter_reg[7]),
        .O(\counter[4]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_3__0 
       (.I0(counter_reg[6]),
        .O(\counter[4]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_4__0 
       (.I0(counter_reg[5]),
        .O(\counter[4]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_5__0 
       (.I0(counter_reg[4]),
        .O(\counter[4]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_2__0 
       (.I0(counter_reg[11]),
        .O(\counter[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_3__0 
       (.I0(counter_reg[10]),
        .O(\counter[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_4__0 
       (.I0(counter_reg[9]),
        .O(\counter[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_5__0 
       (.I0(counter_reg[8]),
        .O(\counter[8]_i_5__0_n_0 ));
  FDRE \counter_reg[0] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[0]_i_1__0_n_7 ),
        .Q(counter_reg[0]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  CARRY4 \counter_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1__0_n_0 ,\counter_reg[0]_i_1__0_n_1 ,\counter_reg[0]_i_1__0_n_2 ,\counter_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1__0_n_4 ,\counter_reg[0]_i_1__0_n_5 ,\counter_reg[0]_i_1__0_n_6 ,\counter_reg[0]_i_1__0_n_7 }),
        .S({\counter[0]_i_2__0_n_0 ,\counter[0]_i_3__0_n_0 ,\counter[0]_i_4__0_n_0 ,\counter[0]_i_5__0_n_0 }));
  FDRE \counter_reg[10] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[8]_i_1__0_n_5 ),
        .Q(counter_reg[10]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \counter_reg[11] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[8]_i_1__0_n_4 ),
        .Q(counter_reg[11]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \counter_reg[1] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[0]_i_1__0_n_6 ),
        .Q(counter_reg[1]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \counter_reg[2] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[0]_i_1__0_n_5 ),
        .Q(counter_reg[2]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \counter_reg[3] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[0]_i_1__0_n_4 ),
        .Q(counter_reg[3]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \counter_reg[4] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[4]_i_1__0_n_7 ),
        .Q(counter_reg[4]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  CARRY4 \counter_reg[4]_i_1__0 
       (.CI(\counter_reg[0]_i_1__0_n_0 ),
        .CO({\counter_reg[4]_i_1__0_n_0 ,\counter_reg[4]_i_1__0_n_1 ,\counter_reg[4]_i_1__0_n_2 ,\counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__0_n_4 ,\counter_reg[4]_i_1__0_n_5 ,\counter_reg[4]_i_1__0_n_6 ,\counter_reg[4]_i_1__0_n_7 }),
        .S({\counter[4]_i_2__0_n_0 ,\counter[4]_i_3__0_n_0 ,\counter[4]_i_4__0_n_0 ,\counter[4]_i_5__0_n_0 }));
  FDRE \counter_reg[5] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[4]_i_1__0_n_6 ),
        .Q(counter_reg[5]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \counter_reg[6] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[4]_i_1__0_n_5 ),
        .Q(counter_reg[6]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \counter_reg[7] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[4]_i_1__0_n_4 ),
        .Q(counter_reg[7]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \counter_reg[8] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[8]_i_1__0_n_7 ),
        .Q(counter_reg[8]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  CARRY4 \counter_reg[8]_i_1__0 
       (.CI(\counter_reg[4]_i_1__0_n_0 ),
        .CO({\NLW_counter_reg[8]_i_1__0_CO_UNCONNECTED [3],\counter_reg[8]_i_1__0_n_1 ,\counter_reg[8]_i_1__0_n_2 ,\counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__0_n_4 ,\counter_reg[8]_i_1__0_n_5 ,\counter_reg[8]_i_1__0_n_6 ,\counter_reg[8]_i_1__0_n_7 }),
        .S({\counter[8]_i_2__0_n_0 ,\counter[8]_i_3__0_n_0 ,\counter[8]_i_4__0_n_0 ,\counter[8]_i_5__0_n_0 }));
  FDRE \counter_reg[9] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[8]_i_1__0_n_6 ),
        .Q(counter_reg[9]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \ram_addr_s[11]_i_1__1 
       (.I0(acquis_reg),
        .I1(start_acquisition4_s),
        .I2(data2_rst_i),
        .O(\ram_addr_s[11]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ram_addr_s[11]_i_2__1 
       (.I0(acquis_reg),
        .I1(data2_en_i),
        .O(ram_addr_s));
  FDRE \ram_addr_s_reg[0] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[0]),
        .Q(Q[0]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \ram_addr_s_reg[10] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[10]),
        .Q(Q[10]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \ram_addr_s_reg[11] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[11]),
        .Q(Q[11]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \ram_addr_s_reg[1] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[1]),
        .Q(Q[1]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \ram_addr_s_reg[2] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[2]),
        .Q(Q[2]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \ram_addr_s_reg[3] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[3]),
        .Q(Q[3]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \ram_addr_s_reg[4] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[4]),
        .Q(Q[4]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \ram_addr_s_reg[5] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[5]),
        .Q(Q[5]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \ram_addr_s_reg[6] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[6]),
        .Q(Q[6]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \ram_addr_s_reg[7] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[7]),
        .Q(Q[7]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \ram_addr_s_reg[8] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[8]),
        .Q(Q[8]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \ram_addr_s_reg[9] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[9]),
        .Q(Q[9]),
        .R(\ram_addr_s[11]_i_1__1_n_0 ));
  FDRE \ram_data_s_reg[0] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[0]),
        .Q(mem_reg_1[0]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[10] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[10]),
        .Q(mem_reg_1[10]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[11] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[11]),
        .Q(mem_reg_1[11]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[12] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[12]),
        .Q(mem_reg_1[12]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[13] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[13]),
        .Q(mem_reg_1[13]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[14] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[14]),
        .Q(mem_reg_1[14]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[15] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[15]),
        .Q(mem_reg_1[15]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[1] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[1]),
        .Q(mem_reg_1[1]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[2] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[2]),
        .Q(mem_reg_1[2]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[3] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[3]),
        .Q(mem_reg_1[3]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[4] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[4]),
        .Q(mem_reg_1[4]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[5] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[5]),
        .Q(mem_reg_1[5]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[6] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[6]),
        .Q(mem_reg_1[6]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[7] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[7]),
        .Q(mem_reg_1[7]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[8] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[8]),
        .Q(mem_reg_1[8]),
        .R(data2_rst_i));
  FDRE \ram_data_s_reg[9] 
       (.C(data2_clk_i),
        .CE(ram_addr_s),
        .D(data2_i[9]),
        .Q(mem_reg_1[9]),
        .R(data2_rst_i));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ram_en_o_i_1__0
       (.I0(data2_en_i),
        .I1(acquis_reg),
        .I2(data2_rst_i),
        .O(ram_en_o_i_1__0_n_0));
  FDRE ram_en_o_reg
       (.C(data2_clk_i),
        .CE(1'b1),
        .D(ram_en_o_i_1__0_n_0),
        .Q(WEA),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h000E)) 
    start_acquisition2_s_i_1__0
       (.I0(start_acquisition2_s_reg_1),
        .I1(start_o),
        .I2(start_acquisition2_s_reg),
        .I3(s00_axi_reset),
        .O(start_acquisition2_s_reg_0));
endmodule

(* ORIG_REF_NAME = "data16_multi_to_ram_logic" *) 
module adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_logic_1
   (WEA,
    busy_all_s,
    start_acquisition2_s_reg,
    Q,
    mem_reg_1,
    data1_clk_i,
    start_acquisition2_s,
    start_o,
    s00_axi_reset,
    start_acquisition4_s,
    data1_en_i,
    data1_rst_i,
    data1_i);
  output [0:0]WEA;
  output [0:0]busy_all_s;
  output start_acquisition2_s_reg;
  output [11:0]Q;
  output [15:0]mem_reg_1;
  input data1_clk_i;
  input start_acquisition2_s;
  input start_o;
  input s00_axi_reset;
  input start_acquisition4_s;
  input data1_en_i;
  input data1_rst_i;
  input [15:0]data1_i;

  wire [11:0]Q;
  wire [0:0]WEA;
  wire acquis_reg;
  wire acquis_reg_i_1_n_0;
  wire acquis_reg_i_2_n_0;
  wire acquis_reg_i_3_n_0;
  wire acquis_reg_i_4_n_0;
  wire [0:0]busy_all_s;
  wire busy_s_i_1_n_0;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [11:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire data1_clk_i;
  wire data1_en_i;
  wire [15:0]data1_i;
  wire data1_rst_i;
  wire [15:0]mem_reg_1;
  wire ram_addr_s;
  wire \ram_addr_s[11]_i_1_n_0 ;
  wire ram_en_o_i_1_n_0;
  wire s00_axi_reset;
  wire start_acquisition2_s;
  wire start_acquisition2_s_reg;
  wire start_acquisition4_s;
  wire start_o;
  wire [3:3]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000EE2E)) 
    acquis_reg_i_1
       (.I0(start_acquisition4_s),
        .I1(acquis_reg),
        .I2(data1_en_i),
        .I3(acquis_reg_i_2_n_0),
        .I4(data1_rst_i),
        .O(acquis_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    acquis_reg_i_2
       (.I0(acquis_reg_i_3_n_0),
        .I1(counter_reg[5]),
        .I2(counter_reg[4]),
        .I3(counter_reg[7]),
        .I4(counter_reg[6]),
        .I5(acquis_reg_i_4_n_0),
        .O(acquis_reg_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    acquis_reg_i_3
       (.I0(counter_reg[9]),
        .I1(counter_reg[8]),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .O(acquis_reg_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    acquis_reg_i_4
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[3]),
        .I3(counter_reg[2]),
        .O(acquis_reg_i_4_n_0));
  FDRE acquis_reg_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(acquis_reg_i_1_n_0),
        .Q(acquis_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AEAE0EAE)) 
    busy_s_i_1
       (.I0(busy_all_s),
        .I1(start_acquisition4_s),
        .I2(acquis_reg),
        .I3(data1_en_i),
        .I4(acquis_reg_i_2_n_0),
        .I5(data1_rst_i),
        .O(busy_s_i_1_n_0));
  FDRE busy_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(busy_s_i_1_n_0),
        .Q(busy_all_s),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_2 
       (.I0(counter_reg[3]),
        .O(\counter[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_3 
       (.I0(counter_reg[2]),
        .O(\counter[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_4 
       (.I0(counter_reg[1]),
        .O(\counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_5 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .O(\counter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .O(\counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .O(\counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .O(\counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .O(\counter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .O(\counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .O(\counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .O(\counter[8]_i_5_n_0 ));
  FDRE \counter_reg[0] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter[0]_i_2_n_0 ,\counter[0]_i_3_n_0 ,\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 }));
  FDRE \counter_reg[10] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \counter_reg[11] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \counter_reg[1] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \counter_reg[2] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \counter_reg[3] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \counter_reg[4] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDRE \counter_reg[5] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \counter_reg[6] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \counter_reg[7] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \counter_reg[8] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [3],\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDRE \counter_reg[9] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \ram_addr_s[11]_i_1 
       (.I0(acquis_reg),
        .I1(start_acquisition4_s),
        .I2(data1_rst_i),
        .O(\ram_addr_s[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ram_addr_s[11]_i_2 
       (.I0(acquis_reg),
        .I1(data1_en_i),
        .O(ram_addr_s));
  FDRE \ram_addr_s_reg[0] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[0]),
        .Q(Q[0]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \ram_addr_s_reg[10] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[10]),
        .Q(Q[10]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \ram_addr_s_reg[11] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[11]),
        .Q(Q[11]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \ram_addr_s_reg[1] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[1]),
        .Q(Q[1]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \ram_addr_s_reg[2] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[2]),
        .Q(Q[2]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \ram_addr_s_reg[3] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[3]),
        .Q(Q[3]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \ram_addr_s_reg[4] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[4]),
        .Q(Q[4]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \ram_addr_s_reg[5] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[5]),
        .Q(Q[5]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \ram_addr_s_reg[6] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[6]),
        .Q(Q[6]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \ram_addr_s_reg[7] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[7]),
        .Q(Q[7]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \ram_addr_s_reg[8] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[8]),
        .Q(Q[8]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \ram_addr_s_reg[9] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(counter_reg[9]),
        .Q(Q[9]),
        .R(\ram_addr_s[11]_i_1_n_0 ));
  FDRE \ram_data_s_reg[0] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[0]),
        .Q(mem_reg_1[0]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[10] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[10]),
        .Q(mem_reg_1[10]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[11] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[11]),
        .Q(mem_reg_1[11]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[12] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[12]),
        .Q(mem_reg_1[12]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[13] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[13]),
        .Q(mem_reg_1[13]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[14] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[14]),
        .Q(mem_reg_1[14]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[15] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[15]),
        .Q(mem_reg_1[15]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[1] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[1]),
        .Q(mem_reg_1[1]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[2] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[2]),
        .Q(mem_reg_1[2]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[3] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[3]),
        .Q(mem_reg_1[3]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[4] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[4]),
        .Q(mem_reg_1[4]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[5] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[5]),
        .Q(mem_reg_1[5]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[6] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[6]),
        .Q(mem_reg_1[6]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[7] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[7]),
        .Q(mem_reg_1[7]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[8] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[8]),
        .Q(mem_reg_1[8]),
        .R(data1_rst_i));
  FDRE \ram_data_s_reg[9] 
       (.C(data1_clk_i),
        .CE(ram_addr_s),
        .D(data1_i[9]),
        .Q(mem_reg_1[9]),
        .R(data1_rst_i));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ram_en_o_i_1
       (.I0(data1_en_i),
        .I1(acquis_reg),
        .I2(data1_rst_i),
        .O(ram_en_o_i_1_n_0));
  FDRE ram_en_o_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(ram_en_o_i_1_n_0),
        .Q(WEA),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h000E)) 
    start_acquisition2_s_i_1
       (.I0(start_acquisition2_s),
        .I1(start_o),
        .I2(busy_all_s),
        .I3(s00_axi_reset),
        .O(start_acquisition2_s_reg));
endmodule

(* ORIG_REF_NAME = "data16_multi_to_ram_storage" *) 
module adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_storage
   (\readdata_s_reg[31] ,
    data2_clk_i,
    s00_axi_aclk,
    addr_a,
    Q,
    din_a,
    WEA);
  output [15:0]\readdata_s_reg[31] ;
  input data2_clk_i;
  input s00_axi_aclk;
  input [11:0]addr_a;
  input [11:0]Q;
  input [15:0]din_a;
  input [0:0]WEA;

  wire [11:0]Q;
  wire [0:0]WEA;
  wire [11:0]addr_a;
  wire data2_clk_i;
  wire [15:0]din_a;
  wire mem_reg_0_n_45;
  wire mem_reg_0_n_46;
  wire mem_reg_0_n_47;
  wire mem_reg_0_n_48;
  wire mem_reg_0_n_49;
  wire mem_reg_0_n_50;
  wire mem_reg_0_n_51;
  wire mem_reg_0_n_52;
  wire mem_reg_0_n_88;
  wire mem_reg_1_n_46;
  wire mem_reg_1_n_47;
  wire mem_reg_1_n_48;
  wire mem_reg_1_n_49;
  wire mem_reg_1_n_50;
  wire mem_reg_1_n_51;
  wire mem_reg_1_n_52;
  wire [15:0]\readdata_s_reg[31] ;
  wire s00_axi_aclk;
  wire NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:1]NLW_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_SBITERR_UNCONNECTED;
  wire [31:7]NLW_mem_reg_1_DOADO_UNCONNECTED;
  wire [31:7]NLW_mem_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_RDADDRECC_UNCONNECTED;

  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "8" *) 
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
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_0
       (.ADDRARDADDR({1'b1,addr_a,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(data2_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_a[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,din_a[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_0_DOADO_UNCONNECTED[31:8],mem_reg_0_n_45,mem_reg_0_n_46,mem_reg_0_n_47,mem_reg_0_n_48,mem_reg_0_n_49,mem_reg_0_n_50,mem_reg_0_n_51,mem_reg_0_n_52}),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:8],\readdata_s_reg[31] [7:0]}),
        .DOPADOP({NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:1],mem_reg_0_n_88}),
        .DOPBDOP({NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:1],\readdata_s_reg[31] [8]}),
        .ECCPARITY(NLW_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "15" *) 
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
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_1
       (.ADDRARDADDR({1'b1,addr_a,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(data2_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_a[15:9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_1_DOADO_UNCONNECTED[31:7],mem_reg_1_n_46,mem_reg_1_n_47,mem_reg_1_n_48,mem_reg_1_n_49,mem_reg_1_n_50,mem_reg_1_n_51,mem_reg_1_n_52}),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[31:7],\readdata_s_reg[31] [15:9]}),
        .DOPADOP(NLW_mem_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "data16_multi_to_ram_storage" *) 
module adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_storage_2
   (D,
    \readdata_s_reg[15] ,
    \axi_araddr_reg[5] ,
    addr_s,
    busy_s_reg,
    busy_all_s,
    data1_clk_i,
    s00_axi_aclk,
    addr_a,
    Q,
    din_a,
    WEA);
  output [0:0]D;
  output [14:0]\readdata_s_reg[15] ;
  input \axi_araddr_reg[5] ;
  input [1:0]addr_s;
  input [0:0]busy_s_reg;
  input [0:0]busy_all_s;
  input data1_clk_i;
  input s00_axi_aclk;
  input [11:0]addr_a;
  input [11:0]Q;
  input [15:0]din_a;
  input [0:0]WEA;

  wire [0:0]D;
  wire [11:0]Q;
  wire [0:0]WEA;
  wire [11:0]addr_a;
  wire [1:0]addr_s;
  wire \axi_araddr_reg[5] ;
  wire [0:0]busy_all_s;
  wire [0:0]busy_s_reg;
  wire data1_clk_i;
  wire [15:0]din_a;
  wire mem_reg_0_n_45;
  wire mem_reg_0_n_46;
  wire mem_reg_0_n_47;
  wire mem_reg_0_n_48;
  wire mem_reg_0_n_49;
  wire mem_reg_0_n_50;
  wire mem_reg_0_n_51;
  wire mem_reg_0_n_52;
  wire mem_reg_0_n_88;
  wire mem_reg_1_n_46;
  wire mem_reg_1_n_47;
  wire mem_reg_1_n_48;
  wire mem_reg_1_n_49;
  wire mem_reg_1_n_50;
  wire mem_reg_1_n_51;
  wire mem_reg_1_n_52;
  wire [14:0]\readdata_s_reg[15] ;
  wire [0:0]res_s;
  wire s00_axi_aclk;
  wire NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:1]NLW_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_SBITERR_UNCONNECTED;
  wire [31:7]NLW_mem_reg_1_DOADO_UNCONNECTED;
  wire [31:7]NLW_mem_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_RDADDRECC_UNCONNECTED;

  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "8" *) 
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
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_0
       (.ADDRARDADDR({1'b1,addr_a,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(data1_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_a[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,din_a[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_0_DOADO_UNCONNECTED[31:8],mem_reg_0_n_45,mem_reg_0_n_46,mem_reg_0_n_47,mem_reg_0_n_48,mem_reg_0_n_49,mem_reg_0_n_50,mem_reg_0_n_51,mem_reg_0_n_52}),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:8],\readdata_s_reg[15] [6:0],res_s}),
        .DOPADOP({NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:1],mem_reg_0_n_88}),
        .DOPBDOP({NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:1],\readdata_s_reg[15] [7]}),
        .ECCPARITY(NLW_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "15" *) 
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
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_1
       (.ADDRARDADDR({1'b1,addr_a,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(data1_clk_i),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_mem_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_a[15:9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_1_DOADO_UNCONNECTED[31:7],mem_reg_1_n_46,mem_reg_1_n_47,mem_reg_1_n_48,mem_reg_1_n_49,mem_reg_1_n_50,mem_reg_1_n_51,mem_reg_1_n_52}),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[31:7],\readdata_s_reg[15] [14:8]}),
        .DOPADOP(NLW_mem_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hEFEFFFFFEFEFFFCF)) 
    \readdata_s[0]_i_1 
       (.I0(res_s),
        .I1(\axi_araddr_reg[5] ),
        .I2(addr_s[1]),
        .I3(busy_s_reg),
        .I4(addr_s[0]),
        .I5(busy_all_s),
        .O(D));
endmodule

(* ORIG_REF_NAME = "data16_multi_to_ram_subtop" *) 
module adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_subtop
   (D,
    \readdata_s_reg[15] ,
    data1_clk_i,
    s00_axi_aclk,
    busy_s_reg,
    \axi_araddr_reg[5] ,
    addr_s,
    start_o,
    s00_axi_reset,
    data1_en_i,
    data1_rst_i,
    Q,
    data1_i);
  output [0:0]D;
  output [14:0]\readdata_s_reg[15] ;
  input data1_clk_i;
  input s00_axi_aclk;
  input [0:0]busy_s_reg;
  input \axi_araddr_reg[5] ;
  input [1:0]addr_s;
  input start_o;
  input s00_axi_reset;
  input data1_en_i;
  input data1_rst_i;
  input [11:0]Q;
  input [15:0]data1_i;

  wire [0:0]D;
  wire [11:0]Q;
  wire acquisition_fsm_inst_n_2;
  wire [1:0]addr_s;
  wire \axi_araddr_reg[5] ;
  wire [0:0]busy_all_s;
  wire [0:0]busy_s_reg;
  wire data1_clk_i;
  wire data1_en_i;
  wire [15:0]data1_i;
  wire data1_rst_i;
  wire [11:0]ram_addr_w_s;
  wire [15:0]ram_data_w_s;
  wire ram_en_s;
  wire [14:0]\readdata_s_reg[15] ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire start_acquisition2_s;
  wire start_acquisition3_s;
  wire start_acquisition4_s;
  wire start_o;

  adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_logic_1 acquisition_fsm_inst
       (.Q(ram_addr_w_s),
        .WEA(ram_en_s),
        .busy_all_s(busy_all_s),
        .data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_i(data1_i),
        .data1_rst_i(data1_rst_i),
        .mem_reg_1(ram_data_w_s),
        .s00_axi_reset(s00_axi_reset),
        .start_acquisition2_s(start_acquisition2_s),
        .start_acquisition2_s_reg(acquisition_fsm_inst_n_2),
        .start_acquisition4_s(start_acquisition4_s),
        .start_o(start_o));
  adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_storage_2 ram_msb
       (.D(D),
        .Q(Q),
        .WEA(ram_en_s),
        .addr_a(ram_addr_w_s),
        .addr_s(addr_s),
        .\axi_araddr_reg[5] (\axi_araddr_reg[5] ),
        .busy_all_s(busy_all_s),
        .busy_s_reg(busy_s_reg),
        .data1_clk_i(data1_clk_i),
        .din_a(ram_data_w_s),
        .\readdata_s_reg[15] (\readdata_s_reg[15] ),
        .s00_axi_aclk(s00_axi_aclk));
  FDRE start_acquisition2_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(acquisition_fsm_inst_n_2),
        .Q(start_acquisition2_s),
        .R(1'b0));
  FDRE start_acquisition3_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(start_acquisition2_s),
        .Q(start_acquisition3_s),
        .R(1'b0));
  FDRE start_acquisition4_s_reg
       (.C(data1_clk_i),
        .CE(1'b1),
        .D(start_acquisition3_s),
        .Q(start_acquisition4_s),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "data16_multi_to_ram_subtop" *) 
module adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_subtop_0
   (start_acquisition2_s_reg_0,
    \readdata_s_reg[31] ,
    data2_clk_i,
    s00_axi_aclk,
    data2_en_i,
    data2_rst_i,
    start_o,
    s00_axi_reset,
    Q,
    data2_i);
  output [0:0]start_acquisition2_s_reg_0;
  output [15:0]\readdata_s_reg[31] ;
  input data2_clk_i;
  input s00_axi_aclk;
  input data2_en_i;
  input data2_rst_i;
  input start_o;
  input s00_axi_reset;
  input [11:0]Q;
  input [15:0]data2_i;

  wire [11:0]Q;
  wire acquisition_fsm_inst_n_2;
  wire data2_clk_i;
  wire data2_en_i;
  wire [15:0]data2_i;
  wire data2_rst_i;
  wire [11:0]ram_addr_w_s;
  wire [15:0]ram_data_w_s;
  wire ram_en_s;
  wire [15:0]\readdata_s_reg[31] ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire [0:0]start_acquisition2_s_reg_0;
  wire start_acquisition2_s_reg_n_0;
  wire start_acquisition3_s_reg_n_0;
  wire start_acquisition4_s;
  wire start_o;

  adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_logic acquisition_fsm_inst
       (.Q(ram_addr_w_s),
        .WEA(ram_en_s),
        .data2_clk_i(data2_clk_i),
        .data2_en_i(data2_en_i),
        .data2_i(data2_i),
        .data2_rst_i(data2_rst_i),
        .mem_reg_1(ram_data_w_s),
        .s00_axi_reset(s00_axi_reset),
        .start_acquisition2_s_reg(start_acquisition2_s_reg_0),
        .start_acquisition2_s_reg_0(acquisition_fsm_inst_n_2),
        .start_acquisition2_s_reg_1(start_acquisition2_s_reg_n_0),
        .start_acquisition4_s(start_acquisition4_s),
        .start_o(start_o));
  adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_storage ram_msb
       (.Q(Q),
        .WEA(ram_en_s),
        .addr_a(ram_addr_w_s),
        .data2_clk_i(data2_clk_i),
        .din_a(ram_data_w_s),
        .\readdata_s_reg[31] (\readdata_s_reg[31] ),
        .s00_axi_aclk(s00_axi_aclk));
  FDRE start_acquisition2_s_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(acquisition_fsm_inst_n_2),
        .Q(start_acquisition2_s_reg_n_0),
        .R(1'b0));
  FDRE start_acquisition3_s_reg
       (.C(data2_clk_i),
        .CE(1'b1),
        .D(start_acquisition2_s_reg_n_0),
        .Q(start_acquisition3_s_reg_n_0),
        .R(1'b0));
  FDRE start_acquisition4_s_reg
       (.C(data2_clk_i),
        .CE(1'b1),
        .D(start_acquisition3_s_reg_n_0),
        .Q(start_acquisition4_s),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "data16_multi_to_ram_top" *) 
module adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_top
   (D,
    \readdata_s_reg[31] ,
    data1_clk_i,
    data2_clk_i,
    s00_axi_aclk,
    \axi_araddr_reg[5] ,
    addr_s,
    start_o,
    s00_axi_reset,
    data1_en_i,
    data1_rst_i,
    data2_en_i,
    data2_rst_i,
    Q,
    data1_i,
    data2_i);
  output [0:0]D;
  output [30:0]\readdata_s_reg[31] ;
  input data1_clk_i;
  input data2_clk_i;
  input s00_axi_aclk;
  input \axi_araddr_reg[5] ;
  input [1:0]addr_s;
  input start_o;
  input s00_axi_reset;
  input data1_en_i;
  input data1_rst_i;
  input data2_en_i;
  input data2_rst_i;
  input [11:0]Q;
  input [15:0]data1_i;
  input [15:0]data2_i;

  wire [0:0]D;
  wire [11:0]Q;
  wire [1:0]addr_s;
  wire \axi_araddr_reg[5] ;
  wire [1:1]busy_all_s;
  wire data1_clk_i;
  wire data1_en_i;
  wire [15:0]data1_i;
  wire data1_rst_i;
  wire data2_clk_i;
  wire data2_en_i;
  wire [15:0]data2_i;
  wire data2_rst_i;
  wire [30:0]\readdata_s_reg[31] ;
  wire s00_axi_aclk;
  wire s00_axi_reset;
  wire start_o;

  adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_subtop \subtop_loop[0].data_subtop_inst 
       (.D(D),
        .Q(Q),
        .addr_s(addr_s),
        .\axi_araddr_reg[5] (\axi_araddr_reg[5] ),
        .busy_s_reg(busy_all_s),
        .data1_clk_i(data1_clk_i),
        .data1_en_i(data1_en_i),
        .data1_i(data1_i),
        .data1_rst_i(data1_rst_i),
        .\readdata_s_reg[15] (\readdata_s_reg[31] [14:0]),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .start_o(start_o));
  adc2dac_ram_offset_data16_multi_to_ram_0_0_data16_multi_to_ram_subtop_0 \subtop_loop[1].data_subtop_inst 
       (.Q(Q),
        .data2_clk_i(data2_clk_i),
        .data2_en_i(data2_en_i),
        .data2_i(data2_i),
        .data2_rst_i(data2_rst_i),
        .\readdata_s_reg[31] (\readdata_s_reg[31] [30:15]),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_reset(s00_axi_reset),
        .start_acquisition2_s_reg_0(busy_all_s),
        .start_o(start_o));
endmodule

(* ORIG_REF_NAME = "wb_data16_multi_to_ram" *) 
module adc2dac_ram_offset_data16_multi_to_ram_0_0_wb_data16_multi_to_ram
   (start_o,
    s00_axi_rvalid,
    Q,
    s00_axi_rdata,
    s00_axi_reset,
    \axi_araddr_reg[5] ,
    s00_axi_aclk,
    read_en_s,
    \axi_awaddr_reg[4] ,
    E,
    D,
    \axi_awaddr_reg[2] );
  output start_o;
  output s00_axi_rvalid;
  output [11:0]Q;
  output [31:0]s00_axi_rdata;
  input s00_axi_reset;
  input \axi_araddr_reg[5] ;
  input s00_axi_aclk;
  input read_en_s;
  input [0:0]\axi_awaddr_reg[4] ;
  input [0:0]E;
  input [31:0]D;
  input [0:0]\axi_awaddr_reg[2] ;

  wire [31:0]D;
  wire [0:0]E;
  wire [11:0]Q;
  wire \axi_araddr_reg[5] ;
  wire [0:0]\axi_awaddr_reg[2] ;
  wire [0:0]\axi_awaddr_reg[4] ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__0_n_4 ;
  wire \plusOp_inferred__0/i__carry__0_n_5 ;
  wire \plusOp_inferred__0/i__carry__0_n_6 ;
  wire \plusOp_inferred__0/i__carry__0_n_7 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_5 ;
  wire \plusOp_inferred__0/i__carry__1_n_6 ;
  wire \plusOp_inferred__0/i__carry__1_n_7 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_4 ;
  wire \plusOp_inferred__0/i__carry_n_5 ;
  wire \plusOp_inferred__0/i__carry_n_6 ;
  wire \plusOp_inferred__0/i__carry_n_7 ;
  wire \ram_addr_s[0]_i_1_n_0 ;
  wire \ram_addr_s[10]_i_1_n_0 ;
  wire \ram_addr_s[11]_i_2__0_n_0 ;
  wire \ram_addr_s[1]_i_1_n_0 ;
  wire \ram_addr_s[2]_i_1_n_0 ;
  wire \ram_addr_s[3]_i_1_n_0 ;
  wire \ram_addr_s[4]_i_1_n_0 ;
  wire \ram_addr_s[5]_i_1_n_0 ;
  wire \ram_addr_s[6]_i_1_n_0 ;
  wire \ram_addr_s[7]_i_1_n_0 ;
  wire \ram_addr_s[8]_i_1_n_0 ;
  wire \ram_addr_s[9]_i_1_n_0 ;
  wire read_en_s;
  wire s00_axi_aclk;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_reset;
  wire s00_axi_rvalid;
  wire start_o;
  wire [3:2]\NLW_plusOp_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__0/i__carry__1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_1
       (.I0(Q[8]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_2
       (.I0(Q[7]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_3
       (.I0(Q[6]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_4
       (.I0(Q[5]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_1
       (.I0(Q[11]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_2
       (.I0(Q[10]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_3
       (.I0(Q[9]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_1
       (.I0(Q[4]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_2
       (.I0(Q[3]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_3
       (.I0(Q[2]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4
       (.I0(Q[1]),
        .O(i__carry_i_4_n_0));
  CARRY4 \plusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry_n_4 ,\plusOp_inferred__0/i__carry_n_5 ,\plusOp_inferred__0/i__carry_n_6 ,\plusOp_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__0_n_4 ,\plusOp_inferred__0/i__carry__0_n_5 ,\plusOp_inferred__0/i__carry__0_n_6 ,\plusOp_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_plusOp_inferred__0/i__carry__1_CO_UNCONNECTED [3:2],\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__1_O_UNCONNECTED [3],\plusOp_inferred__0/i__carry__1_n_5 ,\plusOp_inferred__0/i__carry__1_n_6 ,\plusOp_inferred__0/i__carry__1_n_7 }),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ram_addr_s[0]_i_1 
       (.I0(Q[0]),
        .I1(\axi_awaddr_reg[4] ),
        .O(\ram_addr_s[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_addr_s[10]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__1_n_6 ),
        .I1(\axi_awaddr_reg[4] ),
        .O(\ram_addr_s[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_addr_s[11]_i_2__0 
       (.I0(\plusOp_inferred__0/i__carry__1_n_5 ),
        .I1(\axi_awaddr_reg[4] ),
        .O(\ram_addr_s[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_addr_s[1]_i_1 
       (.I0(\plusOp_inferred__0/i__carry_n_7 ),
        .I1(\axi_awaddr_reg[4] ),
        .O(\ram_addr_s[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_addr_s[2]_i_1 
       (.I0(\plusOp_inferred__0/i__carry_n_6 ),
        .I1(\axi_awaddr_reg[4] ),
        .O(\ram_addr_s[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_addr_s[3]_i_1 
       (.I0(\plusOp_inferred__0/i__carry_n_5 ),
        .I1(\axi_awaddr_reg[4] ),
        .O(\ram_addr_s[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_addr_s[4]_i_1 
       (.I0(\plusOp_inferred__0/i__carry_n_4 ),
        .I1(\axi_awaddr_reg[4] ),
        .O(\ram_addr_s[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_addr_s[5]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__0_n_7 ),
        .I1(\axi_awaddr_reg[4] ),
        .O(\ram_addr_s[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_addr_s[6]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__0_n_6 ),
        .I1(\axi_awaddr_reg[4] ),
        .O(\ram_addr_s[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_addr_s[7]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__0_n_5 ),
        .I1(\axi_awaddr_reg[4] ),
        .O(\ram_addr_s[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_addr_s[8]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__0_n_4 ),
        .I1(\axi_awaddr_reg[4] ),
        .O(\ram_addr_s[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_addr_s[9]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__1_n_7 ),
        .I1(\axi_awaddr_reg[4] ),
        .O(\ram_addr_s[9]_i_1_n_0 ));
  FDRE \ram_addr_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .D(\ram_addr_s[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(s00_axi_reset));
  FDRE \ram_addr_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .D(\ram_addr_s[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(s00_axi_reset));
  FDRE \ram_addr_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .D(\ram_addr_s[11]_i_2__0_n_0 ),
        .Q(Q[11]),
        .R(s00_axi_reset));
  FDRE \ram_addr_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .D(\ram_addr_s[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(s00_axi_reset));
  FDRE \ram_addr_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .D(\ram_addr_s[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(s00_axi_reset));
  FDRE \ram_addr_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .D(\ram_addr_s[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(s00_axi_reset));
  FDRE \ram_addr_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .D(\ram_addr_s[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(s00_axi_reset));
  FDRE \ram_addr_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .D(\ram_addr_s[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(s00_axi_reset));
  FDRE \ram_addr_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .D(\ram_addr_s[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(s00_axi_reset));
  FDRE \ram_addr_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .D(\ram_addr_s[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(s00_axi_reset));
  FDRE \ram_addr_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .D(\ram_addr_s[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(s00_axi_reset));
  FDRE \ram_addr_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .D(\ram_addr_s[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(s00_axi_reset));
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
        .D(\axi_araddr_reg[5] ),
        .Q(start_o),
        .R(s00_axi_reset));
  FDRE wbs_read_ack_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_en_s),
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
