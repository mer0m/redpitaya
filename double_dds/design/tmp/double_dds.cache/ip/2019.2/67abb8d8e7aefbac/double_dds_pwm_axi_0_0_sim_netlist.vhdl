-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun May 31 18:43:56 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_dds_pwm_axi_0_0_sim_netlist.vhdl
-- Design      : double_dds_pwm_axi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_comm is
  port (
    s00_axi_rvalid : out STD_LOGIC;
    data0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \duty_s_reg[13]_0\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \prescaler_s_reg[13]_0\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 14 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    enable_s_reg_0 : in STD_LOGIC;
    invert_s_reg_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    addr_s : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \duty_s_reg[13]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \period_s_reg[13]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \prescaler_s_reg[13]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_comm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_comm is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^duty_s_reg[13]_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^prescaler_s_reg[13]_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal readdata_s : STD_LOGIC_VECTOR ( 13 downto 2 );
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
  \duty_s_reg[13]_0\(13 downto 0) <= \^duty_s_reg[13]_0\(13 downto 0);
  \prescaler_s_reg[13]_0\(13 downto 0) <= \^prescaler_s_reg[13]_0\(13 downto 0);
\duty_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \duty_s_reg[13]_1\(0),
      D => s00_axi_wdata(0),
      Q => \^duty_s_reg[13]_0\(0),
      R => s00_axi_reset
    );
\duty_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \duty_s_reg[13]_1\(0),
      D => s00_axi_wdata(10),
      Q => \^duty_s_reg[13]_0\(10),
      R => s00_axi_reset
    );
\duty_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \duty_s_reg[13]_1\(0),
      D => s00_axi_wdata(11),
      Q => \^duty_s_reg[13]_0\(11),
      R => s00_axi_reset
    );
\duty_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \duty_s_reg[13]_1\(0),
      D => s00_axi_wdata(12),
      Q => \^duty_s_reg[13]_0\(12),
      R => s00_axi_reset
    );
\duty_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \duty_s_reg[13]_1\(0),
      D => s00_axi_wdata(13),
      Q => \^duty_s_reg[13]_0\(13),
      R => s00_axi_reset
    );
\duty_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \duty_s_reg[13]_1\(0),
      D => s00_axi_wdata(1),
      Q => \^duty_s_reg[13]_0\(1),
      R => s00_axi_reset
    );
\duty_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \duty_s_reg[13]_1\(0),
      D => s00_axi_wdata(2),
      Q => \^duty_s_reg[13]_0\(2),
      R => s00_axi_reset
    );
\duty_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \duty_s_reg[13]_1\(0),
      D => s00_axi_wdata(3),
      Q => \^duty_s_reg[13]_0\(3),
      R => s00_axi_reset
    );
\duty_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \duty_s_reg[13]_1\(0),
      D => s00_axi_wdata(4),
      Q => \^duty_s_reg[13]_0\(4),
      R => s00_axi_reset
    );
\duty_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \duty_s_reg[13]_1\(0),
      D => s00_axi_wdata(5),
      Q => \^duty_s_reg[13]_0\(5),
      R => s00_axi_reset
    );
\duty_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \duty_s_reg[13]_1\(0),
      D => s00_axi_wdata(6),
      Q => \^duty_s_reg[13]_0\(6),
      R => s00_axi_reset
    );
\duty_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \duty_s_reg[13]_1\(0),
      D => s00_axi_wdata(7),
      Q => \^duty_s_reg[13]_0\(7),
      R => s00_axi_reset
    );
\duty_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \duty_s_reg[13]_1\(0),
      D => s00_axi_wdata(8),
      Q => \^duty_s_reg[13]_0\(8),
      R => s00_axi_reset
    );
\duty_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \duty_s_reg[13]_1\(0),
      D => s00_axi_wdata(9),
      Q => \^duty_s_reg[13]_0\(9),
      R => s00_axi_reset
    );
enable_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => enable_s_reg_0,
      Q => data0(0),
      R => s00_axi_reset
    );
invert_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => invert_s_reg_0,
      Q => data0(1),
      R => s00_axi_reset
    );
\period_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_s_reg[13]_0\(0),
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => s00_axi_reset
    );
\period_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_s_reg[13]_0\(0),
      D => s00_axi_wdata(10),
      Q => \^q\(10),
      R => s00_axi_reset
    );
\period_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_s_reg[13]_0\(0),
      D => s00_axi_wdata(11),
      Q => \^q\(11),
      R => s00_axi_reset
    );
\period_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_s_reg[13]_0\(0),
      D => s00_axi_wdata(12),
      Q => \^q\(12),
      R => s00_axi_reset
    );
\period_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_s_reg[13]_0\(0),
      D => s00_axi_wdata(13),
      Q => \^q\(13),
      R => s00_axi_reset
    );
\period_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_s_reg[13]_0\(0),
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => s00_axi_reset
    );
\period_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_s_reg[13]_0\(0),
      D => s00_axi_wdata(2),
      Q => \^q\(2),
      R => s00_axi_reset
    );
\period_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_s_reg[13]_0\(0),
      D => s00_axi_wdata(3),
      Q => \^q\(3),
      R => s00_axi_reset
    );
\period_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_s_reg[13]_0\(0),
      D => s00_axi_wdata(4),
      Q => \^q\(4),
      R => s00_axi_reset
    );
\period_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_s_reg[13]_0\(0),
      D => s00_axi_wdata(5),
      Q => \^q\(5),
      R => s00_axi_reset
    );
\period_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_s_reg[13]_0\(0),
      D => s00_axi_wdata(6),
      Q => \^q\(6),
      R => s00_axi_reset
    );
\period_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_s_reg[13]_0\(0),
      D => s00_axi_wdata(7),
      Q => \^q\(7),
      R => s00_axi_reset
    );
\period_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_s_reg[13]_0\(0),
      D => s00_axi_wdata(8),
      Q => \^q\(8),
      R => s00_axi_reset
    );
\period_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_s_reg[13]_0\(0),
      D => s00_axi_wdata(9),
      Q => \^q\(9),
      R => s00_axi_reset
    );
\prescaler_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \prescaler_s_reg[13]_1\(0),
      D => s00_axi_wdata(0),
      Q => \^prescaler_s_reg[13]_0\(0),
      R => s00_axi_reset
    );
\prescaler_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \prescaler_s_reg[13]_1\(0),
      D => s00_axi_wdata(10),
      Q => \^prescaler_s_reg[13]_0\(10),
      R => s00_axi_reset
    );
\prescaler_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \prescaler_s_reg[13]_1\(0),
      D => s00_axi_wdata(11),
      Q => \^prescaler_s_reg[13]_0\(11),
      R => s00_axi_reset
    );
\prescaler_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \prescaler_s_reg[13]_1\(0),
      D => s00_axi_wdata(12),
      Q => \^prescaler_s_reg[13]_0\(12),
      R => s00_axi_reset
    );
\prescaler_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \prescaler_s_reg[13]_1\(0),
      D => s00_axi_wdata(13),
      Q => \^prescaler_s_reg[13]_0\(13),
      R => s00_axi_reset
    );
\prescaler_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \prescaler_s_reg[13]_1\(0),
      D => s00_axi_wdata(1),
      Q => \^prescaler_s_reg[13]_0\(1),
      R => s00_axi_reset
    );
\prescaler_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \prescaler_s_reg[13]_1\(0),
      D => s00_axi_wdata(2),
      Q => \^prescaler_s_reg[13]_0\(2),
      R => s00_axi_reset
    );
\prescaler_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \prescaler_s_reg[13]_1\(0),
      D => s00_axi_wdata(3),
      Q => \^prescaler_s_reg[13]_0\(3),
      R => s00_axi_reset
    );
\prescaler_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \prescaler_s_reg[13]_1\(0),
      D => s00_axi_wdata(4),
      Q => \^prescaler_s_reg[13]_0\(4),
      R => s00_axi_reset
    );
\prescaler_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \prescaler_s_reg[13]_1\(0),
      D => s00_axi_wdata(5),
      Q => \^prescaler_s_reg[13]_0\(5),
      R => s00_axi_reset
    );
\prescaler_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \prescaler_s_reg[13]_1\(0),
      D => s00_axi_wdata(6),
      Q => \^prescaler_s_reg[13]_0\(6),
      R => s00_axi_reset
    );
\prescaler_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \prescaler_s_reg[13]_1\(0),
      D => s00_axi_wdata(7),
      Q => \^prescaler_s_reg[13]_0\(7),
      R => s00_axi_reset
    );
\prescaler_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \prescaler_s_reg[13]_1\(0),
      D => s00_axi_wdata(8),
      Q => \^prescaler_s_reg[13]_0\(8),
      R => s00_axi_reset
    );
\prescaler_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \prescaler_s_reg[13]_1\(0),
      D => s00_axi_wdata(9),
      Q => \^prescaler_s_reg[13]_0\(9),
      R => s00_axi_reset
    );
read_ack_o_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => s00_axi_reset,
      D => E(0),
      Q => s00_axi_rvalid
    );
\readdata_s[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFC0FFA0F0C0"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^duty_s_reg[13]_0\(10),
      I2 => addr_s(1),
      I3 => addr_s(2),
      I4 => addr_s(0),
      I5 => \^prescaler_s_reg[13]_0\(10),
      O => readdata_s(10)
    );
\readdata_s[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFC0FFA0F0C0"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^duty_s_reg[13]_0\(11),
      I2 => addr_s(1),
      I3 => addr_s(2),
      I4 => addr_s(0),
      I5 => \^prescaler_s_reg[13]_0\(11),
      O => readdata_s(11)
    );
\readdata_s[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFC0FFA0F0C0"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^duty_s_reg[13]_0\(12),
      I2 => addr_s(1),
      I3 => addr_s(2),
      I4 => addr_s(0),
      I5 => \^prescaler_s_reg[13]_0\(12),
      O => readdata_s(12)
    );
\readdata_s[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFC0FFA0F0C0"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^duty_s_reg[13]_0\(13),
      I2 => addr_s(1),
      I3 => addr_s(2),
      I4 => addr_s(0),
      I5 => \^prescaler_s_reg[13]_0\(13),
      O => readdata_s(13)
    );
\readdata_s[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFC0FFA0F0C0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^duty_s_reg[13]_0\(2),
      I2 => addr_s(1),
      I3 => addr_s(2),
      I4 => addr_s(0),
      I5 => \^prescaler_s_reg[13]_0\(2),
      O => readdata_s(2)
    );
\readdata_s[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFC0FFA0F0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^duty_s_reg[13]_0\(3),
      I2 => addr_s(1),
      I3 => addr_s(2),
      I4 => addr_s(0),
      I5 => \^prescaler_s_reg[13]_0\(3),
      O => readdata_s(3)
    );
\readdata_s[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFC0FFA0F0C0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^duty_s_reg[13]_0\(4),
      I2 => addr_s(1),
      I3 => addr_s(2),
      I4 => addr_s(0),
      I5 => \^prescaler_s_reg[13]_0\(4),
      O => readdata_s(4)
    );
\readdata_s[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFC0FFA0F0C0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^duty_s_reg[13]_0\(5),
      I2 => addr_s(1),
      I3 => addr_s(2),
      I4 => addr_s(0),
      I5 => \^prescaler_s_reg[13]_0\(5),
      O => readdata_s(5)
    );
\readdata_s[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFC0FFA0F0C0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^duty_s_reg[13]_0\(6),
      I2 => addr_s(1),
      I3 => addr_s(2),
      I4 => addr_s(0),
      I5 => \^prescaler_s_reg[13]_0\(6),
      O => readdata_s(6)
    );
\readdata_s[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFC0FFA0F0C0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^duty_s_reg[13]_0\(7),
      I2 => addr_s(1),
      I3 => addr_s(2),
      I4 => addr_s(0),
      I5 => \^prescaler_s_reg[13]_0\(7),
      O => readdata_s(7)
    );
\readdata_s[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFC0FFA0F0C0"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^duty_s_reg[13]_0\(8),
      I2 => addr_s(1),
      I3 => addr_s(2),
      I4 => addr_s(0),
      I5 => \^prescaler_s_reg[13]_0\(8),
      O => readdata_s(8)
    );
\readdata_s[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFC0FFA0F0C0"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^duty_s_reg[13]_0\(9),
      I2 => addr_s(1),
      I3 => addr_s(2),
      I4 => addr_s(0),
      I5 => \^prescaler_s_reg[13]_0\(9),
      O => readdata_s(9)
    );
\readdata_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => D(0),
      Q => s00_axi_rdata(0)
    );
\readdata_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => readdata_s(10),
      Q => s00_axi_rdata(10)
    );
\readdata_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => readdata_s(11),
      Q => s00_axi_rdata(11)
    );
\readdata_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => readdata_s(12),
      Q => s00_axi_rdata(12)
    );
\readdata_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => readdata_s(13),
      Q => s00_axi_rdata(13)
    );
\readdata_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => D(1),
      Q => s00_axi_rdata(1)
    );
\readdata_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => readdata_s(2),
      Q => s00_axi_rdata(2)
    );
\readdata_s_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => D(2),
      Q => s00_axi_rdata(14)
    );
\readdata_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => readdata_s(3),
      Q => s00_axi_rdata(3)
    );
\readdata_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => readdata_s(4),
      Q => s00_axi_rdata(4)
    );
\readdata_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => readdata_s(5),
      Q => s00_axi_rdata(5)
    );
\readdata_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => readdata_s(6),
      Q => s00_axi_rdata(6)
    );
\readdata_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => readdata_s(7),
      Q => s00_axi_rdata(7)
    );
\readdata_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => readdata_s(8),
      Q => s00_axi_rdata(8)
    );
\readdata_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => readdata_s(9),
      Q => s00_axi_rdata(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_cpt is
  port (
    ref_rst_i_0 : out STD_LOGIC;
    tick_s : out STD_LOGIC;
    ref_clk_i : in STD_LOGIC;
    ref_rst_i : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cpt_s_reg[13]_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_cpt;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_cpt is
  signal \cpt_s[0]_i_2_n_0\ : STD_LOGIC;
  signal \cpt_s[0]_i_3_n_0\ : STD_LOGIC;
  signal \cpt_s[0]_i_4_n_0\ : STD_LOGIC;
  signal \cpt_s[0]_i_5_n_0\ : STD_LOGIC;
  signal \cpt_s[12]_i_2_n_0\ : STD_LOGIC;
  signal \cpt_s[12]_i_3_n_0\ : STD_LOGIC;
  signal \cpt_s[4]_i_2_n_0\ : STD_LOGIC;
  signal \cpt_s[4]_i_3_n_0\ : STD_LOGIC;
  signal \cpt_s[4]_i_4_n_0\ : STD_LOGIC;
  signal \cpt_s[4]_i_5_n_0\ : STD_LOGIC;
  signal \cpt_s[8]_i_2_n_0\ : STD_LOGIC;
  signal \cpt_s[8]_i_3_n_0\ : STD_LOGIC;
  signal \cpt_s[8]_i_4_n_0\ : STD_LOGIC;
  signal \cpt_s[8]_i_5_n_0\ : STD_LOGIC;
  signal cpt_s_reg : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \cpt_s_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cpt_s_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cpt_s_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cpt_s_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cpt_s_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cpt_s_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cpt_s_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cpt_s_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cpt_s_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cpt_s_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cpt_s_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cpt_s_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cpt_s_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cpt_s_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cpt_s_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cpt_s_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cpt_s_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cpt_s_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cpt_s_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cpt_s_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cpt_s_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cpt_s_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cpt_s_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cpt_s_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cpt_s_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cpt_s_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cpt_s_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \nb_tick_s[0]_i_4_n_0\ : STD_LOGIC;
  signal \nb_tick_s[0]_i_5_n_0\ : STD_LOGIC;
  signal \^tick_s\ : STD_LOGIC;
  signal \NLW_cpt_s_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cpt_s_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
  tick_s <= \^tick_s\;
\cpt_s[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFDF"
    )
        port map (
      I0 => cpt_s_reg(3),
      I1 => ref_rst_i,
      I2 => \out\(0),
      I3 => \^tick_s\,
      I4 => \cpt_s_reg[13]_0\(3),
      O => \cpt_s[0]_i_2_n_0\
    );
\cpt_s[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFDF"
    )
        port map (
      I0 => cpt_s_reg(2),
      I1 => ref_rst_i,
      I2 => \out\(0),
      I3 => \^tick_s\,
      I4 => \cpt_s_reg[13]_0\(2),
      O => \cpt_s[0]_i_3_n_0\
    );
\cpt_s[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFDF"
    )
        port map (
      I0 => cpt_s_reg(1),
      I1 => ref_rst_i,
      I2 => \out\(0),
      I3 => \^tick_s\,
      I4 => \cpt_s_reg[13]_0\(1),
      O => \cpt_s[0]_i_4_n_0\
    );
\cpt_s[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFDF"
    )
        port map (
      I0 => cpt_s_reg(0),
      I1 => ref_rst_i,
      I2 => \out\(0),
      I3 => \^tick_s\,
      I4 => \cpt_s_reg[13]_0\(0),
      O => \cpt_s[0]_i_5_n_0\
    );
\cpt_s[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFDF"
    )
        port map (
      I0 => cpt_s_reg(13),
      I1 => ref_rst_i,
      I2 => \out\(0),
      I3 => \^tick_s\,
      I4 => \cpt_s_reg[13]_0\(13),
      O => \cpt_s[12]_i_2_n_0\
    );
\cpt_s[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFDF"
    )
        port map (
      I0 => cpt_s_reg(12),
      I1 => ref_rst_i,
      I2 => \out\(0),
      I3 => \^tick_s\,
      I4 => \cpt_s_reg[13]_0\(12),
      O => \cpt_s[12]_i_3_n_0\
    );
\cpt_s[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFDF"
    )
        port map (
      I0 => cpt_s_reg(7),
      I1 => ref_rst_i,
      I2 => \out\(0),
      I3 => \^tick_s\,
      I4 => \cpt_s_reg[13]_0\(7),
      O => \cpt_s[4]_i_2_n_0\
    );
\cpt_s[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFDF"
    )
        port map (
      I0 => cpt_s_reg(6),
      I1 => ref_rst_i,
      I2 => \out\(0),
      I3 => \^tick_s\,
      I4 => \cpt_s_reg[13]_0\(6),
      O => \cpt_s[4]_i_3_n_0\
    );
\cpt_s[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFDF"
    )
        port map (
      I0 => cpt_s_reg(5),
      I1 => ref_rst_i,
      I2 => \out\(0),
      I3 => \^tick_s\,
      I4 => \cpt_s_reg[13]_0\(5),
      O => \cpt_s[4]_i_4_n_0\
    );
\cpt_s[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFDF"
    )
        port map (
      I0 => cpt_s_reg(4),
      I1 => ref_rst_i,
      I2 => \out\(0),
      I3 => \^tick_s\,
      I4 => \cpt_s_reg[13]_0\(4),
      O => \cpt_s[4]_i_5_n_0\
    );
\cpt_s[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFDF"
    )
        port map (
      I0 => cpt_s_reg(11),
      I1 => ref_rst_i,
      I2 => \out\(0),
      I3 => \^tick_s\,
      I4 => \cpt_s_reg[13]_0\(11),
      O => \cpt_s[8]_i_2_n_0\
    );
\cpt_s[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFDF"
    )
        port map (
      I0 => cpt_s_reg(10),
      I1 => ref_rst_i,
      I2 => \out\(0),
      I3 => \^tick_s\,
      I4 => \cpt_s_reg[13]_0\(10),
      O => \cpt_s[8]_i_3_n_0\
    );
\cpt_s[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFDF"
    )
        port map (
      I0 => cpt_s_reg(9),
      I1 => ref_rst_i,
      I2 => \out\(0),
      I3 => \^tick_s\,
      I4 => \cpt_s_reg[13]_0\(9),
      O => \cpt_s[8]_i_4_n_0\
    );
\cpt_s[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFDF"
    )
        port map (
      I0 => cpt_s_reg(8),
      I1 => ref_rst_i,
      I2 => \out\(0),
      I3 => \^tick_s\,
      I4 => \cpt_s_reg[13]_0\(8),
      O => \cpt_s[8]_i_5_n_0\
    );
\cpt_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_s_reg[0]_i_1_n_7\,
      Q => cpt_s_reg(0),
      R => '0'
    );
\cpt_s_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cpt_s_reg[0]_i_1_n_0\,
      CO(2) => \cpt_s_reg[0]_i_1_n_1\,
      CO(1) => \cpt_s_reg[0]_i_1_n_2\,
      CO(0) => \cpt_s_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \cpt_s_reg[0]_i_1_n_4\,
      O(2) => \cpt_s_reg[0]_i_1_n_5\,
      O(1) => \cpt_s_reg[0]_i_1_n_6\,
      O(0) => \cpt_s_reg[0]_i_1_n_7\,
      S(3) => \cpt_s[0]_i_2_n_0\,
      S(2) => \cpt_s[0]_i_3_n_0\,
      S(1) => \cpt_s[0]_i_4_n_0\,
      S(0) => \cpt_s[0]_i_5_n_0\
    );
\cpt_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_s_reg[8]_i_1_n_5\,
      Q => cpt_s_reg(10),
      R => '0'
    );
\cpt_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_s_reg[8]_i_1_n_4\,
      Q => cpt_s_reg(11),
      R => '0'
    );
\cpt_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_s_reg[12]_i_1_n_7\,
      Q => cpt_s_reg(12),
      R => '0'
    );
\cpt_s_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_s_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_cpt_s_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \cpt_s_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 2) => \NLW_cpt_s_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \cpt_s_reg[12]_i_1_n_6\,
      O(0) => \cpt_s_reg[12]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \cpt_s[12]_i_2_n_0\,
      S(0) => \cpt_s[12]_i_3_n_0\
    );
\cpt_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_s_reg[12]_i_1_n_6\,
      Q => cpt_s_reg(13),
      R => '0'
    );
\cpt_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_s_reg[0]_i_1_n_6\,
      Q => cpt_s_reg(1),
      R => '0'
    );
\cpt_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_s_reg[0]_i_1_n_5\,
      Q => cpt_s_reg(2),
      R => '0'
    );
\cpt_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_s_reg[0]_i_1_n_4\,
      Q => cpt_s_reg(3),
      R => '0'
    );
\cpt_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_s_reg[4]_i_1_n_7\,
      Q => cpt_s_reg(4),
      R => '0'
    );
\cpt_s_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_s_reg[0]_i_1_n_0\,
      CO(3) => \cpt_s_reg[4]_i_1_n_0\,
      CO(2) => \cpt_s_reg[4]_i_1_n_1\,
      CO(1) => \cpt_s_reg[4]_i_1_n_2\,
      CO(0) => \cpt_s_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \cpt_s_reg[4]_i_1_n_4\,
      O(2) => \cpt_s_reg[4]_i_1_n_5\,
      O(1) => \cpt_s_reg[4]_i_1_n_6\,
      O(0) => \cpt_s_reg[4]_i_1_n_7\,
      S(3) => \cpt_s[4]_i_2_n_0\,
      S(2) => \cpt_s[4]_i_3_n_0\,
      S(1) => \cpt_s[4]_i_4_n_0\,
      S(0) => \cpt_s[4]_i_5_n_0\
    );
\cpt_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_s_reg[4]_i_1_n_6\,
      Q => cpt_s_reg(5),
      R => '0'
    );
\cpt_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_s_reg[4]_i_1_n_5\,
      Q => cpt_s_reg(6),
      R => '0'
    );
\cpt_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_s_reg[4]_i_1_n_4\,
      Q => cpt_s_reg(7),
      R => '0'
    );
\cpt_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_s_reg[8]_i_1_n_7\,
      Q => cpt_s_reg(8),
      R => '0'
    );
\cpt_s_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cpt_s_reg[4]_i_1_n_0\,
      CO(3) => \cpt_s_reg[8]_i_1_n_0\,
      CO(2) => \cpt_s_reg[8]_i_1_n_1\,
      CO(1) => \cpt_s_reg[8]_i_1_n_2\,
      CO(0) => \cpt_s_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \cpt_s_reg[8]_i_1_n_4\,
      O(2) => \cpt_s_reg[8]_i_1_n_5\,
      O(1) => \cpt_s_reg[8]_i_1_n_6\,
      O(0) => \cpt_s_reg[8]_i_1_n_7\,
      S(3) => \cpt_s[8]_i_2_n_0\,
      S(2) => \cpt_s[8]_i_3_n_0\,
      S(1) => \cpt_s[8]_i_4_n_0\,
      S(0) => \cpt_s[8]_i_5_n_0\
    );
\cpt_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => '1',
      D => \cpt_s_reg[8]_i_1_n_6\,
      Q => cpt_s_reg(9),
      R => '0'
    );
\nb_tick_s[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ref_rst_i,
      I1 => CO(0),
      I2 => \^tick_s\,
      O => ref_rst_i_0
    );
\nb_tick_s[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \nb_tick_s[0]_i_4_n_0\,
      I1 => \nb_tick_s[0]_i_5_n_0\,
      I2 => cpt_s_reg(13),
      I3 => cpt_s_reg(4),
      I4 => cpt_s_reg(11),
      I5 => cpt_s_reg(5),
      O => \^tick_s\
    );
\nb_tick_s[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cpt_s_reg(12),
      I1 => cpt_s_reg(1),
      I2 => cpt_s_reg(0),
      I3 => cpt_s_reg(10),
      I4 => cpt_s_reg(7),
      I5 => cpt_s_reg(8),
      O => \nb_tick_s[0]_i_4_n_0\
    );
\nb_tick_s[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cpt_s_reg(9),
      I1 => cpt_s_reg(6),
      I2 => cpt_s_reg(3),
      I3 => cpt_s_reg(2),
      O => \nb_tick_s[0]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_handCom is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    addr_s : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_awready_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_awvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    read_en_s : out STD_LOGIC;
    s00_axi_wdata_1_sp_1 : out STD_LOGIC;
    s00_axi_wdata_0_sp_1 : out STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readdata_s_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readdata_s_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_handCom;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_handCom is
  signal addr_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal axi_rvalid_reg_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal read_addr_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^read_en_s\ : STD_LOGIC;
  signal \readdata_s[0]_i_2_n_0\ : STD_LOGIC;
  signal \readdata_s[1]_i_2_n_0\ : STD_LOGIC;
  signal \readdata_s[1]_i_3_n_0\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal s00_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s00_axi_wdata_1_sn_1 : STD_LOGIC;
  signal write_addr_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal write_en_s : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \duty_s[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \duty_s[13]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \period_s[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \readdata_s[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_1\ : label is "soft_lutpair1";
begin
  addr_s(2 downto 0) <= \^addr_s\(2 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  read_en_s <= \^read_en_s\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wdata_0_sp_1 <= s00_axi_wdata_0_sn_1;
  s00_axi_wdata_1_sp_1 <= s00_axi_wdata_1_sn_1;
\addr_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_addr_s(0),
      I1 => write_en_s,
      I2 => read_addr_s(0),
      I3 => \^read_en_s\,
      I4 => addr_reg(0),
      O => \^addr_s\(0)
    );
\addr_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_addr_s(1),
      I1 => write_en_s,
      I2 => read_addr_s(1),
      I3 => \^read_en_s\,
      I4 => addr_reg(1),
      O => \^addr_s\(1)
    );
\addr_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_addr_s(2),
      I1 => write_en_s,
      I2 => read_addr_s(2),
      I3 => \^read_en_s\,
      I4 => addr_reg(2),
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
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_bready,
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
      INIT => X"08F8"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => axi_rvalid_reg_n_0,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => axi_rvalid_reg_n_0,
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
\duty_s[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => write_en_s,
      I1 => \^addr_s\(0),
      I2 => \^addr_s\(2),
      I3 => \^addr_s\(1),
      O => axi_awready_reg_1(0)
    );
\duty_s[13]_i_2\: unisim.vcomponents.LUT4
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
enable_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => write_en_s,
      I2 => \^addr_s\(1),
      I3 => \^addr_s\(2),
      I4 => \^addr_s\(0),
      I5 => data0(0),
      O => s00_axi_wdata_0_sn_1
    );
invert_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => write_en_s,
      I2 => \^addr_s\(1),
      I3 => \^addr_s\(2),
      I4 => \^addr_s\(0),
      I5 => data0(1),
      O => s00_axi_wdata_1_sn_1
    );
\period_s[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => write_en_s,
      I1 => \^addr_s\(1),
      I2 => \^addr_s\(0),
      I3 => \^addr_s\(2),
      O => E(0)
    );
\prescaler_s[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => \^addr_s\(1),
      I5 => \^addr_s\(0),
      O => s00_axi_awvalid_0(0)
    );
\readdata_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCAFFC0FFCAF0C0"
    )
        port map (
      I0 => data0(0),
      I1 => \readdata_s[0]_i_2_n_0\,
      I2 => \^addr_s\(1),
      I3 => \^addr_s\(2),
      I4 => \^addr_s\(0),
      I5 => Q(0),
      O => D(0)
    );
\readdata_s[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABF8A80"
    )
        port map (
      I0 => \readdata_s_reg[1]\(0),
      I1 => write_addr_s(0),
      I2 => write_en_s,
      I3 => \readdata_s[1]_i_3_n_0\,
      I4 => \readdata_s_reg[1]_0\(0),
      O => \readdata_s[0]_i_2_n_0\
    );
\readdata_s[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCAFFC0FFCAF0C0"
    )
        port map (
      I0 => data0(1),
      I1 => \readdata_s[1]_i_2_n_0\,
      I2 => \^addr_s\(1),
      I3 => \^addr_s\(2),
      I4 => \^addr_s\(0),
      I5 => Q(1),
      O => D(1)
    );
\readdata_s[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABF8A80"
    )
        port map (
      I0 => \readdata_s_reg[1]\(1),
      I1 => write_addr_s(0),
      I2 => write_en_s,
      I3 => \readdata_s[1]_i_3_n_0\,
      I4 => \readdata_s_reg[1]_0\(1),
      O => \readdata_s[1]_i_2_n_0\
    );
\readdata_s[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => read_addr_s(0),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_rvalid_reg_n_0,
      I4 => addr_reg(0),
      O => \readdata_s[1]_i_3_n_0\
    );
\readdata_s[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => axi_rvalid_reg_n_0,
      O => \^read_en_s\
    );
\readdata_s[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^addr_s\(1),
      I1 => \^addr_s\(0),
      I2 => \^addr_s\(2),
      O => D(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_bit is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    data0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    ref_clk_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_bit is
  signal flipflops : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of flipflops : signal is "true";
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
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
      C => ref_clk_i,
      CE => '1',
      D => p_0_in(0),
      Q => flipflops(0),
      R => '0'
    );
\flipflops_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk_i,
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
      C => ref_clk_i,
      CE => '1',
      D => flipflops(1),
      Q => flipflops(2),
      R => '0'
    );
sync_stage0_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(0),
      Q => p_0_in(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_bit__xdcDup__1\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_o : out STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    pwm_o_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    ref_clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_bit__xdcDup__1\ : entity is "pwm_sync_bit";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_bit__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_bit__xdcDup__1\ is
  signal flipflops : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of flipflops : signal is "true";
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
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
      C => ref_clk_i,
      CE => '1',
      D => p_0_in(0),
      Q => flipflops(0),
      R => '0'
    );
\flipflops_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk_i,
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
      C => ref_clk_i,
      CE => '1',
      D => flipflops(1),
      Q => flipflops(2),
      R => '0'
    );
pwm_o_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => flipflops(2),
      I1 => pwm_o_0(0),
      I2 => CO(0),
      O => pwm_o
    );
sync_stage0_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(0),
      Q => p_0_in(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_vector is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    D : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    ref_clk_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_vector;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_vector is
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
  \out\(13 downto 0) <= \flipflops_vect[2]_2\(13 downto 0);
\flipflops_vect_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_vector__xdcDup__1\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \flipflops_vect_reg[2][7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \flipflops_vect_reg[2][13]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \pwm_o1_carry__0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    D : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    ref_clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_vector__xdcDup__1\ : entity is "pwm_sync_vector";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_vector__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_vector__xdcDup__1\ is
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
  \out\(13 downto 0) <= \flipflops_vect[2]_2\(13 downto 0);
\flipflops_vect_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(9),
      Q => \flipflops_vect[2]_2\(9),
      R => '0'
    );
\pwm_o1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(13),
      I1 => \pwm_o1_carry__0\(13),
      I2 => \flipflops_vect[2]_2\(12),
      I3 => \pwm_o1_carry__0\(12),
      O => \flipflops_vect_reg[2][13]_0\(2)
    );
\pwm_o1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(11),
      I1 => \pwm_o1_carry__0\(11),
      I2 => \flipflops_vect[2]_2\(10),
      I3 => \pwm_o1_carry__0\(10),
      O => \flipflops_vect_reg[2][13]_0\(1)
    );
\pwm_o1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(9),
      I1 => \pwm_o1_carry__0\(9),
      I2 => \flipflops_vect[2]_2\(8),
      I3 => \pwm_o1_carry__0\(8),
      O => \flipflops_vect_reg[2][13]_0\(0)
    );
pwm_o1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(7),
      I1 => \pwm_o1_carry__0\(7),
      I2 => \flipflops_vect[2]_2\(6),
      I3 => \pwm_o1_carry__0\(6),
      O => \flipflops_vect_reg[2][7]_0\(3)
    );
pwm_o1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(5),
      I1 => \pwm_o1_carry__0\(5),
      I2 => \flipflops_vect[2]_2\(4),
      I3 => \pwm_o1_carry__0\(4),
      O => \flipflops_vect_reg[2][7]_0\(2)
    );
pwm_o1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(3),
      I1 => \pwm_o1_carry__0\(3),
      I2 => \flipflops_vect[2]_2\(2),
      I3 => \pwm_o1_carry__0\(2),
      O => \flipflops_vect_reg[2][7]_0\(1)
    );
pwm_o1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(1),
      I1 => \pwm_o1_carry__0\(1),
      I2 => \flipflops_vect[2]_2\(0),
      I3 => \pwm_o1_carry__0\(0),
      O => \flipflops_vect_reg[2][7]_0\(0)
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
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_vector__xdcDup__2\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \flipflops_vect_reg[2][13]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \flipflops_vect_reg[2][12]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \flipflops_vect_reg[2][8]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    ref_clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_vector__xdcDup__2\ : entity is "pwm_sync_vector";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_vector__xdcDup__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_vector__xdcDup__2\ is
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
  \out\(12 downto 0) <= \flipflops_vect[2]_2\(12 downto 0);
\flipflops_vect_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
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
      C => ref_clk_i,
      CE => '1',
      D => \flipflops_vect[1]_1\(9),
      Q => \flipflops_vect[2]_2\(9),
      R => '0'
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(8),
      O => \flipflops_vect_reg[2][8]_0\(3)
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(7),
      O => \flipflops_vect_reg[2][8]_0\(2)
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(6),
      O => \flipflops_vect_reg[2][8]_0\(1)
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(5),
      O => \flipflops_vect_reg[2][8]_0\(0)
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(12),
      O => \flipflops_vect_reg[2][12]_0\(3)
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(11),
      O => \flipflops_vect_reg[2][12]_0\(2)
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(10),
      O => \flipflops_vect_reg[2][12]_0\(1)
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(9),
      O => \flipflops_vect_reg[2][12]_0\(0)
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(13),
      O => \flipflops_vect_reg[2][13]_0\(0)
    );
minusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(4),
      O => S(3)
    );
minusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(3),
      O => S(2)
    );
minusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(2),
      O => S(1)
    );
minusOp_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(1),
      O => S(0)
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_logic is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \nb_tick_s_reg[13]_0\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ref_clk_i : in STD_LOGIC;
    I22 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    nb_tick_s1_carry_i_6_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \nb_tick_s1_carry__0_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \nb_tick_s1_carry__0_i_4_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \pwm_o1_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pwm_o : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ref_rst_i : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cpt_s_reg[13]\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \pwm_o1_carry__0_1\ : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_logic is
  signal minusOp : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal \nb_tick_s1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \nb_tick_s1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \nb_tick_s1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \nb_tick_s1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \nb_tick_s1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \nb_tick_s1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \nb_tick_s1_carry__0_n_1\ : STD_LOGIC;
  signal \nb_tick_s1_carry__0_n_2\ : STD_LOGIC;
  signal \nb_tick_s1_carry__0_n_3\ : STD_LOGIC;
  signal nb_tick_s1_carry_i_1_n_0 : STD_LOGIC;
  signal nb_tick_s1_carry_i_2_n_0 : STD_LOGIC;
  signal nb_tick_s1_carry_i_3_n_0 : STD_LOGIC;
  signal nb_tick_s1_carry_i_4_n_0 : STD_LOGIC;
  signal nb_tick_s1_carry_i_5_n_0 : STD_LOGIC;
  signal nb_tick_s1_carry_i_6_n_0 : STD_LOGIC;
  signal nb_tick_s1_carry_i_7_n_0 : STD_LOGIC;
  signal nb_tick_s1_carry_i_8_n_0 : STD_LOGIC;
  signal nb_tick_s1_carry_n_0 : STD_LOGIC;
  signal nb_tick_s1_carry_n_1 : STD_LOGIC;
  signal nb_tick_s1_carry_n_2 : STD_LOGIC;
  signal nb_tick_s1_carry_n_3 : STD_LOGIC;
  signal \nb_tick_s[0]_i_6_n_0\ : STD_LOGIC;
  signal \nb_tick_s_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \nb_tick_s_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \nb_tick_s_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \nb_tick_s_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \nb_tick_s_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \nb_tick_s_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \nb_tick_s_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \nb_tick_s_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \nb_tick_s_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \nb_tick_s_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \nb_tick_s_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \^nb_tick_s_reg[13]_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \nb_tick_s_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \nb_tick_s_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \nb_tick_s_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \nb_tick_s_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \nb_tick_s_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \nb_tick_s_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \nb_tick_s_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \nb_tick_s_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \nb_tick_s_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \nb_tick_s_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \nb_tick_s_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \nb_tick_s_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \nb_tick_s_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \nb_tick_s_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \nb_tick_s_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \nb_tick_s_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal pwm_cpt_inst_n_0 : STD_LOGIC;
  signal \pwm_o1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwm_o1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_o1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pwm_o1_carry__0_n_2\ : STD_LOGIC;
  signal \pwm_o1_carry__0_n_3\ : STD_LOGIC;
  signal pwm_o1_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_o1_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_o1_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_o1_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_o1_carry_n_0 : STD_LOGIC;
  signal pwm_o1_carry_n_1 : STD_LOGIC;
  signal pwm_o1_carry_n_2 : STD_LOGIC;
  signal pwm_o1_carry_n_3 : STD_LOGIC;
  signal tick_s : STD_LOGIC;
  signal \NLW_minusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_nb_tick_s1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_nb_tick_s1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_nb_tick_s1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_nb_tick_s_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_nb_tick_s_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_pwm_o1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_o1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pwm_o1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \nb_tick_s_reg[13]_0\(13 downto 0) <= \^nb_tick_s_reg[13]_0\(13 downto 0);
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => I22(0),
      DI(3 downto 0) => I22(4 downto 1),
      O(3 downto 0) => minusOp(4 downto 1),
      S(3 downto 0) => S(3 downto 0)
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => I22(8 downto 5),
      O(3 downto 0) => minusOp(8 downto 5),
      S(3 downto 0) => nb_tick_s1_carry_i_6_0(3 downto 0)
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => I22(12 downto 9),
      O(3 downto 0) => minusOp(12 downto 9),
      S(3 downto 0) => \nb_tick_s1_carry__0_i_6_0\(3 downto 0)
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3 downto 0) => \NLW_minusOp_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_minusOp_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => minusOp(13),
      S(3 downto 1) => B"000",
      S(0) => \nb_tick_s1_carry__0_i_4_0\(0)
    );
nb_tick_s1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => nb_tick_s1_carry_n_0,
      CO(2) => nb_tick_s1_carry_n_1,
      CO(1) => nb_tick_s1_carry_n_2,
      CO(0) => nb_tick_s1_carry_n_3,
      CYINIT => '0',
      DI(3) => nb_tick_s1_carry_i_1_n_0,
      DI(2) => nb_tick_s1_carry_i_2_n_0,
      DI(1) => nb_tick_s1_carry_i_3_n_0,
      DI(0) => nb_tick_s1_carry_i_4_n_0,
      O(3 downto 0) => NLW_nb_tick_s1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => nb_tick_s1_carry_i_5_n_0,
      S(2) => nb_tick_s1_carry_i_6_n_0,
      S(1) => nb_tick_s1_carry_i_7_n_0,
      S(0) => nb_tick_s1_carry_i_8_n_0
    );
\nb_tick_s1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => nb_tick_s1_carry_n_0,
      CO(3) => \NLW_nb_tick_s1_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \nb_tick_s1_carry__0_n_1\,
      CO(1) => \nb_tick_s1_carry__0_n_2\,
      CO(0) => \nb_tick_s1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \nb_tick_s1_carry__0_i_1_n_0\,
      DI(1) => \nb_tick_s1_carry__0_i_2_n_0\,
      DI(0) => \nb_tick_s1_carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_nb_tick_s1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \nb_tick_s1_carry__0_i_4_n_0\,
      S(1) => \nb_tick_s1_carry__0_i_5_n_0\,
      S(0) => \nb_tick_s1_carry__0_i_6_n_0\
    );
\nb_tick_s1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minusOp(13),
      I1 => \^nb_tick_s_reg[13]_0\(13),
      I2 => minusOp(12),
      I3 => \^nb_tick_s_reg[13]_0\(12),
      O => \nb_tick_s1_carry__0_i_1_n_0\
    );
\nb_tick_s1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minusOp(11),
      I1 => \^nb_tick_s_reg[13]_0\(11),
      I2 => minusOp(10),
      I3 => \^nb_tick_s_reg[13]_0\(10),
      O => \nb_tick_s1_carry__0_i_2_n_0\
    );
\nb_tick_s1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minusOp(9),
      I1 => \^nb_tick_s_reg[13]_0\(9),
      I2 => minusOp(8),
      I3 => \^nb_tick_s_reg[13]_0\(8),
      O => \nb_tick_s1_carry__0_i_3_n_0\
    );
\nb_tick_s1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(13),
      I1 => minusOp(13),
      I2 => \^nb_tick_s_reg[13]_0\(12),
      I3 => minusOp(12),
      O => \nb_tick_s1_carry__0_i_4_n_0\
    );
\nb_tick_s1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(11),
      I1 => minusOp(11),
      I2 => \^nb_tick_s_reg[13]_0\(10),
      I3 => minusOp(10),
      O => \nb_tick_s1_carry__0_i_5_n_0\
    );
\nb_tick_s1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(9),
      I1 => minusOp(9),
      I2 => \^nb_tick_s_reg[13]_0\(8),
      I3 => minusOp(8),
      O => \nb_tick_s1_carry__0_i_6_n_0\
    );
nb_tick_s1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minusOp(7),
      I1 => \^nb_tick_s_reg[13]_0\(7),
      I2 => minusOp(6),
      I3 => \^nb_tick_s_reg[13]_0\(6),
      O => nb_tick_s1_carry_i_1_n_0
    );
nb_tick_s1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minusOp(5),
      I1 => \^nb_tick_s_reg[13]_0\(5),
      I2 => minusOp(4),
      I3 => \^nb_tick_s_reg[13]_0\(4),
      O => nb_tick_s1_carry_i_2_n_0
    );
nb_tick_s1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minusOp(3),
      I1 => \^nb_tick_s_reg[13]_0\(3),
      I2 => minusOp(2),
      I3 => \^nb_tick_s_reg[13]_0\(2),
      O => nb_tick_s1_carry_i_3_n_0
    );
nb_tick_s1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222B"
    )
        port map (
      I0 => minusOp(1),
      I1 => \^nb_tick_s_reg[13]_0\(1),
      I2 => I22(0),
      I3 => \^nb_tick_s_reg[13]_0\(0),
      O => nb_tick_s1_carry_i_4_n_0
    );
nb_tick_s1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(7),
      I1 => minusOp(7),
      I2 => \^nb_tick_s_reg[13]_0\(6),
      I3 => minusOp(6),
      O => nb_tick_s1_carry_i_5_n_0
    );
nb_tick_s1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(5),
      I1 => minusOp(5),
      I2 => \^nb_tick_s_reg[13]_0\(4),
      I3 => minusOp(4),
      O => nb_tick_s1_carry_i_6_n_0
    );
nb_tick_s1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(3),
      I1 => minusOp(3),
      I2 => \^nb_tick_s_reg[13]_0\(2),
      I3 => minusOp(2),
      O => nb_tick_s1_carry_i_7_n_0
    );
nb_tick_s1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(1),
      I1 => minusOp(1),
      I2 => \^nb_tick_s_reg[13]_0\(0),
      I3 => I22(0),
      O => nb_tick_s1_carry_i_8_n_0
    );
\nb_tick_s[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(0),
      O => \nb_tick_s[0]_i_6_n_0\
    );
\nb_tick_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => tick_s,
      D => \nb_tick_s_reg[0]_i_3_n_7\,
      Q => \^nb_tick_s_reg[13]_0\(0),
      R => pwm_cpt_inst_n_0
    );
\nb_tick_s_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \nb_tick_s_reg[0]_i_3_n_0\,
      CO(2) => \nb_tick_s_reg[0]_i_3_n_1\,
      CO(1) => \nb_tick_s_reg[0]_i_3_n_2\,
      CO(0) => \nb_tick_s_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \nb_tick_s_reg[0]_i_3_n_4\,
      O(2) => \nb_tick_s_reg[0]_i_3_n_5\,
      O(1) => \nb_tick_s_reg[0]_i_3_n_6\,
      O(0) => \nb_tick_s_reg[0]_i_3_n_7\,
      S(3 downto 1) => \^nb_tick_s_reg[13]_0\(3 downto 1),
      S(0) => \nb_tick_s[0]_i_6_n_0\
    );
\nb_tick_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => tick_s,
      D => \nb_tick_s_reg[8]_i_1_n_5\,
      Q => \^nb_tick_s_reg[13]_0\(10),
      R => pwm_cpt_inst_n_0
    );
\nb_tick_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => tick_s,
      D => \nb_tick_s_reg[8]_i_1_n_4\,
      Q => \^nb_tick_s_reg[13]_0\(11),
      R => pwm_cpt_inst_n_0
    );
\nb_tick_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => tick_s,
      D => \nb_tick_s_reg[12]_i_1_n_7\,
      Q => \^nb_tick_s_reg[13]_0\(12),
      R => pwm_cpt_inst_n_0
    );
\nb_tick_s_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nb_tick_s_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_nb_tick_s_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \nb_tick_s_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_nb_tick_s_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \nb_tick_s_reg[12]_i_1_n_6\,
      O(0) => \nb_tick_s_reg[12]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \^nb_tick_s_reg[13]_0\(13 downto 12)
    );
\nb_tick_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => tick_s,
      D => \nb_tick_s_reg[12]_i_1_n_6\,
      Q => \^nb_tick_s_reg[13]_0\(13),
      R => pwm_cpt_inst_n_0
    );
\nb_tick_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => tick_s,
      D => \nb_tick_s_reg[0]_i_3_n_6\,
      Q => \^nb_tick_s_reg[13]_0\(1),
      R => pwm_cpt_inst_n_0
    );
\nb_tick_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => tick_s,
      D => \nb_tick_s_reg[0]_i_3_n_5\,
      Q => \^nb_tick_s_reg[13]_0\(2),
      R => pwm_cpt_inst_n_0
    );
\nb_tick_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => tick_s,
      D => \nb_tick_s_reg[0]_i_3_n_4\,
      Q => \^nb_tick_s_reg[13]_0\(3),
      R => pwm_cpt_inst_n_0
    );
\nb_tick_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => tick_s,
      D => \nb_tick_s_reg[4]_i_1_n_7\,
      Q => \^nb_tick_s_reg[13]_0\(4),
      R => pwm_cpt_inst_n_0
    );
\nb_tick_s_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nb_tick_s_reg[0]_i_3_n_0\,
      CO(3) => \nb_tick_s_reg[4]_i_1_n_0\,
      CO(2) => \nb_tick_s_reg[4]_i_1_n_1\,
      CO(1) => \nb_tick_s_reg[4]_i_1_n_2\,
      CO(0) => \nb_tick_s_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \nb_tick_s_reg[4]_i_1_n_4\,
      O(2) => \nb_tick_s_reg[4]_i_1_n_5\,
      O(1) => \nb_tick_s_reg[4]_i_1_n_6\,
      O(0) => \nb_tick_s_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^nb_tick_s_reg[13]_0\(7 downto 4)
    );
\nb_tick_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => tick_s,
      D => \nb_tick_s_reg[4]_i_1_n_6\,
      Q => \^nb_tick_s_reg[13]_0\(5),
      R => pwm_cpt_inst_n_0
    );
\nb_tick_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => tick_s,
      D => \nb_tick_s_reg[4]_i_1_n_5\,
      Q => \^nb_tick_s_reg[13]_0\(6),
      R => pwm_cpt_inst_n_0
    );
\nb_tick_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => tick_s,
      D => \nb_tick_s_reg[4]_i_1_n_4\,
      Q => \^nb_tick_s_reg[13]_0\(7),
      R => pwm_cpt_inst_n_0
    );
\nb_tick_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => tick_s,
      D => \nb_tick_s_reg[8]_i_1_n_7\,
      Q => \^nb_tick_s_reg[13]_0\(8),
      R => pwm_cpt_inst_n_0
    );
\nb_tick_s_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nb_tick_s_reg[4]_i_1_n_0\,
      CO(3) => \nb_tick_s_reg[8]_i_1_n_0\,
      CO(2) => \nb_tick_s_reg[8]_i_1_n_1\,
      CO(1) => \nb_tick_s_reg[8]_i_1_n_2\,
      CO(0) => \nb_tick_s_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \nb_tick_s_reg[8]_i_1_n_4\,
      O(2) => \nb_tick_s_reg[8]_i_1_n_5\,
      O(1) => \nb_tick_s_reg[8]_i_1_n_6\,
      O(0) => \nb_tick_s_reg[8]_i_1_n_7\,
      S(3 downto 0) => \^nb_tick_s_reg[13]_0\(11 downto 8)
    );
\nb_tick_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk_i,
      CE => tick_s,
      D => \nb_tick_s_reg[8]_i_1_n_6\,
      Q => \^nb_tick_s_reg[13]_0\(9),
      R => pwm_cpt_inst_n_0
    );
pwm_cpt_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_cpt
     port map (
      CO(0) => \nb_tick_s1_carry__0_n_1\,
      \cpt_s_reg[13]_0\(13 downto 0) => \cpt_s_reg[13]\(13 downto 0),
      \out\(0) => \out\(0),
      ref_clk_i => ref_clk_i,
      ref_rst_i => ref_rst_i,
      ref_rst_i_0 => pwm_cpt_inst_n_0,
      tick_s => tick_s
    );
pwm_o1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_o1_carry_n_0,
      CO(2) => pwm_o1_carry_n_1,
      CO(1) => pwm_o1_carry_n_2,
      CO(0) => pwm_o1_carry_n_3,
      CYINIT => '0',
      DI(3) => pwm_o1_carry_i_1_n_0,
      DI(2) => pwm_o1_carry_i_2_n_0,
      DI(1) => pwm_o1_carry_i_3_n_0,
      DI(0) => pwm_o1_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm_o1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \pwm_o1_carry__0_0\(3 downto 0)
    );
\pwm_o1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_o1_carry_n_0,
      CO(3) => \NLW_pwm_o1_carry__0_CO_UNCONNECTED\(3),
      CO(2) => CO(0),
      CO(1) => \pwm_o1_carry__0_n_2\,
      CO(0) => \pwm_o1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \pwm_o1_carry__0_i_1_n_0\,
      DI(1) => \pwm_o1_carry__0_i_2_n_0\,
      DI(0) => \pwm_o1_carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_pwm_o1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2 downto 0) => pwm_o(2 downto 0)
    );
\pwm_o1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(13),
      I1 => \pwm_o1_carry__0_1\(13),
      I2 => \pwm_o1_carry__0_1\(12),
      I3 => \^nb_tick_s_reg[13]_0\(12),
      O => \pwm_o1_carry__0_i_1_n_0\
    );
\pwm_o1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(11),
      I1 => \pwm_o1_carry__0_1\(11),
      I2 => \pwm_o1_carry__0_1\(10),
      I3 => \^nb_tick_s_reg[13]_0\(10),
      O => \pwm_o1_carry__0_i_2_n_0\
    );
\pwm_o1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(9),
      I1 => \pwm_o1_carry__0_1\(9),
      I2 => \pwm_o1_carry__0_1\(8),
      I3 => \^nb_tick_s_reg[13]_0\(8),
      O => \pwm_o1_carry__0_i_3_n_0\
    );
pwm_o1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(7),
      I1 => \pwm_o1_carry__0_1\(7),
      I2 => \pwm_o1_carry__0_1\(6),
      I3 => \^nb_tick_s_reg[13]_0\(6),
      O => pwm_o1_carry_i_1_n_0
    );
pwm_o1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(5),
      I1 => \pwm_o1_carry__0_1\(5),
      I2 => \pwm_o1_carry__0_1\(4),
      I3 => \^nb_tick_s_reg[13]_0\(4),
      O => pwm_o1_carry_i_2_n_0
    );
pwm_o1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(3),
      I1 => \pwm_o1_carry__0_1\(3),
      I2 => \pwm_o1_carry__0_1\(2),
      I3 => \^nb_tick_s_reg[13]_0\(2),
      O => pwm_o1_carry_i_3_n_0
    );
pwm_o1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^nb_tick_s_reg[13]_0\(1),
      I1 => \pwm_o1_carry__0_1\(1),
      I2 => \pwm_o1_carry__0_1\(0),
      I3 => \^nb_tick_s_reg[13]_0\(0),
      O => pwm_o1_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_axi is
  port (
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
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
    s00_axi_rready : in STD_LOGIC;
    ref_rst_i : in STD_LOGIC;
    ref_clk_i : in STD_LOGIC;
    pwm_o : out STD_LOGIC
  );
  attribute COUNTER_SIZE : integer;
  attribute COUNTER_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_axi : entity is 14;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_axi : entity is 5;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_axi : entity is 32;
  attribute ID : integer;
  attribute ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_axi : entity is 0;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_axi is
  signal \<const0>\ : STD_LOGIC;
  signal addr_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal duty_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal duty_s_1 : STD_LOGIC;
  signal duty_sync_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal enable_sync_s : STD_LOGIC;
  signal handle_comm_n_14 : STD_LOGIC;
  signal handle_comm_n_15 : STD_LOGIC;
  signal invert_sync_s : STD_LOGIC;
  signal nb_tick_s_reg : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal period_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal period_s_2 : STD_LOGIC;
  signal period_sync_s : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal prescaler_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal prescaler_s_0 : STD_LOGIC;
  signal prescaler_sync_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal pwm_reg : STD_LOGIC;
  signal read_en_s : STD_LOGIC;
  signal readdata_s : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal sync_duty_n_14 : STD_LOGIC;
  signal sync_duty_n_15 : STD_LOGIC;
  signal sync_duty_n_16 : STD_LOGIC;
  signal sync_duty_n_17 : STD_LOGIC;
  signal sync_duty_n_18 : STD_LOGIC;
  signal sync_duty_n_19 : STD_LOGIC;
  signal sync_duty_n_20 : STD_LOGIC;
  signal sync_period_n_13 : STD_LOGIC;
  signal sync_period_n_14 : STD_LOGIC;
  signal sync_period_n_15 : STD_LOGIC;
  signal sync_period_n_16 : STD_LOGIC;
  signal sync_period_n_17 : STD_LOGIC;
  signal sync_period_n_18 : STD_LOGIC;
  signal sync_period_n_19 : STD_LOGIC;
  signal sync_period_n_20 : STD_LOGIC;
  signal sync_period_n_21 : STD_LOGIC;
  signal sync_period_n_22 : STD_LOGIC;
  signal sync_period_n_23 : STD_LOGIC;
  signal sync_period_n_24 : STD_LOGIC;
  signal sync_period_n_25 : STD_LOGIC;
begin
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
  s00_axi_rdata(17) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(16) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(15) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(14) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(13 downto 0) <= \^s00_axi_rdata\(13 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
handle_comm: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_handCom
     port map (
      D(2) => readdata_s(31),
      D(1 downto 0) => readdata_s(1 downto 0),
      E(0) => period_s_2,
      Q(1 downto 0) => prescaler_s(1 downto 0),
      addr_s(2 downto 0) => addr_s(2 downto 0),
      axi_arready_reg_0 => s00_axi_arready,
      axi_awready_reg_0 => s00_axi_awready,
      axi_awready_reg_1(0) => duty_s_1,
      axi_wready_reg_0 => s00_axi_wready,
      data0(1 downto 0) => data0(1 downto 0),
      read_en_s => read_en_s,
      \readdata_s_reg[1]\(1 downto 0) => period_s(1 downto 0),
      \readdata_s_reg[1]_0\(1 downto 0) => duty_s(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_awvalid_0(0) => prescaler_s_0,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_reset => s00_axi_reset,
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(1 downto 0) => s00_axi_wdata(1 downto 0),
      s00_axi_wdata_0_sp_1 => handle_comm_n_15,
      s00_axi_wdata_1_sp_1 => handle_comm_n_14,
      s00_axi_wvalid => s00_axi_wvalid
    );
pwm_comm_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_comm
     port map (
      D(2) => readdata_s(31),
      D(1 downto 0) => readdata_s(1 downto 0),
      E(0) => read_en_s,
      Q(13 downto 0) => period_s(13 downto 0),
      addr_s(2 downto 0) => addr_s(2 downto 0),
      data0(1 downto 0) => data0(1 downto 0),
      \duty_s_reg[13]_0\(13 downto 0) => duty_s(13 downto 0),
      \duty_s_reg[13]_1\(0) => duty_s_1,
      enable_s_reg_0 => handle_comm_n_15,
      invert_s_reg_0 => handle_comm_n_14,
      \period_s_reg[13]_0\(0) => period_s_2,
      \prescaler_s_reg[13]_0\(13 downto 0) => prescaler_s(13 downto 0),
      \prescaler_s_reg[13]_1\(0) => prescaler_s_0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_rdata(14) => \^s00_axi_rdata\(30),
      s00_axi_rdata(13 downto 0) => \^s00_axi_rdata\(13 downto 0),
      s00_axi_reset => s00_axi_reset,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(13 downto 0) => s00_axi_wdata(13 downto 0)
    );
pwm_log_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_logic
     port map (
      CO(0) => pwm_reg,
      I22(12 downto 0) => period_sync_s(12 downto 0),
      S(3) => sync_period_n_22,
      S(2) => sync_period_n_23,
      S(1) => sync_period_n_24,
      S(0) => sync_period_n_25,
      \cpt_s_reg[13]\(13 downto 0) => prescaler_sync_s(13 downto 0),
      \nb_tick_s1_carry__0_i_4_0\(0) => sync_period_n_13,
      \nb_tick_s1_carry__0_i_6_0\(3) => sync_period_n_14,
      \nb_tick_s1_carry__0_i_6_0\(2) => sync_period_n_15,
      \nb_tick_s1_carry__0_i_6_0\(1) => sync_period_n_16,
      \nb_tick_s1_carry__0_i_6_0\(0) => sync_period_n_17,
      nb_tick_s1_carry_i_6_0(3) => sync_period_n_18,
      nb_tick_s1_carry_i_6_0(2) => sync_period_n_19,
      nb_tick_s1_carry_i_6_0(1) => sync_period_n_20,
      nb_tick_s1_carry_i_6_0(0) => sync_period_n_21,
      \nb_tick_s_reg[13]_0\(13 downto 0) => nb_tick_s_reg(13 downto 0),
      \out\(0) => enable_sync_s,
      pwm_o(2) => sync_duty_n_18,
      pwm_o(1) => sync_duty_n_19,
      pwm_o(0) => sync_duty_n_20,
      \pwm_o1_carry__0_0\(3) => sync_duty_n_14,
      \pwm_o1_carry__0_0\(2) => sync_duty_n_15,
      \pwm_o1_carry__0_0\(1) => sync_duty_n_16,
      \pwm_o1_carry__0_0\(0) => sync_duty_n_17,
      \pwm_o1_carry__0_1\(13 downto 0) => duty_sync_s(13 downto 0),
      ref_clk_i => ref_clk_i,
      ref_rst_i => ref_rst_i
    );
sync_duty: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_vector__xdcDup__1\
     port map (
      D(13 downto 0) => duty_s(13 downto 0),
      \flipflops_vect_reg[2][13]_0\(2) => sync_duty_n_18,
      \flipflops_vect_reg[2][13]_0\(1) => sync_duty_n_19,
      \flipflops_vect_reg[2][13]_0\(0) => sync_duty_n_20,
      \flipflops_vect_reg[2][7]_0\(3) => sync_duty_n_14,
      \flipflops_vect_reg[2][7]_0\(2) => sync_duty_n_15,
      \flipflops_vect_reg[2][7]_0\(1) => sync_duty_n_16,
      \flipflops_vect_reg[2][7]_0\(0) => sync_duty_n_17,
      \out\(13 downto 0) => duty_sync_s(13 downto 0),
      \pwm_o1_carry__0\(13 downto 0) => nb_tick_s_reg(13 downto 0),
      ref_clk_i => ref_clk_i,
      s00_axi_aclk => s00_axi_aclk
    );
sync_enable: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_bit__xdcDup__1\
     port map (
      CO(0) => pwm_reg,
      data0(0) => data0(0),
      \out\(0) => enable_sync_s,
      pwm_o => pwm_o,
      pwm_o_0(0) => invert_sync_s,
      ref_clk_i => ref_clk_i,
      s00_axi_aclk => s00_axi_aclk
    );
sync_invert: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_bit
     port map (
      data0(0) => data0(1),
      \out\(0) => invert_sync_s,
      ref_clk_i => ref_clk_i,
      s00_axi_aclk => s00_axi_aclk
    );
sync_period: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_vector__xdcDup__2\
     port map (
      D(13 downto 0) => period_s(13 downto 0),
      S(3) => sync_period_n_22,
      S(2) => sync_period_n_23,
      S(1) => sync_period_n_24,
      S(0) => sync_period_n_25,
      \flipflops_vect_reg[2][12]_0\(3) => sync_period_n_14,
      \flipflops_vect_reg[2][12]_0\(2) => sync_period_n_15,
      \flipflops_vect_reg[2][12]_0\(1) => sync_period_n_16,
      \flipflops_vect_reg[2][12]_0\(0) => sync_period_n_17,
      \flipflops_vect_reg[2][13]_0\(0) => sync_period_n_13,
      \flipflops_vect_reg[2][8]_0\(3) => sync_period_n_18,
      \flipflops_vect_reg[2][8]_0\(2) => sync_period_n_19,
      \flipflops_vect_reg[2][8]_0\(1) => sync_period_n_20,
      \flipflops_vect_reg[2][8]_0\(0) => sync_period_n_21,
      \out\(12 downto 0) => period_sync_s(12 downto 0),
      ref_clk_i => ref_clk_i,
      s00_axi_aclk => s00_axi_aclk
    );
sync_prescaler: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_sync_vector
     port map (
      D(13 downto 0) => prescaler_s(13 downto 0),
      \out\(13 downto 0) => prescaler_sync_s(13 downto 0),
      ref_clk_i => ref_clk_i,
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
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
    s00_axi_rready : in STD_LOGIC;
    ref_rst_i : in STD_LOGIC;
    ref_clk_i : in STD_LOGIC;
    pwm_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "double_dds_pwm_axi_0_0,pwm_axi,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pwm_axi,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute COUNTER_SIZE : integer;
  attribute COUNTER_SIZE of U0 : label is 14;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of U0 : label is 5;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of U0 : label is 32;
  attribute id : integer;
  attribute id of U0 : label is 0;
  attribute x_interface_info : string;
  attribute x_interface_info of ref_clk_i : signal is "xilinx.com:signal:clock:1.0 ref_clk_i CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ref_clk_i : signal is "XIL_INTERFACENAME ref_clk_i, ASSOCIATED_BUSIF pwm_o, ASSOCIATED_RESET ref_rst_i, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_dds_redpitaya_converters_0_0_clk_o, INSERT_VIP 0";
  attribute x_interface_info of ref_rst_i : signal is "xilinx.com:signal:reset:1.0 ref_rst_i RST";
  attribute x_interface_parameter of ref_rst_i : signal is "XIL_INTERFACENAME ref_rst_i, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_dds_ps7_0_FCLK_CLK0, INSERT_VIP 0";
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
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_dds_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_axi
     port map (
      pwm_o => pwm_o,
      ref_clk_i => ref_clk_i,
      ref_rst_i => ref_rst_i,
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
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
