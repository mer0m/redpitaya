-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri May 15 18:42:11 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_iq_pid_vco_shifterReal_2_0_sim_netlist.vhdl
-- Design      : double_iq_pid_vco_shifterReal_2_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shifterReal is
  port (
    data_o : out STD_LOGIC_VECTOR ( 18 downto 0 );
    data_en_o : out STD_LOGIC;
    data_eof_o : out STD_LOGIC;
    data_en_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 18 downto 0 );
    data_clk_i : in STD_LOGIC;
    data_eof_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shifterReal;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shifterReal is
  signal data_eof_o_i_1_n_0 : STD_LOGIC;
begin
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_en_i,
      Q => data_en_o,
      R => '0'
    );
data_eof_o_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_en_i,
      I1 => data_eof_i,
      O => data_eof_o_i_1_n_0
    );
data_eof_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_eof_o_i_1_n_0,
      Q => data_eof_o,
      R => '0'
    );
\data_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(0),
      Q => data_o(0),
      R => '0'
    );
\data_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(1),
      Q => data_o(1),
      R => '0'
    );
\data_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(2),
      Q => data_o(2),
      R => '0'
    );
\data_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(3),
      Q => data_o(3),
      R => '0'
    );
\data_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(4),
      Q => data_o(4),
      R => '0'
    );
\data_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(5),
      Q => data_o(5),
      R => '0'
    );
\data_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(6),
      Q => data_o(6),
      R => '0'
    );
\data_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(7),
      Q => data_o(7),
      R => '0'
    );
\data_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(8),
      Q => data_o(8),
      R => '0'
    );
\data_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(9),
      Q => data_o(9),
      R => '0'
    );
\data_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(10),
      Q => data_o(10),
      R => '0'
    );
\data_s_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(11),
      Q => data_o(11),
      R => '0'
    );
\data_s_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(12),
      Q => data_o(12),
      R => '0'
    );
\data_s_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(13),
      Q => data_o(13),
      R => '0'
    );
\data_s_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(14),
      Q => data_o(14),
      R => '0'
    );
\data_s_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(15),
      Q => data_o(15),
      R => '0'
    );
\data_s_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(16),
      Q => data_o(16),
      R => '0'
    );
\data_s_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(17),
      Q => data_o(17),
      R => '0'
    );
\data_s_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(18),
      Q => data_o(18),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data_i : in STD_LOGIC_VECTOR ( 18 downto 0 );
    data_en_i : in STD_LOGIC;
    data_eof_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 39 downto 0 );
    data_en_o : out STD_LOGIC;
    data_eof_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "double_iq_pid_vco_shifterReal_2_0,shifterReal,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "shifterReal,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^data_clk_i\ : STD_LOGIC;
  signal \^data_o\ : STD_LOGIC_VECTOR ( 39 downto 21 );
  signal \^data_rst_i\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of data_clk_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_CLK";
  attribute x_interface_info of data_clk_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_CLK";
  attribute x_interface_info of data_en_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_EN";
  attribute x_interface_info of data_en_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_EN";
  attribute x_interface_info of data_eof_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_EOF";
  attribute x_interface_info of data_eof_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_EOF";
  attribute x_interface_info of data_rst_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_RST";
  attribute x_interface_info of data_rst_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_RST";
  attribute x_interface_info of data_i : signal is "xilinx.com:interface:real:1.0 data_in DATA";
  attribute x_interface_info of data_o : signal is "xilinx.com:interface:real:1.0 data_out DATA";
begin
  \^data_clk_i\ <= data_clk_i;
  \^data_rst_i\ <= data_rst_i;
  data_clk_o <= \^data_clk_i\;
  data_o(39 downto 21) <= \^data_o\(39 downto 21);
  data_o(20) <= \<const0>\;
  data_o(19) <= \<const0>\;
  data_o(18) <= \<const0>\;
  data_o(17) <= \<const0>\;
  data_o(16) <= \<const0>\;
  data_o(15) <= \<const0>\;
  data_o(14) <= \<const0>\;
  data_o(13) <= \<const0>\;
  data_o(12) <= \<const0>\;
  data_o(11) <= \<const0>\;
  data_o(10) <= \<const0>\;
  data_o(9) <= \<const0>\;
  data_o(8) <= \<const0>\;
  data_o(7) <= \<const0>\;
  data_o(6) <= \<const0>\;
  data_o(5) <= \<const0>\;
  data_o(4) <= \<const0>\;
  data_o(3) <= \<const0>\;
  data_o(2) <= \<const0>\;
  data_o(1) <= \<const0>\;
  data_o(0) <= \<const0>\;
  data_rst_o <= \^data_rst_i\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shifterReal
     port map (
      data_clk_i => \^data_clk_i\,
      data_en_i => data_en_i,
      data_en_o => data_en_o,
      data_eof_i => data_eof_i,
      data_eof_o => data_eof_o,
      data_i(18 downto 0) => data_i(18 downto 0),
      data_o(18 downto 0) => \^data_o\(39 downto 21)
    );
end STRUCTURE;
