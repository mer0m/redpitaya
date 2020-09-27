-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri May 15 18:51:23 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/github/oscimpDigital/app/redpitaya/double_iq_pid_vco/design/tmp/double_iq_pid_vco.srcs/sources_1/bd/double_iq_pid_vco/ip/double_iq_pid_vco_redpitaya_converters_0_0/double_iq_pid_vco_redpitaya_converters_0_0_sim_netlist.vhdl
-- Design      : double_iq_pid_vco_redpitaya_converters_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_redpitaya_converters_0_0_ad9767 is
  port (
    dac_clk_o : out STD_LOGIC;
    dac_wrt_o : out STD_LOGIC;
    dac_sel_o : out STD_LOGIC;
    dac_rst_o : out STD_LOGIC;
    dac_dat_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_2ph_s : in STD_LOGIC;
    dac_2clk_s : in STD_LOGIC;
    CLK : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    dac_dat_b_en_i : in STD_LOGIC;
    dac_dat_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_dat_a_en_i : in STD_LOGIC;
    dac_dat_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_redpitaya_converters_0_0_ad9767 : entity is "ad9767";
end double_iq_pid_vco_redpitaya_converters_0_0_ad9767;

architecture STRUCTURE of double_iq_pid_vco_redpitaya_converters_0_0_ad9767 is
  signal dac_dat_a : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \dac_dat_a[0]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[10]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[11]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[12]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[1]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[2]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[3]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[4]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[5]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[6]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[7]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[8]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[9]_i_1_n_0\ : STD_LOGIC;
  signal dac_dat_a_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal dac_dat_b : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal dac_dat_b_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal dac_rst : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_i_dac_0_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_1_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_10_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_11_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_12_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_13_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_2_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_3_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_4_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_5_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_6_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_7_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_8_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_9_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_clk_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_rst_R_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_rst_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_sel_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_wrt_S_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of i_dac_0 : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of i_dac_0 : label is "MLO";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of i_dac_0 : label is "FALSE";
  attribute BOX_TYPE of i_dac_1 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_1 : label is "MLO";
  attribute \__SRVAL\ of i_dac_1 : label is "FALSE";
  attribute BOX_TYPE of i_dac_10 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_10 : label is "MLO";
  attribute \__SRVAL\ of i_dac_10 : label is "FALSE";
  attribute BOX_TYPE of i_dac_11 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_11 : label is "MLO";
  attribute \__SRVAL\ of i_dac_11 : label is "FALSE";
  attribute BOX_TYPE of i_dac_12 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_12 : label is "MLO";
  attribute \__SRVAL\ of i_dac_12 : label is "FALSE";
  attribute BOX_TYPE of i_dac_13 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_13 : label is "MLO";
  attribute \__SRVAL\ of i_dac_13 : label is "FALSE";
  attribute BOX_TYPE of i_dac_2 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_2 : label is "MLO";
  attribute \__SRVAL\ of i_dac_2 : label is "FALSE";
  attribute BOX_TYPE of i_dac_3 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_3 : label is "MLO";
  attribute \__SRVAL\ of i_dac_3 : label is "FALSE";
  attribute BOX_TYPE of i_dac_4 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_4 : label is "MLO";
  attribute \__SRVAL\ of i_dac_4 : label is "FALSE";
  attribute BOX_TYPE of i_dac_5 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_5 : label is "MLO";
  attribute \__SRVAL\ of i_dac_5 : label is "FALSE";
  attribute BOX_TYPE of i_dac_6 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_6 : label is "MLO";
  attribute \__SRVAL\ of i_dac_6 : label is "FALSE";
  attribute BOX_TYPE of i_dac_7 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_7 : label is "MLO";
  attribute \__SRVAL\ of i_dac_7 : label is "FALSE";
  attribute BOX_TYPE of i_dac_8 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_8 : label is "MLO";
  attribute \__SRVAL\ of i_dac_8 : label is "FALSE";
  attribute BOX_TYPE of i_dac_9 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_9 : label is "MLO";
  attribute \__SRVAL\ of i_dac_9 : label is "FALSE";
  attribute BOX_TYPE of i_dac_clk : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_clk : label is "MLO";
  attribute \__SRVAL\ of i_dac_clk : label is "FALSE";
  attribute BOX_TYPE of i_dac_rst : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_rst : label is "MLO";
  attribute \__SRVAL\ of i_dac_rst : label is "TRUE";
  attribute BOX_TYPE of i_dac_sel : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_sel : label is "MLO";
  attribute \__SRVAL\ of i_dac_sel : label is "FALSE";
  attribute BOX_TYPE of i_dac_wrt : label is "PRIMITIVE";
  attribute OPT_MODIFIED of i_dac_wrt : label is "MLO";
  attribute \__SRVAL\ of i_dac_wrt : label is "FALSE";
begin
\dac_dat_a[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_a_s(0),
      O => \dac_dat_a[0]_i_1_n_0\
    );
\dac_dat_a[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_a_s(10),
      O => \dac_dat_a[10]_i_1_n_0\
    );
\dac_dat_a[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_a_s(11),
      O => \dac_dat_a[11]_i_1_n_0\
    );
\dac_dat_a[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_a_s(12),
      O => \dac_dat_a[12]_i_1_n_0\
    );
\dac_dat_a[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_a_s(1),
      O => \dac_dat_a[1]_i_1_n_0\
    );
\dac_dat_a[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_a_s(2),
      O => \dac_dat_a[2]_i_1_n_0\
    );
\dac_dat_a[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_a_s(3),
      O => \dac_dat_a[3]_i_1_n_0\
    );
\dac_dat_a[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_a_s(4),
      O => \dac_dat_a[4]_i_1_n_0\
    );
\dac_dat_a[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_a_s(5),
      O => \dac_dat_a[5]_i_1_n_0\
    );
\dac_dat_a[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_a_s(6),
      O => \dac_dat_a[6]_i_1_n_0\
    );
\dac_dat_a[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_a_s(7),
      O => \dac_dat_a[7]_i_1_n_0\
    );
\dac_dat_a[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_a_s(8),
      O => \dac_dat_a[8]_i_1_n_0\
    );
\dac_dat_a[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_a_s(9),
      O => \dac_dat_a[9]_i_1_n_0\
    );
\dac_dat_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dac_dat_a[0]_i_1_n_0\,
      Q => dac_dat_a(0),
      R => '0'
    );
\dac_dat_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dac_dat_a[10]_i_1_n_0\,
      Q => dac_dat_a(10),
      R => '0'
    );
\dac_dat_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dac_dat_a[11]_i_1_n_0\,
      Q => dac_dat_a(11),
      R => '0'
    );
\dac_dat_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dac_dat_a[12]_i_1_n_0\,
      Q => dac_dat_a(12),
      R => '0'
    );
\dac_dat_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dac_dat_a_s(13),
      Q => dac_dat_a(13),
      R => '0'
    );
\dac_dat_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dac_dat_a[1]_i_1_n_0\,
      Q => dac_dat_a(1),
      R => '0'
    );
\dac_dat_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dac_dat_a[2]_i_1_n_0\,
      Q => dac_dat_a(2),
      R => '0'
    );
\dac_dat_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dac_dat_a[3]_i_1_n_0\,
      Q => dac_dat_a(3),
      R => '0'
    );
\dac_dat_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dac_dat_a[4]_i_1_n_0\,
      Q => dac_dat_a(4),
      R => '0'
    );
\dac_dat_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dac_dat_a[5]_i_1_n_0\,
      Q => dac_dat_a(5),
      R => '0'
    );
\dac_dat_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dac_dat_a[6]_i_1_n_0\,
      Q => dac_dat_a(6),
      R => '0'
    );
\dac_dat_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dac_dat_a[7]_i_1_n_0\,
      Q => dac_dat_a(7),
      R => '0'
    );
\dac_dat_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dac_dat_a[8]_i_1_n_0\,
      Q => dac_dat_a(8),
      R => '0'
    );
\dac_dat_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dac_dat_a[9]_i_1_n_0\,
      Q => dac_dat_a(9),
      R => '0'
    );
\dac_dat_a_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(0),
      Q => dac_dat_a_s(0),
      R => '0'
    );
\dac_dat_a_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(10),
      Q => dac_dat_a_s(10),
      R => '0'
    );
\dac_dat_a_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(11),
      Q => dac_dat_a_s(11),
      R => '0'
    );
\dac_dat_a_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(12),
      Q => dac_dat_a_s(12),
      R => '0'
    );
\dac_dat_a_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(13),
      Q => dac_dat_a_s(13),
      R => '0'
    );
\dac_dat_a_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(1),
      Q => dac_dat_a_s(1),
      R => '0'
    );
\dac_dat_a_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(2),
      Q => dac_dat_a_s(2),
      R => '0'
    );
\dac_dat_a_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(3),
      Q => dac_dat_a_s(3),
      R => '0'
    );
\dac_dat_a_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(4),
      Q => dac_dat_a_s(4),
      R => '0'
    );
\dac_dat_a_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(5),
      Q => dac_dat_a_s(5),
      R => '0'
    );
\dac_dat_a_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(6),
      Q => dac_dat_a_s(6),
      R => '0'
    );
\dac_dat_a_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(7),
      Q => dac_dat_a_s(7),
      R => '0'
    );
\dac_dat_a_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(8),
      Q => dac_dat_a_s(8),
      R => '0'
    );
\dac_dat_a_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(9),
      Q => dac_dat_a_s(9),
      R => '0'
    );
\dac_dat_b[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_b_s(0),
      O => p_1_out(0)
    );
\dac_dat_b[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_b_s(10),
      O => p_1_out(10)
    );
\dac_dat_b[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_b_s(11),
      O => p_1_out(11)
    );
\dac_dat_b[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_b_s(12),
      O => p_1_out(12)
    );
\dac_dat_b[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_b_s(1),
      O => p_1_out(1)
    );
\dac_dat_b[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_b_s(2),
      O => p_1_out(2)
    );
\dac_dat_b[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_b_s(3),
      O => p_1_out(3)
    );
\dac_dat_b[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_b_s(4),
      O => p_1_out(4)
    );
\dac_dat_b[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_b_s(5),
      O => p_1_out(5)
    );
\dac_dat_b[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_b_s(6),
      O => p_1_out(6)
    );
\dac_dat_b[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_b_s(7),
      O => p_1_out(7)
    );
\dac_dat_b[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_b_s(8),
      O => p_1_out(8)
    );
\dac_dat_b[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_dat_b_s(9),
      O => p_1_out(9)
    );
\dac_dat_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(0),
      Q => dac_dat_b(0),
      R => '0'
    );
\dac_dat_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(10),
      Q => dac_dat_b(10),
      R => '0'
    );
\dac_dat_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(11),
      Q => dac_dat_b(11),
      R => '0'
    );
\dac_dat_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(12),
      Q => dac_dat_b(12),
      R => '0'
    );
\dac_dat_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dac_dat_b_s(13),
      Q => dac_dat_b(13),
      R => '0'
    );
\dac_dat_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(1),
      Q => dac_dat_b(1),
      R => '0'
    );
\dac_dat_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(2),
      Q => dac_dat_b(2),
      R => '0'
    );
\dac_dat_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(3),
      Q => dac_dat_b(3),
      R => '0'
    );
\dac_dat_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(4),
      Q => dac_dat_b(4),
      R => '0'
    );
\dac_dat_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(5),
      Q => dac_dat_b(5),
      R => '0'
    );
\dac_dat_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(6),
      Q => dac_dat_b(6),
      R => '0'
    );
\dac_dat_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(7),
      Q => dac_dat_b(7),
      R => '0'
    );
\dac_dat_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(8),
      Q => dac_dat_b(8),
      R => '0'
    );
\dac_dat_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(9),
      Q => dac_dat_b(9),
      R => '0'
    );
\dac_dat_b_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(0),
      Q => dac_dat_b_s(0),
      R => '0'
    );
\dac_dat_b_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(10),
      Q => dac_dat_b_s(10),
      R => '0'
    );
\dac_dat_b_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(11),
      Q => dac_dat_b_s(11),
      R => '0'
    );
\dac_dat_b_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(12),
      Q => dac_dat_b_s(12),
      R => '0'
    );
\dac_dat_b_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(13),
      Q => dac_dat_b_s(13),
      R => '0'
    );
\dac_dat_b_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(1),
      Q => dac_dat_b_s(1),
      R => '0'
    );
\dac_dat_b_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(2),
      Q => dac_dat_b_s(2),
      R => '0'
    );
\dac_dat_b_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(3),
      Q => dac_dat_b_s(3),
      R => '0'
    );
\dac_dat_b_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(4),
      Q => dac_dat_b_s(4),
      R => '0'
    );
\dac_dat_b_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(5),
      Q => dac_dat_b_s(5),
      R => '0'
    );
\dac_dat_b_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(6),
      Q => dac_dat_b_s(6),
      R => '0'
    );
\dac_dat_b_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(7),
      Q => dac_dat_b_s(7),
      R => '0'
    );
\dac_dat_b_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(8),
      Q => dac_dat_b_s(8),
      R => '0'
    );
\dac_dat_b_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(9),
      Q => dac_dat_b_s(9),
      R => '0'
    );
dac_rst_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in,
      Q => dac_rst,
      R => '0'
    );
i_dac_0: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_dat_b(0),
      D2 => dac_dat_a(0),
      Q => dac_dat_o(0),
      R => dac_rst,
      S => NLW_i_dac_0_S_UNCONNECTED
    );
i_dac_1: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_dat_b(1),
      D2 => dac_dat_a(1),
      Q => dac_dat_o(1),
      R => dac_rst,
      S => NLW_i_dac_1_S_UNCONNECTED
    );
i_dac_10: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_dat_b(10),
      D2 => dac_dat_a(10),
      Q => dac_dat_o(10),
      R => dac_rst,
      S => NLW_i_dac_10_S_UNCONNECTED
    );
i_dac_11: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_dat_b(11),
      D2 => dac_dat_a(11),
      Q => dac_dat_o(11),
      R => dac_rst,
      S => NLW_i_dac_11_S_UNCONNECTED
    );
i_dac_12: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_dat_b(12),
      D2 => dac_dat_a(12),
      Q => dac_dat_o(12),
      R => dac_rst,
      S => NLW_i_dac_12_S_UNCONNECTED
    );
i_dac_13: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_dat_b(13),
      D2 => dac_dat_a(13),
      Q => dac_dat_o(13),
      R => dac_rst,
      S => NLW_i_dac_13_S_UNCONNECTED
    );
i_dac_2: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_dat_b(2),
      D2 => dac_dat_a(2),
      Q => dac_dat_o(2),
      R => dac_rst,
      S => NLW_i_dac_2_S_UNCONNECTED
    );
i_dac_3: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_dat_b(3),
      D2 => dac_dat_a(3),
      Q => dac_dat_o(3),
      R => dac_rst,
      S => NLW_i_dac_3_S_UNCONNECTED
    );
i_dac_4: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_dat_b(4),
      D2 => dac_dat_a(4),
      Q => dac_dat_o(4),
      R => dac_rst,
      S => NLW_i_dac_4_S_UNCONNECTED
    );
i_dac_5: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_dat_b(5),
      D2 => dac_dat_a(5),
      Q => dac_dat_o(5),
      R => dac_rst,
      S => NLW_i_dac_5_S_UNCONNECTED
    );
i_dac_6: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_dat_b(6),
      D2 => dac_dat_a(6),
      Q => dac_dat_o(6),
      R => dac_rst,
      S => NLW_i_dac_6_S_UNCONNECTED
    );
i_dac_7: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_dat_b(7),
      D2 => dac_dat_a(7),
      Q => dac_dat_o(7),
      R => dac_rst,
      S => NLW_i_dac_7_S_UNCONNECTED
    );
i_dac_8: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_dat_b(8),
      D2 => dac_dat_a(8),
      Q => dac_dat_o(8),
      R => dac_rst,
      S => NLW_i_dac_8_S_UNCONNECTED
    );
i_dac_9: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_dat_b(9),
      D2 => dac_dat_a(9),
      Q => dac_dat_o(9),
      R => dac_rst,
      S => NLW_i_dac_9_S_UNCONNECTED
    );
i_dac_clk: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_2ph_s,
      CE => '1',
      D1 => '0',
      D2 => '1',
      Q => dac_clk_o,
      R => dac_rst,
      S => NLW_i_dac_clk_S_UNCONNECTED
    );
i_dac_rst: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => dac_rst,
      D2 => dac_rst,
      Q => dac_rst_o,
      R => NLW_i_dac_rst_R_UNCONNECTED,
      S => NLW_i_dac_rst_S_UNCONNECTED
    );
i_dac_sel: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => CLK,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => dac_sel_o,
      R => dac_rst,
      S => NLW_i_dac_sel_S_UNCONNECTED
    );
i_dac_wrt: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_2clk_s,
      CE => '1',
      D1 => '0',
      D2 => '1',
      Q => dac_wrt_o,
      R => dac_rst,
      S => NLW_i_dac_wrt_S_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_adc_cmos_capture is
  port (
    data_a_en_o : out STD_LOGIC;
    data_a_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_b_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    CLK : in STD_LOGIC;
    rst_o : in STD_LOGIC;
    adc_data_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_data_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_adc_cmos_capture : entity is "redpitaya_adc_cmos_capture";
end double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_adc_cmos_capture;

architecture STRUCTURE of double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_adc_cmos_capture is
  signal \data_a_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_a_s[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_a_s[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_a_s[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_a_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_a_s[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_a_s[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_a_s[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_a_s[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_a_s[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_a_s[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_a_s[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_a_s[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[9]_i_1_n_0\ : STD_LOGIC;
begin
adc_data_en_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => '1',
      Q => data_a_en_o
    );
\data_a_s[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(0),
      O => \data_a_s[0]_i_1_n_0\
    );
\data_a_s[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(10),
      O => \data_a_s[10]_i_1_n_0\
    );
\data_a_s[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(11),
      O => \data_a_s[11]_i_1_n_0\
    );
\data_a_s[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(12),
      O => \data_a_s[12]_i_1_n_0\
    );
\data_a_s[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(1),
      O => \data_a_s[1]_i_1_n_0\
    );
\data_a_s[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(2),
      O => \data_a_s[2]_i_1_n_0\
    );
\data_a_s[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(3),
      O => \data_a_s[3]_i_1_n_0\
    );
\data_a_s[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(4),
      O => \data_a_s[4]_i_1_n_0\
    );
\data_a_s[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(5),
      O => \data_a_s[5]_i_1_n_0\
    );
\data_a_s[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(6),
      O => \data_a_s[6]_i_1_n_0\
    );
\data_a_s[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(7),
      O => \data_a_s[7]_i_1_n_0\
    );
\data_a_s[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(8),
      O => \data_a_s[8]_i_1_n_0\
    );
\data_a_s[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(9),
      O => \data_a_s[9]_i_1_n_0\
    );
\data_a_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_a_s[0]_i_1_n_0\,
      Q => data_a_o(0)
    );
\data_a_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_a_s[10]_i_1_n_0\,
      Q => data_a_o(10)
    );
\data_a_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_a_s[11]_i_1_n_0\,
      Q => data_a_o(11)
    );
\data_a_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_a_s[12]_i_1_n_0\,
      Q => data_a_o(12)
    );
\data_a_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => adc_data_a_i(13),
      Q => data_a_o(13)
    );
\data_a_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_a_s[1]_i_1_n_0\,
      Q => data_a_o(1)
    );
\data_a_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_a_s[2]_i_1_n_0\,
      Q => data_a_o(2)
    );
\data_a_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_a_s[3]_i_1_n_0\,
      Q => data_a_o(3)
    );
\data_a_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_a_s[4]_i_1_n_0\,
      Q => data_a_o(4)
    );
\data_a_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_a_s[5]_i_1_n_0\,
      Q => data_a_o(5)
    );
\data_a_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_a_s[6]_i_1_n_0\,
      Q => data_a_o(6)
    );
\data_a_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_a_s[7]_i_1_n_0\,
      Q => data_a_o(7)
    );
\data_a_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_a_s[8]_i_1_n_0\,
      Q => data_a_o(8)
    );
\data_a_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_a_s[9]_i_1_n_0\,
      Q => data_a_o(9)
    );
\data_b_s[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(0),
      O => \data_b_s[0]_i_1_n_0\
    );
\data_b_s[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(10),
      O => \data_b_s[10]_i_1_n_0\
    );
\data_b_s[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(11),
      O => \data_b_s[11]_i_1_n_0\
    );
\data_b_s[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(12),
      O => \data_b_s[12]_i_1_n_0\
    );
\data_b_s[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(1),
      O => \data_b_s[1]_i_1_n_0\
    );
\data_b_s[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(2),
      O => \data_b_s[2]_i_1_n_0\
    );
\data_b_s[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(3),
      O => \data_b_s[3]_i_1_n_0\
    );
\data_b_s[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(4),
      O => \data_b_s[4]_i_1_n_0\
    );
\data_b_s[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(5),
      O => \data_b_s[5]_i_1_n_0\
    );
\data_b_s[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(6),
      O => \data_b_s[6]_i_1_n_0\
    );
\data_b_s[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(7),
      O => \data_b_s[7]_i_1_n_0\
    );
\data_b_s[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(8),
      O => \data_b_s[8]_i_1_n_0\
    );
\data_b_s[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(9),
      O => \data_b_s[9]_i_1_n_0\
    );
\data_b_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_b_s[0]_i_1_n_0\,
      Q => data_b_o(0)
    );
\data_b_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_b_s[10]_i_1_n_0\,
      Q => data_b_o(10)
    );
\data_b_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_b_s[11]_i_1_n_0\,
      Q => data_b_o(11)
    );
\data_b_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_b_s[12]_i_1_n_0\,
      Q => data_b_o(12)
    );
\data_b_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => adc_data_b_i(13),
      Q => data_b_o(13)
    );
\data_b_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_b_s[1]_i_1_n_0\,
      Q => data_b_o(1)
    );
\data_b_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_b_s[2]_i_1_n_0\,
      Q => data_b_o(2)
    );
\data_b_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_b_s[3]_i_1_n_0\,
      Q => data_b_o(3)
    );
\data_b_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_b_s[4]_i_1_n_0\,
      Q => data_b_o(4)
    );
\data_b_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_b_s[5]_i_1_n_0\,
      Q => data_b_o(5)
    );
\data_b_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_b_s[6]_i_1_n_0\,
      Q => data_b_o(6)
    );
\data_b_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_b_s[7]_i_1_n_0\,
      Q => data_b_o(7)
    );
\data_b_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_b_s[8]_i_1_n_0\,
      Q => data_b_o(8)
    );
\data_b_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_o,
      D => \data_b_s[9]_i_1_n_0\,
      Q => data_b_o(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_adc_dac_clk is
  port (
    CLK : out STD_LOGIC;
    adc_rst_i_0 : out STD_LOGIC;
    dac_2clk_s : out STD_LOGIC;
    dac_2ph_s : out STD_LOGIC;
    rst_o : out STD_LOGIC;
    rstn_o : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    adc_clk_p_i : in STD_LOGIC;
    adc_clk_n_i : in STD_LOGIC;
    adc_rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_adc_dac_clk : entity is "redpitaya_adc_dac_clk";
end double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_adc_dac_clk;

architecture STRUCTURE of double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_adc_dac_clk is
  signal \^clk\ : STD_LOGIC;
  signal adc_clk_in : STD_LOGIC;
  signal dac_2clk_out : STD_LOGIC;
  signal dac_2ph_out : STD_LOGIC;
  signal dac_clk_fb : STD_LOGIC;
  signal dac_clk_fb_buf : STD_LOGIC;
  signal dac_clk_out : STD_LOGIC;
  signal dac_locked_s : STD_LOGIC;
  signal i_ser_buf_n_0 : STD_LOGIC;
  signal ser_clk_out : STD_LOGIC;
  signal \value[0]_0\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \value[0]_0\ : signal is "true";
  signal \value[1]_2\ : STD_LOGIC;
  attribute async_reg of \value[1]_2\ : signal is "true";
  signal \value[2]_3\ : STD_LOGIC;
  attribute async_reg of \value[2]_3\ : signal is "true";
  signal NLW_i_dac_plle2_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_plle2_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_plle2_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_plle2_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of i_adc_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of i_clk : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of i_clk : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of i_clk : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of i_clk : label is "AUTO";
  attribute BOX_TYPE of i_dac1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of i_dac2_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of i_dac2ph_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of i_dac_plle2 : label is "PRIMITIVE";
  attribute BOX_TYPE of i_dacfb_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of i_ser_buf : label is "PRIMITIVE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \stages[0].value_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \stages[0].value_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \stages[1].value_reg[1]\ : label is std.standard.true;
  attribute KEEP of \stages[1].value_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \stages[2].value_reg[2]\ : label is std.standard.true;
  attribute KEEP of \stages[2].value_reg[2]\ : label is "yes";
begin
  CLK <= \^clk\;
  rst_o <= \value[2]_3\;
dac_rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_locked_s,
      O => p_0_in
    );
i_adc_buf: unisim.vcomponents.BUFG
     port map (
      I => adc_clk_in,
      O => \^clk\
    );
i_clk: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_clk_p_i,
      IB => adc_clk_n_i,
      O => adc_clk_in
    );
i_dac1_buf: unisim.vcomponents.BUFG
     port map (
      I => dac_clk_out,
      O => adc_rst_i_0
    );
i_dac2_buf: unisim.vcomponents.BUFG
     port map (
      I => dac_2clk_out,
      O => dac_2clk_s
    );
i_dac2ph_buf: unisim.vcomponents.BUFG
     port map (
      I => dac_2ph_out,
      O => dac_2ph_s
    );
i_dac_plle2: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 8,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 8.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE => 8,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 4,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 4,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => -45.000000,
      CLKOUT3_DIVIDE => 4,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "BUF_IN",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => dac_clk_fb_buf,
      CLKFBOUT => dac_clk_fb,
      CLKIN1 => \^clk\,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKOUT0 => dac_clk_out,
      CLKOUT1 => dac_2clk_out,
      CLKOUT2 => dac_2ph_out,
      CLKOUT3 => ser_clk_out,
      CLKOUT4 => NLW_i_dac_plle2_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_i_dac_plle2_CLKOUT5_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_i_dac_plle2_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_i_dac_plle2_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => dac_locked_s,
      PWRDWN => '0',
      RST => adc_rst_i
    );
i_dacfb_buf: unisim.vcomponents.BUFG
     port map (
      I => dac_clk_fb,
      O => dac_clk_fb_buf
    );
i_ser_buf: unisim.vcomponents.BUFG
     port map (
      I => ser_clk_out,
      O => i_ser_buf_n_0
    );
rstn_o_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \value[2]_3\,
      O => rstn_o
    );
\stages[0].value_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => '0',
      Q => \value[0]_0\,
      R => '0'
    );
\stages[1].value_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \value[0]_0\,
      Q => \value[1]_2\,
      R => '0'
    );
\stages[2].value_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \value[1]_2\,
      Q => \value[2]_3\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_converters is
  port (
    adc_rst_i : in STD_LOGIC;
    clk_o : out STD_LOGIC;
    rst_o : out STD_LOGIC;
    rstn_o : out STD_LOGIC;
    adc_clk_p_i : in STD_LOGIC;
    adc_clk_n_i : in STD_LOGIC;
    adc_data_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_data_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_cdcs : out STD_LOGIC;
    data_a_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_a_en_o : out STD_LOGIC;
    data_a_clk_o : out STD_LOGIC;
    data_a_rst_o : out STD_LOGIC;
    data_b_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_b_en_o : out STD_LOGIC;
    data_b_clk_o : out STD_LOGIC;
    data_b_rst_o : out STD_LOGIC;
    dac_dat_a_en_i : in STD_LOGIC;
    dac_dat_a_rst_i : in STD_LOGIC;
    dac_dat_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_dat_b_en_i : in STD_LOGIC;
    dac_dat_b_rst_i : in STD_LOGIC;
    dac_dat_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_dat_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_wrt_o : out STD_LOGIC;
    dac_sel_o : out STD_LOGIC;
    dac_clk_o : out STD_LOGIC;
    dac_rst_o : out STD_LOGIC
  );
  attribute ADC_EN : string;
  attribute ADC_EN of double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_converters : entity is "TRUE";
  attribute ADC_SIZE : integer;
  attribute ADC_SIZE of double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_converters : entity is 14;
  attribute CLOCK_DUTY_CYCLE_STABILIZER_EN : string;
  attribute CLOCK_DUTY_CYCLE_STABILIZER_EN of double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_converters : entity is "FALSE";
  attribute DAC_EN : string;
  attribute DAC_EN of double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_converters : entity is "TRUE";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_converters : entity is "redpitaya_converters";
end double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_converters;

architecture STRUCTURE of double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_converters is
  signal \<const0>\ : STD_LOGIC;
  signal \^clk_o\ : STD_LOGIC;
  signal dac_2clk_s : STD_LOGIC;
  signal dac_2ph_s : STD_LOGIC;
  signal dac_clk_s : STD_LOGIC;
  signal \^data_a_en_o\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^rst_o\ : STD_LOGIC;
begin
  adc_cdcs <= \<const0>\;
  clk_o <= \^clk_o\;
  data_a_clk_o <= \^clk_o\;
  data_a_en_o <= \^data_a_en_o\;
  data_a_rst_o <= \^rst_o\;
  data_b_clk_o <= \^clk_o\;
  data_b_en_o <= \^data_a_en_o\;
  data_b_rst_o <= \^rst_o\;
  rst_o <= \^rst_o\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\enable_adc.redpitaya_adc_capture_inst\: entity work.double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_adc_cmos_capture
     port map (
      CLK => \^clk_o\,
      adc_data_a_i(13 downto 0) => adc_data_a_i(13 downto 0),
      adc_data_b_i(13 downto 0) => adc_data_b_i(13 downto 0),
      data_a_en_o => \^data_a_en_o\,
      data_a_o(13 downto 0) => data_a_o(13 downto 0),
      data_b_o(13 downto 0) => data_b_o(13 downto 0),
      rst_o => \^rst_o\
    );
\enable_dac.redpitaya_dac\: entity work.double_iq_pid_vco_redpitaya_converters_0_0_ad9767
     port map (
      CLK => dac_clk_s,
      dac_2clk_s => dac_2clk_s,
      dac_2ph_s => dac_2ph_s,
      dac_clk_o => dac_clk_o,
      dac_dat_a_en_i => dac_dat_a_en_i,
      dac_dat_a_i(13 downto 0) => dac_dat_a_i(13 downto 0),
      dac_dat_b_en_i => dac_dat_b_en_i,
      dac_dat_b_i(13 downto 0) => dac_dat_b_i(13 downto 0),
      dac_dat_o(13 downto 0) => dac_dat_o(13 downto 0),
      dac_rst_o => dac_rst_o,
      dac_sel_o => dac_sel_o,
      dac_wrt_o => dac_wrt_o,
      p_0_in => p_0_in
    );
redpitaya_clk: entity work.double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_adc_dac_clk
     port map (
      CLK => \^clk_o\,
      adc_clk_n_i => adc_clk_n_i,
      adc_clk_p_i => adc_clk_p_i,
      adc_rst_i => adc_rst_i,
      adc_rst_i_0 => dac_clk_s,
      dac_2clk_s => dac_2clk_s,
      dac_2ph_s => dac_2ph_s,
      p_0_in => p_0_in,
      rst_o => \^rst_o\,
      rstn_o => rstn_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_redpitaya_converters_0_0 is
  port (
    adc_rst_i : in STD_LOGIC;
    clk_o : out STD_LOGIC;
    rst_o : out STD_LOGIC;
    rstn_o : out STD_LOGIC;
    adc_clk_p_i : in STD_LOGIC;
    adc_clk_n_i : in STD_LOGIC;
    adc_data_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_data_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_cdcs : out STD_LOGIC;
    data_a_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_a_en_o : out STD_LOGIC;
    data_a_clk_o : out STD_LOGIC;
    data_a_rst_o : out STD_LOGIC;
    data_b_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_b_en_o : out STD_LOGIC;
    data_b_clk_o : out STD_LOGIC;
    data_b_rst_o : out STD_LOGIC;
    dac_dat_a_en_i : in STD_LOGIC;
    dac_dat_a_rst_i : in STD_LOGIC;
    dac_dat_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_dat_b_en_i : in STD_LOGIC;
    dac_dat_b_rst_i : in STD_LOGIC;
    dac_dat_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_dat_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_wrt_o : out STD_LOGIC;
    dac_sel_o : out STD_LOGIC;
    dac_clk_o : out STD_LOGIC;
    dac_rst_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of double_iq_pid_vco_redpitaya_converters_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of double_iq_pid_vco_redpitaya_converters_0_0 : entity is "double_iq_pid_vco_redpitaya_converters_0_0,redpitaya_converters,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of double_iq_pid_vco_redpitaya_converters_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of double_iq_pid_vco_redpitaya_converters_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of double_iq_pid_vco_redpitaya_converters_0_0 : entity is "redpitaya_converters,Vivado 2019.2";
end double_iq_pid_vco_redpitaya_converters_0_0;

architecture STRUCTURE of double_iq_pid_vco_redpitaya_converters_0_0 is
  attribute ADC_EN : string;
  attribute ADC_EN of U0 : label is "TRUE";
  attribute ADC_SIZE : integer;
  attribute ADC_SIZE of U0 : label is 14;
  attribute CLOCK_DUTY_CYCLE_STABILIZER_EN : string;
  attribute CLOCK_DUTY_CYCLE_STABILIZER_EN of U0 : label is "FALSE";
  attribute DAC_EN : string;
  attribute DAC_EN of U0 : label is "TRUE";
  attribute x_interface_info : string;
  attribute x_interface_info of adc_cdcs : signal is "ggm:interface:redpitaya_converters_if:1.0 phys_interface ADC_CDCS";
  attribute x_interface_info of adc_clk_n_i : signal is "ggm:interface:redpitaya_converters_if:1.0 phys_interface CLK_N";
  attribute x_interface_info of adc_clk_p_i : signal is "ggm:interface:redpitaya_converters_if:1.0 phys_interface CLK_P";
  attribute x_interface_info of adc_rst_i : signal is "xilinx.com:signal:reset:1.0 adc_rst_i RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of adc_rst_i : signal is "XIL_INTERFACENAME adc_rst_i, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of clk_o : signal is "xilinx.com:signal:clock:1.0 clk_o CLK";
  attribute x_interface_parameter of clk_o : signal is "XIL_INTERFACENAME clk_o, ASSOCIATED_BUSIF dataA_out:dataB_out:dataA_in:dataB_in, ASSOCIATED_RESET rst_o:rstn_o, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_redpitaya_converters_0_0_clk_o, INSERT_VIP 0";
  attribute x_interface_info of dac_clk_o : signal is "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_CLK";
  attribute x_interface_info of dac_dat_a_en_i : signal is "xilinx.com:interface:real:1.0 dataA_in DATA_EN";
  attribute x_interface_info of dac_dat_a_rst_i : signal is "xilinx.com:interface:real:1.0 dataA_in DATA_RST";
  attribute x_interface_info of dac_dat_b_en_i : signal is "xilinx.com:interface:real:1.0 dataB_in DATA_EN";
  attribute x_interface_info of dac_dat_b_rst_i : signal is "xilinx.com:interface:real:1.0 dataB_in DATA_RST";
  attribute x_interface_info of dac_rst_o : signal is "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_RST";
  attribute x_interface_info of dac_sel_o : signal is "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_SEL";
  attribute x_interface_info of dac_wrt_o : signal is "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_WRT";
  attribute x_interface_info of data_a_clk_o : signal is "xilinx.com:interface:real:1.0 dataA_out DATA_CLK";
  attribute x_interface_info of data_a_en_o : signal is "xilinx.com:interface:real:1.0 dataA_out DATA_EN";
  attribute x_interface_info of data_a_rst_o : signal is "xilinx.com:interface:real:1.0 dataA_out DATA_RST";
  attribute x_interface_info of data_b_clk_o : signal is "xilinx.com:interface:real:1.0 dataB_out DATA_CLK";
  attribute x_interface_info of data_b_en_o : signal is "xilinx.com:interface:real:1.0 dataB_out DATA_EN";
  attribute x_interface_info of data_b_rst_o : signal is "xilinx.com:interface:real:1.0 dataB_out DATA_RST";
  attribute x_interface_info of rst_o : signal is "xilinx.com:signal:reset:1.0 rst_o RST";
  attribute x_interface_parameter of rst_o : signal is "XIL_INTERFACENAME rst_o, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of rstn_o : signal is "xilinx.com:signal:reset:1.0 rstn_o RST";
  attribute x_interface_parameter of rstn_o : signal is "XIL_INTERFACENAME rstn_o, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of adc_data_a_i : signal is "ggm:interface:redpitaya_converters_if:1.0 phys_interface ADC_A";
  attribute x_interface_info of adc_data_b_i : signal is "ggm:interface:redpitaya_converters_if:1.0 phys_interface ADC_B";
  attribute x_interface_info of dac_dat_a_i : signal is "xilinx.com:interface:real:1.0 dataA_in DATA";
  attribute x_interface_info of dac_dat_b_i : signal is "xilinx.com:interface:real:1.0 dataB_in DATA";
  attribute x_interface_info of dac_dat_o : signal is "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_DAT";
  attribute x_interface_info of data_a_o : signal is "xilinx.com:interface:real:1.0 dataA_out DATA";
  attribute x_interface_info of data_b_o : signal is "xilinx.com:interface:real:1.0 dataB_out DATA";
begin
U0: entity work.double_iq_pid_vco_redpitaya_converters_0_0_redpitaya_converters
     port map (
      adc_cdcs => adc_cdcs,
      adc_clk_n_i => adc_clk_n_i,
      adc_clk_p_i => adc_clk_p_i,
      adc_data_a_i(13 downto 0) => adc_data_a_i(13 downto 0),
      adc_data_b_i(13 downto 0) => adc_data_b_i(13 downto 0),
      adc_rst_i => adc_rst_i,
      clk_o => clk_o,
      dac_clk_o => dac_clk_o,
      dac_dat_a_en_i => dac_dat_a_en_i,
      dac_dat_a_i(13 downto 0) => dac_dat_a_i(13 downto 0),
      dac_dat_a_rst_i => dac_dat_a_rst_i,
      dac_dat_b_en_i => dac_dat_b_en_i,
      dac_dat_b_i(13 downto 0) => dac_dat_b_i(13 downto 0),
      dac_dat_b_rst_i => dac_dat_b_rst_i,
      dac_dat_o(13 downto 0) => dac_dat_o(13 downto 0),
      dac_rst_o => dac_rst_o,
      dac_sel_o => dac_sel_o,
      dac_wrt_o => dac_wrt_o,
      data_a_clk_o => data_a_clk_o,
      data_a_en_o => data_a_en_o,
      data_a_o(13 downto 0) => data_a_o(13 downto 0),
      data_a_rst_o => data_a_rst_o,
      data_b_clk_o => data_b_clk_o,
      data_b_en_o => data_b_en_o,
      data_b_o(13 downto 0) => data_b_o(13 downto 0),
      data_b_rst_o => data_b_rst_o,
      rst_o => rst_o,
      rstn_o => rstn_o
    );
end STRUCTURE;
