-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed May 16 12:10:01 2018
-- Host        : ux305 running 64-bit Debian GNU/Linux testing/unstable
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_0_0/demod_pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_0_0_sim_netlist.vhdl
-- Design      : demod_pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity demod_pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_0_0 is
  port (
    data_en_i : in STD_LOGIC;
    data_eof_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_en_o : out STD_LOGIC;
    data1_eof_o : out STD_LOGIC;
    data1_clk_o : out STD_LOGIC;
    data1_rst_o : out STD_LOGIC;
    data1_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_en_o : out STD_LOGIC;
    data2_eof_o : out STD_LOGIC;
    data2_clk_o : out STD_LOGIC;
    data2_rst_o : out STD_LOGIC;
    data2_o : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of demod_pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of demod_pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_0_0 : entity is "demod_pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_0_0,dupplReal_1_to_2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of demod_pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of demod_pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_0_0 : entity is "dupplReal_1_to_2,Vivado 2016.4";
end demod_pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_0_0;

architecture STRUCTURE of demod_pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_0_0 is
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
  data1_clk_o <= \^data_clk_i\;
  data1_en_o <= \^data_en_i\;
  data1_eof_o <= \^data_eof_i\;
  data1_o(13 downto 0) <= \^data_i\(13 downto 0);
  data1_rst_o <= \^data_rst_i\;
  data2_clk_o <= \^data_clk_i\;
  data2_en_o <= \^data_en_i\;
  data2_eof_o <= \^data_eof_i\;
  data2_o(13 downto 0) <= \^data_i\(13 downto 0);
  data2_rst_o <= \^data_rst_i\;
end STRUCTURE;
