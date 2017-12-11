-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Fri Dec  8 08:48:18 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.1 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/fpga_design/redpitaya/gain_only/gain_only.srcs/sources_1/bd/gain_only_wrapper/ip/gain_only_wrapper_xlslice_0_0/gain_only_wrapper_xlslice_0_0_sim_netlist.vhdl
-- Design      : gain_only_wrapper_xlslice_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gain_only_wrapper_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 27 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of gain_only_wrapper_xlslice_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of gain_only_wrapper_xlslice_0_0 : entity is "gain_only_wrapper_xlslice_0_0,xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of gain_only_wrapper_xlslice_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of gain_only_wrapper_xlslice_0_0 : entity is "xlslice,Vivado 2016.4";
end gain_only_wrapper_xlslice_0_0;

architecture STRUCTURE of gain_only_wrapper_xlslice_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 27 downto 0 );
begin
  Dout(13 downto 0) <= \^din\(20 downto 7);
  \^din\(20 downto 7) <= Din(20 downto 7);
end STRUCTURE;
