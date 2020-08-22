-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sat May 30 19:55:58 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bma/git/fpga_design/redpitaya/double_iq_pid_vco/design/tmp/double_iq_pid_vco.srcs/sources_1/bd/double_iq_pid_vco/ip/double_iq_pid_vco_meanReal_2_0/double_iq_pid_vco_meanReal_2_0_stub.vhdl
-- Design      : double_iq_pid_vco_meanReal_2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity double_iq_pid_vco_meanReal_2_0 is
  Port ( 
    data_i : in STD_LOGIC_VECTOR ( 39 downto 0 );
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 63 downto 0 );
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_en_o : out STD_LOGIC
  );

end double_iq_pid_vco_meanReal_2_0;

architecture stub of double_iq_pid_vco_meanReal_2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_i[39:0],data_en_i,data_clk_i,data_rst_i,data_o[63:0],data_clk_o,data_rst_o,data_en_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "meanReal,Vivado 2019.2";
begin
end;
