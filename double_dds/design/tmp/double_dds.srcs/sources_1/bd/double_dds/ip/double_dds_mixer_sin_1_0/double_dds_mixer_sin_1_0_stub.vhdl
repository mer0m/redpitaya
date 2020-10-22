-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Thu Oct 22 19:48:44 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bma/git/fpga_design/redpitaya/double_dds/design/tmp/double_dds.srcs/sources_1/bd/double_dds/ip/double_dds_mixer_sin_1_0/double_dds_mixer_sin_1_0_stub.vhdl
-- Design      : double_dds_mixer_sin_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity double_dds_mixer_sin_1_0 is
  Port ( 
    data1_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_eof_i : in STD_LOGIC;
    data1_sof_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_en_i : in STD_LOGIC;
    data2_eof_i : in STD_LOGIC;
    data2_sof_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_o : out STD_LOGIC;
    data_eof_o : out STD_LOGIC;
    data_sof_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC
  );

end double_dds_mixer_sin_1_0;

architecture stub of double_dds_mixer_sin_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data1_i[13:0],data1_en_i,data1_eof_i,data1_sof_i,data1_clk_i,data1_rst_i,data2_i[15:0],data2_en_i,data2_eof_i,data2_sof_i,data2_clk_i,data2_rst_i,data_o[13:0],data_en_o,data_eof_o,data_sof_o,data_clk_o,data_rst_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "multiplierReal,Vivado 2019.2";
begin
end;
