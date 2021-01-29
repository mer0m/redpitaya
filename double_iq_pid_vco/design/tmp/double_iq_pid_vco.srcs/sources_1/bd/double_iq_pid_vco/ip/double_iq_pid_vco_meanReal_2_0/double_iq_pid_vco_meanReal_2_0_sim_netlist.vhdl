-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Jan 29 17:07:40 2021
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/fpga_design/redpitaya/double_iq_pid_vco/design/tmp/double_iq_pid_vco.srcs/sources_1/bd/double_iq_pid_vco/ip/double_iq_pid_vco_meanReal_2_0/double_iq_pid_vco_meanReal_2_0_sim_netlist.vhdl
-- Design      : double_iq_pid_vco_meanReal_2_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_meanReal_2_0_meanReal is
  port (
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_en_o : out STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_rst_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_en_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_meanReal_2_0_meanReal : entity is "meanReal";
end double_iq_pid_vco_meanReal_2_0_meanReal;

architecture STRUCTURE of double_iq_pid_vco_meanReal_2_0_meanReal is
  signal \accum_next_s_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__0_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__0_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__0_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__0_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__1_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__1_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__1_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__2_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__2_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__2_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__3_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__3_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__3_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__4_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__4_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__4_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__5_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__5_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__5_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__5_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__6_i_1_n_0\ : STD_LOGIC;
  signal accum_next_s_carry_i_1_n_0 : STD_LOGIC;
  signal accum_next_s_carry_i_2_n_0 : STD_LOGIC;
  signal accum_next_s_carry_i_3_n_0 : STD_LOGIC;
  signal accum_next_s_carry_i_4_n_0 : STD_LOGIC;
  signal accum_next_s_carry_n_0 : STD_LOGIC;
  signal accum_next_s_carry_n_1 : STD_LOGIC;
  signal accum_next_s_carry_n_2 : STD_LOGIC;
  signal accum_next_s_carry_n_3 : STD_LOGIC;
  signal \accum_s[0]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[0]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[0]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[0]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[12]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[12]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[12]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[12]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[16]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[16]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[16]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[16]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[20]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[20]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[20]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[20]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[24]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[24]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[24]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[24]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[28]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[4]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[4]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[4]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[4]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[8]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[8]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[8]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[8]_i_5_n_0\ : STD_LOGIC;
  signal accum_s_reg : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \accum_s_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal cpt : STD_LOGIC;
  signal \cpt[0]_i_3_n_0\ : STD_LOGIC;
  signal cpt_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \cpt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cpt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cpt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cpt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cpt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cpt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cpt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cpt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cpt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cpt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cpt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal data_en_o_i_1_n_0 : STD_LOGIC;
  signal data_en_o_i_2_n_0 : STD_LOGIC;
  signal \final_s[15]_i_1_n_0\ : STD_LOGIC;
  signal \final_s[15]_i_2_n_0\ : STD_LOGIC;
  signal \final_s[15]_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_accum_next_s_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_accum_next_s_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_accum_next_s_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_accum_next_s_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_accum_next_s_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_accum_next_s_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_accum_s_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_accum_s_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cpt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cpt_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
accum_next_s_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => accum_next_s_carry_n_0,
      CO(2) => accum_next_s_carry_n_1,
      CO(1) => accum_next_s_carry_n_2,
      CO(0) => accum_next_s_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => data_i(3 downto 0),
      O(3 downto 0) => NLW_accum_next_s_carry_O_UNCONNECTED(3 downto 0),
      S(3) => accum_next_s_carry_i_1_n_0,
      S(2) => accum_next_s_carry_i_2_n_0,
      S(1) => accum_next_s_carry_i_3_n_0,
      S(0) => accum_next_s_carry_i_4_n_0
    );
\accum_next_s_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => accum_next_s_carry_n_0,
      CO(3) => \accum_next_s_carry__0_n_0\,
      CO(2) => \accum_next_s_carry__0_n_1\,
      CO(1) => \accum_next_s_carry__0_n_2\,
      CO(0) => \accum_next_s_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_i(7 downto 4),
      O(3 downto 0) => \NLW_accum_next_s_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \accum_next_s_carry__0_i_1_n_0\,
      S(2) => \accum_next_s_carry__0_i_2_n_0\,
      S(1) => \accum_next_s_carry__0_i_3_n_0\,
      S(0) => \accum_next_s_carry__0_i_4_n_0\
    );
\accum_next_s_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(7),
      I1 => accum_s_reg(7),
      O => \accum_next_s_carry__0_i_1_n_0\
    );
\accum_next_s_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(6),
      I1 => accum_s_reg(6),
      O => \accum_next_s_carry__0_i_2_n_0\
    );
\accum_next_s_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(5),
      I1 => accum_s_reg(5),
      O => \accum_next_s_carry__0_i_3_n_0\
    );
\accum_next_s_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(4),
      I1 => accum_s_reg(4),
      O => \accum_next_s_carry__0_i_4_n_0\
    );
\accum_next_s_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__0_n_0\,
      CO(3) => \accum_next_s_carry__1_n_0\,
      CO(2) => \accum_next_s_carry__1_n_1\,
      CO(1) => \accum_next_s_carry__1_n_2\,
      CO(0) => \accum_next_s_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_i(11 downto 8),
      O(3 downto 0) => \NLW_accum_next_s_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \accum_next_s_carry__1_i_1_n_0\,
      S(2) => \accum_next_s_carry__1_i_2_n_0\,
      S(1) => \accum_next_s_carry__1_i_3_n_0\,
      S(0) => \accum_next_s_carry__1_i_4_n_0\
    );
\accum_next_s_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(11),
      I1 => accum_s_reg(11),
      O => \accum_next_s_carry__1_i_1_n_0\
    );
\accum_next_s_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(10),
      I1 => accum_s_reg(10),
      O => \accum_next_s_carry__1_i_2_n_0\
    );
\accum_next_s_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(9),
      I1 => accum_s_reg(9),
      O => \accum_next_s_carry__1_i_3_n_0\
    );
\accum_next_s_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(8),
      I1 => accum_s_reg(8),
      O => \accum_next_s_carry__1_i_4_n_0\
    );
\accum_next_s_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__1_n_0\,
      CO(3) => \accum_next_s_carry__2_n_0\,
      CO(2) => \accum_next_s_carry__2_n_1\,
      CO(1) => \accum_next_s_carry__2_n_2\,
      CO(0) => \accum_next_s_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => accum_s_reg(14 downto 13),
      DI(1) => \accum_next_s_carry__2_i_1_n_0\,
      DI(0) => data_i(12),
      O(3 downto 1) => p_0_in(2 downto 0),
      O(0) => \NLW_accum_next_s_carry__2_O_UNCONNECTED\(0),
      S(3) => \accum_next_s_carry__2_i_2_n_0\,
      S(2) => \accum_next_s_carry__2_i_3_n_0\,
      S(1) => \accum_next_s_carry__2_i_4_n_0\,
      S(0) => \accum_next_s_carry__2_i_5_n_0\
    );
\accum_next_s_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => accum_s_reg(13),
      O => \accum_next_s_carry__2_i_1_n_0\
    );
\accum_next_s_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(14),
      I1 => accum_s_reg(15),
      O => \accum_next_s_carry__2_i_2_n_0\
    );
\accum_next_s_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(13),
      I1 => accum_s_reg(14),
      O => \accum_next_s_carry__2_i_3_n_0\
    );
\accum_next_s_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_s_reg(13),
      I1 => data_i(13),
      O => \accum_next_s_carry__2_i_4_n_0\
    );
\accum_next_s_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(12),
      I1 => accum_s_reg(12),
      O => \accum_next_s_carry__2_i_5_n_0\
    );
\accum_next_s_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__2_n_0\,
      CO(3) => \accum_next_s_carry__3_n_0\,
      CO(2) => \accum_next_s_carry__3_n_1\,
      CO(1) => \accum_next_s_carry__3_n_2\,
      CO(0) => \accum_next_s_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accum_s_reg(18 downto 15),
      O(3 downto 0) => p_0_in(6 downto 3),
      S(3) => \accum_next_s_carry__3_i_1_n_0\,
      S(2) => \accum_next_s_carry__3_i_2_n_0\,
      S(1) => \accum_next_s_carry__3_i_3_n_0\,
      S(0) => \accum_next_s_carry__3_i_4_n_0\
    );
\accum_next_s_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(18),
      I1 => accum_s_reg(19),
      O => \accum_next_s_carry__3_i_1_n_0\
    );
\accum_next_s_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(17),
      I1 => accum_s_reg(18),
      O => \accum_next_s_carry__3_i_2_n_0\
    );
\accum_next_s_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(16),
      I1 => accum_s_reg(17),
      O => \accum_next_s_carry__3_i_3_n_0\
    );
\accum_next_s_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(15),
      I1 => accum_s_reg(16),
      O => \accum_next_s_carry__3_i_4_n_0\
    );
\accum_next_s_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__3_n_0\,
      CO(3) => \accum_next_s_carry__4_n_0\,
      CO(2) => \accum_next_s_carry__4_n_1\,
      CO(1) => \accum_next_s_carry__4_n_2\,
      CO(0) => \accum_next_s_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accum_s_reg(22 downto 19),
      O(3 downto 0) => p_0_in(10 downto 7),
      S(3) => \accum_next_s_carry__4_i_1_n_0\,
      S(2) => \accum_next_s_carry__4_i_2_n_0\,
      S(1) => \accum_next_s_carry__4_i_3_n_0\,
      S(0) => \accum_next_s_carry__4_i_4_n_0\
    );
\accum_next_s_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(22),
      I1 => accum_s_reg(23),
      O => \accum_next_s_carry__4_i_1_n_0\
    );
\accum_next_s_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(21),
      I1 => accum_s_reg(22),
      O => \accum_next_s_carry__4_i_2_n_0\
    );
\accum_next_s_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(20),
      I1 => accum_s_reg(21),
      O => \accum_next_s_carry__4_i_3_n_0\
    );
\accum_next_s_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(19),
      I1 => accum_s_reg(20),
      O => \accum_next_s_carry__4_i_4_n_0\
    );
\accum_next_s_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__4_n_0\,
      CO(3) => \accum_next_s_carry__5_n_0\,
      CO(2) => \accum_next_s_carry__5_n_1\,
      CO(1) => \accum_next_s_carry__5_n_2\,
      CO(0) => \accum_next_s_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accum_s_reg(26 downto 23),
      O(3 downto 0) => p_0_in(14 downto 11),
      S(3) => \accum_next_s_carry__5_i_1_n_0\,
      S(2) => \accum_next_s_carry__5_i_2_n_0\,
      S(1) => \accum_next_s_carry__5_i_3_n_0\,
      S(0) => \accum_next_s_carry__5_i_4_n_0\
    );
\accum_next_s_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(26),
      I1 => accum_s_reg(27),
      O => \accum_next_s_carry__5_i_1_n_0\
    );
\accum_next_s_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(25),
      I1 => accum_s_reg(26),
      O => \accum_next_s_carry__5_i_2_n_0\
    );
\accum_next_s_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(24),
      I1 => accum_s_reg(25),
      O => \accum_next_s_carry__5_i_3_n_0\
    );
\accum_next_s_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(23),
      I1 => accum_s_reg(24),
      O => \accum_next_s_carry__5_i_4_n_0\
    );
\accum_next_s_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__5_n_0\,
      CO(3 downto 0) => \NLW_accum_next_s_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_accum_next_s_carry__6_O_UNCONNECTED\(3 downto 1),
      O(0) => p_0_in(15),
      S(3 downto 1) => B"000",
      S(0) => \accum_next_s_carry__6_i_1_n_0\
    );
\accum_next_s_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(28),
      I1 => accum_s_reg(27),
      O => \accum_next_s_carry__6_i_1_n_0\
    );
accum_next_s_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(3),
      I1 => accum_s_reg(3),
      O => accum_next_s_carry_i_1_n_0
    );
accum_next_s_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(2),
      I1 => accum_s_reg(2),
      O => accum_next_s_carry_i_2_n_0
    );
accum_next_s_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(1),
      I1 => accum_s_reg(1),
      O => accum_next_s_carry_i_3_n_0
    );
accum_next_s_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(0),
      I1 => accum_s_reg(0),
      O => accum_next_s_carry_i_4_n_0
    );
\accum_s[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(3),
      I1 => accum_s_reg(3),
      O => \accum_s[0]_i_2_n_0\
    );
\accum_s[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(2),
      I1 => accum_s_reg(2),
      O => \accum_s[0]_i_3_n_0\
    );
\accum_s[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(1),
      I1 => accum_s_reg(1),
      O => \accum_s[0]_i_4_n_0\
    );
\accum_s[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(0),
      I1 => accum_s_reg(0),
      O => \accum_s[0]_i_5_n_0\
    );
\accum_s[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(15),
      O => \accum_s[12]_i_2_n_0\
    );
\accum_s[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(14),
      O => \accum_s[12]_i_3_n_0\
    );
\accum_s[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(13),
      O => \accum_s[12]_i_4_n_0\
    );
\accum_s[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(12),
      I1 => accum_s_reg(12),
      O => \accum_s[12]_i_5_n_0\
    );
\accum_s[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(19),
      O => \accum_s[16]_i_2_n_0\
    );
\accum_s[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(18),
      O => \accum_s[16]_i_3_n_0\
    );
\accum_s[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(17),
      O => \accum_s[16]_i_4_n_0\
    );
\accum_s[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(16),
      O => \accum_s[16]_i_5_n_0\
    );
\accum_s[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(23),
      O => \accum_s[20]_i_2_n_0\
    );
\accum_s[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(22),
      O => \accum_s[20]_i_3_n_0\
    );
\accum_s[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(21),
      O => \accum_s[20]_i_4_n_0\
    );
\accum_s[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(20),
      O => \accum_s[20]_i_5_n_0\
    );
\accum_s[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(27),
      O => \accum_s[24]_i_2_n_0\
    );
\accum_s[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(26),
      O => \accum_s[24]_i_3_n_0\
    );
\accum_s[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(25),
      O => \accum_s[24]_i_4_n_0\
    );
\accum_s[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(24),
      O => \accum_s[24]_i_5_n_0\
    );
\accum_s[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_s_reg(28),
      I1 => data_i(13),
      O => \accum_s[28]_i_2_n_0\
    );
\accum_s[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(7),
      I1 => accum_s_reg(7),
      O => \accum_s[4]_i_2_n_0\
    );
\accum_s[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(6),
      I1 => accum_s_reg(6),
      O => \accum_s[4]_i_3_n_0\
    );
\accum_s[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(5),
      I1 => accum_s_reg(5),
      O => \accum_s[4]_i_4_n_0\
    );
\accum_s[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(4),
      I1 => accum_s_reg(4),
      O => \accum_s[4]_i_5_n_0\
    );
\accum_s[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(11),
      I1 => accum_s_reg(11),
      O => \accum_s[8]_i_2_n_0\
    );
\accum_s[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(10),
      I1 => accum_s_reg(10),
      O => \accum_s[8]_i_3_n_0\
    );
\accum_s[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(9),
      I1 => accum_s_reg(9),
      O => \accum_s[8]_i_4_n_0\
    );
\accum_s[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(8),
      I1 => accum_s_reg(8),
      O => \accum_s[8]_i_5_n_0\
    );
\accum_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[0]_i_1_n_7\,
      Q => accum_s_reg(0),
      R => cpt
    );
\accum_s_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \accum_s_reg[0]_i_1_n_0\,
      CO(2) => \accum_s_reg[0]_i_1_n_1\,
      CO(1) => \accum_s_reg[0]_i_1_n_2\,
      CO(0) => \accum_s_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_i(3 downto 0),
      O(3) => \accum_s_reg[0]_i_1_n_4\,
      O(2) => \accum_s_reg[0]_i_1_n_5\,
      O(1) => \accum_s_reg[0]_i_1_n_6\,
      O(0) => \accum_s_reg[0]_i_1_n_7\,
      S(3) => \accum_s[0]_i_2_n_0\,
      S(2) => \accum_s[0]_i_3_n_0\,
      S(1) => \accum_s[0]_i_4_n_0\,
      S(0) => \accum_s[0]_i_5_n_0\
    );
\accum_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[8]_i_1_n_5\,
      Q => accum_s_reg(10),
      R => cpt
    );
\accum_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[8]_i_1_n_4\,
      Q => accum_s_reg(11),
      R => cpt
    );
\accum_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[12]_i_1_n_7\,
      Q => accum_s_reg(12),
      R => cpt
    );
\accum_s_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[8]_i_1_n_0\,
      CO(3) => \accum_s_reg[12]_i_1_n_0\,
      CO(2) => \accum_s_reg[12]_i_1_n_1\,
      CO(1) => \accum_s_reg[12]_i_1_n_2\,
      CO(0) => \accum_s_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => data_i(13),
      DI(2) => data_i(13),
      DI(1 downto 0) => data_i(13 downto 12),
      O(3) => \accum_s_reg[12]_i_1_n_4\,
      O(2) => \accum_s_reg[12]_i_1_n_5\,
      O(1) => \accum_s_reg[12]_i_1_n_6\,
      O(0) => \accum_s_reg[12]_i_1_n_7\,
      S(3) => \accum_s[12]_i_2_n_0\,
      S(2) => \accum_s[12]_i_3_n_0\,
      S(1) => \accum_s[12]_i_4_n_0\,
      S(0) => \accum_s[12]_i_5_n_0\
    );
\accum_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[12]_i_1_n_6\,
      Q => accum_s_reg(13),
      R => cpt
    );
\accum_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[12]_i_1_n_5\,
      Q => accum_s_reg(14),
      R => cpt
    );
\accum_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[12]_i_1_n_4\,
      Q => accum_s_reg(15),
      R => cpt
    );
\accum_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[16]_i_1_n_7\,
      Q => accum_s_reg(16),
      R => cpt
    );
\accum_s_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[12]_i_1_n_0\,
      CO(3) => \accum_s_reg[16]_i_1_n_0\,
      CO(2) => \accum_s_reg[16]_i_1_n_1\,
      CO(1) => \accum_s_reg[16]_i_1_n_2\,
      CO(0) => \accum_s_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => data_i(13),
      DI(2) => data_i(13),
      DI(1) => data_i(13),
      DI(0) => data_i(13),
      O(3) => \accum_s_reg[16]_i_1_n_4\,
      O(2) => \accum_s_reg[16]_i_1_n_5\,
      O(1) => \accum_s_reg[16]_i_1_n_6\,
      O(0) => \accum_s_reg[16]_i_1_n_7\,
      S(3) => \accum_s[16]_i_2_n_0\,
      S(2) => \accum_s[16]_i_3_n_0\,
      S(1) => \accum_s[16]_i_4_n_0\,
      S(0) => \accum_s[16]_i_5_n_0\
    );
\accum_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[16]_i_1_n_6\,
      Q => accum_s_reg(17),
      R => cpt
    );
\accum_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[16]_i_1_n_5\,
      Q => accum_s_reg(18),
      R => cpt
    );
\accum_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[16]_i_1_n_4\,
      Q => accum_s_reg(19),
      R => cpt
    );
\accum_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[0]_i_1_n_6\,
      Q => accum_s_reg(1),
      R => cpt
    );
\accum_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[20]_i_1_n_7\,
      Q => accum_s_reg(20),
      R => cpt
    );
\accum_s_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[16]_i_1_n_0\,
      CO(3) => \accum_s_reg[20]_i_1_n_0\,
      CO(2) => \accum_s_reg[20]_i_1_n_1\,
      CO(1) => \accum_s_reg[20]_i_1_n_2\,
      CO(0) => \accum_s_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => data_i(13),
      DI(2) => data_i(13),
      DI(1) => data_i(13),
      DI(0) => data_i(13),
      O(3) => \accum_s_reg[20]_i_1_n_4\,
      O(2) => \accum_s_reg[20]_i_1_n_5\,
      O(1) => \accum_s_reg[20]_i_1_n_6\,
      O(0) => \accum_s_reg[20]_i_1_n_7\,
      S(3) => \accum_s[20]_i_2_n_0\,
      S(2) => \accum_s[20]_i_3_n_0\,
      S(1) => \accum_s[20]_i_4_n_0\,
      S(0) => \accum_s[20]_i_5_n_0\
    );
\accum_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[20]_i_1_n_6\,
      Q => accum_s_reg(21),
      R => cpt
    );
\accum_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[20]_i_1_n_5\,
      Q => accum_s_reg(22),
      R => cpt
    );
\accum_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[20]_i_1_n_4\,
      Q => accum_s_reg(23),
      R => cpt
    );
\accum_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[24]_i_1_n_7\,
      Q => accum_s_reg(24),
      R => cpt
    );
\accum_s_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[20]_i_1_n_0\,
      CO(3) => \accum_s_reg[24]_i_1_n_0\,
      CO(2) => \accum_s_reg[24]_i_1_n_1\,
      CO(1) => \accum_s_reg[24]_i_1_n_2\,
      CO(0) => \accum_s_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => data_i(13),
      DI(2) => data_i(13),
      DI(1) => data_i(13),
      DI(0) => data_i(13),
      O(3) => \accum_s_reg[24]_i_1_n_4\,
      O(2) => \accum_s_reg[24]_i_1_n_5\,
      O(1) => \accum_s_reg[24]_i_1_n_6\,
      O(0) => \accum_s_reg[24]_i_1_n_7\,
      S(3) => \accum_s[24]_i_2_n_0\,
      S(2) => \accum_s[24]_i_3_n_0\,
      S(1) => \accum_s[24]_i_4_n_0\,
      S(0) => \accum_s[24]_i_5_n_0\
    );
\accum_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[24]_i_1_n_6\,
      Q => accum_s_reg(25),
      R => cpt
    );
\accum_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[24]_i_1_n_5\,
      Q => accum_s_reg(26),
      R => cpt
    );
\accum_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[24]_i_1_n_4\,
      Q => accum_s_reg(27),
      R => cpt
    );
\accum_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[28]_i_1_n_7\,
      Q => accum_s_reg(28),
      R => cpt
    );
\accum_s_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[24]_i_1_n_0\,
      CO(3 downto 0) => \NLW_accum_s_reg[28]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_accum_s_reg[28]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \accum_s_reg[28]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \accum_s[28]_i_2_n_0\
    );
\accum_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[0]_i_1_n_5\,
      Q => accum_s_reg(2),
      R => cpt
    );
\accum_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[0]_i_1_n_4\,
      Q => accum_s_reg(3),
      R => cpt
    );
\accum_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[4]_i_1_n_7\,
      Q => accum_s_reg(4),
      R => cpt
    );
\accum_s_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[0]_i_1_n_0\,
      CO(3) => \accum_s_reg[4]_i_1_n_0\,
      CO(2) => \accum_s_reg[4]_i_1_n_1\,
      CO(1) => \accum_s_reg[4]_i_1_n_2\,
      CO(0) => \accum_s_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_i(7 downto 4),
      O(3) => \accum_s_reg[4]_i_1_n_4\,
      O(2) => \accum_s_reg[4]_i_1_n_5\,
      O(1) => \accum_s_reg[4]_i_1_n_6\,
      O(0) => \accum_s_reg[4]_i_1_n_7\,
      S(3) => \accum_s[4]_i_2_n_0\,
      S(2) => \accum_s[4]_i_3_n_0\,
      S(1) => \accum_s[4]_i_4_n_0\,
      S(0) => \accum_s[4]_i_5_n_0\
    );
\accum_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[4]_i_1_n_6\,
      Q => accum_s_reg(5),
      R => cpt
    );
\accum_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[4]_i_1_n_5\,
      Q => accum_s_reg(6),
      R => cpt
    );
\accum_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[4]_i_1_n_4\,
      Q => accum_s_reg(7),
      R => cpt
    );
\accum_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[8]_i_1_n_7\,
      Q => accum_s_reg(8),
      R => cpt
    );
\accum_s_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[4]_i_1_n_0\,
      CO(3) => \accum_s_reg[8]_i_1_n_0\,
      CO(2) => \accum_s_reg[8]_i_1_n_1\,
      CO(1) => \accum_s_reg[8]_i_1_n_2\,
      CO(0) => \accum_s_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_i(11 downto 8),
      O(3) => \accum_s_reg[8]_i_1_n_4\,
      O(2) => \accum_s_reg[8]_i_1_n_5\,
      O(1) => \accum_s_reg[8]_i_1_n_6\,
      O(0) => \accum_s_reg[8]_i_1_n_7\,
      S(3) => \accum_s[8]_i_2_n_0\,
      S(2) => \accum_s[8]_i_3_n_0\,
      S(1) => \accum_s[8]_i_4_n_0\,
      S(0) => \accum_s[8]_i_5_n_0\
    );
\accum_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[8]_i_1_n_6\,
      Q => accum_s_reg(9),
      R => cpt
    );
\cpt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => data_rst_i,
      I1 => data_en_o_i_2_n_0,
      I2 => \final_s[15]_i_3_n_0\,
      I3 => \final_s[15]_i_2_n_0\,
      O => cpt
    );
\cpt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(0),
      O => \cpt[0]_i_3_n_0\
    );
\cpt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \cpt_reg[0]_i_2_n_7\,
      Q => cpt_reg(0),
      R => cpt
    );
\cpt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cpt_reg[0]_i_2_n_0\,
      CO(2) => \cpt_reg[0]_i_2_n_1\,
      CO(1) => \cpt_reg[0]_i_2_n_2\,
      CO(0) => \cpt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cpt_reg[0]_i_2_n_4\,
      O(2) => \cpt_reg[0]_i_2_n_5\,
      O(1) => \cpt_reg[0]_i_2_n_6\,
      O(0) => \cpt_reg[0]_i_2_n_7\,
      S(3 downto 1) => cpt_reg(3 downto 1),
      S(0) => \cpt[0]_i_3_n_0\
    );
\cpt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \cpt_reg[8]_i_1_n_5\,
      Q => cpt_reg(10),
      R => cpt
    );
\cpt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \cpt_reg[8]_i_1_n_4\,
      Q => cpt_reg(11),
      R => cpt
    );
\cpt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \cpt_reg[12]_i_1_n_7\,
      Q => cpt_reg(12),
      R => cpt
    );
\cpt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_cpt_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_cpt_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \cpt_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => cpt_reg(12)
    );
\cpt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \cpt_reg[0]_i_2_n_6\,
      Q => cpt_reg(1),
      R => cpt
    );
\cpt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \cpt_reg[0]_i_2_n_5\,
      Q => cpt_reg(2),
      R => cpt
    );
\cpt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \cpt_reg[0]_i_2_n_4\,
      Q => cpt_reg(3),
      R => cpt
    );
\cpt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \cpt_reg[4]_i_1_n_7\,
      Q => cpt_reg(4),
      R => cpt
    );
\cpt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[0]_i_2_n_0\,
      CO(3) => \cpt_reg[4]_i_1_n_0\,
      CO(2) => \cpt_reg[4]_i_1_n_1\,
      CO(1) => \cpt_reg[4]_i_1_n_2\,
      CO(0) => \cpt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[4]_i_1_n_4\,
      O(2) => \cpt_reg[4]_i_1_n_5\,
      O(1) => \cpt_reg[4]_i_1_n_6\,
      O(0) => \cpt_reg[4]_i_1_n_7\,
      S(3 downto 0) => cpt_reg(7 downto 4)
    );
\cpt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \cpt_reg[4]_i_1_n_6\,
      Q => cpt_reg(5),
      R => cpt
    );
\cpt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \cpt_reg[4]_i_1_n_5\,
      Q => cpt_reg(6),
      R => cpt
    );
\cpt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \cpt_reg[4]_i_1_n_4\,
      Q => cpt_reg(7),
      R => cpt
    );
\cpt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \cpt_reg[8]_i_1_n_7\,
      Q => cpt_reg(8),
      R => cpt
    );
\cpt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_reg[4]_i_1_n_0\,
      CO(3) => \cpt_reg[8]_i_1_n_0\,
      CO(2) => \cpt_reg[8]_i_1_n_1\,
      CO(1) => \cpt_reg[8]_i_1_n_2\,
      CO(0) => \cpt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cpt_reg[8]_i_1_n_4\,
      O(2) => \cpt_reg[8]_i_1_n_5\,
      O(1) => \cpt_reg[8]_i_1_n_6\,
      O(0) => \cpt_reg[8]_i_1_n_7\,
      S(3 downto 0) => cpt_reg(11 downto 8)
    );
\cpt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \cpt_reg[8]_i_1_n_6\,
      Q => cpt_reg(9),
      R => cpt
    );
data_en_o_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => data_en_o_i_2_n_0,
      I1 => \final_s[15]_i_3_n_0\,
      I2 => \final_s[15]_i_2_n_0\,
      I3 => data_rst_i,
      O => data_en_o_i_1_n_0
    );
data_en_o_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cpt_reg(5),
      I1 => cpt_reg(0),
      I2 => cpt_reg(6),
      I3 => cpt_reg(9),
      O => data_en_o_i_2_n_0
    );
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_en_o_i_1_n_0,
      Q => data_en_o,
      R => '0'
    );
\final_s[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \final_s[15]_i_2_n_0\,
      I1 => \final_s[15]_i_3_n_0\,
      I2 => cpt_reg(5),
      I3 => cpt_reg(0),
      I4 => cpt_reg(6),
      I5 => cpt_reg(9),
      O => \final_s[15]_i_1_n_0\
    );
\final_s[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cpt_reg(4),
      I1 => data_en_i,
      I2 => cpt_reg(1),
      I3 => cpt_reg(12),
      I4 => cpt_reg(10),
      I5 => cpt_reg(11),
      O => \final_s[15]_i_2_n_0\
    );
\final_s[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cpt_reg(7),
      I1 => cpt_reg(8),
      I2 => cpt_reg(3),
      I3 => cpt_reg(2),
      O => \final_s[15]_i_3_n_0\
    );
\final_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(0),
      Q => data_o(0),
      R => data_rst_i
    );
\final_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(10),
      Q => data_o(10),
      R => data_rst_i
    );
\final_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(11),
      Q => data_o(11),
      R => data_rst_i
    );
\final_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(12),
      Q => data_o(12),
      R => data_rst_i
    );
\final_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(13),
      Q => data_o(13),
      R => data_rst_i
    );
\final_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(14),
      Q => data_o(14),
      R => data_rst_i
    );
\final_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(15),
      Q => data_o(15),
      R => data_rst_i
    );
\final_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(1),
      Q => data_o(1),
      R => data_rst_i
    );
\final_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(2),
      Q => data_o(2),
      R => data_rst_i
    );
\final_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(3),
      Q => data_o(3),
      R => data_rst_i
    );
\final_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(4),
      Q => data_o(4),
      R => data_rst_i
    );
\final_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(5),
      Q => data_o(5),
      R => data_rst_i
    );
\final_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(6),
      Q => data_o(6),
      R => data_rst_i
    );
\final_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(7),
      Q => data_o(7),
      R => data_rst_i
    );
\final_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(8),
      Q => data_o(8),
      R => data_rst_i
    );
\final_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[15]_i_1_n_0\,
      D => p_0_in(9),
      Q => data_o(9),
      R => data_rst_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_meanReal_2_0 is
  port (
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_en_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of double_iq_pid_vco_meanReal_2_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of double_iq_pid_vco_meanReal_2_0 : entity is "double_iq_pid_vco_meanReal_2_0,meanReal,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of double_iq_pid_vco_meanReal_2_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of double_iq_pid_vco_meanReal_2_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of double_iq_pid_vco_meanReal_2_0 : entity is "meanReal,Vivado 2019.2";
end double_iq_pid_vco_meanReal_2_0;

architecture STRUCTURE of double_iq_pid_vco_meanReal_2_0 is
  signal \^data_clk_i\ : STD_LOGIC;
  signal \^data_rst_i\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of data_clk_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_CLK";
  attribute x_interface_info of data_clk_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_CLK";
  attribute x_interface_info of data_en_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_EN";
  attribute x_interface_info of data_en_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_EN";
  attribute x_interface_info of data_rst_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_RST";
  attribute x_interface_info of data_rst_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_RST";
  attribute x_interface_info of data_i : signal is "xilinx.com:interface:real:1.0 data_in DATA";
  attribute x_interface_info of data_o : signal is "xilinx.com:interface:real:1.0 data_out DATA";
begin
  \^data_clk_i\ <= data_clk_i;
  \^data_rst_i\ <= data_rst_i;
  data_clk_o <= \^data_clk_i\;
  data_rst_o <= \^data_rst_i\;
U0: entity work.double_iq_pid_vco_meanReal_2_0_meanReal
     port map (
      data_clk_i => \^data_clk_i\,
      data_en_i => data_en_i,
      data_en_o => data_en_o,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_o(15 downto 0) => data_o(15 downto 0),
      data_rst_i => \^data_rst_i\
    );
end STRUCTURE;
