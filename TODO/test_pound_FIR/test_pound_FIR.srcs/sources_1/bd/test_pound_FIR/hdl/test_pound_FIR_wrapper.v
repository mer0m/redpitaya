//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
//Date        : Mon Dec  5 16:55:59 2016
//Host        : TF-PYB12 running 64-bit Debian GNU/Linux 8.0 (jessie)
//Command     : generate_target test_pound_FIR_wrapper.bd
//Design      : test_pound_FIR_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module test_pound_FIR_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    adc_cdcs,
    adc_clk_n_i,
    adc_clk_p_i,
    adc_data_a_i,
    adc_data_b_i,
    dac_clk_o,
    dac_dat_o,
    dac_rst_o,
    dac_sel_o,
    dac_wrt_o,
    gpio_rtl_tri_o,
    spi_0_io0_io,
    spi_0_io1_io,
    spi_0_sck_io,
    spi_0_ss1_o,
    spi_0_ss2_o,
    spi_0_ss_io);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output adc_cdcs;
  input adc_clk_n_i;
  input adc_clk_p_i;
  input [13:0]adc_data_a_i;
  input [13:0]adc_data_b_i;
  output dac_clk_o;
  output [13:0]dac_dat_o;
  output dac_rst_o;
  output dac_sel_o;
  output dac_wrt_o;
  output [3:0]gpio_rtl_tri_o;
  inout spi_0_io0_io;
  inout spi_0_io1_io;
  inout spi_0_sck_io;
  output spi_0_ss1_o;
  output spi_0_ss2_o;
  inout spi_0_ss_io;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire adc_cdcs;
  wire adc_clk_n_i;
  wire adc_clk_p_i;
  wire [13:0]adc_data_a_i;
  wire [13:0]adc_data_b_i;
  wire dac_clk_o;
  wire [13:0]dac_dat_o;
  wire dac_rst_o;
  wire dac_sel_o;
  wire dac_wrt_o;
  wire [3:0]gpio_rtl_tri_o;
  wire spi_0_io0_i;
  wire spi_0_io0_io;
  wire spi_0_io0_o;
  wire spi_0_io0_t;
  wire spi_0_io1_i;
  wire spi_0_io1_io;
  wire spi_0_io1_o;
  wire spi_0_io1_t;
  wire spi_0_sck_i;
  wire spi_0_sck_io;
  wire spi_0_sck_o;
  wire spi_0_sck_t;
  wire spi_0_ss1_o;
  wire spi_0_ss2_o;
  wire spi_0_ss_i;
  wire spi_0_ss_io;
  wire spi_0_ss_o;
  wire spi_0_ss_t;

  IOBUF spi_0_io0_iobuf
       (.I(spi_0_io0_o),
        .IO(spi_0_io0_io),
        .O(spi_0_io0_i),
        .T(spi_0_io0_t));
  IOBUF spi_0_io1_iobuf
       (.I(spi_0_io1_o),
        .IO(spi_0_io1_io),
        .O(spi_0_io1_i),
        .T(spi_0_io1_t));
  IOBUF spi_0_sck_iobuf
       (.I(spi_0_sck_o),
        .IO(spi_0_sck_io),
        .O(spi_0_sck_i),
        .T(spi_0_sck_t));
  IOBUF spi_0_ss_iobuf
       (.I(spi_0_ss_o),
        .IO(spi_0_ss_io),
        .O(spi_0_ss_i),
        .T(spi_0_ss_t));
  test_pound_FIR test_pound_FIR_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .SPI_0_io0_i(spi_0_io0_i),
        .SPI_0_io0_o(spi_0_io0_o),
        .SPI_0_io0_t(spi_0_io0_t),
        .SPI_0_io1_i(spi_0_io1_i),
        .SPI_0_io1_o(spi_0_io1_o),
        .SPI_0_io1_t(spi_0_io1_t),
        .SPI_0_sck_i(spi_0_sck_i),
        .SPI_0_sck_o(spi_0_sck_o),
        .SPI_0_sck_t(spi_0_sck_t),
        .SPI_0_ss1_o(spi_0_ss1_o),
        .SPI_0_ss2_o(spi_0_ss2_o),
        .SPI_0_ss_i(spi_0_ss_i),
        .SPI_0_ss_o(spi_0_ss_o),
        .SPI_0_ss_t(spi_0_ss_t),
        .adc_cdcs(adc_cdcs),
        .adc_clk_n_i(adc_clk_n_i),
        .adc_clk_p_i(adc_clk_p_i),
        .adc_data_a_i(adc_data_a_i),
        .adc_data_b_i(adc_data_b_i),
        .dac_clk_o(dac_clk_o),
        .dac_dat_o(dac_dat_o),
        .dac_rst_o(dac_rst_o),
        .dac_sel_o(dac_sel_o),
        .dac_wrt_o(dac_wrt_o),
        .gpio_rtl_tri_o(gpio_rtl_tri_o));
endmodule
