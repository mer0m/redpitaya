-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Thu Apr 20 08:14:29 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ iq_demod_only_wrapper_mixer_sin_0_0_sim_netlist.vhdl
-- Design      : iq_demod_only_wrapper_mixer_sin_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mixer_sin is
  port (
    data_i_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_q_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_o : out STD_LOGIC;
    nco_rst_i : in STD_LOGIC;
    nco_en_i : in STD_LOGIC;
    nco_i_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    nco_clk_i : in STD_LOGIC;
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    nco_q_i : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mixer_sin;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mixer_sin is
  signal data_en_out_s_i_1_n_0 : STD_LOGIC;
  signal data_en_s : STD_LOGIC;
  signal data_en_s_i_1_n_0 : STD_LOGIC;
  signal data_i_out_s_reg_n_100 : STD_LOGIC;
  signal data_i_out_s_reg_n_101 : STD_LOGIC;
  signal data_i_out_s_reg_n_102 : STD_LOGIC;
  signal data_i_out_s_reg_n_103 : STD_LOGIC;
  signal data_i_out_s_reg_n_104 : STD_LOGIC;
  signal data_i_out_s_reg_n_105 : STD_LOGIC;
  signal data_i_out_s_reg_n_93 : STD_LOGIC;
  signal data_i_out_s_reg_n_94 : STD_LOGIC;
  signal data_i_out_s_reg_n_95 : STD_LOGIC;
  signal data_i_out_s_reg_n_96 : STD_LOGIC;
  signal data_i_out_s_reg_n_97 : STD_LOGIC;
  signal data_i_out_s_reg_n_98 : STD_LOGIC;
  signal data_i_out_s_reg_n_99 : STD_LOGIC;
  signal data_q_out_s_reg_n_100 : STD_LOGIC;
  signal data_q_out_s_reg_n_101 : STD_LOGIC;
  signal data_q_out_s_reg_n_102 : STD_LOGIC;
  signal data_q_out_s_reg_n_103 : STD_LOGIC;
  signal data_q_out_s_reg_n_104 : STD_LOGIC;
  signal data_q_out_s_reg_n_105 : STD_LOGIC;
  signal data_q_out_s_reg_n_93 : STD_LOGIC;
  signal data_q_out_s_reg_n_94 : STD_LOGIC;
  signal data_q_out_s_reg_n_95 : STD_LOGIC;
  signal data_q_out_s_reg_n_96 : STD_LOGIC;
  signal data_q_out_s_reg_n_97 : STD_LOGIC;
  signal data_q_out_s_reg_n_98 : STD_LOGIC;
  signal data_q_out_s_reg_n_99 : STD_LOGIC;
  signal nco_i_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal nco_q_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_data_i_out_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_i_out_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_i_out_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_data_i_out_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_i_out_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_i_out_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_data_i_out_s_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_data_i_out_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_data_i_out_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_i_out_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 27 );
  signal NLW_data_i_out_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_data_q_out_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_q_out_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_q_out_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_data_q_out_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_q_out_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_q_out_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_data_q_out_s_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_data_q_out_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_data_q_out_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_q_out_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 27 );
  signal NLW_data_q_out_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of data_en_out_s_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of data_en_s_i_1 : label is "soft_lutpair0";
begin
data_en_out_s_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_en_s,
      I1 => data_rst_i,
      O => data_en_out_s_i_1_n_0
    );
data_en_out_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_en_out_s_i_1_n_0,
      Q => data_en_o,
      R => '0'
    );
data_en_s_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_en_s,
      I1 => data_en_i,
      I2 => data_rst_i,
      O => data_en_s_i_1_n_0
    );
data_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_en_s_i_1_n_0,
      Q => data_en_s,
      R => '0'
    );
data_i_out_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => nco_i_s(13),
      A(28) => nco_i_s(13),
      A(27) => nco_i_s(13),
      A(26) => nco_i_s(13),
      A(25) => nco_i_s(13),
      A(24) => nco_i_s(13),
      A(23) => nco_i_s(13),
      A(22) => nco_i_s(13),
      A(21) => nco_i_s(13),
      A(20) => nco_i_s(13),
      A(19) => nco_i_s(13),
      A(18) => nco_i_s(13),
      A(17) => nco_i_s(13),
      A(16) => nco_i_s(13),
      A(15) => nco_i_s(13),
      A(14) => nco_i_s(13),
      A(13 downto 0) => nco_i_s(13 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_data_i_out_s_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_data_i_out_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_data_i_out_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_data_i_out_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => data_en_i,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => data_en_s,
      CEP => '0',
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_data_i_out_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_data_i_out_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 27) => NLW_data_i_out_s_reg_P_UNCONNECTED(47 downto 27),
      P(26 downto 13) => data_i_o(13 downto 0),
      P(12) => data_i_out_s_reg_n_93,
      P(11) => data_i_out_s_reg_n_94,
      P(10) => data_i_out_s_reg_n_95,
      P(9) => data_i_out_s_reg_n_96,
      P(8) => data_i_out_s_reg_n_97,
      P(7) => data_i_out_s_reg_n_98,
      P(6) => data_i_out_s_reg_n_99,
      P(5) => data_i_out_s_reg_n_100,
      P(4) => data_i_out_s_reg_n_101,
      P(3) => data_i_out_s_reg_n_102,
      P(2) => data_i_out_s_reg_n_103,
      P(1) => data_i_out_s_reg_n_104,
      P(0) => data_i_out_s_reg_n_105,
      PATTERNBDETECT => NLW_data_i_out_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_data_i_out_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_data_i_out_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => data_rst_i,
      RSTP => '0',
      UNDERFLOW => NLW_data_i_out_s_reg_UNDERFLOW_UNCONNECTED
    );
data_q_out_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => nco_q_s(13),
      A(28) => nco_q_s(13),
      A(27) => nco_q_s(13),
      A(26) => nco_q_s(13),
      A(25) => nco_q_s(13),
      A(24) => nco_q_s(13),
      A(23) => nco_q_s(13),
      A(22) => nco_q_s(13),
      A(21) => nco_q_s(13),
      A(20) => nco_q_s(13),
      A(19) => nco_q_s(13),
      A(18) => nco_q_s(13),
      A(17) => nco_q_s(13),
      A(16) => nco_q_s(13),
      A(15) => nco_q_s(13),
      A(14) => nco_q_s(13),
      A(13 downto 0) => nco_q_s(13 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_data_q_out_s_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_data_q_out_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_data_q_out_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_data_q_out_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => data_en_i,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => data_en_s,
      CEP => '0',
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_data_q_out_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_data_q_out_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 27) => NLW_data_q_out_s_reg_P_UNCONNECTED(47 downto 27),
      P(26 downto 13) => data_q_o(13 downto 0),
      P(12) => data_q_out_s_reg_n_93,
      P(11) => data_q_out_s_reg_n_94,
      P(10) => data_q_out_s_reg_n_95,
      P(9) => data_q_out_s_reg_n_96,
      P(8) => data_q_out_s_reg_n_97,
      P(7) => data_q_out_s_reg_n_98,
      P(6) => data_q_out_s_reg_n_99,
      P(5) => data_q_out_s_reg_n_100,
      P(4) => data_q_out_s_reg_n_101,
      P(3) => data_q_out_s_reg_n_102,
      P(2) => data_q_out_s_reg_n_103,
      P(1) => data_q_out_s_reg_n_104,
      P(0) => data_q_out_s_reg_n_105,
      PATTERNBDETECT => NLW_data_q_out_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_data_q_out_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_data_q_out_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => data_rst_i,
      RSTP => '0',
      UNDERFLOW => NLW_data_q_out_s_reg_UNDERFLOW_UNCONNECTED
    );
\nco_i_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_i_i(0),
      Q => nco_i_s(0),
      R => nco_rst_i
    );
\nco_i_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_i_i(10),
      Q => nco_i_s(10),
      R => nco_rst_i
    );
\nco_i_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_i_i(11),
      Q => nco_i_s(11),
      R => nco_rst_i
    );
\nco_i_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_i_i(12),
      Q => nco_i_s(12),
      R => nco_rst_i
    );
\nco_i_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_i_i(13),
      Q => nco_i_s(13),
      R => nco_rst_i
    );
\nco_i_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_i_i(1),
      Q => nco_i_s(1),
      R => nco_rst_i
    );
\nco_i_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_i_i(2),
      Q => nco_i_s(2),
      R => nco_rst_i
    );
\nco_i_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_i_i(3),
      Q => nco_i_s(3),
      R => nco_rst_i
    );
\nco_i_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_i_i(4),
      Q => nco_i_s(4),
      R => nco_rst_i
    );
\nco_i_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_i_i(5),
      Q => nco_i_s(5),
      R => nco_rst_i
    );
\nco_i_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_i_i(6),
      Q => nco_i_s(6),
      R => nco_rst_i
    );
\nco_i_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_i_i(7),
      Q => nco_i_s(7),
      R => nco_rst_i
    );
\nco_i_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_i_i(8),
      Q => nco_i_s(8),
      R => nco_rst_i
    );
\nco_i_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_i_i(9),
      Q => nco_i_s(9),
      R => nco_rst_i
    );
\nco_q_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_q_i(0),
      Q => nco_q_s(0),
      R => nco_rst_i
    );
\nco_q_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_q_i(10),
      Q => nco_q_s(10),
      R => nco_rst_i
    );
\nco_q_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_q_i(11),
      Q => nco_q_s(11),
      R => nco_rst_i
    );
\nco_q_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_q_i(12),
      Q => nco_q_s(12),
      R => nco_rst_i
    );
\nco_q_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_q_i(13),
      Q => nco_q_s(13),
      R => nco_rst_i
    );
\nco_q_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_q_i(1),
      Q => nco_q_s(1),
      R => nco_rst_i
    );
\nco_q_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_q_i(2),
      Q => nco_q_s(2),
      R => nco_rst_i
    );
\nco_q_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_q_i(3),
      Q => nco_q_s(3),
      R => nco_rst_i
    );
\nco_q_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_q_i(4),
      Q => nco_q_s(4),
      R => nco_rst_i
    );
\nco_q_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_q_i(5),
      Q => nco_q_s(5),
      R => nco_rst_i
    );
\nco_q_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_q_i(6),
      Q => nco_q_s(6),
      R => nco_rst_i
    );
\nco_q_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_q_i(7),
      Q => nco_q_s(7),
      R => nco_rst_i
    );
\nco_q_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_q_i(8),
      Q => nco_q_s(8),
      R => nco_rst_i
    );
\nco_q_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => nco_clk_i,
      CE => nco_en_i,
      D => nco_q_i(9),
      Q => nco_q_s(9),
      R => nco_rst_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    nco_i_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    nco_q_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    nco_en_i : in STD_LOGIC;
    nco_rst_i : in STD_LOGIC;
    nco_clk_i : in STD_LOGIC;
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_i_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_q_o : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "iq_demod_only_wrapper_mixer_sin_0_0,mixer_sin,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mixer_sin,Vivado 2016.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^data_clk_i\ : STD_LOGIC;
  signal \^data_rst_i\ : STD_LOGIC;
begin
  \^data_clk_i\ <= data_clk_i;
  \^data_rst_i\ <= data_rst_i;
  data_clk_o <= \^data_clk_i\;
  data_rst_o <= \^data_rst_i\;
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mixer_sin
     port map (
      data_clk_i => \^data_clk_i\,
      data_en_i => data_en_i,
      data_en_o => data_en_o,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_i_o(13 downto 0) => data_i_o(13 downto 0),
      data_q_o(13 downto 0) => data_q_o(13 downto 0),
      data_rst_i => \^data_rst_i\,
      nco_clk_i => nco_clk_i,
      nco_en_i => nco_en_i,
      nco_i_i(13 downto 0) => nco_i_i(13 downto 0),
      nco_q_i(13 downto 0) => nco_q_i(13 downto 0),
      nco_rst_i => nco_rst_i
    );
end STRUCTURE;
