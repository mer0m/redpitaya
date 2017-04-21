-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed Jan 25 15:46:25 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/fpga_design/redpitaya/adc2dac_ram_offset/adc2dac_ram_offset.srcs/sources_1/bd/adc2dac_ram_offset/ip/adc2dac_ram_offset_expanderReal_0_1/adc2dac_ram_offset_expanderReal_0_1_sim_netlist.vhdl
-- Design      : adc2dac_ram_offset_expanderReal_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adc2dac_ram_offset_expanderReal_0_1 is
  port (
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_eof_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_eof_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of adc2dac_ram_offset_expanderReal_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of adc2dac_ram_offset_expanderReal_0_1 : entity is "adc2dac_ram_offset_expanderReal_0_1,expanderReal,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of adc2dac_ram_offset_expanderReal_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of adc2dac_ram_offset_expanderReal_0_1 : entity is "expanderReal,Vivado 2016.4";
end adc2dac_ram_offset_expanderReal_0_1;

architecture STRUCTURE of adc2dac_ram_offset_expanderReal_0_1 is
  signal \^data_clk_i\ : STD_LOGIC;
  signal \^data_en_i\ : STD_LOGIC;
  signal \^data_eof_i\ : STD_LOGIC;
  signal \^data_i\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^data_rst_i\ : STD_LOGIC;
begin
  \^data_clk_i\ <= data_clk_i;
  \^data_en_i\ <= data_en_i;
  \^data_eof_i\ <= data_eof_i;
  \^data_i\(13 downto 0) <= data_i(13 downto 0);
  \^data_rst_i\ <= data_rst_i;
  data_clk_o <= \^data_clk_i\;
  data_en_o <= \^data_en_i\;
  data_eof_o <= \^data_eof_i\;
  data_o(15) <= \^data_i\(13);
  data_o(14) <= \^data_i\(13);
  data_o(13 downto 0) <= \^data_i\(13 downto 0);
  data_rst_o <= \^data_rst_i\;
end STRUCTURE;
