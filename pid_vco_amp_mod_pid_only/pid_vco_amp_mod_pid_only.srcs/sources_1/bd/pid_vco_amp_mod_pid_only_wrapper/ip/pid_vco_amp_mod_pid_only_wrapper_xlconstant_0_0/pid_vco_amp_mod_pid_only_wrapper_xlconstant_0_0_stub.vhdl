-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed May  9 11:08:03 2018
-- Host        : ux305 running 64-bit Debian GNU/Linux testing/unstable
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bma/git/fpga_design/redpitaya/pid_vco_amp_mod_pid_only/pid_vco_amp_mod_pid_only.srcs/sources_1/bd/pid_vco_amp_mod_pid_only_wrapper/ip/pid_vco_amp_mod_pid_only_wrapper_xlconstant_0_0/pid_vco_amp_mod_pid_only_wrapper_xlconstant_0_0_stub.vhdl
-- Design      : pid_vco_amp_mod_pid_only_wrapper_xlconstant_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pid_vco_amp_mod_pid_only_wrapper_xlconstant_0_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );

end pid_vco_amp_mod_pid_only_wrapper_xlconstant_0_0;

architecture stub of pid_vco_amp_mod_pid_only_wrapper_xlconstant_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[13:0]";
begin
end;
