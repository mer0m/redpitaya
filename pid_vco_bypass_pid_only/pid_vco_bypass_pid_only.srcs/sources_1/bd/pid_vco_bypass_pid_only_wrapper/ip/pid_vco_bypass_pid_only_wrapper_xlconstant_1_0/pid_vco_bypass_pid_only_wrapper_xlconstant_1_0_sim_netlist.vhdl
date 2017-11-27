-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Mon Nov 27 12:18:00 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.1 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/fpga_design/redpitaya/pid_vco_bypass_pid_only/pid_vco_bypass_pid_only.srcs/sources_1/bd/pid_vco_bypass_pid_only_wrapper/ip/pid_vco_bypass_pid_only_wrapper_xlconstant_1_0/pid_vco_bypass_pid_only_wrapper_xlconstant_1_0_sim_netlist.vhdl
-- Design      : pid_vco_bypass_pid_only_wrapper_xlconstant_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pid_vco_bypass_pid_only_wrapper_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pid_vco_bypass_pid_only_wrapper_xlconstant_1_0 : entity is true;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of pid_vco_bypass_pid_only_wrapper_xlconstant_1_0 : entity is "yes";
end pid_vco_bypass_pid_only_wrapper_xlconstant_1_0;

architecture STRUCTURE of pid_vco_bypass_pid_only_wrapper_xlconstant_1_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
