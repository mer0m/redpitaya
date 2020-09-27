-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri May 15 18:33:24 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_iq_pid_vco_dupplReal_1_to_2_1_0_sim_netlist.vhdl
-- Design      : double_iq_pid_vco_dupplReal_1_to_2_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "double_iq_pid_vco_dupplReal_1_to_2_1_0,dupplReal_1_to_2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dupplReal_1_to_2,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^data_clk_i\ : STD_LOGIC;
  signal \^data_en_i\ : STD_LOGIC;
  signal \^data_eof_i\ : STD_LOGIC;
  signal \^data_i\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^data_rst_i\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of data1_clk_o : signal is "xilinx.com:interface:real:1.0 data1_out DATA_CLK";
  attribute x_interface_info of data1_en_o : signal is "xilinx.com:interface:real:1.0 data1_out DATA_EN";
  attribute x_interface_info of data1_eof_o : signal is "xilinx.com:interface:real:1.0 data1_out DATA_EOF";
  attribute x_interface_info of data1_rst_o : signal is "xilinx.com:interface:real:1.0 data1_out DATA_RST";
  attribute x_interface_info of data2_clk_o : signal is "xilinx.com:interface:real:1.0 data2_out DATA_CLK";
  attribute x_interface_info of data2_en_o : signal is "xilinx.com:interface:real:1.0 data2_out DATA_EN";
  attribute x_interface_info of data2_eof_o : signal is "xilinx.com:interface:real:1.0 data2_out DATA_EOF";
  attribute x_interface_info of data2_rst_o : signal is "xilinx.com:interface:real:1.0 data2_out DATA_RST";
  attribute x_interface_info of data_clk_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_CLK";
  attribute x_interface_info of data_en_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_EN";
  attribute x_interface_info of data_eof_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_EOF";
  attribute x_interface_info of data_rst_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_RST";
  attribute x_interface_info of data1_o : signal is "xilinx.com:interface:real:1.0 data1_out DATA";
  attribute x_interface_info of data2_o : signal is "xilinx.com:interface:real:1.0 data2_out DATA";
  attribute x_interface_info of data_i : signal is "xilinx.com:interface:real:1.0 data_in DATA";
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
