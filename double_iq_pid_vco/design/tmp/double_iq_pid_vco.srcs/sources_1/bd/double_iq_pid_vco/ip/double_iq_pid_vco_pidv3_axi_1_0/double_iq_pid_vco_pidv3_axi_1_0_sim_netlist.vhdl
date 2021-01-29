-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Jan 29 17:11:28 2021
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top double_iq_pid_vco_pidv3_axi_1_0 -prefix
--               double_iq_pid_vco_pidv3_axi_1_0_ double_iq_pid_vco_pidv3_axi_0_0_sim_netlist.vhdl
-- Design      : double_iq_pid_vco_pidv3_axi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_comm is
  port (
    sign_s : out STD_LOGIC;
    int_rst_s : out STD_LOGIC;
    \kp_s_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \ki_s_reg[17]_0\ : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \is_input_s_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \kp_s_reg[2]_0\ : out STD_LOGIC;
    \kp_s_reg[3]_0\ : out STD_LOGIC;
    \kp_s_reg[4]_0\ : out STD_LOGIC;
    \kp_s_reg[5]_0\ : out STD_LOGIC;
    \setpoint_s_reg[13]_0\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \kd_s_reg[13]_0\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 17 downto 0 );
    s00_axi_reset : in STD_LOGIC;
    sign_s_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    int_rst_s_reg_0 : in STD_LOGIC;
    addr_s : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \readdata_s_reg[14]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \kp_s_reg[13]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ki_s_reg[17]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \kd_s_reg[13]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \is_input_s_reg[5]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    read_en_s : in STD_LOGIC
  );
end double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_comm;

architecture STRUCTURE of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_comm is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^is_input_s_reg[5]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^kd_s_reg[13]_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^ki_s_reg[17]_0\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal readdata_next_s : STD_LOGIC_VECTOR ( 31 downto 14 );
  signal \readdata_s[31]_i_4_n_0\ : STD_LOGIC;
  signal \^setpoint_s_reg[13]_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \readdata_s[14]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \readdata_s[15]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \readdata_s[16]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \readdata_s[17]_i_1\ : label is "soft_lutpair0";
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
  \is_input_s_reg[5]_0\(5 downto 0) <= \^is_input_s_reg[5]_0\(5 downto 0);
  \kd_s_reg[13]_0\(13 downto 0) <= \^kd_s_reg[13]_0\(13 downto 0);
  \ki_s_reg[17]_0\(17 downto 0) <= \^ki_s_reg[17]_0\(17 downto 0);
  \setpoint_s_reg[13]_0\(13 downto 0) <= \^setpoint_s_reg[13]_0\(13 downto 0);
int_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_rst_s_reg_0,
      Q => int_rst_s,
      R => s00_axi_reset
    );
\is_input_s_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \is_input_s_reg[5]_1\(0),
      D => s00_axi_wdata(0),
      Q => \^is_input_s_reg[5]_0\(0),
      S => s00_axi_reset
    );
\is_input_s_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \is_input_s_reg[5]_1\(0),
      D => s00_axi_wdata(1),
      Q => \^is_input_s_reg[5]_0\(1),
      S => s00_axi_reset
    );
\is_input_s_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \is_input_s_reg[5]_1\(0),
      D => s00_axi_wdata(2),
      Q => \^is_input_s_reg[5]_0\(2),
      S => s00_axi_reset
    );
\is_input_s_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \is_input_s_reg[5]_1\(0),
      D => s00_axi_wdata(3),
      Q => \^is_input_s_reg[5]_0\(3),
      S => s00_axi_reset
    );
\is_input_s_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \is_input_s_reg[5]_1\(0),
      D => s00_axi_wdata(4),
      Q => \^is_input_s_reg[5]_0\(4),
      S => s00_axi_reset
    );
\is_input_s_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \is_input_s_reg[5]_1\(0),
      D => s00_axi_wdata(5),
      Q => \^is_input_s_reg[5]_0\(5),
      S => s00_axi_reset
    );
\kd_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kd_s_reg[13]_1\(0),
      D => s00_axi_wdata(0),
      Q => \^kd_s_reg[13]_0\(0),
      R => s00_axi_reset
    );
\kd_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kd_s_reg[13]_1\(0),
      D => s00_axi_wdata(10),
      Q => \^kd_s_reg[13]_0\(10),
      R => s00_axi_reset
    );
\kd_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kd_s_reg[13]_1\(0),
      D => s00_axi_wdata(11),
      Q => \^kd_s_reg[13]_0\(11),
      R => s00_axi_reset
    );
\kd_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kd_s_reg[13]_1\(0),
      D => s00_axi_wdata(12),
      Q => \^kd_s_reg[13]_0\(12),
      R => s00_axi_reset
    );
\kd_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kd_s_reg[13]_1\(0),
      D => s00_axi_wdata(13),
      Q => \^kd_s_reg[13]_0\(13),
      R => s00_axi_reset
    );
\kd_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kd_s_reg[13]_1\(0),
      D => s00_axi_wdata(1),
      Q => \^kd_s_reg[13]_0\(1),
      R => s00_axi_reset
    );
\kd_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kd_s_reg[13]_1\(0),
      D => s00_axi_wdata(2),
      Q => \^kd_s_reg[13]_0\(2),
      R => s00_axi_reset
    );
\kd_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kd_s_reg[13]_1\(0),
      D => s00_axi_wdata(3),
      Q => \^kd_s_reg[13]_0\(3),
      R => s00_axi_reset
    );
\kd_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kd_s_reg[13]_1\(0),
      D => s00_axi_wdata(4),
      Q => \^kd_s_reg[13]_0\(4),
      R => s00_axi_reset
    );
\kd_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kd_s_reg[13]_1\(0),
      D => s00_axi_wdata(5),
      Q => \^kd_s_reg[13]_0\(5),
      R => s00_axi_reset
    );
\kd_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kd_s_reg[13]_1\(0),
      D => s00_axi_wdata(6),
      Q => \^kd_s_reg[13]_0\(6),
      R => s00_axi_reset
    );
\kd_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kd_s_reg[13]_1\(0),
      D => s00_axi_wdata(7),
      Q => \^kd_s_reg[13]_0\(7),
      R => s00_axi_reset
    );
\kd_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kd_s_reg[13]_1\(0),
      D => s00_axi_wdata(8),
      Q => \^kd_s_reg[13]_0\(8),
      R => s00_axi_reset
    );
\kd_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kd_s_reg[13]_1\(0),
      D => s00_axi_wdata(9),
      Q => \^kd_s_reg[13]_0\(9),
      R => s00_axi_reset
    );
\ki_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(0),
      Q => \^ki_s_reg[17]_0\(0),
      R => s00_axi_reset
    );
\ki_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(10),
      Q => \^ki_s_reg[17]_0\(10),
      R => s00_axi_reset
    );
\ki_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(11),
      Q => \^ki_s_reg[17]_0\(11),
      R => s00_axi_reset
    );
\ki_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(12),
      Q => \^ki_s_reg[17]_0\(12),
      R => s00_axi_reset
    );
\ki_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(13),
      Q => \^ki_s_reg[17]_0\(13),
      R => s00_axi_reset
    );
\ki_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(14),
      Q => \^ki_s_reg[17]_0\(14),
      R => s00_axi_reset
    );
\ki_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(15),
      Q => \^ki_s_reg[17]_0\(15),
      R => s00_axi_reset
    );
\ki_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(16),
      Q => \^ki_s_reg[17]_0\(16),
      R => s00_axi_reset
    );
\ki_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(17),
      Q => \^ki_s_reg[17]_0\(17),
      R => s00_axi_reset
    );
\ki_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(1),
      Q => \^ki_s_reg[17]_0\(1),
      R => s00_axi_reset
    );
\ki_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(2),
      Q => \^ki_s_reg[17]_0\(2),
      R => s00_axi_reset
    );
\ki_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(3),
      Q => \^ki_s_reg[17]_0\(3),
      R => s00_axi_reset
    );
\ki_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(4),
      Q => \^ki_s_reg[17]_0\(4),
      R => s00_axi_reset
    );
\ki_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(5),
      Q => \^ki_s_reg[17]_0\(5),
      R => s00_axi_reset
    );
\ki_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(6),
      Q => \^ki_s_reg[17]_0\(6),
      R => s00_axi_reset
    );
\ki_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(7),
      Q => \^ki_s_reg[17]_0\(7),
      R => s00_axi_reset
    );
\ki_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(8),
      Q => \^ki_s_reg[17]_0\(8),
      R => s00_axi_reset
    );
\ki_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ki_s_reg[17]_1\(0),
      D => s00_axi_wdata(9),
      Q => \^ki_s_reg[17]_0\(9),
      R => s00_axi_reset
    );
\kp_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kp_s_reg[13]_0\(0),
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => s00_axi_reset
    );
\kp_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kp_s_reg[13]_0\(0),
      D => s00_axi_wdata(10),
      Q => \^q\(10),
      R => s00_axi_reset
    );
\kp_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kp_s_reg[13]_0\(0),
      D => s00_axi_wdata(11),
      Q => \^q\(11),
      R => s00_axi_reset
    );
\kp_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kp_s_reg[13]_0\(0),
      D => s00_axi_wdata(12),
      Q => \^q\(12),
      R => s00_axi_reset
    );
\kp_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kp_s_reg[13]_0\(0),
      D => s00_axi_wdata(13),
      Q => \^q\(13),
      R => s00_axi_reset
    );
\kp_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kp_s_reg[13]_0\(0),
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => s00_axi_reset
    );
\kp_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kp_s_reg[13]_0\(0),
      D => s00_axi_wdata(2),
      Q => \^q\(2),
      R => s00_axi_reset
    );
\kp_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kp_s_reg[13]_0\(0),
      D => s00_axi_wdata(3),
      Q => \^q\(3),
      R => s00_axi_reset
    );
\kp_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kp_s_reg[13]_0\(0),
      D => s00_axi_wdata(4),
      Q => \^q\(4),
      R => s00_axi_reset
    );
\kp_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kp_s_reg[13]_0\(0),
      D => s00_axi_wdata(5),
      Q => \^q\(5),
      R => s00_axi_reset
    );
\kp_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kp_s_reg[13]_0\(0),
      D => s00_axi_wdata(6),
      Q => \^q\(6),
      R => s00_axi_reset
    );
\kp_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kp_s_reg[13]_0\(0),
      D => s00_axi_wdata(7),
      Q => \^q\(7),
      R => s00_axi_reset
    );
\kp_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kp_s_reg[13]_0\(0),
      D => s00_axi_wdata(8),
      Q => \^q\(8),
      R => s00_axi_reset
    );
\kp_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \kp_s_reg[13]_0\(0),
      D => s00_axi_wdata(9),
      Q => \^q\(9),
      R => s00_axi_reset
    );
\readdata_s[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^ki_s_reg[17]_0\(14),
      I1 => \readdata_s_reg[14]_0\,
      I2 => \readdata_s[31]_i_4_n_0\,
      O => readdata_next_s(14)
    );
\readdata_s[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^ki_s_reg[17]_0\(15),
      I1 => \readdata_s_reg[14]_0\,
      I2 => \readdata_s[31]_i_4_n_0\,
      O => readdata_next_s(15)
    );
\readdata_s[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^ki_s_reg[17]_0\(16),
      I1 => \readdata_s_reg[14]_0\,
      I2 => \readdata_s[31]_i_4_n_0\,
      O => readdata_next_s(16)
    );
\readdata_s[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^ki_s_reg[17]_0\(17),
      I1 => \readdata_s_reg[14]_0\,
      I2 => \readdata_s[31]_i_4_n_0\,
      O => readdata_next_s(17)
    );
\readdata_s[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FCF00AF0FC000A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^ki_s_reg[17]_0\(1),
      I2 => addr_s(2),
      I3 => addr_s(1),
      I4 => addr_s(0),
      I5 => \^is_input_s_reg[5]_0\(1),
      O => \kp_s_reg[1]_0\
    );
\readdata_s[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FCF00AF0FC000A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^ki_s_reg[17]_0\(2),
      I2 => addr_s(2),
      I3 => addr_s(1),
      I4 => addr_s(0),
      I5 => \^is_input_s_reg[5]_0\(2),
      O => \kp_s_reg[2]_0\
    );
\readdata_s[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^ki_s_reg[17]_0\(13),
      I1 => \readdata_s_reg[14]_0\,
      I2 => \readdata_s[31]_i_4_n_0\,
      O => readdata_next_s(31)
    );
\readdata_s[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00AAF000CC"
    )
        port map (
      I0 => \^setpoint_s_reg[13]_0\(13),
      I1 => \^q\(13),
      I2 => \^kd_s_reg[13]_0\(13),
      I3 => addr_s(0),
      I4 => addr_s(1),
      I5 => addr_s(2),
      O => \readdata_s[31]_i_4_n_0\
    );
\readdata_s[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FCF00AF0FC000A"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^ki_s_reg[17]_0\(3),
      I2 => addr_s(2),
      I3 => addr_s(1),
      I4 => addr_s(0),
      I5 => \^is_input_s_reg[5]_0\(3),
      O => \kp_s_reg[3]_0\
    );
\readdata_s[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FCF00AF0FC000A"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^ki_s_reg[17]_0\(4),
      I2 => addr_s(2),
      I3 => addr_s(1),
      I4 => addr_s(0),
      I5 => \^is_input_s_reg[5]_0\(4),
      O => \kp_s_reg[4]_0\
    );
\readdata_s[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FCF00AF0FC000A"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^ki_s_reg[17]_0\(5),
      I2 => addr_s(2),
      I3 => addr_s(1),
      I4 => addr_s(0),
      I5 => \^is_input_s_reg[5]_0\(5),
      O => \kp_s_reg[5]_0\
    );
\readdata_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => D(0),
      Q => s00_axi_rdata(0),
      R => s00_axi_reset
    );
\readdata_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => D(10),
      Q => s00_axi_rdata(10),
      R => s00_axi_reset
    );
\readdata_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => D(11),
      Q => s00_axi_rdata(11),
      R => s00_axi_reset
    );
\readdata_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => D(12),
      Q => s00_axi_rdata(12),
      R => s00_axi_reset
    );
\readdata_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => readdata_next_s(14),
      Q => s00_axi_rdata(13),
      R => s00_axi_reset
    );
\readdata_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => readdata_next_s(15),
      Q => s00_axi_rdata(14),
      R => s00_axi_reset
    );
\readdata_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => readdata_next_s(16),
      Q => s00_axi_rdata(15),
      R => s00_axi_reset
    );
\readdata_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => readdata_next_s(17),
      Q => s00_axi_rdata(16),
      R => s00_axi_reset
    );
\readdata_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => D(1),
      Q => s00_axi_rdata(1),
      R => s00_axi_reset
    );
\readdata_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => D(2),
      Q => s00_axi_rdata(2),
      R => s00_axi_reset
    );
\readdata_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => readdata_next_s(31),
      Q => s00_axi_rdata(17),
      R => s00_axi_reset
    );
\readdata_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => D(3),
      Q => s00_axi_rdata(3),
      R => s00_axi_reset
    );
\readdata_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => D(4),
      Q => s00_axi_rdata(4),
      R => s00_axi_reset
    );
\readdata_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => D(5),
      Q => s00_axi_rdata(5),
      R => s00_axi_reset
    );
\readdata_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => D(6),
      Q => s00_axi_rdata(6),
      R => s00_axi_reset
    );
\readdata_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => D(7),
      Q => s00_axi_rdata(7),
      R => s00_axi_reset
    );
\readdata_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => D(8),
      Q => s00_axi_rdata(8),
      R => s00_axi_reset
    );
\readdata_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => read_en_s,
      D => D(9),
      Q => s00_axi_rdata(9),
      R => s00_axi_reset
    );
\setpoint_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(0),
      Q => \^setpoint_s_reg[13]_0\(0),
      R => s00_axi_reset
    );
\setpoint_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(10),
      Q => \^setpoint_s_reg[13]_0\(10),
      R => s00_axi_reset
    );
\setpoint_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(11),
      Q => \^setpoint_s_reg[13]_0\(11),
      R => s00_axi_reset
    );
\setpoint_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(12),
      Q => \^setpoint_s_reg[13]_0\(12),
      R => s00_axi_reset
    );
\setpoint_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(13),
      Q => \^setpoint_s_reg[13]_0\(13),
      R => s00_axi_reset
    );
\setpoint_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(1),
      Q => \^setpoint_s_reg[13]_0\(1),
      R => s00_axi_reset
    );
\setpoint_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(2),
      Q => \^setpoint_s_reg[13]_0\(2),
      R => s00_axi_reset
    );
\setpoint_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(3),
      Q => \^setpoint_s_reg[13]_0\(3),
      R => s00_axi_reset
    );
\setpoint_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(4),
      Q => \^setpoint_s_reg[13]_0\(4),
      R => s00_axi_reset
    );
\setpoint_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(5),
      Q => \^setpoint_s_reg[13]_0\(5),
      R => s00_axi_reset
    );
\setpoint_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(6),
      Q => \^setpoint_s_reg[13]_0\(6),
      R => s00_axi_reset
    );
\setpoint_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(7),
      Q => \^setpoint_s_reg[13]_0\(7),
      R => s00_axi_reset
    );
\setpoint_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(8),
      Q => \^setpoint_s_reg[13]_0\(8),
      R => s00_axi_reset
    );
\setpoint_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(9),
      Q => \^setpoint_s_reg[13]_0\(9),
      R => s00_axi_reset
    );
sign_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sign_s_reg_0,
      Q => sign_s,
      R => s00_axi_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_handComm is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    axi_awready_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    addr_s : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \addr_reg_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \addr_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_awready_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \addr_reg_reg[0]_1\ : out STD_LOGIC;
    read_en_s : out STD_LOGIC;
    s00_axi_wdata_0_sp_1 : out STD_LOGIC;
    \s00_axi_wdata[0]_0\ : out STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    \readdata_s_reg[12]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \readdata_s_reg[12]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \readdata_s_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \readdata_s_reg[12]_1\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \readdata_s_reg[12]_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sign_s : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    int_rst_s : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    \readdata_s_reg[5]\ : in STD_LOGIC;
    \readdata_s_reg[4]\ : in STD_LOGIC;
    \readdata_s_reg[3]\ : in STD_LOGIC;
    \readdata_s_reg[2]\ : in STD_LOGIC;
    \readdata_s_reg[1]\ : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_handComm;

architecture STRUCTURE of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_handComm is
  signal addr_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^addr_reg_reg[0]_1\ : STD_LOGIC;
  signal \^addr_s\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal \is_input_s[5]_i_2_n_0\ : STD_LOGIC;
  signal read_addr_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^read_en_s\ : STD_LOGIC;
  signal \readdata_s[0]_i_2_n_0\ : STD_LOGIC;
  signal \readdata_s[0]_i_3_n_0\ : STD_LOGIC;
  signal \readdata_s[10]_i_2_n_0\ : STD_LOGIC;
  signal \readdata_s[11]_i_2_n_0\ : STD_LOGIC;
  signal \readdata_s[12]_i_2_n_0\ : STD_LOGIC;
  signal \readdata_s[12]_i_3_n_0\ : STD_LOGIC;
  signal \readdata_s[6]_i_2_n_0\ : STD_LOGIC;
  signal \readdata_s[7]_i_2_n_0\ : STD_LOGIC;
  signal \readdata_s[8]_i_2_n_0\ : STD_LOGIC;
  signal \readdata_s[9]_i_2_n_0\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal s00_axi_wdata_0_sn_1 : STD_LOGIC;
  signal write_addr_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal write_en_s : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \kd_s[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ki_s[17]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \kp_s[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \readdata_s[12]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \readdata_s[6]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \readdata_s[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \setpoint_s[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \setpoint_s[13]_i_2\ : label is "soft_lutpair9";
begin
  \addr_reg_reg[0]_1\ <= \^addr_reg_reg[0]_1\;
  addr_s(2 downto 0) <= \^addr_s\(2 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  read_en_s <= \^read_en_s\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wdata_0_sp_1 <= s00_axi_wdata_0_sn_1;
\addr_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \^read_en_s\,
      I1 => addr_reg(0),
      I2 => read_addr_s(0),
      I3 => write_en_s,
      I4 => write_addr_s(0),
      O => \^addr_s\(0)
    );
\addr_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \^read_en_s\,
      I1 => addr_reg(1),
      I2 => read_addr_s(1),
      I3 => write_en_s,
      I4 => write_addr_s(1),
      O => \^addr_s\(1)
    );
\addr_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \^read_en_s\,
      I1 => addr_reg(2),
      I2 => read_addr_s(2),
      I3 => write_en_s,
      I4 => write_addr_s(2),
      O => \^addr_s\(2)
    );
\addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^addr_s\(0),
      Q => addr_reg(0),
      R => '0'
    );
\addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^addr_s\(1),
      Q => addr_reg(1),
      R => '0'
    );
\addr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^addr_s\(2),
      Q => addr_reg(2),
      R => '0'
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => read_addr_s(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => read_addr_s(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => read_addr_s(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => read_addr_s(0),
      S => s00_axi_reset
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => read_addr_s(1),
      S => s00_axi_reset
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => read_addr_s(2),
      S => s00_axi_reset
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => s00_axi_reset
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => write_addr_s(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => write_addr_s(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => write_addr_s(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => write_addr_s(0),
      R => s00_axi_reset
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => write_addr_s(1),
      R => s00_axi_reset
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => write_addr_s(2),
      R => s00_axi_reset
    );
axi_awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => s00_axi_reset
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555C0000000"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \^axi_wready_reg_0\,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => s00_axi_reset
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^s00_axi_rvalid\,
      I2 => s00_axi_arvalid,
      I3 => \^axi_arready_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => s00_axi_reset
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^axi_wready_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => s00_axi_reset
    );
int_rst_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => write_en_s,
      I2 => \^addr_s\(1),
      I3 => \^addr_s\(0),
      I4 => \^addr_s\(2),
      I5 => int_rst_s,
      O => \s00_axi_wdata[0]_0\
    );
\is_input_s[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \is_input_s[5]_i_2_n_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => \^axi_wready_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => \^addr_s\(1),
      O => axi_awready_reg_1(0)
    );
\is_input_s[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFBABFBABABFBF"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => write_addr_s(2),
      I2 => write_en_s,
      I3 => read_addr_s(2),
      I4 => addr_reg(2),
      I5 => \^read_en_s\,
      O => \is_input_s[5]_i_2_n_0\
    );
\kd_s[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^addr_s\(2),
      I1 => \^addr_s\(1),
      I2 => \^addr_s\(0),
      I3 => write_en_s,
      O => \addr_reg_reg[2]_0\(0)
    );
\ki_s[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => write_en_s,
      I1 => \^addr_s\(1),
      I2 => \^addr_s\(0),
      I3 => \^addr_s\(2),
      O => axi_awready_reg_2(0)
    );
\kp_s[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => write_en_s,
      I2 => \^addr_s\(1),
      I3 => \^addr_s\(2),
      O => \addr_reg_reg[0]_0\(0)
    );
\readdata_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \readdata_s[0]_i_2_n_0\,
      I1 => \readdata_s_reg[12]\(0),
      I2 => \readdata_s[12]_i_3_n_0\,
      I3 => \readdata_s_reg[12]_0\(0),
      I4 => \^addr_reg_reg[0]_1\,
      I5 => \readdata_s[0]_i_3_n_0\,
      O => D(0)
    );
\readdata_s[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF020002"
    )
        port map (
      I0 => \readdata_s_reg[12]_2\(0),
      I1 => \^addr_s\(0),
      I2 => \^addr_s\(1),
      I3 => \^addr_s\(2),
      I4 => sign_s,
      O => \readdata_s[0]_i_2_n_0\
    );
\readdata_s[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAC0F000"
    )
        port map (
      I0 => \readdata_s_reg[0]\(0),
      I1 => \readdata_s_reg[12]_1\(0),
      I2 => \^addr_s\(0),
      I3 => \^addr_s\(2),
      I4 => \^addr_s\(1),
      O => \readdata_s[0]_i_3_n_0\
    );
\readdata_s[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \readdata_s[10]_i_2_n_0\,
      I1 => \^addr_reg_reg[0]_1\,
      I2 => \readdata_s_reg[12]_0\(5),
      I3 => \readdata_s[12]_i_3_n_0\,
      I4 => \readdata_s_reg[12]\(10),
      O => D(10)
    );
\readdata_s[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0C0F00A"
    )
        port map (
      I0 => \readdata_s_reg[12]_2\(5),
      I1 => \readdata_s_reg[12]_1\(10),
      I2 => \^addr_s\(0),
      I3 => \^addr_s\(2),
      I4 => \^addr_s\(1),
      O => \readdata_s[10]_i_2_n_0\
    );
\readdata_s[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \readdata_s[11]_i_2_n_0\,
      I1 => \^addr_reg_reg[0]_1\,
      I2 => \readdata_s_reg[12]_0\(6),
      I3 => \readdata_s[12]_i_3_n_0\,
      I4 => \readdata_s_reg[12]\(11),
      O => D(11)
    );
\readdata_s[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0C0F00A"
    )
        port map (
      I0 => \readdata_s_reg[12]_2\(6),
      I1 => \readdata_s_reg[12]_1\(11),
      I2 => \^addr_s\(0),
      I3 => \^addr_s\(2),
      I4 => \^addr_s\(1),
      O => \readdata_s[11]_i_2_n_0\
    );
\readdata_s[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \readdata_s[12]_i_2_n_0\,
      I1 => \^addr_reg_reg[0]_1\,
      I2 => \readdata_s_reg[12]_0\(7),
      I3 => \readdata_s[12]_i_3_n_0\,
      I4 => \readdata_s_reg[12]\(12),
      O => D(12)
    );
\readdata_s[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0C0F00A"
    )
        port map (
      I0 => \readdata_s_reg[12]_2\(7),
      I1 => \readdata_s_reg[12]_1\(12),
      I2 => \^addr_s\(0),
      I3 => \^addr_s\(2),
      I4 => \^addr_s\(1),
      O => \readdata_s[12]_i_2_n_0\
    );
\readdata_s[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => \^addr_s\(2),
      I2 => \^addr_s\(1),
      O => \readdata_s[12]_i_3_n_0\
    );
\readdata_s[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F8FFF0F0F0"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => \^addr_s\(1),
      I2 => \readdata_s_reg[1]\,
      I3 => \readdata_s[12]_i_3_n_0\,
      I4 => \readdata_s_reg[12]\(1),
      I5 => \readdata_s_reg[12]_1\(1),
      O => D(1)
    );
\readdata_s[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F8FFF0F0F0"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => \^addr_s\(1),
      I2 => \readdata_s_reg[2]\,
      I3 => \readdata_s[12]_i_3_n_0\,
      I4 => \readdata_s_reg[12]\(2),
      I5 => \readdata_s_reg[12]_1\(2),
      O => D(2)
    );
\readdata_s[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => \^read_en_s\
    );
\readdata_s[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => \^addr_s\(1),
      O => \^addr_reg_reg[0]_1\
    );
\readdata_s[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F8FFF0F0F0"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => \^addr_s\(1),
      I2 => \readdata_s_reg[3]\,
      I3 => \readdata_s[12]_i_3_n_0\,
      I4 => \readdata_s_reg[12]\(3),
      I5 => \readdata_s_reg[12]_1\(3),
      O => D(3)
    );
\readdata_s[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F8FFF0F0F0"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => \^addr_s\(1),
      I2 => \readdata_s_reg[4]\,
      I3 => \readdata_s[12]_i_3_n_0\,
      I4 => \readdata_s_reg[12]\(4),
      I5 => \readdata_s_reg[12]_1\(4),
      O => D(4)
    );
\readdata_s[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F8FFF0F0F0"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => \^addr_s\(1),
      I2 => \readdata_s_reg[5]\,
      I3 => \readdata_s[12]_i_3_n_0\,
      I4 => \readdata_s_reg[12]\(5),
      I5 => \readdata_s_reg[12]_1\(5),
      O => D(5)
    );
\readdata_s[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \readdata_s[6]_i_2_n_0\,
      I1 => \^addr_reg_reg[0]_1\,
      I2 => \readdata_s_reg[12]_0\(1),
      I3 => \readdata_s[12]_i_3_n_0\,
      I4 => \readdata_s_reg[12]\(6),
      O => D(6)
    );
\readdata_s[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0C0F00A"
    )
        port map (
      I0 => \readdata_s_reg[12]_2\(1),
      I1 => \readdata_s_reg[12]_1\(6),
      I2 => \^addr_s\(0),
      I3 => \^addr_s\(2),
      I4 => \^addr_s\(1),
      O => \readdata_s[6]_i_2_n_0\
    );
\readdata_s[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \readdata_s[7]_i_2_n_0\,
      I1 => \^addr_reg_reg[0]_1\,
      I2 => \readdata_s_reg[12]_0\(2),
      I3 => \readdata_s[12]_i_3_n_0\,
      I4 => \readdata_s_reg[12]\(7),
      O => D(7)
    );
\readdata_s[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0C0F00A"
    )
        port map (
      I0 => \readdata_s_reg[12]_2\(2),
      I1 => \readdata_s_reg[12]_1\(7),
      I2 => \^addr_s\(0),
      I3 => \^addr_s\(2),
      I4 => \^addr_s\(1),
      O => \readdata_s[7]_i_2_n_0\
    );
\readdata_s[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \readdata_s[8]_i_2_n_0\,
      I1 => \^addr_reg_reg[0]_1\,
      I2 => \readdata_s_reg[12]_0\(3),
      I3 => \readdata_s[12]_i_3_n_0\,
      I4 => \readdata_s_reg[12]\(8),
      O => D(8)
    );
\readdata_s[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0C0F00A"
    )
        port map (
      I0 => \readdata_s_reg[12]_2\(3),
      I1 => \readdata_s_reg[12]_1\(8),
      I2 => \^addr_s\(0),
      I3 => \^addr_s\(2),
      I4 => \^addr_s\(1),
      O => \readdata_s[8]_i_2_n_0\
    );
\readdata_s[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \readdata_s[9]_i_2_n_0\,
      I1 => \^addr_reg_reg[0]_1\,
      I2 => \readdata_s_reg[12]_0\(4),
      I3 => \readdata_s[12]_i_3_n_0\,
      I4 => \readdata_s_reg[12]\(9),
      O => D(9)
    );
\readdata_s[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0C0F00A"
    )
        port map (
      I0 => \readdata_s_reg[12]_2\(4),
      I1 => \readdata_s_reg[12]_1\(9),
      I2 => \^addr_s\(0),
      I3 => \^addr_s\(2),
      I4 => \^addr_s\(1),
      O => \readdata_s[9]_i_2_n_0\
    );
\setpoint_s[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^addr_s\(2),
      I1 => \^addr_s\(1),
      I2 => write_en_s,
      I3 => \^addr_s\(0),
      O => E(0)
    );
\setpoint_s[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => \^axi_wready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => write_en_s
    );
sign_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \^addr_s\(1),
      I2 => write_en_s,
      I3 => \is_input_s[5]_i_2_n_0\,
      I4 => sign_s,
      O => s00_axi_wdata_0_sn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_logic is
  port (
    data_en_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_i[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_i[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_i[13]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    A : in STD_LOGIC_VECTOR ( 14 downto 0 );
    P_temp_s_0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \I_temp_s_reg[19]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    int_rst_i : in STD_LOGIC;
    \I_s_reg[13]_0\ : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    setpoint_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    I_sum_s_0 : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_logic;

architecture STRUCTURE of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_logic is
  signal C : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal CEC : STD_LOGIC;
  signal I_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal I_sum_s_n_100 : STD_LOGIC;
  signal I_sum_s_n_101 : STD_LOGIC;
  signal I_sum_s_n_102 : STD_LOGIC;
  signal I_sum_s_n_103 : STD_LOGIC;
  signal I_sum_s_n_104 : STD_LOGIC;
  signal I_sum_s_n_105 : STD_LOGIC;
  signal I_sum_s_n_74 : STD_LOGIC;
  signal I_sum_s_n_75 : STD_LOGIC;
  signal I_sum_s_n_76 : STD_LOGIC;
  signal I_sum_s_n_77 : STD_LOGIC;
  signal I_sum_s_n_78 : STD_LOGIC;
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
  signal I_temp_s1 : STD_LOGIC;
  signal I_temp_s11_in : STD_LOGIC;
  signal \I_temp_s[19]_i_1_n_0\ : STD_LOGIC;
  signal \I_temp_s[20]_i_1_n_0\ : STD_LOGIC;
  signal \I_temp_s[21]_i_1_n_0\ : STD_LOGIC;
  signal \I_temp_s[22]_i_1_n_0\ : STD_LOGIC;
  signal \I_temp_s[23]_i_1_n_0\ : STD_LOGIC;
  signal \I_temp_s[24]_i_1_n_0\ : STD_LOGIC;
  signal \I_temp_s[25]_i_1_n_0\ : STD_LOGIC;
  signal \I_temp_s[26]_i_1_n_0\ : STD_LOGIC;
  signal \I_temp_s[27]_i_1_n_0\ : STD_LOGIC;
  signal \I_temp_s[28]_i_1_n_0\ : STD_LOGIC;
  signal \I_temp_s[29]_i_1_n_0\ : STD_LOGIC;
  signal \I_temp_s[30]_i_1_n_0\ : STD_LOGIC;
  signal \I_temp_s[31]_i_1_n_0\ : STD_LOGIC;
  signal \I_temp_s[32]_i_1_n_0\ : STD_LOGIC;
  signal \I_temp_s[32]_i_2_n_0\ : STD_LOGIC;
  signal P_s : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal P_temp_s_n_100 : STD_LOGIC;
  signal P_temp_s_n_101 : STD_LOGIC;
  signal P_temp_s_n_102 : STD_LOGIC;
  signal P_temp_s_n_103 : STD_LOGIC;
  signal P_temp_s_n_104 : STD_LOGIC;
  signal P_temp_s_n_105 : STD_LOGIC;
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
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \pid_out_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[10]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[11]_i_1_n_0\ : STD_LOGIC;
  signal \pid_out_s[12]_i_1_n_0\ : STD_LOGIC;
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
  signal \pid_out_s_reg[13]_i_2_n_3\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_n_1\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_n_2\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_n_3\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_n_4\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_n_5\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_n_6\ : STD_LOGIC;
  signal \pid_sum_s_carry__0_n_7\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_n_1\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_n_2\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_n_3\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_n_4\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_n_5\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_n_6\ : STD_LOGIC;
  signal \pid_sum_s_carry__1_n_7\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_n_0\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_n_1\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_n_2\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_n_3\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_n_4\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_n_6\ : STD_LOGIC;
  signal \pid_sum_s_carry__2_n_7\ : STD_LOGIC;
  signal pid_sum_s_carry_i_1_n_0 : STD_LOGIC;
  signal pid_sum_s_carry_i_2_n_0 : STD_LOGIC;
  signal pid_sum_s_carry_i_3_n_0 : STD_LOGIC;
  signal pid_sum_s_carry_i_4_n_0 : STD_LOGIC;
  signal pid_sum_s_carry_n_0 : STD_LOGIC;
  signal pid_sum_s_carry_n_1 : STD_LOGIC;
  signal pid_sum_s_carry_n_2 : STD_LOGIC;
  signal pid_sum_s_carry_n_3 : STD_LOGIC;
  signal pid_sum_s_carry_n_4 : STD_LOGIC;
  signal pid_sum_s_carry_n_5 : STD_LOGIC;
  signal pid_sum_s_carry_n_6 : STD_LOGIC;
  signal pid_sum_s_carry_n_7 : STD_LOGIC;
  signal NLW_I_sum_s_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_I_sum_s_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_I_sum_s_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_I_sum_s_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_I_sum_s_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_I_sum_s_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_I_sum_s_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_I_sum_s_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_I_sum_s_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
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
  signal \NLW_pid_out_s_reg[13]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pid_out_s_reg[13]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pid_sum_s_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of I_sum_s : label is "{SYNTH-11 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \I_temp_s[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \I_temp_s[20]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \I_temp_s[21]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \I_temp_s[22]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \I_temp_s[23]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \I_temp_s[24]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \I_temp_s[25]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \I_temp_s[26]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \I_temp_s[27]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \I_temp_s[28]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \I_temp_s[29]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \I_temp_s[30]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \I_temp_s[31]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \I_temp_s[32]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of data2_en_s_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of data_en_s_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pid_out_s[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pid_out_s[10]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \pid_out_s[11]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \pid_out_s[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pid_out_s[13]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pid_out_s[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pid_out_s[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pid_out_s[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pid_out_s[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pid_out_s[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pid_out_s[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pid_out_s[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pid_out_s[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \pid_out_s[9]_i_1\ : label is "soft_lutpair21";
begin
\I_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_s,
      D => p_1_in(0),
      Q => I_s(0),
      R => \I_s_reg[13]_0\
    );
\I_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_s,
      D => p_1_in(10),
      Q => I_s(10),
      R => \I_s_reg[13]_0\
    );
\I_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_s,
      D => p_1_in(11),
      Q => I_s(11),
      R => \I_s_reg[13]_0\
    );
\I_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_s,
      D => p_1_in(12),
      Q => I_s(12),
      R => \I_s_reg[13]_0\
    );
\I_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_s,
      D => p_1_in(13),
      Q => I_s(13),
      R => \I_s_reg[13]_0\
    );
\I_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_s,
      D => p_1_in(1),
      Q => I_s(1),
      R => \I_s_reg[13]_0\
    );
\I_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_s,
      D => p_1_in(2),
      Q => I_s(2),
      R => \I_s_reg[13]_0\
    );
\I_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_s,
      D => p_1_in(3),
      Q => I_s(3),
      R => \I_s_reg[13]_0\
    );
\I_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_s,
      D => p_1_in(4),
      Q => I_s(4),
      R => \I_s_reg[13]_0\
    );
\I_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_s,
      D => p_1_in(5),
      Q => I_s(5),
      R => \I_s_reg[13]_0\
    );
\I_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_s,
      D => p_1_in(6),
      Q => I_s(6),
      R => \I_s_reg[13]_0\
    );
\I_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_s,
      D => p_1_in(7),
      Q => I_s(7),
      R => \I_s_reg[13]_0\
    );
\I_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_s,
      D => p_1_in(8),
      Q => I_s(8),
      R => \I_s_reg[13]_0\
    );
\I_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_s,
      D => p_1_in(9),
      Q => I_s(9),
      R => \I_s_reg[13]_0\
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
      MASK => X"FFFCFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"FFFDFFFFFFFF",
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
      B(17 downto 0) => B(17 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_I_sum_s_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => C(32),
      C(46) => C(32),
      C(45) => C(32),
      C(44) => C(32),
      C(43) => C(32),
      C(42) => C(32),
      C(41) => C(32),
      C(40) => C(32),
      C(39) => C(32),
      C(38) => C(32),
      C(37) => C(32),
      C(36) => C(32),
      C(35) => C(32),
      C(34) => C(32),
      C(33) => C(32),
      C(32 downto 0) => C(32 downto 0),
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
      CEC => CEC,
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
      P(47 downto 34) => NLW_I_sum_s_P_UNCONNECTED(47 downto 34),
      P(33 downto 32) => p_0_in(1 downto 0),
      P(31) => I_sum_s_n_74,
      P(30) => I_sum_s_n_75,
      P(29) => I_sum_s_n_76,
      P(28) => I_sum_s_n_77,
      P(27) => I_sum_s_n_78,
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
      PATTERNBDETECT => I_temp_s1,
      PATTERNDETECT => I_temp_s11_in,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_I_sum_s_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_I_sum_s_UNDERFLOW_UNCONNECTED
    );
I_sum_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFEA"
    )
        port map (
      I0 => data_en_s,
      I1 => \out\(0),
      I2 => \I_temp_s_reg[19]_0\(1),
      I3 => int_rst_i,
      I4 => data_rst_i,
      O => CEC
    );
I_sum_s_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => I_temp_s11_in,
      I1 => I_temp_s1,
      I2 => p_0_in(0),
      I3 => \I_s_reg[13]_0\,
      O => C(32)
    );
I_sum_s_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_74,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(31)
    );
I_sum_s_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_75,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(30)
    );
I_sum_s_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_76,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(29)
    );
I_sum_s_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_77,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(28)
    );
I_sum_s_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_78,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(27)
    );
I_sum_s_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_79,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(26)
    );
I_sum_s_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_80,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(25)
    );
I_sum_s_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_81,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(24)
    );
I_sum_s_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_82,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(23)
    );
I_sum_s_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_83,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(22)
    );
I_sum_s_i_35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_84,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(21)
    );
I_sum_s_i_36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_85,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(20)
    );
I_sum_s_i_37: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_86,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(19)
    );
I_sum_s_i_38: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_87,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(18)
    );
I_sum_s_i_39: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_88,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(17)
    );
I_sum_s_i_40: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_89,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(16)
    );
I_sum_s_i_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_90,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(15)
    );
I_sum_s_i_42: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_91,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(14)
    );
I_sum_s_i_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_92,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(13)
    );
I_sum_s_i_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_93,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(12)
    );
I_sum_s_i_45: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_94,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(11)
    );
I_sum_s_i_46: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_95,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(10)
    );
I_sum_s_i_47: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_96,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(9)
    );
I_sum_s_i_48: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_97,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(8)
    );
I_sum_s_i_49: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_98,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(7)
    );
I_sum_s_i_50: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_99,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(6)
    );
I_sum_s_i_51: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_100,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(5)
    );
I_sum_s_i_52: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_101,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(4)
    );
I_sum_s_i_53: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_102,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(3)
    );
I_sum_s_i_54: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_103,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(2)
    );
I_sum_s_i_55: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_104,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(1)
    );
I_sum_s_i_56: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => I_sum_s_n_105,
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      I3 => \I_s_reg[13]_0\,
      O => C(0)
    );
I_sum_s_i_59: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(13),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(13),
      I3 => I_sum_s_0(13),
      O => \data_i[13]\(2)
    );
I_sum_s_i_60: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(13),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(13),
      I3 => I_sum_s_0(13),
      O => \data_i[13]\(1)
    );
I_sum_s_i_61: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(12),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(12),
      I3 => I_sum_s_0(12),
      O => \data_i[13]\(0)
    );
I_sum_s_i_66: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(11),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(11),
      I3 => I_sum_s_0(11),
      O => \data_i[11]\(3)
    );
I_sum_s_i_67: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(10),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(10),
      I3 => I_sum_s_0(10),
      O => \data_i[11]\(2)
    );
I_sum_s_i_68: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(9),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(9),
      I3 => I_sum_s_0(9),
      O => \data_i[11]\(1)
    );
I_sum_s_i_69: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(8),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(8),
      I3 => I_sum_s_0(8),
      O => \data_i[11]\(0)
    );
I_sum_s_i_74: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(7),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(7),
      I3 => I_sum_s_0(7),
      O => \data_i[7]\(3)
    );
I_sum_s_i_75: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(6),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(6),
      I3 => I_sum_s_0(6),
      O => \data_i[7]\(2)
    );
I_sum_s_i_76: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(5),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(5),
      I3 => I_sum_s_0(5),
      O => \data_i[7]\(1)
    );
I_sum_s_i_77: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(4),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(4),
      I3 => I_sum_s_0(4),
      O => \data_i[7]\(0)
    );
I_sum_s_i_82: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(3),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(3),
      I3 => I_sum_s_0(3),
      O => S(3)
    );
I_sum_s_i_83: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(2),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(2),
      I3 => I_sum_s_0(2),
      O => S(2)
    );
I_sum_s_i_84: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(1),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(1),
      I3 => I_sum_s_0(1),
      O => S(1)
    );
I_sum_s_i_85: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_i(0),
      I1 => \I_temp_s_reg[19]_0\(0),
      I2 => setpoint_i(0),
      I3 => I_sum_s_0(0),
      O => S(0)
    );
\I_temp_s[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_temp_s11_in,
      I1 => I_temp_s1,
      I2 => I_sum_s_n_86,
      O => \I_temp_s[19]_i_1_n_0\
    );
\I_temp_s[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_temp_s11_in,
      I1 => I_temp_s1,
      I2 => I_sum_s_n_85,
      O => \I_temp_s[20]_i_1_n_0\
    );
\I_temp_s[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_temp_s11_in,
      I1 => I_temp_s1,
      I2 => I_sum_s_n_84,
      O => \I_temp_s[21]_i_1_n_0\
    );
\I_temp_s[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_temp_s11_in,
      I1 => I_temp_s1,
      I2 => I_sum_s_n_83,
      O => \I_temp_s[22]_i_1_n_0\
    );
\I_temp_s[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_temp_s11_in,
      I1 => I_temp_s1,
      I2 => I_sum_s_n_82,
      O => \I_temp_s[23]_i_1_n_0\
    );
\I_temp_s[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_temp_s11_in,
      I1 => I_temp_s1,
      I2 => I_sum_s_n_81,
      O => \I_temp_s[24]_i_1_n_0\
    );
\I_temp_s[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_temp_s11_in,
      I1 => I_temp_s1,
      I2 => I_sum_s_n_80,
      O => \I_temp_s[25]_i_1_n_0\
    );
\I_temp_s[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_temp_s11_in,
      I1 => I_temp_s1,
      I2 => I_sum_s_n_79,
      O => \I_temp_s[26]_i_1_n_0\
    );
\I_temp_s[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_temp_s11_in,
      I1 => I_temp_s1,
      I2 => I_sum_s_n_78,
      O => \I_temp_s[27]_i_1_n_0\
    );
\I_temp_s[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_temp_s11_in,
      I1 => I_temp_s1,
      I2 => I_sum_s_n_77,
      O => \I_temp_s[28]_i_1_n_0\
    );
\I_temp_s[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_temp_s11_in,
      I1 => I_temp_s1,
      I2 => I_sum_s_n_76,
      O => \I_temp_s[29]_i_1_n_0\
    );
\I_temp_s[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_temp_s11_in,
      I1 => I_temp_s1,
      I2 => I_sum_s_n_75,
      O => \I_temp_s[30]_i_1_n_0\
    );
\I_temp_s[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_temp_s11_in,
      I1 => I_temp_s1,
      I2 => I_sum_s_n_74,
      O => \I_temp_s[31]_i_1_n_0\
    );
\I_temp_s[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => data_rst_i,
      I1 => int_rst_i,
      I2 => \I_temp_s_reg[19]_0\(1),
      I3 => \out\(0),
      O => \I_temp_s[32]_i_1_n_0\
    );
\I_temp_s[32]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => p_0_in(0),
      I1 => I_temp_s1,
      I2 => I_temp_s11_in,
      O => \I_temp_s[32]_i_2_n_0\
    );
\I_temp_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => CEC,
      D => \I_temp_s[19]_i_1_n_0\,
      Q => p_1_in(0),
      R => \I_temp_s[32]_i_1_n_0\
    );
\I_temp_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => CEC,
      D => \I_temp_s[20]_i_1_n_0\,
      Q => p_1_in(1),
      R => \I_temp_s[32]_i_1_n_0\
    );
\I_temp_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => CEC,
      D => \I_temp_s[21]_i_1_n_0\,
      Q => p_1_in(2),
      R => \I_temp_s[32]_i_1_n_0\
    );
\I_temp_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => CEC,
      D => \I_temp_s[22]_i_1_n_0\,
      Q => p_1_in(3),
      R => \I_temp_s[32]_i_1_n_0\
    );
\I_temp_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => CEC,
      D => \I_temp_s[23]_i_1_n_0\,
      Q => p_1_in(4),
      R => \I_temp_s[32]_i_1_n_0\
    );
\I_temp_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => CEC,
      D => \I_temp_s[24]_i_1_n_0\,
      Q => p_1_in(5),
      R => \I_temp_s[32]_i_1_n_0\
    );
\I_temp_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => CEC,
      D => \I_temp_s[25]_i_1_n_0\,
      Q => p_1_in(6),
      R => \I_temp_s[32]_i_1_n_0\
    );
\I_temp_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => CEC,
      D => \I_temp_s[26]_i_1_n_0\,
      Q => p_1_in(7),
      R => \I_temp_s[32]_i_1_n_0\
    );
\I_temp_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => CEC,
      D => \I_temp_s[27]_i_1_n_0\,
      Q => p_1_in(8),
      R => \I_temp_s[32]_i_1_n_0\
    );
\I_temp_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => CEC,
      D => \I_temp_s[28]_i_1_n_0\,
      Q => p_1_in(9),
      R => \I_temp_s[32]_i_1_n_0\
    );
\I_temp_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => CEC,
      D => \I_temp_s[29]_i_1_n_0\,
      Q => p_1_in(10),
      R => \I_temp_s[32]_i_1_n_0\
    );
\I_temp_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => CEC,
      D => \I_temp_s[30]_i_1_n_0\,
      Q => p_1_in(11),
      R => \I_temp_s[32]_i_1_n_0\
    );
\I_temp_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => CEC,
      D => \I_temp_s[31]_i_1_n_0\,
      Q => p_1_in(12),
      R => \I_temp_s[32]_i_1_n_0\
    );
\I_temp_s_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => CEC,
      D => \I_temp_s[32]_i_2_n_0\,
      Q => p_1_in(13),
      R => \I_temp_s[32]_i_1_n_0\
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
      B(17) => P_temp_s_0(13),
      B(16) => P_temp_s_0(13),
      B(15) => P_temp_s_0(13),
      B(14) => P_temp_s_0(13),
      B(13 downto 0) => P_temp_s_0(13 downto 0),
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
      P(28 downto 13) => P_s(15 downto 0),
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
      INIT => X"E8"
    )
        port map (
      I0 => \pid_out_s_reg[13]_i_2_n_3\,
      I1 => \pid_sum_s_carry__2_n_4\,
      I2 => pid_sum_s_carry_n_7,
      O => \pid_out_s[0]_i_1_n_0\
    );
\pid_out_s[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \pid_out_s_reg[13]_i_2_n_3\,
      I1 => \pid_sum_s_carry__2_n_4\,
      I2 => \pid_sum_s_carry__1_n_5\,
      O => \pid_out_s[10]_i_1_n_0\
    );
\pid_out_s[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \pid_out_s_reg[13]_i_2_n_3\,
      I1 => \pid_sum_s_carry__2_n_4\,
      I2 => \pid_sum_s_carry__1_n_4\,
      O => \pid_out_s[11]_i_1_n_0\
    );
\pid_out_s[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \pid_out_s_reg[13]_i_2_n_3\,
      I1 => \pid_sum_s_carry__2_n_4\,
      I2 => \pid_sum_s_carry__2_n_7\,
      O => \pid_out_s[12]_i_1_n_0\
    );
\pid_out_s[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \pid_out_s_reg[13]_i_2_n_3\,
      I1 => \pid_sum_s_carry__2_n_4\,
      I2 => \pid_sum_s_carry__2_n_6\,
      O => \pid_out_s[13]_i_1_n_0\
    );
\pid_out_s[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \pid_out_s_reg[13]_i_2_n_3\,
      I1 => \pid_sum_s_carry__2_n_4\,
      I2 => pid_sum_s_carry_n_6,
      O => \pid_out_s[1]_i_1_n_0\
    );
\pid_out_s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \pid_out_s_reg[13]_i_2_n_3\,
      I1 => \pid_sum_s_carry__2_n_4\,
      I2 => pid_sum_s_carry_n_5,
      O => \pid_out_s[2]_i_1_n_0\
    );
\pid_out_s[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \pid_out_s_reg[13]_i_2_n_3\,
      I1 => \pid_sum_s_carry__2_n_4\,
      I2 => pid_sum_s_carry_n_4,
      O => \pid_out_s[3]_i_1_n_0\
    );
\pid_out_s[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \pid_out_s_reg[13]_i_2_n_3\,
      I1 => \pid_sum_s_carry__2_n_4\,
      I2 => \pid_sum_s_carry__0_n_7\,
      O => \pid_out_s[4]_i_1_n_0\
    );
\pid_out_s[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \pid_out_s_reg[13]_i_2_n_3\,
      I1 => \pid_sum_s_carry__2_n_4\,
      I2 => \pid_sum_s_carry__0_n_6\,
      O => \pid_out_s[5]_i_1_n_0\
    );
\pid_out_s[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \pid_out_s_reg[13]_i_2_n_3\,
      I1 => \pid_sum_s_carry__2_n_4\,
      I2 => \pid_sum_s_carry__0_n_5\,
      O => \pid_out_s[6]_i_1_n_0\
    );
\pid_out_s[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \pid_out_s_reg[13]_i_2_n_3\,
      I1 => \pid_sum_s_carry__2_n_4\,
      I2 => \pid_sum_s_carry__0_n_4\,
      O => \pid_out_s[7]_i_1_n_0\
    );
\pid_out_s[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \pid_out_s_reg[13]_i_2_n_3\,
      I1 => \pid_sum_s_carry__2_n_4\,
      I2 => \pid_sum_s_carry__1_n_7\,
      O => \pid_out_s[8]_i_1_n_0\
    );
\pid_out_s[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \pid_out_s_reg[13]_i_2_n_3\,
      I1 => \pid_sum_s_carry__2_n_4\,
      I2 => \pid_sum_s_carry__1_n_6\,
      O => \pid_out_s[9]_i_1_n_0\
    );
\pid_out_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data2_en_s,
      D => \pid_out_s[0]_i_1_n_0\,
      Q => data_o(0),
      R => data_rst_i
    );
\pid_out_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data2_en_s,
      D => \pid_out_s[10]_i_1_n_0\,
      Q => data_o(10),
      R => data_rst_i
    );
\pid_out_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data2_en_s,
      D => \pid_out_s[11]_i_1_n_0\,
      Q => data_o(11),
      R => data_rst_i
    );
\pid_out_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data2_en_s,
      D => \pid_out_s[12]_i_1_n_0\,
      Q => data_o(12),
      R => data_rst_i
    );
\pid_out_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data2_en_s,
      D => \pid_out_s[13]_i_1_n_0\,
      Q => data_o(13),
      R => data_rst_i
    );
\pid_out_s_reg[13]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pid_sum_s_carry__2_n_0\,
      CO(3 downto 1) => \NLW_pid_out_s_reg[13]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \pid_out_s_reg[13]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pid_out_s_reg[13]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\pid_out_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data2_en_s,
      D => \pid_out_s[1]_i_1_n_0\,
      Q => data_o(1),
      R => data_rst_i
    );
\pid_out_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data2_en_s,
      D => \pid_out_s[2]_i_1_n_0\,
      Q => data_o(2),
      R => data_rst_i
    );
\pid_out_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data2_en_s,
      D => \pid_out_s[3]_i_1_n_0\,
      Q => data_o(3),
      R => data_rst_i
    );
\pid_out_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data2_en_s,
      D => \pid_out_s[4]_i_1_n_0\,
      Q => data_o(4),
      R => data_rst_i
    );
\pid_out_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data2_en_s,
      D => \pid_out_s[5]_i_1_n_0\,
      Q => data_o(5),
      R => data_rst_i
    );
\pid_out_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data2_en_s,
      D => \pid_out_s[6]_i_1_n_0\,
      Q => data_o(6),
      R => data_rst_i
    );
\pid_out_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data2_en_s,
      D => \pid_out_s[7]_i_1_n_0\,
      Q => data_o(7),
      R => data_rst_i
    );
\pid_out_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data2_en_s,
      D => \pid_out_s[8]_i_1_n_0\,
      Q => data_o(8),
      R => data_rst_i
    );
\pid_out_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data2_en_s,
      D => \pid_out_s[9]_i_1_n_0\,
      Q => data_o(9),
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
      O(3) => pid_sum_s_carry_n_4,
      O(2) => pid_sum_s_carry_n_5,
      O(1) => pid_sum_s_carry_n_6,
      O(0) => pid_sum_s_carry_n_7,
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
      O(3) => \pid_sum_s_carry__0_n_4\,
      O(2) => \pid_sum_s_carry__0_n_5\,
      O(1) => \pid_sum_s_carry__0_n_6\,
      O(0) => \pid_sum_s_carry__0_n_7\,
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
      O(3) => \pid_sum_s_carry__1_n_4\,
      O(2) => \pid_sum_s_carry__1_n_5\,
      O(1) => \pid_sum_s_carry__1_n_6\,
      O(0) => \pid_sum_s_carry__1_n_7\,
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
      CO(3) => \pid_sum_s_carry__2_n_0\,
      CO(2) => \pid_sum_s_carry__2_n_1\,
      CO(1) => \pid_sum_s_carry__2_n_2\,
      CO(0) => \pid_sum_s_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => P_s(14),
      DI(2) => \pid_sum_s_carry__2_i_1_n_0\,
      DI(1) => I_s(13),
      DI(0) => P_s(12),
      O(3) => \pid_sum_s_carry__2_n_4\,
      O(2) => \NLW_pid_sum_s_carry__2_O_UNCONNECTED\(2),
      O(1) => \pid_sum_s_carry__2_n_6\,
      O(0) => \pid_sum_s_carry__2_n_7\,
      S(3) => \pid_sum_s_carry__2_i_2_n_0\,
      S(2) => \pid_sum_s_carry__2_i_3_n_0\,
      S(1) => \pid_sum_s_carry__2_i_4_n_0\,
      S(0) => \pid_sum_s_carry__2_i_5_n_0\
    );
\pid_sum_s_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I_s(13),
      O => \pid_sum_s_carry__2_i_1_n_0\
    );
\pid_sum_s_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => P_s(14),
      I1 => P_s(15),
      O => \pid_sum_s_carry__2_i_2_n_0\
    );
\pid_sum_s_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => I_s(13),
      I1 => P_s(14),
      O => \pid_sum_s_carry__2_i_3_n_0\
    );
\pid_sum_s_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => I_s(13),
      I1 => P_s(13),
      O => \pid_sum_s_carry__2_i_4_n_0\
    );
\pid_sum_s_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P_s(12),
      I1 => I_s(12),
      O => \pid_sum_s_carry__2_i_5_n_0\
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
entity double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_bit is
  port (
    sign2_s : out STD_LOGIC;
    sign_s : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sign_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC
  );
end double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_bit;

architecture STRUCTURE of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_bit is
  signal flipflops : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of flipflops : signal is "true";
  signal sync_stage0_s : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \flipflops_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \flipflops_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2]\ : label is "yes";
begin
I_sum_s_i_86: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => flipflops(2),
      I1 => \out\(0),
      I2 => sign_i,
      O => sign2_s
    );
\flipflops_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_stage0_s,
      Q => flipflops(0),
      R => '0'
    );
\flipflops_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => flipflops(0),
      Q => flipflops(1),
      R => '0'
    );
\flipflops_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => flipflops(1),
      Q => flipflops(2),
      R => '0'
    );
sync_stage0_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sign_s,
      Q => sync_stage0_s,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_bit__xdcDup__1\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    int_rst_s : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    data_clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_bit__xdcDup__1\ : entity is "pidv3_axi_sync_bit";
end \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_bit__xdcDup__1\;

architecture STRUCTURE of \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_bit__xdcDup__1\ is
  signal flipflops : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of flipflops : signal is "true";
  signal sync_stage0_s_reg_n_0 : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \flipflops_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \flipflops_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2]\ : label is "yes";
begin
  \out\(0) <= flipflops(2);
\flipflops_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_stage0_s_reg_n_0,
      Q => flipflops(0),
      R => '0'
    );
\flipflops_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => flipflops(0),
      Q => flipflops(1),
      R => '0'
    );
\flipflops_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => flipflops(1),
      Q => flipflops(2),
      R => '0'
    );
sync_stage0_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_rst_s,
      Q => sync_stage0_s_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    A : out STD_LOGIC_VECTOR ( 14 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    setpoint_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    I_sum_s : in STD_LOGIC_VECTOR ( 0 to 0 );
    sign2_s : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I_sum_s_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I_sum_s_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I_sum_s_2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    data_clk_i : in STD_LOGIC
  );
end double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector;

architecture STRUCTURE of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector is
  signal I_sum_s_i_20_n_2 : STD_LOGIC;
  signal I_sum_s_i_20_n_3 : STD_LOGIC;
  signal I_sum_s_i_21_n_0 : STD_LOGIC;
  signal I_sum_s_i_21_n_1 : STD_LOGIC;
  signal I_sum_s_i_21_n_2 : STD_LOGIC;
  signal I_sum_s_i_21_n_3 : STD_LOGIC;
  signal I_sum_s_i_22_n_0 : STD_LOGIC;
  signal I_sum_s_i_22_n_1 : STD_LOGIC;
  signal I_sum_s_i_22_n_2 : STD_LOGIC;
  signal I_sum_s_i_22_n_3 : STD_LOGIC;
  signal I_sum_s_i_23_n_0 : STD_LOGIC;
  signal I_sum_s_i_23_n_1 : STD_LOGIC;
  signal I_sum_s_i_23_n_2 : STD_LOGIC;
  signal I_sum_s_i_23_n_3 : STD_LOGIC;
  signal I_sum_s_i_57_n_0 : STD_LOGIC;
  signal I_sum_s_i_58_n_0 : STD_LOGIC;
  signal I_sum_s_i_62_n_0 : STD_LOGIC;
  signal I_sum_s_i_63_n_0 : STD_LOGIC;
  signal I_sum_s_i_64_n_0 : STD_LOGIC;
  signal I_sum_s_i_65_n_0 : STD_LOGIC;
  signal I_sum_s_i_70_n_0 : STD_LOGIC;
  signal I_sum_s_i_71_n_0 : STD_LOGIC;
  signal I_sum_s_i_72_n_0 : STD_LOGIC;
  signal I_sum_s_i_73_n_0 : STD_LOGIC;
  signal I_sum_s_i_78_n_0 : STD_LOGIC;
  signal I_sum_s_i_79_n_0 : STD_LOGIC;
  signal I_sum_s_i_80_n_0 : STD_LOGIC;
  signal I_sum_s_i_81_n_0 : STD_LOGIC;
  signal \flipflops_vect[0]_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute async_reg : string;
  attribute async_reg of \flipflops_vect[0]_0\ : signal is "true";
  signal \flipflops_vect[1]_1\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute async_reg of \flipflops_vect[1]_1\ : signal is "true";
  signal \flipflops_vect[2]_2\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute async_reg of \flipflops_vect[2]_2\ : signal is "true";
  signal sync_vect_stage0_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_I_sum_s_i_20_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_I_sum_s_i_20_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of I_sum_s_i_20 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of I_sum_s_i_21 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of I_sum_s_i_22 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of I_sum_s_i_23 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \flipflops_vect_reg[0][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][9]\ : label is "yes";
begin
  \out\(13 downto 0) <= \flipflops_vect[2]_2\(13 downto 0);
I_sum_s_i_20: unisim.vcomponents.CARRY4
     port map (
      CI => I_sum_s_i_21_n_0,
      CO(3 downto 2) => NLW_I_sum_s_i_20_CO_UNCONNECTED(3 downto 2),
      CO(1) => I_sum_s_i_20_n_2,
      CO(0) => I_sum_s_i_20_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => I_sum_s_i_57_n_0,
      DI(0) => I_sum_s_i_58_n_0,
      O(3) => NLW_I_sum_s_i_20_O_UNCONNECTED(3),
      O(2 downto 0) => A(14 downto 12),
      S(3) => '0',
      S(2 downto 0) => I_sum_s_2(2 downto 0)
    );
I_sum_s_i_21: unisim.vcomponents.CARRY4
     port map (
      CI => I_sum_s_i_22_n_0,
      CO(3) => I_sum_s_i_21_n_0,
      CO(2) => I_sum_s_i_21_n_1,
      CO(1) => I_sum_s_i_21_n_2,
      CO(0) => I_sum_s_i_21_n_3,
      CYINIT => '0',
      DI(3) => I_sum_s_i_62_n_0,
      DI(2) => I_sum_s_i_63_n_0,
      DI(1) => I_sum_s_i_64_n_0,
      DI(0) => I_sum_s_i_65_n_0,
      O(3 downto 0) => A(11 downto 8),
      S(3 downto 0) => I_sum_s_1(3 downto 0)
    );
I_sum_s_i_22: unisim.vcomponents.CARRY4
     port map (
      CI => I_sum_s_i_23_n_0,
      CO(3) => I_sum_s_i_22_n_0,
      CO(2) => I_sum_s_i_22_n_1,
      CO(1) => I_sum_s_i_22_n_2,
      CO(0) => I_sum_s_i_22_n_3,
      CYINIT => '0',
      DI(3) => I_sum_s_i_70_n_0,
      DI(2) => I_sum_s_i_71_n_0,
      DI(1) => I_sum_s_i_72_n_0,
      DI(0) => I_sum_s_i_73_n_0,
      O(3 downto 0) => A(7 downto 4),
      S(3 downto 0) => I_sum_s_0(3 downto 0)
    );
I_sum_s_i_23: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => I_sum_s_i_23_n_0,
      CO(2) => I_sum_s_i_23_n_1,
      CO(1) => I_sum_s_i_23_n_2,
      CO(0) => I_sum_s_i_23_n_3,
      CYINIT => '1',
      DI(3) => I_sum_s_i_78_n_0,
      DI(2) => I_sum_s_i_79_n_0,
      DI(1) => I_sum_s_i_80_n_0,
      DI(0) => I_sum_s_i_81_n_0,
      O(3 downto 0) => A(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
I_sum_s_i_57: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555330F"
    )
        port map (
      I0 => data_i(13),
      I1 => \flipflops_vect[2]_2\(13),
      I2 => setpoint_i(13),
      I3 => I_sum_s(0),
      I4 => sign2_s,
      O => I_sum_s_i_57_n_0
    );
I_sum_s_i_58: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555330F"
    )
        port map (
      I0 => data_i(12),
      I1 => \flipflops_vect[2]_2\(12),
      I2 => setpoint_i(12),
      I3 => I_sum_s(0),
      I4 => sign2_s,
      O => I_sum_s_i_58_n_0
    );
I_sum_s_i_62: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555330F"
    )
        port map (
      I0 => data_i(11),
      I1 => \flipflops_vect[2]_2\(11),
      I2 => setpoint_i(11),
      I3 => I_sum_s(0),
      I4 => sign2_s,
      O => I_sum_s_i_62_n_0
    );
I_sum_s_i_63: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555330F"
    )
        port map (
      I0 => data_i(10),
      I1 => \flipflops_vect[2]_2\(10),
      I2 => setpoint_i(10),
      I3 => I_sum_s(0),
      I4 => sign2_s,
      O => I_sum_s_i_63_n_0
    );
I_sum_s_i_64: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555330F"
    )
        port map (
      I0 => data_i(9),
      I1 => \flipflops_vect[2]_2\(9),
      I2 => setpoint_i(9),
      I3 => I_sum_s(0),
      I4 => sign2_s,
      O => I_sum_s_i_64_n_0
    );
I_sum_s_i_65: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555330F"
    )
        port map (
      I0 => data_i(8),
      I1 => \flipflops_vect[2]_2\(8),
      I2 => setpoint_i(8),
      I3 => I_sum_s(0),
      I4 => sign2_s,
      O => I_sum_s_i_65_n_0
    );
I_sum_s_i_70: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555330F"
    )
        port map (
      I0 => data_i(7),
      I1 => \flipflops_vect[2]_2\(7),
      I2 => setpoint_i(7),
      I3 => I_sum_s(0),
      I4 => sign2_s,
      O => I_sum_s_i_70_n_0
    );
I_sum_s_i_71: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555330F"
    )
        port map (
      I0 => data_i(6),
      I1 => \flipflops_vect[2]_2\(6),
      I2 => setpoint_i(6),
      I3 => I_sum_s(0),
      I4 => sign2_s,
      O => I_sum_s_i_71_n_0
    );
I_sum_s_i_72: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555330F"
    )
        port map (
      I0 => data_i(5),
      I1 => \flipflops_vect[2]_2\(5),
      I2 => setpoint_i(5),
      I3 => I_sum_s(0),
      I4 => sign2_s,
      O => I_sum_s_i_72_n_0
    );
I_sum_s_i_73: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555330F"
    )
        port map (
      I0 => data_i(4),
      I1 => \flipflops_vect[2]_2\(4),
      I2 => setpoint_i(4),
      I3 => I_sum_s(0),
      I4 => sign2_s,
      O => I_sum_s_i_73_n_0
    );
I_sum_s_i_78: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555330F"
    )
        port map (
      I0 => data_i(3),
      I1 => \flipflops_vect[2]_2\(3),
      I2 => setpoint_i(3),
      I3 => I_sum_s(0),
      I4 => sign2_s,
      O => I_sum_s_i_78_n_0
    );
I_sum_s_i_79: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555330F"
    )
        port map (
      I0 => data_i(2),
      I1 => \flipflops_vect[2]_2\(2),
      I2 => setpoint_i(2),
      I3 => I_sum_s(0),
      I4 => sign2_s,
      O => I_sum_s_i_79_n_0
    );
I_sum_s_i_80: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555330F"
    )
        port map (
      I0 => data_i(1),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => setpoint_i(1),
      I3 => I_sum_s(0),
      I4 => sign2_s,
      O => I_sum_s_i_80_n_0
    );
I_sum_s_i_81: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555330F"
    )
        port map (
      I0 => data_i(0),
      I1 => \flipflops_vect[2]_2\(0),
      I2 => setpoint_i(0),
      I3 => I_sum_s(0),
      I4 => sign2_s,
      O => I_sum_s_i_81_n_0
    );
\flipflops_vect_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(0),
      Q => \flipflops_vect[0]_0\(0),
      R => '0'
    );
\flipflops_vect_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(10),
      Q => \flipflops_vect[0]_0\(10),
      R => '0'
    );
\flipflops_vect_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(11),
      Q => \flipflops_vect[0]_0\(11),
      R => '0'
    );
\flipflops_vect_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(12),
      Q => \flipflops_vect[0]_0\(12),
      R => '0'
    );
\flipflops_vect_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(13),
      Q => \flipflops_vect[0]_0\(13),
      R => '0'
    );
\flipflops_vect_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(1),
      Q => \flipflops_vect[0]_0\(1),
      R => '0'
    );
\flipflops_vect_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(2),
      Q => \flipflops_vect[0]_0\(2),
      R => '0'
    );
\flipflops_vect_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(3),
      Q => \flipflops_vect[0]_0\(3),
      R => '0'
    );
\flipflops_vect_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(4),
      Q => \flipflops_vect[0]_0\(4),
      R => '0'
    );
\flipflops_vect_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(5),
      Q => \flipflops_vect[0]_0\(5),
      R => '0'
    );
\flipflops_vect_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(6),
      Q => \flipflops_vect[0]_0\(6),
      R => '0'
    );
\flipflops_vect_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(7),
      Q => \flipflops_vect[0]_0\(7),
      R => '0'
    );
\flipflops_vect_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(8),
      Q => \flipflops_vect[0]_0\(8),
      R => '0'
    );
\flipflops_vect_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(9),
      Q => \flipflops_vect[0]_0\(9),
      R => '0'
    );
\flipflops_vect_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(0),
      Q => \flipflops_vect[1]_1\(0),
      R => '0'
    );
\flipflops_vect_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(10),
      Q => \flipflops_vect[1]_1\(10),
      R => '0'
    );
\flipflops_vect_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(11),
      Q => \flipflops_vect[1]_1\(11),
      R => '0'
    );
\flipflops_vect_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(12),
      Q => \flipflops_vect[1]_1\(12),
      R => '0'
    );
\flipflops_vect_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(13),
      Q => \flipflops_vect[1]_1\(13),
      R => '0'
    );
\flipflops_vect_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(1),
      Q => \flipflops_vect[1]_1\(1),
      R => '0'
    );
\flipflops_vect_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(2),
      Q => \flipflops_vect[1]_1\(2),
      R => '0'
    );
\flipflops_vect_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(3),
      Q => \flipflops_vect[1]_1\(3),
      R => '0'
    );
\flipflops_vect_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(4),
      Q => \flipflops_vect[1]_1\(4),
      R => '0'
    );
\flipflops_vect_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(5),
      Q => \flipflops_vect[1]_1\(5),
      R => '0'
    );
\flipflops_vect_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(6),
      Q => \flipflops_vect[1]_1\(6),
      R => '0'
    );
\flipflops_vect_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(7),
      Q => \flipflops_vect[1]_1\(7),
      R => '0'
    );
\flipflops_vect_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(8),
      Q => \flipflops_vect[1]_1\(8),
      R => '0'
    );
\flipflops_vect_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(9),
      Q => \flipflops_vect[1]_1\(9),
      R => '0'
    );
\flipflops_vect_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(0),
      Q => \flipflops_vect[2]_2\(0),
      R => '0'
    );
\flipflops_vect_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(10),
      Q => \flipflops_vect[2]_2\(10),
      R => '0'
    );
\flipflops_vect_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(11),
      Q => \flipflops_vect[2]_2\(11),
      R => '0'
    );
\flipflops_vect_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(12),
      Q => \flipflops_vect[2]_2\(12),
      R => '0'
    );
\flipflops_vect_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(13),
      Q => \flipflops_vect[2]_2\(13),
      R => '0'
    );
\flipflops_vect_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(1),
      Q => \flipflops_vect[2]_2\(1),
      R => '0'
    );
\flipflops_vect_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(2),
      Q => \flipflops_vect[2]_2\(2),
      R => '0'
    );
\flipflops_vect_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(3),
      Q => \flipflops_vect[2]_2\(3),
      R => '0'
    );
\flipflops_vect_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(4),
      Q => \flipflops_vect[2]_2\(4),
      R => '0'
    );
\flipflops_vect_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(5),
      Q => \flipflops_vect[2]_2\(5),
      R => '0'
    );
\flipflops_vect_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(6),
      Q => \flipflops_vect[2]_2\(6),
      R => '0'
    );
\flipflops_vect_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(7),
      Q => \flipflops_vect[2]_2\(7),
      R => '0'
    );
\flipflops_vect_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(8),
      Q => \flipflops_vect[2]_2\(8),
      R => '0'
    );
\flipflops_vect_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(9),
      Q => \flipflops_vect[2]_2\(9),
      R => '0'
    );
\sync_vect_stage0_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(0),
      Q => sync_vect_stage0_s(0),
      R => '0'
    );
\sync_vect_stage0_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(10),
      Q => sync_vect_stage0_s(10),
      R => '0'
    );
\sync_vect_stage0_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(11),
      Q => sync_vect_stage0_s(11),
      R => '0'
    );
\sync_vect_stage0_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(12),
      Q => sync_vect_stage0_s(12),
      R => '0'
    );
\sync_vect_stage0_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(13),
      Q => sync_vect_stage0_s(13),
      R => '0'
    );
\sync_vect_stage0_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(1),
      Q => sync_vect_stage0_s(1),
      R => '0'
    );
\sync_vect_stage0_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(2),
      Q => sync_vect_stage0_s(2),
      R => '0'
    );
\sync_vect_stage0_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(3),
      Q => sync_vect_stage0_s(3),
      R => '0'
    );
\sync_vect_stage0_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(4),
      Q => sync_vect_stage0_s(4),
      R => '0'
    );
\sync_vect_stage0_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(5),
      Q => sync_vect_stage0_s(5),
      R => '0'
    );
\sync_vect_stage0_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(6),
      Q => sync_vect_stage0_s(6),
      R => '0'
    );
\sync_vect_stage0_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(7),
      Q => sync_vect_stage0_s(7),
      R => '0'
    );
\sync_vect_stage0_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(8),
      Q => sync_vect_stage0_s(8),
      R => '0'
    );
\sync_vect_stage0_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(9),
      Q => sync_vect_stage0_s(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__parameterized0\ is
  port (
    B : out STD_LOGIC_VECTOR ( 17 downto 0 );
    D : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ki_i : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__parameterized0\ : entity is "pidv3_axi_sync_vector";
end \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__parameterized0\;

architecture STRUCTURE of \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__parameterized0\ is
  signal \flipflops_vect[0]_0\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute async_reg : string;
  attribute async_reg of \flipflops_vect[0]_0\ : signal is "true";
  signal \flipflops_vect[1]_1\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute async_reg of \flipflops_vect[1]_1\ : signal is "true";
  signal \flipflops_vect[2]_2\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute async_reg of \flipflops_vect[2]_2\ : signal is "true";
  signal sync_vect_stage0_s : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \flipflops_vect_reg[0][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][14]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][15]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][16]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][17]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][14]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][15]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][16]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][17]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][14]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][15]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][16]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][17]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][9]\ : label is "yes";
begin
I_sum_s_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(9),
      I1 => \out\(0),
      I2 => ki_i(9),
      O => B(9)
    );
I_sum_s_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(8),
      I1 => \out\(0),
      I2 => ki_i(8),
      O => B(8)
    );
I_sum_s_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(7),
      I1 => \out\(0),
      I2 => ki_i(7),
      O => B(7)
    );
I_sum_s_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(6),
      I1 => \out\(0),
      I2 => ki_i(6),
      O => B(6)
    );
I_sum_s_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(5),
      I1 => \out\(0),
      I2 => ki_i(5),
      O => B(5)
    );
I_sum_s_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(4),
      I1 => \out\(0),
      I2 => ki_i(4),
      O => B(4)
    );
I_sum_s_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(3),
      I1 => \out\(0),
      I2 => ki_i(3),
      O => B(3)
    );
I_sum_s_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(2),
      I1 => \out\(0),
      I2 => ki_i(2),
      O => B(2)
    );
I_sum_s_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(1),
      I1 => \out\(0),
      I2 => ki_i(1),
      O => B(1)
    );
I_sum_s_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(0),
      I1 => \out\(0),
      I2 => ki_i(0),
      O => B(0)
    );
I_sum_s_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(17),
      I1 => \out\(0),
      I2 => ki_i(17),
      O => B(17)
    );
I_sum_s_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(16),
      I1 => \out\(0),
      I2 => ki_i(16),
      O => B(16)
    );
I_sum_s_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(15),
      I1 => \out\(0),
      I2 => ki_i(15),
      O => B(15)
    );
I_sum_s_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(14),
      I1 => \out\(0),
      I2 => ki_i(14),
      O => B(14)
    );
I_sum_s_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(13),
      I1 => \out\(0),
      I2 => ki_i(13),
      O => B(13)
    );
I_sum_s_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(12),
      I1 => \out\(0),
      I2 => ki_i(12),
      O => B(12)
    );
I_sum_s_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(11),
      I1 => \out\(0),
      I2 => ki_i(11),
      O => B(11)
    );
I_sum_s_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(10),
      I1 => \out\(0),
      I2 => ki_i(10),
      O => B(10)
    );
\flipflops_vect_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(0),
      Q => \flipflops_vect[0]_0\(0),
      R => '0'
    );
\flipflops_vect_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(10),
      Q => \flipflops_vect[0]_0\(10),
      R => '0'
    );
\flipflops_vect_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(11),
      Q => \flipflops_vect[0]_0\(11),
      R => '0'
    );
\flipflops_vect_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(12),
      Q => \flipflops_vect[0]_0\(12),
      R => '0'
    );
\flipflops_vect_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(13),
      Q => \flipflops_vect[0]_0\(13),
      R => '0'
    );
\flipflops_vect_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(14),
      Q => \flipflops_vect[0]_0\(14),
      R => '0'
    );
\flipflops_vect_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(15),
      Q => \flipflops_vect[0]_0\(15),
      R => '0'
    );
\flipflops_vect_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(16),
      Q => \flipflops_vect[0]_0\(16),
      R => '0'
    );
\flipflops_vect_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(17),
      Q => \flipflops_vect[0]_0\(17),
      R => '0'
    );
\flipflops_vect_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(1),
      Q => \flipflops_vect[0]_0\(1),
      R => '0'
    );
\flipflops_vect_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(2),
      Q => \flipflops_vect[0]_0\(2),
      R => '0'
    );
\flipflops_vect_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(3),
      Q => \flipflops_vect[0]_0\(3),
      R => '0'
    );
\flipflops_vect_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(4),
      Q => \flipflops_vect[0]_0\(4),
      R => '0'
    );
\flipflops_vect_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(5),
      Q => \flipflops_vect[0]_0\(5),
      R => '0'
    );
\flipflops_vect_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(6),
      Q => \flipflops_vect[0]_0\(6),
      R => '0'
    );
\flipflops_vect_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(7),
      Q => \flipflops_vect[0]_0\(7),
      R => '0'
    );
\flipflops_vect_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(8),
      Q => \flipflops_vect[0]_0\(8),
      R => '0'
    );
\flipflops_vect_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(9),
      Q => \flipflops_vect[0]_0\(9),
      R => '0'
    );
\flipflops_vect_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(0),
      Q => \flipflops_vect[1]_1\(0),
      R => '0'
    );
\flipflops_vect_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(10),
      Q => \flipflops_vect[1]_1\(10),
      R => '0'
    );
\flipflops_vect_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(11),
      Q => \flipflops_vect[1]_1\(11),
      R => '0'
    );
\flipflops_vect_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(12),
      Q => \flipflops_vect[1]_1\(12),
      R => '0'
    );
\flipflops_vect_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(13),
      Q => \flipflops_vect[1]_1\(13),
      R => '0'
    );
\flipflops_vect_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(14),
      Q => \flipflops_vect[1]_1\(14),
      R => '0'
    );
\flipflops_vect_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(15),
      Q => \flipflops_vect[1]_1\(15),
      R => '0'
    );
\flipflops_vect_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(16),
      Q => \flipflops_vect[1]_1\(16),
      R => '0'
    );
\flipflops_vect_reg[1][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(17),
      Q => \flipflops_vect[1]_1\(17),
      R => '0'
    );
\flipflops_vect_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(1),
      Q => \flipflops_vect[1]_1\(1),
      R => '0'
    );
\flipflops_vect_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(2),
      Q => \flipflops_vect[1]_1\(2),
      R => '0'
    );
\flipflops_vect_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(3),
      Q => \flipflops_vect[1]_1\(3),
      R => '0'
    );
\flipflops_vect_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(4),
      Q => \flipflops_vect[1]_1\(4),
      R => '0'
    );
\flipflops_vect_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(5),
      Q => \flipflops_vect[1]_1\(5),
      R => '0'
    );
\flipflops_vect_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(6),
      Q => \flipflops_vect[1]_1\(6),
      R => '0'
    );
\flipflops_vect_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(7),
      Q => \flipflops_vect[1]_1\(7),
      R => '0'
    );
\flipflops_vect_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(8),
      Q => \flipflops_vect[1]_1\(8),
      R => '0'
    );
\flipflops_vect_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(9),
      Q => \flipflops_vect[1]_1\(9),
      R => '0'
    );
\flipflops_vect_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(0),
      Q => \flipflops_vect[2]_2\(0),
      R => '0'
    );
\flipflops_vect_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(10),
      Q => \flipflops_vect[2]_2\(10),
      R => '0'
    );
\flipflops_vect_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(11),
      Q => \flipflops_vect[2]_2\(11),
      R => '0'
    );
\flipflops_vect_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(12),
      Q => \flipflops_vect[2]_2\(12),
      R => '0'
    );
\flipflops_vect_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(13),
      Q => \flipflops_vect[2]_2\(13),
      R => '0'
    );
\flipflops_vect_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(14),
      Q => \flipflops_vect[2]_2\(14),
      R => '0'
    );
\flipflops_vect_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(15),
      Q => \flipflops_vect[2]_2\(15),
      R => '0'
    );
\flipflops_vect_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(16),
      Q => \flipflops_vect[2]_2\(16),
      R => '0'
    );
\flipflops_vect_reg[2][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(17),
      Q => \flipflops_vect[2]_2\(17),
      R => '0'
    );
\flipflops_vect_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(1),
      Q => \flipflops_vect[2]_2\(1),
      R => '0'
    );
\flipflops_vect_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(2),
      Q => \flipflops_vect[2]_2\(2),
      R => '0'
    );
\flipflops_vect_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(3),
      Q => \flipflops_vect[2]_2\(3),
      R => '0'
    );
\flipflops_vect_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(4),
      Q => \flipflops_vect[2]_2\(4),
      R => '0'
    );
\flipflops_vect_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(5),
      Q => \flipflops_vect[2]_2\(5),
      R => '0'
    );
\flipflops_vect_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(6),
      Q => \flipflops_vect[2]_2\(6),
      R => '0'
    );
\flipflops_vect_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(7),
      Q => \flipflops_vect[2]_2\(7),
      R => '0'
    );
\flipflops_vect_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(8),
      Q => \flipflops_vect[2]_2\(8),
      R => '0'
    );
\flipflops_vect_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(9),
      Q => \flipflops_vect[2]_2\(9),
      R => '0'
    );
\sync_vect_stage0_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(0),
      Q => sync_vect_stage0_s(0),
      R => '0'
    );
\sync_vect_stage0_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(10),
      Q => sync_vect_stage0_s(10),
      R => '0'
    );
\sync_vect_stage0_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(11),
      Q => sync_vect_stage0_s(11),
      R => '0'
    );
\sync_vect_stage0_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(12),
      Q => sync_vect_stage0_s(12),
      R => '0'
    );
\sync_vect_stage0_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(13),
      Q => sync_vect_stage0_s(13),
      R => '0'
    );
\sync_vect_stage0_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(14),
      Q => sync_vect_stage0_s(14),
      R => '0'
    );
\sync_vect_stage0_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(15),
      Q => sync_vect_stage0_s(15),
      R => '0'
    );
\sync_vect_stage0_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(16),
      Q => sync_vect_stage0_s(16),
      R => '0'
    );
\sync_vect_stage0_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(17),
      Q => sync_vect_stage0_s(17),
      R => '0'
    );
\sync_vect_stage0_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(1),
      Q => sync_vect_stage0_s(1),
      R => '0'
    );
\sync_vect_stage0_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(2),
      Q => sync_vect_stage0_s(2),
      R => '0'
    );
\sync_vect_stage0_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(3),
      Q => sync_vect_stage0_s(3),
      R => '0'
    );
\sync_vect_stage0_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(4),
      Q => sync_vect_stage0_s(4),
      R => '0'
    );
\sync_vect_stage0_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(5),
      Q => sync_vect_stage0_s(5),
      R => '0'
    );
\sync_vect_stage0_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(6),
      Q => sync_vect_stage0_s(6),
      R => '0'
    );
\sync_vect_stage0_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(7),
      Q => sync_vect_stage0_s(7),
      R => '0'
    );
\sync_vect_stage0_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(8),
      Q => sync_vect_stage0_s(8),
      R => '0'
    );
\sync_vect_stage0_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(9),
      Q => sync_vect_stage0_s(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__parameterized1\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    data_rst_i_0 : out STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    int_rst_i : in STD_LOGIC;
    \I_s_reg[13]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    data_clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__parameterized1\ : entity is "pidv3_axi_sync_vector";
end \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__parameterized1\;

architecture STRUCTURE of \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__parameterized1\ is
  signal \flipflops_vect[0]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute async_reg : string;
  attribute async_reg of \flipflops_vect[0]_0\ : signal is "true";
  signal \flipflops_vect[1]_1\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute async_reg of \flipflops_vect[1]_1\ : signal is "true";
  signal \flipflops_vect[2]_2\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute async_reg of \flipflops_vect[2]_2\ : signal is "true";
  signal sync_vect_stage0_s : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \flipflops_vect_reg[0][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][5]\ : label is "yes";
begin
  \out\(4 downto 3) <= \flipflops_vect[2]_2\(5 downto 4);
  \out\(2 downto 0) <= \flipflops_vect[2]_2\(2 downto 0);
\I_s[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => data_rst_i,
      I1 => int_rst_i,
      I2 => \flipflops_vect[2]_2\(5),
      I3 => \I_s_reg[13]\(0),
      O => data_rst_i_0
    );
\flipflops_vect_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(0),
      Q => \flipflops_vect[0]_0\(0),
      R => '0'
    );
\flipflops_vect_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(1),
      Q => \flipflops_vect[0]_0\(1),
      R => '0'
    );
\flipflops_vect_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(2),
      Q => \flipflops_vect[0]_0\(2),
      R => '0'
    );
\flipflops_vect_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(3),
      Q => \flipflops_vect[0]_0\(3),
      R => '0'
    );
\flipflops_vect_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(4),
      Q => \flipflops_vect[0]_0\(4),
      R => '0'
    );
\flipflops_vect_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(5),
      Q => \flipflops_vect[0]_0\(5),
      R => '0'
    );
\flipflops_vect_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(0),
      Q => \flipflops_vect[1]_1\(0),
      R => '0'
    );
\flipflops_vect_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(1),
      Q => \flipflops_vect[1]_1\(1),
      R => '0'
    );
\flipflops_vect_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(2),
      Q => \flipflops_vect[1]_1\(2),
      R => '0'
    );
\flipflops_vect_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(3),
      Q => \flipflops_vect[1]_1\(3),
      R => '0'
    );
\flipflops_vect_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(4),
      Q => \flipflops_vect[1]_1\(4),
      R => '0'
    );
\flipflops_vect_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(5),
      Q => \flipflops_vect[1]_1\(5),
      R => '0'
    );
\flipflops_vect_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(0),
      Q => \flipflops_vect[2]_2\(0),
      R => '0'
    );
\flipflops_vect_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(1),
      Q => \flipflops_vect[2]_2\(1),
      R => '0'
    );
\flipflops_vect_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(2),
      Q => \flipflops_vect[2]_2\(2),
      R => '0'
    );
\flipflops_vect_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(3),
      Q => \flipflops_vect[2]_2\(3),
      R => '0'
    );
\flipflops_vect_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(4),
      Q => \flipflops_vect[2]_2\(4),
      R => '0'
    );
\flipflops_vect_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(5),
      Q => \flipflops_vect[2]_2\(5),
      R => '0'
    );
\sync_vect_stage0_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(0),
      Q => sync_vect_stage0_s(0),
      R => '0'
    );
\sync_vect_stage0_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(1),
      Q => sync_vect_stage0_s(1),
      R => '0'
    );
\sync_vect_stage0_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(2),
      Q => sync_vect_stage0_s(2),
      R => '0'
    );
\sync_vect_stage0_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(3),
      Q => sync_vect_stage0_s(3),
      R => '0'
    );
\sync_vect_stage0_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(4),
      Q => sync_vect_stage0_s(4),
      R => '0'
    );
\sync_vect_stage0_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(5),
      Q => sync_vect_stage0_s(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__xdcDup__1\ is
  port (
    D : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    data_clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__xdcDup__1\ : entity is "pidv3_axi_sync_vector";
end \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__xdcDup__1\;

architecture STRUCTURE of \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__xdcDup__1\ is
  signal \flipflops_vect[0]_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute async_reg : string;
  attribute async_reg of \flipflops_vect[0]_0\ : signal is "true";
  signal \flipflops_vect[1]_1\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute async_reg of \flipflops_vect[1]_1\ : signal is "true";
  signal \flipflops_vect[2]_2\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute async_reg of \flipflops_vect[2]_2\ : signal is "true";
  signal sync_vect_stage0_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \flipflops_vect_reg[0][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][9]\ : label is "yes";
begin
\flipflops_vect_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(0),
      Q => \flipflops_vect[0]_0\(0),
      R => '0'
    );
\flipflops_vect_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(10),
      Q => \flipflops_vect[0]_0\(10),
      R => '0'
    );
\flipflops_vect_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(11),
      Q => \flipflops_vect[0]_0\(11),
      R => '0'
    );
\flipflops_vect_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(12),
      Q => \flipflops_vect[0]_0\(12),
      R => '0'
    );
\flipflops_vect_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(13),
      Q => \flipflops_vect[0]_0\(13),
      R => '0'
    );
\flipflops_vect_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(1),
      Q => \flipflops_vect[0]_0\(1),
      R => '0'
    );
\flipflops_vect_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(2),
      Q => \flipflops_vect[0]_0\(2),
      R => '0'
    );
\flipflops_vect_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(3),
      Q => \flipflops_vect[0]_0\(3),
      R => '0'
    );
\flipflops_vect_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(4),
      Q => \flipflops_vect[0]_0\(4),
      R => '0'
    );
\flipflops_vect_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(5),
      Q => \flipflops_vect[0]_0\(5),
      R => '0'
    );
\flipflops_vect_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(6),
      Q => \flipflops_vect[0]_0\(6),
      R => '0'
    );
\flipflops_vect_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(7),
      Q => \flipflops_vect[0]_0\(7),
      R => '0'
    );
\flipflops_vect_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(8),
      Q => \flipflops_vect[0]_0\(8),
      R => '0'
    );
\flipflops_vect_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(9),
      Q => \flipflops_vect[0]_0\(9),
      R => '0'
    );
\flipflops_vect_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(0),
      Q => \flipflops_vect[1]_1\(0),
      R => '0'
    );
\flipflops_vect_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(10),
      Q => \flipflops_vect[1]_1\(10),
      R => '0'
    );
\flipflops_vect_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(11),
      Q => \flipflops_vect[1]_1\(11),
      R => '0'
    );
\flipflops_vect_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(12),
      Q => \flipflops_vect[1]_1\(12),
      R => '0'
    );
\flipflops_vect_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(13),
      Q => \flipflops_vect[1]_1\(13),
      R => '0'
    );
\flipflops_vect_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(1),
      Q => \flipflops_vect[1]_1\(1),
      R => '0'
    );
\flipflops_vect_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(2),
      Q => \flipflops_vect[1]_1\(2),
      R => '0'
    );
\flipflops_vect_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(3),
      Q => \flipflops_vect[1]_1\(3),
      R => '0'
    );
\flipflops_vect_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(4),
      Q => \flipflops_vect[1]_1\(4),
      R => '0'
    );
\flipflops_vect_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(5),
      Q => \flipflops_vect[1]_1\(5),
      R => '0'
    );
\flipflops_vect_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(6),
      Q => \flipflops_vect[1]_1\(6),
      R => '0'
    );
\flipflops_vect_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(7),
      Q => \flipflops_vect[1]_1\(7),
      R => '0'
    );
\flipflops_vect_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(8),
      Q => \flipflops_vect[1]_1\(8),
      R => '0'
    );
\flipflops_vect_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(9),
      Q => \flipflops_vect[1]_1\(9),
      R => '0'
    );
\flipflops_vect_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(0),
      Q => \flipflops_vect[2]_2\(0),
      R => '0'
    );
\flipflops_vect_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(10),
      Q => \flipflops_vect[2]_2\(10),
      R => '0'
    );
\flipflops_vect_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(11),
      Q => \flipflops_vect[2]_2\(11),
      R => '0'
    );
\flipflops_vect_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(12),
      Q => \flipflops_vect[2]_2\(12),
      R => '0'
    );
\flipflops_vect_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(13),
      Q => \flipflops_vect[2]_2\(13),
      R => '0'
    );
\flipflops_vect_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(1),
      Q => \flipflops_vect[2]_2\(1),
      R => '0'
    );
\flipflops_vect_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(2),
      Q => \flipflops_vect[2]_2\(2),
      R => '0'
    );
\flipflops_vect_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(3),
      Q => \flipflops_vect[2]_2\(3),
      R => '0'
    );
\flipflops_vect_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(4),
      Q => \flipflops_vect[2]_2\(4),
      R => '0'
    );
\flipflops_vect_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(5),
      Q => \flipflops_vect[2]_2\(5),
      R => '0'
    );
\flipflops_vect_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(6),
      Q => \flipflops_vect[2]_2\(6),
      R => '0'
    );
\flipflops_vect_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(7),
      Q => \flipflops_vect[2]_2\(7),
      R => '0'
    );
\flipflops_vect_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(8),
      Q => \flipflops_vect[2]_2\(8),
      R => '0'
    );
\flipflops_vect_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(9),
      Q => \flipflops_vect[2]_2\(9),
      R => '0'
    );
\sync_vect_stage0_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(0),
      Q => sync_vect_stage0_s(0),
      R => '0'
    );
\sync_vect_stage0_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(10),
      Q => sync_vect_stage0_s(10),
      R => '0'
    );
\sync_vect_stage0_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(11),
      Q => sync_vect_stage0_s(11),
      R => '0'
    );
\sync_vect_stage0_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(12),
      Q => sync_vect_stage0_s(12),
      R => '0'
    );
\sync_vect_stage0_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(13),
      Q => sync_vect_stage0_s(13),
      R => '0'
    );
\sync_vect_stage0_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(1),
      Q => sync_vect_stage0_s(1),
      R => '0'
    );
\sync_vect_stage0_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(2),
      Q => sync_vect_stage0_s(2),
      R => '0'
    );
\sync_vect_stage0_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(3),
      Q => sync_vect_stage0_s(3),
      R => '0'
    );
\sync_vect_stage0_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(4),
      Q => sync_vect_stage0_s(4),
      R => '0'
    );
\sync_vect_stage0_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(5),
      Q => sync_vect_stage0_s(5),
      R => '0'
    );
\sync_vect_stage0_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(6),
      Q => sync_vect_stage0_s(6),
      R => '0'
    );
\sync_vect_stage0_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(7),
      Q => sync_vect_stage0_s(7),
      R => '0'
    );
\sync_vect_stage0_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(8),
      Q => sync_vect_stage0_s(8),
      R => '0'
    );
\sync_vect_stage0_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(9),
      Q => sync_vect_stage0_s(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__xdcDup__2\ is
  port (
    B : out STD_LOGIC_VECTOR ( 13 downto 0 );
    D : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    kp_i : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__xdcDup__2\ : entity is "pidv3_axi_sync_vector";
end \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__xdcDup__2\;

architecture STRUCTURE of \double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__xdcDup__2\ is
  signal \flipflops_vect[0]_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute async_reg : string;
  attribute async_reg of \flipflops_vect[0]_0\ : signal is "true";
  signal \flipflops_vect[1]_1\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute async_reg of \flipflops_vect[1]_1\ : signal is "true";
  signal \flipflops_vect[2]_2\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute async_reg of \flipflops_vect[2]_2\ : signal is "true";
  signal sync_vect_stage0_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \flipflops_vect_reg[0][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[0][9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[1][9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_vect_reg[2][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_vect_reg[2][9]\ : label is "yes";
begin
P_temp_s_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(13),
      I1 => \out\(0),
      I2 => kp_i(13),
      O => B(13)
    );
P_temp_s_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(4),
      I1 => \out\(0),
      I2 => kp_i(4),
      O => B(4)
    );
P_temp_s_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(3),
      I1 => \out\(0),
      I2 => kp_i(3),
      O => B(3)
    );
P_temp_s_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(2),
      I1 => \out\(0),
      I2 => kp_i(2),
      O => B(2)
    );
P_temp_s_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(1),
      I1 => \out\(0),
      I2 => kp_i(1),
      O => B(1)
    );
P_temp_s_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(0),
      I1 => \out\(0),
      I2 => kp_i(0),
      O => B(0)
    );
P_temp_s_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(12),
      I1 => \out\(0),
      I2 => kp_i(12),
      O => B(12)
    );
P_temp_s_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(11),
      I1 => \out\(0),
      I2 => kp_i(11),
      O => B(11)
    );
P_temp_s_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(10),
      I1 => \out\(0),
      I2 => kp_i(10),
      O => B(10)
    );
P_temp_s_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(9),
      I1 => \out\(0),
      I2 => kp_i(9),
      O => B(9)
    );
P_temp_s_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(8),
      I1 => \out\(0),
      I2 => kp_i(8),
      O => B(8)
    );
P_temp_s_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(7),
      I1 => \out\(0),
      I2 => kp_i(7),
      O => B(7)
    );
P_temp_s_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(6),
      I1 => \out\(0),
      I2 => kp_i(6),
      O => B(6)
    );
P_temp_s_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(5),
      I1 => \out\(0),
      I2 => kp_i(5),
      O => B(5)
    );
\flipflops_vect_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(0),
      Q => \flipflops_vect[0]_0\(0),
      R => '0'
    );
\flipflops_vect_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(10),
      Q => \flipflops_vect[0]_0\(10),
      R => '0'
    );
\flipflops_vect_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(11),
      Q => \flipflops_vect[0]_0\(11),
      R => '0'
    );
\flipflops_vect_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(12),
      Q => \flipflops_vect[0]_0\(12),
      R => '0'
    );
\flipflops_vect_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(13),
      Q => \flipflops_vect[0]_0\(13),
      R => '0'
    );
\flipflops_vect_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(1),
      Q => \flipflops_vect[0]_0\(1),
      R => '0'
    );
\flipflops_vect_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(2),
      Q => \flipflops_vect[0]_0\(2),
      R => '0'
    );
\flipflops_vect_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(3),
      Q => \flipflops_vect[0]_0\(3),
      R => '0'
    );
\flipflops_vect_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(4),
      Q => \flipflops_vect[0]_0\(4),
      R => '0'
    );
\flipflops_vect_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(5),
      Q => \flipflops_vect[0]_0\(5),
      R => '0'
    );
\flipflops_vect_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(6),
      Q => \flipflops_vect[0]_0\(6),
      R => '0'
    );
\flipflops_vect_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(7),
      Q => \flipflops_vect[0]_0\(7),
      R => '0'
    );
\flipflops_vect_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(8),
      Q => \flipflops_vect[0]_0\(8),
      R => '0'
    );
\flipflops_vect_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => sync_vect_stage0_s(9),
      Q => \flipflops_vect[0]_0\(9),
      R => '0'
    );
\flipflops_vect_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(0),
      Q => \flipflops_vect[1]_1\(0),
      R => '0'
    );
\flipflops_vect_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(10),
      Q => \flipflops_vect[1]_1\(10),
      R => '0'
    );
\flipflops_vect_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(11),
      Q => \flipflops_vect[1]_1\(11),
      R => '0'
    );
\flipflops_vect_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(12),
      Q => \flipflops_vect[1]_1\(12),
      R => '0'
    );
\flipflops_vect_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(13),
      Q => \flipflops_vect[1]_1\(13),
      R => '0'
    );
\flipflops_vect_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(1),
      Q => \flipflops_vect[1]_1\(1),
      R => '0'
    );
\flipflops_vect_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(2),
      Q => \flipflops_vect[1]_1\(2),
      R => '0'
    );
\flipflops_vect_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(3),
      Q => \flipflops_vect[1]_1\(3),
      R => '0'
    );
\flipflops_vect_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(4),
      Q => \flipflops_vect[1]_1\(4),
      R => '0'
    );
\flipflops_vect_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(5),
      Q => \flipflops_vect[1]_1\(5),
      R => '0'
    );
\flipflops_vect_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(6),
      Q => \flipflops_vect[1]_1\(6),
      R => '0'
    );
\flipflops_vect_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(7),
      Q => \flipflops_vect[1]_1\(7),
      R => '0'
    );
\flipflops_vect_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(8),
      Q => \flipflops_vect[1]_1\(8),
      R => '0'
    );
\flipflops_vect_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[0]_0\(9),
      Q => \flipflops_vect[1]_1\(9),
      R => '0'
    );
\flipflops_vect_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(0),
      Q => \flipflops_vect[2]_2\(0),
      R => '0'
    );
\flipflops_vect_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(10),
      Q => \flipflops_vect[2]_2\(10),
      R => '0'
    );
\flipflops_vect_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(11),
      Q => \flipflops_vect[2]_2\(11),
      R => '0'
    );
\flipflops_vect_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(12),
      Q => \flipflops_vect[2]_2\(12),
      R => '0'
    );
\flipflops_vect_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(13),
      Q => \flipflops_vect[2]_2\(13),
      R => '0'
    );
\flipflops_vect_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(1),
      Q => \flipflops_vect[2]_2\(1),
      R => '0'
    );
\flipflops_vect_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(2),
      Q => \flipflops_vect[2]_2\(2),
      R => '0'
    );
\flipflops_vect_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(3),
      Q => \flipflops_vect[2]_2\(3),
      R => '0'
    );
\flipflops_vect_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(4),
      Q => \flipflops_vect[2]_2\(4),
      R => '0'
    );
\flipflops_vect_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(5),
      Q => \flipflops_vect[2]_2\(5),
      R => '0'
    );
\flipflops_vect_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(6),
      Q => \flipflops_vect[2]_2\(6),
      R => '0'
    );
\flipflops_vect_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(7),
      Q => \flipflops_vect[2]_2\(7),
      R => '0'
    );
\flipflops_vect_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(8),
      Q => \flipflops_vect[2]_2\(8),
      R => '0'
    );
\flipflops_vect_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(9),
      Q => \flipflops_vect[2]_2\(9),
      R => '0'
    );
\sync_vect_stage0_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(0),
      Q => sync_vect_stage0_s(0),
      R => '0'
    );
\sync_vect_stage0_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(10),
      Q => sync_vect_stage0_s(10),
      R => '0'
    );
\sync_vect_stage0_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(11),
      Q => sync_vect_stage0_s(11),
      R => '0'
    );
\sync_vect_stage0_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(12),
      Q => sync_vect_stage0_s(12),
      R => '0'
    );
\sync_vect_stage0_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(13),
      Q => sync_vect_stage0_s(13),
      R => '0'
    );
\sync_vect_stage0_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(1),
      Q => sync_vect_stage0_s(1),
      R => '0'
    );
\sync_vect_stage0_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(2),
      Q => sync_vect_stage0_s(2),
      R => '0'
    );
\sync_vect_stage0_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(3),
      Q => sync_vect_stage0_s(3),
      R => '0'
    );
\sync_vect_stage0_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(4),
      Q => sync_vect_stage0_s(4),
      R => '0'
    );
\sync_vect_stage0_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(5),
      Q => sync_vect_stage0_s(5),
      R => '0'
    );
\sync_vect_stage0_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(6),
      Q => sync_vect_stage0_s(6),
      R => '0'
    );
\sync_vect_stage0_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(7),
      Q => sync_vect_stage0_s(7),
      R => '0'
    );
\sync_vect_stage0_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(8),
      Q => sync_vect_stage0_s(8),
      R => '0'
    );
\sync_vect_stage0_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(9),
      Q => sync_vect_stage0_s(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi is
  port (
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    setpoint_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    kp_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    ki_i : in STD_LOGIC_VECTOR ( 17 downto 0 );
    kd_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    sign_i : in STD_LOGIC;
    int_rst_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi : entity is 5;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi : entity is 32;
  attribute DATA_IN_SIZE : integer;
  attribute DATA_IN_SIZE of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi : entity is 14;
  attribute DATA_OUT_SIZE : integer;
  attribute DATA_OUT_SIZE of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi : entity is 14;
  attribute DSR : integer;
  attribute DSR of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi : entity is 1;
  attribute D_SIZE : integer;
  attribute D_SIZE of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi : entity is 14;
  attribute ISR : integer;
  attribute ISR of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi : entity is 19;
  attribute I_SIZE : integer;
  attribute I_SIZE of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi : entity is 18;
  attribute PSR : integer;
  attribute PSR of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi : entity is 13;
  attribute P_SIZE : integer;
  attribute P_SIZE of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi : entity is 14;
end double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi;

architecture STRUCTURE of double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi is
  signal \<const0>\ : STD_LOGIC;
  signal A : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal B : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal addr_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal comm_inst_n_17 : STD_LOGIC;
  signal comm_inst_n_18 : STD_LOGIC;
  signal comm_inst_n_19 : STD_LOGIC;
  signal comm_inst_n_2 : STD_LOGIC;
  signal comm_inst_n_20 : STD_LOGIC;
  signal comm_inst_n_22 : STD_LOGIC;
  signal comm_inst_n_23 : STD_LOGIC;
  signal comm_inst_n_24 : STD_LOGIC;
  signal comm_inst_n_25 : STD_LOGIC;
  signal comm_inst_n_26 : STD_LOGIC;
  signal comm_inst_n_27 : STD_LOGIC;
  signal comm_inst_n_28 : STD_LOGIC;
  signal comm_inst_n_29 : STD_LOGIC;
  signal comm_inst_n_30 : STD_LOGIC;
  signal comm_inst_n_31 : STD_LOGIC;
  signal comm_inst_n_32 : STD_LOGIC;
  signal comm_inst_n_33 : STD_LOGIC;
  signal comm_inst_n_34 : STD_LOGIC;
  signal comm_inst_n_41 : STD_LOGIC;
  signal comm_inst_n_42 : STD_LOGIC;
  signal comm_inst_n_43 : STD_LOGIC;
  signal comm_inst_n_44 : STD_LOGIC;
  signal data10 : STD_LOGIC;
  signal \^data_clk_i\ : STD_LOGIC;
  signal \^data_rst_i\ : STD_LOGIC;
  signal handle_comm_n_26 : STD_LOGIC;
  signal handle_comm_n_28 : STD_LOGIC;
  signal handle_comm_n_29 : STD_LOGIC;
  signal input_syn_n_5 : STD_LOGIC;
  signal int_rst_s : STD_LOGIC;
  signal int_rst_sync_s : STD_LOGIC;
  signal is_input_s : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal is_input_s_3 : STD_LOGIC;
  signal is_input_sync_s : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal kd_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal kd_s_1 : STD_LOGIC;
  signal ki_s : STD_LOGIC;
  signal kp_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal kp_s_0 : STD_LOGIC;
  signal pidv3_axiLogic_n_15 : STD_LOGIC;
  signal pidv3_axiLogic_n_16 : STD_LOGIC;
  signal pidv3_axiLogic_n_17 : STD_LOGIC;
  signal pidv3_axiLogic_n_18 : STD_LOGIC;
  signal pidv3_axiLogic_n_19 : STD_LOGIC;
  signal pidv3_axiLogic_n_20 : STD_LOGIC;
  signal pidv3_axiLogic_n_21 : STD_LOGIC;
  signal pidv3_axiLogic_n_22 : STD_LOGIC;
  signal pidv3_axiLogic_n_23 : STD_LOGIC;
  signal pidv3_axiLogic_n_24 : STD_LOGIC;
  signal pidv3_axiLogic_n_25 : STD_LOGIC;
  signal pidv3_axiLogic_n_26 : STD_LOGIC;
  signal pidv3_axiLogic_n_27 : STD_LOGIC;
  signal pidv3_axiLogic_n_28 : STD_LOGIC;
  signal pidv3_axiLogic_n_29 : STD_LOGIC;
  signal read_en_s : STD_LOGIC;
  signal readdata_next_s : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal septpoint_syn_n_14 : STD_LOGIC;
  signal septpoint_syn_n_15 : STD_LOGIC;
  signal septpoint_syn_n_16 : STD_LOGIC;
  signal septpoint_syn_n_17 : STD_LOGIC;
  signal septpoint_syn_n_18 : STD_LOGIC;
  signal septpoint_syn_n_19 : STD_LOGIC;
  signal septpoint_syn_n_20 : STD_LOGIC;
  signal septpoint_syn_n_21 : STD_LOGIC;
  signal septpoint_syn_n_22 : STD_LOGIC;
  signal septpoint_syn_n_23 : STD_LOGIC;
  signal septpoint_syn_n_24 : STD_LOGIC;
  signal septpoint_syn_n_25 : STD_LOGIC;
  signal septpoint_syn_n_26 : STD_LOGIC;
  signal septpoint_syn_n_27 : STD_LOGIC;
  signal septpoint_syn_n_28 : STD_LOGIC;
  signal setpoint_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal setpoint_s_2 : STD_LOGIC;
  signal setpoint_sync_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal sign2_s : STD_LOGIC;
  signal sign_s : STD_LOGIC;
begin
  \^data_clk_i\ <= data_clk_i;
  \^data_rst_i\ <= data_rst_i;
  data_clk_o <= \^data_clk_i\;
  data_rst_o <= \^data_rst_i\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(30) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(29) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(28) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(27) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(26) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(25) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(24) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(23) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(22) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(21) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(20) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(19) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(18) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(17 downto 14) <= \^s00_axi_rdata\(17 downto 14);
  s00_axi_rdata(13) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(12 downto 0) <= \^s00_axi_rdata\(12 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
comm_inst: entity work.double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_comm
     port map (
      D(12 downto 0) => readdata_next_s(12 downto 0),
      E(0) => setpoint_s_2,
      Q(13 downto 0) => kp_s(13 downto 0),
      addr_s(2 downto 0) => addr_s(2 downto 0),
      int_rst_s => int_rst_s,
      int_rst_s_reg_0 => handle_comm_n_29,
      \is_input_s_reg[5]_0\(5 downto 0) => is_input_s(5 downto 0),
      \is_input_s_reg[5]_1\(0) => is_input_s_3,
      \kd_s_reg[13]_0\(13 downto 0) => kd_s(13 downto 0),
      \kd_s_reg[13]_1\(0) => kd_s_1,
      \ki_s_reg[17]_0\(17) => comm_inst_n_17,
      \ki_s_reg[17]_0\(16) => comm_inst_n_18,
      \ki_s_reg[17]_0\(15) => comm_inst_n_19,
      \ki_s_reg[17]_0\(14) => comm_inst_n_20,
      \ki_s_reg[17]_0\(13) => data10,
      \ki_s_reg[17]_0\(12) => comm_inst_n_22,
      \ki_s_reg[17]_0\(11) => comm_inst_n_23,
      \ki_s_reg[17]_0\(10) => comm_inst_n_24,
      \ki_s_reg[17]_0\(9) => comm_inst_n_25,
      \ki_s_reg[17]_0\(8) => comm_inst_n_26,
      \ki_s_reg[17]_0\(7) => comm_inst_n_27,
      \ki_s_reg[17]_0\(6) => comm_inst_n_28,
      \ki_s_reg[17]_0\(5) => comm_inst_n_29,
      \ki_s_reg[17]_0\(4) => comm_inst_n_30,
      \ki_s_reg[17]_0\(3) => comm_inst_n_31,
      \ki_s_reg[17]_0\(2) => comm_inst_n_32,
      \ki_s_reg[17]_0\(1) => comm_inst_n_33,
      \ki_s_reg[17]_0\(0) => comm_inst_n_34,
      \ki_s_reg[17]_1\(0) => ki_s,
      \kp_s_reg[13]_0\(0) => kp_s_0,
      \kp_s_reg[1]_0\ => comm_inst_n_2,
      \kp_s_reg[2]_0\ => comm_inst_n_41,
      \kp_s_reg[3]_0\ => comm_inst_n_42,
      \kp_s_reg[4]_0\ => comm_inst_n_43,
      \kp_s_reg[5]_0\ => comm_inst_n_44,
      read_en_s => read_en_s,
      \readdata_s_reg[14]_0\ => handle_comm_n_26,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_rdata(17) => \^s00_axi_rdata\(30),
      s00_axi_rdata(16 downto 13) => \^s00_axi_rdata\(17 downto 14),
      s00_axi_rdata(12 downto 0) => \^s00_axi_rdata\(12 downto 0),
      s00_axi_reset => s00_axi_reset,
      s00_axi_wdata(17 downto 0) => s00_axi_wdata(17 downto 0),
      \setpoint_s_reg[13]_0\(13 downto 0) => setpoint_s(13 downto 0),
      sign_s => sign_s,
      sign_s_reg_0 => handle_comm_n_28
    );
handle_comm: entity work.double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_handComm
     port map (
      D(12 downto 0) => readdata_next_s(12 downto 0),
      E(0) => setpoint_s_2,
      \addr_reg_reg[0]_0\(0) => kp_s_0,
      \addr_reg_reg[0]_1\ => handle_comm_n_26,
      \addr_reg_reg[2]_0\(0) => kd_s_1,
      addr_s(2 downto 0) => addr_s(2 downto 0),
      axi_arready_reg_0 => s00_axi_arready,
      axi_awready_reg_0 => s00_axi_awready,
      axi_awready_reg_1(0) => is_input_s_3,
      axi_awready_reg_2(0) => ki_s,
      axi_wready_reg_0 => s00_axi_wready,
      int_rst_s => int_rst_s,
      read_en_s => read_en_s,
      \readdata_s_reg[0]\(0) => is_input_s(0),
      \readdata_s_reg[12]\(12 downto 0) => kd_s(12 downto 0),
      \readdata_s_reg[12]_0\(7) => comm_inst_n_22,
      \readdata_s_reg[12]_0\(6) => comm_inst_n_23,
      \readdata_s_reg[12]_0\(5) => comm_inst_n_24,
      \readdata_s_reg[12]_0\(4) => comm_inst_n_25,
      \readdata_s_reg[12]_0\(3) => comm_inst_n_26,
      \readdata_s_reg[12]_0\(2) => comm_inst_n_27,
      \readdata_s_reg[12]_0\(1) => comm_inst_n_28,
      \readdata_s_reg[12]_0\(0) => comm_inst_n_34,
      \readdata_s_reg[12]_1\(12 downto 0) => setpoint_s(12 downto 0),
      \readdata_s_reg[12]_2\(7 downto 1) => kp_s(12 downto 6),
      \readdata_s_reg[12]_2\(0) => kp_s(0),
      \readdata_s_reg[1]\ => comm_inst_n_2,
      \readdata_s_reg[2]\ => comm_inst_n_41,
      \readdata_s_reg[3]\ => comm_inst_n_42,
      \readdata_s_reg[4]\ => comm_inst_n_43,
      \readdata_s_reg[5]\ => comm_inst_n_44,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_reset => s00_axi_reset,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(0) => s00_axi_wdata(0),
      \s00_axi_wdata[0]_0\ => handle_comm_n_29,
      s00_axi_wdata_0_sp_1 => handle_comm_n_28,
      s00_axi_wvalid => s00_axi_wvalid,
      sign_s => sign_s
    );
input_syn: entity work.\double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__parameterized1\
     port map (
      D(5 downto 0) => is_input_s(5 downto 0),
      \I_s_reg[13]\(0) => int_rst_sync_s,
      data_clk_i => \^data_clk_i\,
      data_rst_i => \^data_rst_i\,
      data_rst_i_0 => input_syn_n_5,
      int_rst_i => int_rst_i,
      \out\(4 downto 3) => is_input_sync_s(5 downto 4),
      \out\(2 downto 0) => is_input_sync_s(2 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
int_rst_syn: entity work.\double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_bit__xdcDup__1\
     port map (
      data_clk_i => \^data_clk_i\,
      int_rst_s => int_rst_s,
      \out\(0) => int_rst_sync_s,
      s00_axi_aclk => s00_axi_aclk
    );
kd_syn: entity work.\double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__xdcDup__1\
     port map (
      D(13 downto 0) => kd_s(13 downto 0),
      data_clk_i => \^data_clk_i\,
      s00_axi_aclk => s00_axi_aclk
    );
ki_syn: entity work.\double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__parameterized0\
     port map (
      B(17 downto 0) => A(17 downto 0),
      D(17) => comm_inst_n_17,
      D(16) => comm_inst_n_18,
      D(15) => comm_inst_n_19,
      D(14) => comm_inst_n_20,
      D(13) => data10,
      D(12) => comm_inst_n_22,
      D(11) => comm_inst_n_23,
      D(10) => comm_inst_n_24,
      D(9) => comm_inst_n_25,
      D(8) => comm_inst_n_26,
      D(7) => comm_inst_n_27,
      D(6) => comm_inst_n_28,
      D(5) => comm_inst_n_29,
      D(4) => comm_inst_n_30,
      D(3) => comm_inst_n_31,
      D(2) => comm_inst_n_32,
      D(1) => comm_inst_n_33,
      D(0) => comm_inst_n_34,
      data_clk_i => \^data_clk_i\,
      ki_i(17 downto 0) => ki_i(17 downto 0),
      \out\(0) => is_input_sync_s(2),
      s00_axi_aclk => s00_axi_aclk
    );
kp_syn: entity work.\double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector__xdcDup__2\
     port map (
      B(13 downto 0) => B(13 downto 0),
      D(13 downto 0) => kp_s(13 downto 0),
      data_clk_i => \^data_clk_i\,
      kp_i(13 downto 0) => kp_i(13 downto 0),
      \out\(0) => is_input_sync_s(1),
      s00_axi_aclk => s00_axi_aclk
    );
pidv3_axiLogic: entity work.double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_logic
     port map (
      A(14) => septpoint_syn_n_14,
      A(13) => septpoint_syn_n_15,
      A(12) => septpoint_syn_n_16,
      A(11) => septpoint_syn_n_17,
      A(10) => septpoint_syn_n_18,
      A(9) => septpoint_syn_n_19,
      A(8) => septpoint_syn_n_20,
      A(7) => septpoint_syn_n_21,
      A(6) => septpoint_syn_n_22,
      A(5) => septpoint_syn_n_23,
      A(4) => septpoint_syn_n_24,
      A(3) => septpoint_syn_n_25,
      A(2) => septpoint_syn_n_26,
      A(1) => septpoint_syn_n_27,
      A(0) => septpoint_syn_n_28,
      B(17 downto 0) => A(17 downto 0),
      \I_s_reg[13]_0\ => input_syn_n_5,
      I_sum_s_0(13 downto 0) => setpoint_sync_s(13 downto 0),
      \I_temp_s_reg[19]_0\(1) => is_input_sync_s(5),
      \I_temp_s_reg[19]_0\(0) => is_input_sync_s(0),
      P_temp_s_0(13 downto 0) => B(13 downto 0),
      S(3) => pidv3_axiLogic_n_15,
      S(2) => pidv3_axiLogic_n_16,
      S(1) => pidv3_axiLogic_n_17,
      S(0) => pidv3_axiLogic_n_18,
      data_clk_i => \^data_clk_i\,
      data_en_i => data_en_i,
      data_en_o => data_en_o,
      data_i(13 downto 0) => data_i(13 downto 0),
      \data_i[11]\(3) => pidv3_axiLogic_n_23,
      \data_i[11]\(2) => pidv3_axiLogic_n_24,
      \data_i[11]\(1) => pidv3_axiLogic_n_25,
      \data_i[11]\(0) => pidv3_axiLogic_n_26,
      \data_i[13]\(2) => pidv3_axiLogic_n_27,
      \data_i[13]\(1) => pidv3_axiLogic_n_28,
      \data_i[13]\(0) => pidv3_axiLogic_n_29,
      \data_i[7]\(3) => pidv3_axiLogic_n_19,
      \data_i[7]\(2) => pidv3_axiLogic_n_20,
      \data_i[7]\(1) => pidv3_axiLogic_n_21,
      \data_i[7]\(0) => pidv3_axiLogic_n_22,
      data_o(13 downto 0) => data_o(13 downto 0),
      data_rst_i => \^data_rst_i\,
      int_rst_i => int_rst_i,
      \out\(0) => int_rst_sync_s,
      setpoint_i(13 downto 0) => setpoint_i(13 downto 0)
    );
septpoint_syn: entity work.double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_vector
     port map (
      A(14) => septpoint_syn_n_14,
      A(13) => septpoint_syn_n_15,
      A(12) => septpoint_syn_n_16,
      A(11) => septpoint_syn_n_17,
      A(10) => septpoint_syn_n_18,
      A(9) => septpoint_syn_n_19,
      A(8) => septpoint_syn_n_20,
      A(7) => septpoint_syn_n_21,
      A(6) => septpoint_syn_n_22,
      A(5) => septpoint_syn_n_23,
      A(4) => septpoint_syn_n_24,
      A(3) => septpoint_syn_n_25,
      A(2) => septpoint_syn_n_26,
      A(1) => septpoint_syn_n_27,
      A(0) => septpoint_syn_n_28,
      D(13 downto 0) => setpoint_s(13 downto 0),
      I_sum_s(0) => is_input_sync_s(0),
      I_sum_s_0(3) => pidv3_axiLogic_n_19,
      I_sum_s_0(2) => pidv3_axiLogic_n_20,
      I_sum_s_0(1) => pidv3_axiLogic_n_21,
      I_sum_s_0(0) => pidv3_axiLogic_n_22,
      I_sum_s_1(3) => pidv3_axiLogic_n_23,
      I_sum_s_1(2) => pidv3_axiLogic_n_24,
      I_sum_s_1(1) => pidv3_axiLogic_n_25,
      I_sum_s_1(0) => pidv3_axiLogic_n_26,
      I_sum_s_2(2) => pidv3_axiLogic_n_27,
      I_sum_s_2(1) => pidv3_axiLogic_n_28,
      I_sum_s_2(0) => pidv3_axiLogic_n_29,
      S(3) => pidv3_axiLogic_n_15,
      S(2) => pidv3_axiLogic_n_16,
      S(1) => pidv3_axiLogic_n_17,
      S(0) => pidv3_axiLogic_n_18,
      data_clk_i => \^data_clk_i\,
      data_i(13 downto 0) => data_i(13 downto 0),
      \out\(13 downto 0) => setpoint_sync_s(13 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      setpoint_i(13 downto 0) => setpoint_i(13 downto 0),
      sign2_s => sign2_s
    );
sign_syn: entity work.double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi_sync_bit
     port map (
      data_clk_i => \^data_clk_i\,
      \out\(0) => is_input_sync_s(4),
      s00_axi_aclk => s00_axi_aclk,
      sign2_s => sign2_s,
      sign_i => sign_i,
      sign_s => sign_s
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_pidv3_axi_1_0 is
  port (
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    setpoint_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    kp_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    ki_i : in STD_LOGIC_VECTOR ( 17 downto 0 );
    kd_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    sign_i : in STD_LOGIC;
    int_rst_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of double_iq_pid_vco_pidv3_axi_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of double_iq_pid_vco_pidv3_axi_1_0 : entity is "double_iq_pid_vco_pidv3_axi_0_0,pidv3_axi,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of double_iq_pid_vco_pidv3_axi_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of double_iq_pid_vco_pidv3_axi_1_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of double_iq_pid_vco_pidv3_axi_1_0 : entity is "pidv3_axi,Vivado 2019.2";
end double_iq_pid_vco_pidv3_axi_1_0;

architecture STRUCTURE of double_iq_pid_vco_pidv3_axi_1_0 is
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of U0 : label is 5;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of U0 : label is 32;
  attribute DATA_IN_SIZE : integer;
  attribute DATA_IN_SIZE of U0 : label is 14;
  attribute DATA_OUT_SIZE : integer;
  attribute DATA_OUT_SIZE of U0 : label is 14;
  attribute DSR : integer;
  attribute DSR of U0 : label is 1;
  attribute D_SIZE : integer;
  attribute D_SIZE of U0 : label is 14;
  attribute ISR : integer;
  attribute ISR of U0 : label is 19;
  attribute I_SIZE : integer;
  attribute I_SIZE of U0 : label is 18;
  attribute PSR : integer;
  attribute PSR of U0 : label is 13;
  attribute P_SIZE : integer;
  attribute P_SIZE of U0 : label is 14;
  attribute x_interface_info : string;
  attribute x_interface_info of data_clk_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_CLK";
  attribute x_interface_info of data_clk_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_CLK";
  attribute x_interface_info of data_en_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_EN";
  attribute x_interface_info of data_en_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_EN";
  attribute x_interface_info of data_rst_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_RST";
  attribute x_interface_info of data_rst_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_RST";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute x_interface_info of s00_axi_reset : signal is "xilinx.com:signal:reset:1.0 s00_axi_reset RST";
  attribute x_interface_parameter of s00_axi_reset : signal is "XIL_INTERFACENAME s00_axi_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute x_interface_info of data_i : signal is "xilinx.com:interface:real:1.0 data_in DATA";
  attribute x_interface_info of data_o : signal is "xilinx.com:interface:real:1.0 data_out DATA";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
U0: entity work.double_iq_pid_vco_pidv3_axi_1_0_pidv3_axi
     port map (
      data_clk_i => data_clk_i,
      data_clk_o => data_clk_o,
      data_en_i => data_en_i,
      data_en_o => data_en_o,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_o(13 downto 0) => data_o(13 downto 0),
      data_rst_i => data_rst_i,
      data_rst_o => data_rst_o,
      int_rst_i => int_rst_i,
      kd_i(13 downto 0) => kd_i(13 downto 0),
      ki_i(17 downto 0) => ki_i(17 downto 0),
      kp_i(13 downto 0) => kp_i(13 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(4 downto 0) => s00_axi_araddr(4 downto 0),
      s00_axi_arprot(2 downto 0) => s00_axi_arprot(2 downto 0),
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(4 downto 0) => s00_axi_awaddr(4 downto 0),
      s00_axi_awprot(2 downto 0) => s00_axi_awprot(2 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bresp(1 downto 0) => s00_axi_bresp(1 downto 0),
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_reset => s00_axi_reset,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rresp(1 downto 0) => s00_axi_rresp(1 downto 0),
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      setpoint_i(13 downto 0) => setpoint_i(13 downto 0),
      sign_i => sign_i
    );
end STRUCTURE;
