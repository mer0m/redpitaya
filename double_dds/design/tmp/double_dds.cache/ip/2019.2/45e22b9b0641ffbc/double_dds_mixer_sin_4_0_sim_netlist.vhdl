-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun May 31 18:57:50 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_dds_mixer_sin_4_0_sim_netlist.vhdl
-- Design      : double_dds_mixer_sin_4_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplierReal_redim is
  port (
    data_sof_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data1_clk_i : in STD_LOGIC;
    P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_in_en_s : in STD_LOGIC;
    data1_in_en_s : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    is_null_s : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplierReal_redim;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplierReal_redim is
  signal \_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal data_en_in_s : STD_LOGIC;
  signal data_en_out_s_i_1_n_0 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \shift_data.data_en_in_s_i_1_n_0\ : STD_LOGIC;
  signal \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of data_en_out_s_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shift_data.data_en_in_s_i_1\ : label is "soft_lutpair0";
begin
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => P(2),
      DI(2) => \i__carry_i_1_n_0\,
      DI(1) => '0',
      DI(0) => P(0),
      O(3 downto 0) => p_0_in(3 downto 0),
      S(3) => \i__carry_i_2_n_0\,
      S(2 downto 1) => P(2 downto 1),
      S(0) => \i__carry_i_3_n_0\
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3) => \_inferred__0/i__carry__0_n_0\,
      CO(2) => \_inferred__0/i__carry__0_n_1\,
      CO(1) => \_inferred__0/i__carry__0_n_2\,
      CO(0) => \_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => P(6 downto 3),
      O(3 downto 0) => p_0_in(7 downto 4),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__0_n_0\,
      CO(3) => \_inferred__0/i__carry__1_n_0\,
      CO(2) => \_inferred__0/i__carry__1_n_1\,
      CO(1) => \_inferred__0/i__carry__1_n_2\,
      CO(0) => \_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => P(10 downto 7),
      O(3 downto 0) => p_0_in(11 downto 8),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__1_n_0\,
      CO(3) => \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__0/i__carry__2_n_1\,
      CO(1) => \_inferred__0/i__carry__2_n_2\,
      CO(0) => \_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => P(13 downto 11),
      O(3 downto 0) => p_0_in(15 downto 12),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
data_en_out_s_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_en_in_s,
      I1 => data1_rst_i,
      O => data_en_out_s_i_1_n_0
    );
data_en_out_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => data_en_out_s_i_1_n_0,
      Q => data_sof_o,
      R => '0'
    );
\data_out_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(0),
      Q => data_o(0),
      R => data1_rst_i
    );
\data_out_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(10),
      Q => data_o(10),
      R => data1_rst_i
    );
\data_out_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(11),
      Q => data_o(11),
      R => data1_rst_i
    );
\data_out_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(12),
      Q => data_o(12),
      R => data1_rst_i
    );
\data_out_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(13),
      Q => data_o(13),
      R => data1_rst_i
    );
\data_out_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(14),
      Q => data_o(14),
      R => data1_rst_i
    );
\data_out_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(15),
      Q => data_o(15),
      R => data1_rst_i
    );
\data_out_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(1),
      Q => data_o(1),
      R => data1_rst_i
    );
\data_out_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(2),
      Q => data_o(2),
      R => data1_rst_i
    );
\data_out_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(3),
      Q => data_o(3),
      R => data1_rst_i
    );
\data_out_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(4),
      Q => data_o(4),
      R => data1_rst_i
    );
\data_out_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(5),
      Q => data_o(5),
      R => data1_rst_i
    );
\data_out_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(6),
      Q => data_o(6),
      R => data1_rst_i
    );
\data_out_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(7),
      Q => data_o(7),
      R => data1_rst_i
    );
\data_out_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(8),
      Q => data_o(8),
      R => data1_rst_i
    );
\data_out_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_in_s,
      D => p_0_in(9),
      Q => data_o(9),
      R => data1_rst_i
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => P(6),
      I1 => P(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => P(5),
      I1 => P(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => P(4),
      I1 => P(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => P(3),
      I1 => P(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => P(10),
      I1 => P(11),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => P(9),
      I1 => P(10),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => P(8),
      I1 => P(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => P(7),
      I1 => P(8),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => P(14),
      I1 => P(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => P(13),
      I1 => P(14),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => P(12),
      I1 => P(13),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => P(11),
      I1 => P(12),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => P(2),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => P(2),
      I1 => P(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => is_null_s,
      I1 => P(15),
      I2 => P(0),
      O => \i__carry_i_3_n_0\
    );
\shift_data.data_en_in_s_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data2_in_en_s,
      I1 => data1_in_en_s,
      I2 => data1_rst_i,
      O => \shift_data.data_en_in_s_i_1_n_0\
    );
\shift_data.data_en_in_s_reg\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => \shift_data.data_en_in_s_i_1_n_0\,
      Q => data_en_in_s,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplierReal is
  port (
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_sof_o : out STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_clk_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data1_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_en_i : in STD_LOGIC;
    data1_en_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplierReal;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplierReal is
  signal data1_in_en_s : STD_LOGIC;
  signal data1_in_en_s_i_1_n_0 : STD_LOGIC;
  signal data2_in_en_s : STD_LOGIC;
  signal data2_in_s : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_in_s : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_s_n_100 : STD_LOGIC;
  signal data_s_n_101 : STD_LOGIC;
  signal data_s_n_102 : STD_LOGIC;
  signal data_s_n_103 : STD_LOGIC;
  signal data_s_n_104 : STD_LOGIC;
  signal data_s_n_105 : STD_LOGIC;
  signal data_s_n_90 : STD_LOGIC;
  signal data_s_n_91 : STD_LOGIC;
  signal data_s_n_92 : STD_LOGIC;
  signal data_s_n_93 : STD_LOGIC;
  signal data_s_n_94 : STD_LOGIC;
  signal data_s_n_95 : STD_LOGIC;
  signal data_s_n_96 : STD_LOGIC;
  signal data_s_n_97 : STD_LOGIC;
  signal data_s_n_98 : STD_LOGIC;
  signal data_s_n_99 : STD_LOGIC;
  signal is_null_s : STD_LOGIC;
  signal NLW_data_s_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_s_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_s_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_data_s_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_s_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_data_s_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_data_s_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_data_s_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_s_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_data_s_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
data1_in_en_s_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data1_en_i,
      I1 => data1_rst_i,
      O => data1_in_en_s_i_1_n_0
    );
data1_in_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => data1_in_en_s_i_1_n_0,
      Q => data1_in_en_s,
      R => '0'
    );
data2_in_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_en_i,
      Q => data2_in_en_s,
      R => data2_rst_i
    );
\data2_in_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(0),
      Q => data2_in_s(0),
      R => data2_rst_i
    );
\data2_in_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(10),
      Q => data2_in_s(10),
      R => data2_rst_i
    );
\data2_in_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(11),
      Q => data2_in_s(11),
      R => data2_rst_i
    );
\data2_in_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(12),
      Q => data2_in_s(12),
      R => data2_rst_i
    );
\data2_in_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(13),
      Q => data2_in_s(13),
      R => data2_rst_i
    );
\data2_in_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(14),
      Q => data2_in_s(14),
      R => data2_rst_i
    );
\data2_in_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(15),
      Q => data2_in_s(15),
      R => data2_rst_i
    );
\data2_in_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(1),
      Q => data2_in_s(1),
      R => data2_rst_i
    );
\data2_in_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(2),
      Q => data2_in_s(2),
      R => data2_rst_i
    );
\data2_in_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(3),
      Q => data2_in_s(3),
      R => data2_rst_i
    );
\data2_in_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(4),
      Q => data2_in_s(4),
      R => data2_rst_i
    );
\data2_in_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(5),
      Q => data2_in_s(5),
      R => data2_rst_i
    );
\data2_in_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(6),
      Q => data2_in_s(6),
      R => data2_rst_i
    );
\data2_in_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(7),
      Q => data2_in_s(7),
      R => data2_rst_i
    );
\data2_in_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(8),
      Q => data2_in_s(8),
      R => data2_rst_i
    );
\data2_in_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_i(9),
      Q => data2_in_s(9),
      R => data2_rst_i
    );
data_s: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"FFFFFFFF0000",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"FFFFFFFF0000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data1_i(15),
      A(28) => data1_i(15),
      A(27) => data1_i(15),
      A(26) => data1_i(15),
      A(25) => data1_i(15),
      A(24) => data1_i(15),
      A(23) => data1_i(15),
      A(22) => data1_i(15),
      A(21) => data1_i(15),
      A(20) => data1_i(15),
      A(19) => data1_i(15),
      A(18) => data1_i(15),
      A(17) => data1_i(15),
      A(16) => data1_i(15),
      A(15 downto 0) => data1_i(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_data_s_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data2_in_s(15),
      B(16) => data2_in_s(15),
      B(15 downto 0) => data2_in_s(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_data_s_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_data_s_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_data_s_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => data1_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_data_s_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_data_s_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_data_s_P_UNCONNECTED(47 downto 32),
      P(31 downto 16) => data_in_s(15 downto 0),
      P(15) => data_s_n_90,
      P(14) => data_s_n_91,
      P(13) => data_s_n_92,
      P(12) => data_s_n_93,
      P(11) => data_s_n_94,
      P(10) => data_s_n_95,
      P(9) => data_s_n_96,
      P(8) => data_s_n_97,
      P(7) => data_s_n_98,
      P(6) => data_s_n_99,
      P(5) => data_s_n_100,
      P(4) => data_s_n_101,
      P(3) => data_s_n_102,
      P(2) => data_s_n_103,
      P(1) => data_s_n_104,
      P(0) => data_s_n_105,
      PATTERNBDETECT => NLW_data_s_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => is_null_s,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_data_s_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data1_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data1_rst_i,
      UNDERFLOW => NLW_data_s_UNDERFLOW_UNCONNECTED
    );
redim_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplierReal_redim
     port map (
      P(15 downto 0) => data_in_s(15 downto 0),
      data1_clk_i => data1_clk_i,
      data1_in_en_s => data1_in_en_s,
      data1_rst_i => data1_rst_i,
      data2_in_en_s => data2_in_en_s,
      data_o(15 downto 0) => data_o(15 downto 0),
      data_sof_o => data_sof_o,
      is_null_s => is_null_s
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data1_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_eof_i : in STD_LOGIC;
    data1_sof_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_en_i : in STD_LOGIC;
    data2_eof_i : in STD_LOGIC;
    data2_sof_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_en_o : out STD_LOGIC;
    data_eof_o : out STD_LOGIC;
    data_sof_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "double_dds_mixer_sin_4_0,multiplierReal,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "multiplierReal,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^data1_clk_i\ : STD_LOGIC;
  signal \^data1_rst_i\ : STD_LOGIC;
  signal \^data_sof_o\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of data1_clk_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA_CLK";
  attribute x_interface_info of data1_en_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA_EN";
  attribute x_interface_info of data1_eof_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA_EOF";
  attribute x_interface_info of data1_rst_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA_RST";
  attribute x_interface_info of data1_sof_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA_SOF";
  attribute x_interface_info of data2_clk_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA_CLK";
  attribute x_interface_info of data2_en_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA_EN";
  attribute x_interface_info of data2_eof_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA_EOF";
  attribute x_interface_info of data2_rst_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA_RST";
  attribute x_interface_info of data2_sof_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA_SOF";
  attribute x_interface_info of data_clk_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_CLK";
  attribute x_interface_info of data_en_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_EN";
  attribute x_interface_info of data_eof_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_EOF";
  attribute x_interface_info of data_rst_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_RST";
  attribute x_interface_info of data_sof_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_SOF";
  attribute x_interface_info of data1_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA";
  attribute x_interface_info of data2_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA";
  attribute x_interface_info of data_o : signal is "xilinx.com:interface:real:1.0 data_out DATA";
begin
  \^data1_clk_i\ <= data1_clk_i;
  \^data1_rst_i\ <= data1_rst_i;
  data_clk_o <= \^data1_clk_i\;
  data_en_o <= \^data_sof_o\;
  data_eof_o <= \^data_sof_o\;
  data_rst_o <= \^data1_rst_i\;
  data_sof_o <= \^data_sof_o\;
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplierReal
     port map (
      data1_clk_i => \^data1_clk_i\,
      data1_en_i => data1_en_i,
      data1_i(15 downto 0) => data1_i(15 downto 0),
      data1_rst_i => \^data1_rst_i\,
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(15 downto 0) => data2_i(15 downto 0),
      data2_rst_i => data2_rst_i,
      data_o(15 downto 0) => data_o(15 downto 0),
      data_sof_o => \^data_sof_o\
    );
end STRUCTURE;
