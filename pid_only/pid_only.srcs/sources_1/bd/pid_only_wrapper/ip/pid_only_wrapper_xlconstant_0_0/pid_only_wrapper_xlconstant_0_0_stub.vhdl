-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed Mar 29 18:24:37 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode synth_stub -rename_top pid_only_wrapper_xlconstant_0_0 -prefix
--               pid_only_wrapper_xlconstant_0_0_ pid_only_wrapper_xlconstant_0_0_stub.vhdl
-- Design      : pid_only_wrapper_xlconstant_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pid_only_wrapper_xlconstant_0_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );

end pid_only_wrapper_xlconstant_0_0;

architecture stub of pid_only_wrapper_xlconstant_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[13:0]";
begin
end;
