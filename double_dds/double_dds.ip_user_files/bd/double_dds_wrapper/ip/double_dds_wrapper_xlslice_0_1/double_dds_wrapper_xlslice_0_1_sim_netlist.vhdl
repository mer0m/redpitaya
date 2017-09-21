-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed May 10 18:17:57 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode funcsim -rename_top double_dds_wrapper_xlslice_0_1 -prefix
--               double_dds_wrapper_xlslice_0_1_ double_dds_wrapper_xlslice_0_0_sim_netlist.vhdl
-- Design      : double_dds_wrapper_xlslice_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_wrapper_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 27 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of double_dds_wrapper_xlslice_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of double_dds_wrapper_xlslice_0_1 : entity is "double_dds_wrapper_xlslice_0_0,xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of double_dds_wrapper_xlslice_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of double_dds_wrapper_xlslice_0_1 : entity is "xlslice,Vivado 2016.4";
end double_dds_wrapper_xlslice_0_1;

architecture STRUCTURE of double_dds_wrapper_xlslice_0_1 is
  signal \^din\ : STD_LOGIC_VECTOR ( 27 downto 0 );
begin
  Dout(13 downto 0) <= \^din\(26 downto 13);
  \^din\(26 downto 13) <= Din(26 downto 13);
end STRUCTURE;
