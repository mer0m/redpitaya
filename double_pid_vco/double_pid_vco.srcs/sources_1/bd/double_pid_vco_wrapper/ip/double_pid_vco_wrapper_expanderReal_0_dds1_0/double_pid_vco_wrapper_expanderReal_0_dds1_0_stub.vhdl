-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Fri Apr 21 11:27:02 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bma/git/fpga_design/redpitaya/double_pid_vco/double_pid_vco.srcs/sources_1/bd/double_pid_vco_wrapper/ip/double_pid_vco_wrapper_expanderReal_0_dds1_0/double_pid_vco_wrapper_expanderReal_0_dds1_0_stub.vhdl
-- Design      : double_pid_vco_wrapper_expanderReal_0_dds1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity double_pid_vco_wrapper_expanderReal_0_dds1_0 is
  Port ( 
    data_i : in STD_LOGIC_VECTOR ( 27 downto 0 );
    data_eof_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_eof_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC
  );

end double_pid_vco_wrapper_expanderReal_0_dds1_0;

architecture stub of double_pid_vco_wrapper_expanderReal_0_dds1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_i[27:0],data_eof_i,data_rst_i,data_en_i,data_clk_i,data_o[31:0],data_eof_o,data_rst_o,data_en_o,data_clk_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "expanderReal,Vivado 2016.4";
begin
end;