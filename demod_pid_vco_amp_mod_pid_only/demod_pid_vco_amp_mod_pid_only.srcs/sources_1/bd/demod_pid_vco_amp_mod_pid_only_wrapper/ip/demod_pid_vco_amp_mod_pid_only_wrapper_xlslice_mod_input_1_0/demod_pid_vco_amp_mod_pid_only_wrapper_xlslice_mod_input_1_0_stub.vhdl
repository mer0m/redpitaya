-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed May 16 11:41:44 2018
-- Host        : ux305 running 64-bit Debian GNU/Linux testing/unstable
-- Command     : write_vhdl -force -mode synth_stub -rename_top demod_pid_vco_amp_mod_pid_only_wrapper_xlslice_mod_input_1_0 -prefix
--               demod_pid_vco_amp_mod_pid_only_wrapper_xlslice_mod_input_1_0_ demod_pid_vco_amp_mod_pid_only_wrapper_xlslice_dds1_0_stub.vhdl
-- Design      : demod_pid_vco_amp_mod_pid_only_wrapper_xlslice_dds1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demod_pid_vco_amp_mod_pid_only_wrapper_xlslice_mod_input_1_0 is
  Port ( 
    Din : in STD_LOGIC_VECTOR ( 27 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );

end demod_pid_vco_amp_mod_pid_only_wrapper_xlslice_mod_input_1_0;

architecture stub of demod_pid_vco_amp_mod_pid_only_wrapper_xlslice_mod_input_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Din[27:0],Dout[13:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlslice,Vivado 2016.4";
begin
end;
