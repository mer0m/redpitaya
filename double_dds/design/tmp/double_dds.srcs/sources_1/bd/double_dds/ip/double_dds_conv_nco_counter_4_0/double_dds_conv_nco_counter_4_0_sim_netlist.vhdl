-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun May 31 18:43:49 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top double_dds_conv_nco_counter_4_0 -prefix
--               double_dds_conv_nco_counter_4_0_ double_dds_conv_nco_counter_1_0_sim_netlist.vhdl
-- Design      : double_dds_conv_nco_counter_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_conv_nco_counter_4_0 is
  port (
    data1_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data1_en_o : out STD_LOGIC;
    data1_eof_o : out STD_LOGIC;
    data1_clk_o : out STD_LOGIC;
    data1_rst_o : out STD_LOGIC;
    data2_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_en_o : out STD_LOGIC;
    data2_eof_o : out STD_LOGIC;
    data2_clk_o : out STD_LOGIC;
    data2_rst_o : out STD_LOGIC;
    data_i_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_q_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_eof_i : in STD_LOGIC;
    data_en_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of double_dds_conv_nco_counter_4_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of double_dds_conv_nco_counter_4_0 : entity is "double_dds_conv_nco_counter_1_0,convertComplexToReal,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of double_dds_conv_nco_counter_4_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of double_dds_conv_nco_counter_4_0 : entity is "convertComplexToReal,Vivado 2019.2";
end double_dds_conv_nco_counter_4_0;

architecture STRUCTURE of double_dds_conv_nco_counter_4_0 is
  signal \^data_clk_i\ : STD_LOGIC;
  signal \^data_en_i\ : STD_LOGIC;
  signal \^data_eof_i\ : STD_LOGIC;
  signal \^data_i_i\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^data_q_i\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^data_rst_i\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of data1_clk_o : signal is "xilinx.com:interface:real:1.0 dataI_out DATA_CLK";
  attribute x_interface_info of data1_en_o : signal is "xilinx.com:interface:real:1.0 dataI_out DATA_EN";
  attribute x_interface_info of data1_eof_o : signal is "xilinx.com:interface:real:1.0 dataI_out DATA_EOF";
  attribute x_interface_info of data1_rst_o : signal is "xilinx.com:interface:real:1.0 dataI_out DATA_RST";
  attribute x_interface_info of data2_clk_o : signal is "xilinx.com:interface:real:1.0 dataQ_out DATA_CLK";
  attribute x_interface_info of data2_en_o : signal is "xilinx.com:interface:real:1.0 dataQ_out DATA_EN";
  attribute x_interface_info of data2_eof_o : signal is "xilinx.com:interface:real:1.0 dataQ_out DATA_EOF";
  attribute x_interface_info of data2_rst_o : signal is "xilinx.com:interface:real:1.0 dataQ_out DATA_RST";
  attribute x_interface_info of data_clk_i : signal is "xilinx.com:interface:complex:1.0 data_in DATA_CLK";
  attribute x_interface_info of data_en_i : signal is "xilinx.com:interface:complex:1.0 data_in DATA_EN";
  attribute x_interface_info of data_eof_i : signal is "xilinx.com:interface:complex:1.0 data_in DATA_EOF";
  attribute x_interface_info of data_rst_i : signal is "xilinx.com:interface:complex:1.0 data_in DATA_RST";
  attribute x_interface_info of data1_o : signal is "xilinx.com:interface:real:1.0 dataI_out DATA";
  attribute x_interface_info of data2_o : signal is "xilinx.com:interface:real:1.0 dataQ_out DATA";
  attribute x_interface_info of data_i_i : signal is "xilinx.com:interface:complex:1.0 data_in DATA_I";
  attribute x_interface_info of data_q_i : signal is "xilinx.com:interface:complex:1.0 data_in DATA_Q";
begin
  \^data_clk_i\ <= data_clk_i;
  \^data_en_i\ <= data_en_i;
  \^data_eof_i\ <= data_eof_i;
  \^data_i_i\(15 downto 0) <= data_i_i(15 downto 0);
  \^data_q_i\(15 downto 0) <= data_q_i(15 downto 0);
  \^data_rst_i\ <= data_rst_i;
  data1_clk_o <= \^data_clk_i\;
  data1_en_o <= \^data_en_i\;
  data1_eof_o <= \^data_eof_i\;
  data1_o(15 downto 0) <= \^data_i_i\(15 downto 0);
  data1_rst_o <= \^data_rst_i\;
  data2_clk_o <= \^data_clk_i\;
  data2_en_o <= \^data_en_i\;
  data2_eof_o <= \^data_eof_i\;
  data2_o(15 downto 0) <= \^data_q_i\(15 downto 0);
  data2_rst_o <= \^data_rst_i\;
end STRUCTURE;
