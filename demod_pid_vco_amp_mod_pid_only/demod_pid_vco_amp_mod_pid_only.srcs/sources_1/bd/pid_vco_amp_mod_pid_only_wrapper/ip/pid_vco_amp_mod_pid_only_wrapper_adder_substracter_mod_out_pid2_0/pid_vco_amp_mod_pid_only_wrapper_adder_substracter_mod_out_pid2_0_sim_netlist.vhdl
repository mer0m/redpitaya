-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed May  9 11:30:40 2018
-- Host        : ux305 running 64-bit Debian GNU/Linux testing/unstable
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/fpga_design/redpitaya/pid_vco_amp_mod_pid_only/pid_vco_amp_mod_pid_only.srcs/sources_1/bd/pid_vco_amp_mod_pid_only_wrapper/ip/pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0/pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0_sim_netlist.vhdl
-- Design      : pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0_adder_substracter is
  port (
    data_o : out STD_LOGIC_VECTOR ( 14 downto 0 );
    data_en_o : out STD_LOGIC;
    data_eof_o : out STD_LOGIC;
    data2_en_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data1_en_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_eof_i : in STD_LOGIC;
    data1_eof_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0_adder_substracter : entity is "adder_substracter";
end pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0_adder_substracter;

architecture STRUCTURE of pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0_adder_substracter is
  signal d1_en_s : STD_LOGIC;
  signal d1_en_s_i_1_n_0 : STD_LOGIC;
  signal d1_eof_s : STD_LOGIC;
  signal d1_eof_s_i_1_n_0 : STD_LOGIC;
  signal d2_en_s : STD_LOGIC;
  signal d2_en_s_i_1_n_0 : STD_LOGIC;
  signal d2_eof_s : STD_LOGIC;
  signal d2_eof_s_i_2_n_0 : STD_LOGIC;
  signal d2_eof_s_reg_n_0 : STD_LOGIC;
  signal data11_en_s : STD_LOGIC;
  signal data11_eof_s : STD_LOGIC;
  signal data11_eof_s_reg_n_0 : STD_LOGIC;
  signal data11_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data1_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data21_en_s : STD_LOGIC;
  signal data21_eof_s : STD_LOGIC;
  signal data21_eof_s_reg_n_0 : STD_LOGIC;
  signal data21_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data2_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data_en_s : STD_LOGIC;
  signal data_en_s_i_1_n_0 : STD_LOGIC;
  signal data_eof_o_i_1_n_0 : STD_LOGIC;
  signal data_eof_s : STD_LOGIC;
  signal data_eof_s_i_1_n_0 : STD_LOGIC;
  signal data_eof_s_i_2_n_0 : STD_LOGIC;
  signal data_eof_s_i_3_n_0 : STD_LOGIC;
  signal data_in_s : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \data_s[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[11]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[11]_i_5_n_0\ : STD_LOGIC;
  signal \data_s[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[14]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[14]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[3]_i_5_n_0\ : STD_LOGIC;
  signal \data_s[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[7]_i_5_n_0\ : STD_LOGIC;
  signal \data_s_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_s_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \data_s_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \data_s_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \data_s_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \data_s_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \data_s_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_s_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \data_s_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \data_s_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \data_s_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_s_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \data_s_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \data_s_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_data_s_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_data_s_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of d1_en_s_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of d2_en_s_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of data_en_s_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of data_eof_s_i_1 : label is "soft_lutpair0";
begin
d1_en_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0704"
    )
        port map (
      I0 => d2_en_s,
      I1 => data11_en_s,
      I2 => data21_en_s,
      I3 => d1_en_s,
      O => d1_en_s_i_1_n_0
    );
d1_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => d1_en_s_i_1_n_0,
      Q => d1_en_s,
      R => '0'
    );
d1_eof_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0737040403330000"
    )
        port map (
      I0 => d2_en_s,
      I1 => data11_en_s,
      I2 => data21_en_s,
      I3 => d1_en_s,
      I4 => d1_eof_s,
      I5 => data11_eof_s_reg_n_0,
      O => d1_eof_s_i_1_n_0
    );
d1_eof_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => d1_eof_s_i_1_n_0,
      Q => d1_eof_s,
      R => '0'
    );
d2_en_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0232"
    )
        port map (
      I0 => d2_en_s,
      I1 => data11_en_s,
      I2 => data21_en_s,
      I3 => d1_en_s,
      O => d2_en_s_i_1_n_0
    );
d2_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => d2_en_s_i_1_n_0,
      Q => d2_en_s,
      R => '0'
    );
d2_eof_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8C8"
    )
        port map (
      I0 => d2_en_s,
      I1 => data11_en_s,
      I2 => data21_en_s,
      I3 => d1_en_s,
      O => d2_eof_s
    );
d2_eof_s_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data21_eof_s_reg_n_0,
      I1 => data21_en_s,
      I2 => d2_eof_s_reg_n_0,
      O => d2_eof_s_i_2_n_0
    );
d2_eof_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => d2_eof_s_i_2_n_0,
      Q => d2_eof_s_reg_n_0,
      R => d2_eof_s
    );
data11_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => data1_en_i,
      Q => data11_en_s,
      R => '0'
    );
data11_eof_s_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1_en_i,
      I1 => data1_eof_i,
      O => data11_eof_s
    );
data11_eof_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => data11_eof_s,
      Q => data11_eof_s_reg_n_0,
      R => '0'
    );
\data11_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => data1_i(0),
      Q => data11_s(0),
      R => '0'
    );
\data11_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => data1_i(10),
      Q => data11_s(10),
      R => '0'
    );
\data11_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => data1_i(11),
      Q => data11_s(11),
      R => '0'
    );
\data11_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => data1_i(12),
      Q => data11_s(12),
      R => '0'
    );
\data11_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => data1_i(13),
      Q => data11_s(13),
      R => '0'
    );
\data11_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => data1_i(1),
      Q => data11_s(1),
      R => '0'
    );
\data11_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => data1_i(2),
      Q => data11_s(2),
      R => '0'
    );
\data11_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => data1_i(3),
      Q => data11_s(3),
      R => '0'
    );
\data11_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => data1_i(4),
      Q => data11_s(4),
      R => '0'
    );
\data11_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => data1_i(5),
      Q => data11_s(5),
      R => '0'
    );
\data11_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => data1_i(6),
      Q => data11_s(6),
      R => '0'
    );
\data11_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => data1_i(7),
      Q => data11_s(7),
      R => '0'
    );
\data11_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => data1_i(8),
      Q => data11_s(8),
      R => '0'
    );
\data11_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => data1_i(9),
      Q => data11_s(9),
      R => '0'
    );
\data1_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data11_en_s,
      D => data11_s(0),
      Q => data1_s(0),
      R => '0'
    );
\data1_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data11_en_s,
      D => data11_s(10),
      Q => data1_s(10),
      R => '0'
    );
\data1_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data11_en_s,
      D => data11_s(11),
      Q => data1_s(11),
      R => '0'
    );
\data1_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data11_en_s,
      D => data11_s(12),
      Q => data1_s(12),
      R => '0'
    );
\data1_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data11_en_s,
      D => data11_s(13),
      Q => data1_s(13),
      R => '0'
    );
\data1_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data11_en_s,
      D => data11_s(1),
      Q => data1_s(1),
      R => '0'
    );
\data1_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data11_en_s,
      D => data11_s(2),
      Q => data1_s(2),
      R => '0'
    );
\data1_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data11_en_s,
      D => data11_s(3),
      Q => data1_s(3),
      R => '0'
    );
\data1_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data11_en_s,
      D => data11_s(4),
      Q => data1_s(4),
      R => '0'
    );
\data1_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data11_en_s,
      D => data11_s(5),
      Q => data1_s(5),
      R => '0'
    );
\data1_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data11_en_s,
      D => data11_s(6),
      Q => data1_s(6),
      R => '0'
    );
\data1_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data11_en_s,
      D => data11_s(7),
      Q => data1_s(7),
      R => '0'
    );
\data1_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data11_en_s,
      D => data11_s(8),
      Q => data1_s(8),
      R => '0'
    );
\data1_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data11_en_s,
      D => data11_s(9),
      Q => data1_s(9),
      R => '0'
    );
data21_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data2_en_i,
      Q => data21_en_s,
      R => '0'
    );
data21_eof_s_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data2_en_i,
      I1 => data2_eof_i,
      O => data21_eof_s
    );
data21_eof_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => data21_eof_s,
      Q => data21_eof_s_reg_n_0,
      R => '0'
    );
\data21_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => data2_i(0),
      Q => data21_s(0),
      R => '0'
    );
\data21_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => data2_i(10),
      Q => data21_s(10),
      R => '0'
    );
\data21_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => data2_i(11),
      Q => data21_s(11),
      R => '0'
    );
\data21_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => data2_i(12),
      Q => data21_s(12),
      R => '0'
    );
\data21_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => data2_i(13),
      Q => data21_s(13),
      R => '0'
    );
\data21_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => data2_i(1),
      Q => data21_s(1),
      R => '0'
    );
\data21_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => data2_i(2),
      Q => data21_s(2),
      R => '0'
    );
\data21_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => data2_i(3),
      Q => data21_s(3),
      R => '0'
    );
\data21_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => data2_i(4),
      Q => data21_s(4),
      R => '0'
    );
\data21_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => data2_i(5),
      Q => data21_s(5),
      R => '0'
    );
\data21_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => data2_i(6),
      Q => data21_s(6),
      R => '0'
    );
\data21_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => data2_i(7),
      Q => data21_s(7),
      R => '0'
    );
\data21_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => data2_i(8),
      Q => data21_s(8),
      R => '0'
    );
\data21_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => data2_i(9),
      Q => data21_s(9),
      R => '0'
    );
\data2_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data21_en_s,
      D => data21_s(0),
      Q => data2_s(0),
      R => '0'
    );
\data2_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data21_en_s,
      D => data21_s(10),
      Q => data2_s(10),
      R => '0'
    );
\data2_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data21_en_s,
      D => data21_s(11),
      Q => data2_s(11),
      R => '0'
    );
\data2_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data21_en_s,
      D => data21_s(12),
      Q => data2_s(12),
      R => '0'
    );
\data2_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data21_en_s,
      D => data21_s(13),
      Q => data2_s(13),
      R => '0'
    );
\data2_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data21_en_s,
      D => data21_s(1),
      Q => data2_s(1),
      R => '0'
    );
\data2_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data21_en_s,
      D => data21_s(2),
      Q => data2_s(2),
      R => '0'
    );
\data2_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data21_en_s,
      D => data21_s(3),
      Q => data2_s(3),
      R => '0'
    );
\data2_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data21_en_s,
      D => data21_s(4),
      Q => data2_s(4),
      R => '0'
    );
\data2_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data21_en_s,
      D => data21_s(5),
      Q => data2_s(5),
      R => '0'
    );
\data2_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data21_en_s,
      D => data21_s(6),
      Q => data2_s(6),
      R => '0'
    );
\data2_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data21_en_s,
      D => data21_s(7),
      Q => data2_s(7),
      R => '0'
    );
\data2_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data21_en_s,
      D => data21_s(8),
      Q => data2_s(8),
      R => '0'
    );
\data2_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data21_en_s,
      D => data21_s(9),
      Q => data2_s(9),
      R => '0'
    );
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => data_en_s,
      Q => data_en_o,
      R => '0'
    );
data_en_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAC8"
    )
        port map (
      I0 => data21_en_s,
      I1 => data11_en_s,
      I2 => d2_en_s,
      I3 => d1_en_s,
      O => data_en_s_i_1_n_0
    );
data_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => data_en_s_i_1_n_0,
      Q => data_en_s,
      R => '0'
    );
data_eof_o_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_en_s,
      I1 => data_eof_s,
      O => data_eof_o_i_1_n_0
    );
data_eof_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => data_eof_o_i_1_n_0,
      Q => data_eof_o,
      R => '0'
    );
data_eof_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8C80000"
    )
        port map (
      I0 => d2_en_s,
      I1 => data11_en_s,
      I2 => data21_en_s,
      I3 => d1_en_s,
      I4 => data_eof_s_i_2_n_0,
      O => data_eof_s_i_1_n_0
    );
data_eof_s_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800080008000"
    )
        port map (
      I0 => d2_eof_s_reg_n_0,
      I1 => data11_eof_s_reg_n_0,
      I2 => d2_en_s,
      I3 => data11_en_s,
      I4 => data_eof_s_i_3_n_0,
      I5 => data21_eof_s_reg_n_0,
      O => data_eof_s_i_2_n_0
    );
data_eof_s_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EA2AEA2AEA2A"
    )
        port map (
      I0 => data11_eof_s_reg_n_0,
      I1 => d1_en_s,
      I2 => data21_en_s,
      I3 => d1_eof_s,
      I4 => d2_en_s,
      I5 => data11_en_s,
      O => data_eof_s_i_3_n_0
    );
data_eof_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => data_eof_s_i_1_n_0,
      Q => data_eof_s,
      R => '0'
    );
\data_s[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1_s(11),
      I1 => data2_s(11),
      O => \data_s[11]_i_2_n_0\
    );
\data_s[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1_s(10),
      I1 => data2_s(10),
      O => \data_s[11]_i_3_n_0\
    );
\data_s[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1_s(9),
      I1 => data2_s(9),
      O => \data_s[11]_i_4_n_0\
    );
\data_s[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1_s(8),
      I1 => data2_s(8),
      O => \data_s[11]_i_5_n_0\
    );
\data_s[14]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data1_s(13),
      O => \data_s[14]_i_2_n_0\
    );
\data_s[14]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1_s(13),
      I1 => data2_s(13),
      O => \data_s[14]_i_3_n_0\
    );
\data_s[14]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1_s(12),
      I1 => data2_s(12),
      O => \data_s[14]_i_4_n_0\
    );
\data_s[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1_s(3),
      I1 => data2_s(3),
      O => \data_s[3]_i_2_n_0\
    );
\data_s[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1_s(2),
      I1 => data2_s(2),
      O => \data_s[3]_i_3_n_0\
    );
\data_s[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1_s(1),
      I1 => data2_s(1),
      O => \data_s[3]_i_4_n_0\
    );
\data_s[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1_s(0),
      I1 => data2_s(0),
      O => \data_s[3]_i_5_n_0\
    );
\data_s[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1_s(7),
      I1 => data2_s(7),
      O => \data_s[7]_i_2_n_0\
    );
\data_s[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1_s(6),
      I1 => data2_s(6),
      O => \data_s[7]_i_3_n_0\
    );
\data_s[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1_s(5),
      I1 => data2_s(5),
      O => \data_s[7]_i_4_n_0\
    );
\data_s[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data1_s(4),
      I1 => data2_s(4),
      O => \data_s[7]_i_5_n_0\
    );
\data_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(0),
      Q => data_o(0),
      R => '0'
    );
\data_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(10),
      Q => data_o(10),
      R => '0'
    );
\data_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(11),
      Q => data_o(11),
      R => '0'
    );
\data_s_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_s_reg[7]_i_1_n_0\,
      CO(3) => \data_s_reg[11]_i_1_n_0\,
      CO(2) => \data_s_reg[11]_i_1_n_1\,
      CO(1) => \data_s_reg[11]_i_1_n_2\,
      CO(0) => \data_s_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data1_s(11 downto 8),
      O(3 downto 0) => data_in_s(11 downto 8),
      S(3) => \data_s[11]_i_2_n_0\,
      S(2) => \data_s[11]_i_3_n_0\,
      S(1) => \data_s[11]_i_4_n_0\,
      S(0) => \data_s[11]_i_5_n_0\
    );
\data_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(12),
      Q => data_o(12),
      R => '0'
    );
\data_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(13),
      Q => data_o(13),
      R => '0'
    );
\data_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(14),
      Q => data_o(14),
      R => '0'
    );
\data_s_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_s_reg[11]_i_1_n_0\,
      CO(3 downto 2) => \NLW_data_s_reg[14]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \data_s_reg[14]_i_1_n_2\,
      CO(0) => \data_s_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \data_s[14]_i_2_n_0\,
      DI(0) => data1_s(12),
      O(3) => \NLW_data_s_reg[14]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => data_in_s(14 downto 12),
      S(3 downto 2) => B"01",
      S(1) => \data_s[14]_i_3_n_0\,
      S(0) => \data_s[14]_i_4_n_0\
    );
\data_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(1),
      Q => data_o(1),
      R => '0'
    );
\data_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(2),
      Q => data_o(2),
      R => '0'
    );
\data_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(3),
      Q => data_o(3),
      R => '0'
    );
\data_s_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_s_reg[3]_i_1_n_0\,
      CO(2) => \data_s_reg[3]_i_1_n_1\,
      CO(1) => \data_s_reg[3]_i_1_n_2\,
      CO(0) => \data_s_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data1_s(3 downto 0),
      O(3 downto 0) => data_in_s(3 downto 0),
      S(3) => \data_s[3]_i_2_n_0\,
      S(2) => \data_s[3]_i_3_n_0\,
      S(1) => \data_s[3]_i_4_n_0\,
      S(0) => \data_s[3]_i_5_n_0\
    );
\data_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(4),
      Q => data_o(4),
      R => '0'
    );
\data_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(5),
      Q => data_o(5),
      R => '0'
    );
\data_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(6),
      Q => data_o(6),
      R => '0'
    );
\data_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(7),
      Q => data_o(7),
      R => '0'
    );
\data_s_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_s_reg[3]_i_1_n_0\,
      CO(3) => \data_s_reg[7]_i_1_n_0\,
      CO(2) => \data_s_reg[7]_i_1_n_1\,
      CO(1) => \data_s_reg[7]_i_1_n_2\,
      CO(0) => \data_s_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data1_s(7 downto 4),
      O(3 downto 0) => data_in_s(7 downto 4),
      S(3) => \data_s[7]_i_2_n_0\,
      S(2) => \data_s[7]_i_3_n_0\,
      S(1) => \data_s[7]_i_4_n_0\,
      S(0) => \data_s[7]_i_5_n_0\
    );
\data_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(8),
      Q => data_o(8),
      R => '0'
    );
\data_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data_en_s,
      D => data_in_s(9),
      Q => data_o(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0 is
  port (
    data1_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_eof_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_en_i : in STD_LOGIC;
    data2_eof_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 14 downto 0 );
    data_en_o : out STD_LOGIC;
    data_eof_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0 : entity is "pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0,adder_substracter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0 : entity is "adder_substracter,Vivado 2016.4";
end pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0;

architecture STRUCTURE of pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0 is
  signal \^data1_clk_i\ : STD_LOGIC;
  signal \^data1_rst_i\ : STD_LOGIC;
begin
  \^data1_clk_i\ <= data1_clk_i;
  \^data1_rst_i\ <= data1_rst_i;
  data_clk_o <= \^data1_clk_i\;
  data_rst_o <= \^data1_rst_i\;
U0: entity work.pid_vco_amp_mod_pid_only_wrapper_adder_substracter_mod_out_pid2_0_adder_substracter
     port map (
      data1_clk_i => \^data1_clk_i\,
      data1_en_i => data1_en_i,
      data1_eof_i => data1_eof_i,
      data1_i(13 downto 0) => data1_i(13 downto 0),
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_eof_i => data2_eof_i,
      data2_i(13 downto 0) => data2_i(13 downto 0),
      data_en_o => data_en_o,
      data_eof_o => data_eof_o,
      data_o(14 downto 0) => data_o(14 downto 0)
    );
end STRUCTURE;
