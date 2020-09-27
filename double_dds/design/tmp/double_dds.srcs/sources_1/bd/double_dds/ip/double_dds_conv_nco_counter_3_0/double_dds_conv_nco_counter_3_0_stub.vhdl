-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun May 31 18:43:49 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode synth_stub -rename_top double_dds_conv_nco_counter_3_0 -prefix
--               double_dds_conv_nco_counter_3_0_ double_dds_conv_nco_counter_1_0_stub.vhdl
-- Design      : double_dds_conv_nco_counter_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity double_dds_conv_nco_counter_3_0 is
  Port ( 
    data1_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data1_en_o : out STD_LOGIC;
    data1_eof_o : out STD_LOGIC;
    data1_clk_o : out STD_LOGIC;
    data1_rst_o : out STD_LOGIC;
    data2_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_en_o : out STD_LOGIC;
    data2_eof_o : out STD_LOGIC;
    data2_clk_o : out STD_LOGIC;
    data2_rst_o : out STD_LOGIC;
    data_i_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_q_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_eof_i : in STD_LOGIC;
    data_en_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC
  );

end double_dds_conv_nco_counter_3_0;

architecture stub of double_dds_conv_nco_counter_3_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data1_o[15:0],data1_en_o,data1_eof_o,data1_clk_o,data1_rst_o,data2_o[15:0],data2_en_o,data2_eof_o,data2_clk_o,data2_rst_o,data_i_i[15:0],data_q_i[15:0],data_eof_i,data_en_i,data_rst_i,data_clk_i";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "convertComplexToReal,Vivado 2019.2";
begin
end;
