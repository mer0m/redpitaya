-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sat May 30 19:55:57 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/fpga_design/redpitaya/double_iq_pid_vco/design/tmp/double_iq_pid_vco.srcs/sources_1/bd/double_iq_pid_vco/ip/double_iq_pid_vco_meanReal_0_0/double_iq_pid_vco_meanReal_0_0_sim_netlist.vhdl
-- Design      : double_iq_pid_vco_meanReal_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_meanReal_0_0_meanReal is
  port (
    data_o : out STD_LOGIC_VECTOR ( 63 downto 0 );
    data_en_o : out STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 39 downto 0 );
    data_rst_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_en_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_meanReal_0_0_meanReal : entity is "meanReal";
end double_iq_pid_vco_meanReal_0_0_meanReal;

architecture STRUCTURE of double_iq_pid_vco_meanReal_0_0_meanReal is
  signal \accum_next_s_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__0_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__0_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__0_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__0_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__10_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__10_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__10_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__10_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__10_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__10_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__10_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__10_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__11_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__11_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__11_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__11_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__11_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__11_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__11_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__11_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__12_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__12_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__12_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__12_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__12_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__12_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__12_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__12_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__13_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__13_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__13_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__13_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__13_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__13_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__13_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__13_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__14_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__14_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__14_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__14_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__14_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__14_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__14_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__14_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__15_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__15_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__15_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__15_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__15_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__15_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__15_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__15_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__16_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__16_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__16_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__16_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__16_n_3\ : STD_LOGIC;
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
  signal \accum_next_s_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__6_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__6_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__6_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__6_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__7_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__7_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__7_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__7_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__7_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__7_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__7_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__7_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__8_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__8_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__8_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__8_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__8_i_5_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__8_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__8_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__8_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__8_n_3\ : STD_LOGIC;
  signal \accum_next_s_carry__9_i_1_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__9_i_2_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__9_i_3_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__9_i_4_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__9_n_0\ : STD_LOGIC;
  signal \accum_next_s_carry__9_n_1\ : STD_LOGIC;
  signal \accum_next_s_carry__9_n_2\ : STD_LOGIC;
  signal \accum_next_s_carry__9_n_3\ : STD_LOGIC;
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
  signal \accum_s[28]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[28]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[28]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[32]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[32]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[32]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[32]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[36]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[36]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[36]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[36]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[40]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[40]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[40]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[40]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[44]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[44]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[44]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[44]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[48]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[48]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[48]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[48]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[4]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[4]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[4]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[4]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[52]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[52]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[52]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[52]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[56]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[56]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[56]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[56]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[60]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[60]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[60]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[60]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[64]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[64]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[64]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[64]_i_5_n_0\ : STD_LOGIC;
  signal \accum_s[68]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[68]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[68]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[8]_i_2_n_0\ : STD_LOGIC;
  signal \accum_s[8]_i_3_n_0\ : STD_LOGIC;
  signal \accum_s[8]_i_4_n_0\ : STD_LOGIC;
  signal \accum_s[8]_i_5_n_0\ : STD_LOGIC;
  signal accum_s_reg : STD_LOGIC_VECTOR ( 70 downto 0 );
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
  signal \accum_s_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[44]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[44]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[44]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[44]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[44]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[44]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[44]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[48]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[48]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[48]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[48]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[52]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[52]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[52]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[52]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[52]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[52]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[52]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[52]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[56]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[56]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[56]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[56]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[56]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[56]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[56]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[56]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[60]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[60]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[60]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[60]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[60]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[60]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[60]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[60]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[64]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[64]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[64]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[64]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[64]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[64]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[64]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[64]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[68]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[68]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[68]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[68]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[68]_i_1_n_7\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \accum_s_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal cpt : STD_LOGIC;
  signal cpt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data_en_o_i_1_n_0 : STD_LOGIC;
  signal \final_s[63]_i_1_n_0\ : STD_LOGIC;
  signal \final_s[63]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_accum_next_s_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_accum_next_s_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_accum_next_s_carry__16_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_accum_next_s_carry__16_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_accum_s_reg[68]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_accum_s_reg[68]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cpt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cpt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cpt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cpt[4]_i_1\ : label is "soft_lutpair0";
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
      O(3) => p_0_in(0),
      O(2 downto 0) => \NLW_accum_next_s_carry__0_O_UNCONNECTED\(2 downto 0),
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
      O(3 downto 0) => p_0_in(4 downto 1),
      S(3) => \accum_next_s_carry__1_i_1_n_0\,
      S(2) => \accum_next_s_carry__1_i_2_n_0\,
      S(1) => \accum_next_s_carry__1_i_3_n_0\,
      S(0) => \accum_next_s_carry__1_i_4_n_0\
    );
\accum_next_s_carry__10\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__9_n_0\,
      CO(3) => \accum_next_s_carry__10_n_0\,
      CO(2) => \accum_next_s_carry__10_n_1\,
      CO(1) => \accum_next_s_carry__10_n_2\,
      CO(0) => \accum_next_s_carry__10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accum_s_reg(46 downto 43),
      O(3 downto 0) => p_0_in(40 downto 37),
      S(3) => \accum_next_s_carry__10_i_1_n_0\,
      S(2) => \accum_next_s_carry__10_i_2_n_0\,
      S(1) => \accum_next_s_carry__10_i_3_n_0\,
      S(0) => \accum_next_s_carry__10_i_4_n_0\
    );
\accum_next_s_carry__10_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(46),
      I1 => accum_s_reg(47),
      O => \accum_next_s_carry__10_i_1_n_0\
    );
\accum_next_s_carry__10_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(45),
      I1 => accum_s_reg(46),
      O => \accum_next_s_carry__10_i_2_n_0\
    );
\accum_next_s_carry__10_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(44),
      I1 => accum_s_reg(45),
      O => \accum_next_s_carry__10_i_3_n_0\
    );
\accum_next_s_carry__10_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(43),
      I1 => accum_s_reg(44),
      O => \accum_next_s_carry__10_i_4_n_0\
    );
\accum_next_s_carry__11\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__10_n_0\,
      CO(3) => \accum_next_s_carry__11_n_0\,
      CO(2) => \accum_next_s_carry__11_n_1\,
      CO(1) => \accum_next_s_carry__11_n_2\,
      CO(0) => \accum_next_s_carry__11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accum_s_reg(50 downto 47),
      O(3 downto 0) => p_0_in(44 downto 41),
      S(3) => \accum_next_s_carry__11_i_1_n_0\,
      S(2) => \accum_next_s_carry__11_i_2_n_0\,
      S(1) => \accum_next_s_carry__11_i_3_n_0\,
      S(0) => \accum_next_s_carry__11_i_4_n_0\
    );
\accum_next_s_carry__11_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(50),
      I1 => accum_s_reg(51),
      O => \accum_next_s_carry__11_i_1_n_0\
    );
\accum_next_s_carry__11_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(49),
      I1 => accum_s_reg(50),
      O => \accum_next_s_carry__11_i_2_n_0\
    );
\accum_next_s_carry__11_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(48),
      I1 => accum_s_reg(49),
      O => \accum_next_s_carry__11_i_3_n_0\
    );
\accum_next_s_carry__11_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(47),
      I1 => accum_s_reg(48),
      O => \accum_next_s_carry__11_i_4_n_0\
    );
\accum_next_s_carry__12\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__11_n_0\,
      CO(3) => \accum_next_s_carry__12_n_0\,
      CO(2) => \accum_next_s_carry__12_n_1\,
      CO(1) => \accum_next_s_carry__12_n_2\,
      CO(0) => \accum_next_s_carry__12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accum_s_reg(54 downto 51),
      O(3 downto 0) => p_0_in(48 downto 45),
      S(3) => \accum_next_s_carry__12_i_1_n_0\,
      S(2) => \accum_next_s_carry__12_i_2_n_0\,
      S(1) => \accum_next_s_carry__12_i_3_n_0\,
      S(0) => \accum_next_s_carry__12_i_4_n_0\
    );
\accum_next_s_carry__12_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(54),
      I1 => accum_s_reg(55),
      O => \accum_next_s_carry__12_i_1_n_0\
    );
\accum_next_s_carry__12_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(53),
      I1 => accum_s_reg(54),
      O => \accum_next_s_carry__12_i_2_n_0\
    );
\accum_next_s_carry__12_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(52),
      I1 => accum_s_reg(53),
      O => \accum_next_s_carry__12_i_3_n_0\
    );
\accum_next_s_carry__12_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(51),
      I1 => accum_s_reg(52),
      O => \accum_next_s_carry__12_i_4_n_0\
    );
\accum_next_s_carry__13\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__12_n_0\,
      CO(3) => \accum_next_s_carry__13_n_0\,
      CO(2) => \accum_next_s_carry__13_n_1\,
      CO(1) => \accum_next_s_carry__13_n_2\,
      CO(0) => \accum_next_s_carry__13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accum_s_reg(58 downto 55),
      O(3 downto 0) => p_0_in(52 downto 49),
      S(3) => \accum_next_s_carry__13_i_1_n_0\,
      S(2) => \accum_next_s_carry__13_i_2_n_0\,
      S(1) => \accum_next_s_carry__13_i_3_n_0\,
      S(0) => \accum_next_s_carry__13_i_4_n_0\
    );
\accum_next_s_carry__13_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(58),
      I1 => accum_s_reg(59),
      O => \accum_next_s_carry__13_i_1_n_0\
    );
\accum_next_s_carry__13_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(57),
      I1 => accum_s_reg(58),
      O => \accum_next_s_carry__13_i_2_n_0\
    );
\accum_next_s_carry__13_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(56),
      I1 => accum_s_reg(57),
      O => \accum_next_s_carry__13_i_3_n_0\
    );
\accum_next_s_carry__13_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(55),
      I1 => accum_s_reg(56),
      O => \accum_next_s_carry__13_i_4_n_0\
    );
\accum_next_s_carry__14\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__13_n_0\,
      CO(3) => \accum_next_s_carry__14_n_0\,
      CO(2) => \accum_next_s_carry__14_n_1\,
      CO(1) => \accum_next_s_carry__14_n_2\,
      CO(0) => \accum_next_s_carry__14_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accum_s_reg(62 downto 59),
      O(3 downto 0) => p_0_in(56 downto 53),
      S(3) => \accum_next_s_carry__14_i_1_n_0\,
      S(2) => \accum_next_s_carry__14_i_2_n_0\,
      S(1) => \accum_next_s_carry__14_i_3_n_0\,
      S(0) => \accum_next_s_carry__14_i_4_n_0\
    );
\accum_next_s_carry__14_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(62),
      I1 => accum_s_reg(63),
      O => \accum_next_s_carry__14_i_1_n_0\
    );
\accum_next_s_carry__14_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(61),
      I1 => accum_s_reg(62),
      O => \accum_next_s_carry__14_i_2_n_0\
    );
\accum_next_s_carry__14_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(60),
      I1 => accum_s_reg(61),
      O => \accum_next_s_carry__14_i_3_n_0\
    );
\accum_next_s_carry__14_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(59),
      I1 => accum_s_reg(60),
      O => \accum_next_s_carry__14_i_4_n_0\
    );
\accum_next_s_carry__15\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__14_n_0\,
      CO(3) => \accum_next_s_carry__15_n_0\,
      CO(2) => \accum_next_s_carry__15_n_1\,
      CO(1) => \accum_next_s_carry__15_n_2\,
      CO(0) => \accum_next_s_carry__15_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accum_s_reg(66 downto 63),
      O(3 downto 0) => p_0_in(60 downto 57),
      S(3) => \accum_next_s_carry__15_i_1_n_0\,
      S(2) => \accum_next_s_carry__15_i_2_n_0\,
      S(1) => \accum_next_s_carry__15_i_3_n_0\,
      S(0) => \accum_next_s_carry__15_i_4_n_0\
    );
\accum_next_s_carry__15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(66),
      I1 => accum_s_reg(67),
      O => \accum_next_s_carry__15_i_1_n_0\
    );
\accum_next_s_carry__15_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(65),
      I1 => accum_s_reg(66),
      O => \accum_next_s_carry__15_i_2_n_0\
    );
\accum_next_s_carry__15_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(64),
      I1 => accum_s_reg(65),
      O => \accum_next_s_carry__15_i_3_n_0\
    );
\accum_next_s_carry__15_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(63),
      I1 => accum_s_reg(64),
      O => \accum_next_s_carry__15_i_4_n_0\
    );
\accum_next_s_carry__16\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__15_n_0\,
      CO(3 downto 2) => \NLW_accum_next_s_carry__16_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \accum_next_s_carry__16_n_2\,
      CO(0) => \accum_next_s_carry__16_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => accum_s_reg(68 downto 67),
      O(3) => \NLW_accum_next_s_carry__16_O_UNCONNECTED\(3),
      O(2 downto 0) => p_0_in(63 downto 61),
      S(3) => '0',
      S(2) => \accum_next_s_carry__16_i_1_n_0\,
      S(1) => \accum_next_s_carry__16_i_2_n_0\,
      S(0) => \accum_next_s_carry__16_i_3_n_0\
    );
\accum_next_s_carry__16_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(69),
      I1 => accum_s_reg(70),
      O => \accum_next_s_carry__16_i_1_n_0\
    );
\accum_next_s_carry__16_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(68),
      I1 => accum_s_reg(69),
      O => \accum_next_s_carry__16_i_2_n_0\
    );
\accum_next_s_carry__16_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(67),
      I1 => accum_s_reg(68),
      O => \accum_next_s_carry__16_i_3_n_0\
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
      DI(3 downto 0) => data_i(15 downto 12),
      O(3 downto 0) => p_0_in(8 downto 5),
      S(3) => \accum_next_s_carry__2_i_1_n_0\,
      S(2) => \accum_next_s_carry__2_i_2_n_0\,
      S(1) => \accum_next_s_carry__2_i_3_n_0\,
      S(0) => \accum_next_s_carry__2_i_4_n_0\
    );
\accum_next_s_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(15),
      I1 => accum_s_reg(15),
      O => \accum_next_s_carry__2_i_1_n_0\
    );
\accum_next_s_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(14),
      I1 => accum_s_reg(14),
      O => \accum_next_s_carry__2_i_2_n_0\
    );
\accum_next_s_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => accum_s_reg(13),
      O => \accum_next_s_carry__2_i_3_n_0\
    );
\accum_next_s_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(12),
      I1 => accum_s_reg(12),
      O => \accum_next_s_carry__2_i_4_n_0\
    );
\accum_next_s_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__2_n_0\,
      CO(3) => \accum_next_s_carry__3_n_0\,
      CO(2) => \accum_next_s_carry__3_n_1\,
      CO(1) => \accum_next_s_carry__3_n_2\,
      CO(0) => \accum_next_s_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_i(19 downto 16),
      O(3 downto 0) => p_0_in(12 downto 9),
      S(3) => \accum_next_s_carry__3_i_1_n_0\,
      S(2) => \accum_next_s_carry__3_i_2_n_0\,
      S(1) => \accum_next_s_carry__3_i_3_n_0\,
      S(0) => \accum_next_s_carry__3_i_4_n_0\
    );
\accum_next_s_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(19),
      I1 => accum_s_reg(19),
      O => \accum_next_s_carry__3_i_1_n_0\
    );
\accum_next_s_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(18),
      I1 => accum_s_reg(18),
      O => \accum_next_s_carry__3_i_2_n_0\
    );
\accum_next_s_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(17),
      I1 => accum_s_reg(17),
      O => \accum_next_s_carry__3_i_3_n_0\
    );
\accum_next_s_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(16),
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
      DI(3 downto 0) => data_i(23 downto 20),
      O(3 downto 0) => p_0_in(16 downto 13),
      S(3) => \accum_next_s_carry__4_i_1_n_0\,
      S(2) => \accum_next_s_carry__4_i_2_n_0\,
      S(1) => \accum_next_s_carry__4_i_3_n_0\,
      S(0) => \accum_next_s_carry__4_i_4_n_0\
    );
\accum_next_s_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(23),
      I1 => accum_s_reg(23),
      O => \accum_next_s_carry__4_i_1_n_0\
    );
\accum_next_s_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(22),
      I1 => accum_s_reg(22),
      O => \accum_next_s_carry__4_i_2_n_0\
    );
\accum_next_s_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(21),
      I1 => accum_s_reg(21),
      O => \accum_next_s_carry__4_i_3_n_0\
    );
\accum_next_s_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(20),
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
      DI(3 downto 0) => data_i(27 downto 24),
      O(3 downto 0) => p_0_in(20 downto 17),
      S(3) => \accum_next_s_carry__5_i_1_n_0\,
      S(2) => \accum_next_s_carry__5_i_2_n_0\,
      S(1) => \accum_next_s_carry__5_i_3_n_0\,
      S(0) => \accum_next_s_carry__5_i_4_n_0\
    );
\accum_next_s_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(27),
      I1 => accum_s_reg(27),
      O => \accum_next_s_carry__5_i_1_n_0\
    );
\accum_next_s_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(26),
      I1 => accum_s_reg(26),
      O => \accum_next_s_carry__5_i_2_n_0\
    );
\accum_next_s_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(25),
      I1 => accum_s_reg(25),
      O => \accum_next_s_carry__5_i_3_n_0\
    );
\accum_next_s_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(24),
      I1 => accum_s_reg(24),
      O => \accum_next_s_carry__5_i_4_n_0\
    );
\accum_next_s_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__5_n_0\,
      CO(3) => \accum_next_s_carry__6_n_0\,
      CO(2) => \accum_next_s_carry__6_n_1\,
      CO(1) => \accum_next_s_carry__6_n_2\,
      CO(0) => \accum_next_s_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_i(31 downto 28),
      O(3 downto 0) => p_0_in(24 downto 21),
      S(3) => \accum_next_s_carry__6_i_1_n_0\,
      S(2) => \accum_next_s_carry__6_i_2_n_0\,
      S(1) => \accum_next_s_carry__6_i_3_n_0\,
      S(0) => \accum_next_s_carry__6_i_4_n_0\
    );
\accum_next_s_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(31),
      I1 => accum_s_reg(31),
      O => \accum_next_s_carry__6_i_1_n_0\
    );
\accum_next_s_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(30),
      I1 => accum_s_reg(30),
      O => \accum_next_s_carry__6_i_2_n_0\
    );
\accum_next_s_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(29),
      I1 => accum_s_reg(29),
      O => \accum_next_s_carry__6_i_3_n_0\
    );
\accum_next_s_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(28),
      I1 => accum_s_reg(28),
      O => \accum_next_s_carry__6_i_4_n_0\
    );
\accum_next_s_carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__6_n_0\,
      CO(3) => \accum_next_s_carry__7_n_0\,
      CO(2) => \accum_next_s_carry__7_n_1\,
      CO(1) => \accum_next_s_carry__7_n_2\,
      CO(0) => \accum_next_s_carry__7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_i(35 downto 32),
      O(3 downto 0) => p_0_in(28 downto 25),
      S(3) => \accum_next_s_carry__7_i_1_n_0\,
      S(2) => \accum_next_s_carry__7_i_2_n_0\,
      S(1) => \accum_next_s_carry__7_i_3_n_0\,
      S(0) => \accum_next_s_carry__7_i_4_n_0\
    );
\accum_next_s_carry__7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(35),
      I1 => accum_s_reg(35),
      O => \accum_next_s_carry__7_i_1_n_0\
    );
\accum_next_s_carry__7_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(34),
      I1 => accum_s_reg(34),
      O => \accum_next_s_carry__7_i_2_n_0\
    );
\accum_next_s_carry__7_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(33),
      I1 => accum_s_reg(33),
      O => \accum_next_s_carry__7_i_3_n_0\
    );
\accum_next_s_carry__7_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(32),
      I1 => accum_s_reg(32),
      O => \accum_next_s_carry__7_i_4_n_0\
    );
\accum_next_s_carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__7_n_0\,
      CO(3) => \accum_next_s_carry__8_n_0\,
      CO(2) => \accum_next_s_carry__8_n_1\,
      CO(1) => \accum_next_s_carry__8_n_2\,
      CO(0) => \accum_next_s_carry__8_n_3\,
      CYINIT => '0',
      DI(3) => \accum_next_s_carry__8_i_1_n_0\,
      DI(2 downto 0) => data_i(38 downto 36),
      O(3 downto 0) => p_0_in(32 downto 29),
      S(3) => \accum_next_s_carry__8_i_2_n_0\,
      S(2) => \accum_next_s_carry__8_i_3_n_0\,
      S(1) => \accum_next_s_carry__8_i_4_n_0\,
      S(0) => \accum_next_s_carry__8_i_5_n_0\
    );
\accum_next_s_carry__8_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => accum_s_reg(39),
      O => \accum_next_s_carry__8_i_1_n_0\
    );
\accum_next_s_carry__8_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_s_reg(39),
      I1 => data_i(39),
      O => \accum_next_s_carry__8_i_2_n_0\
    );
\accum_next_s_carry__8_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(38),
      I1 => accum_s_reg(38),
      O => \accum_next_s_carry__8_i_3_n_0\
    );
\accum_next_s_carry__8_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(37),
      I1 => accum_s_reg(37),
      O => \accum_next_s_carry__8_i_4_n_0\
    );
\accum_next_s_carry__8_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(36),
      I1 => accum_s_reg(36),
      O => \accum_next_s_carry__8_i_5_n_0\
    );
\accum_next_s_carry__9\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_next_s_carry__8_n_0\,
      CO(3) => \accum_next_s_carry__9_n_0\,
      CO(2) => \accum_next_s_carry__9_n_1\,
      CO(1) => \accum_next_s_carry__9_n_2\,
      CO(0) => \accum_next_s_carry__9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accum_s_reg(42 downto 39),
      O(3 downto 0) => p_0_in(36 downto 33),
      S(3) => \accum_next_s_carry__9_i_1_n_0\,
      S(2) => \accum_next_s_carry__9_i_2_n_0\,
      S(1) => \accum_next_s_carry__9_i_3_n_0\,
      S(0) => \accum_next_s_carry__9_i_4_n_0\
    );
\accum_next_s_carry__9_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(42),
      I1 => accum_s_reg(43),
      O => \accum_next_s_carry__9_i_1_n_0\
    );
\accum_next_s_carry__9_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(41),
      I1 => accum_s_reg(42),
      O => \accum_next_s_carry__9_i_2_n_0\
    );
\accum_next_s_carry__9_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(40),
      I1 => accum_s_reg(41),
      O => \accum_next_s_carry__9_i_3_n_0\
    );
\accum_next_s_carry__9_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => accum_s_reg(39),
      I1 => accum_s_reg(40),
      O => \accum_next_s_carry__9_i_4_n_0\
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
      I0 => data_i(15),
      I1 => accum_s_reg(15),
      O => \accum_s[12]_i_2_n_0\
    );
\accum_s[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(14),
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
      I0 => data_i(19),
      I1 => accum_s_reg(19),
      O => \accum_s[16]_i_2_n_0\
    );
\accum_s[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(18),
      I1 => accum_s_reg(18),
      O => \accum_s[16]_i_3_n_0\
    );
\accum_s[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(17),
      I1 => accum_s_reg(17),
      O => \accum_s[16]_i_4_n_0\
    );
\accum_s[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(16),
      I1 => accum_s_reg(16),
      O => \accum_s[16]_i_5_n_0\
    );
\accum_s[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(23),
      I1 => accum_s_reg(23),
      O => \accum_s[20]_i_2_n_0\
    );
\accum_s[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(22),
      I1 => accum_s_reg(22),
      O => \accum_s[20]_i_3_n_0\
    );
\accum_s[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(21),
      I1 => accum_s_reg(21),
      O => \accum_s[20]_i_4_n_0\
    );
\accum_s[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(20),
      I1 => accum_s_reg(20),
      O => \accum_s[20]_i_5_n_0\
    );
\accum_s[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(27),
      I1 => accum_s_reg(27),
      O => \accum_s[24]_i_2_n_0\
    );
\accum_s[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(26),
      I1 => accum_s_reg(26),
      O => \accum_s[24]_i_3_n_0\
    );
\accum_s[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(25),
      I1 => accum_s_reg(25),
      O => \accum_s[24]_i_4_n_0\
    );
\accum_s[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(24),
      I1 => accum_s_reg(24),
      O => \accum_s[24]_i_5_n_0\
    );
\accum_s[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(31),
      I1 => accum_s_reg(31),
      O => \accum_s[28]_i_2_n_0\
    );
\accum_s[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(30),
      I1 => accum_s_reg(30),
      O => \accum_s[28]_i_3_n_0\
    );
\accum_s[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(29),
      I1 => accum_s_reg(29),
      O => \accum_s[28]_i_4_n_0\
    );
\accum_s[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(28),
      I1 => accum_s_reg(28),
      O => \accum_s[28]_i_5_n_0\
    );
\accum_s[32]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(35),
      I1 => accum_s_reg(35),
      O => \accum_s[32]_i_2_n_0\
    );
\accum_s[32]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(34),
      I1 => accum_s_reg(34),
      O => \accum_s[32]_i_3_n_0\
    );
\accum_s[32]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(33),
      I1 => accum_s_reg(33),
      O => \accum_s[32]_i_4_n_0\
    );
\accum_s[32]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(32),
      I1 => accum_s_reg(32),
      O => \accum_s[32]_i_5_n_0\
    );
\accum_s[36]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(39),
      O => \accum_s[36]_i_2_n_0\
    );
\accum_s[36]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(38),
      I1 => accum_s_reg(38),
      O => \accum_s[36]_i_3_n_0\
    );
\accum_s[36]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(37),
      I1 => accum_s_reg(37),
      O => \accum_s[36]_i_4_n_0\
    );
\accum_s[36]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(36),
      I1 => accum_s_reg(36),
      O => \accum_s[36]_i_5_n_0\
    );
\accum_s[40]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(43),
      O => \accum_s[40]_i_2_n_0\
    );
\accum_s[40]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(42),
      O => \accum_s[40]_i_3_n_0\
    );
\accum_s[40]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(41),
      O => \accum_s[40]_i_4_n_0\
    );
\accum_s[40]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(40),
      O => \accum_s[40]_i_5_n_0\
    );
\accum_s[44]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(47),
      O => \accum_s[44]_i_2_n_0\
    );
\accum_s[44]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(46),
      O => \accum_s[44]_i_3_n_0\
    );
\accum_s[44]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(45),
      O => \accum_s[44]_i_4_n_0\
    );
\accum_s[44]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(44),
      O => \accum_s[44]_i_5_n_0\
    );
\accum_s[48]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(51),
      O => \accum_s[48]_i_2_n_0\
    );
\accum_s[48]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(50),
      O => \accum_s[48]_i_3_n_0\
    );
\accum_s[48]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(49),
      O => \accum_s[48]_i_4_n_0\
    );
\accum_s[48]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(48),
      O => \accum_s[48]_i_5_n_0\
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
\accum_s[52]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(55),
      O => \accum_s[52]_i_2_n_0\
    );
\accum_s[52]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(54),
      O => \accum_s[52]_i_3_n_0\
    );
\accum_s[52]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(53),
      O => \accum_s[52]_i_4_n_0\
    );
\accum_s[52]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(52),
      O => \accum_s[52]_i_5_n_0\
    );
\accum_s[56]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(59),
      O => \accum_s[56]_i_2_n_0\
    );
\accum_s[56]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(58),
      O => \accum_s[56]_i_3_n_0\
    );
\accum_s[56]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(57),
      O => \accum_s[56]_i_4_n_0\
    );
\accum_s[56]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(56),
      O => \accum_s[56]_i_5_n_0\
    );
\accum_s[60]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(63),
      O => \accum_s[60]_i_2_n_0\
    );
\accum_s[60]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(62),
      O => \accum_s[60]_i_3_n_0\
    );
\accum_s[60]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(61),
      O => \accum_s[60]_i_4_n_0\
    );
\accum_s[60]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(60),
      O => \accum_s[60]_i_5_n_0\
    );
\accum_s[64]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(67),
      O => \accum_s[64]_i_2_n_0\
    );
\accum_s[64]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(66),
      O => \accum_s[64]_i_3_n_0\
    );
\accum_s[64]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(65),
      O => \accum_s[64]_i_4_n_0\
    );
\accum_s[64]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(64),
      O => \accum_s[64]_i_5_n_0\
    );
\accum_s[68]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(70),
      O => \accum_s[68]_i_2_n_0\
    );
\accum_s[68]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(69),
      O => \accum_s[68]_i_3_n_0\
    );
\accum_s[68]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(39),
      I1 => accum_s_reg(68),
      O => \accum_s[68]_i_4_n_0\
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
      DI(3 downto 0) => data_i(15 downto 12),
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
      DI(3 downto 0) => data_i(19 downto 16),
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
      DI(3 downto 0) => data_i(23 downto 20),
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
      DI(3 downto 0) => data_i(27 downto 24),
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
      CO(3) => \accum_s_reg[28]_i_1_n_0\,
      CO(2) => \accum_s_reg[28]_i_1_n_1\,
      CO(1) => \accum_s_reg[28]_i_1_n_2\,
      CO(0) => \accum_s_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_i(31 downto 28),
      O(3) => \accum_s_reg[28]_i_1_n_4\,
      O(2) => \accum_s_reg[28]_i_1_n_5\,
      O(1) => \accum_s_reg[28]_i_1_n_6\,
      O(0) => \accum_s_reg[28]_i_1_n_7\,
      S(3) => \accum_s[28]_i_2_n_0\,
      S(2) => \accum_s[28]_i_3_n_0\,
      S(1) => \accum_s[28]_i_4_n_0\,
      S(0) => \accum_s[28]_i_5_n_0\
    );
\accum_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[28]_i_1_n_6\,
      Q => accum_s_reg(29),
      R => cpt
    );
\accum_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[0]_i_1_n_5\,
      Q => accum_s_reg(2),
      R => cpt
    );
\accum_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[28]_i_1_n_5\,
      Q => accum_s_reg(30),
      R => cpt
    );
\accum_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[28]_i_1_n_4\,
      Q => accum_s_reg(31),
      R => cpt
    );
\accum_s_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[32]_i_1_n_7\,
      Q => accum_s_reg(32),
      R => cpt
    );
\accum_s_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[28]_i_1_n_0\,
      CO(3) => \accum_s_reg[32]_i_1_n_0\,
      CO(2) => \accum_s_reg[32]_i_1_n_1\,
      CO(1) => \accum_s_reg[32]_i_1_n_2\,
      CO(0) => \accum_s_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_i(35 downto 32),
      O(3) => \accum_s_reg[32]_i_1_n_4\,
      O(2) => \accum_s_reg[32]_i_1_n_5\,
      O(1) => \accum_s_reg[32]_i_1_n_6\,
      O(0) => \accum_s_reg[32]_i_1_n_7\,
      S(3) => \accum_s[32]_i_2_n_0\,
      S(2) => \accum_s[32]_i_3_n_0\,
      S(1) => \accum_s[32]_i_4_n_0\,
      S(0) => \accum_s[32]_i_5_n_0\
    );
\accum_s_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[32]_i_1_n_6\,
      Q => accum_s_reg(33),
      R => cpt
    );
\accum_s_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[32]_i_1_n_5\,
      Q => accum_s_reg(34),
      R => cpt
    );
\accum_s_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[32]_i_1_n_4\,
      Q => accum_s_reg(35),
      R => cpt
    );
\accum_s_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[36]_i_1_n_7\,
      Q => accum_s_reg(36),
      R => cpt
    );
\accum_s_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[32]_i_1_n_0\,
      CO(3) => \accum_s_reg[36]_i_1_n_0\,
      CO(2) => \accum_s_reg[36]_i_1_n_1\,
      CO(1) => \accum_s_reg[36]_i_1_n_2\,
      CO(0) => \accum_s_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_i(39 downto 36),
      O(3) => \accum_s_reg[36]_i_1_n_4\,
      O(2) => \accum_s_reg[36]_i_1_n_5\,
      O(1) => \accum_s_reg[36]_i_1_n_6\,
      O(0) => \accum_s_reg[36]_i_1_n_7\,
      S(3) => \accum_s[36]_i_2_n_0\,
      S(2) => \accum_s[36]_i_3_n_0\,
      S(1) => \accum_s[36]_i_4_n_0\,
      S(0) => \accum_s[36]_i_5_n_0\
    );
\accum_s_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[36]_i_1_n_6\,
      Q => accum_s_reg(37),
      R => cpt
    );
\accum_s_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[36]_i_1_n_5\,
      Q => accum_s_reg(38),
      R => cpt
    );
\accum_s_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[36]_i_1_n_4\,
      Q => accum_s_reg(39),
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
\accum_s_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[40]_i_1_n_7\,
      Q => accum_s_reg(40),
      R => cpt
    );
\accum_s_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[36]_i_1_n_0\,
      CO(3) => \accum_s_reg[40]_i_1_n_0\,
      CO(2) => \accum_s_reg[40]_i_1_n_1\,
      CO(1) => \accum_s_reg[40]_i_1_n_2\,
      CO(0) => \accum_s_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => data_i(39),
      DI(2) => data_i(39),
      DI(1) => data_i(39),
      DI(0) => data_i(39),
      O(3) => \accum_s_reg[40]_i_1_n_4\,
      O(2) => \accum_s_reg[40]_i_1_n_5\,
      O(1) => \accum_s_reg[40]_i_1_n_6\,
      O(0) => \accum_s_reg[40]_i_1_n_7\,
      S(3) => \accum_s[40]_i_2_n_0\,
      S(2) => \accum_s[40]_i_3_n_0\,
      S(1) => \accum_s[40]_i_4_n_0\,
      S(0) => \accum_s[40]_i_5_n_0\
    );
\accum_s_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[40]_i_1_n_6\,
      Q => accum_s_reg(41),
      R => cpt
    );
\accum_s_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[40]_i_1_n_5\,
      Q => accum_s_reg(42),
      R => cpt
    );
\accum_s_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[40]_i_1_n_4\,
      Q => accum_s_reg(43),
      R => cpt
    );
\accum_s_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[44]_i_1_n_7\,
      Q => accum_s_reg(44),
      R => cpt
    );
\accum_s_reg[44]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[40]_i_1_n_0\,
      CO(3) => \accum_s_reg[44]_i_1_n_0\,
      CO(2) => \accum_s_reg[44]_i_1_n_1\,
      CO(1) => \accum_s_reg[44]_i_1_n_2\,
      CO(0) => \accum_s_reg[44]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => data_i(39),
      DI(2) => data_i(39),
      DI(1) => data_i(39),
      DI(0) => data_i(39),
      O(3) => \accum_s_reg[44]_i_1_n_4\,
      O(2) => \accum_s_reg[44]_i_1_n_5\,
      O(1) => \accum_s_reg[44]_i_1_n_6\,
      O(0) => \accum_s_reg[44]_i_1_n_7\,
      S(3) => \accum_s[44]_i_2_n_0\,
      S(2) => \accum_s[44]_i_3_n_0\,
      S(1) => \accum_s[44]_i_4_n_0\,
      S(0) => \accum_s[44]_i_5_n_0\
    );
\accum_s_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[44]_i_1_n_6\,
      Q => accum_s_reg(45),
      R => cpt
    );
\accum_s_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[44]_i_1_n_5\,
      Q => accum_s_reg(46),
      R => cpt
    );
\accum_s_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[44]_i_1_n_4\,
      Q => accum_s_reg(47),
      R => cpt
    );
\accum_s_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[48]_i_1_n_7\,
      Q => accum_s_reg(48),
      R => cpt
    );
\accum_s_reg[48]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[44]_i_1_n_0\,
      CO(3) => \accum_s_reg[48]_i_1_n_0\,
      CO(2) => \accum_s_reg[48]_i_1_n_1\,
      CO(1) => \accum_s_reg[48]_i_1_n_2\,
      CO(0) => \accum_s_reg[48]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => data_i(39),
      DI(2) => data_i(39),
      DI(1) => data_i(39),
      DI(0) => data_i(39),
      O(3) => \accum_s_reg[48]_i_1_n_4\,
      O(2) => \accum_s_reg[48]_i_1_n_5\,
      O(1) => \accum_s_reg[48]_i_1_n_6\,
      O(0) => \accum_s_reg[48]_i_1_n_7\,
      S(3) => \accum_s[48]_i_2_n_0\,
      S(2) => \accum_s[48]_i_3_n_0\,
      S(1) => \accum_s[48]_i_4_n_0\,
      S(0) => \accum_s[48]_i_5_n_0\
    );
\accum_s_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[48]_i_1_n_6\,
      Q => accum_s_reg(49),
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
\accum_s_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[48]_i_1_n_5\,
      Q => accum_s_reg(50),
      R => cpt
    );
\accum_s_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[48]_i_1_n_4\,
      Q => accum_s_reg(51),
      R => cpt
    );
\accum_s_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[52]_i_1_n_7\,
      Q => accum_s_reg(52),
      R => cpt
    );
\accum_s_reg[52]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[48]_i_1_n_0\,
      CO(3) => \accum_s_reg[52]_i_1_n_0\,
      CO(2) => \accum_s_reg[52]_i_1_n_1\,
      CO(1) => \accum_s_reg[52]_i_1_n_2\,
      CO(0) => \accum_s_reg[52]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => data_i(39),
      DI(2) => data_i(39),
      DI(1) => data_i(39),
      DI(0) => data_i(39),
      O(3) => \accum_s_reg[52]_i_1_n_4\,
      O(2) => \accum_s_reg[52]_i_1_n_5\,
      O(1) => \accum_s_reg[52]_i_1_n_6\,
      O(0) => \accum_s_reg[52]_i_1_n_7\,
      S(3) => \accum_s[52]_i_2_n_0\,
      S(2) => \accum_s[52]_i_3_n_0\,
      S(1) => \accum_s[52]_i_4_n_0\,
      S(0) => \accum_s[52]_i_5_n_0\
    );
\accum_s_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[52]_i_1_n_6\,
      Q => accum_s_reg(53),
      R => cpt
    );
\accum_s_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[52]_i_1_n_5\,
      Q => accum_s_reg(54),
      R => cpt
    );
\accum_s_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[52]_i_1_n_4\,
      Q => accum_s_reg(55),
      R => cpt
    );
\accum_s_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[56]_i_1_n_7\,
      Q => accum_s_reg(56),
      R => cpt
    );
\accum_s_reg[56]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[52]_i_1_n_0\,
      CO(3) => \accum_s_reg[56]_i_1_n_0\,
      CO(2) => \accum_s_reg[56]_i_1_n_1\,
      CO(1) => \accum_s_reg[56]_i_1_n_2\,
      CO(0) => \accum_s_reg[56]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => data_i(39),
      DI(2) => data_i(39),
      DI(1) => data_i(39),
      DI(0) => data_i(39),
      O(3) => \accum_s_reg[56]_i_1_n_4\,
      O(2) => \accum_s_reg[56]_i_1_n_5\,
      O(1) => \accum_s_reg[56]_i_1_n_6\,
      O(0) => \accum_s_reg[56]_i_1_n_7\,
      S(3) => \accum_s[56]_i_2_n_0\,
      S(2) => \accum_s[56]_i_3_n_0\,
      S(1) => \accum_s[56]_i_4_n_0\,
      S(0) => \accum_s[56]_i_5_n_0\
    );
\accum_s_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[56]_i_1_n_6\,
      Q => accum_s_reg(57),
      R => cpt
    );
\accum_s_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[56]_i_1_n_5\,
      Q => accum_s_reg(58),
      R => cpt
    );
\accum_s_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[56]_i_1_n_4\,
      Q => accum_s_reg(59),
      R => cpt
    );
\accum_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[4]_i_1_n_6\,
      Q => accum_s_reg(5),
      R => cpt
    );
\accum_s_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[60]_i_1_n_7\,
      Q => accum_s_reg(60),
      R => cpt
    );
\accum_s_reg[60]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[56]_i_1_n_0\,
      CO(3) => \accum_s_reg[60]_i_1_n_0\,
      CO(2) => \accum_s_reg[60]_i_1_n_1\,
      CO(1) => \accum_s_reg[60]_i_1_n_2\,
      CO(0) => \accum_s_reg[60]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => data_i(39),
      DI(2) => data_i(39),
      DI(1) => data_i(39),
      DI(0) => data_i(39),
      O(3) => \accum_s_reg[60]_i_1_n_4\,
      O(2) => \accum_s_reg[60]_i_1_n_5\,
      O(1) => \accum_s_reg[60]_i_1_n_6\,
      O(0) => \accum_s_reg[60]_i_1_n_7\,
      S(3) => \accum_s[60]_i_2_n_0\,
      S(2) => \accum_s[60]_i_3_n_0\,
      S(1) => \accum_s[60]_i_4_n_0\,
      S(0) => \accum_s[60]_i_5_n_0\
    );
\accum_s_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[60]_i_1_n_6\,
      Q => accum_s_reg(61),
      R => cpt
    );
\accum_s_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[60]_i_1_n_5\,
      Q => accum_s_reg(62),
      R => cpt
    );
\accum_s_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[60]_i_1_n_4\,
      Q => accum_s_reg(63),
      R => cpt
    );
\accum_s_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[64]_i_1_n_7\,
      Q => accum_s_reg(64),
      R => cpt
    );
\accum_s_reg[64]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[60]_i_1_n_0\,
      CO(3) => \accum_s_reg[64]_i_1_n_0\,
      CO(2) => \accum_s_reg[64]_i_1_n_1\,
      CO(1) => \accum_s_reg[64]_i_1_n_2\,
      CO(0) => \accum_s_reg[64]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => data_i(39),
      DI(2) => data_i(39),
      DI(1) => data_i(39),
      DI(0) => data_i(39),
      O(3) => \accum_s_reg[64]_i_1_n_4\,
      O(2) => \accum_s_reg[64]_i_1_n_5\,
      O(1) => \accum_s_reg[64]_i_1_n_6\,
      O(0) => \accum_s_reg[64]_i_1_n_7\,
      S(3) => \accum_s[64]_i_2_n_0\,
      S(2) => \accum_s[64]_i_3_n_0\,
      S(1) => \accum_s[64]_i_4_n_0\,
      S(0) => \accum_s[64]_i_5_n_0\
    );
\accum_s_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[64]_i_1_n_6\,
      Q => accum_s_reg(65),
      R => cpt
    );
\accum_s_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[64]_i_1_n_5\,
      Q => accum_s_reg(66),
      R => cpt
    );
\accum_s_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[64]_i_1_n_4\,
      Q => accum_s_reg(67),
      R => cpt
    );
\accum_s_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[68]_i_1_n_7\,
      Q => accum_s_reg(68),
      R => cpt
    );
\accum_s_reg[68]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_s_reg[64]_i_1_n_0\,
      CO(3 downto 2) => \NLW_accum_s_reg[68]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \accum_s_reg[68]_i_1_n_2\,
      CO(0) => \accum_s_reg[68]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => data_i(39),
      DI(0) => data_i(39),
      O(3) => \NLW_accum_s_reg[68]_i_1_O_UNCONNECTED\(3),
      O(2) => \accum_s_reg[68]_i_1_n_5\,
      O(1) => \accum_s_reg[68]_i_1_n_6\,
      O(0) => \accum_s_reg[68]_i_1_n_7\,
      S(3) => '0',
      S(2) => \accum_s[68]_i_2_n_0\,
      S(1) => \accum_s[68]_i_3_n_0\,
      S(0) => \accum_s[68]_i_4_n_0\
    );
\accum_s_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[68]_i_1_n_6\,
      Q => accum_s_reg(69),
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
\accum_s_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \accum_s_reg[68]_i_1_n_5\,
      Q => accum_s_reg(70),
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
\cpt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_reg(0),
      O => \p_0_in__0\(0)
    );
\cpt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cpt_reg(0),
      I1 => cpt_reg(1),
      O => \p_0_in__0\(1)
    );
\cpt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cpt_reg(1),
      I1 => cpt_reg(0),
      I2 => cpt_reg(2),
      O => \p_0_in__0\(2)
    );
\cpt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cpt_reg(2),
      I1 => cpt_reg(0),
      I2 => cpt_reg(1),
      I3 => cpt_reg(3),
      O => \p_0_in__0\(3)
    );
\cpt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cpt_reg(3),
      I1 => cpt_reg(1),
      I2 => cpt_reg(0),
      I3 => cpt_reg(2),
      I4 => cpt_reg(4),
      O => \p_0_in__0\(4)
    );
\cpt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cpt_reg(4),
      I1 => cpt_reg(2),
      I2 => cpt_reg(0),
      I3 => cpt_reg(1),
      I4 => cpt_reg(3),
      I5 => cpt_reg(5),
      O => \p_0_in__0\(5)
    );
\cpt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => \final_s[63]_i_2_n_0\,
      I1 => cpt_reg(6),
      I2 => data_en_i,
      I3 => data_rst_i,
      O => cpt
    );
\cpt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \final_s[63]_i_2_n_0\,
      I1 => cpt_reg(6),
      O => \p_0_in__0\(6)
    );
\cpt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \p_0_in__0\(0),
      Q => cpt_reg(0),
      R => cpt
    );
\cpt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \p_0_in__0\(1),
      Q => cpt_reg(1),
      R => cpt
    );
\cpt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \p_0_in__0\(2),
      Q => cpt_reg(2),
      R => cpt
    );
\cpt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \p_0_in__0\(3),
      Q => cpt_reg(3),
      R => cpt
    );
\cpt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \p_0_in__0\(4),
      Q => cpt_reg(4),
      R => cpt
    );
\cpt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \p_0_in__0\(5),
      Q => cpt_reg(5),
      R => cpt
    );
\cpt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => \p_0_in__0\(6),
      Q => cpt_reg(6),
      R => cpt
    );
data_en_o_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \final_s[63]_i_2_n_0\,
      I1 => cpt_reg(6),
      I2 => data_en_i,
      I3 => data_rst_i,
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
\final_s[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data_en_i,
      I1 => cpt_reg(6),
      I2 => \final_s[63]_i_2_n_0\,
      O => \final_s[63]_i_1_n_0\
    );
\final_s[63]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cpt_reg(4),
      I1 => cpt_reg(2),
      I2 => cpt_reg(0),
      I3 => cpt_reg(1),
      I4 => cpt_reg(3),
      I5 => cpt_reg(5),
      O => \final_s[63]_i_2_n_0\
    );
\final_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(0),
      Q => data_o(0),
      R => data_rst_i
    );
\final_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(10),
      Q => data_o(10),
      R => data_rst_i
    );
\final_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(11),
      Q => data_o(11),
      R => data_rst_i
    );
\final_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(12),
      Q => data_o(12),
      R => data_rst_i
    );
\final_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(13),
      Q => data_o(13),
      R => data_rst_i
    );
\final_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(14),
      Q => data_o(14),
      R => data_rst_i
    );
\final_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(15),
      Q => data_o(15),
      R => data_rst_i
    );
\final_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(16),
      Q => data_o(16),
      R => data_rst_i
    );
\final_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(17),
      Q => data_o(17),
      R => data_rst_i
    );
\final_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(18),
      Q => data_o(18),
      R => data_rst_i
    );
\final_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(19),
      Q => data_o(19),
      R => data_rst_i
    );
\final_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(1),
      Q => data_o(1),
      R => data_rst_i
    );
\final_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(20),
      Q => data_o(20),
      R => data_rst_i
    );
\final_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(21),
      Q => data_o(21),
      R => data_rst_i
    );
\final_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(22),
      Q => data_o(22),
      R => data_rst_i
    );
\final_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(23),
      Q => data_o(23),
      R => data_rst_i
    );
\final_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(24),
      Q => data_o(24),
      R => data_rst_i
    );
\final_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(25),
      Q => data_o(25),
      R => data_rst_i
    );
\final_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(26),
      Q => data_o(26),
      R => data_rst_i
    );
\final_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(27),
      Q => data_o(27),
      R => data_rst_i
    );
\final_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(28),
      Q => data_o(28),
      R => data_rst_i
    );
\final_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(29),
      Q => data_o(29),
      R => data_rst_i
    );
\final_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(2),
      Q => data_o(2),
      R => data_rst_i
    );
\final_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(30),
      Q => data_o(30),
      R => data_rst_i
    );
\final_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(31),
      Q => data_o(31),
      R => data_rst_i
    );
\final_s_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(32),
      Q => data_o(32),
      R => data_rst_i
    );
\final_s_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(33),
      Q => data_o(33),
      R => data_rst_i
    );
\final_s_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(34),
      Q => data_o(34),
      R => data_rst_i
    );
\final_s_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(35),
      Q => data_o(35),
      R => data_rst_i
    );
\final_s_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(36),
      Q => data_o(36),
      R => data_rst_i
    );
\final_s_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(37),
      Q => data_o(37),
      R => data_rst_i
    );
\final_s_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(38),
      Q => data_o(38),
      R => data_rst_i
    );
\final_s_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(39),
      Q => data_o(39),
      R => data_rst_i
    );
\final_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(3),
      Q => data_o(3),
      R => data_rst_i
    );
\final_s_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(40),
      Q => data_o(40),
      R => data_rst_i
    );
\final_s_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(41),
      Q => data_o(41),
      R => data_rst_i
    );
\final_s_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(42),
      Q => data_o(42),
      R => data_rst_i
    );
\final_s_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(43),
      Q => data_o(43),
      R => data_rst_i
    );
\final_s_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(44),
      Q => data_o(44),
      R => data_rst_i
    );
\final_s_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(45),
      Q => data_o(45),
      R => data_rst_i
    );
\final_s_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(46),
      Q => data_o(46),
      R => data_rst_i
    );
\final_s_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(47),
      Q => data_o(47),
      R => data_rst_i
    );
\final_s_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(48),
      Q => data_o(48),
      R => data_rst_i
    );
\final_s_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(49),
      Q => data_o(49),
      R => data_rst_i
    );
\final_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(4),
      Q => data_o(4),
      R => data_rst_i
    );
\final_s_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(50),
      Q => data_o(50),
      R => data_rst_i
    );
\final_s_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(51),
      Q => data_o(51),
      R => data_rst_i
    );
\final_s_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(52),
      Q => data_o(52),
      R => data_rst_i
    );
\final_s_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(53),
      Q => data_o(53),
      R => data_rst_i
    );
\final_s_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(54),
      Q => data_o(54),
      R => data_rst_i
    );
\final_s_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(55),
      Q => data_o(55),
      R => data_rst_i
    );
\final_s_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(56),
      Q => data_o(56),
      R => data_rst_i
    );
\final_s_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(57),
      Q => data_o(57),
      R => data_rst_i
    );
\final_s_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(58),
      Q => data_o(58),
      R => data_rst_i
    );
\final_s_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(59),
      Q => data_o(59),
      R => data_rst_i
    );
\final_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(5),
      Q => data_o(5),
      R => data_rst_i
    );
\final_s_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(60),
      Q => data_o(60),
      R => data_rst_i
    );
\final_s_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(61),
      Q => data_o(61),
      R => data_rst_i
    );
\final_s_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(62),
      Q => data_o(62),
      R => data_rst_i
    );
\final_s_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(63),
      Q => data_o(63),
      R => data_rst_i
    );
\final_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(6),
      Q => data_o(6),
      R => data_rst_i
    );
\final_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(7),
      Q => data_o(7),
      R => data_rst_i
    );
\final_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(8),
      Q => data_o(8),
      R => data_rst_i
    );
\final_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \final_s[63]_i_1_n_0\,
      D => p_0_in(9),
      Q => data_o(9),
      R => data_rst_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_meanReal_0_0 is
  port (
    data_i : in STD_LOGIC_VECTOR ( 39 downto 0 );
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 63 downto 0 );
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_en_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of double_iq_pid_vco_meanReal_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of double_iq_pid_vco_meanReal_0_0 : entity is "double_iq_pid_vco_meanReal_0_0,meanReal,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of double_iq_pid_vco_meanReal_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of double_iq_pid_vco_meanReal_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of double_iq_pid_vco_meanReal_0_0 : entity is "meanReal,Vivado 2019.2";
end double_iq_pid_vco_meanReal_0_0;

architecture STRUCTURE of double_iq_pid_vco_meanReal_0_0 is
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
U0: entity work.double_iq_pid_vco_meanReal_0_0_meanReal
     port map (
      data_clk_i => \^data_clk_i\,
      data_en_i => data_en_i,
      data_en_o => data_en_o,
      data_i(39 downto 0) => data_i(39 downto 0),
      data_o(63 downto 0) => data_o(63 downto 0),
      data_rst_i => \^data_rst_i\
    );
end STRUCTURE;
