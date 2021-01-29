-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Jan 29 17:04:01 2021
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_iq_pid_vco_expanderReal_2_0_sim_netlist.vhdl
-- Design      : double_iq_pid_vco_expanderReal_2_0
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
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_i : in STD_LOGIC;
    data_sof_i : in STD_LOGIC;
    data_eof_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 18 downto 0 );
    data_en_o : out STD_LOGIC;
    data_sof_o : out STD_LOGIC;
    data_eof_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "double_iq_pid_vco_expanderReal_2_0,expanderReal,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "expanderReal,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^data_clk_i\ : STD_LOGIC;
  signal \^data_en_i\ : STD_LOGIC;
  signal \^data_eof_i\ : STD_LOGIC;
  signal \^data_i\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^data_rst_i\ : STD_LOGIC;
  signal \^data_sof_i\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of data_clk_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_CLK";
  attribute x_interface_info of data_clk_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_CLK";
  attribute x_interface_info of data_en_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_EN";
  attribute x_interface_info of data_en_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_EN";
  attribute x_interface_info of data_eof_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_EOF";
  attribute x_interface_info of data_eof_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_EOF";
  attribute x_interface_info of data_rst_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_RST";
  attribute x_interface_info of data_rst_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_RST";
  attribute x_interface_info of data_sof_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_SOF";
  attribute x_interface_info of data_sof_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_SOF";
  attribute x_interface_info of data_i : signal is "xilinx.com:interface:real:1.0 data_in DATA";
  attribute x_interface_info of data_o : signal is "xilinx.com:interface:real:1.0 data_out DATA";
begin
  \^data_clk_i\ <= data_clk_i;
  \^data_en_i\ <= data_en_i;
  \^data_eof_i\ <= data_eof_i;
  \^data_i\(13 downto 0) <= data_i(13 downto 0);
  \^data_rst_i\ <= data_rst_i;
  \^data_sof_i\ <= data_sof_i;
  data_clk_o <= \^data_clk_i\;
  data_en_o <= \^data_en_i\;
  data_eof_o <= \^data_eof_i\;
  data_o(18) <= \^data_i\(13);
  data_o(17) <= \^data_i\(13);
  data_o(16) <= \^data_i\(13);
  data_o(15) <= \^data_i\(13);
  data_o(14) <= \^data_i\(13);
  data_o(13 downto 0) <= \^data_i\(13 downto 0);
  data_rst_o <= \^data_rst_i\;
  data_sof_o <= \^data_sof_i\;
end STRUCTURE;
