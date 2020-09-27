-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri May 15 18:38:15 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top double_iq_pid_vco_mixer_sin_5_0 -prefix
--               double_iq_pid_vco_mixer_sin_5_0_ double_iq_pid_vco_mixer_sin_0_0_sim_netlist.vhdl
-- Design      : double_iq_pid_vco_mixer_sin_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_mixer_sin_5_0_mixer_redim is
  port (
    data_en_o : out STD_LOGIC;
    data_i_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_q_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_rst_i : in STD_LOGIC;
    data_en_s : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    i_is_null_d0_s : in STD_LOGIC;
    q_is_null_d0_s : in STD_LOGIC;
    P : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \shift_data.data_i_in_s_reg[13]_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end double_iq_pid_vco_mixer_sin_5_0_mixer_redim;

architecture STRUCTURE of double_iq_pid_vco_mixer_sin_5_0_mixer_redim is
  signal \_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_4\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_5\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_6\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_7\ : STD_LOGIC;
  signal \_inferred__2/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__2/i__carry__2_n_6\ : STD_LOGIC;
  signal \_inferred__2/i__carry__2_n_7\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_4\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_5\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_6\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_7\ : STD_LOGIC;
  signal data_en_in_s : STD_LOGIC;
  signal data_i_in_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data_q_in_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal i_is_null_s : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal q_is_null_s : STD_LOGIC;
  signal \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW__inferred__2/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__2/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => data_i_in_s(2),
      DI(2) => \i__carry_i_1_n_0\,
      DI(1) => '0',
      DI(0) => data_i_in_s(0),
      O(3 downto 0) => p_0_in(3 downto 0),
      S(3) => \i__carry_i_2_n_0\,
      S(2 downto 1) => data_i_in_s(2 downto 1),
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
      DI(3 downto 0) => data_i_in_s(6 downto 3),
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
      DI(3 downto 0) => data_i_in_s(10 downto 7),
      O(3 downto 0) => p_0_in(11 downto 8),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__1_n_0\,
      CO(3 downto 1) => \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => data_i_in_s(11),
      O(3 downto 2) => \NLW__inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => p_0_in(13 downto 12),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__2_i_1_n_0\,
      S(0) => \i__carry__2_i_2_n_0\
    );
\_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__2/i__carry_n_0\,
      CO(2) => \_inferred__2/i__carry_n_1\,
      CO(1) => \_inferred__2/i__carry_n_2\,
      CO(0) => \_inferred__2/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => data_q_in_s(2),
      DI(2) => \i__carry_i_1__0_n_0\,
      DI(1) => '0',
      DI(0) => data_q_in_s(0),
      O(3) => \_inferred__2/i__carry_n_4\,
      O(2) => \_inferred__2/i__carry_n_5\,
      O(1) => \_inferred__2/i__carry_n_6\,
      O(0) => \_inferred__2/i__carry_n_7\,
      S(3) => \i__carry_i_2__0_n_0\,
      S(2 downto 1) => data_q_in_s(2 downto 1),
      S(0) => \i__carry_i_3__0_n_0\
    );
\_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__2/i__carry_n_0\,
      CO(3) => \_inferred__2/i__carry__0_n_0\,
      CO(2) => \_inferred__2/i__carry__0_n_1\,
      CO(1) => \_inferred__2/i__carry__0_n_2\,
      CO(0) => \_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_q_in_s(6 downto 3),
      O(3) => \_inferred__2/i__carry__0_n_4\,
      O(2) => \_inferred__2/i__carry__0_n_5\,
      O(1) => \_inferred__2/i__carry__0_n_6\,
      O(0) => \_inferred__2/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\_inferred__2/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__2/i__carry__0_n_0\,
      CO(3) => \_inferred__2/i__carry__1_n_0\,
      CO(2) => \_inferred__2/i__carry__1_n_1\,
      CO(1) => \_inferred__2/i__carry__1_n_2\,
      CO(0) => \_inferred__2/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_q_in_s(10 downto 7),
      O(3) => \_inferred__2/i__carry__1_n_4\,
      O(2) => \_inferred__2/i__carry__1_n_5\,
      O(1) => \_inferred__2/i__carry__1_n_6\,
      O(0) => \_inferred__2/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2__0_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4__0_n_0\
    );
\_inferred__2/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__2/i__carry__1_n_0\,
      CO(3 downto 1) => \NLW__inferred__2/i__carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__2/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => data_q_in_s(11),
      O(3 downto 2) => \NLW__inferred__2/i__carry__2_O_UNCONNECTED\(3 downto 2),
      O(1) => \_inferred__2/i__carry__2_n_6\,
      O(0) => \_inferred__2/i__carry__2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i__carry__2_i_1__0_n_0\,
      S(0) => \i__carry__2_i_2__0_n_0\
    );
data_en_out_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_en_in_s,
      Q => data_en_o,
      R => data_rst_i
    );
\data_i_out_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => p_0_in(0),
      Q => data_i_o(0),
      R => data_rst_i
    );
\data_i_out_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => p_0_in(10),
      Q => data_i_o(10),
      R => data_rst_i
    );
\data_i_out_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => p_0_in(11),
      Q => data_i_o(11),
      R => data_rst_i
    );
\data_i_out_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => p_0_in(12),
      Q => data_i_o(12),
      R => data_rst_i
    );
\data_i_out_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => p_0_in(13),
      Q => data_i_o(13),
      R => data_rst_i
    );
\data_i_out_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => p_0_in(1),
      Q => data_i_o(1),
      R => data_rst_i
    );
\data_i_out_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => p_0_in(2),
      Q => data_i_o(2),
      R => data_rst_i
    );
\data_i_out_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => p_0_in(3),
      Q => data_i_o(3),
      R => data_rst_i
    );
\data_i_out_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => p_0_in(4),
      Q => data_i_o(4),
      R => data_rst_i
    );
\data_i_out_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => p_0_in(5),
      Q => data_i_o(5),
      R => data_rst_i
    );
\data_i_out_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => p_0_in(6),
      Q => data_i_o(6),
      R => data_rst_i
    );
\data_i_out_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => p_0_in(7),
      Q => data_i_o(7),
      R => data_rst_i
    );
\data_i_out_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => p_0_in(8),
      Q => data_i_o(8),
      R => data_rst_i
    );
\data_i_out_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => p_0_in(9),
      Q => data_i_o(9),
      R => data_rst_i
    );
\data_q_out_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => \_inferred__2/i__carry_n_7\,
      Q => data_q_o(0),
      R => data_rst_i
    );
\data_q_out_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => \_inferred__2/i__carry__1_n_5\,
      Q => data_q_o(10),
      R => data_rst_i
    );
\data_q_out_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => \_inferred__2/i__carry__1_n_4\,
      Q => data_q_o(11),
      R => data_rst_i
    );
\data_q_out_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => \_inferred__2/i__carry__2_n_7\,
      Q => data_q_o(12),
      R => data_rst_i
    );
\data_q_out_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => \_inferred__2/i__carry__2_n_6\,
      Q => data_q_o(13),
      R => data_rst_i
    );
\data_q_out_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => \_inferred__2/i__carry_n_6\,
      Q => data_q_o(1),
      R => data_rst_i
    );
\data_q_out_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => \_inferred__2/i__carry_n_5\,
      Q => data_q_o(2),
      R => data_rst_i
    );
\data_q_out_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => \_inferred__2/i__carry_n_4\,
      Q => data_q_o(3),
      R => data_rst_i
    );
\data_q_out_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => \_inferred__2/i__carry__0_n_7\,
      Q => data_q_o(4),
      R => data_rst_i
    );
\data_q_out_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => \_inferred__2/i__carry__0_n_6\,
      Q => data_q_o(5),
      R => data_rst_i
    );
\data_q_out_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => \_inferred__2/i__carry__0_n_5\,
      Q => data_q_o(6),
      R => data_rst_i
    );
\data_q_out_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => \_inferred__2/i__carry__0_n_4\,
      Q => data_q_o(7),
      R => data_rst_i
    );
\data_q_out_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => \_inferred__2/i__carry__1_n_7\,
      Q => data_q_o(8),
      R => data_rst_i
    );
\data_q_out_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_in_s,
      D => \_inferred__2/i__carry__1_n_6\,
      Q => data_q_o(9),
      R => data_rst_i
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_i_in_s(6),
      I1 => data_i_in_s(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_q_in_s(6),
      I1 => data_q_in_s(7),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_i_in_s(5),
      I1 => data_i_in_s(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_q_in_s(5),
      I1 => data_q_in_s(6),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_i_in_s(4),
      I1 => data_i_in_s(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_q_in_s(4),
      I1 => data_q_in_s(5),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_i_in_s(3),
      I1 => data_i_in_s(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_q_in_s(3),
      I1 => data_q_in_s(4),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_i_in_s(10),
      I1 => data_i_in_s(11),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_q_in_s(10),
      I1 => data_q_in_s(11),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_i_in_s(9),
      I1 => data_i_in_s(10),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_q_in_s(9),
      I1 => data_q_in_s(10),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_i_in_s(8),
      I1 => data_i_in_s(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_q_in_s(8),
      I1 => data_q_in_s(9),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_i_in_s(7),
      I1 => data_i_in_s(8),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_q_in_s(7),
      I1 => data_q_in_s(8),
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_i_in_s(12),
      I1 => data_i_in_s(13),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_q_in_s(12),
      I1 => data_q_in_s(13),
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_i_in_s(11),
      I1 => data_i_in_s(12),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_q_in_s(11),
      I1 => data_q_in_s(12),
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i_in_s(2),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_q_in_s(2),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_i_in_s(2),
      I1 => data_i_in_s(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_q_in_s(2),
      I1 => data_q_in_s(3),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => i_is_null_s,
      I1 => data_i_in_s(13),
      I2 => data_i_in_s(0),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => q_is_null_s,
      I1 => data_q_in_s(13),
      I2 => data_q_in_s(0),
      O => \i__carry_i_3__0_n_0\
    );
\shift_data.data_en_in_s_reg\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_en_s,
      Q => data_en_in_s,
      R => data_rst_i
    );
\shift_data.data_i_in_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \shift_data.data_i_in_s_reg[13]_0\(0),
      Q => data_i_in_s(0),
      R => data_rst_i
    );
\shift_data.data_i_in_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \shift_data.data_i_in_s_reg[13]_0\(10),
      Q => data_i_in_s(10),
      R => data_rst_i
    );
\shift_data.data_i_in_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \shift_data.data_i_in_s_reg[13]_0\(11),
      Q => data_i_in_s(11),
      R => data_rst_i
    );
\shift_data.data_i_in_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \shift_data.data_i_in_s_reg[13]_0\(12),
      Q => data_i_in_s(12),
      R => data_rst_i
    );
\shift_data.data_i_in_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \shift_data.data_i_in_s_reg[13]_0\(13),
      Q => data_i_in_s(13),
      R => data_rst_i
    );
\shift_data.data_i_in_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \shift_data.data_i_in_s_reg[13]_0\(1),
      Q => data_i_in_s(1),
      R => data_rst_i
    );
\shift_data.data_i_in_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \shift_data.data_i_in_s_reg[13]_0\(2),
      Q => data_i_in_s(2),
      R => data_rst_i
    );
\shift_data.data_i_in_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \shift_data.data_i_in_s_reg[13]_0\(3),
      Q => data_i_in_s(3),
      R => data_rst_i
    );
\shift_data.data_i_in_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \shift_data.data_i_in_s_reg[13]_0\(4),
      Q => data_i_in_s(4),
      R => data_rst_i
    );
\shift_data.data_i_in_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \shift_data.data_i_in_s_reg[13]_0\(5),
      Q => data_i_in_s(5),
      R => data_rst_i
    );
\shift_data.data_i_in_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \shift_data.data_i_in_s_reg[13]_0\(6),
      Q => data_i_in_s(6),
      R => data_rst_i
    );
\shift_data.data_i_in_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \shift_data.data_i_in_s_reg[13]_0\(7),
      Q => data_i_in_s(7),
      R => data_rst_i
    );
\shift_data.data_i_in_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \shift_data.data_i_in_s_reg[13]_0\(8),
      Q => data_i_in_s(8),
      R => data_rst_i
    );
\shift_data.data_i_in_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \shift_data.data_i_in_s_reg[13]_0\(9),
      Q => data_i_in_s(9),
      R => data_rst_i
    );
\shift_data.data_q_in_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => P(0),
      Q => data_q_in_s(0),
      R => data_rst_i
    );
\shift_data.data_q_in_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => P(10),
      Q => data_q_in_s(10),
      R => data_rst_i
    );
\shift_data.data_q_in_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => P(11),
      Q => data_q_in_s(11),
      R => data_rst_i
    );
\shift_data.data_q_in_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => P(12),
      Q => data_q_in_s(12),
      R => data_rst_i
    );
\shift_data.data_q_in_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => P(13),
      Q => data_q_in_s(13),
      R => data_rst_i
    );
\shift_data.data_q_in_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => P(1),
      Q => data_q_in_s(1),
      R => data_rst_i
    );
\shift_data.data_q_in_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => P(2),
      Q => data_q_in_s(2),
      R => data_rst_i
    );
\shift_data.data_q_in_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => P(3),
      Q => data_q_in_s(3),
      R => data_rst_i
    );
\shift_data.data_q_in_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => P(4),
      Q => data_q_in_s(4),
      R => data_rst_i
    );
\shift_data.data_q_in_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => P(5),
      Q => data_q_in_s(5),
      R => data_rst_i
    );
\shift_data.data_q_in_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => P(6),
      Q => data_q_in_s(6),
      R => data_rst_i
    );
\shift_data.data_q_in_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => P(7),
      Q => data_q_in_s(7),
      R => data_rst_i
    );
\shift_data.data_q_in_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => P(8),
      Q => data_q_in_s(8),
      R => data_rst_i
    );
\shift_data.data_q_in_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => P(9),
      Q => data_q_in_s(9),
      R => data_rst_i
    );
\shift_data.i_is_null_s_reg\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => i_is_null_d0_s,
      Q => i_is_null_s,
      R => data_rst_i
    );
\shift_data.q_is_null_s_reg\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => q_is_null_d0_s,
      Q => q_is_null_s,
      R => data_rst_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_mixer_sin_5_0_mixer_sin is
  port (
    data_en_o : out STD_LOGIC;
    data_i_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_q_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_rst_i : in STD_LOGIC;
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    nco_en_i : in STD_LOGIC;
    nco_clk_i : in STD_LOGIC;
    nco_rst_i : in STD_LOGIC;
    nco_i_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    nco_q_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end double_iq_pid_vco_mixer_sin_5_0_mixer_sin;

architecture STRUCTURE of double_iq_pid_vco_mixer_sin_5_0_mixer_sin is
  signal SHIFT_RIGHT : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data_en_s : STD_LOGIC;
  signal data_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal i_is_null_d0_s : STD_LOGIC;
  signal q_is_neg_d0_s : STD_LOGIC;
  signal q_is_null_d0_s : STD_LOGIC;
  signal res_i_s_n_100 : STD_LOGIC;
  signal res_i_s_n_101 : STD_LOGIC;
  signal res_i_s_n_102 : STD_LOGIC;
  signal res_i_s_n_103 : STD_LOGIC;
  signal res_i_s_n_104 : STD_LOGIC;
  signal res_i_s_n_105 : STD_LOGIC;
  signal res_i_s_n_76 : STD_LOGIC;
  signal res_i_s_n_91 : STD_LOGIC;
  signal res_i_s_n_92 : STD_LOGIC;
  signal res_i_s_n_93 : STD_LOGIC;
  signal res_i_s_n_94 : STD_LOGIC;
  signal res_i_s_n_95 : STD_LOGIC;
  signal res_i_s_n_96 : STD_LOGIC;
  signal res_i_s_n_97 : STD_LOGIC;
  signal res_i_s_n_98 : STD_LOGIC;
  signal res_i_s_n_99 : STD_LOGIC;
  signal res_q_s_n_100 : STD_LOGIC;
  signal res_q_s_n_101 : STD_LOGIC;
  signal res_q_s_n_102 : STD_LOGIC;
  signal res_q_s_n_103 : STD_LOGIC;
  signal res_q_s_n_104 : STD_LOGIC;
  signal res_q_s_n_105 : STD_LOGIC;
  signal res_q_s_n_76 : STD_LOGIC;
  signal res_q_s_n_78 : STD_LOGIC;
  signal res_q_s_n_79 : STD_LOGIC;
  signal res_q_s_n_80 : STD_LOGIC;
  signal res_q_s_n_81 : STD_LOGIC;
  signal res_q_s_n_82 : STD_LOGIC;
  signal res_q_s_n_83 : STD_LOGIC;
  signal res_q_s_n_84 : STD_LOGIC;
  signal res_q_s_n_85 : STD_LOGIC;
  signal res_q_s_n_86 : STD_LOGIC;
  signal res_q_s_n_87 : STD_LOGIC;
  signal res_q_s_n_88 : STD_LOGIC;
  signal res_q_s_n_89 : STD_LOGIC;
  signal res_q_s_n_90 : STD_LOGIC;
  signal res_q_s_n_91 : STD_LOGIC;
  signal res_q_s_n_92 : STD_LOGIC;
  signal res_q_s_n_93 : STD_LOGIC;
  signal res_q_s_n_94 : STD_LOGIC;
  signal res_q_s_n_95 : STD_LOGIC;
  signal res_q_s_n_96 : STD_LOGIC;
  signal res_q_s_n_97 : STD_LOGIC;
  signal res_q_s_n_98 : STD_LOGIC;
  signal res_q_s_n_99 : STD_LOGIC;
  signal NLW_res_i_s_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_i_s_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_i_s_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_i_s_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_i_s_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_i_s_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_res_i_s_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_i_s_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_i_s_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 30 );
  signal NLW_res_i_s_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_res_q_s_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_q_s_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_q_s_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_q_s_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_q_s_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_q_s_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_res_q_s_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_q_s_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_q_s_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 30 );
  signal NLW_res_q_s_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of res_i_s : label is "{SYNTH-11 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of res_q_s : label is "{SYNTH-11 {cell *THIS*}}";
begin
data_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_en_i,
      Q => data_en_s,
      R => data_rst_i
    );
\data_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(0),
      Q => data_s(0),
      R => data_rst_i
    );
\data_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(10),
      Q => data_s(10),
      R => data_rst_i
    );
\data_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(11),
      Q => data_s(11),
      R => data_rst_i
    );
\data_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(12),
      Q => data_s(12),
      R => data_rst_i
    );
\data_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(13),
      Q => data_s(13),
      R => data_rst_i
    );
\data_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(1),
      Q => data_s(1),
      R => data_rst_i
    );
\data_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(2),
      Q => data_s(2),
      R => data_rst_i
    );
\data_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(3),
      Q => data_s(3),
      R => data_rst_i
    );
\data_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(4),
      Q => data_s(4),
      R => data_rst_i
    );
\data_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(5),
      Q => data_s(5),
      R => data_rst_i
    );
\data_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(6),
      Q => data_s(6),
      R => data_rst_i
    );
\data_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(7),
      Q => data_s(7),
      R => data_rst_i
    );
\data_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(8),
      Q => data_s(8),
      R => data_rst_i
    );
\data_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(9),
      Q => data_s(9),
      R => data_rst_i
    );
res_i_s: unisim.vcomponents.DSP48E1
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
      MASK => X"FFFFFFFF8000",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"FFFFFFFF8000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => nco_i_i(15),
      A(28) => nco_i_i(15),
      A(27) => nco_i_i(15),
      A(26) => nco_i_i(15),
      A(25) => nco_i_i(15),
      A(24) => nco_i_i(15),
      A(23) => nco_i_i(15),
      A(22) => nco_i_i(15),
      A(21) => nco_i_i(15),
      A(20) => nco_i_i(15),
      A(19) => nco_i_i(15),
      A(18) => nco_i_i(15),
      A(17) => nco_i_i(15),
      A(16) => nco_i_i(15),
      A(15 downto 0) => nco_i_i(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_res_i_s_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_s(13),
      B(16) => data_s(13),
      B(15) => data_s(13),
      B(14) => data_s(13),
      B(13 downto 0) => data_s(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_i_s_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_i_s_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_i_s_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => nco_en_i,
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
      CEP => '0',
      CLK => nco_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_i_s_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_res_i_s_OVERFLOW_UNCONNECTED,
      P(47 downto 30) => NLW_res_i_s_P_UNCONNECTED(47 downto 30),
      P(29) => res_i_s_n_76,
      P(28 downto 15) => SHIFT_RIGHT(13 downto 0),
      P(14) => res_i_s_n_91,
      P(13) => res_i_s_n_92,
      P(12) => res_i_s_n_93,
      P(11) => res_i_s_n_94,
      P(10) => res_i_s_n_95,
      P(9) => res_i_s_n_96,
      P(8) => res_i_s_n_97,
      P(7) => res_i_s_n_98,
      P(6) => res_i_s_n_99,
      P(5) => res_i_s_n_100,
      P(4) => res_i_s_n_101,
      P(3) => res_i_s_n_102,
      P(2) => res_i_s_n_103,
      P(1) => res_i_s_n_104,
      P(0) => res_i_s_n_105,
      PATTERNBDETECT => NLW_res_i_s_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => i_is_null_d0_s,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_i_s_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => nco_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_res_i_s_UNDERFLOW_UNCONNECTED
    );
res_q_s: unisim.vcomponents.DSP48E1
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
      MASK => X"FFFFFFFF8000",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"FFFFFFFF8000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => nco_q_i(15),
      A(28) => nco_q_i(15),
      A(27) => nco_q_i(15),
      A(26) => nco_q_i(15),
      A(25) => nco_q_i(15),
      A(24) => nco_q_i(15),
      A(23) => nco_q_i(15),
      A(22) => nco_q_i(15),
      A(21) => nco_q_i(15),
      A(20) => nco_q_i(15),
      A(19) => nco_q_i(15),
      A(18) => nco_q_i(15),
      A(17) => nco_q_i(15),
      A(16) => nco_q_i(15),
      A(15 downto 0) => nco_q_i(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_res_q_s_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_s(13),
      B(16) => data_s(13),
      B(15) => data_s(13),
      B(14) => data_s(13),
      B(13 downto 0) => data_s(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_q_s_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_q_s_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_q_s_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => nco_en_i,
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
      CEP => '0',
      CLK => nco_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_q_s_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_res_q_s_OVERFLOW_UNCONNECTED,
      P(47 downto 30) => NLW_res_q_s_P_UNCONNECTED(47 downto 30),
      P(29) => res_q_s_n_76,
      P(28) => q_is_neg_d0_s,
      P(27) => res_q_s_n_78,
      P(26) => res_q_s_n_79,
      P(25) => res_q_s_n_80,
      P(24) => res_q_s_n_81,
      P(23) => res_q_s_n_82,
      P(22) => res_q_s_n_83,
      P(21) => res_q_s_n_84,
      P(20) => res_q_s_n_85,
      P(19) => res_q_s_n_86,
      P(18) => res_q_s_n_87,
      P(17) => res_q_s_n_88,
      P(16) => res_q_s_n_89,
      P(15) => res_q_s_n_90,
      P(14) => res_q_s_n_91,
      P(13) => res_q_s_n_92,
      P(12) => res_q_s_n_93,
      P(11) => res_q_s_n_94,
      P(10) => res_q_s_n_95,
      P(9) => res_q_s_n_96,
      P(8) => res_q_s_n_97,
      P(7) => res_q_s_n_98,
      P(6) => res_q_s_n_99,
      P(5) => res_q_s_n_100,
      P(4) => res_q_s_n_101,
      P(3) => res_q_s_n_102,
      P(2) => res_q_s_n_103,
      P(1) => res_q_s_n_104,
      P(0) => res_q_s_n_105,
      PATTERNBDETECT => NLW_res_q_s_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => q_is_null_d0_s,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_q_s_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => nco_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_res_q_s_UNDERFLOW_UNCONNECTED
    );
resize_inst: entity work.double_iq_pid_vco_mixer_sin_5_0_mixer_redim
     port map (
      P(13) => q_is_neg_d0_s,
      P(12) => res_q_s_n_78,
      P(11) => res_q_s_n_79,
      P(10) => res_q_s_n_80,
      P(9) => res_q_s_n_81,
      P(8) => res_q_s_n_82,
      P(7) => res_q_s_n_83,
      P(6) => res_q_s_n_84,
      P(5) => res_q_s_n_85,
      P(4) => res_q_s_n_86,
      P(3) => res_q_s_n_87,
      P(2) => res_q_s_n_88,
      P(1) => res_q_s_n_89,
      P(0) => res_q_s_n_90,
      data_clk_i => data_clk_i,
      data_en_o => data_en_o,
      data_en_s => data_en_s,
      data_i_o(13 downto 0) => data_i_o(13 downto 0),
      data_q_o(13 downto 0) => data_q_o(13 downto 0),
      data_rst_i => data_rst_i,
      i_is_null_d0_s => i_is_null_d0_s,
      q_is_null_d0_s => q_is_null_d0_s,
      \shift_data.data_i_in_s_reg[13]_0\(13 downto 0) => SHIFT_RIGHT(13 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_mixer_sin_5_0 is
  port (
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    nco_i_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    nco_q_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
  attribute NotValidForBitStream of double_iq_pid_vco_mixer_sin_5_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of double_iq_pid_vco_mixer_sin_5_0 : entity is "double_iq_pid_vco_mixer_sin_0_0,mixer_sin,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of double_iq_pid_vco_mixer_sin_5_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of double_iq_pid_vco_mixer_sin_5_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of double_iq_pid_vco_mixer_sin_5_0 : entity is "mixer_sin,Vivado 2019.2";
end double_iq_pid_vco_mixer_sin_5_0;

architecture STRUCTURE of double_iq_pid_vco_mixer_sin_5_0 is
  signal \^data_clk_i\ : STD_LOGIC;
  signal \^data_rst_i\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of data_clk_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_CLK";
  attribute x_interface_info of data_clk_o : signal is "xilinx.com:interface:complex:1.0 data_out DATA_CLK";
  attribute x_interface_info of data_en_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_EN";
  attribute x_interface_info of data_en_o : signal is "xilinx.com:interface:complex:1.0 data_out DATA_EN";
  attribute x_interface_info of data_rst_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_RST";
  attribute x_interface_info of data_rst_o : signal is "xilinx.com:interface:complex:1.0 data_out DATA_RST";
  attribute x_interface_info of nco_clk_i : signal is "xilinx.com:interface:complex:1.0 nco_in DATA_CLK";
  attribute x_interface_info of nco_en_i : signal is "xilinx.com:interface:complex:1.0 nco_in DATA_EN";
  attribute x_interface_info of nco_rst_i : signal is "xilinx.com:interface:complex:1.0 nco_in DATA_RST";
  attribute x_interface_info of data_i : signal is "xilinx.com:interface:real:1.0 data_in DATA";
  attribute x_interface_info of data_i_o : signal is "xilinx.com:interface:complex:1.0 data_out DATA_I";
  attribute x_interface_info of data_q_o : signal is "xilinx.com:interface:complex:1.0 data_out DATA_Q";
  attribute x_interface_info of nco_i_i : signal is "xilinx.com:interface:complex:1.0 nco_in DATA_I";
  attribute x_interface_info of nco_q_i : signal is "xilinx.com:interface:complex:1.0 nco_in DATA_Q";
begin
  \^data_clk_i\ <= data_clk_i;
  \^data_rst_i\ <= data_rst_i;
  data_clk_o <= \^data_clk_i\;
  data_rst_o <= \^data_rst_i\;
U0: entity work.double_iq_pid_vco_mixer_sin_5_0_mixer_sin
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
      nco_i_i(15 downto 0) => nco_i_i(15 downto 0),
      nco_q_i(15 downto 0) => nco_q_i(15 downto 0),
      nco_rst_i => nco_rst_i
    );
end STRUCTURE;
