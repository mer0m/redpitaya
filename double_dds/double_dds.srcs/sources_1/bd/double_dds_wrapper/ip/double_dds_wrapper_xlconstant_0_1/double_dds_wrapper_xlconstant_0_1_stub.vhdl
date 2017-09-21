-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed Sep 20 16:48:36 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.1 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bma/git/fpga_design/redpitaya/double_dds/double_dds.srcs/sources_1/bd/double_dds_wrapper/ip/double_dds_wrapper_xlconstant_0_1/double_dds_wrapper_xlconstant_0_1_stub.vhdl
-- Design      : double_dds_wrapper_xlconstant_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity double_dds_wrapper_xlconstant_0_1 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end double_dds_wrapper_xlconstant_0_1;

architecture stub of double_dds_wrapper_xlconstant_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[15:0]";
begin
end;
