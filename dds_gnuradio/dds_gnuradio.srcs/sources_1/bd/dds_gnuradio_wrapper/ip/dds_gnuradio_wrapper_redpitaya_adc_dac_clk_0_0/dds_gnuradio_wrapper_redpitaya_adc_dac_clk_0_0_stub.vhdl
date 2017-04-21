-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Thu Mar 30 09:05:32 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bma/git/fpga_design/redpitaya/dds_gnuradio/dds_gnuradio.srcs/sources_1/bd/dds_gnuradio_wrapper/ip/dds_gnuradio_wrapper_redpitaya_adc_dac_clk_0_0/dds_gnuradio_wrapper_redpitaya_adc_dac_clk_0_0_stub.vhdl
-- Design      : dds_gnuradio_wrapper_redpitaya_adc_dac_clk_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dds_gnuradio_wrapper_redpitaya_adc_dac_clk_0_0 is
  Port ( 
    adc_clk_p_i : in STD_LOGIC;
    adc_clk_n_i : in STD_LOGIC;
    dac_clk_o : out STD_LOGIC;
    dac_2clk_o : out STD_LOGIC;
    dac_2ph_o : out STD_LOGIC;
    dac_locked_o : out STD_LOGIC;
    adc_clk_o : out STD_LOGIC;
    adc_rst_i : in STD_LOGIC;
    ser_clk_o : out STD_LOGIC
  );

end dds_gnuradio_wrapper_redpitaya_adc_dac_clk_0_0;

architecture stub of dds_gnuradio_wrapper_redpitaya_adc_dac_clk_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "adc_clk_p_i,adc_clk_n_i,dac_clk_o,dac_2clk_o,dac_2ph_o,dac_locked_o,adc_clk_o,adc_rst_i,ser_clk_o";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "redpitaya_adc_dac_clk,Vivado 2016.4";
begin
end;
