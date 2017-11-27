-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Mon Nov 27 12:19:29 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.1 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bma/git/fpga_design/redpitaya/pid_vco_bypass_pid_only/pid_vco_bypass_pid_only.srcs/sources_1/bd/pid_vco_bypass_pid_only_wrapper/ip/pid_vco_bypass_pid_only_wrapper_adder_substracter_mod_out_pid2_0/pid_vco_bypass_pid_only_wrapper_adder_substracter_mod_out_pid2_0_stub.vhdl
-- Design      : pid_vco_bypass_pid_only_wrapper_adder_substracter_mod_out_pid2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pid_vco_bypass_pid_only_wrapper_adder_substracter_mod_out_pid2_0 is
  Port ( 
    data1_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_eof_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_en_i : in STD_LOGIC;
    data2_eof_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 14 downto 0 );
    data_en_o : out STD_LOGIC;
    data_eof_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC
  );

end pid_vco_bypass_pid_only_wrapper_adder_substracter_mod_out_pid2_0;

architecture stub of pid_vco_bypass_pid_only_wrapper_adder_substracter_mod_out_pid2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data1_i[13:0],data1_en_i,data1_eof_i,data1_clk_i,data1_rst_i,data2_i[13:0],data2_en_i,data2_eof_i,data2_clk_i,data2_rst_i,data_o[14:0],data_en_o,data_eof_o,data_clk_o,data_rst_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "adder_substracter,Vivado 2016.4";
begin
end;
