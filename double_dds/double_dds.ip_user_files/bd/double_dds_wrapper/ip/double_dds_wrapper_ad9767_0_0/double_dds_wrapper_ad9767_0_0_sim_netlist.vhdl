-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed May 10 18:15:46 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/fpga_design/redpitaya/double_dds/double_dds.srcs/sources_1/bd/double_dds_wrapper/ip/double_dds_wrapper_ad9767_0_0/double_dds_wrapper_ad9767_0_0_sim_netlist.vhdl
-- Design      : double_dds_wrapper_ad9767_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_wrapper_ad9767_0_0_ad9767 is
  port (
    dac_clk_o : out STD_LOGIC;
    dac_wrt_o : out STD_LOGIC;
    dac_sel_o : out STD_LOGIC;
    dac_rst_o : out STD_LOGIC;
    dac_dat_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_2ph_i : in STD_LOGIC;
    dac_2clk_i : in STD_LOGIC;
    dac_clk_i : in STD_LOGIC;
    dac_dat_b_en_i : in STD_LOGIC;
    dac_dat_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_dat_a_en_i : in STD_LOGIC;
    dac_dat_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_locked_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_wrapper_ad9767_0_0_ad9767 : entity is "ad9767";
end double_dds_wrapper_ad9767_0_0_ad9767;

architecture STRUCTURE of double_dds_wrapper_ad9767_0_0_ad9767 is
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
  signal p_0_in : STD_LOGIC;
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
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of i_dac_0 : label is "FALSE";
  attribute BOX_TYPE of i_dac_1 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_1 : label is "FALSE";
  attribute BOX_TYPE of i_dac_10 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_10 : label is "FALSE";
  attribute BOX_TYPE of i_dac_11 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_11 : label is "FALSE";
  attribute BOX_TYPE of i_dac_12 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_12 : label is "FALSE";
  attribute BOX_TYPE of i_dac_13 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_13 : label is "FALSE";
  attribute BOX_TYPE of i_dac_2 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_2 : label is "FALSE";
  attribute BOX_TYPE of i_dac_3 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_3 : label is "FALSE";
  attribute BOX_TYPE of i_dac_4 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_4 : label is "FALSE";
  attribute BOX_TYPE of i_dac_5 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_5 : label is "FALSE";
  attribute BOX_TYPE of i_dac_6 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_6 : label is "FALSE";
  attribute BOX_TYPE of i_dac_7 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_7 : label is "FALSE";
  attribute BOX_TYPE of i_dac_8 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_8 : label is "FALSE";
  attribute BOX_TYPE of i_dac_9 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_9 : label is "FALSE";
  attribute BOX_TYPE of i_dac_clk : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_clk : label is "FALSE";
  attribute BOX_TYPE of i_dac_rst : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_rst : label is "TRUE";
  attribute BOX_TYPE of i_dac_sel : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_sel : label is "FALSE";
  attribute BOX_TYPE of i_dac_wrt : label is "PRIMITIVE";
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
      C => dac_clk_i,
      CE => '1',
      D => \dac_dat_a[0]_i_1_n_0\,
      Q => dac_dat_a(0),
      R => '0'
    );
\dac_dat_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => \dac_dat_a[10]_i_1_n_0\,
      Q => dac_dat_a(10),
      R => '0'
    );
\dac_dat_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => \dac_dat_a[11]_i_1_n_0\,
      Q => dac_dat_a(11),
      R => '0'
    );
\dac_dat_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => \dac_dat_a[12]_i_1_n_0\,
      Q => dac_dat_a(12),
      R => '0'
    );
\dac_dat_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => dac_dat_a_s(13),
      Q => dac_dat_a(13),
      R => '0'
    );
\dac_dat_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => \dac_dat_a[1]_i_1_n_0\,
      Q => dac_dat_a(1),
      R => '0'
    );
\dac_dat_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => \dac_dat_a[2]_i_1_n_0\,
      Q => dac_dat_a(2),
      R => '0'
    );
\dac_dat_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => \dac_dat_a[3]_i_1_n_0\,
      Q => dac_dat_a(3),
      R => '0'
    );
\dac_dat_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => \dac_dat_a[4]_i_1_n_0\,
      Q => dac_dat_a(4),
      R => '0'
    );
\dac_dat_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => \dac_dat_a[5]_i_1_n_0\,
      Q => dac_dat_a(5),
      R => '0'
    );
\dac_dat_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => \dac_dat_a[6]_i_1_n_0\,
      Q => dac_dat_a(6),
      R => '0'
    );
\dac_dat_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => \dac_dat_a[7]_i_1_n_0\,
      Q => dac_dat_a(7),
      R => '0'
    );
\dac_dat_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => \dac_dat_a[8]_i_1_n_0\,
      Q => dac_dat_a(8),
      R => '0'
    );
\dac_dat_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => \dac_dat_a[9]_i_1_n_0\,
      Q => dac_dat_a(9),
      R => '0'
    );
\dac_dat_a_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(0),
      Q => dac_dat_a_s(0),
      R => '0'
    );
\dac_dat_a_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(10),
      Q => dac_dat_a_s(10),
      R => '0'
    );
\dac_dat_a_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(11),
      Q => dac_dat_a_s(11),
      R => '0'
    );
\dac_dat_a_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(12),
      Q => dac_dat_a_s(12),
      R => '0'
    );
\dac_dat_a_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(13),
      Q => dac_dat_a_s(13),
      R => '0'
    );
\dac_dat_a_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(1),
      Q => dac_dat_a_s(1),
      R => '0'
    );
\dac_dat_a_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(2),
      Q => dac_dat_a_s(2),
      R => '0'
    );
\dac_dat_a_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(3),
      Q => dac_dat_a_s(3),
      R => '0'
    );
\dac_dat_a_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(4),
      Q => dac_dat_a_s(4),
      R => '0'
    );
\dac_dat_a_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(5),
      Q => dac_dat_a_s(5),
      R => '0'
    );
\dac_dat_a_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(6),
      Q => dac_dat_a_s(6),
      R => '0'
    );
\dac_dat_a_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(7),
      Q => dac_dat_a_s(7),
      R => '0'
    );
\dac_dat_a_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_a_en_i,
      D => dac_dat_a_i(8),
      Q => dac_dat_a_s(8),
      R => '0'
    );
\dac_dat_a_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
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
      C => dac_clk_i,
      CE => '1',
      D => p_1_out(0),
      Q => dac_dat_b(0),
      R => '0'
    );
\dac_dat_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => p_1_out(10),
      Q => dac_dat_b(10),
      R => '0'
    );
\dac_dat_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => p_1_out(11),
      Q => dac_dat_b(11),
      R => '0'
    );
\dac_dat_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => p_1_out(12),
      Q => dac_dat_b(12),
      R => '0'
    );
\dac_dat_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => dac_dat_b_s(13),
      Q => dac_dat_b(13),
      R => '0'
    );
\dac_dat_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => p_1_out(1),
      Q => dac_dat_b(1),
      R => '0'
    );
\dac_dat_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => p_1_out(2),
      Q => dac_dat_b(2),
      R => '0'
    );
\dac_dat_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => p_1_out(3),
      Q => dac_dat_b(3),
      R => '0'
    );
\dac_dat_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => p_1_out(4),
      Q => dac_dat_b(4),
      R => '0'
    );
\dac_dat_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => p_1_out(5),
      Q => dac_dat_b(5),
      R => '0'
    );
\dac_dat_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => p_1_out(6),
      Q => dac_dat_b(6),
      R => '0'
    );
\dac_dat_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => p_1_out(7),
      Q => dac_dat_b(7),
      R => '0'
    );
\dac_dat_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => p_1_out(8),
      Q => dac_dat_b(8),
      R => '0'
    );
\dac_dat_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => '1',
      D => p_1_out(9),
      Q => dac_dat_b(9),
      R => '0'
    );
\dac_dat_b_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(0),
      Q => dac_dat_b_s(0),
      R => '0'
    );
\dac_dat_b_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(10),
      Q => dac_dat_b_s(10),
      R => '0'
    );
\dac_dat_b_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(11),
      Q => dac_dat_b_s(11),
      R => '0'
    );
\dac_dat_b_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(12),
      Q => dac_dat_b_s(12),
      R => '0'
    );
\dac_dat_b_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(13),
      Q => dac_dat_b_s(13),
      R => '0'
    );
\dac_dat_b_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(1),
      Q => dac_dat_b_s(1),
      R => '0'
    );
\dac_dat_b_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(2),
      Q => dac_dat_b_s(2),
      R => '0'
    );
\dac_dat_b_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(3),
      Q => dac_dat_b_s(3),
      R => '0'
    );
\dac_dat_b_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(4),
      Q => dac_dat_b_s(4),
      R => '0'
    );
\dac_dat_b_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(5),
      Q => dac_dat_b_s(5),
      R => '0'
    );
\dac_dat_b_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(6),
      Q => dac_dat_b_s(6),
      R => '0'
    );
\dac_dat_b_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(7),
      Q => dac_dat_b_s(7),
      R => '0'
    );
\dac_dat_b_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(8),
      Q => dac_dat_b_s(8),
      R => '0'
    );
\dac_dat_b_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
      CE => dac_dat_b_en_i,
      D => dac_dat_b_i(9),
      Q => dac_dat_b_s(9),
      R => '0'
    );
dac_rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_locked_i,
      O => p_0_in
    );
dac_rst_reg: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_2ph_i,
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
      C => dac_clk_i,
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
      C => dac_clk_i,
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
      C => dac_2clk_i,
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
entity double_dds_wrapper_ad9767_0_0 is
  port (
    dac_clk_i : in STD_LOGIC;
    dac_2clk_i : in STD_LOGIC;
    dac_2ph_i : in STD_LOGIC;
    dac_locked_i : in STD_LOGIC;
    dac_dat_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_wrt_o : out STD_LOGIC;
    dac_sel_o : out STD_LOGIC;
    dac_clk_o : out STD_LOGIC;
    dac_rst_o : out STD_LOGIC;
    dac_dat_a_en_i : in STD_LOGIC;
    dac_dat_a_rst_i : in STD_LOGIC;
    dac_dat_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_dat_b_en_i : in STD_LOGIC;
    dac_dat_b_rst_i : in STD_LOGIC;
    dac_dat_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of double_dds_wrapper_ad9767_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of double_dds_wrapper_ad9767_0_0 : entity is "double_dds_wrapper_ad9767_0_0,ad9767,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of double_dds_wrapper_ad9767_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of double_dds_wrapper_ad9767_0_0 : entity is "ad9767,Vivado 2016.4";
end double_dds_wrapper_ad9767_0_0;

architecture STRUCTURE of double_dds_wrapper_ad9767_0_0 is
begin
inst: entity work.double_dds_wrapper_ad9767_0_0_ad9767
     port map (
      dac_2clk_i => dac_2clk_i,
      dac_2ph_i => dac_2ph_i,
      dac_clk_i => dac_clk_i,
      dac_clk_o => dac_clk_o,
      dac_dat_a_en_i => dac_dat_a_en_i,
      dac_dat_a_i(13 downto 0) => dac_dat_a_i(13 downto 0),
      dac_dat_b_en_i => dac_dat_b_en_i,
      dac_dat_b_i(13 downto 0) => dac_dat_b_i(13 downto 0),
      dac_dat_o(13 downto 0) => dac_dat_o(13 downto 0),
      dac_locked_i => dac_locked_i,
      dac_rst_o => dac_rst_o,
      dac_sel_o => dac_sel_o,
      dac_wrt_o => dac_wrt_o
    );
end STRUCTURE;
