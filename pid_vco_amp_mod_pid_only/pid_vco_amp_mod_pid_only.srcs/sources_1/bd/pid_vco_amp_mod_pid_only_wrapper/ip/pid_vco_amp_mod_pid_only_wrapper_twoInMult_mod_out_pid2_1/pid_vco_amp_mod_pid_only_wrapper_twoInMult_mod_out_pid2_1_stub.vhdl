-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed May  9 15:28:53 2018
-- Host        : ux305 running 64-bit Debian GNU/Linux testing/unstable
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bma/git/fpga_design/redpitaya/pid_vco_amp_mod_pid_only/pid_vco_amp_mod_pid_only.srcs/sources_1/bd/pid_vco_amp_mod_pid_only_wrapper/ip/pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1/pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1_stub.vhdl
-- Design      : pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1 is
  Port ( 
    data1_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_en_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 27 downto 0 );
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC
  );

end pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1;

architecture stub of pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data1_i[13:0],data1_en_i,data1_clk_i,data2_i[13:0],data2_en_i,data2_clk_i,data_o[27:0],data_en_o,data_clk_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "twoInMult,Vivado 2016.4";
begin
end;
