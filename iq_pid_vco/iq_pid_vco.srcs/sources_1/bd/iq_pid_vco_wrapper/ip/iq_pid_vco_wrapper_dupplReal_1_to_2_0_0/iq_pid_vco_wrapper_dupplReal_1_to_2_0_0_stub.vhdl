-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Fri Apr 21 16:57:22 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_dupplReal_1_to_2_0_0/iq_pid_vco_wrapper_dupplReal_1_to_2_0_0_stub.vhdl
-- Design      : iq_pid_vco_wrapper_dupplReal_1_to_2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity iq_pid_vco_wrapper_dupplReal_1_to_2_0_0 is
  Port ( 
    data_en_i : in STD_LOGIC;
    data_eof_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_en_o : out STD_LOGIC;
    data1_eof_o : out STD_LOGIC;
    data1_clk_o : out STD_LOGIC;
    data1_rst_o : out STD_LOGIC;
    data1_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_en_o : out STD_LOGIC;
    data2_eof_o : out STD_LOGIC;
    data2_clk_o : out STD_LOGIC;
    data2_rst_o : out STD_LOGIC;
    data2_o : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );

end iq_pid_vco_wrapper_dupplReal_1_to_2_0_0;

architecture stub of iq_pid_vco_wrapper_dupplReal_1_to_2_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_en_i,data_eof_i,data_clk_i,data_rst_i,data_i[13:0],data1_en_o,data1_eof_o,data1_clk_o,data1_rst_o,data1_o[13:0],data2_en_o,data2_eof_o,data2_clk_o,data2_rst_o,data2_o[13:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dupplReal_1_to_2,Vivado 2016.4";
begin
end;
