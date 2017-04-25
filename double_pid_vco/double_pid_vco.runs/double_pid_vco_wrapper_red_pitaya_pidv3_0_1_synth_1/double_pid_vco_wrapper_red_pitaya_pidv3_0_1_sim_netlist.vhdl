-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Fri Apr 21 11:21:44 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_pid_vco_wrapper_red_pitaya_pidv3_0_1_sim_netlist.vhdl
-- Design      : double_pid_vco_wrapper_red_pitaya_pidv3_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_red_pitaya_pidv3_logic is
  port (
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_o : out STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    ki_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    int_rst_i : in STD_LOGIC;
    kp_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    sign_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_red_pitaya_pidv3_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_red_pitaya_pidv3_logic is
  signal A : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal I_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \I_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \I_s[10]_i_1_n_0\ : STD_LOGIC;
  signal \I_s[11]_i_1_n_0\ : STD_LOGIC;
  signal \I_s[12]_i_1_n_0\ : STD_LOGIC;
  signal \I_s[12]_i_2_n_0\ : STD_LOGIC;
  signal \I_s[12]_i_3_n_0\ : STD_LOGIC;
  signal \I_s[13]_i_1_n_0\ : STD_LOGIC;
  signal \I_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \I_s[2]_i_1_n_0\ : STD_LOGIC;
  signal \I_s[3]_i_1_n_0\ : STD_LOGIC;
  signal \I_s[4]_i_1_n_0\ : STD_LOGIC;
  signal \I_s[5]_i_1_n_0\ : STD_LOGIC;
  signal \I_s[6]_i_1_n_0\ : STD_LOGIC;
  signal \I_s[7]_i_1_n_0\ : STD_LOGIC;
  signal \I_s[8]_i_1_n_0\ : STD_LOGIC;
  signal \I_s[9]_i_1_n_0\ : STD_LOGIC;
  signal I_sum_s_i_10_n_0 : STD_LOGIC;
  signal I_sum_s_i_15_n_0 : STD_LOGIC;
  signal I_sum_s_i_16_n_0 : STD_LOGIC;
  signal I_sum_s_i_17_n_0 : STD_LOGIC;
  signal I_sum_s_i_18_n_0 : STD_LOGIC;
  signal I_sum_s_i_1_n_0 : STD_LOGIC;
  signal I_sum_s_i_23_n_0 : STD_LOGIC;
  signal I_sum_s_i_24_n_0 : STD_LOGIC;
  signal I_sum_s_i_25_n_0 : STD_LOGIC;
  signal I_sum_s_i_26_n_0 : STD_LOGIC;
  signal I_sum_s_i_2_n_2 : STD_LOGIC;
  signal I_sum_s_i_2_n_3 : STD_LOGIC;
  signal I_sum_s_i_31_n_0 : STD_LOGIC;
  signal I_sum_s_i_32_n_0 : STD_LOGIC;
  signal I_sum_s_i_33_n_0 : STD_LOGIC;
  signal I_sum_s_i_34_n_0 : STD_LOGIC;
  signal I_sum_s_i_3_n_0 : STD_LOGIC;
  signal I_sum_s_i_3_n_1 : STD_LOGIC;
  signal I_sum_s_i_3_n_2 : STD_LOGIC;
  signal I_sum_s_i_3_n_3 : STD_LOGIC;
  signal I_sum_s_i_4_n_0 : STD_LOGIC;
  signal I_sum_s_i_4_n_1 : STD_LOGIC;
  signal I_sum_s_i_4_n_2 : STD_LOGIC;
  signal I_sum_s_i_4_n_3 : STD_LOGIC;
  signal I_sum_s_i_5_n_0 : STD_LOGIC;
  signal I_sum_s_i_5_n_1 : STD_LOGIC;
  signal I_sum_s_i_5_n_2 : STD_LOGIC;
  signal I_sum_s_i_5_n_3 : STD_LOGIC;
  signal I_sum_s_i_8_n_0 : STD_LOGIC;
  signal I_sum_s_i_9_n_0 : STD_LOGIC;
  signal I_sum_s_n_100 : STD_LOGIC;
  signal I_sum_s_n_101 : STD_LOGIC;
  signal I_sum_s_n_102 : STD_LOGIC;
  signal I_sum_s_n_103 : STD_LOGIC;
  signal I_sum_s_n_104 : STD_LOGIC;
  signal I_sum_s_n_105 : STD_LOGIC;
  signal I_sum_s_n_3 : STD_LOGIC;
  signal I_sum_s_n_4 : STD_LOGIC;
  signal I_sum_s_n_79 : STD_LOGIC;
  signal I_sum_s_n_80 : STD_LOGIC;
  signal I_sum_s_n_81 : STD_LOGIC;
  signal I_sum_s_n_82 : STD_LOGIC;
  signal I_sum_s_n_83 : STD_LOGIC;
  signal I_sum_s_n_84 : STD_LOGIC;
  signal I_sum_s_n_85 : STD_LOGIC;
  signal I_sum_s_n_86 : STD_LOGIC;
  signal I_sum_s_n_87 : STD_LOGIC;
  signal I_sum_s_n_88 : STD_LOGIC;
  signal I_sum_s_n_89 : STD_LOGIC;
  signal I_sum_s_n_90 : STD_LOGIC;
  signal I_sum_s_n_91 : STD_LOGIC;
  signal I_sum_s_n_92 : STD_LOGIC;
  signal I_sum_s_n_93 : STD_LOGIC;
  signal I_sum_s_n_94 : STD_LOGIC;
  signal I_sum_s_n_95 : STD_LOGIC;
  signal I_sum_s_n_96 : STD_LOGIC;
  signal I_sum_s_n_97 : STD_LOGIC;
  signal I_sum_s_n_98 : STD_LOGIC;
  signal I_sum_s_n_99 : STD_LOGIC;
  signal I_temp_s : STD_LOGIC;
  signal P_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal P_temp_s_n_100 : STD_LOGIC;
  signal P_temp_s_n_101 : STD_LOGIC;
  signal P_temp_s_n_102 : STD_LOGIC;
  signal P_temp_s_n_103 : STD_LOGIC;
  signal P_temp_s_n_104 : STD_LOGIC;
  signal P_temp_s_n_105 : STD_LOGIC;
  signal P_temp_s_n_91 : STD_LOGIC;
  signal P_temp_s_n_92 : STD_LOGIC;
  signal P_temp_s_n_93 : STD_LOGIC;
  signal P_temp_s_n_94 : STD_LOGIC;
  signal P_temp_s_n_95 : STD_LOGIC;
  signal P_temp_s_n_96 : STD_LOGIC;
  signal P_temp_s_n_97 : STD_LOGIC;
  signal P_temp_s_n_98 : STD_LOGIC;
  signal P_temp_s_n_99 : STD_LOGIC;
  signal data2_en_s : STD_LOGIC;
  signal data2_en_s_i_1_n_0 : STD_LOGIC;
  signal data_en_o_i_1_n_0 : STD_LOGIC;
  signal data_en_s : STD_LOGIC;
  signal data_en_s_i_1_n_0 : STD_LOGIC;
  signal \^data_o\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \pid_out_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[10]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[11]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[12]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[12]_i_2_n_0\ : STD_LOGIC;
  signal \pid_out_s[13]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[2]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[3]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[4]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[5]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[6]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[7]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[8]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[9]_i_1_n_0\ : STD_LOGIC;
  signal pid_sum_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \pid_sum_s_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_n_1\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_n_2\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_n_3\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_n_1\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_n_2\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_n_3\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_n_3\ : STD_LOGIC;
  signal pid_sum_s_carry_i_1_n_0 : STD_LOGIC;
  signal pid_sum_s_carry_i_2_n_0 : STD_LOGIC;
  signal pid_sum_s_carry_i_3_n_0 : STD_LOGIC;
  signal pid_sum_s_carry_i_4_n_0 : STD_LOGIC;
  signal pid_sum_s_carry_n_0 : STD_LOGIC;
  signal pid_sum_s_carry_n_1 : STD_LOGIC;
  signal pid_sum_s_carry_n_2 : STD_LOGIC;
  signal pid_sum_s_carry_n_3 : STD_LOGIC;
  signal NLW_I_sum_s_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_I_sum_s_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_I_sum_s_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_I_sum_s_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_I_sum_s_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_I_sum_s_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_I_sum_s_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_I_sum_s_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 29 );
  signal NLW_I_sum_s_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_I_sum_s_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_I_sum_s_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_P_temp_s_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_P_temp_s_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_P_temp_s_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_P_temp_s_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_P_temp_s_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_P_temp_s_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_P_temp_s_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_P_temp_s_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_P_temp_s_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_P_temp_s_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 29 );
  signal NLW_P_temp_s_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_pid_sum_s_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pid_sum_s_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \I_s[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \I_s[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \I_s[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \I_s[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \I_s[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \I_s[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \I_s[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \I_s[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \I_s[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \I_s[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \I_s[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \I_s[9]_i_1\ : label is "soft_lutpair5";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of I_sum_s : label is "{SYNTH-11 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of I_sum_s_i_2 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of I_sum_s_i_3 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of I_sum_s_i_4 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of I_sum_s_i_5 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of data2_en_s_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of data_en_o_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of data_en_s_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \pid_out_s[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pid_out_s[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \pid_out_s[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \pid_out_s[13]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pid_out_s[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pid_out_s[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pid_out_s[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pid_out_s[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pid_out_s[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pid_out_s[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \pid_out_s[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \pid_out_s[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \pid_out_s[9]_i_1\ : label is "soft_lutpair11";
begin
  data_o(13 downto 0) <= \^data_o\(13 downto 0);
\/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_en_s,
      I1 => I_sum_s_n_4,
      I2 => I_sum_s_n_3,
      O => I_temp_s
    );
\I_s[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => I_sum_s_n_3,
      I1 => I_sum_s_n_90,
      I2 => I_sum_s_n_4,
      O => \I_s[0]_i_1_n_0\
    );
\I_s[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => I_sum_s_n_3,
      I1 => I_sum_s_n_80,
      I2 => I_sum_s_n_4,
      O => \I_s[10]_i_1_n_0\
    );
\I_s[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => I_sum_s_n_3,
      I1 => I_sum_s_n_79,
      I2 => I_sum_s_n_4,
      O => \I_s[11]_i_1_n_0\
    );
\I_s[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_rst_i,
      I1 => int_rst_i,
      O => \I_s[12]_i_1_n_0\
    );
\I_s[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => int_rst_i,
      I1 => data_rst_i,
      I2 => data_en_s,
      O => \I_s[12]_i_2_n_0\
    );
\I_s[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => I_sum_s_n_3,
      I1 => p_0_in(0),
      I2 => I_sum_s_n_4,
      O => \I_s[12]_i_3_n_0\
    );
\I_s[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E00FF000E0000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => I_sum_s_n_4,
      I2 => I_sum_s_n_3,
      I3 => I_sum_s_i_1_n_0,
      I4 => data_en_s,
      I5 => I_s(13),
      O => \I_s[13]_i_1_n_0\
    );
\I_s[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => I_sum_s_n_3,
      I1 => I_sum_s_n_89,
      I2 => I_sum_s_n_4,
      O => \I_s[1]_i_1_n_0\
    );
\I_s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => I_sum_s_n_3,
      I1 => I_sum_s_n_88,
      I2 => I_sum_s_n_4,
      O => \I_s[2]_i_1_n_0\
    );
\I_s[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => I_sum_s_n_3,
      I1 => I_sum_s_n_87,
      I2 => I_sum_s_n_4,
      O => \I_s[3]_i_1_n_0\
    );
\I_s[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => I_sum_s_n_3,
      I1 => I_sum_s_n_86,
      I2 => I_sum_s_n_4,
      O => \I_s[4]_i_1_n_0\
    );
\I_s[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => I_sum_s_n_3,
      I1 => I_sum_s_n_85,
      I2 => I_sum_s_n_4,
      O => \I_s[5]_i_1_n_0\
    );
\I_s[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => I_sum_s_n_3,
      I1 => I_sum_s_n_84,
      I2 => I_sum_s_n_4,
      O => \I_s[6]_i_1_n_0\
    );
\I_s[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => I_sum_s_n_3,
      I1 => I_sum_s_n_83,
      I2 => I_sum_s_n_4,
      O => \I_s[7]_i_1_n_0\
    );
\I_s[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => I_sum_s_n_3,
      I1 => I_sum_s_n_82,
      I2 => I_sum_s_n_4,
      O => \I_s[8]_i_1_n_0\
    );
\I_s[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => I_sum_s_n_3,
      I1 => I_sum_s_n_81,
      I2 => I_sum_s_n_4,
      O => \I_s[9]_i_1_n_0\
    );
\I_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \I_s[12]_i_2_n_0\,
      D => \I_s[0]_i_1_n_0\,
      Q => I_s(0),
      R => \I_s[12]_i_1_n_0\
    );
\I_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \I_s[12]_i_2_n_0\,
      D => \I_s[10]_i_1_n_0\,
      Q => I_s(10),
      R => \I_s[12]_i_1_n_0\
    );
\I_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \I_s[12]_i_2_n_0\,
      D => \I_s[11]_i_1_n_0\,
      Q => I_s(11),
      R => \I_s[12]_i_1_n_0\
    );
\I_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \I_s[12]_i_2_n_0\,
      D => \I_s[12]_i_3_n_0\,
      Q => I_s(12),
      R => \I_s[12]_i_1_n_0\
    );
\I_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \I_s[13]_i_1_n_0\,
      Q => I_s(13),
      R => '0'
    );
\I_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \I_s[12]_i_2_n_0\,
      D => \I_s[1]_i_1_n_0\,
      Q => I_s(1),
      R => \I_s[12]_i_1_n_0\
    );
\I_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \I_s[12]_i_2_n_0\,
      D => \I_s[2]_i_1_n_0\,
      Q => I_s(2),
      R => \I_s[12]_i_1_n_0\
    );
\I_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \I_s[12]_i_2_n_0\,
      D => \I_s[3]_i_1_n_0\,
      Q => I_s(3),
      R => \I_s[12]_i_1_n_0\
    );
\I_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \I_s[12]_i_2_n_0\,
      D => \I_s[4]_i_1_n_0\,
      Q => I_s(4),
      R => \I_s[12]_i_1_n_0\
    );
\I_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \I_s[12]_i_2_n_0\,
      D => \I_s[5]_i_1_n_0\,
      Q => I_s(5),
      R => \I_s[12]_i_1_n_0\
    );
\I_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \I_s[12]_i_2_n_0\,
      D => \I_s[6]_i_1_n_0\,
      Q => I_s(6),
      R => \I_s[12]_i_1_n_0\
    );
\I_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \I_s[12]_i_2_n_0\,
      D => \I_s[7]_i_1_n_0\,
      Q => I_s(7),
      R => \I_s[12]_i_1_n_0\
    );
\I_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \I_s[12]_i_2_n_0\,
      D => \I_s[8]_i_1_n_0\,
      Q => I_s(8),
      R => \I_s[12]_i_1_n_0\
    );
\I_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \I_s[12]_i_2_n_0\,
      D => \I_s[9]_i_1_n_0\,
      Q => I_s(9),
      R => \I_s[12]_i_1_n_0\
    );
I_sum_s: unisim.vcomponents.DSP48E1
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
      MASK => X"FFFFE7FFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"FFFFF7FFFFFF",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => A(14),
      A(28) => A(14),
      A(27) => A(14),
      A(26) => A(14),
      A(25) => A(14),
      A(24) => A(14),
      A(23) => A(14),
      A(22) => A(14),
      A(21) => A(14),
      A(20) => A(14),
      A(19) => A(14),
      A(18) => A(14),
      A(17) => A(14),
      A(16) => A(14),
      A(15) => A(14),
      A(14 downto 0) => A(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_I_sum_s_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => ki_i(13),
      B(16) => ki_i(13),
      B(15) => ki_i(13),
      B(14) => ki_i(13),
      B(13 downto 0) => ki_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_I_sum_s_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => p_0_in(1),
      C(46) => p_0_in(1),
      C(45) => p_0_in(1),
      C(44) => p_0_in(1),
      C(43) => p_0_in(1),
      C(42) => p_0_in(1),
      C(41) => p_0_in(1),
      C(40) => p_0_in(1),
      C(39) => p_0_in(1),
      C(38) => p_0_in(1),
      C(37) => p_0_in(1),
      C(36) => p_0_in(1),
      C(35) => p_0_in(1),
      C(34) => p_0_in(1),
      C(33) => p_0_in(1),
      C(32) => p_0_in(1),
      C(31) => p_0_in(1),
      C(30) => p_0_in(1),
      C(29) => p_0_in(1),
      C(28 downto 27) => p_0_in(1 downto 0),
      C(26) => I_sum_s_n_79,
      C(25) => I_sum_s_n_80,
      C(24) => I_sum_s_n_81,
      C(23) => I_sum_s_n_82,
      C(22) => I_sum_s_n_83,
      C(21) => I_sum_s_n_84,
      C(20) => I_sum_s_n_85,
      C(19) => I_sum_s_n_86,
      C(18) => I_sum_s_n_87,
      C(17) => I_sum_s_n_88,
      C(16) => I_sum_s_n_89,
      C(15) => I_sum_s_n_90,
      C(14) => I_sum_s_n_91,
      C(13) => I_sum_s_n_92,
      C(12) => I_sum_s_n_93,
      C(11) => I_sum_s_n_94,
      C(10) => I_sum_s_n_95,
      C(9) => I_sum_s_n_96,
      C(8) => I_sum_s_n_97,
      C(7) => I_sum_s_n_98,
      C(6) => I_sum_s_n_99,
      C(5) => I_sum_s_n_100,
      C(4) => I_sum_s_n_101,
      C(3) => I_sum_s_n_102,
      C(2) => I_sum_s_n_103,
      C(1) => I_sum_s_n_104,
      C(0) => I_sum_s_n_105,
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_I_sum_s_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_I_sum_s_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_en_i,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => I_temp_s,
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_I_sum_s_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_I_sum_s_OVERFLOW_UNCONNECTED,
      P(47 downto 29) => NLW_I_sum_s_P_UNCONNECTED(47 downto 29),
      P(28 downto 27) => p_0_in(1 downto 0),
      P(26) => I_sum_s_n_79,
      P(25) => I_sum_s_n_80,
      P(24) => I_sum_s_n_81,
      P(23) => I_sum_s_n_82,
      P(22) => I_sum_s_n_83,
      P(21) => I_sum_s_n_84,
      P(20) => I_sum_s_n_85,
      P(19) => I_sum_s_n_86,
      P(18) => I_sum_s_n_87,
      P(17) => I_sum_s_n_88,
      P(16) => I_sum_s_n_89,
      P(15) => I_sum_s_n_90,
      P(14) => I_sum_s_n_91,
      P(13) => I_sum_s_n_92,
      P(12) => I_sum_s_n_93,
      P(11) => I_sum_s_n_94,
      P(10) => I_sum_s_n_95,
      P(9) => I_sum_s_n_96,
      P(8) => I_sum_s_n_97,
      P(7) => I_sum_s_n_98,
      P(6) => I_sum_s_n_99,
      P(5) => I_sum_s_n_100,
      P(4) => I_sum_s_n_101,
      P(3) => I_sum_s_n_102,
      P(2) => I_sum_s_n_103,
      P(1) => I_sum_s_n_104,
      P(0) => I_sum_s_n_105,
      PATTERNBDETECT => I_sum_s_n_3,
      PATTERNDETECT => I_sum_s_n_4,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_I_sum_s_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => I_sum_s_i_1_n_0,
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_I_sum_s_UNDERFLOW_UNCONNECTED
    );
I_sum_s_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_rst_i,
      I1 => int_rst_i,
      O => I_sum_s_i_1_n_0
    );
I_sum_s_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(12),
      O => I_sum_s_i_10_n_0
    );
I_sum_s_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_i(11),
      I1 => sign_i,
      O => p_1_in(11)
    );
I_sum_s_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_i(10),
      I1 => sign_i,
      O => p_1_in(10)
    );
I_sum_s_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_i(9),
      I1 => sign_i,
      O => p_1_in(9)
    );
I_sum_s_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_i(8),
      I1 => sign_i,
      O => p_1_in(8)
    );
I_sum_s_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(11),
      O => I_sum_s_i_15_n_0
    );
I_sum_s_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(10),
      O => I_sum_s_i_16_n_0
    );
I_sum_s_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(9),
      O => I_sum_s_i_17_n_0
    );
I_sum_s_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(8),
      O => I_sum_s_i_18_n_0
    );
I_sum_s_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_i(7),
      I1 => sign_i,
      O => p_1_in(7)
    );
I_sum_s_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => I_sum_s_i_3_n_0,
      CO(3 downto 2) => NLW_I_sum_s_i_2_CO_UNCONNECTED(3 downto 2),
      CO(1) => I_sum_s_i_2_n_2,
      CO(0) => I_sum_s_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => p_1_in(14),
      DI(0) => p_1_in(12),
      O(3) => NLW_I_sum_s_i_2_O_UNCONNECTED(3),
      O(2 downto 0) => A(14 downto 12),
      S(3) => '0',
      S(2) => I_sum_s_i_8_n_0,
      S(1) => I_sum_s_i_9_n_0,
      S(0) => I_sum_s_i_10_n_0
    );
I_sum_s_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_i(6),
      I1 => sign_i,
      O => p_1_in(6)
    );
I_sum_s_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_i(5),
      I1 => sign_i,
      O => p_1_in(5)
    );
I_sum_s_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_i(4),
      I1 => sign_i,
      O => p_1_in(4)
    );
I_sum_s_i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(7),
      O => I_sum_s_i_23_n_0
    );
I_sum_s_i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(6),
      O => I_sum_s_i_24_n_0
    );
I_sum_s_i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(5),
      O => I_sum_s_i_25_n_0
    );
I_sum_s_i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(4),
      O => I_sum_s_i_26_n_0
    );
I_sum_s_i_27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_i(3),
      I1 => sign_i,
      O => p_1_in(3)
    );
I_sum_s_i_28: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_i(2),
      I1 => sign_i,
      O => p_1_in(2)
    );
I_sum_s_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_i(1),
      I1 => sign_i,
      O => p_1_in(1)
    );
I_sum_s_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => I_sum_s_i_4_n_0,
      CO(3) => I_sum_s_i_3_n_0,
      CO(2) => I_sum_s_i_3_n_1,
      CO(1) => I_sum_s_i_3_n_2,
      CO(0) => I_sum_s_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 0) => p_1_in(11 downto 8),
      O(3 downto 0) => A(11 downto 8),
      S(3) => I_sum_s_i_15_n_0,
      S(2) => I_sum_s_i_16_n_0,
      S(1) => I_sum_s_i_17_n_0,
      S(0) => I_sum_s_i_18_n_0
    );
I_sum_s_i_30: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_i(0),
      I1 => sign_i,
      O => p_1_in(0)
    );
I_sum_s_i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(3),
      O => I_sum_s_i_31_n_0
    );
I_sum_s_i_32: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(2),
      O => I_sum_s_i_32_n_0
    );
I_sum_s_i_33: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(1),
      O => I_sum_s_i_33_n_0
    );
I_sum_s_i_34: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(0),
      O => I_sum_s_i_34_n_0
    );
I_sum_s_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => I_sum_s_i_5_n_0,
      CO(3) => I_sum_s_i_4_n_0,
      CO(2) => I_sum_s_i_4_n_1,
      CO(1) => I_sum_s_i_4_n_2,
      CO(0) => I_sum_s_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 0) => p_1_in(7 downto 4),
      O(3 downto 0) => A(7 downto 4),
      S(3) => I_sum_s_i_23_n_0,
      S(2) => I_sum_s_i_24_n_0,
      S(1) => I_sum_s_i_25_n_0,
      S(0) => I_sum_s_i_26_n_0
    );
I_sum_s_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => I_sum_s_i_5_n_0,
      CO(2) => I_sum_s_i_5_n_1,
      CO(1) => I_sum_s_i_5_n_2,
      CO(0) => I_sum_s_i_5_n_3,
      CYINIT => '1',
      DI(3 downto 0) => p_1_in(3 downto 0),
      O(3 downto 0) => A(3 downto 0),
      S(3) => I_sum_s_i_31_n_0,
      S(2) => I_sum_s_i_32_n_0,
      S(1) => I_sum_s_i_33_n_0,
      S(0) => I_sum_s_i_34_n_0
    );
I_sum_s_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_i(13),
      I1 => sign_i,
      O => p_1_in(14)
    );
I_sum_s_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_i(12),
      I1 => sign_i,
      O => p_1_in(12)
    );
I_sum_s_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(13),
      O => I_sum_s_i_8_n_0
    );
I_sum_s_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(13),
      O => I_sum_s_i_9_n_0
    );
P_temp_s: unisim.vcomponents.DSP48E1
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
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => A(14),
      A(28) => A(14),
      A(27) => A(14),
      A(26) => A(14),
      A(25) => A(14),
      A(24) => A(14),
      A(23) => A(14),
      A(22) => A(14),
      A(21) => A(14),
      A(20) => A(14),
      A(19) => A(14),
      A(18) => A(14),
      A(17) => A(14),
      A(16) => A(14),
      A(15) => A(14),
      A(14 downto 0) => A(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_P_temp_s_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => kp_i(13),
      B(16) => kp_i(13),
      B(15) => kp_i(13),
      B(14) => kp_i(13),
      B(13 downto 0) => kp_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_P_temp_s_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_P_temp_s_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_P_temp_s_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_en_i,
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
      CEP => data_en_s,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_P_temp_s_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_P_temp_s_OVERFLOW_UNCONNECTED,
      P(47 downto 29) => NLW_P_temp_s_P_UNCONNECTED(47 downto 29),
      P(28 downto 15) => P_s(13 downto 0),
      P(14) => P_temp_s_n_91,
      P(13) => P_temp_s_n_92,
      P(12) => P_temp_s_n_93,
      P(11) => P_temp_s_n_94,
      P(10) => P_temp_s_n_95,
      P(9) => P_temp_s_n_96,
      P(8) => P_temp_s_n_97,
      P(7) => P_temp_s_n_98,
      P(6) => P_temp_s_n_99,
      P(5) => P_temp_s_n_100,
      P(4) => P_temp_s_n_101,
      P(3) => P_temp_s_n_102,
      P(2) => P_temp_s_n_103,
      P(1) => P_temp_s_n_104,
      P(0) => P_temp_s_n_105,
      PATTERNBDETECT => NLW_P_temp_s_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_P_temp_s_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_P_temp_s_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_P_temp_s_UNDERFLOW_UNCONNECTED
    );
data2_en_s_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_en_s,
      I1 => data_rst_i,
      O => data2_en_s_i_1_n_0
    );
data2_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data2_en_s_i_1_n_0,
      Q => data2_en_s,
      R => '0'
    );
data_en_o_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2_en_s,
      I1 => data_rst_i,
      O => data_en_o_i_1_n_0
    );
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_en_o_i_1_n_0,
      Q => data_en_o,
      R => '0'
    );
data_en_s_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_en_i,
      I1 => data_rst_i,
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
\pid_out_s[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => pid_sum_s(0),
      I1 => pid_sum_s(13),
      I2 => pid_sum_s(12),
      O => \pid_out_s[0]_i_1_n_0\
    );
\pid_out_s[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => pid_sum_s(10),
      I1 => pid_sum_s(13),
      I2 => pid_sum_s(12),
      O => \pid_out_s[10]_i_1_n_0\
    );
\pid_out_s[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => pid_sum_s(11),
      I1 => pid_sum_s(13),
      I2 => pid_sum_s(12),
      O => \pid_out_s[11]_i_1_n_0\
    );
\pid_out_s[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_rst_i,
      I1 => data2_en_s,
      O => \pid_out_s[12]_i_1_n_0\
    );
\pid_out_s[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pid_sum_s(12),
      O => \pid_out_s[12]_i_2_n_0\
    );
\pid_out_s[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => pid_sum_s(13),
      I1 => data_rst_i,
      I2 => data2_en_s,
      I3 => \^data_o\(13),
      O => \pid_out_s[13]_i_1_n_0\
    );
\pid_out_s[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => pid_sum_s(1),
      I1 => pid_sum_s(13),
      I2 => pid_sum_s(12),
      O => \pid_out_s[1]_i_1_n_0\
    );
\pid_out_s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => pid_sum_s(2),
      I1 => pid_sum_s(13),
      I2 => pid_sum_s(12),
      O => \pid_out_s[2]_i_1_n_0\
    );
\pid_out_s[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => pid_sum_s(3),
      I1 => pid_sum_s(13),
      I2 => pid_sum_s(12),
      O => \pid_out_s[3]_i_1_n_0\
    );
\pid_out_s[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => pid_sum_s(4),
      I1 => pid_sum_s(13),
      I2 => pid_sum_s(12),
      O => \pid_out_s[4]_i_1_n_0\
    );
\pid_out_s[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => pid_sum_s(5),
      I1 => pid_sum_s(13),
      I2 => pid_sum_s(12),
      O => \pid_out_s[5]_i_1_n_0\
    );
\pid_out_s[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => pid_sum_s(6),
      I1 => pid_sum_s(13),
      I2 => pid_sum_s(12),
      O => \pid_out_s[6]_i_1_n_0\
    );
\pid_out_s[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => pid_sum_s(7),
      I1 => pid_sum_s(13),
      I2 => pid_sum_s(12),
      O => \pid_out_s[7]_i_1_n_0\
    );
\pid_out_s[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => pid_sum_s(8),
      I1 => pid_sum_s(13),
      I2 => pid_sum_s(12),
      O => \pid_out_s[8]_i_1_n_0\
    );
\pid_out_s[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => pid_sum_s(9),
      I1 => pid_sum_s(13),
      I2 => pid_sum_s(12),
      O => \pid_out_s[9]_i_1_n_0\
    );
\pid_out_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \pid_out_s[12]_i_1_n_0\,
      D => \pid_out_s[0]_i_1_n_0\,
      Q => \^data_o\(0),
      R => data_rst_i
    );
\pid_out_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \pid_out_s[12]_i_1_n_0\,
      D => \pid_out_s[10]_i_1_n_0\,
      Q => \^data_o\(10),
      R => data_rst_i
    );
\pid_out_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \pid_out_s[12]_i_1_n_0\,
      D => \pid_out_s[11]_i_1_n_0\,
      Q => \^data_o\(11),
      R => data_rst_i
    );
\pid_out_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \pid_out_s[12]_i_1_n_0\,
      D => \pid_out_s[12]_i_2_n_0\,
      Q => \^data_o\(12),
      R => data_rst_i
    );
\pid_out_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \pid_out_s[13]_i_1_n_0\,
      Q => \^data_o\(13),
      R => '0'
    );
\pid_out_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \pid_out_s[12]_i_1_n_0\,
      D => \pid_out_s[1]_i_1_n_0\,
      Q => \^data_o\(1),
      R => data_rst_i
    );
\pid_out_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \pid_out_s[12]_i_1_n_0\,
      D => \pid_out_s[2]_i_1_n_0\,
      Q => \^data_o\(2),
      R => data_rst_i
    );
\pid_out_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \pid_out_s[12]_i_1_n_0\,
      D => \pid_out_s[3]_i_1_n_0\,
      Q => \^data_o\(3),
      R => data_rst_i
    );
\pid_out_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \pid_out_s[12]_i_1_n_0\,
      D => \pid_out_s[4]_i_1_n_0\,
      Q => \^data_o\(4),
      R => data_rst_i
    );
\pid_out_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \pid_out_s[12]_i_1_n_0\,
      D => \pid_out_s[5]_i_1_n_0\,
      Q => \^data_o\(5),
      R => data_rst_i
    );
\pid_out_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \pid_out_s[12]_i_1_n_0\,
      D => \pid_out_s[6]_i_1_n_0\,
      Q => \^data_o\(6),
      R => data_rst_i
    );
\pid_out_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \pid_out_s[12]_i_1_n_0\,
      D => \pid_out_s[7]_i_1_n_0\,
      Q => \^data_o\(7),
      R => data_rst_i
    );
\pid_out_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \pid_out_s[12]_i_1_n_0\,
      D => \pid_out_s[8]_i_1_n_0\,
      Q => \^data_o\(8),
      R => data_rst_i
    );
\pid_out_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \pid_out_s[12]_i_1_n_0\,
      D => \pid_out_s[9]_i_1_n_0\,
      Q => \^data_o\(9),
      R => data_rst_i
    );
pid_sum_s_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pid_sum_s_carry_n_0,
      CO(2) => pid_sum_s_carry_n_1,
      CO(1) => pid_sum_s_carry_n_2,
      CO(0) => pid_sum_s_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => P_s(3 downto 0),
      O(3 downto 0) => pid_sum_s(3 downto 0),
      S(3) => pid_sum_s_carry_i_1_n_0,
      S(2) => pid_sum_s_carry_i_2_n_0,
      S(1) => pid_sum_s_carry_i_3_n_0,
      S(0) => pid_sum_s_carry_i_4_n_0
    );
\pid_sum_s_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pid_sum_s_carry_n_0,
      CO(3) => \pid_sum_s_carry__0_n_0\,
      CO(2) => \pid_sum_s_carry__0_n_1\,
      CO(1) => \pid_sum_s_carry__0_n_2\,
      CO(0) => \pid_sum_s_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => P_s(7 downto 4),
      O(3 downto 0) => pid_sum_s(7 downto 4),
      S(3) => \pid_sum_s_carry__0_i_1_n_0\,
      S(2) => \pid_sum_s_carry__0_i_2_n_0\,
      S(1) => \pid_sum_s_carry__0_i_3_n_0\,
      S(0) => \pid_sum_s_carry__0_i_4_n_0\
    );
\pid_sum_s_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(7),
      I1 => I_s(7),
      O => \pid_sum_s_carry__0_i_1_n_0\
    );
\pid_sum_s_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(6),
      I1 => I_s(6),
      O => \pid_sum_s_carry__0_i_2_n_0\
    );
\pid_sum_s_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(5),
      I1 => I_s(5),
      O => \pid_sum_s_carry__0_i_3_n_0\
    );
\pid_sum_s_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(4),
      I1 => I_s(4),
      O => \pid_sum_s_carry__0_i_4_n_0\
    );
\pid_sum_s_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pid_sum_s_carry__0_n_0\,
      CO(3) => \pid_sum_s_carry__1_n_0\,
      CO(2) => \pid_sum_s_carry__1_n_1\,
      CO(1) => \pid_sum_s_carry__1_n_2\,
      CO(0) => \pid_sum_s_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => P_s(11 downto 8),
      O(3 downto 0) => pid_sum_s(11 downto 8),
      S(3) => \pid_sum_s_carry__1_i_1_n_0\,
      S(2) => \pid_sum_s_carry__1_i_2_n_0\,
      S(1) => \pid_sum_s_carry__1_i_3_n_0\,
      S(0) => \pid_sum_s_carry__1_i_4_n_0\
    );
\pid_sum_s_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(11),
      I1 => I_s(11),
      O => \pid_sum_s_carry__1_i_1_n_0\
    );
\pid_sum_s_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(10),
      I1 => I_s(10),
      O => \pid_sum_s_carry__1_i_2_n_0\
    );
\pid_sum_s_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(9),
      I1 => I_s(9),
      O => \pid_sum_s_carry__1_i_3_n_0\
    );
\pid_sum_s_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(8),
      I1 => I_s(8),
      O => \pid_sum_s_carry__1_i_4_n_0\
    );
\pid_sum_s_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pid_sum_s_carry__1_n_0\,
      CO(3 downto 1) => \NLW_pid_sum_s_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \pid_sum_s_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => P_s(12),
      O(3 downto 2) => \NLW_pid_sum_s_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => pid_sum_s(13 downto 12),
      S(3 downto 2) => B"00",
      S(1) => \pid_sum_s_carry__2_i_1_n_0\,
      S(0) => \pid_sum_s_carry__2_i_2_n_0\
    );
\pid_sum_s_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(13),
      I1 => I_s(13),
      O => \pid_sum_s_carry__2_i_1_n_0\
    );
\pid_sum_s_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(12),
      I1 => I_s(12),
      O => \pid_sum_s_carry__2_i_2_n_0\
    );
pid_sum_s_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(3),
      I1 => I_s(3),
      O => pid_sum_s_carry_i_1_n_0
    );
pid_sum_s_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(2),
      I1 => I_s(2),
      O => pid_sum_s_carry_i_2_n_0
    );
pid_sum_s_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(1),
      I1 => I_s(1),
      O => pid_sum_s_carry_i_3_n_0
    );
pid_sum_s_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(0),
      I1 => I_s(0),
      O => pid_sum_s_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_red_pitaya_pidv3 is
  port (
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_o : out STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    ki_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    int_rst_i : in STD_LOGIC;
    kp_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    sign_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_red_pitaya_pidv3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_red_pitaya_pidv3 is
begin
red_pitaya_pidv3Logic: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_red_pitaya_pidv3_logic
     port map (
      data_clk_i => data_clk_i,
      data_en_i => data_en_i,
      data_en_o => data_en_o,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_o(13 downto 0) => data_o(13 downto 0),
      data_rst_i => data_rst_i,
      int_rst_i => int_rst_i,
      ki_i(13 downto 0) => ki_i(13 downto 0),
      kp_i(13 downto 0) => kp_i(13 downto 0),
      sign_i => sign_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    setpoint_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    kp_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    ki_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    kd_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    sign_i : in STD_LOGIC;
    int_rst_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "double_pid_vco_wrapper_red_pitaya_pidv3_0_1,red_pitaya_pidv3,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "red_pitaya_pidv3,Vivado 2016.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^data_clk_i\ : STD_LOGIC;
  signal \^data_rst_i\ : STD_LOGIC;
begin
  \^data_clk_i\ <= data_clk_i;
  \^data_rst_i\ <= data_rst_i;
  data_clk_o <= \^data_clk_i\;
  data_rst_o <= \^data_rst_i\;
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_red_pitaya_pidv3
     port map (
      data_clk_i => \^data_clk_i\,
      data_en_i => data_en_i,
      data_en_o => data_en_o,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_o(13 downto 0) => data_o(13 downto 0),
      data_rst_i => \^data_rst_i\,
      int_rst_i => int_rst_i,
      ki_i(13 downto 0) => ki_i(13 downto 0),
      kp_i(13 downto 0) => kp_i(13 downto 0),
      sign_i => sign_i
    );
end STRUCTURE;
