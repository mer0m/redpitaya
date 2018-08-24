-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed May 16 11:57:21 2018
-- Host        : ux305 running 64-bit Debian GNU/Linux testing/unstable
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_ltc2145_0_0/demod_pid_vco_amp_mod_pid_only_wrapper_ltc2145_0_0_stub.vhdl
-- Design      : demod_pid_vco_amp_mod_pid_only_wrapper_ltc2145_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demod_pid_vco_amp_mod_pid_only_wrapper_ltc2145_0_0 is
  Port ( 
    processing_rst_i : in STD_LOGIC;
    resetn : in STD_LOGIC;
    adc_cdcs : out STD_LOGIC;
    adc_clk_i : in STD_LOGIC;
    adc_data_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_data_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_clk : out STD_LOGIC;
    data_a_en_o : out STD_LOGIC;
    data_a_clk_o : out STD_LOGIC;
    data_a_rst_o : out STD_LOGIC;
    data_a_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_b_en_o : out STD_LOGIC;
    data_b_clk_o : out STD_LOGIC;
    data_b_rst_o : out STD_LOGIC;
    data_b_o : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );

end demod_pid_vco_amp_mod_pid_only_wrapper_ltc2145_0_0;

architecture stub of demod_pid_vco_amp_mod_pid_only_wrapper_ltc2145_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "processing_rst_i,resetn,adc_cdcs,adc_clk_i,adc_data_a_i[13:0],adc_data_b_i[13:0],adc_clk,data_a_en_o,data_a_clk_o,data_a_rst_o,data_a_o[13:0],data_b_en_o,data_b_clk_o,data_b_rst_o,data_b_o[13:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ltc2145,Vivado 2016.4";
begin
end;
