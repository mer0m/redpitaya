-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri May 15 18:33:56 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top double_iq_pid_vco_firReal_1_0 -prefix
--               double_iq_pid_vco_firReal_1_0_ double_iq_pid_vco_firReal_0_0_sim_netlist.vhdl
-- Design      : double_iq_pid_vco_firReal_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_axi is
  port (
    s00_axi_rvalid : out STD_LOGIC;
    coeff_en_s : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \coeff_val_s_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \coeff_addr_s_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_reset : in STD_LOGIC;
    read_en_s : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    coeff_en_s_reg_0 : in STD_LOGIC;
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \coeff_addr_s_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \coeff_addr_s_reg[4]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end double_iq_pid_vco_firReal_1_0_firReal_axi;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_axi is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \coeff_addr_uns_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_addr_uns_s[2]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_addr_uns_s[3]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_addr_uns_s[4]_i_2_n_0\ : STD_LOGIC;
  signal \readdata_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \readdata_s[30]_i_1_n_0\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \coeff_addr_uns_s[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \coeff_addr_uns_s[3]_i_1\ : label is "soft_lutpair0";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  s00_axi_rdata(1 downto 0) <= \^s00_axi_rdata\(1 downto 0);
\coeff_addr_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \coeff_addr_s_reg[0]_0\(0),
      D => \coeff_addr_s_reg[4]_1\(0),
      Q => \coeff_addr_s_reg[4]_0\(0),
      R => s00_axi_reset
    );
\coeff_addr_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \coeff_addr_s_reg[0]_0\(0),
      D => \coeff_addr_s_reg[4]_1\(1),
      Q => \coeff_addr_s_reg[4]_0\(1),
      R => s00_axi_reset
    );
\coeff_addr_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \coeff_addr_s_reg[0]_0\(0),
      D => \coeff_addr_s_reg[4]_1\(2),
      Q => \coeff_addr_s_reg[4]_0\(2),
      R => s00_axi_reset
    );
\coeff_addr_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \coeff_addr_s_reg[0]_0\(0),
      D => \coeff_addr_s_reg[4]_1\(3),
      Q => \coeff_addr_s_reg[4]_0\(3),
      R => s00_axi_reset
    );
\coeff_addr_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \coeff_addr_s_reg[0]_0\(0),
      D => \coeff_addr_s_reg[4]_1\(4),
      Q => \coeff_addr_s_reg[4]_0\(4),
      R => s00_axi_reset
    );
\coeff_addr_uns_s[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => addr_s(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \coeff_addr_uns_s[1]_i_1_n_0\
    );
\coeff_addr_uns_s[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => addr_s(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \coeff_addr_uns_s[2]_i_1_n_0\
    );
\coeff_addr_uns_s[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => addr_s(0),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \coeff_addr_uns_s[3]_i_1_n_0\
    );
\coeff_addr_uns_s[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => addr_s(0),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \coeff_addr_uns_s[4]_i_2_n_0\
    );
\coeff_addr_uns_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \coeff_addr_s_reg[0]_0\(0),
      D => D(0),
      Q => \^q\(0),
      R => s00_axi_reset
    );
\coeff_addr_uns_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \coeff_addr_s_reg[0]_0\(0),
      D => \coeff_addr_uns_s[1]_i_1_n_0\,
      Q => \^q\(1),
      R => s00_axi_reset
    );
\coeff_addr_uns_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \coeff_addr_s_reg[0]_0\(0),
      D => \coeff_addr_uns_s[2]_i_1_n_0\,
      Q => \^q\(2),
      R => s00_axi_reset
    );
\coeff_addr_uns_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \coeff_addr_s_reg[0]_0\(0),
      D => \coeff_addr_uns_s[3]_i_1_n_0\,
      Q => \^q\(3),
      R => s00_axi_reset
    );
\coeff_addr_uns_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \coeff_addr_s_reg[0]_0\(0),
      D => \coeff_addr_uns_s[4]_i_2_n_0\,
      Q => \^q\(4),
      R => s00_axi_reset
    );
coeff_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => coeff_en_s_reg_0,
      Q => coeff_en_s,
      R => '0'
    );
\coeff_val_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(0),
      Q => \coeff_val_s_reg[15]_0\(0),
      R => s00_axi_reset
    );
\coeff_val_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(10),
      Q => \coeff_val_s_reg[15]_0\(10),
      R => s00_axi_reset
    );
\coeff_val_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(11),
      Q => \coeff_val_s_reg[15]_0\(11),
      R => s00_axi_reset
    );
\coeff_val_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(12),
      Q => \coeff_val_s_reg[15]_0\(12),
      R => s00_axi_reset
    );
\coeff_val_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(13),
      Q => \coeff_val_s_reg[15]_0\(13),
      R => s00_axi_reset
    );
\coeff_val_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(14),
      Q => \coeff_val_s_reg[15]_0\(14),
      R => s00_axi_reset
    );
\coeff_val_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(15),
      Q => \coeff_val_s_reg[15]_0\(15),
      R => s00_axi_reset
    );
\coeff_val_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(1),
      Q => \coeff_val_s_reg[15]_0\(1),
      R => s00_axi_reset
    );
\coeff_val_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(2),
      Q => \coeff_val_s_reg[15]_0\(2),
      R => s00_axi_reset
    );
\coeff_val_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(3),
      Q => \coeff_val_s_reg[15]_0\(3),
      R => s00_axi_reset
    );
\coeff_val_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(4),
      Q => \coeff_val_s_reg[15]_0\(4),
      R => s00_axi_reset
    );
\coeff_val_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(5),
      Q => \coeff_val_s_reg[15]_0\(5),
      R => s00_axi_reset
    );
\coeff_val_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(6),
      Q => \coeff_val_s_reg[15]_0\(6),
      R => s00_axi_reset
    );
\coeff_val_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(7),
      Q => \coeff_val_s_reg[15]_0\(7),
      R => s00_axi_reset
    );
\coeff_val_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(8),
      Q => \coeff_val_s_reg[15]_0\(8),
      R => s00_axi_reset
    );
\coeff_val_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(9),
      Q => \coeff_val_s_reg[15]_0\(9),
      R => s00_axi_reset
    );
read_ack_o_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => read_en_s,
      Q => s00_axi_rvalid,
      R => s00_axi_reset
    );
\readdata_s[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"010F0100"
    )
        port map (
      I0 => addr_s(0),
      I1 => addr_s(1),
      I2 => s00_axi_reset,
      I3 => read_en_s,
      I4 => \^s00_axi_rdata\(0),
      O => \readdata_s[0]_i_1_n_0\
    );
\readdata_s[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FC00AA"
    )
        port map (
      I0 => \^s00_axi_rdata\(1),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => s00_axi_reset,
      I4 => read_en_s,
      O => \readdata_s[30]_i_1_n_0\
    );
\readdata_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \readdata_s[0]_i_1_n_0\,
      Q => \^s00_axi_rdata\(0),
      R => '0'
    );
\readdata_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \readdata_s[30]_i_1_n_0\,
      Q => \^s00_axi_rdata\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_handCom is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    addr_s : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset_0 : out STD_LOGIC;
    \coeff_addr_uns_s_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    read_en_s : out STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end double_iq_pid_vco_firReal_1_0_firReal_handCom;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_handCom is
  signal addr_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^addr_s\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_reg_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal read_addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^read_en_s\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal write_addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal write_en_s : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_reg[1]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \coeff_addr_s[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \coeff_addr_s[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \coeff_addr_s[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \coeff_addr_s[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \coeff_addr_uns_s[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \coeff_addr_uns_s[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of coeff_en_s_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of read_ack_o_i_1 : label is "soft_lutpair21";
begin
  addr_s(1 downto 0) <= \^addr_s\(1 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  read_en_s <= \^read_en_s\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
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
\addr_reg[1]_i_2\: unisim.vcomponents.LUT4
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
\coeff_addr_s[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => Q(0),
      O => \coeff_addr_uns_s_reg[4]\(0)
    );
\coeff_addr_s[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => Q(1),
      O => \coeff_addr_uns_s_reg[4]\(1)
    );
\coeff_addr_s[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => Q(2),
      O => \coeff_addr_uns_s_reg[4]\(2)
    );
\coeff_addr_s[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => Q(3),
      O => \coeff_addr_uns_s_reg[4]\(3)
    );
\coeff_addr_s[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => Q(4),
      O => \coeff_addr_uns_s_reg[4]\(4)
    );
\coeff_addr_uns_s[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => Q(0),
      O => D(0)
    );
\coeff_addr_uns_s[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => \^addr_s\(1),
      O => s00_axi_awvalid_0(0)
    );
coeff_en_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^addr_s\(1),
      I1 => \^addr_s\(0),
      I2 => write_en_s,
      I3 => s00_axi_reset,
      O => s00_axi_reset_0
    );
\coeff_val_s[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => \^addr_s\(1),
      I5 => \^addr_s\(0),
      O => E(0)
    );
read_ack_o_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => axi_rvalid_reg_n_0,
      O => \^read_en_s\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc is
  port (
    data_en_s_0 : out STD_LOGIC;
    data_en_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0 : out STD_LOGIC;
    data_en_s_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_1 : out STD_LOGIC;
    data_en_s_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_2 : out STD_LOGIC;
    data_en_s_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_3 : out STD_LOGIC;
    data_en_s_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_4 : out STD_LOGIC;
    data_en_s_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_5 : out STD_LOGIC;
    data_en_s_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_6 : out STD_LOGIC;
    data_en_s_reg_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_7 : out STD_LOGIC;
    data_en_s_reg_7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_8 : out STD_LOGIC;
    data_en_s_reg_8 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_9 : out STD_LOGIC;
    data_en_s_reg_9 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_10 : out STD_LOGIC;
    data_en_s_reg_10 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_11 : out STD_LOGIC;
    data_en_s_reg_11 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_12 : out STD_LOGIC;
    data_en_s_reg_12 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_13 : out STD_LOGIC;
    data_en_s_reg_13 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_14 : out STD_LOGIC;
    data_en_s_reg_14 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_15 : out STD_LOGIC;
    data_en_s_reg_15 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_16 : out STD_LOGIC;
    data_en_s_reg_16 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_17 : out STD_LOGIC;
    data_en_s_reg_17 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_18 : out STD_LOGIC;
    data_en_s_reg_18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_19 : out STD_LOGIC;
    data_en_s_reg_19 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_20 : out STD_LOGIC;
    data_en_s_reg_20 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_21 : out STD_LOGIC;
    data_en_s_reg_21 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_22 : out STD_LOGIC;
    data_en_s_reg_22 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s0_23 : out STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    data_in_en_s : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    end_s : in STD_LOGIC;
    ready_s : in STD_LOGIC;
    end_s_24 : in STD_LOGIC;
    ready_s_25 : in STD_LOGIC;
    end_s_26 : in STD_LOGIC;
    ready_s_27 : in STD_LOGIC;
    end_s_28 : in STD_LOGIC;
    ready_s_29 : in STD_LOGIC;
    end_s_30 : in STD_LOGIC;
    ready_s_31 : in STD_LOGIC;
    end_s_32 : in STD_LOGIC;
    ready_s_33 : in STD_LOGIC;
    end_s_34 : in STD_LOGIC;
    ready_s_35 : in STD_LOGIC;
    end_s_36 : in STD_LOGIC;
    ready_s_37 : in STD_LOGIC;
    end_s_38 : in STD_LOGIC;
    ready_s_39 : in STD_LOGIC;
    end_s_40 : in STD_LOGIC;
    ready_s_41 : in STD_LOGIC;
    end_s_42 : in STD_LOGIC;
    ready_s_43 : in STD_LOGIC;
    end_s_44 : in STD_LOGIC;
    ready_s_45 : in STD_LOGIC;
    end_s_46 : in STD_LOGIC;
    ready_s_47 : in STD_LOGIC;
    end_s_48 : in STD_LOGIC;
    ready_s_49 : in STD_LOGIC;
    end_s_50 : in STD_LOGIC;
    ready_s_51 : in STD_LOGIC;
    end_s_52 : in STD_LOGIC;
    ready_s_53 : in STD_LOGIC;
    end_s_54 : in STD_LOGIC;
    ready_s_55 : in STD_LOGIC;
    end_s_56 : in STD_LOGIC;
    ready_s_57 : in STD_LOGIC;
    end_s_58 : in STD_LOGIC;
    ready_s_59 : in STD_LOGIC;
    end_s_60 : in STD_LOGIC;
    ready_s_61 : in STD_LOGIC;
    end_s_62 : in STD_LOGIC;
    ready_s_63 : in STD_LOGIC;
    end_s_64 : in STD_LOGIC;
    ready_s_65 : in STD_LOGIC;
    end_s_66 : in STD_LOGIC;
    ready_s_67 : in STD_LOGIC;
    end_s_68 : in STD_LOGIC;
    ready_s_69 : in STD_LOGIC
  );
end double_iq_pid_vco_firReal_1_0_firReal_proc;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc is
  signal \^data_en_s_0\ : STD_LOGIC;
  signal data_out_en_s : STD_LOGIC;
  signal end_s_0 : STD_LOGIC;
  signal must_rst_s : STD_LOGIC;
  signal \must_rst_s_i_1__23_n_0\ : STD_LOGIC;
  signal ready_s_1 : STD_LOGIC;
  signal ready_s_i_1_n_0 : STD_LOGIC;
  signal res_s0_24 : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_en_o_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_en_o_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_en_o_i_1__10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_en_o_i_1__11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_en_o_i_1__12\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_en_o_i_1__13\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_en_o_i_1__14\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_en_o_i_1__15\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_en_o_i_1__16\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_en_o_i_1__17\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_en_o_i_1__18\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_en_o_i_1__19\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_en_o_i_1__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_en_o_i_1__20\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_en_o_i_1__21\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_en_o_i_1__22\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_en_o_i_1__3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_en_o_i_1__4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_en_o_i_1__5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_en_o_i_1__6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_en_o_i_1__7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_en_o_i_1__8\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_en_o_i_1__9\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \must_rst_s_i_1__23\ : label is "soft_lutpair1";
begin
  data_en_s_0 <= \^data_en_s_0\;
data_en_o_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_0,
      O => data_out_en_s
    );
\data_en_o_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s,
      O => E(0)
    );
\data_en_o_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_24,
      O => data_en_s_reg_0(0)
    );
\data_en_o_i_1__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_42,
      O => data_en_s_reg_9(0)
    );
\data_en_o_i_1__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_44,
      O => data_en_s_reg_10(0)
    );
\data_en_o_i_1__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_46,
      O => data_en_s_reg_11(0)
    );
\data_en_o_i_1__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_48,
      O => data_en_s_reg_12(0)
    );
\data_en_o_i_1__14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_50,
      O => data_en_s_reg_13(0)
    );
\data_en_o_i_1__15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_52,
      O => data_en_s_reg_14(0)
    );
\data_en_o_i_1__16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_54,
      O => data_en_s_reg_15(0)
    );
\data_en_o_i_1__17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_56,
      O => data_en_s_reg_16(0)
    );
\data_en_o_i_1__18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_58,
      O => data_en_s_reg_17(0)
    );
\data_en_o_i_1__19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_60,
      O => data_en_s_reg_18(0)
    );
\data_en_o_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_26,
      O => data_en_s_reg_1(0)
    );
\data_en_o_i_1__20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_62,
      O => data_en_s_reg_19(0)
    );
\data_en_o_i_1__21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_64,
      O => data_en_s_reg_20(0)
    );
\data_en_o_i_1__22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_66,
      O => data_en_s_reg_21(0)
    );
\data_en_o_i_1__23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_68,
      O => data_en_s_reg_22(0)
    );
\data_en_o_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_28,
      O => data_en_s_reg_2(0)
    );
\data_en_o_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_30,
      O => data_en_s_reg_3(0)
    );
\data_en_o_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_32,
      O => data_en_s_reg_4(0)
    );
\data_en_o_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_34,
      O => data_en_s_reg_5(0)
    );
\data_en_o_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_36,
      O => data_en_s_reg_6(0)
    );
\data_en_o_i_1__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_38,
      O => data_en_s_reg_7(0)
    );
\data_en_o_i_1__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => end_s_40,
      O => data_en_s_reg_8(0)
    );
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_out_en_s,
      Q => data_en_s(0),
      R => data_rst_i
    );
data_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_in_en_s,
      Q => \^data_en_s_0\,
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s_0,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_out_en_s,
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => \^data_en_s_0\,
      I2 => ready_s_1,
      I3 => must_rst_s,
      O => \must_rst_s_i_1__23_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__23_n_0\,
      Q => must_rst_s,
      R => data_rst_i
    );
ready_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => ready_s_1,
      O => ready_s_i_1_n_0
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => ready_s_i_1_n_0,
      Q => ready_s_1,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29) => DOBDO(15),
      A(28) => DOBDO(15),
      A(27) => DOBDO(15),
      A(26) => DOBDO(15),
      A(25) => DOBDO(15),
      A(24) => DOBDO(15),
      A(23) => DOBDO(15),
      A(22) => DOBDO(15),
      A(21) => DOBDO(15),
      A(20) => DOBDO(15),
      A(19) => DOBDO(15),
      A(18) => DOBDO(15),
      A(17) => DOBDO(15),
      A(16) => DOBDO(15),
      A(15 downto 0) => DOBDO(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_res_s_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0_24,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
res_s_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_1,
      O => res_s0_24
    );
\res_s_reg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s,
      O => res_s0
    );
\res_s_reg_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_25,
      O => res_s0_1
    );
\res_s_reg_i_1__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_43,
      O => res_s0_10
    );
\res_s_reg_i_1__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_45,
      O => res_s0_11
    );
\res_s_reg_i_1__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_47,
      O => res_s0_12
    );
\res_s_reg_i_1__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_49,
      O => res_s0_13
    );
\res_s_reg_i_1__14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_51,
      O => res_s0_14
    );
\res_s_reg_i_1__15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_53,
      O => res_s0_15
    );
\res_s_reg_i_1__16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_55,
      O => res_s0_16
    );
\res_s_reg_i_1__17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_57,
      O => res_s0_17
    );
\res_s_reg_i_1__18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_59,
      O => res_s0_18
    );
\res_s_reg_i_1__19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_61,
      O => res_s0_19
    );
\res_s_reg_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_27,
      O => res_s0_2
    );
\res_s_reg_i_1__20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_63,
      O => res_s0_20
    );
\res_s_reg_i_1__21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_65,
      O => res_s0_21
    );
\res_s_reg_i_1__22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_67,
      O => res_s0_22
    );
\res_s_reg_i_1__23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_69,
      O => res_s0_23
    );
\res_s_reg_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_29,
      O => res_s0_3
    );
\res_s_reg_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_31,
      O => res_s0_4
    );
\res_s_reg_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_33,
      O => res_s0_5
    );
\res_s_reg_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_35,
      O => res_s0_6
    );
\res_s_reg_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_37,
      O => res_s0_7
    );
\res_s_reg_i_1__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_39,
      O => res_s0_8
    );
\res_s_reg_i_1__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^data_en_s_0\,
      I1 => ready_s_41,
      O => res_s0_9
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_0 is
  port (
    end_s : out STD_LOGIC;
    data_en_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_0 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_0;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_0 is
  signal \must_rst_s_i_1__13_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__9_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_s(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s_0,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__13_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__13_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__9_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__9_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_1 is
  port (
    end_s : out STD_LOGIC;
    data_en_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \cpt_store_s_reg[2]\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_0\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_1\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_2\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_3\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_4\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_5\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_6\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_7\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_8\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_9\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_10\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_11\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_12\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_13\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_14\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_15\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_16\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_17\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_18\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_19\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_20\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_21\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_22\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_23\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_24\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_25\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_26\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_27\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_28\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_29\ : out STD_LOGIC;
    \cpt_store_s_reg[2]_30\ : out STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s_0 : in STD_LOGIC;
    \data_out_s_reg[31]_i_8\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \data_out_s_reg[0]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[31]_i_14_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[0]_i_6_0\ : in STD_LOGIC;
    \data_out_s_reg[31]_i_14_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[31]_i_14_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[1]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[2]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[3]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[4]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[5]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[6]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[7]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[8]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[9]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[10]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[10]_i_6_0\ : in STD_LOGIC;
    \data_out_s_reg[11]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[12]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[13]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[14]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[15]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[16]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[17]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[18]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[19]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[20]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[21]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[22]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[23]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[24]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[25]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[26]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[27]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[28]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[29]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[30]_i_2\ : in STD_LOGIC;
    \data_out_s_reg[31]_i_8_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_1 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_1;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_1 is
  signal \data_out_s[0]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[10]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[11]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[12]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[13]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[14]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[15]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[16]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[17]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[18]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[19]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[1]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[20]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[21]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[22]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[23]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[24]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[25]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[26]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[27]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[28]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[29]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[2]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[30]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[31]_i_17_n_0\ : STD_LOGIC;
  signal \data_out_s[3]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[4]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[5]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[6]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[7]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[8]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_s[9]_i_9_n_0\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[10]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[11]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[12]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[13]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[14]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[15]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[16]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[17]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[18]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[19]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[20]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[21]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[22]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[23]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[24]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[25]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[26]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[27]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[28]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[29]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[30]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[31]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[6]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[7]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[8]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[9]\ : STD_LOGIC;
  signal \must_rst_s_i_1__12_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__10_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_s(0),
      R => data_rst_i
    );
\data_out_s[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[0]\,
      I1 => \data_out_s_reg[31]_i_14_0\(0),
      I2 => \data_out_s_reg[0]_i_6_0\,
      I3 => \data_out_s_reg[31]_i_14_1\(0),
      I4 => \data_out_s_reg[31]_i_8\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(0),
      O => \data_out_s[0]_i_9_n_0\
    );
\data_out_s[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[10]\,
      I1 => \data_out_s_reg[31]_i_14_0\(10),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(10),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(10),
      O => \data_out_s[10]_i_9_n_0\
    );
\data_out_s[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[11]\,
      I1 => \data_out_s_reg[31]_i_14_0\(11),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(11),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(11),
      O => \data_out_s[11]_i_9_n_0\
    );
\data_out_s[12]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[12]\,
      I1 => \data_out_s_reg[31]_i_14_0\(12),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(12),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(12),
      O => \data_out_s[12]_i_9_n_0\
    );
\data_out_s[13]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[13]\,
      I1 => \data_out_s_reg[31]_i_14_0\(13),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(13),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(13),
      O => \data_out_s[13]_i_9_n_0\
    );
\data_out_s[14]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[14]\,
      I1 => \data_out_s_reg[31]_i_14_0\(14),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(14),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(14),
      O => \data_out_s[14]_i_9_n_0\
    );
\data_out_s[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[15]\,
      I1 => \data_out_s_reg[31]_i_14_0\(15),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(15),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(15),
      O => \data_out_s[15]_i_9_n_0\
    );
\data_out_s[16]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[16]\,
      I1 => \data_out_s_reg[31]_i_14_0\(16),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(16),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(16),
      O => \data_out_s[16]_i_9_n_0\
    );
\data_out_s[17]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[17]\,
      I1 => \data_out_s_reg[31]_i_14_0\(17),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(17),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(17),
      O => \data_out_s[17]_i_9_n_0\
    );
\data_out_s[18]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[18]\,
      I1 => \data_out_s_reg[31]_i_14_0\(18),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(18),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(18),
      O => \data_out_s[18]_i_9_n_0\
    );
\data_out_s[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[19]\,
      I1 => \data_out_s_reg[31]_i_14_0\(19),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(19),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(19),
      O => \data_out_s[19]_i_9_n_0\
    );
\data_out_s[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[1]\,
      I1 => \data_out_s_reg[31]_i_14_0\(1),
      I2 => \data_out_s_reg[0]_i_6_0\,
      I3 => \data_out_s_reg[31]_i_14_1\(1),
      I4 => \data_out_s_reg[31]_i_8\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(1),
      O => \data_out_s[1]_i_9_n_0\
    );
\data_out_s[20]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[20]\,
      I1 => \data_out_s_reg[31]_i_14_0\(20),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(20),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(20),
      O => \data_out_s[20]_i_9_n_0\
    );
\data_out_s[21]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[21]\,
      I1 => \data_out_s_reg[31]_i_14_0\(21),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(21),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(21),
      O => \data_out_s[21]_i_9_n_0\
    );
\data_out_s[22]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[22]\,
      I1 => \data_out_s_reg[31]_i_14_0\(22),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(22),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(22),
      O => \data_out_s[22]_i_9_n_0\
    );
\data_out_s[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[23]\,
      I1 => \data_out_s_reg[31]_i_14_0\(23),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(23),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(23),
      O => \data_out_s[23]_i_9_n_0\
    );
\data_out_s[24]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[24]\,
      I1 => \data_out_s_reg[31]_i_14_0\(24),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(24),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(24),
      O => \data_out_s[24]_i_9_n_0\
    );
\data_out_s[25]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[25]\,
      I1 => \data_out_s_reg[31]_i_14_0\(25),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(25),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(25),
      O => \data_out_s[25]_i_9_n_0\
    );
\data_out_s[26]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[26]\,
      I1 => \data_out_s_reg[31]_i_14_0\(26),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(26),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(26),
      O => \data_out_s[26]_i_9_n_0\
    );
\data_out_s[27]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[27]\,
      I1 => \data_out_s_reg[31]_i_14_0\(27),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(27),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(27),
      O => \data_out_s[27]_i_9_n_0\
    );
\data_out_s[28]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[28]\,
      I1 => \data_out_s_reg[31]_i_14_0\(28),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(28),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(28),
      O => \data_out_s[28]_i_9_n_0\
    );
\data_out_s[29]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[29]\,
      I1 => \data_out_s_reg[31]_i_14_0\(29),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(29),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(29),
      O => \data_out_s[29]_i_9_n_0\
    );
\data_out_s[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[2]\,
      I1 => \data_out_s_reg[31]_i_14_0\(2),
      I2 => \data_out_s_reg[0]_i_6_0\,
      I3 => \data_out_s_reg[31]_i_14_1\(2),
      I4 => \data_out_s_reg[31]_i_8\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(2),
      O => \data_out_s[2]_i_9_n_0\
    );
\data_out_s[30]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[30]\,
      I1 => \data_out_s_reg[31]_i_14_0\(30),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(30),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(30),
      O => \data_out_s[30]_i_9_n_0\
    );
\data_out_s[31]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[31]\,
      I1 => \data_out_s_reg[31]_i_14_0\(31),
      I2 => \data_out_s_reg[31]_i_8\(1),
      I3 => \data_out_s_reg[31]_i_14_1\(31),
      I4 => \data_out_s_reg[10]_i_6_0\,
      I5 => \data_out_s_reg[31]_i_14_2\(31),
      O => \data_out_s[31]_i_17_n_0\
    );
\data_out_s[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[3]\,
      I1 => \data_out_s_reg[31]_i_14_0\(3),
      I2 => \data_out_s_reg[0]_i_6_0\,
      I3 => \data_out_s_reg[31]_i_14_1\(3),
      I4 => \data_out_s_reg[31]_i_8\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(3),
      O => \data_out_s[3]_i_9_n_0\
    );
\data_out_s[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[4]\,
      I1 => \data_out_s_reg[31]_i_14_0\(4),
      I2 => \data_out_s_reg[0]_i_6_0\,
      I3 => \data_out_s_reg[31]_i_14_1\(4),
      I4 => \data_out_s_reg[31]_i_8\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(4),
      O => \data_out_s[4]_i_9_n_0\
    );
\data_out_s[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[5]\,
      I1 => \data_out_s_reg[31]_i_14_0\(5),
      I2 => \data_out_s_reg[0]_i_6_0\,
      I3 => \data_out_s_reg[31]_i_14_1\(5),
      I4 => \data_out_s_reg[31]_i_8\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(5),
      O => \data_out_s[5]_i_9_n_0\
    );
\data_out_s[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[6]\,
      I1 => \data_out_s_reg[31]_i_14_0\(6),
      I2 => \data_out_s_reg[0]_i_6_0\,
      I3 => \data_out_s_reg[31]_i_14_1\(6),
      I4 => \data_out_s_reg[31]_i_8\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(6),
      O => \data_out_s[6]_i_9_n_0\
    );
\data_out_s[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[7]\,
      I1 => \data_out_s_reg[31]_i_14_0\(7),
      I2 => \data_out_s_reg[0]_i_6_0\,
      I3 => \data_out_s_reg[31]_i_14_1\(7),
      I4 => \data_out_s_reg[31]_i_8\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(7),
      O => \data_out_s[7]_i_9_n_0\
    );
\data_out_s[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[8]\,
      I1 => \data_out_s_reg[31]_i_14_0\(8),
      I2 => \data_out_s_reg[0]_i_6_0\,
      I3 => \data_out_s_reg[31]_i_14_1\(8),
      I4 => \data_out_s_reg[31]_i_8\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(8),
      O => \data_out_s[8]_i_9_n_0\
    );
\data_out_s[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[9]\,
      I1 => \data_out_s_reg[31]_i_14_0\(9),
      I2 => \data_out_s_reg[0]_i_6_0\,
      I3 => \data_out_s_reg[31]_i_14_1\(9),
      I4 => \data_out_s_reg[31]_i_8\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(9),
      O => \data_out_s[9]_i_9_n_0\
    );
\data_out_s_reg[0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[0]_i_9_n_0\,
      I1 => \data_out_s_reg[0]_i_2\,
      O => \cpt_store_s_reg[2]\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[10]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[10]_i_9_n_0\,
      I1 => \data_out_s_reg[10]_i_2\,
      O => \cpt_store_s_reg[2]_9\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[11]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[11]_i_9_n_0\,
      I1 => \data_out_s_reg[11]_i_2\,
      O => \cpt_store_s_reg[2]_10\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[12]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[12]_i_9_n_0\,
      I1 => \data_out_s_reg[12]_i_2\,
      O => \cpt_store_s_reg[2]_11\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[13]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[13]_i_9_n_0\,
      I1 => \data_out_s_reg[13]_i_2\,
      O => \cpt_store_s_reg[2]_12\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[14]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[14]_i_9_n_0\,
      I1 => \data_out_s_reg[14]_i_2\,
      O => \cpt_store_s_reg[2]_13\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[15]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[15]_i_9_n_0\,
      I1 => \data_out_s_reg[15]_i_2\,
      O => \cpt_store_s_reg[2]_14\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[16]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[16]_i_9_n_0\,
      I1 => \data_out_s_reg[16]_i_2\,
      O => \cpt_store_s_reg[2]_15\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[17]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[17]_i_9_n_0\,
      I1 => \data_out_s_reg[17]_i_2\,
      O => \cpt_store_s_reg[2]_16\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[18]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[18]_i_9_n_0\,
      I1 => \data_out_s_reg[18]_i_2\,
      O => \cpt_store_s_reg[2]_17\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[19]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[19]_i_9_n_0\,
      I1 => \data_out_s_reg[19]_i_2\,
      O => \cpt_store_s_reg[2]_18\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[1]_i_9_n_0\,
      I1 => \data_out_s_reg[1]_i_2\,
      O => \cpt_store_s_reg[2]_0\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[20]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[20]_i_9_n_0\,
      I1 => \data_out_s_reg[20]_i_2\,
      O => \cpt_store_s_reg[2]_19\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[21]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[21]_i_9_n_0\,
      I1 => \data_out_s_reg[21]_i_2\,
      O => \cpt_store_s_reg[2]_20\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[22]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[22]_i_9_n_0\,
      I1 => \data_out_s_reg[22]_i_2\,
      O => \cpt_store_s_reg[2]_21\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[23]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[23]_i_9_n_0\,
      I1 => \data_out_s_reg[23]_i_2\,
      O => \cpt_store_s_reg[2]_22\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[24]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[24]_i_9_n_0\,
      I1 => \data_out_s_reg[24]_i_2\,
      O => \cpt_store_s_reg[2]_23\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[25]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[25]_i_9_n_0\,
      I1 => \data_out_s_reg[25]_i_2\,
      O => \cpt_store_s_reg[2]_24\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[26]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[26]_i_9_n_0\,
      I1 => \data_out_s_reg[26]_i_2\,
      O => \cpt_store_s_reg[2]_25\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[27]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[27]_i_9_n_0\,
      I1 => \data_out_s_reg[27]_i_2\,
      O => \cpt_store_s_reg[2]_26\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[28]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[28]_i_9_n_0\,
      I1 => \data_out_s_reg[28]_i_2\,
      O => \cpt_store_s_reg[2]_27\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[29]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[29]_i_9_n_0\,
      I1 => \data_out_s_reg[29]_i_2\,
      O => \cpt_store_s_reg[2]_28\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[2]_i_9_n_0\,
      I1 => \data_out_s_reg[2]_i_2\,
      O => \cpt_store_s_reg[2]_1\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[30]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[30]_i_9_n_0\,
      I1 => \data_out_s_reg[30]_i_2\,
      O => \cpt_store_s_reg[2]_29\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[31]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[31]_i_17_n_0\,
      I1 => \data_out_s_reg[31]_i_8_0\,
      O => \cpt_store_s_reg[2]_30\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[3]_i_9_n_0\,
      I1 => \data_out_s_reg[3]_i_2\,
      O => \cpt_store_s_reg[2]_2\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[4]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[4]_i_9_n_0\,
      I1 => \data_out_s_reg[4]_i_2\,
      O => \cpt_store_s_reg[2]_3\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[5]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[5]_i_9_n_0\,
      I1 => \data_out_s_reg[5]_i_2\,
      O => \cpt_store_s_reg[2]_4\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[6]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[6]_i_9_n_0\,
      I1 => \data_out_s_reg[6]_i_2\,
      O => \cpt_store_s_reg[2]_5\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[7]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[7]_i_9_n_0\,
      I1 => \data_out_s_reg[7]_i_2\,
      O => \cpt_store_s_reg[2]_6\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[8]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[8]_i_9_n_0\,
      I1 => \data_out_s_reg[8]_i_2\,
      O => \cpt_store_s_reg[2]_7\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
\data_out_s_reg[9]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[9]_i_9_n_0\,
      I1 => \data_out_s_reg[9]_i_2\,
      O => \cpt_store_s_reg[2]_8\,
      S => \data_out_s_reg[31]_i_8\(2)
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg_n_0_[0]\,
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg_n_0_[10]\,
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg_n_0_[11]\,
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg_n_0_[12]\,
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg_n_0_[13]\,
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg_n_0_[14]\,
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg_n_0_[15]\,
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg_n_0_[16]\,
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg_n_0_[17]\,
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg_n_0_[18]\,
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg_n_0_[19]\,
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg_n_0_[1]\,
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg_n_0_[20]\,
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg_n_0_[21]\,
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg_n_0_[22]\,
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg_n_0_[23]\,
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg_n_0_[24]\,
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg_n_0_[25]\,
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg_n_0_[26]\,
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg_n_0_[27]\,
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg_n_0_[28]\,
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg_n_0_[29]\,
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg_n_0_[2]\,
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg_n_0_[30]\,
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg_n_0_[31]\,
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg_n_0_[3]\,
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg_n_0_[4]\,
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg_n_0_[5]\,
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg_n_0_[6]\,
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg_n_0_[7]\,
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg_n_0_[8]\,
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg_n_0_[9]\,
      R => data_rst_i
    );
\must_rst_s_i_1__12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s_0,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__12_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__12_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__10_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__10_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_10 is
  port (
    end_s : out STD_LOGIC;
    data_en_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_10 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_10;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_10 is
  signal \must_rst_s_i_1__22_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__0_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_s(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s_0,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__22_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__22_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__0_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__0_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29) => DOBDO(15),
      A(28) => DOBDO(15),
      A(27) => DOBDO(15),
      A(26) => DOBDO(15),
      A(25) => DOBDO(15),
      A(24) => DOBDO(15),
      A(23) => DOBDO(15),
      A(22) => DOBDO(15),
      A(21) => DOBDO(15),
      A(20) => DOBDO(15),
      A(19) => DOBDO(15),
      A(18) => DOBDO(15),
      A(17) => DOBDO(15),
      A(16) => DOBDO(15),
      A(15 downto 0) => DOBDO(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => data_in_en_s,
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_11 is
  port (
    end_s : out STD_LOGIC;
    data_en_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_11 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_11;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_11 is
  signal \must_rst_s_i_1__3_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__19_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_s(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s_0,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__3_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__3_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__19_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__19_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_12 is
  port (
    end_s : out STD_LOGIC;
    data_en_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_12 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_12;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_12 is
  signal \must_rst_s_i_1__2_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__20_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_s(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s_0,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__2_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__2_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__20_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__20_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_13 is
  port (
    end_s : out STD_LOGIC;
    data_en_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_13 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_13;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_13 is
  signal \must_rst_s_i_1__1_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__21_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_s(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s_0,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__1_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__1_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__21_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__21_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_14 is
  port (
    end_s : out STD_LOGIC;
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    data_en_o_reg_0 : out STD_LOGIC;
    \final_res_s_reg[0]_0\ : out STD_LOGIC;
    \final_res_s_reg[1]_0\ : out STD_LOGIC;
    \final_res_s_reg[2]_0\ : out STD_LOGIC;
    \final_res_s_reg[3]_0\ : out STD_LOGIC;
    \final_res_s_reg[4]_0\ : out STD_LOGIC;
    \final_res_s_reg[5]_0\ : out STD_LOGIC;
    \final_res_s_reg[6]_0\ : out STD_LOGIC;
    \final_res_s_reg[7]_0\ : out STD_LOGIC;
    \final_res_s_reg[8]_0\ : out STD_LOGIC;
    \final_res_s_reg[9]_0\ : out STD_LOGIC;
    \final_res_s_reg[10]_0\ : out STD_LOGIC;
    \final_res_s_reg[11]_0\ : out STD_LOGIC;
    \final_res_s_reg[12]_0\ : out STD_LOGIC;
    \final_res_s_reg[13]_0\ : out STD_LOGIC;
    \final_res_s_reg[14]_0\ : out STD_LOGIC;
    \final_res_s_reg[15]_0\ : out STD_LOGIC;
    \final_res_s_reg[16]_0\ : out STD_LOGIC;
    \final_res_s_reg[17]_0\ : out STD_LOGIC;
    \final_res_s_reg[18]_0\ : out STD_LOGIC;
    \final_res_s_reg[19]_0\ : out STD_LOGIC;
    \final_res_s_reg[20]_0\ : out STD_LOGIC;
    \final_res_s_reg[21]_0\ : out STD_LOGIC;
    \final_res_s_reg[22]_0\ : out STD_LOGIC;
    \final_res_s_reg[23]_0\ : out STD_LOGIC;
    \final_res_s_reg[24]_0\ : out STD_LOGIC;
    \final_res_s_reg[25]_0\ : out STD_LOGIC;
    \final_res_s_reg[26]_0\ : out STD_LOGIC;
    \final_res_s_reg[27]_0\ : out STD_LOGIC;
    \final_res_s_reg[28]_0\ : out STD_LOGIC;
    \final_res_s_reg[29]_0\ : out STD_LOGIC;
    \final_res_s_reg[30]_0\ : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    \cpt_store_s_reg[0]_rep\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s : in STD_LOGIC;
    \data_out_s_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[9]\ : in STD_LOGIC;
    \data_out_s_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[10]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_out_s_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[31]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_14 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_14;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_14 is
  signal \data_en_s__0\ : STD_LOGIC_VECTOR ( 23 to 23 );
  signal \final_res_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[10]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[11]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[12]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[13]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[14]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[15]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[16]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[17]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[18]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[19]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[20]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[21]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[22]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[23]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[24]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[25]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[26]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[27]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[28]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[29]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[30]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[31]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[6]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[7]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[8]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[9]\ : STD_LOGIC;
  signal \must_rst_s_i_1__0_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__22_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => \data_en_s__0\(23),
      R => data_rst_i
    );
\data_out_s[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[0]\,
      I1 => \data_out_s_reg[31]\(0),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(0),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(0),
      O => \final_res_s_reg[0]_0\
    );
\data_out_s[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[10]\,
      I1 => \data_out_s_reg[31]\(10),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(10),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(10),
      O => \final_res_s_reg[10]_0\
    );
\data_out_s[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[11]\,
      I1 => \data_out_s_reg[31]\(11),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(11),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(11),
      O => \final_res_s_reg[11]_0\
    );
\data_out_s[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[12]\,
      I1 => \data_out_s_reg[31]\(12),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(12),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(12),
      O => \final_res_s_reg[12]_0\
    );
\data_out_s[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[13]\,
      I1 => \data_out_s_reg[31]\(13),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(13),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(13),
      O => \final_res_s_reg[13]_0\
    );
\data_out_s[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[14]\,
      I1 => \data_out_s_reg[31]\(14),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(14),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(14),
      O => \final_res_s_reg[14]_0\
    );
\data_out_s[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[15]\,
      I1 => \data_out_s_reg[31]\(15),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(15),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(15),
      O => \final_res_s_reg[15]_0\
    );
\data_out_s[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[16]\,
      I1 => \data_out_s_reg[31]\(16),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(16),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(16),
      O => \final_res_s_reg[16]_0\
    );
\data_out_s[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[17]\,
      I1 => \data_out_s_reg[31]\(17),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(17),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(17),
      O => \final_res_s_reg[17]_0\
    );
\data_out_s[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[18]\,
      I1 => \data_out_s_reg[31]\(18),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(18),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(18),
      O => \final_res_s_reg[18]_0\
    );
\data_out_s[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[19]\,
      I1 => \data_out_s_reg[31]\(19),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(19),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(19),
      O => \final_res_s_reg[19]_0\
    );
\data_out_s[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[1]\,
      I1 => \data_out_s_reg[31]\(1),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(1),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(1),
      O => \final_res_s_reg[1]_0\
    );
\data_out_s[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[20]\,
      I1 => \data_out_s_reg[31]\(20),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(20),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(20),
      O => \final_res_s_reg[20]_0\
    );
\data_out_s[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[21]\,
      I1 => \data_out_s_reg[31]\(21),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(21),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(21),
      O => \final_res_s_reg[21]_0\
    );
\data_out_s[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[22]\,
      I1 => \data_out_s_reg[31]\(22),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(22),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(22),
      O => \final_res_s_reg[22]_0\
    );
\data_out_s[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[23]\,
      I1 => \data_out_s_reg[31]\(23),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(23),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(23),
      O => \final_res_s_reg[23]_0\
    );
\data_out_s[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[24]\,
      I1 => \data_out_s_reg[31]\(24),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(24),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(24),
      O => \final_res_s_reg[24]_0\
    );
\data_out_s[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[25]\,
      I1 => \data_out_s_reg[31]\(25),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(25),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(25),
      O => \final_res_s_reg[25]_0\
    );
\data_out_s[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[26]\,
      I1 => \data_out_s_reg[31]\(26),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(26),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(26),
      O => \final_res_s_reg[26]_0\
    );
\data_out_s[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[27]\,
      I1 => \data_out_s_reg[31]\(27),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(27),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(27),
      O => \final_res_s_reg[27]_0\
    );
\data_out_s[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[28]\,
      I1 => \data_out_s_reg[31]\(28),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(28),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(28),
      O => \final_res_s_reg[28]_0\
    );
\data_out_s[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[29]\,
      I1 => \data_out_s_reg[31]\(29),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(29),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(29),
      O => \final_res_s_reg[29]_0\
    );
\data_out_s[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[2]\,
      I1 => \data_out_s_reg[31]\(2),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(2),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(2),
      O => \final_res_s_reg[2]_0\
    );
\data_out_s[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[30]\,
      I1 => \data_out_s_reg[31]\(30),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(30),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(30),
      O => \final_res_s_reg[30]_0\
    );
\data_out_s[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[31]\,
      I1 => \data_out_s_reg[31]\(31),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(31),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(31),
      O => \final_res_s_reg[31]_0\
    );
\data_out_s[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \data_en_s__0\(23),
      I1 => \cpt_store_s_reg[0]_rep\(3),
      I2 => \cpt_store_s_reg[0]_rep\(4),
      I3 => \cpt_store_s_reg[0]_rep\(0),
      I4 => \cpt_store_s_reg[0]_rep\(1),
      I5 => \cpt_store_s_reg[0]_rep\(2),
      O => data_en_o_reg_0
    );
\data_out_s[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[3]\,
      I1 => \data_out_s_reg[31]\(3),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(3),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(3),
      O => \final_res_s_reg[3]_0\
    );
\data_out_s[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[4]\,
      I1 => \data_out_s_reg[31]\(4),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(4),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(4),
      O => \final_res_s_reg[4]_0\
    );
\data_out_s[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[5]\,
      I1 => \data_out_s_reg[31]\(5),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(5),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(5),
      O => \final_res_s_reg[5]_0\
    );
\data_out_s[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[6]\,
      I1 => \data_out_s_reg[31]\(6),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(6),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(6),
      O => \final_res_s_reg[6]_0\
    );
\data_out_s[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[7]\,
      I1 => \data_out_s_reg[31]\(7),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(7),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(7),
      O => \final_res_s_reg[7]_0\
    );
\data_out_s[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[8]\,
      I1 => \data_out_s_reg[31]\(8),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(8),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(8),
      O => \final_res_s_reg[8]_0\
    );
\data_out_s[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[9]\,
      I1 => \data_out_s_reg[31]\(9),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(9),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(9),
      O => \final_res_s_reg[9]_0\
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg_n_0_[0]\,
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg_n_0_[10]\,
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg_n_0_[11]\,
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg_n_0_[12]\,
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg_n_0_[13]\,
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg_n_0_[14]\,
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg_n_0_[15]\,
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg_n_0_[16]\,
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg_n_0_[17]\,
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg_n_0_[18]\,
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg_n_0_[19]\,
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg_n_0_[1]\,
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg_n_0_[20]\,
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg_n_0_[21]\,
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg_n_0_[22]\,
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg_n_0_[23]\,
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg_n_0_[24]\,
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg_n_0_[25]\,
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg_n_0_[26]\,
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg_n_0_[27]\,
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg_n_0_[28]\,
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg_n_0_[29]\,
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg_n_0_[2]\,
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg_n_0_[30]\,
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg_n_0_[31]\,
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg_n_0_[3]\,
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg_n_0_[4]\,
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg_n_0_[5]\,
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg_n_0_[6]\,
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg_n_0_[7]\,
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg_n_0_[8]\,
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg_n_0_[9]\,
      R => data_rst_i
    );
\must_rst_s_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__0_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__0_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__22_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__22_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_15 is
  port (
    end_s : out STD_LOGIC;
    data_en_o_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    ACOUT : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_15 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_15;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_15 is
  signal must_rst_s_i_1_n_0 : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__23_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_o_reg_0(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
must_rst_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => must_rst_s_i_1_n_0
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => must_rst_s_i_1_n_0,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__23_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__23_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => ACOUT(29 downto 0),
      ACOUT(29 downto 0) => NLW_res_s_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_16 is
  port (
    end_s : out STD_LOGIC;
    data_en_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_16 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_16;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_16 is
  signal \must_rst_s_i_1__21_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__1_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_s(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s_0,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__21_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__21_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__1_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__1_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => data_in_en_s,
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_17 is
  port (
    end_s : out STD_LOGIC;
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_next : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    \cpt_store_s_reg[0]_rep\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s : in STD_LOGIC;
    \cpt_store_s_reg[0]_rep_0\ : in STD_LOGIC;
    \cpt_store_s_reg[0]_rep_1\ : in STD_LOGIC;
    \cpt_store_s_reg[0]_rep_2\ : in STD_LOGIC;
    \cpt_store_s_reg[0]_rep_3\ : in STD_LOGIC;
    \cpt_store_s_reg[0]_rep_4\ : in STD_LOGIC;
    \data_out_s_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[0]\ : in STD_LOGIC;
    \data_out_s_reg[0]_0\ : in STD_LOGIC;
    \data_out_s_reg[0]_1\ : in STD_LOGIC;
    \data_out_s_reg[0]_2\ : in STD_LOGIC;
    \data_out_s_reg[0]_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_out_s_reg[0]_4\ : in STD_LOGIC;
    \data_out_s_reg[0]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[31]_i_13_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[0]_i_5_0\ : in STD_LOGIC;
    \data_out_s_reg[31]_i_13_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[31]_i_13_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[31]_0\ : in STD_LOGIC;
    \data_out_s_reg[31]_1\ : in STD_LOGIC;
    \data_out_s_reg[30]\ : in STD_LOGIC;
    \data_out_s_reg[30]_0\ : in STD_LOGIC;
    \data_out_s_reg[29]\ : in STD_LOGIC;
    \data_out_s_reg[29]_0\ : in STD_LOGIC;
    \data_out_s_reg[28]\ : in STD_LOGIC;
    \data_out_s_reg[28]_0\ : in STD_LOGIC;
    \data_out_s_reg[27]\ : in STD_LOGIC;
    \data_out_s_reg[27]_0\ : in STD_LOGIC;
    \data_out_s_reg[26]\ : in STD_LOGIC;
    \data_out_s_reg[26]_0\ : in STD_LOGIC;
    \data_out_s_reg[25]\ : in STD_LOGIC;
    \data_out_s_reg[25]_0\ : in STD_LOGIC;
    \data_out_s_reg[24]\ : in STD_LOGIC;
    \data_out_s_reg[24]_0\ : in STD_LOGIC;
    \data_out_s_reg[23]\ : in STD_LOGIC;
    \data_out_s_reg[23]_0\ : in STD_LOGIC;
    \data_out_s_reg[22]\ : in STD_LOGIC;
    \data_out_s_reg[22]_0\ : in STD_LOGIC;
    \data_out_s_reg[21]\ : in STD_LOGIC;
    \data_out_s_reg[21]_0\ : in STD_LOGIC;
    \data_out_s_reg[20]\ : in STD_LOGIC;
    \data_out_s_reg[20]_0\ : in STD_LOGIC;
    \data_out_s_reg[19]\ : in STD_LOGIC;
    \data_out_s_reg[19]_0\ : in STD_LOGIC;
    \data_out_s_reg[18]\ : in STD_LOGIC;
    \data_out_s_reg[18]_0\ : in STD_LOGIC;
    \data_out_s_reg[17]\ : in STD_LOGIC;
    \data_out_s_reg[17]_0\ : in STD_LOGIC;
    \data_out_s_reg[16]\ : in STD_LOGIC;
    \data_out_s_reg[16]_0\ : in STD_LOGIC;
    \data_out_s_reg[15]\ : in STD_LOGIC;
    \data_out_s_reg[15]_0\ : in STD_LOGIC;
    \data_out_s_reg[14]\ : in STD_LOGIC;
    \data_out_s_reg[14]_0\ : in STD_LOGIC;
    \data_out_s_reg[13]\ : in STD_LOGIC;
    \data_out_s_reg[13]_0\ : in STD_LOGIC;
    \data_out_s_reg[12]\ : in STD_LOGIC;
    \data_out_s_reg[12]_0\ : in STD_LOGIC;
    \data_out_s_reg[11]\ : in STD_LOGIC;
    \data_out_s_reg[11]_0\ : in STD_LOGIC;
    \data_out_s_reg[10]\ : in STD_LOGIC;
    \data_out_s_reg[10]_0\ : in STD_LOGIC;
    \data_out_s_reg[9]\ : in STD_LOGIC;
    \data_out_s_reg[9]_0\ : in STD_LOGIC;
    \data_out_s_reg[8]\ : in STD_LOGIC;
    \data_out_s_reg[8]_0\ : in STD_LOGIC;
    \data_out_s_reg[7]\ : in STD_LOGIC;
    \data_out_s_reg[7]_0\ : in STD_LOGIC;
    \data_out_s_reg[6]\ : in STD_LOGIC;
    \data_out_s_reg[6]_0\ : in STD_LOGIC;
    \data_out_s_reg[5]\ : in STD_LOGIC;
    \data_out_s_reg[5]_0\ : in STD_LOGIC;
    \data_out_s_reg[4]\ : in STD_LOGIC;
    \data_out_s_reg[4]_0\ : in STD_LOGIC;
    \data_out_s_reg[3]\ : in STD_LOGIC;
    \data_out_s_reg[3]_0\ : in STD_LOGIC;
    \data_out_s_reg[2]\ : in STD_LOGIC;
    \data_out_s_reg[2]_0\ : in STD_LOGIC;
    \data_out_s_reg[1]\ : in STD_LOGIC;
    \data_out_s_reg[1]_0\ : in STD_LOGIC;
    \data_out_s_reg[1]_1\ : in STD_LOGIC;
    \data_out_s_reg[1]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[2]_1\ : in STD_LOGIC;
    \data_out_s_reg[2]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[3]_1\ : in STD_LOGIC;
    \data_out_s_reg[3]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[4]_1\ : in STD_LOGIC;
    \data_out_s_reg[4]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[5]_1\ : in STD_LOGIC;
    \data_out_s_reg[5]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[6]_1\ : in STD_LOGIC;
    \data_out_s_reg[6]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[7]_1\ : in STD_LOGIC;
    \data_out_s_reg[7]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[8]_1\ : in STD_LOGIC;
    \data_out_s_reg[8]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[9]_1\ : in STD_LOGIC;
    \data_out_s_reg[9]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[10]_1\ : in STD_LOGIC;
    \data_out_s_reg[10]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[10]_i_5_0\ : in STD_LOGIC;
    \data_out_s_reg[11]_1\ : in STD_LOGIC;
    \data_out_s_reg[11]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[12]_1\ : in STD_LOGIC;
    \data_out_s_reg[12]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[13]_1\ : in STD_LOGIC;
    \data_out_s_reg[13]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[14]_1\ : in STD_LOGIC;
    \data_out_s_reg[14]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[15]_1\ : in STD_LOGIC;
    \data_out_s_reg[15]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[16]_1\ : in STD_LOGIC;
    \data_out_s_reg[16]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[17]_1\ : in STD_LOGIC;
    \data_out_s_reg[17]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[18]_1\ : in STD_LOGIC;
    \data_out_s_reg[18]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[19]_1\ : in STD_LOGIC;
    \data_out_s_reg[19]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[20]_1\ : in STD_LOGIC;
    \data_out_s_reg[20]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[21]_1\ : in STD_LOGIC;
    \data_out_s_reg[21]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[22]_1\ : in STD_LOGIC;
    \data_out_s_reg[22]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[23]_1\ : in STD_LOGIC;
    \data_out_s_reg[23]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[24]_1\ : in STD_LOGIC;
    \data_out_s_reg[24]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[25]_1\ : in STD_LOGIC;
    \data_out_s_reg[25]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[26]_1\ : in STD_LOGIC;
    \data_out_s_reg[26]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[27]_1\ : in STD_LOGIC;
    \data_out_s_reg[27]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[28]_1\ : in STD_LOGIC;
    \data_out_s_reg[28]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[29]_1\ : in STD_LOGIC;
    \data_out_s_reg[29]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[30]_1\ : in STD_LOGIC;
    \data_out_s_reg[30]_i_2_0\ : in STD_LOGIC;
    \data_out_s_reg[31]_2\ : in STD_LOGIC;
    \data_out_s_reg[31]_i_8_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_17 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_17;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_17 is
  signal \^data_en_next\ : STD_LOGIC;
  signal \data_en_s__0\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \data_out_s[0]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[10]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[11]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[12]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[13]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[14]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[15]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[16]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[17]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[18]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[19]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[1]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[20]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[21]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[22]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[23]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[24]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[25]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[26]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[27]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[28]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[29]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[2]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[30]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[31]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_s[31]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_s[3]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[4]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[5]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[6]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[7]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[8]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s[9]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[10]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[12]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[13]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[14]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[16]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[17]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[18]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[19]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[20]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[21]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[22]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[24]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[25]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[26]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[27]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[28]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[29]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[30]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[31]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_s_reg[9]_i_5_n_0\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[10]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[11]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[12]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[13]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[14]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[15]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[16]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[17]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[18]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[19]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[20]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[21]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[22]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[23]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[24]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[25]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[26]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[27]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[28]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[29]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[30]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[31]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[6]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[7]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[8]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[9]\ : STD_LOGIC;
  signal \must_rst_s_i_1__20_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__2_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  data_en_next <= \^data_en_next\;
  ready_s <= \^ready_s\;
\cpt_store_s[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \cpt_store_s_reg[0]_rep_0\,
      I1 => \^data_en_next\,
      I2 => data_rst_i,
      O => SR(0)
    );
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => \data_en_s__0\(3),
      R => data_rst_i
    );
\data_out_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[0]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(0),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[0]_0\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[0]_2\,
      O => D(0)
    );
\data_out_s[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[0]\,
      I1 => \data_out_s_reg[31]_i_13_0\(0),
      I2 => \data_out_s_reg[0]_i_5_0\,
      I3 => \data_out_s_reg[31]_i_13_1\(0),
      I4 => \data_out_s_reg[0]_3\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(0),
      O => \data_out_s[0]_i_7_n_0\
    );
\data_out_s[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[10]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(10),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[10]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[10]_0\,
      O => D(10)
    );
\data_out_s[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[10]\,
      I1 => \data_out_s_reg[31]_i_13_0\(10),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(10),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(10),
      O => \data_out_s[10]_i_7_n_0\
    );
\data_out_s[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[11]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(11),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[11]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[11]_0\,
      O => D(11)
    );
\data_out_s[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[11]\,
      I1 => \data_out_s_reg[31]_i_13_0\(11),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(11),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(11),
      O => \data_out_s[11]_i_7_n_0\
    );
\data_out_s[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[12]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(12),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[12]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[12]_0\,
      O => D(12)
    );
\data_out_s[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[12]\,
      I1 => \data_out_s_reg[31]_i_13_0\(12),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(12),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(12),
      O => \data_out_s[12]_i_7_n_0\
    );
\data_out_s[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[13]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(13),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[13]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[13]_0\,
      O => D(13)
    );
\data_out_s[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[13]\,
      I1 => \data_out_s_reg[31]_i_13_0\(13),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(13),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(13),
      O => \data_out_s[13]_i_7_n_0\
    );
\data_out_s[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[14]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(14),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[14]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[14]_0\,
      O => D(14)
    );
\data_out_s[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[14]\,
      I1 => \data_out_s_reg[31]_i_13_0\(14),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(14),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(14),
      O => \data_out_s[14]_i_7_n_0\
    );
\data_out_s[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[15]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(15),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[15]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[15]_0\,
      O => D(15)
    );
\data_out_s[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[15]\,
      I1 => \data_out_s_reg[31]_i_13_0\(15),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(15),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(15),
      O => \data_out_s[15]_i_7_n_0\
    );
\data_out_s[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[16]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(16),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[16]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[16]_0\,
      O => D(16)
    );
\data_out_s[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[16]\,
      I1 => \data_out_s_reg[31]_i_13_0\(16),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(16),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(16),
      O => \data_out_s[16]_i_7_n_0\
    );
\data_out_s[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[17]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(17),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[17]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[17]_0\,
      O => D(17)
    );
\data_out_s[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[17]\,
      I1 => \data_out_s_reg[31]_i_13_0\(17),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(17),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(17),
      O => \data_out_s[17]_i_7_n_0\
    );
\data_out_s[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[18]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(18),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[18]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[18]_0\,
      O => D(18)
    );
\data_out_s[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[18]\,
      I1 => \data_out_s_reg[31]_i_13_0\(18),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(18),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(18),
      O => \data_out_s[18]_i_7_n_0\
    );
\data_out_s[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[19]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(19),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[19]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[19]_0\,
      O => D(19)
    );
\data_out_s[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[19]\,
      I1 => \data_out_s_reg[31]_i_13_0\(19),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(19),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(19),
      O => \data_out_s[19]_i_7_n_0\
    );
\data_out_s[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[1]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(1),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[1]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[1]_0\,
      O => D(1)
    );
\data_out_s[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[1]\,
      I1 => \data_out_s_reg[31]_i_13_0\(1),
      I2 => \data_out_s_reg[0]_i_5_0\,
      I3 => \data_out_s_reg[31]_i_13_1\(1),
      I4 => \data_out_s_reg[0]_3\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(1),
      O => \data_out_s[1]_i_7_n_0\
    );
\data_out_s[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[20]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(20),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[20]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[20]_0\,
      O => D(20)
    );
\data_out_s[20]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[20]\,
      I1 => \data_out_s_reg[31]_i_13_0\(20),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(20),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(20),
      O => \data_out_s[20]_i_7_n_0\
    );
\data_out_s[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[21]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(21),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[21]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[21]_0\,
      O => D(21)
    );
\data_out_s[21]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[21]\,
      I1 => \data_out_s_reg[31]_i_13_0\(21),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(21),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(21),
      O => \data_out_s[21]_i_7_n_0\
    );
\data_out_s[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[22]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(22),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[22]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[22]_0\,
      O => D(22)
    );
\data_out_s[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[22]\,
      I1 => \data_out_s_reg[31]_i_13_0\(22),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(22),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(22),
      O => \data_out_s[22]_i_7_n_0\
    );
\data_out_s[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[23]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(23),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[23]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[23]_0\,
      O => D(23)
    );
\data_out_s[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[23]\,
      I1 => \data_out_s_reg[31]_i_13_0\(23),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(23),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(23),
      O => \data_out_s[23]_i_7_n_0\
    );
\data_out_s[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[24]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(24),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[24]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[24]_0\,
      O => D(24)
    );
\data_out_s[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[24]\,
      I1 => \data_out_s_reg[31]_i_13_0\(24),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(24),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(24),
      O => \data_out_s[24]_i_7_n_0\
    );
\data_out_s[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[25]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(25),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[25]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[25]_0\,
      O => D(25)
    );
\data_out_s[25]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[25]\,
      I1 => \data_out_s_reg[31]_i_13_0\(25),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(25),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(25),
      O => \data_out_s[25]_i_7_n_0\
    );
\data_out_s[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[26]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(26),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[26]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[26]_0\,
      O => D(26)
    );
\data_out_s[26]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[26]\,
      I1 => \data_out_s_reg[31]_i_13_0\(26),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(26),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(26),
      O => \data_out_s[26]_i_7_n_0\
    );
\data_out_s[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[27]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(27),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[27]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[27]_0\,
      O => D(27)
    );
\data_out_s[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[27]\,
      I1 => \data_out_s_reg[31]_i_13_0\(27),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(27),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(27),
      O => \data_out_s[27]_i_7_n_0\
    );
\data_out_s[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[28]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(28),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[28]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[28]_0\,
      O => D(28)
    );
\data_out_s[28]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[28]\,
      I1 => \data_out_s_reg[31]_i_13_0\(28),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(28),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(28),
      O => \data_out_s[28]_i_7_n_0\
    );
\data_out_s[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[29]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(29),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[29]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[29]_0\,
      O => D(29)
    );
\data_out_s[29]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[29]\,
      I1 => \data_out_s_reg[31]_i_13_0\(29),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(29),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(29),
      O => \data_out_s[29]_i_7_n_0\
    );
\data_out_s[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[2]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(2),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[2]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[2]_0\,
      O => D(2)
    );
\data_out_s[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[2]\,
      I1 => \data_out_s_reg[31]_i_13_0\(2),
      I2 => \data_out_s_reg[0]_i_5_0\,
      I3 => \data_out_s_reg[31]_i_13_1\(2),
      I4 => \data_out_s_reg[0]_3\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(2),
      O => \data_out_s[2]_i_7_n_0\
    );
\data_out_s[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[30]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(30),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[30]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[30]_0\,
      O => D(30)
    );
\data_out_s[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[30]\,
      I1 => \data_out_s_reg[31]_i_13_0\(30),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(30),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(30),
      O => \data_out_s[30]_i_7_n_0\
    );
\data_out_s[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => \data_out_s[31]_i_3_n_0\,
      I1 => \cpt_store_s_reg[0]_rep_1\,
      I2 => \cpt_store_s_reg[0]_rep_2\,
      I3 => \cpt_store_s_reg[0]_rep_3\,
      I4 => \cpt_store_s_reg[0]_rep_4\,
      O => \^data_en_next\
    );
\data_out_s[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[31]\,
      I1 => \data_out_s_reg[31]_i_13_0\(31),
      I2 => \data_out_s_reg[0]_3\(1),
      I3 => \data_out_s_reg[31]_i_13_1\(31),
      I4 => \data_out_s_reg[10]_i_5_0\,
      I5 => \data_out_s_reg[31]_i_13_2\(31),
      O => \data_out_s[31]_i_15_n_0\
    );
\data_out_s[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[31]_i_8_n_0\,
      I1 => \data_out_s_reg[31]\(31),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[31]_0\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[31]_1\,
      O => D(31)
    );
\data_out_s[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \data_en_s__0\(3),
      I1 => \cpt_store_s_reg[0]_rep\(2),
      I2 => \cpt_store_s_reg[0]_rep\(1),
      I3 => \cpt_store_s_reg[0]_rep\(0),
      O => \data_out_s[31]_i_3_n_0\
    );
\data_out_s[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[3]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(3),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[3]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[3]_0\,
      O => D(3)
    );
\data_out_s[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[3]\,
      I1 => \data_out_s_reg[31]_i_13_0\(3),
      I2 => \data_out_s_reg[0]_i_5_0\,
      I3 => \data_out_s_reg[31]_i_13_1\(3),
      I4 => \data_out_s_reg[0]_3\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(3),
      O => \data_out_s[3]_i_7_n_0\
    );
\data_out_s[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[4]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(4),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[4]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[4]_0\,
      O => D(4)
    );
\data_out_s[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[4]\,
      I1 => \data_out_s_reg[31]_i_13_0\(4),
      I2 => \data_out_s_reg[0]_i_5_0\,
      I3 => \data_out_s_reg[31]_i_13_1\(4),
      I4 => \data_out_s_reg[0]_3\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(4),
      O => \data_out_s[4]_i_7_n_0\
    );
\data_out_s[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[5]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(5),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[5]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[5]_0\,
      O => D(5)
    );
\data_out_s[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[5]\,
      I1 => \data_out_s_reg[31]_i_13_0\(5),
      I2 => \data_out_s_reg[0]_i_5_0\,
      I3 => \data_out_s_reg[31]_i_13_1\(5),
      I4 => \data_out_s_reg[0]_3\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(5),
      O => \data_out_s[5]_i_7_n_0\
    );
\data_out_s[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[6]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(6),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[6]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[6]_0\,
      O => D(6)
    );
\data_out_s[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[6]\,
      I1 => \data_out_s_reg[31]_i_13_0\(6),
      I2 => \data_out_s_reg[0]_i_5_0\,
      I3 => \data_out_s_reg[31]_i_13_1\(6),
      I4 => \data_out_s_reg[0]_3\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(6),
      O => \data_out_s[6]_i_7_n_0\
    );
\data_out_s[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[7]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(7),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[7]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[7]_0\,
      O => D(7)
    );
\data_out_s[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[7]\,
      I1 => \data_out_s_reg[31]_i_13_0\(7),
      I2 => \data_out_s_reg[0]_i_5_0\,
      I3 => \data_out_s_reg[31]_i_13_1\(7),
      I4 => \data_out_s_reg[0]_3\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(7),
      O => \data_out_s[7]_i_7_n_0\
    );
\data_out_s[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[8]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(8),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[8]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[8]_0\,
      O => D(8)
    );
\data_out_s[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[8]\,
      I1 => \data_out_s_reg[31]_i_13_0\(8),
      I2 => \data_out_s_reg[0]_i_5_0\,
      I3 => \data_out_s_reg[31]_i_13_1\(8),
      I4 => \data_out_s_reg[0]_3\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(8),
      O => \data_out_s[8]_i_7_n_0\
    );
\data_out_s[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_s_reg[9]_i_2_n_0\,
      I1 => \data_out_s_reg[31]\(9),
      I2 => \data_out_s_reg[0]\,
      I3 => \data_out_s_reg[9]\,
      I4 => \data_out_s_reg[0]_1\,
      I5 => \data_out_s_reg[9]_0\,
      O => D(9)
    );
\data_out_s[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[9]\,
      I1 => \data_out_s_reg[31]_i_13_0\(9),
      I2 => \data_out_s_reg[0]_i_5_0\,
      I3 => \data_out_s_reg[31]_i_13_1\(9),
      I4 => \data_out_s_reg[0]_3\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(9),
      O => \data_out_s[9]_i_7_n_0\
    );
\data_out_s_reg[0]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[0]_i_5_n_0\,
      I1 => \data_out_s_reg[0]_4\,
      O => \data_out_s_reg[0]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[0]_i_7_n_0\,
      I1 => \data_out_s_reg[0]_i_2_0\,
      O => \data_out_s_reg[0]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[10]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[10]_i_5_n_0\,
      I1 => \data_out_s_reg[10]_1\,
      O => \data_out_s_reg[10]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[10]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[10]_i_7_n_0\,
      I1 => \data_out_s_reg[10]_i_2_0\,
      O => \data_out_s_reg[10]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[11]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[11]_i_5_n_0\,
      I1 => \data_out_s_reg[11]_1\,
      O => \data_out_s_reg[11]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[11]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[11]_i_7_n_0\,
      I1 => \data_out_s_reg[11]_i_2_0\,
      O => \data_out_s_reg[11]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[12]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[12]_i_5_n_0\,
      I1 => \data_out_s_reg[12]_1\,
      O => \data_out_s_reg[12]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[12]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[12]_i_7_n_0\,
      I1 => \data_out_s_reg[12]_i_2_0\,
      O => \data_out_s_reg[12]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[13]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[13]_i_5_n_0\,
      I1 => \data_out_s_reg[13]_1\,
      O => \data_out_s_reg[13]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[13]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[13]_i_7_n_0\,
      I1 => \data_out_s_reg[13]_i_2_0\,
      O => \data_out_s_reg[13]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[14]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[14]_i_5_n_0\,
      I1 => \data_out_s_reg[14]_1\,
      O => \data_out_s_reg[14]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[14]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[14]_i_7_n_0\,
      I1 => \data_out_s_reg[14]_i_2_0\,
      O => \data_out_s_reg[14]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[15]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[15]_i_5_n_0\,
      I1 => \data_out_s_reg[15]_1\,
      O => \data_out_s_reg[15]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[15]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[15]_i_7_n_0\,
      I1 => \data_out_s_reg[15]_i_2_0\,
      O => \data_out_s_reg[15]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[16]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[16]_i_5_n_0\,
      I1 => \data_out_s_reg[16]_1\,
      O => \data_out_s_reg[16]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[16]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[16]_i_7_n_0\,
      I1 => \data_out_s_reg[16]_i_2_0\,
      O => \data_out_s_reg[16]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[17]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[17]_i_5_n_0\,
      I1 => \data_out_s_reg[17]_1\,
      O => \data_out_s_reg[17]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[17]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[17]_i_7_n_0\,
      I1 => \data_out_s_reg[17]_i_2_0\,
      O => \data_out_s_reg[17]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[18]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[18]_i_5_n_0\,
      I1 => \data_out_s_reg[18]_1\,
      O => \data_out_s_reg[18]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[18]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[18]_i_7_n_0\,
      I1 => \data_out_s_reg[18]_i_2_0\,
      O => \data_out_s_reg[18]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[19]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[19]_i_5_n_0\,
      I1 => \data_out_s_reg[19]_1\,
      O => \data_out_s_reg[19]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[19]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[19]_i_7_n_0\,
      I1 => \data_out_s_reg[19]_i_2_0\,
      O => \data_out_s_reg[19]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[1]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[1]_i_5_n_0\,
      I1 => \data_out_s_reg[1]_1\,
      O => \data_out_s_reg[1]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[1]_i_7_n_0\,
      I1 => \data_out_s_reg[1]_i_2_0\,
      O => \data_out_s_reg[1]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[20]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[20]_i_5_n_0\,
      I1 => \data_out_s_reg[20]_1\,
      O => \data_out_s_reg[20]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[20]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[20]_i_7_n_0\,
      I1 => \data_out_s_reg[20]_i_2_0\,
      O => \data_out_s_reg[20]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[21]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[21]_i_5_n_0\,
      I1 => \data_out_s_reg[21]_1\,
      O => \data_out_s_reg[21]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[21]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[21]_i_7_n_0\,
      I1 => \data_out_s_reg[21]_i_2_0\,
      O => \data_out_s_reg[21]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[22]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[22]_i_5_n_0\,
      I1 => \data_out_s_reg[22]_1\,
      O => \data_out_s_reg[22]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[22]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[22]_i_7_n_0\,
      I1 => \data_out_s_reg[22]_i_2_0\,
      O => \data_out_s_reg[22]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[23]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[23]_i_5_n_0\,
      I1 => \data_out_s_reg[23]_1\,
      O => \data_out_s_reg[23]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[23]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[23]_i_7_n_0\,
      I1 => \data_out_s_reg[23]_i_2_0\,
      O => \data_out_s_reg[23]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[24]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[24]_i_5_n_0\,
      I1 => \data_out_s_reg[24]_1\,
      O => \data_out_s_reg[24]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[24]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[24]_i_7_n_0\,
      I1 => \data_out_s_reg[24]_i_2_0\,
      O => \data_out_s_reg[24]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[25]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[25]_i_5_n_0\,
      I1 => \data_out_s_reg[25]_1\,
      O => \data_out_s_reg[25]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[25]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[25]_i_7_n_0\,
      I1 => \data_out_s_reg[25]_i_2_0\,
      O => \data_out_s_reg[25]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[26]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[26]_i_5_n_0\,
      I1 => \data_out_s_reg[26]_1\,
      O => \data_out_s_reg[26]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[26]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[26]_i_7_n_0\,
      I1 => \data_out_s_reg[26]_i_2_0\,
      O => \data_out_s_reg[26]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[27]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[27]_i_5_n_0\,
      I1 => \data_out_s_reg[27]_1\,
      O => \data_out_s_reg[27]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[27]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[27]_i_7_n_0\,
      I1 => \data_out_s_reg[27]_i_2_0\,
      O => \data_out_s_reg[27]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[28]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[28]_i_5_n_0\,
      I1 => \data_out_s_reg[28]_1\,
      O => \data_out_s_reg[28]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[28]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[28]_i_7_n_0\,
      I1 => \data_out_s_reg[28]_i_2_0\,
      O => \data_out_s_reg[28]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[29]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[29]_i_5_n_0\,
      I1 => \data_out_s_reg[29]_1\,
      O => \data_out_s_reg[29]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[29]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[29]_i_7_n_0\,
      I1 => \data_out_s_reg[29]_i_2_0\,
      O => \data_out_s_reg[29]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[2]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[2]_i_5_n_0\,
      I1 => \data_out_s_reg[2]_1\,
      O => \data_out_s_reg[2]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[2]_i_7_n_0\,
      I1 => \data_out_s_reg[2]_i_2_0\,
      O => \data_out_s_reg[2]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[30]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[30]_i_5_n_0\,
      I1 => \data_out_s_reg[30]_1\,
      O => \data_out_s_reg[30]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[30]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[30]_i_7_n_0\,
      I1 => \data_out_s_reg[30]_i_2_0\,
      O => \data_out_s_reg[30]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[31]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[31]_i_15_n_0\,
      I1 => \data_out_s_reg[31]_i_8_0\,
      O => \data_out_s_reg[31]_i_13_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[31]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[31]_i_13_n_0\,
      I1 => \data_out_s_reg[31]_2\,
      O => \data_out_s_reg[31]_i_8_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[3]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[3]_i_5_n_0\,
      I1 => \data_out_s_reg[3]_1\,
      O => \data_out_s_reg[3]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[3]_i_7_n_0\,
      I1 => \data_out_s_reg[3]_i_2_0\,
      O => \data_out_s_reg[3]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[4]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[4]_i_5_n_0\,
      I1 => \data_out_s_reg[4]_1\,
      O => \data_out_s_reg[4]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[4]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[4]_i_7_n_0\,
      I1 => \data_out_s_reg[4]_i_2_0\,
      O => \data_out_s_reg[4]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[5]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[5]_i_5_n_0\,
      I1 => \data_out_s_reg[5]_1\,
      O => \data_out_s_reg[5]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[5]_i_7_n_0\,
      I1 => \data_out_s_reg[5]_i_2_0\,
      O => \data_out_s_reg[5]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[6]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[6]_i_5_n_0\,
      I1 => \data_out_s_reg[6]_1\,
      O => \data_out_s_reg[6]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[6]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[6]_i_7_n_0\,
      I1 => \data_out_s_reg[6]_i_2_0\,
      O => \data_out_s_reg[6]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[7]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[7]_i_5_n_0\,
      I1 => \data_out_s_reg[7]_1\,
      O => \data_out_s_reg[7]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[7]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[7]_i_7_n_0\,
      I1 => \data_out_s_reg[7]_i_2_0\,
      O => \data_out_s_reg[7]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[8]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[8]_i_5_n_0\,
      I1 => \data_out_s_reg[8]_1\,
      O => \data_out_s_reg[8]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[8]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[8]_i_7_n_0\,
      I1 => \data_out_s_reg[8]_i_2_0\,
      O => \data_out_s_reg[8]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
\data_out_s_reg[9]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_s_reg[9]_i_5_n_0\,
      I1 => \data_out_s_reg[9]_1\,
      O => \data_out_s_reg[9]_i_2_n_0\,
      S => \data_out_s_reg[0]_3\(3)
    );
\data_out_s_reg[9]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_s[9]_i_7_n_0\,
      I1 => \data_out_s_reg[9]_i_2_0\,
      O => \data_out_s_reg[9]_i_5_n_0\,
      S => \data_out_s_reg[0]_3\(2)
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg_n_0_[0]\,
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg_n_0_[10]\,
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg_n_0_[11]\,
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg_n_0_[12]\,
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg_n_0_[13]\,
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg_n_0_[14]\,
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg_n_0_[15]\,
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg_n_0_[16]\,
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg_n_0_[17]\,
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg_n_0_[18]\,
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg_n_0_[19]\,
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg_n_0_[1]\,
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg_n_0_[20]\,
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg_n_0_[21]\,
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg_n_0_[22]\,
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg_n_0_[23]\,
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg_n_0_[24]\,
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg_n_0_[25]\,
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg_n_0_[26]\,
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg_n_0_[27]\,
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg_n_0_[28]\,
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg_n_0_[29]\,
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg_n_0_[2]\,
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg_n_0_[30]\,
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg_n_0_[31]\,
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg_n_0_[3]\,
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg_n_0_[4]\,
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg_n_0_[5]\,
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg_n_0_[6]\,
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg_n_0_[7]\,
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg_n_0_[8]\,
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg_n_0_[9]\,
      R => data_rst_i
    );
\must_rst_s_i_1__20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__20_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__20_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__2_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__2_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_18 is
  port (
    end_s : out STD_LOGIC;
    data_en_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_18 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_18;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_18 is
  signal \must_rst_s_i_1__19_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__3_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_s(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s_0,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__19_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__19_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__3_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__3_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_19 is
  port (
    end_s : out STD_LOGIC;
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    data_en_o_reg_0 : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    \cpt_store_s_reg[0]_rep\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_19 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_19;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_19 is
  signal \data_en_s__0\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \must_rst_s_i_1__18_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__4_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => \data_en_s__0\(5),
      R => data_rst_i
    );
\data_out_s[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \data_en_s__0\(5),
      I1 => \cpt_store_s_reg[0]_rep\(0),
      I2 => \cpt_store_s_reg[0]_rep\(1),
      O => data_en_o_reg_0
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__18_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__18_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__4_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__4_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_2 is
  port (
    end_s : out STD_LOGIC;
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    data_en_o_reg_0 : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    \cpt_store_s_reg[0]_rep\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_2 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_2;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_2 is
  signal \data_en_s__0\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \must_rst_s_i_1__11_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__11_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => \data_en_s__0\(12),
      R => data_rst_i
    );
\data_out_s[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \data_en_s__0\(12),
      I1 => \cpt_store_s_reg[0]_rep\(3),
      I2 => \cpt_store_s_reg[0]_rep\(4),
      I3 => \cpt_store_s_reg[0]_rep\(0),
      I4 => \cpt_store_s_reg[0]_rep\(1),
      I5 => \cpt_store_s_reg[0]_rep\(2),
      O => data_en_o_reg_0
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__11_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__11_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__11_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__11_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_20 is
  port (
    end_s : out STD_LOGIC;
    data_en_o_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_20 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_20;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_20 is
  signal \must_rst_s_i_1__17_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__5_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_o_reg_0(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__17_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__17_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__5_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__5_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_21 is
  port (
    end_s : out STD_LOGIC;
    data_en_o_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[0]_0\ : out STD_LOGIC;
    \final_res_s_reg[1]_0\ : out STD_LOGIC;
    \final_res_s_reg[2]_0\ : out STD_LOGIC;
    \final_res_s_reg[3]_0\ : out STD_LOGIC;
    \final_res_s_reg[4]_0\ : out STD_LOGIC;
    \final_res_s_reg[5]_0\ : out STD_LOGIC;
    \final_res_s_reg[6]_0\ : out STD_LOGIC;
    \final_res_s_reg[7]_0\ : out STD_LOGIC;
    \final_res_s_reg[8]_0\ : out STD_LOGIC;
    \final_res_s_reg[9]_0\ : out STD_LOGIC;
    \final_res_s_reg[10]_0\ : out STD_LOGIC;
    \final_res_s_reg[11]_0\ : out STD_LOGIC;
    \final_res_s_reg[12]_0\ : out STD_LOGIC;
    \final_res_s_reg[13]_0\ : out STD_LOGIC;
    \final_res_s_reg[14]_0\ : out STD_LOGIC;
    \final_res_s_reg[15]_0\ : out STD_LOGIC;
    \final_res_s_reg[16]_0\ : out STD_LOGIC;
    \final_res_s_reg[17]_0\ : out STD_LOGIC;
    \final_res_s_reg[18]_0\ : out STD_LOGIC;
    \final_res_s_reg[19]_0\ : out STD_LOGIC;
    \final_res_s_reg[20]_0\ : out STD_LOGIC;
    \final_res_s_reg[21]_0\ : out STD_LOGIC;
    \final_res_s_reg[22]_0\ : out STD_LOGIC;
    \final_res_s_reg[23]_0\ : out STD_LOGIC;
    \final_res_s_reg[24]_0\ : out STD_LOGIC;
    \final_res_s_reg[25]_0\ : out STD_LOGIC;
    \final_res_s_reg[26]_0\ : out STD_LOGIC;
    \final_res_s_reg[27]_0\ : out STD_LOGIC;
    \final_res_s_reg[28]_0\ : out STD_LOGIC;
    \final_res_s_reg[29]_0\ : out STD_LOGIC;
    \final_res_s_reg[30]_0\ : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s : in STD_LOGIC;
    \data_out_s_reg[31]_i_13\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[0]_i_5\ : in STD_LOGIC;
    \data_out_s_reg[31]_i_13_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[31]_i_13_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_out_s_reg[31]_i_13_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[10]_i_5\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_21 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_21;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_21 is
  signal \final_res_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[10]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[11]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[12]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[13]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[14]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[15]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[16]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[17]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[18]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[19]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[20]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[21]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[22]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[23]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[24]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[25]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[26]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[27]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[28]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[29]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[30]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[31]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[6]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[7]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[8]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[9]\ : STD_LOGIC;
  signal \must_rst_s_i_1__16_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__6_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_o_reg_0(0),
      R => data_rst_i
    );
\data_out_s[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[0]\,
      I1 => \data_out_s_reg[31]_i_13\(0),
      I2 => \data_out_s_reg[0]_i_5\,
      I3 => \data_out_s_reg[31]_i_13_0\(0),
      I4 => \data_out_s_reg[31]_i_13_1\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(0),
      O => \final_res_s_reg[0]_0\
    );
\data_out_s[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[10]\,
      I1 => \data_out_s_reg[31]_i_13\(10),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(10),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(10),
      O => \final_res_s_reg[10]_0\
    );
\data_out_s[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[11]\,
      I1 => \data_out_s_reg[31]_i_13\(11),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(11),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(11),
      O => \final_res_s_reg[11]_0\
    );
\data_out_s[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[12]\,
      I1 => \data_out_s_reg[31]_i_13\(12),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(12),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(12),
      O => \final_res_s_reg[12]_0\
    );
\data_out_s[13]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[13]\,
      I1 => \data_out_s_reg[31]_i_13\(13),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(13),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(13),
      O => \final_res_s_reg[13]_0\
    );
\data_out_s[14]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[14]\,
      I1 => \data_out_s_reg[31]_i_13\(14),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(14),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(14),
      O => \final_res_s_reg[14]_0\
    );
\data_out_s[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[15]\,
      I1 => \data_out_s_reg[31]_i_13\(15),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(15),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(15),
      O => \final_res_s_reg[15]_0\
    );
\data_out_s[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[16]\,
      I1 => \data_out_s_reg[31]_i_13\(16),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(16),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(16),
      O => \final_res_s_reg[16]_0\
    );
\data_out_s[17]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[17]\,
      I1 => \data_out_s_reg[31]_i_13\(17),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(17),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(17),
      O => \final_res_s_reg[17]_0\
    );
\data_out_s[18]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[18]\,
      I1 => \data_out_s_reg[31]_i_13\(18),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(18),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(18),
      O => \final_res_s_reg[18]_0\
    );
\data_out_s[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[19]\,
      I1 => \data_out_s_reg[31]_i_13\(19),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(19),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(19),
      O => \final_res_s_reg[19]_0\
    );
\data_out_s[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[1]\,
      I1 => \data_out_s_reg[31]_i_13\(1),
      I2 => \data_out_s_reg[0]_i_5\,
      I3 => \data_out_s_reg[31]_i_13_0\(1),
      I4 => \data_out_s_reg[31]_i_13_1\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(1),
      O => \final_res_s_reg[1]_0\
    );
\data_out_s[20]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[20]\,
      I1 => \data_out_s_reg[31]_i_13\(20),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(20),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(20),
      O => \final_res_s_reg[20]_0\
    );
\data_out_s[21]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[21]\,
      I1 => \data_out_s_reg[31]_i_13\(21),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(21),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(21),
      O => \final_res_s_reg[21]_0\
    );
\data_out_s[22]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[22]\,
      I1 => \data_out_s_reg[31]_i_13\(22),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(22),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(22),
      O => \final_res_s_reg[22]_0\
    );
\data_out_s[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[23]\,
      I1 => \data_out_s_reg[31]_i_13\(23),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(23),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(23),
      O => \final_res_s_reg[23]_0\
    );
\data_out_s[24]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[24]\,
      I1 => \data_out_s_reg[31]_i_13\(24),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(24),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(24),
      O => \final_res_s_reg[24]_0\
    );
\data_out_s[25]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[25]\,
      I1 => \data_out_s_reg[31]_i_13\(25),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(25),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(25),
      O => \final_res_s_reg[25]_0\
    );
\data_out_s[26]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[26]\,
      I1 => \data_out_s_reg[31]_i_13\(26),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(26),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(26),
      O => \final_res_s_reg[26]_0\
    );
\data_out_s[27]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[27]\,
      I1 => \data_out_s_reg[31]_i_13\(27),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(27),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(27),
      O => \final_res_s_reg[27]_0\
    );
\data_out_s[28]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[28]\,
      I1 => \data_out_s_reg[31]_i_13\(28),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(28),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(28),
      O => \final_res_s_reg[28]_0\
    );
\data_out_s[29]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[29]\,
      I1 => \data_out_s_reg[31]_i_13\(29),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(29),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(29),
      O => \final_res_s_reg[29]_0\
    );
\data_out_s[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[2]\,
      I1 => \data_out_s_reg[31]_i_13\(2),
      I2 => \data_out_s_reg[0]_i_5\,
      I3 => \data_out_s_reg[31]_i_13_0\(2),
      I4 => \data_out_s_reg[31]_i_13_1\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(2),
      O => \final_res_s_reg[2]_0\
    );
\data_out_s[30]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[30]\,
      I1 => \data_out_s_reg[31]_i_13\(30),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(30),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(30),
      O => \final_res_s_reg[30]_0\
    );
\data_out_s[31]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[31]\,
      I1 => \data_out_s_reg[31]_i_13\(31),
      I2 => \data_out_s_reg[31]_i_13_1\(1),
      I3 => \data_out_s_reg[31]_i_13_0\(31),
      I4 => \data_out_s_reg[10]_i_5\,
      I5 => \data_out_s_reg[31]_i_13_2\(31),
      O => \final_res_s_reg[31]_0\
    );
\data_out_s[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[3]\,
      I1 => \data_out_s_reg[31]_i_13\(3),
      I2 => \data_out_s_reg[0]_i_5\,
      I3 => \data_out_s_reg[31]_i_13_0\(3),
      I4 => \data_out_s_reg[31]_i_13_1\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(3),
      O => \final_res_s_reg[3]_0\
    );
\data_out_s[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[4]\,
      I1 => \data_out_s_reg[31]_i_13\(4),
      I2 => \data_out_s_reg[0]_i_5\,
      I3 => \data_out_s_reg[31]_i_13_0\(4),
      I4 => \data_out_s_reg[31]_i_13_1\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(4),
      O => \final_res_s_reg[4]_0\
    );
\data_out_s[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[5]\,
      I1 => \data_out_s_reg[31]_i_13\(5),
      I2 => \data_out_s_reg[0]_i_5\,
      I3 => \data_out_s_reg[31]_i_13_0\(5),
      I4 => \data_out_s_reg[31]_i_13_1\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(5),
      O => \final_res_s_reg[5]_0\
    );
\data_out_s[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[6]\,
      I1 => \data_out_s_reg[31]_i_13\(6),
      I2 => \data_out_s_reg[0]_i_5\,
      I3 => \data_out_s_reg[31]_i_13_0\(6),
      I4 => \data_out_s_reg[31]_i_13_1\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(6),
      O => \final_res_s_reg[6]_0\
    );
\data_out_s[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[7]\,
      I1 => \data_out_s_reg[31]_i_13\(7),
      I2 => \data_out_s_reg[0]_i_5\,
      I3 => \data_out_s_reg[31]_i_13_0\(7),
      I4 => \data_out_s_reg[31]_i_13_1\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(7),
      O => \final_res_s_reg[7]_0\
    );
\data_out_s[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[8]\,
      I1 => \data_out_s_reg[31]_i_13\(8),
      I2 => \data_out_s_reg[0]_i_5\,
      I3 => \data_out_s_reg[31]_i_13_0\(8),
      I4 => \data_out_s_reg[31]_i_13_1\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(8),
      O => \final_res_s_reg[8]_0\
    );
\data_out_s[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[9]\,
      I1 => \data_out_s_reg[31]_i_13\(9),
      I2 => \data_out_s_reg[0]_i_5\,
      I3 => \data_out_s_reg[31]_i_13_0\(9),
      I4 => \data_out_s_reg[31]_i_13_1\(0),
      I5 => \data_out_s_reg[31]_i_13_2\(9),
      O => \final_res_s_reg[9]_0\
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg_n_0_[0]\,
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg_n_0_[10]\,
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg_n_0_[11]\,
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg_n_0_[12]\,
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg_n_0_[13]\,
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg_n_0_[14]\,
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg_n_0_[15]\,
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg_n_0_[16]\,
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg_n_0_[17]\,
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg_n_0_[18]\,
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg_n_0_[19]\,
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg_n_0_[1]\,
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg_n_0_[20]\,
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg_n_0_[21]\,
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg_n_0_[22]\,
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg_n_0_[23]\,
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg_n_0_[24]\,
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg_n_0_[25]\,
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg_n_0_[26]\,
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg_n_0_[27]\,
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg_n_0_[28]\,
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg_n_0_[29]\,
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg_n_0_[2]\,
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg_n_0_[30]\,
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg_n_0_[31]\,
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg_n_0_[3]\,
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg_n_0_[4]\,
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg_n_0_[5]\,
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg_n_0_[6]\,
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg_n_0_[7]\,
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg_n_0_[8]\,
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg_n_0_[9]\,
      R => data_rst_i
    );
\must_rst_s_i_1__16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__16_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__16_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__6_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__6_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_22 is
  port (
    end_s : out STD_LOGIC;
    data_en_o_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_22 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_22;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_22 is
  signal \must_rst_s_i_1__15_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__7_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_o_reg_0(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__15_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__15_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__7_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__7_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_23 is
  port (
    end_s : out STD_LOGIC;
    data_en_o_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    res_s_reg_0 : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    ACOUT : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_23 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_23;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_23 is
  signal \must_rst_s_i_1__14_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__8_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_o_reg_0(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__14_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__14_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__8_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__8_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => ACOUT(29 downto 0),
      ACOUT(29 downto 0) => res_s_reg_0(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_3 is
  port (
    end_s : out STD_LOGIC;
    data_en_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_3 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_3;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_3 is
  signal \must_rst_s_i_1__10_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__12_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_s(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s_0,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__10_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__10_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__12_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__12_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_4 is
  port (
    end_s : out STD_LOGIC;
    data_en_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_4 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_4;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_4 is
  signal \must_rst_s_i_1__9_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__13_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_s(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s_0,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__9_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__9_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__13_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__13_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_5 is
  port (
    end_s : out STD_LOGIC;
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    data_en_o_reg_0 : out STD_LOGIC;
    \final_res_s_reg[0]_0\ : out STD_LOGIC;
    \final_res_s_reg[1]_0\ : out STD_LOGIC;
    \final_res_s_reg[2]_0\ : out STD_LOGIC;
    \final_res_s_reg[3]_0\ : out STD_LOGIC;
    \final_res_s_reg[4]_0\ : out STD_LOGIC;
    \final_res_s_reg[5]_0\ : out STD_LOGIC;
    \final_res_s_reg[6]_0\ : out STD_LOGIC;
    \final_res_s_reg[7]_0\ : out STD_LOGIC;
    \final_res_s_reg[8]_0\ : out STD_LOGIC;
    \final_res_s_reg[9]_0\ : out STD_LOGIC;
    \final_res_s_reg[10]_0\ : out STD_LOGIC;
    \final_res_s_reg[11]_0\ : out STD_LOGIC;
    \final_res_s_reg[12]_0\ : out STD_LOGIC;
    \final_res_s_reg[13]_0\ : out STD_LOGIC;
    \final_res_s_reg[14]_0\ : out STD_LOGIC;
    \final_res_s_reg[15]_0\ : out STD_LOGIC;
    \final_res_s_reg[16]_0\ : out STD_LOGIC;
    \final_res_s_reg[17]_0\ : out STD_LOGIC;
    \final_res_s_reg[18]_0\ : out STD_LOGIC;
    \final_res_s_reg[19]_0\ : out STD_LOGIC;
    \final_res_s_reg[20]_0\ : out STD_LOGIC;
    \final_res_s_reg[21]_0\ : out STD_LOGIC;
    \final_res_s_reg[22]_0\ : out STD_LOGIC;
    \final_res_s_reg[23]_0\ : out STD_LOGIC;
    \final_res_s_reg[24]_0\ : out STD_LOGIC;
    \final_res_s_reg[25]_0\ : out STD_LOGIC;
    \final_res_s_reg[26]_0\ : out STD_LOGIC;
    \final_res_s_reg[27]_0\ : out STD_LOGIC;
    \final_res_s_reg[28]_0\ : out STD_LOGIC;
    \final_res_s_reg[29]_0\ : out STD_LOGIC;
    \final_res_s_reg[30]_0\ : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    \cpt_store_s_reg[0]_rep\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s : in STD_LOGIC;
    \data_out_s_reg[31]_i_14\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[0]_i_6\ : in STD_LOGIC;
    \data_out_s_reg[31]_i_14_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[31]_i_14_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_out_s_reg[31]_i_14_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[10]_i_6\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_5 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_5;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_5 is
  signal \data_en_s__0\ : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \final_res_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[10]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[11]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[12]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[13]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[14]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[15]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[16]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[17]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[18]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[19]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[20]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[21]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[22]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[23]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[24]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[25]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[26]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[27]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[28]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[29]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[30]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[31]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[6]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[7]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[8]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[9]\ : STD_LOGIC;
  signal \must_rst_s_i_1__8_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__14_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => \data_en_s__0\(15),
      R => data_rst_i
    );
\data_out_s[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[0]\,
      I1 => \data_out_s_reg[31]_i_14\(0),
      I2 => \data_out_s_reg[0]_i_6\,
      I3 => \data_out_s_reg[31]_i_14_0\(0),
      I4 => \data_out_s_reg[31]_i_14_1\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(0),
      O => \final_res_s_reg[0]_0\
    );
\data_out_s[10]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[10]\,
      I1 => \data_out_s_reg[31]_i_14\(10),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(10),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(10),
      O => \final_res_s_reg[10]_0\
    );
\data_out_s[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[11]\,
      I1 => \data_out_s_reg[31]_i_14\(11),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(11),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(11),
      O => \final_res_s_reg[11]_0\
    );
\data_out_s[12]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[12]\,
      I1 => \data_out_s_reg[31]_i_14\(12),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(12),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(12),
      O => \final_res_s_reg[12]_0\
    );
\data_out_s[13]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[13]\,
      I1 => \data_out_s_reg[31]_i_14\(13),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(13),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(13),
      O => \final_res_s_reg[13]_0\
    );
\data_out_s[14]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[14]\,
      I1 => \data_out_s_reg[31]_i_14\(14),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(14),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(14),
      O => \final_res_s_reg[14]_0\
    );
\data_out_s[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[15]\,
      I1 => \data_out_s_reg[31]_i_14\(15),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(15),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(15),
      O => \final_res_s_reg[15]_0\
    );
\data_out_s[16]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[16]\,
      I1 => \data_out_s_reg[31]_i_14\(16),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(16),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(16),
      O => \final_res_s_reg[16]_0\
    );
\data_out_s[17]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[17]\,
      I1 => \data_out_s_reg[31]_i_14\(17),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(17),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(17),
      O => \final_res_s_reg[17]_0\
    );
\data_out_s[18]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[18]\,
      I1 => \data_out_s_reg[31]_i_14\(18),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(18),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(18),
      O => \final_res_s_reg[18]_0\
    );
\data_out_s[19]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[19]\,
      I1 => \data_out_s_reg[31]_i_14\(19),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(19),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(19),
      O => \final_res_s_reg[19]_0\
    );
\data_out_s[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[1]\,
      I1 => \data_out_s_reg[31]_i_14\(1),
      I2 => \data_out_s_reg[0]_i_6\,
      I3 => \data_out_s_reg[31]_i_14_0\(1),
      I4 => \data_out_s_reg[31]_i_14_1\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(1),
      O => \final_res_s_reg[1]_0\
    );
\data_out_s[20]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[20]\,
      I1 => \data_out_s_reg[31]_i_14\(20),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(20),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(20),
      O => \final_res_s_reg[20]_0\
    );
\data_out_s[21]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[21]\,
      I1 => \data_out_s_reg[31]_i_14\(21),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(21),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(21),
      O => \final_res_s_reg[21]_0\
    );
\data_out_s[22]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[22]\,
      I1 => \data_out_s_reg[31]_i_14\(22),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(22),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(22),
      O => \final_res_s_reg[22]_0\
    );
\data_out_s[23]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[23]\,
      I1 => \data_out_s_reg[31]_i_14\(23),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(23),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(23),
      O => \final_res_s_reg[23]_0\
    );
\data_out_s[24]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[24]\,
      I1 => \data_out_s_reg[31]_i_14\(24),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(24),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(24),
      O => \final_res_s_reg[24]_0\
    );
\data_out_s[25]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[25]\,
      I1 => \data_out_s_reg[31]_i_14\(25),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(25),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(25),
      O => \final_res_s_reg[25]_0\
    );
\data_out_s[26]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[26]\,
      I1 => \data_out_s_reg[31]_i_14\(26),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(26),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(26),
      O => \final_res_s_reg[26]_0\
    );
\data_out_s[27]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[27]\,
      I1 => \data_out_s_reg[31]_i_14\(27),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(27),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(27),
      O => \final_res_s_reg[27]_0\
    );
\data_out_s[28]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[28]\,
      I1 => \data_out_s_reg[31]_i_14\(28),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(28),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(28),
      O => \final_res_s_reg[28]_0\
    );
\data_out_s[29]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[29]\,
      I1 => \data_out_s_reg[31]_i_14\(29),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(29),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(29),
      O => \final_res_s_reg[29]_0\
    );
\data_out_s[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[2]\,
      I1 => \data_out_s_reg[31]_i_14\(2),
      I2 => \data_out_s_reg[0]_i_6\,
      I3 => \data_out_s_reg[31]_i_14_0\(2),
      I4 => \data_out_s_reg[31]_i_14_1\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(2),
      O => \final_res_s_reg[2]_0\
    );
\data_out_s[30]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[30]\,
      I1 => \data_out_s_reg[31]_i_14\(30),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(30),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(30),
      O => \final_res_s_reg[30]_0\
    );
\data_out_s[31]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[31]\,
      I1 => \data_out_s_reg[31]_i_14\(31),
      I2 => \data_out_s_reg[31]_i_14_1\(1),
      I3 => \data_out_s_reg[31]_i_14_0\(31),
      I4 => \data_out_s_reg[10]_i_6\,
      I5 => \data_out_s_reg[31]_i_14_2\(31),
      O => \final_res_s_reg[31]_0\
    );
\data_out_s[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_en_s__0\(15),
      I1 => \cpt_store_s_reg[0]_rep\(0),
      I2 => \cpt_store_s_reg[0]_rep\(1),
      I3 => \cpt_store_s_reg[0]_rep\(4),
      I4 => \cpt_store_s_reg[0]_rep\(2),
      I5 => \cpt_store_s_reg[0]_rep\(3),
      O => data_en_o_reg_0
    );
\data_out_s[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[3]\,
      I1 => \data_out_s_reg[31]_i_14\(3),
      I2 => \data_out_s_reg[0]_i_6\,
      I3 => \data_out_s_reg[31]_i_14_0\(3),
      I4 => \data_out_s_reg[31]_i_14_1\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(3),
      O => \final_res_s_reg[3]_0\
    );
\data_out_s[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[4]\,
      I1 => \data_out_s_reg[31]_i_14\(4),
      I2 => \data_out_s_reg[0]_i_6\,
      I3 => \data_out_s_reg[31]_i_14_0\(4),
      I4 => \data_out_s_reg[31]_i_14_1\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(4),
      O => \final_res_s_reg[4]_0\
    );
\data_out_s[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[5]\,
      I1 => \data_out_s_reg[31]_i_14\(5),
      I2 => \data_out_s_reg[0]_i_6\,
      I3 => \data_out_s_reg[31]_i_14_0\(5),
      I4 => \data_out_s_reg[31]_i_14_1\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(5),
      O => \final_res_s_reg[5]_0\
    );
\data_out_s[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[6]\,
      I1 => \data_out_s_reg[31]_i_14\(6),
      I2 => \data_out_s_reg[0]_i_6\,
      I3 => \data_out_s_reg[31]_i_14_0\(6),
      I4 => \data_out_s_reg[31]_i_14_1\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(6),
      O => \final_res_s_reg[6]_0\
    );
\data_out_s[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[7]\,
      I1 => \data_out_s_reg[31]_i_14\(7),
      I2 => \data_out_s_reg[0]_i_6\,
      I3 => \data_out_s_reg[31]_i_14_0\(7),
      I4 => \data_out_s_reg[31]_i_14_1\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(7),
      O => \final_res_s_reg[7]_0\
    );
\data_out_s[8]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[8]\,
      I1 => \data_out_s_reg[31]_i_14\(8),
      I2 => \data_out_s_reg[0]_i_6\,
      I3 => \data_out_s_reg[31]_i_14_0\(8),
      I4 => \data_out_s_reg[31]_i_14_1\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(8),
      O => \final_res_s_reg[8]_0\
    );
\data_out_s[9]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[9]\,
      I1 => \data_out_s_reg[31]_i_14\(9),
      I2 => \data_out_s_reg[0]_i_6\,
      I3 => \data_out_s_reg[31]_i_14_0\(9),
      I4 => \data_out_s_reg[31]_i_14_1\(0),
      I5 => \data_out_s_reg[31]_i_14_2\(9),
      O => \final_res_s_reg[9]_0\
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg_n_0_[0]\,
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg_n_0_[10]\,
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg_n_0_[11]\,
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg_n_0_[12]\,
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg_n_0_[13]\,
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg_n_0_[14]\,
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg_n_0_[15]\,
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg_n_0_[16]\,
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg_n_0_[17]\,
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg_n_0_[18]\,
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg_n_0_[19]\,
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg_n_0_[1]\,
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg_n_0_[20]\,
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg_n_0_[21]\,
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg_n_0_[22]\,
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg_n_0_[23]\,
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg_n_0_[24]\,
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg_n_0_[25]\,
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg_n_0_[26]\,
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg_n_0_[27]\,
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg_n_0_[28]\,
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg_n_0_[29]\,
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg_n_0_[2]\,
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg_n_0_[30]\,
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg_n_0_[31]\,
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg_n_0_[3]\,
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg_n_0_[4]\,
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg_n_0_[5]\,
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg_n_0_[6]\,
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg_n_0_[7]\,
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg_n_0_[8]\,
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg_n_0_[9]\,
      R => data_rst_i
    );
\must_rst_s_i_1__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__8_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__8_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__14_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__14_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_6 is
  port (
    end_s : out STD_LOGIC;
    data_en_o_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_6 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_6;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_6 is
  signal \must_rst_s_i_1__7_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__15_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_o_reg_0(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__7_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__7_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__15_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__15_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_7 is
  port (
    end_s : out STD_LOGIC;
    data_en_o_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_7 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_7;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_7 is
  signal \must_rst_s_i_1__6_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__16_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_o_reg_0(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__6_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__6_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__16_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__16_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_8 is
  port (
    end_s : out STD_LOGIC;
    data_en_o_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_8 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_8;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_8 is
  signal \must_rst_s_i_1__5_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__17_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_o_reg_0(0),
      R => data_rst_i
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg[31]_0\(0),
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg[31]_0\(10),
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg[31]_0\(11),
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg[31]_0\(12),
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg[31]_0\(13),
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg[31]_0\(14),
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg[31]_0\(15),
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg[31]_0\(16),
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg[31]_0\(17),
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg[31]_0\(18),
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg[31]_0\(19),
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg[31]_0\(1),
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg[31]_0\(20),
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg[31]_0\(21),
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg[31]_0\(22),
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg[31]_0\(23),
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg[31]_0\(24),
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg[31]_0\(25),
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg[31]_0\(26),
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg[31]_0\(27),
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg[31]_0\(28),
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg[31]_0\(29),
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg[31]_0\(2),
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg[31]_0\(30),
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg[31]_0\(31),
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg[31]_0\(3),
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg[31]_0\(4),
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg[31]_0\(5),
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg[31]_0\(6),
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg[31]_0\(7),
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg[31]_0\(8),
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg[31]_0\(9),
      R => data_rst_i
    );
\must_rst_s_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__5_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__5_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__17_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__17_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_proc_9 is
  port (
    end_s : out STD_LOGIC;
    data_en_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s : out STD_LOGIC;
    \final_res_s_reg[0]_0\ : out STD_LOGIC;
    \final_res_s_reg[1]_0\ : out STD_LOGIC;
    \final_res_s_reg[2]_0\ : out STD_LOGIC;
    \final_res_s_reg[3]_0\ : out STD_LOGIC;
    \final_res_s_reg[4]_0\ : out STD_LOGIC;
    \final_res_s_reg[5]_0\ : out STD_LOGIC;
    \final_res_s_reg[6]_0\ : out STD_LOGIC;
    \final_res_s_reg[7]_0\ : out STD_LOGIC;
    \final_res_s_reg[8]_0\ : out STD_LOGIC;
    \final_res_s_reg[9]_0\ : out STD_LOGIC;
    \final_res_s_reg[10]_0\ : out STD_LOGIC;
    \final_res_s_reg[11]_0\ : out STD_LOGIC;
    \final_res_s_reg[12]_0\ : out STD_LOGIC;
    \final_res_s_reg[13]_0\ : out STD_LOGIC;
    \final_res_s_reg[14]_0\ : out STD_LOGIC;
    \final_res_s_reg[15]_0\ : out STD_LOGIC;
    \final_res_s_reg[16]_0\ : out STD_LOGIC;
    \final_res_s_reg[17]_0\ : out STD_LOGIC;
    \final_res_s_reg[18]_0\ : out STD_LOGIC;
    \final_res_s_reg[19]_0\ : out STD_LOGIC;
    \final_res_s_reg[20]_0\ : out STD_LOGIC;
    \final_res_s_reg[21]_0\ : out STD_LOGIC;
    \final_res_s_reg[22]_0\ : out STD_LOGIC;
    \final_res_s_reg[23]_0\ : out STD_LOGIC;
    \final_res_s_reg[24]_0\ : out STD_LOGIC;
    \final_res_s_reg[25]_0\ : out STD_LOGIC;
    \final_res_s_reg[26]_0\ : out STD_LOGIC;
    \final_res_s_reg[27]_0\ : out STD_LOGIC;
    \final_res_s_reg[28]_0\ : out STD_LOGIC;
    \final_res_s_reg[29]_0\ : out STD_LOGIC;
    \final_res_s_reg[30]_0\ : out STD_LOGIC;
    \final_res_s_reg[31]_0\ : out STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_clk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_en_s : in STD_LOGIC;
    res_s0 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_s_reg_0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ready_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_en_s_0 : in STD_LOGIC;
    \data_out_s_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[9]\ : in STD_LOGIC;
    \data_out_s_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[10]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_out_s_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_s_reg[31]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_firReal_1_0_firReal_proc_9 : entity is "firReal_proc";
end double_iq_pid_vco_firReal_1_0_firReal_proc_9;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_proc_9 is
  signal \final_res_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[10]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[11]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[12]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[13]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[14]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[15]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[16]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[17]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[18]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[19]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[20]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[21]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[22]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[23]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[24]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[25]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[26]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[27]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[28]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[29]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[30]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[31]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[6]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[7]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[8]\ : STD_LOGIC;
  signal \final_res_s_reg_n_0_[9]\ : STD_LOGIC;
  signal \must_rst_s_i_1__4_n_0\ : STD_LOGIC;
  signal must_rst_s_reg_n_0 : STD_LOGIC;
  signal \^ready_s\ : STD_LOGIC;
  signal \ready_s_i_1__18_n_0\ : STD_LOGIC;
  signal res_s_reg_n_100 : STD_LOGIC;
  signal res_s_reg_n_101 : STD_LOGIC;
  signal res_s_reg_n_102 : STD_LOGIC;
  signal res_s_reg_n_103 : STD_LOGIC;
  signal res_s_reg_n_104 : STD_LOGIC;
  signal res_s_reg_n_105 : STD_LOGIC;
  signal res_s_reg_n_71 : STD_LOGIC;
  signal res_s_reg_n_72 : STD_LOGIC;
  signal res_s_reg_n_73 : STD_LOGIC;
  signal res_s_reg_n_74 : STD_LOGIC;
  signal res_s_reg_n_75 : STD_LOGIC;
  signal res_s_reg_n_76 : STD_LOGIC;
  signal res_s_reg_n_77 : STD_LOGIC;
  signal res_s_reg_n_78 : STD_LOGIC;
  signal res_s_reg_n_79 : STD_LOGIC;
  signal res_s_reg_n_80 : STD_LOGIC;
  signal res_s_reg_n_81 : STD_LOGIC;
  signal res_s_reg_n_82 : STD_LOGIC;
  signal res_s_reg_n_83 : STD_LOGIC;
  signal res_s_reg_n_84 : STD_LOGIC;
  signal res_s_reg_n_85 : STD_LOGIC;
  signal res_s_reg_n_86 : STD_LOGIC;
  signal res_s_reg_n_87 : STD_LOGIC;
  signal res_s_reg_n_88 : STD_LOGIC;
  signal res_s_reg_n_89 : STD_LOGIC;
  signal res_s_reg_n_90 : STD_LOGIC;
  signal res_s_reg_n_91 : STD_LOGIC;
  signal res_s_reg_n_92 : STD_LOGIC;
  signal res_s_reg_n_93 : STD_LOGIC;
  signal res_s_reg_n_94 : STD_LOGIC;
  signal res_s_reg_n_95 : STD_LOGIC;
  signal res_s_reg_n_96 : STD_LOGIC;
  signal res_s_reg_n_97 : STD_LOGIC;
  signal res_s_reg_n_98 : STD_LOGIC;
  signal res_s_reg_n_99 : STD_LOGIC;
  signal NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 35 );
  signal NLW_res_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  ready_s <= \^ready_s\;
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => E(0),
      Q => data_en_s(0),
      R => data_rst_i
    );
\data_out_s[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[0]\,
      I1 => \data_out_s_reg[31]\(0),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(0),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(0),
      O => \final_res_s_reg[0]_0\
    );
\data_out_s[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[10]\,
      I1 => \data_out_s_reg[31]\(10),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(10),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(10),
      O => \final_res_s_reg[10]_0\
    );
\data_out_s[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[11]\,
      I1 => \data_out_s_reg[31]\(11),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(11),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(11),
      O => \final_res_s_reg[11]_0\
    );
\data_out_s[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[12]\,
      I1 => \data_out_s_reg[31]\(12),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(12),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(12),
      O => \final_res_s_reg[12]_0\
    );
\data_out_s[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[13]\,
      I1 => \data_out_s_reg[31]\(13),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(13),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(13),
      O => \final_res_s_reg[13]_0\
    );
\data_out_s[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[14]\,
      I1 => \data_out_s_reg[31]\(14),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(14),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(14),
      O => \final_res_s_reg[14]_0\
    );
\data_out_s[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[15]\,
      I1 => \data_out_s_reg[31]\(15),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(15),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(15),
      O => \final_res_s_reg[15]_0\
    );
\data_out_s[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[16]\,
      I1 => \data_out_s_reg[31]\(16),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(16),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(16),
      O => \final_res_s_reg[16]_0\
    );
\data_out_s[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[17]\,
      I1 => \data_out_s_reg[31]\(17),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(17),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(17),
      O => \final_res_s_reg[17]_0\
    );
\data_out_s[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[18]\,
      I1 => \data_out_s_reg[31]\(18),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(18),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(18),
      O => \final_res_s_reg[18]_0\
    );
\data_out_s[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[19]\,
      I1 => \data_out_s_reg[31]\(19),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(19),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(19),
      O => \final_res_s_reg[19]_0\
    );
\data_out_s[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[1]\,
      I1 => \data_out_s_reg[31]\(1),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(1),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(1),
      O => \final_res_s_reg[1]_0\
    );
\data_out_s[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[20]\,
      I1 => \data_out_s_reg[31]\(20),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(20),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(20),
      O => \final_res_s_reg[20]_0\
    );
\data_out_s[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[21]\,
      I1 => \data_out_s_reg[31]\(21),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(21),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(21),
      O => \final_res_s_reg[21]_0\
    );
\data_out_s[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[22]\,
      I1 => \data_out_s_reg[31]\(22),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(22),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(22),
      O => \final_res_s_reg[22]_0\
    );
\data_out_s[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[23]\,
      I1 => \data_out_s_reg[31]\(23),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(23),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(23),
      O => \final_res_s_reg[23]_0\
    );
\data_out_s[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[24]\,
      I1 => \data_out_s_reg[31]\(24),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(24),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(24),
      O => \final_res_s_reg[24]_0\
    );
\data_out_s[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[25]\,
      I1 => \data_out_s_reg[31]\(25),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(25),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(25),
      O => \final_res_s_reg[25]_0\
    );
\data_out_s[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[26]\,
      I1 => \data_out_s_reg[31]\(26),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(26),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(26),
      O => \final_res_s_reg[26]_0\
    );
\data_out_s[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[27]\,
      I1 => \data_out_s_reg[31]\(27),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(27),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(27),
      O => \final_res_s_reg[27]_0\
    );
\data_out_s[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[28]\,
      I1 => \data_out_s_reg[31]\(28),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(28),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(28),
      O => \final_res_s_reg[28]_0\
    );
\data_out_s[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[29]\,
      I1 => \data_out_s_reg[31]\(29),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(29),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(29),
      O => \final_res_s_reg[29]_0\
    );
\data_out_s[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[2]\,
      I1 => \data_out_s_reg[31]\(2),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(2),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(2),
      O => \final_res_s_reg[2]_0\
    );
\data_out_s[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[30]\,
      I1 => \data_out_s_reg[31]\(30),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(30),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(30),
      O => \final_res_s_reg[30]_0\
    );
\data_out_s[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[31]\,
      I1 => \data_out_s_reg[31]\(31),
      I2 => \data_out_s_reg[10]\(1),
      I3 => \data_out_s_reg[31]_0\(31),
      I4 => \data_out_s_reg[31]_2\,
      I5 => \data_out_s_reg[31]_1\(31),
      O => \final_res_s_reg[31]_0\
    );
\data_out_s[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[3]\,
      I1 => \data_out_s_reg[31]\(3),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(3),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(3),
      O => \final_res_s_reg[3]_0\
    );
\data_out_s[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[4]\,
      I1 => \data_out_s_reg[31]\(4),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(4),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(4),
      O => \final_res_s_reg[4]_0\
    );
\data_out_s[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[5]\,
      I1 => \data_out_s_reg[31]\(5),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(5),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(5),
      O => \final_res_s_reg[5]_0\
    );
\data_out_s[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[6]\,
      I1 => \data_out_s_reg[31]\(6),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(6),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(6),
      O => \final_res_s_reg[6]_0\
    );
\data_out_s[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[7]\,
      I1 => \data_out_s_reg[31]\(7),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(7),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(7),
      O => \final_res_s_reg[7]_0\
    );
\data_out_s[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[8]\,
      I1 => \data_out_s_reg[31]\(8),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(8),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(8),
      O => \final_res_s_reg[8]_0\
    );
\data_out_s[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \final_res_s_reg_n_0_[9]\,
      I1 => \data_out_s_reg[31]\(9),
      I2 => \data_out_s_reg[9]\,
      I3 => \data_out_s_reg[31]_0\(9),
      I4 => \data_out_s_reg[10]\(0),
      I5 => \data_out_s_reg[31]_1\(9),
      O => \final_res_s_reg[9]_0\
    );
end_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => end_s,
      R => data_rst_i
    );
\final_res_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_105,
      Q => \final_res_s_reg_n_0_[0]\,
      R => data_rst_i
    );
\final_res_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_95,
      Q => \final_res_s_reg_n_0_[10]\,
      R => data_rst_i
    );
\final_res_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_94,
      Q => \final_res_s_reg_n_0_[11]\,
      R => data_rst_i
    );
\final_res_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_93,
      Q => \final_res_s_reg_n_0_[12]\,
      R => data_rst_i
    );
\final_res_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_92,
      Q => \final_res_s_reg_n_0_[13]\,
      R => data_rst_i
    );
\final_res_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_91,
      Q => \final_res_s_reg_n_0_[14]\,
      R => data_rst_i
    );
\final_res_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_90,
      Q => \final_res_s_reg_n_0_[15]\,
      R => data_rst_i
    );
\final_res_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_89,
      Q => \final_res_s_reg_n_0_[16]\,
      R => data_rst_i
    );
\final_res_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_88,
      Q => \final_res_s_reg_n_0_[17]\,
      R => data_rst_i
    );
\final_res_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_87,
      Q => \final_res_s_reg_n_0_[18]\,
      R => data_rst_i
    );
\final_res_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_86,
      Q => \final_res_s_reg_n_0_[19]\,
      R => data_rst_i
    );
\final_res_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_104,
      Q => \final_res_s_reg_n_0_[1]\,
      R => data_rst_i
    );
\final_res_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_85,
      Q => \final_res_s_reg_n_0_[20]\,
      R => data_rst_i
    );
\final_res_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_84,
      Q => \final_res_s_reg_n_0_[21]\,
      R => data_rst_i
    );
\final_res_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_83,
      Q => \final_res_s_reg_n_0_[22]\,
      R => data_rst_i
    );
\final_res_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_82,
      Q => \final_res_s_reg_n_0_[23]\,
      R => data_rst_i
    );
\final_res_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_81,
      Q => \final_res_s_reg_n_0_[24]\,
      R => data_rst_i
    );
\final_res_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_80,
      Q => \final_res_s_reg_n_0_[25]\,
      R => data_rst_i
    );
\final_res_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_79,
      Q => \final_res_s_reg_n_0_[26]\,
      R => data_rst_i
    );
\final_res_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_78,
      Q => \final_res_s_reg_n_0_[27]\,
      R => data_rst_i
    );
\final_res_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_77,
      Q => \final_res_s_reg_n_0_[28]\,
      R => data_rst_i
    );
\final_res_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_76,
      Q => \final_res_s_reg_n_0_[29]\,
      R => data_rst_i
    );
\final_res_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_103,
      Q => \final_res_s_reg_n_0_[2]\,
      R => data_rst_i
    );
\final_res_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_75,
      Q => \final_res_s_reg_n_0_[30]\,
      R => data_rst_i
    );
\final_res_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_74,
      Q => \final_res_s_reg_n_0_[31]\,
      R => data_rst_i
    );
\final_res_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_102,
      Q => \final_res_s_reg_n_0_[3]\,
      R => data_rst_i
    );
\final_res_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_101,
      Q => \final_res_s_reg_n_0_[4]\,
      R => data_rst_i
    );
\final_res_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_100,
      Q => \final_res_s_reg_n_0_[5]\,
      R => data_rst_i
    );
\final_res_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_99,
      Q => \final_res_s_reg_n_0_[6]\,
      R => data_rst_i
    );
\final_res_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_98,
      Q => \final_res_s_reg_n_0_[7]\,
      R => data_rst_i
    );
\final_res_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_97,
      Q => \final_res_s_reg_n_0_[8]\,
      R => data_rst_i
    );
\final_res_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => E(0),
      D => res_s_reg_n_96,
      Q => \final_res_s_reg_n_0_[9]\,
      R => data_rst_i
    );
\must_rst_s_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => Q(0),
      I1 => data_en_s_0,
      I2 => \^ready_s\,
      I3 => must_rst_s_reg_n_0,
      O => \must_rst_s_i_1__4_n_0\
    );
must_rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \must_rst_s_i_1__4_n_0\,
      Q => must_rst_s_reg_n_0,
      R => data_rst_i
    );
\ready_s_i_1__18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ready_s_reg_0(0),
      I1 => data_in_en_s,
      I2 => Q(0),
      I3 => \^ready_s\,
      O => \ready_s_i_1__18_n_0\
    );
ready_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \ready_s_i_1__18_n_0\,
      Q => \^ready_s\,
      R => data_rst_i
    );
res_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
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
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => res_s_reg_0(29 downto 0),
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data_i(13),
      B(16) => data_i(13),
      B(15) => data_i(13),
      B(14) => data_i(13),
      B(13 downto 0) => data_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => data_in_en_s,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => data_in_en_s,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => res_s0,
      CLK => data_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => must_rst_s_reg_n_0,
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_res_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 35) => NLW_res_s_reg_P_UNCONNECTED(47 downto 35),
      P(34) => res_s_reg_n_71,
      P(33) => res_s_reg_n_72,
      P(32) => res_s_reg_n_73,
      P(31) => res_s_reg_n_74,
      P(30) => res_s_reg_n_75,
      P(29) => res_s_reg_n_76,
      P(28) => res_s_reg_n_77,
      P(27) => res_s_reg_n_78,
      P(26) => res_s_reg_n_79,
      P(25) => res_s_reg_n_80,
      P(24) => res_s_reg_n_81,
      P(23) => res_s_reg_n_82,
      P(22) => res_s_reg_n_83,
      P(21) => res_s_reg_n_84,
      P(20) => res_s_reg_n_85,
      P(19) => res_s_reg_n_86,
      P(18) => res_s_reg_n_87,
      P(17) => res_s_reg_n_88,
      P(16) => res_s_reg_n_89,
      P(15) => res_s_reg_n_90,
      P(14) => res_s_reg_n_91,
      P(13) => res_s_reg_n_92,
      P(12) => res_s_reg_n_93,
      P(11) => res_s_reg_n_94,
      P(10) => res_s_reg_n_95,
      P(9) => res_s_reg_n_96,
      P(8) => res_s_reg_n_97,
      P(7) => res_s_reg_n_98,
      P(6) => res_s_reg_n_99,
      P(5) => res_s_reg_n_100,
      P(4) => res_s_reg_n_101,
      P(3) => res_s_reg_n_102,
      P(2) => res_s_reg_n_103,
      P(1) => res_s_reg_n_104,
      P(0) => res_s_reg_n_105,
      PATTERNBDETECT => NLW_res_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_res_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => data_rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => data_rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => data_rst_i,
      UNDERFLOW => NLW_res_s_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_ram is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    coeff_en_s : in STD_LOGIC;
    mem_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mem_reg_1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end double_iq_pid_vco_firReal_1_0_firReal_ram;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_ram is
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-4 {cell *THIS*} {string 5}} {SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "U0/fir_top_inst/ram_coeff/mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 15;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 15;
begin
mem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 9) => B"00000",
      ADDRARDADDR(8 downto 4) => mem_reg_0(4 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 9) => B"00000",
      ADDRBWRADDR(8 downto 4) => Q(4 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => data_clk_i,
      DIADI(15 downto 0) => mem_reg_1(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 0) => DOBDO(15 downto 0),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => coeff_en_s,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"11",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal_top is
  port (
    tick_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    coeff_en_s : in STD_LOGIC;
    mem_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mem_reg_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_rst_i : in STD_LOGIC;
    data_en_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end double_iq_pid_vco_firReal_1_0_firReal_top;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal_top is
  signal clear : STD_LOGIC;
  signal coeff_s : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cpt_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \cpt_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \cpt_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \cpt_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \cpt_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \cpt_store_s[0]_rep_i_1_n_0\ : STD_LOGIC;
  signal \cpt_store_s[1]_rep_i_1_n_0\ : STD_LOGIC;
  signal \cpt_store_s[4]_i_3_n_0\ : STD_LOGIC;
  signal cpt_store_s_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cpt_store_s_reg[0]_rep_n_0\ : STD_LOGIC;
  signal \cpt_store_s_reg[1]_rep_n_0\ : STD_LOGIC;
  signal data_en_next : STD_LOGIC;
  signal data_en_s : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal data_en_s_46 : STD_LOGIC;
  signal data_in_en_s : STD_LOGIC;
  signal data_out_en_s : STD_LOGIC;
  signal data_out_en_s_1 : STD_LOGIC;
  signal data_out_en_s_11 : STD_LOGIC;
  signal data_out_en_s_13 : STD_LOGIC;
  signal data_out_en_s_15 : STD_LOGIC;
  signal data_out_en_s_17 : STD_LOGIC;
  signal data_out_en_s_19 : STD_LOGIC;
  signal data_out_en_s_21 : STD_LOGIC;
  signal data_out_en_s_23 : STD_LOGIC;
  signal data_out_en_s_25 : STD_LOGIC;
  signal data_out_en_s_27 : STD_LOGIC;
  signal data_out_en_s_29 : STD_LOGIC;
  signal data_out_en_s_3 : STD_LOGIC;
  signal data_out_en_s_31 : STD_LOGIC;
  signal data_out_en_s_33 : STD_LOGIC;
  signal data_out_en_s_35 : STD_LOGIC;
  signal data_out_en_s_37 : STD_LOGIC;
  signal data_out_en_s_39 : STD_LOGIC;
  signal data_out_en_s_41 : STD_LOGIC;
  signal data_out_en_s_43 : STD_LOGIC;
  signal data_out_en_s_45 : STD_LOGIC;
  signal data_out_en_s_5 : STD_LOGIC;
  signal data_out_en_s_7 : STD_LOGIC;
  signal data_out_en_s_9 : STD_LOGIC;
  signal \data_out_s[31]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_s[31]_i_9_n_0\ : STD_LOGIC;
  signal \data_s[24]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \end_macc_s__0\ : STD_LOGIC;
  signal end_next_s : STD_LOGIC_VECTOR ( 0 to 0 );
  signal end_next_s_0 : STD_LOGIC_VECTOR ( 24 downto 1 );
  signal end_s : STD_LOGIC;
  signal end_s_48 : STD_LOGIC;
  signal end_s_50 : STD_LOGIC;
  signal end_s_52 : STD_LOGIC;
  signal end_s_54 : STD_LOGIC;
  signal end_s_56 : STD_LOGIC;
  signal end_s_58 : STD_LOGIC;
  signal end_s_60 : STD_LOGIC;
  signal end_s_62 : STD_LOGIC;
  signal end_s_64 : STD_LOGIC;
  signal end_s_66 : STD_LOGIC;
  signal end_s_68 : STD_LOGIC;
  signal end_s_70 : STD_LOGIC;
  signal end_s_72 : STD_LOGIC;
  signal end_s_74 : STD_LOGIC;
  signal end_s_76 : STD_LOGIC;
  signal end_s_78 : STD_LOGIC;
  signal end_s_80 : STD_LOGIC;
  signal end_s_82 : STD_LOGIC;
  signal end_s_84 : STD_LOGIC;
  signal end_s_86 : STD_LOGIC;
  signal end_s_88 : STD_LOGIC;
  signal end_s_90 : STD_LOGIC;
  signal end_s_92 : STD_LOGIC;
  signal \end_s_reg_n_0_[24]\ : STD_LOGIC;
  signal final_res_s : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gen_macc[10].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[10].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[11].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_1\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_32\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[12].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[13].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[14].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_1\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_32\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[15].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[16].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[17].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[18].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[19].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[1].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[20].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[21].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[22].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_1\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_32\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[23].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_32\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[24].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[2].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_1\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[3].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[4].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_1\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_32\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[5].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[6].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[7].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[8].logic_inst_n_9\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_10\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_11\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_12\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_13\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_14\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_15\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_16\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_17\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_18\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_19\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_2\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_20\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_21\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_22\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_23\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_24\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_25\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_26\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_27\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_28\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_29\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_3\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_30\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_31\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_33\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_34\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_35\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_36\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_37\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_38\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_39\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_4\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_40\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_41\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_42\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_43\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_44\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_45\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_46\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_47\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_48\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_49\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_5\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_50\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_51\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_52\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_53\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_54\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_55\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_56\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_57\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_58\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_59\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_6\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_60\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_61\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_62\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_63\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_64\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_7\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_8\ : STD_LOGIC;
  signal \gen_macc[9].logic_inst_n_9\ : STD_LOGIC;
  signal mux_cpt_s : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ready_next_s : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal ready_s : STD_LOGIC;
  signal ready_s_47 : STD_LOGIC;
  signal ready_s_49 : STD_LOGIC;
  signal ready_s_51 : STD_LOGIC;
  signal ready_s_53 : STD_LOGIC;
  signal ready_s_55 : STD_LOGIC;
  signal ready_s_57 : STD_LOGIC;
  signal ready_s_59 : STD_LOGIC;
  signal ready_s_61 : STD_LOGIC;
  signal ready_s_63 : STD_LOGIC;
  signal ready_s_65 : STD_LOGIC;
  signal ready_s_67 : STD_LOGIC;
  signal ready_s_69 : STD_LOGIC;
  signal ready_s_71 : STD_LOGIC;
  signal ready_s_73 : STD_LOGIC;
  signal ready_s_75 : STD_LOGIC;
  signal ready_s_77 : STD_LOGIC;
  signal ready_s_79 : STD_LOGIC;
  signal ready_s_81 : STD_LOGIC;
  signal ready_s_83 : STD_LOGIC;
  signal ready_s_85 : STD_LOGIC;
  signal ready_s_87 : STD_LOGIC;
  signal ready_s_89 : STD_LOGIC;
  signal ready_s_91 : STD_LOGIC;
  signal res_s0 : STD_LOGIC;
  signal res_s0_0 : STD_LOGIC;
  signal res_s0_10 : STD_LOGIC;
  signal res_s0_12 : STD_LOGIC;
  signal res_s0_14 : STD_LOGIC;
  signal res_s0_16 : STD_LOGIC;
  signal res_s0_18 : STD_LOGIC;
  signal res_s0_2 : STD_LOGIC;
  signal res_s0_20 : STD_LOGIC;
  signal res_s0_22 : STD_LOGIC;
  signal res_s0_24 : STD_LOGIC;
  signal res_s0_26 : STD_LOGIC;
  signal res_s0_28 : STD_LOGIC;
  signal res_s0_30 : STD_LOGIC;
  signal res_s0_32 : STD_LOGIC;
  signal res_s0_34 : STD_LOGIC;
  signal res_s0_36 : STD_LOGIC;
  signal res_s0_38 : STD_LOGIC;
  signal res_s0_4 : STD_LOGIC;
  signal res_s0_40 : STD_LOGIC;
  signal res_s0_42 : STD_LOGIC;
  signal res_s0_44 : STD_LOGIC;
  signal res_s0_6 : STD_LOGIC;
  signal res_s0_8 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cpt_s[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cpt_s[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cpt_s[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cpt_s[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cpt_store_s[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cpt_store_s[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cpt_store_s[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cpt_store_s[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cpt_store_s[4]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cpt_store_s[4]_i_3\ : label is "soft_lutpair15";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \cpt_store_s_reg[0]\ : label is "cpt_store_s_reg[0]";
  attribute ORIG_CELL_NAME of \cpt_store_s_reg[0]_rep\ : label is "cpt_store_s_reg[0]";
  attribute ORIG_CELL_NAME of \cpt_store_s_reg[1]\ : label is "cpt_store_s_reg[1]";
  attribute ORIG_CELL_NAME of \cpt_store_s_reg[1]_rep\ : label is "cpt_store_s_reg[1]";
  attribute SOFT_HLUTNM of \data_out_s[31]_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_out_s[31]_i_9\ : label is "soft_lutpair17";
begin
\cpt_s[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0D0F0F"
    )
        port map (
      I0 => \cpt_s_reg_n_0_[3]\,
      I1 => \cpt_s_reg_n_0_[1]\,
      I2 => \cpt_s_reg_n_0_[0]\,
      I3 => \cpt_s_reg_n_0_[2]\,
      I4 => \cpt_s_reg_n_0_[4]\,
      O => mux_cpt_s(0)
    );
\cpt_s[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cpt_s_reg_n_0_[1]\,
      I1 => \cpt_s_reg_n_0_[0]\,
      O => mux_cpt_s(1)
    );
\cpt_s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cpt_s_reg_n_0_[1]\,
      I1 => \cpt_s_reg_n_0_[0]\,
      I2 => \cpt_s_reg_n_0_[2]\,
      O => mux_cpt_s(2)
    );
\cpt_s[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AA86AAA"
    )
        port map (
      I0 => \cpt_s_reg_n_0_[3]\,
      I1 => \cpt_s_reg_n_0_[1]\,
      I2 => \cpt_s_reg_n_0_[0]\,
      I3 => \cpt_s_reg_n_0_[2]\,
      I4 => \cpt_s_reg_n_0_[4]\,
      O => mux_cpt_s(3)
    );
\cpt_s[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFD8000"
    )
        port map (
      I0 => \cpt_s_reg_n_0_[3]\,
      I1 => \cpt_s_reg_n_0_[1]\,
      I2 => \cpt_s_reg_n_0_[0]\,
      I3 => \cpt_s_reg_n_0_[2]\,
      I4 => \cpt_s_reg_n_0_[4]\,
      O => mux_cpt_s(4)
    );
\cpt_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => mux_cpt_s(0),
      Q => \cpt_s_reg_n_0_[0]\,
      R => data_rst_i
    );
\cpt_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => mux_cpt_s(1),
      Q => \cpt_s_reg_n_0_[1]\,
      R => data_rst_i
    );
\cpt_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => mux_cpt_s(2),
      Q => \cpt_s_reg_n_0_[2]\,
      R => data_rst_i
    );
\cpt_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => mux_cpt_s(3),
      Q => \cpt_s_reg_n_0_[3]\,
      R => data_rst_i
    );
\cpt_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => mux_cpt_s(4),
      Q => \cpt_s_reg_n_0_[4]\,
      R => data_rst_i
    );
\cpt_store_s[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_store_s_reg(0),
      O => p_0_in(0)
    );
\cpt_store_s[0]_rep_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cpt_store_s_reg(0),
      O => \cpt_store_s[0]_rep_i_1_n_0\
    );
\cpt_store_s[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cpt_store_s_reg(0),
      I1 => \cpt_store_s_reg[1]_rep_n_0\,
      O => p_0_in(1)
    );
\cpt_store_s[1]_rep_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cpt_store_s_reg(0),
      I1 => \cpt_store_s_reg[1]_rep_n_0\,
      O => \cpt_store_s[1]_rep_i_1_n_0\
    );
\cpt_store_s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cpt_store_s_reg(0),
      I1 => \cpt_store_s_reg[1]_rep_n_0\,
      I2 => cpt_store_s_reg(2),
      O => p_0_in(2)
    );
\cpt_store_s[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cpt_store_s_reg[1]_rep_n_0\,
      I1 => cpt_store_s_reg(0),
      I2 => cpt_store_s_reg(2),
      I3 => cpt_store_s_reg(3),
      O => p_0_in(3)
    );
\cpt_store_s[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cpt_store_s_reg(2),
      I1 => cpt_store_s_reg(0),
      I2 => \cpt_store_s_reg[1]_rep_n_0\,
      I3 => cpt_store_s_reg(3),
      I4 => cpt_store_s_reg(4),
      O => p_0_in(4)
    );
\cpt_store_s[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => cpt_store_s_reg(4),
      I1 => cpt_store_s_reg(2),
      I2 => cpt_store_s_reg(3),
      I3 => \cpt_store_s_reg[1]_rep_n_0\,
      I4 => cpt_store_s_reg(0),
      O => \cpt_store_s[4]_i_3_n_0\
    );
\cpt_store_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => p_0_in(0),
      Q => cpt_store_s_reg(0),
      R => clear
    );
\cpt_store_s_reg[0]_rep\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \cpt_store_s[0]_rep_i_1_n_0\,
      Q => \cpt_store_s_reg[0]_rep_n_0\,
      R => clear
    );
\cpt_store_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => p_0_in(1),
      Q => cpt_store_s_reg(1),
      R => clear
    );
\cpt_store_s_reg[1]_rep\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \cpt_store_s[1]_rep_i_1_n_0\,
      Q => \cpt_store_s_reg[1]_rep_n_0\,
      R => clear
    );
\cpt_store_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => p_0_in(2),
      Q => cpt_store_s_reg(2),
      R => clear
    );
\cpt_store_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => p_0_in(3),
      Q => cpt_store_s_reg(3),
      R => clear
    );
\cpt_store_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => p_0_in(4),
      Q => cpt_store_s_reg(4),
      R => clear
    );
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_en_next,
      Q => tick_o,
      R => data_rst_i
    );
data_in_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_en_i,
      Q => data_in_en_s,
      R => data_rst_i
    );
\data_out_s[31]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => cpt_store_s_reg(4),
      I1 => cpt_store_s_reg(2),
      I2 => cpt_store_s_reg(3),
      O => \data_out_s[31]_i_11_n_0\
    );
\data_out_s[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cpt_store_s_reg(3),
      I1 => cpt_store_s_reg(4),
      O => \data_out_s[31]_i_9_n_0\
    );
\data_out_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(0),
      Q => data_o(0),
      R => data_rst_i
    );
\data_out_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(10),
      Q => data_o(10),
      R => data_rst_i
    );
\data_out_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(11),
      Q => data_o(11),
      R => data_rst_i
    );
\data_out_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(12),
      Q => data_o(12),
      R => data_rst_i
    );
\data_out_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(13),
      Q => data_o(13),
      R => data_rst_i
    );
\data_out_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(14),
      Q => data_o(14),
      R => data_rst_i
    );
\data_out_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(15),
      Q => data_o(15),
      R => data_rst_i
    );
\data_out_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(16),
      Q => data_o(16),
      R => data_rst_i
    );
\data_out_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(17),
      Q => data_o(17),
      R => data_rst_i
    );
\data_out_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(18),
      Q => data_o(18),
      R => data_rst_i
    );
\data_out_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(19),
      Q => data_o(19),
      R => data_rst_i
    );
\data_out_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(1),
      Q => data_o(1),
      R => data_rst_i
    );
\data_out_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(20),
      Q => data_o(20),
      R => data_rst_i
    );
\data_out_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(21),
      Q => data_o(21),
      R => data_rst_i
    );
\data_out_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(22),
      Q => data_o(22),
      R => data_rst_i
    );
\data_out_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(23),
      Q => data_o(23),
      R => data_rst_i
    );
\data_out_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(24),
      Q => data_o(24),
      R => data_rst_i
    );
\data_out_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(25),
      Q => data_o(25),
      R => data_rst_i
    );
\data_out_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(26),
      Q => data_o(26),
      R => data_rst_i
    );
\data_out_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(27),
      Q => data_o(27),
      R => data_rst_i
    );
\data_out_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(28),
      Q => data_o(28),
      R => data_rst_i
    );
\data_out_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(29),
      Q => data_o(29),
      R => data_rst_i
    );
\data_out_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(2),
      Q => data_o(2),
      R => data_rst_i
    );
\data_out_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(30),
      Q => data_o(30),
      R => data_rst_i
    );
\data_out_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(31),
      Q => data_o(31),
      R => data_rst_i
    );
\data_out_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(3),
      Q => data_o(3),
      R => data_rst_i
    );
\data_out_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(4),
      Q => data_o(4),
      R => data_rst_i
    );
\data_out_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(5),
      Q => data_o(5),
      R => data_rst_i
    );
\data_out_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(6),
      Q => data_o(6),
      R => data_rst_i
    );
\data_out_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(7),
      Q => data_o(7),
      R => data_rst_i
    );
\data_out_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(8),
      Q => data_o(8),
      R => data_rst_i
    );
\data_out_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_next,
      D => \data_s[24]_0\(9),
      Q => data_o(9),
      R => data_rst_i
    );
end_delay_macc_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \end_macc_s__0\,
      Q => end_next_s(0),
      R => data_rst_i
    );
end_macc_s: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \cpt_s_reg_n_0_[4]\,
      I1 => \cpt_s_reg_n_0_[2]\,
      I2 => \cpt_s_reg_n_0_[3]\,
      I3 => \cpt_s_reg_n_0_[1]\,
      I4 => \cpt_s_reg_n_0_[0]\,
      O => \end_macc_s__0\
    );
\end_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s(0),
      Q => end_next_s_0(1),
      R => data_rst_i
    );
\end_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(10),
      Q => end_next_s_0(11),
      R => data_rst_i
    );
\end_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(11),
      Q => end_next_s_0(12),
      R => data_rst_i
    );
\end_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(12),
      Q => end_next_s_0(13),
      R => data_rst_i
    );
\end_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(13),
      Q => end_next_s_0(14),
      R => data_rst_i
    );
\end_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(14),
      Q => end_next_s_0(15),
      R => data_rst_i
    );
\end_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(15),
      Q => end_next_s_0(16),
      R => data_rst_i
    );
\end_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(16),
      Q => end_next_s_0(17),
      R => data_rst_i
    );
\end_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(17),
      Q => end_next_s_0(18),
      R => data_rst_i
    );
\end_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(18),
      Q => end_next_s_0(19),
      R => data_rst_i
    );
\end_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(19),
      Q => end_next_s_0(20),
      R => data_rst_i
    );
\end_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(1),
      Q => end_next_s_0(2),
      R => data_rst_i
    );
\end_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(20),
      Q => end_next_s_0(21),
      R => data_rst_i
    );
\end_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(21),
      Q => end_next_s_0(22),
      R => data_rst_i
    );
\end_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(22),
      Q => end_next_s_0(23),
      R => data_rst_i
    );
\end_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(23),
      Q => end_next_s_0(24),
      R => data_rst_i
    );
\end_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(24),
      Q => \end_s_reg_n_0_[24]\,
      R => data_rst_i
    );
\end_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(2),
      Q => end_next_s_0(3),
      R => data_rst_i
    );
\end_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(3),
      Q => end_next_s_0(4),
      R => data_rst_i
    );
\end_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(4),
      Q => end_next_s_0(5),
      R => data_rst_i
    );
\end_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(5),
      Q => end_next_s_0(6),
      R => data_rst_i
    );
\end_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(6),
      Q => end_next_s_0(7),
      R => data_rst_i
    );
\end_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(7),
      Q => end_next_s_0(8),
      R => data_rst_i
    );
\end_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(8),
      Q => end_next_s_0(9),
      R => data_rst_i
    );
\end_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => end_next_s_0(9),
      Q => end_next_s_0(10),
      R => data_rst_i
    );
\gen_macc[0].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc
     port map (
      DOBDO(15 downto 0) => coeff_s(15 downto 0),
      E(0) => data_out_en_s_45,
      Q(0) => end_next_s_0(1),
      data_clk_i => data_clk_i,
      data_en_s(0) => data_en_s(0),
      data_en_s_0 => data_en_s_46,
      data_en_s_reg_0(0) => data_out_en_s_43,
      data_en_s_reg_1(0) => data_out_en_s_41,
      data_en_s_reg_10(0) => data_out_en_s_23,
      data_en_s_reg_11(0) => data_out_en_s_21,
      data_en_s_reg_12(0) => data_out_en_s_19,
      data_en_s_reg_13(0) => data_out_en_s_17,
      data_en_s_reg_14(0) => data_out_en_s_15,
      data_en_s_reg_15(0) => data_out_en_s_13,
      data_en_s_reg_16(0) => data_out_en_s_11,
      data_en_s_reg_17(0) => data_out_en_s_9,
      data_en_s_reg_18(0) => data_out_en_s_7,
      data_en_s_reg_19(0) => data_out_en_s_5,
      data_en_s_reg_2(0) => data_out_en_s_39,
      data_en_s_reg_20(0) => data_out_en_s_3,
      data_en_s_reg_21(0) => data_out_en_s_1,
      data_en_s_reg_22(0) => data_out_en_s,
      data_en_s_reg_3(0) => data_out_en_s_37,
      data_en_s_reg_4(0) => data_out_en_s_35,
      data_en_s_reg_5(0) => data_out_en_s_33,
      data_en_s_reg_6(0) => data_out_en_s_31,
      data_en_s_reg_7(0) => data_out_en_s_29,
      data_en_s_reg_8(0) => data_out_en_s_27,
      data_en_s_reg_9(0) => data_out_en_s_25,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_66,
      end_s_24 => end_s_78,
      end_s_26 => end_s_80,
      end_s_28 => end_s_82,
      end_s_30 => end_s_84,
      end_s_32 => end_s_86,
      end_s_34 => end_s_88,
      end_s_36 => end_s_90,
      end_s_38 => end_s_92,
      end_s_40 => end_s,
      end_s_42 => end_s_48,
      end_s_44 => end_s_50,
      end_s_46 => end_s_52,
      end_s_48 => end_s_54,
      end_s_50 => end_s_56,
      end_s_52 => end_s_58,
      end_s_54 => end_s_60,
      end_s_56 => end_s_62,
      end_s_58 => end_s_64,
      end_s_60 => end_s_68,
      end_s_62 => end_s_70,
      end_s_64 => end_s_72,
      end_s_66 => end_s_74,
      end_s_68 => end_s_76,
      \final_res_s_reg[31]_0\(31 downto 0) => final_res_s(31 downto 0),
      ready_s => ready_s_65,
      ready_s_25 => ready_s_77,
      ready_s_27 => ready_s_79,
      ready_s_29 => ready_s_81,
      ready_s_31 => ready_s_83,
      ready_s_33 => ready_s_85,
      ready_s_35 => ready_s_87,
      ready_s_37 => ready_s_89,
      ready_s_39 => ready_s_91,
      ready_s_41 => ready_s,
      ready_s_43 => ready_s_47,
      ready_s_45 => ready_s_49,
      ready_s_47 => ready_s_51,
      ready_s_49 => ready_s_53,
      ready_s_51 => ready_s_55,
      ready_s_53 => ready_s_57,
      ready_s_55 => ready_s_59,
      ready_s_57 => ready_s_61,
      ready_s_59 => ready_s_63,
      ready_s_61 => ready_s_67,
      ready_s_63 => ready_s_69,
      ready_s_65 => ready_s_71,
      ready_s_67 => ready_s_73,
      ready_s_69 => ready_s_75,
      ready_s_reg_0(0) => ready_next_s(1),
      res_s0 => res_s0_44,
      res_s0_1 => res_s0_42,
      res_s0_10 => res_s0_24,
      res_s0_11 => res_s0_22,
      res_s0_12 => res_s0_20,
      res_s0_13 => res_s0_18,
      res_s0_14 => res_s0_16,
      res_s0_15 => res_s0_14,
      res_s0_16 => res_s0_12,
      res_s0_17 => res_s0_10,
      res_s0_18 => res_s0_8,
      res_s0_19 => res_s0_6,
      res_s0_2 => res_s0_40,
      res_s0_20 => res_s0_4,
      res_s0_21 => res_s0_2,
      res_s0_22 => res_s0_0,
      res_s0_23 => res_s0,
      res_s0_3 => res_s0_38,
      res_s0_4 => res_s0_36,
      res_s0_5 => res_s0_34,
      res_s0_6 => res_s0_32,
      res_s0_7 => res_s0_30,
      res_s0_8 => res_s0_28,
      res_s0_9 => res_s0_26
    );
\gen_macc[10].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_0
     port map (
      ACOUT(29) => \gen_macc[10].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[10].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[10].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[10].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[10].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[10].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[10].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[10].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[10].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[10].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[10].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[10].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[10].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[10].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[10].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[10].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[10].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[10].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[10].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[10].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[10].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[10].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[10].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[10].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[10].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[10].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[10].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[10].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[10].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[10].logic_inst_n_31\,
      E(0) => data_out_en_s_27,
      Q(0) => end_next_s_0(11),
      data_clk_i => data_clk_i,
      data_en_s(0) => data_en_s(10),
      data_en_s_0 => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s,
      \final_res_s_reg[31]_0\(31) => \gen_macc[10].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[10].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[10].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[10].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[10].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[10].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[10].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[10].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[10].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[10].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[10].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[10].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[10].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[10].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[10].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[10].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[10].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[10].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[10].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[10].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[10].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[10].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[10].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[10].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[10].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[10].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[10].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[10].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[10].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[10].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[10].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[10].logic_inst_n_64\,
      ready_s => ready_s,
      ready_s_reg_0(0) => ready_next_s(11),
      res_s0 => res_s0_26,
      res_s_reg_0(29) => \gen_macc[9].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[9].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[9].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[9].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[9].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[9].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[9].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[9].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[9].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[9].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[9].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[9].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[9].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[9].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[9].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[9].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[9].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[9].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[9].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[9].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[9].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[9].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[9].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[9].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[9].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[9].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[9].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[9].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[9].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[9].logic_inst_n_31\
    );
\gen_macc[11].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_1
     port map (
      ACOUT(29) => \gen_macc[11].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[11].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[11].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[11].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[11].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[11].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[11].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[11].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[11].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[11].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[11].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[11].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[11].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[11].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[11].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[11].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[11].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[11].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[11].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[11].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[11].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[11].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[11].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[11].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[11].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[11].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[11].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[11].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[11].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[11].logic_inst_n_31\,
      E(0) => data_out_en_s_25,
      Q(0) => end_next_s_0(12),
      \cpt_store_s_reg[2]\ => \gen_macc[11].logic_inst_n_33\,
      \cpt_store_s_reg[2]_0\ => \gen_macc[11].logic_inst_n_34\,
      \cpt_store_s_reg[2]_1\ => \gen_macc[11].logic_inst_n_35\,
      \cpt_store_s_reg[2]_10\ => \gen_macc[11].logic_inst_n_44\,
      \cpt_store_s_reg[2]_11\ => \gen_macc[11].logic_inst_n_45\,
      \cpt_store_s_reg[2]_12\ => \gen_macc[11].logic_inst_n_46\,
      \cpt_store_s_reg[2]_13\ => \gen_macc[11].logic_inst_n_47\,
      \cpt_store_s_reg[2]_14\ => \gen_macc[11].logic_inst_n_48\,
      \cpt_store_s_reg[2]_15\ => \gen_macc[11].logic_inst_n_49\,
      \cpt_store_s_reg[2]_16\ => \gen_macc[11].logic_inst_n_50\,
      \cpt_store_s_reg[2]_17\ => \gen_macc[11].logic_inst_n_51\,
      \cpt_store_s_reg[2]_18\ => \gen_macc[11].logic_inst_n_52\,
      \cpt_store_s_reg[2]_19\ => \gen_macc[11].logic_inst_n_53\,
      \cpt_store_s_reg[2]_2\ => \gen_macc[11].logic_inst_n_36\,
      \cpt_store_s_reg[2]_20\ => \gen_macc[11].logic_inst_n_54\,
      \cpt_store_s_reg[2]_21\ => \gen_macc[11].logic_inst_n_55\,
      \cpt_store_s_reg[2]_22\ => \gen_macc[11].logic_inst_n_56\,
      \cpt_store_s_reg[2]_23\ => \gen_macc[11].logic_inst_n_57\,
      \cpt_store_s_reg[2]_24\ => \gen_macc[11].logic_inst_n_58\,
      \cpt_store_s_reg[2]_25\ => \gen_macc[11].logic_inst_n_59\,
      \cpt_store_s_reg[2]_26\ => \gen_macc[11].logic_inst_n_60\,
      \cpt_store_s_reg[2]_27\ => \gen_macc[11].logic_inst_n_61\,
      \cpt_store_s_reg[2]_28\ => \gen_macc[11].logic_inst_n_62\,
      \cpt_store_s_reg[2]_29\ => \gen_macc[11].logic_inst_n_63\,
      \cpt_store_s_reg[2]_3\ => \gen_macc[11].logic_inst_n_37\,
      \cpt_store_s_reg[2]_30\ => \gen_macc[11].logic_inst_n_64\,
      \cpt_store_s_reg[2]_4\ => \gen_macc[11].logic_inst_n_38\,
      \cpt_store_s_reg[2]_5\ => \gen_macc[11].logic_inst_n_39\,
      \cpt_store_s_reg[2]_6\ => \gen_macc[11].logic_inst_n_40\,
      \cpt_store_s_reg[2]_7\ => \gen_macc[11].logic_inst_n_41\,
      \cpt_store_s_reg[2]_8\ => \gen_macc[11].logic_inst_n_42\,
      \cpt_store_s_reg[2]_9\ => \gen_macc[11].logic_inst_n_43\,
      data_clk_i => data_clk_i,
      data_en_s(0) => data_en_s(11),
      data_en_s_0 => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      \data_out_s_reg[0]_i_2\ => \gen_macc[15].logic_inst_n_33\,
      \data_out_s_reg[0]_i_6_0\ => \cpt_store_s_reg[1]_rep_n_0\,
      \data_out_s_reg[10]_i_2\ => \gen_macc[15].logic_inst_n_43\,
      \data_out_s_reg[10]_i_6_0\ => \cpt_store_s_reg[0]_rep_n_0\,
      \data_out_s_reg[11]_i_2\ => \gen_macc[15].logic_inst_n_44\,
      \data_out_s_reg[12]_i_2\ => \gen_macc[15].logic_inst_n_45\,
      \data_out_s_reg[13]_i_2\ => \gen_macc[15].logic_inst_n_46\,
      \data_out_s_reg[14]_i_2\ => \gen_macc[15].logic_inst_n_47\,
      \data_out_s_reg[15]_i_2\ => \gen_macc[15].logic_inst_n_48\,
      \data_out_s_reg[16]_i_2\ => \gen_macc[15].logic_inst_n_49\,
      \data_out_s_reg[17]_i_2\ => \gen_macc[15].logic_inst_n_50\,
      \data_out_s_reg[18]_i_2\ => \gen_macc[15].logic_inst_n_51\,
      \data_out_s_reg[19]_i_2\ => \gen_macc[15].logic_inst_n_52\,
      \data_out_s_reg[1]_i_2\ => \gen_macc[15].logic_inst_n_34\,
      \data_out_s_reg[20]_i_2\ => \gen_macc[15].logic_inst_n_53\,
      \data_out_s_reg[21]_i_2\ => \gen_macc[15].logic_inst_n_54\,
      \data_out_s_reg[22]_i_2\ => \gen_macc[15].logic_inst_n_55\,
      \data_out_s_reg[23]_i_2\ => \gen_macc[15].logic_inst_n_56\,
      \data_out_s_reg[24]_i_2\ => \gen_macc[15].logic_inst_n_57\,
      \data_out_s_reg[25]_i_2\ => \gen_macc[15].logic_inst_n_58\,
      \data_out_s_reg[26]_i_2\ => \gen_macc[15].logic_inst_n_59\,
      \data_out_s_reg[27]_i_2\ => \gen_macc[15].logic_inst_n_60\,
      \data_out_s_reg[28]_i_2\ => \gen_macc[15].logic_inst_n_61\,
      \data_out_s_reg[29]_i_2\ => \gen_macc[15].logic_inst_n_62\,
      \data_out_s_reg[2]_i_2\ => \gen_macc[15].logic_inst_n_35\,
      \data_out_s_reg[30]_i_2\ => \gen_macc[15].logic_inst_n_63\,
      \data_out_s_reg[31]_i_14_0\(31) => \gen_macc[10].logic_inst_n_33\,
      \data_out_s_reg[31]_i_14_0\(30) => \gen_macc[10].logic_inst_n_34\,
      \data_out_s_reg[31]_i_14_0\(29) => \gen_macc[10].logic_inst_n_35\,
      \data_out_s_reg[31]_i_14_0\(28) => \gen_macc[10].logic_inst_n_36\,
      \data_out_s_reg[31]_i_14_0\(27) => \gen_macc[10].logic_inst_n_37\,
      \data_out_s_reg[31]_i_14_0\(26) => \gen_macc[10].logic_inst_n_38\,
      \data_out_s_reg[31]_i_14_0\(25) => \gen_macc[10].logic_inst_n_39\,
      \data_out_s_reg[31]_i_14_0\(24) => \gen_macc[10].logic_inst_n_40\,
      \data_out_s_reg[31]_i_14_0\(23) => \gen_macc[10].logic_inst_n_41\,
      \data_out_s_reg[31]_i_14_0\(22) => \gen_macc[10].logic_inst_n_42\,
      \data_out_s_reg[31]_i_14_0\(21) => \gen_macc[10].logic_inst_n_43\,
      \data_out_s_reg[31]_i_14_0\(20) => \gen_macc[10].logic_inst_n_44\,
      \data_out_s_reg[31]_i_14_0\(19) => \gen_macc[10].logic_inst_n_45\,
      \data_out_s_reg[31]_i_14_0\(18) => \gen_macc[10].logic_inst_n_46\,
      \data_out_s_reg[31]_i_14_0\(17) => \gen_macc[10].logic_inst_n_47\,
      \data_out_s_reg[31]_i_14_0\(16) => \gen_macc[10].logic_inst_n_48\,
      \data_out_s_reg[31]_i_14_0\(15) => \gen_macc[10].logic_inst_n_49\,
      \data_out_s_reg[31]_i_14_0\(14) => \gen_macc[10].logic_inst_n_50\,
      \data_out_s_reg[31]_i_14_0\(13) => \gen_macc[10].logic_inst_n_51\,
      \data_out_s_reg[31]_i_14_0\(12) => \gen_macc[10].logic_inst_n_52\,
      \data_out_s_reg[31]_i_14_0\(11) => \gen_macc[10].logic_inst_n_53\,
      \data_out_s_reg[31]_i_14_0\(10) => \gen_macc[10].logic_inst_n_54\,
      \data_out_s_reg[31]_i_14_0\(9) => \gen_macc[10].logic_inst_n_55\,
      \data_out_s_reg[31]_i_14_0\(8) => \gen_macc[10].logic_inst_n_56\,
      \data_out_s_reg[31]_i_14_0\(7) => \gen_macc[10].logic_inst_n_57\,
      \data_out_s_reg[31]_i_14_0\(6) => \gen_macc[10].logic_inst_n_58\,
      \data_out_s_reg[31]_i_14_0\(5) => \gen_macc[10].logic_inst_n_59\,
      \data_out_s_reg[31]_i_14_0\(4) => \gen_macc[10].logic_inst_n_60\,
      \data_out_s_reg[31]_i_14_0\(3) => \gen_macc[10].logic_inst_n_61\,
      \data_out_s_reg[31]_i_14_0\(2) => \gen_macc[10].logic_inst_n_62\,
      \data_out_s_reg[31]_i_14_0\(1) => \gen_macc[10].logic_inst_n_63\,
      \data_out_s_reg[31]_i_14_0\(0) => \gen_macc[10].logic_inst_n_64\,
      \data_out_s_reg[31]_i_14_1\(31) => \gen_macc[9].logic_inst_n_33\,
      \data_out_s_reg[31]_i_14_1\(30) => \gen_macc[9].logic_inst_n_34\,
      \data_out_s_reg[31]_i_14_1\(29) => \gen_macc[9].logic_inst_n_35\,
      \data_out_s_reg[31]_i_14_1\(28) => \gen_macc[9].logic_inst_n_36\,
      \data_out_s_reg[31]_i_14_1\(27) => \gen_macc[9].logic_inst_n_37\,
      \data_out_s_reg[31]_i_14_1\(26) => \gen_macc[9].logic_inst_n_38\,
      \data_out_s_reg[31]_i_14_1\(25) => \gen_macc[9].logic_inst_n_39\,
      \data_out_s_reg[31]_i_14_1\(24) => \gen_macc[9].logic_inst_n_40\,
      \data_out_s_reg[31]_i_14_1\(23) => \gen_macc[9].logic_inst_n_41\,
      \data_out_s_reg[31]_i_14_1\(22) => \gen_macc[9].logic_inst_n_42\,
      \data_out_s_reg[31]_i_14_1\(21) => \gen_macc[9].logic_inst_n_43\,
      \data_out_s_reg[31]_i_14_1\(20) => \gen_macc[9].logic_inst_n_44\,
      \data_out_s_reg[31]_i_14_1\(19) => \gen_macc[9].logic_inst_n_45\,
      \data_out_s_reg[31]_i_14_1\(18) => \gen_macc[9].logic_inst_n_46\,
      \data_out_s_reg[31]_i_14_1\(17) => \gen_macc[9].logic_inst_n_47\,
      \data_out_s_reg[31]_i_14_1\(16) => \gen_macc[9].logic_inst_n_48\,
      \data_out_s_reg[31]_i_14_1\(15) => \gen_macc[9].logic_inst_n_49\,
      \data_out_s_reg[31]_i_14_1\(14) => \gen_macc[9].logic_inst_n_50\,
      \data_out_s_reg[31]_i_14_1\(13) => \gen_macc[9].logic_inst_n_51\,
      \data_out_s_reg[31]_i_14_1\(12) => \gen_macc[9].logic_inst_n_52\,
      \data_out_s_reg[31]_i_14_1\(11) => \gen_macc[9].logic_inst_n_53\,
      \data_out_s_reg[31]_i_14_1\(10) => \gen_macc[9].logic_inst_n_54\,
      \data_out_s_reg[31]_i_14_1\(9) => \gen_macc[9].logic_inst_n_55\,
      \data_out_s_reg[31]_i_14_1\(8) => \gen_macc[9].logic_inst_n_56\,
      \data_out_s_reg[31]_i_14_1\(7) => \gen_macc[9].logic_inst_n_57\,
      \data_out_s_reg[31]_i_14_1\(6) => \gen_macc[9].logic_inst_n_58\,
      \data_out_s_reg[31]_i_14_1\(5) => \gen_macc[9].logic_inst_n_59\,
      \data_out_s_reg[31]_i_14_1\(4) => \gen_macc[9].logic_inst_n_60\,
      \data_out_s_reg[31]_i_14_1\(3) => \gen_macc[9].logic_inst_n_61\,
      \data_out_s_reg[31]_i_14_1\(2) => \gen_macc[9].logic_inst_n_62\,
      \data_out_s_reg[31]_i_14_1\(1) => \gen_macc[9].logic_inst_n_63\,
      \data_out_s_reg[31]_i_14_1\(0) => \gen_macc[9].logic_inst_n_64\,
      \data_out_s_reg[31]_i_14_2\(31) => \gen_macc[8].logic_inst_n_33\,
      \data_out_s_reg[31]_i_14_2\(30) => \gen_macc[8].logic_inst_n_34\,
      \data_out_s_reg[31]_i_14_2\(29) => \gen_macc[8].logic_inst_n_35\,
      \data_out_s_reg[31]_i_14_2\(28) => \gen_macc[8].logic_inst_n_36\,
      \data_out_s_reg[31]_i_14_2\(27) => \gen_macc[8].logic_inst_n_37\,
      \data_out_s_reg[31]_i_14_2\(26) => \gen_macc[8].logic_inst_n_38\,
      \data_out_s_reg[31]_i_14_2\(25) => \gen_macc[8].logic_inst_n_39\,
      \data_out_s_reg[31]_i_14_2\(24) => \gen_macc[8].logic_inst_n_40\,
      \data_out_s_reg[31]_i_14_2\(23) => \gen_macc[8].logic_inst_n_41\,
      \data_out_s_reg[31]_i_14_2\(22) => \gen_macc[8].logic_inst_n_42\,
      \data_out_s_reg[31]_i_14_2\(21) => \gen_macc[8].logic_inst_n_43\,
      \data_out_s_reg[31]_i_14_2\(20) => \gen_macc[8].logic_inst_n_44\,
      \data_out_s_reg[31]_i_14_2\(19) => \gen_macc[8].logic_inst_n_45\,
      \data_out_s_reg[31]_i_14_2\(18) => \gen_macc[8].logic_inst_n_46\,
      \data_out_s_reg[31]_i_14_2\(17) => \gen_macc[8].logic_inst_n_47\,
      \data_out_s_reg[31]_i_14_2\(16) => \gen_macc[8].logic_inst_n_48\,
      \data_out_s_reg[31]_i_14_2\(15) => \gen_macc[8].logic_inst_n_49\,
      \data_out_s_reg[31]_i_14_2\(14) => \gen_macc[8].logic_inst_n_50\,
      \data_out_s_reg[31]_i_14_2\(13) => \gen_macc[8].logic_inst_n_51\,
      \data_out_s_reg[31]_i_14_2\(12) => \gen_macc[8].logic_inst_n_52\,
      \data_out_s_reg[31]_i_14_2\(11) => \gen_macc[8].logic_inst_n_53\,
      \data_out_s_reg[31]_i_14_2\(10) => \gen_macc[8].logic_inst_n_54\,
      \data_out_s_reg[31]_i_14_2\(9) => \gen_macc[8].logic_inst_n_55\,
      \data_out_s_reg[31]_i_14_2\(8) => \gen_macc[8].logic_inst_n_56\,
      \data_out_s_reg[31]_i_14_2\(7) => \gen_macc[8].logic_inst_n_57\,
      \data_out_s_reg[31]_i_14_2\(6) => \gen_macc[8].logic_inst_n_58\,
      \data_out_s_reg[31]_i_14_2\(5) => \gen_macc[8].logic_inst_n_59\,
      \data_out_s_reg[31]_i_14_2\(4) => \gen_macc[8].logic_inst_n_60\,
      \data_out_s_reg[31]_i_14_2\(3) => \gen_macc[8].logic_inst_n_61\,
      \data_out_s_reg[31]_i_14_2\(2) => \gen_macc[8].logic_inst_n_62\,
      \data_out_s_reg[31]_i_14_2\(1) => \gen_macc[8].logic_inst_n_63\,
      \data_out_s_reg[31]_i_14_2\(0) => \gen_macc[8].logic_inst_n_64\,
      \data_out_s_reg[31]_i_8\(2 downto 0) => cpt_store_s_reg(2 downto 0),
      \data_out_s_reg[31]_i_8_0\ => \gen_macc[15].logic_inst_n_64\,
      \data_out_s_reg[3]_i_2\ => \gen_macc[15].logic_inst_n_36\,
      \data_out_s_reg[4]_i_2\ => \gen_macc[15].logic_inst_n_37\,
      \data_out_s_reg[5]_i_2\ => \gen_macc[15].logic_inst_n_38\,
      \data_out_s_reg[6]_i_2\ => \gen_macc[15].logic_inst_n_39\,
      \data_out_s_reg[7]_i_2\ => \gen_macc[15].logic_inst_n_40\,
      \data_out_s_reg[8]_i_2\ => \gen_macc[15].logic_inst_n_41\,
      \data_out_s_reg[9]_i_2\ => \gen_macc[15].logic_inst_n_42\,
      data_rst_i => data_rst_i,
      end_s => end_s_48,
      ready_s => ready_s_47,
      ready_s_reg_0(0) => ready_next_s(12),
      res_s0 => res_s0_24,
      res_s_reg_0(29) => \gen_macc[10].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[10].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[10].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[10].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[10].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[10].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[10].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[10].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[10].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[10].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[10].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[10].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[10].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[10].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[10].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[10].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[10].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[10].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[10].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[10].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[10].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[10].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[10].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[10].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[10].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[10].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[10].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[10].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[10].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[10].logic_inst_n_31\
    );
\gen_macc[12].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_2
     port map (
      ACOUT(29) => \gen_macc[12].logic_inst_n_1\,
      ACOUT(28) => \gen_macc[12].logic_inst_n_2\,
      ACOUT(27) => \gen_macc[12].logic_inst_n_3\,
      ACOUT(26) => \gen_macc[12].logic_inst_n_4\,
      ACOUT(25) => \gen_macc[12].logic_inst_n_5\,
      ACOUT(24) => \gen_macc[12].logic_inst_n_6\,
      ACOUT(23) => \gen_macc[12].logic_inst_n_7\,
      ACOUT(22) => \gen_macc[12].logic_inst_n_8\,
      ACOUT(21) => \gen_macc[12].logic_inst_n_9\,
      ACOUT(20) => \gen_macc[12].logic_inst_n_10\,
      ACOUT(19) => \gen_macc[12].logic_inst_n_11\,
      ACOUT(18) => \gen_macc[12].logic_inst_n_12\,
      ACOUT(17) => \gen_macc[12].logic_inst_n_13\,
      ACOUT(16) => \gen_macc[12].logic_inst_n_14\,
      ACOUT(15) => \gen_macc[12].logic_inst_n_15\,
      ACOUT(14) => \gen_macc[12].logic_inst_n_16\,
      ACOUT(13) => \gen_macc[12].logic_inst_n_17\,
      ACOUT(12) => \gen_macc[12].logic_inst_n_18\,
      ACOUT(11) => \gen_macc[12].logic_inst_n_19\,
      ACOUT(10) => \gen_macc[12].logic_inst_n_20\,
      ACOUT(9) => \gen_macc[12].logic_inst_n_21\,
      ACOUT(8) => \gen_macc[12].logic_inst_n_22\,
      ACOUT(7) => \gen_macc[12].logic_inst_n_23\,
      ACOUT(6) => \gen_macc[12].logic_inst_n_24\,
      ACOUT(5) => \gen_macc[12].logic_inst_n_25\,
      ACOUT(4) => \gen_macc[12].logic_inst_n_26\,
      ACOUT(3) => \gen_macc[12].logic_inst_n_27\,
      ACOUT(2) => \gen_macc[12].logic_inst_n_28\,
      ACOUT(1) => \gen_macc[12].logic_inst_n_29\,
      ACOUT(0) => \gen_macc[12].logic_inst_n_30\,
      E(0) => data_out_en_s_23,
      Q(0) => end_next_s_0(13),
      \cpt_store_s_reg[0]_rep\(4 downto 0) => data_en_s(11 downto 7),
      data_clk_i => data_clk_i,
      data_en_o_reg_0 => \gen_macc[12].logic_inst_n_32\,
      data_en_s => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_50,
      \final_res_s_reg[31]_0\(31) => \gen_macc[12].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[12].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[12].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[12].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[12].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[12].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[12].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[12].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[12].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[12].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[12].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[12].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[12].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[12].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[12].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[12].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[12].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[12].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[12].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[12].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[12].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[12].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[12].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[12].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[12].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[12].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[12].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[12].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[12].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[12].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[12].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[12].logic_inst_n_64\,
      ready_s => ready_s_49,
      ready_s_reg_0(0) => ready_next_s(13),
      res_s0 => res_s0_22,
      res_s_reg_0(29) => \gen_macc[11].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[11].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[11].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[11].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[11].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[11].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[11].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[11].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[11].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[11].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[11].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[11].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[11].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[11].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[11].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[11].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[11].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[11].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[11].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[11].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[11].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[11].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[11].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[11].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[11].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[11].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[11].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[11].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[11].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[11].logic_inst_n_31\
    );
\gen_macc[13].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_3
     port map (
      ACOUT(29) => \gen_macc[13].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[13].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[13].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[13].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[13].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[13].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[13].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[13].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[13].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[13].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[13].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[13].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[13].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[13].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[13].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[13].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[13].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[13].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[13].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[13].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[13].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[13].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[13].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[13].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[13].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[13].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[13].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[13].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[13].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[13].logic_inst_n_31\,
      E(0) => data_out_en_s_21,
      Q(0) => end_next_s_0(14),
      data_clk_i => data_clk_i,
      data_en_s(0) => data_en_s(13),
      data_en_s_0 => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_52,
      \final_res_s_reg[31]_0\(31) => \gen_macc[13].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[13].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[13].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[13].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[13].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[13].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[13].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[13].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[13].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[13].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[13].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[13].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[13].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[13].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[13].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[13].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[13].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[13].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[13].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[13].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[13].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[13].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[13].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[13].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[13].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[13].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[13].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[13].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[13].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[13].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[13].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[13].logic_inst_n_64\,
      ready_s => ready_s_51,
      ready_s_reg_0(0) => ready_next_s(14),
      res_s0 => res_s0_20,
      res_s_reg_0(29) => \gen_macc[12].logic_inst_n_1\,
      res_s_reg_0(28) => \gen_macc[12].logic_inst_n_2\,
      res_s_reg_0(27) => \gen_macc[12].logic_inst_n_3\,
      res_s_reg_0(26) => \gen_macc[12].logic_inst_n_4\,
      res_s_reg_0(25) => \gen_macc[12].logic_inst_n_5\,
      res_s_reg_0(24) => \gen_macc[12].logic_inst_n_6\,
      res_s_reg_0(23) => \gen_macc[12].logic_inst_n_7\,
      res_s_reg_0(22) => \gen_macc[12].logic_inst_n_8\,
      res_s_reg_0(21) => \gen_macc[12].logic_inst_n_9\,
      res_s_reg_0(20) => \gen_macc[12].logic_inst_n_10\,
      res_s_reg_0(19) => \gen_macc[12].logic_inst_n_11\,
      res_s_reg_0(18) => \gen_macc[12].logic_inst_n_12\,
      res_s_reg_0(17) => \gen_macc[12].logic_inst_n_13\,
      res_s_reg_0(16) => \gen_macc[12].logic_inst_n_14\,
      res_s_reg_0(15) => \gen_macc[12].logic_inst_n_15\,
      res_s_reg_0(14) => \gen_macc[12].logic_inst_n_16\,
      res_s_reg_0(13) => \gen_macc[12].logic_inst_n_17\,
      res_s_reg_0(12) => \gen_macc[12].logic_inst_n_18\,
      res_s_reg_0(11) => \gen_macc[12].logic_inst_n_19\,
      res_s_reg_0(10) => \gen_macc[12].logic_inst_n_20\,
      res_s_reg_0(9) => \gen_macc[12].logic_inst_n_21\,
      res_s_reg_0(8) => \gen_macc[12].logic_inst_n_22\,
      res_s_reg_0(7) => \gen_macc[12].logic_inst_n_23\,
      res_s_reg_0(6) => \gen_macc[12].logic_inst_n_24\,
      res_s_reg_0(5) => \gen_macc[12].logic_inst_n_25\,
      res_s_reg_0(4) => \gen_macc[12].logic_inst_n_26\,
      res_s_reg_0(3) => \gen_macc[12].logic_inst_n_27\,
      res_s_reg_0(2) => \gen_macc[12].logic_inst_n_28\,
      res_s_reg_0(1) => \gen_macc[12].logic_inst_n_29\,
      res_s_reg_0(0) => \gen_macc[12].logic_inst_n_30\
    );
\gen_macc[14].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_4
     port map (
      ACOUT(29) => \gen_macc[14].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[14].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[14].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[14].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[14].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[14].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[14].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[14].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[14].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[14].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[14].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[14].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[14].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[14].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[14].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[14].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[14].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[14].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[14].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[14].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[14].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[14].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[14].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[14].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[14].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[14].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[14].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[14].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[14].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[14].logic_inst_n_31\,
      E(0) => data_out_en_s_19,
      Q(0) => end_next_s_0(15),
      data_clk_i => data_clk_i,
      data_en_s(0) => data_en_s(14),
      data_en_s_0 => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_54,
      \final_res_s_reg[31]_0\(31) => \gen_macc[14].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[14].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[14].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[14].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[14].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[14].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[14].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[14].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[14].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[14].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[14].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[14].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[14].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[14].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[14].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[14].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[14].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[14].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[14].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[14].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[14].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[14].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[14].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[14].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[14].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[14].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[14].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[14].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[14].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[14].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[14].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[14].logic_inst_n_64\,
      ready_s => ready_s_53,
      ready_s_reg_0(0) => ready_next_s(15),
      res_s0 => res_s0_18,
      res_s_reg_0(29) => \gen_macc[13].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[13].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[13].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[13].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[13].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[13].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[13].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[13].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[13].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[13].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[13].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[13].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[13].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[13].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[13].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[13].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[13].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[13].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[13].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[13].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[13].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[13].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[13].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[13].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[13].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[13].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[13].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[13].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[13].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[13].logic_inst_n_31\
    );
\gen_macc[15].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_5
     port map (
      ACOUT(29) => \gen_macc[15].logic_inst_n_1\,
      ACOUT(28) => \gen_macc[15].logic_inst_n_2\,
      ACOUT(27) => \gen_macc[15].logic_inst_n_3\,
      ACOUT(26) => \gen_macc[15].logic_inst_n_4\,
      ACOUT(25) => \gen_macc[15].logic_inst_n_5\,
      ACOUT(24) => \gen_macc[15].logic_inst_n_6\,
      ACOUT(23) => \gen_macc[15].logic_inst_n_7\,
      ACOUT(22) => \gen_macc[15].logic_inst_n_8\,
      ACOUT(21) => \gen_macc[15].logic_inst_n_9\,
      ACOUT(20) => \gen_macc[15].logic_inst_n_10\,
      ACOUT(19) => \gen_macc[15].logic_inst_n_11\,
      ACOUT(18) => \gen_macc[15].logic_inst_n_12\,
      ACOUT(17) => \gen_macc[15].logic_inst_n_13\,
      ACOUT(16) => \gen_macc[15].logic_inst_n_14\,
      ACOUT(15) => \gen_macc[15].logic_inst_n_15\,
      ACOUT(14) => \gen_macc[15].logic_inst_n_16\,
      ACOUT(13) => \gen_macc[15].logic_inst_n_17\,
      ACOUT(12) => \gen_macc[15].logic_inst_n_18\,
      ACOUT(11) => \gen_macc[15].logic_inst_n_19\,
      ACOUT(10) => \gen_macc[15].logic_inst_n_20\,
      ACOUT(9) => \gen_macc[15].logic_inst_n_21\,
      ACOUT(8) => \gen_macc[15].logic_inst_n_22\,
      ACOUT(7) => \gen_macc[15].logic_inst_n_23\,
      ACOUT(6) => \gen_macc[15].logic_inst_n_24\,
      ACOUT(5) => \gen_macc[15].logic_inst_n_25\,
      ACOUT(4) => \gen_macc[15].logic_inst_n_26\,
      ACOUT(3) => \gen_macc[15].logic_inst_n_27\,
      ACOUT(2) => \gen_macc[15].logic_inst_n_28\,
      ACOUT(1) => \gen_macc[15].logic_inst_n_29\,
      ACOUT(0) => \gen_macc[15].logic_inst_n_30\,
      E(0) => data_out_en_s_17,
      Q(0) => end_next_s_0(16),
      \cpt_store_s_reg[0]_rep\(4 downto 2) => data_en_s(18 downto 16),
      \cpt_store_s_reg[0]_rep\(1 downto 0) => data_en_s(14 downto 13),
      data_clk_i => data_clk_i,
      data_en_o_reg_0 => \gen_macc[15].logic_inst_n_32\,
      data_en_s => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      \data_out_s_reg[0]_i_6\ => \cpt_store_s_reg[1]_rep_n_0\,
      \data_out_s_reg[10]_i_6\ => \cpt_store_s_reg[0]_rep_n_0\,
      \data_out_s_reg[31]_i_14\(31) => \gen_macc[14].logic_inst_n_33\,
      \data_out_s_reg[31]_i_14\(30) => \gen_macc[14].logic_inst_n_34\,
      \data_out_s_reg[31]_i_14\(29) => \gen_macc[14].logic_inst_n_35\,
      \data_out_s_reg[31]_i_14\(28) => \gen_macc[14].logic_inst_n_36\,
      \data_out_s_reg[31]_i_14\(27) => \gen_macc[14].logic_inst_n_37\,
      \data_out_s_reg[31]_i_14\(26) => \gen_macc[14].logic_inst_n_38\,
      \data_out_s_reg[31]_i_14\(25) => \gen_macc[14].logic_inst_n_39\,
      \data_out_s_reg[31]_i_14\(24) => \gen_macc[14].logic_inst_n_40\,
      \data_out_s_reg[31]_i_14\(23) => \gen_macc[14].logic_inst_n_41\,
      \data_out_s_reg[31]_i_14\(22) => \gen_macc[14].logic_inst_n_42\,
      \data_out_s_reg[31]_i_14\(21) => \gen_macc[14].logic_inst_n_43\,
      \data_out_s_reg[31]_i_14\(20) => \gen_macc[14].logic_inst_n_44\,
      \data_out_s_reg[31]_i_14\(19) => \gen_macc[14].logic_inst_n_45\,
      \data_out_s_reg[31]_i_14\(18) => \gen_macc[14].logic_inst_n_46\,
      \data_out_s_reg[31]_i_14\(17) => \gen_macc[14].logic_inst_n_47\,
      \data_out_s_reg[31]_i_14\(16) => \gen_macc[14].logic_inst_n_48\,
      \data_out_s_reg[31]_i_14\(15) => \gen_macc[14].logic_inst_n_49\,
      \data_out_s_reg[31]_i_14\(14) => \gen_macc[14].logic_inst_n_50\,
      \data_out_s_reg[31]_i_14\(13) => \gen_macc[14].logic_inst_n_51\,
      \data_out_s_reg[31]_i_14\(12) => \gen_macc[14].logic_inst_n_52\,
      \data_out_s_reg[31]_i_14\(11) => \gen_macc[14].logic_inst_n_53\,
      \data_out_s_reg[31]_i_14\(10) => \gen_macc[14].logic_inst_n_54\,
      \data_out_s_reg[31]_i_14\(9) => \gen_macc[14].logic_inst_n_55\,
      \data_out_s_reg[31]_i_14\(8) => \gen_macc[14].logic_inst_n_56\,
      \data_out_s_reg[31]_i_14\(7) => \gen_macc[14].logic_inst_n_57\,
      \data_out_s_reg[31]_i_14\(6) => \gen_macc[14].logic_inst_n_58\,
      \data_out_s_reg[31]_i_14\(5) => \gen_macc[14].logic_inst_n_59\,
      \data_out_s_reg[31]_i_14\(4) => \gen_macc[14].logic_inst_n_60\,
      \data_out_s_reg[31]_i_14\(3) => \gen_macc[14].logic_inst_n_61\,
      \data_out_s_reg[31]_i_14\(2) => \gen_macc[14].logic_inst_n_62\,
      \data_out_s_reg[31]_i_14\(1) => \gen_macc[14].logic_inst_n_63\,
      \data_out_s_reg[31]_i_14\(0) => \gen_macc[14].logic_inst_n_64\,
      \data_out_s_reg[31]_i_14_0\(31) => \gen_macc[13].logic_inst_n_33\,
      \data_out_s_reg[31]_i_14_0\(30) => \gen_macc[13].logic_inst_n_34\,
      \data_out_s_reg[31]_i_14_0\(29) => \gen_macc[13].logic_inst_n_35\,
      \data_out_s_reg[31]_i_14_0\(28) => \gen_macc[13].logic_inst_n_36\,
      \data_out_s_reg[31]_i_14_0\(27) => \gen_macc[13].logic_inst_n_37\,
      \data_out_s_reg[31]_i_14_0\(26) => \gen_macc[13].logic_inst_n_38\,
      \data_out_s_reg[31]_i_14_0\(25) => \gen_macc[13].logic_inst_n_39\,
      \data_out_s_reg[31]_i_14_0\(24) => \gen_macc[13].logic_inst_n_40\,
      \data_out_s_reg[31]_i_14_0\(23) => \gen_macc[13].logic_inst_n_41\,
      \data_out_s_reg[31]_i_14_0\(22) => \gen_macc[13].logic_inst_n_42\,
      \data_out_s_reg[31]_i_14_0\(21) => \gen_macc[13].logic_inst_n_43\,
      \data_out_s_reg[31]_i_14_0\(20) => \gen_macc[13].logic_inst_n_44\,
      \data_out_s_reg[31]_i_14_0\(19) => \gen_macc[13].logic_inst_n_45\,
      \data_out_s_reg[31]_i_14_0\(18) => \gen_macc[13].logic_inst_n_46\,
      \data_out_s_reg[31]_i_14_0\(17) => \gen_macc[13].logic_inst_n_47\,
      \data_out_s_reg[31]_i_14_0\(16) => \gen_macc[13].logic_inst_n_48\,
      \data_out_s_reg[31]_i_14_0\(15) => \gen_macc[13].logic_inst_n_49\,
      \data_out_s_reg[31]_i_14_0\(14) => \gen_macc[13].logic_inst_n_50\,
      \data_out_s_reg[31]_i_14_0\(13) => \gen_macc[13].logic_inst_n_51\,
      \data_out_s_reg[31]_i_14_0\(12) => \gen_macc[13].logic_inst_n_52\,
      \data_out_s_reg[31]_i_14_0\(11) => \gen_macc[13].logic_inst_n_53\,
      \data_out_s_reg[31]_i_14_0\(10) => \gen_macc[13].logic_inst_n_54\,
      \data_out_s_reg[31]_i_14_0\(9) => \gen_macc[13].logic_inst_n_55\,
      \data_out_s_reg[31]_i_14_0\(8) => \gen_macc[13].logic_inst_n_56\,
      \data_out_s_reg[31]_i_14_0\(7) => \gen_macc[13].logic_inst_n_57\,
      \data_out_s_reg[31]_i_14_0\(6) => \gen_macc[13].logic_inst_n_58\,
      \data_out_s_reg[31]_i_14_0\(5) => \gen_macc[13].logic_inst_n_59\,
      \data_out_s_reg[31]_i_14_0\(4) => \gen_macc[13].logic_inst_n_60\,
      \data_out_s_reg[31]_i_14_0\(3) => \gen_macc[13].logic_inst_n_61\,
      \data_out_s_reg[31]_i_14_0\(2) => \gen_macc[13].logic_inst_n_62\,
      \data_out_s_reg[31]_i_14_0\(1) => \gen_macc[13].logic_inst_n_63\,
      \data_out_s_reg[31]_i_14_0\(0) => \gen_macc[13].logic_inst_n_64\,
      \data_out_s_reg[31]_i_14_1\(1 downto 0) => cpt_store_s_reg(1 downto 0),
      \data_out_s_reg[31]_i_14_2\(31) => \gen_macc[12].logic_inst_n_33\,
      \data_out_s_reg[31]_i_14_2\(30) => \gen_macc[12].logic_inst_n_34\,
      \data_out_s_reg[31]_i_14_2\(29) => \gen_macc[12].logic_inst_n_35\,
      \data_out_s_reg[31]_i_14_2\(28) => \gen_macc[12].logic_inst_n_36\,
      \data_out_s_reg[31]_i_14_2\(27) => \gen_macc[12].logic_inst_n_37\,
      \data_out_s_reg[31]_i_14_2\(26) => \gen_macc[12].logic_inst_n_38\,
      \data_out_s_reg[31]_i_14_2\(25) => \gen_macc[12].logic_inst_n_39\,
      \data_out_s_reg[31]_i_14_2\(24) => \gen_macc[12].logic_inst_n_40\,
      \data_out_s_reg[31]_i_14_2\(23) => \gen_macc[12].logic_inst_n_41\,
      \data_out_s_reg[31]_i_14_2\(22) => \gen_macc[12].logic_inst_n_42\,
      \data_out_s_reg[31]_i_14_2\(21) => \gen_macc[12].logic_inst_n_43\,
      \data_out_s_reg[31]_i_14_2\(20) => \gen_macc[12].logic_inst_n_44\,
      \data_out_s_reg[31]_i_14_2\(19) => \gen_macc[12].logic_inst_n_45\,
      \data_out_s_reg[31]_i_14_2\(18) => \gen_macc[12].logic_inst_n_46\,
      \data_out_s_reg[31]_i_14_2\(17) => \gen_macc[12].logic_inst_n_47\,
      \data_out_s_reg[31]_i_14_2\(16) => \gen_macc[12].logic_inst_n_48\,
      \data_out_s_reg[31]_i_14_2\(15) => \gen_macc[12].logic_inst_n_49\,
      \data_out_s_reg[31]_i_14_2\(14) => \gen_macc[12].logic_inst_n_50\,
      \data_out_s_reg[31]_i_14_2\(13) => \gen_macc[12].logic_inst_n_51\,
      \data_out_s_reg[31]_i_14_2\(12) => \gen_macc[12].logic_inst_n_52\,
      \data_out_s_reg[31]_i_14_2\(11) => \gen_macc[12].logic_inst_n_53\,
      \data_out_s_reg[31]_i_14_2\(10) => \gen_macc[12].logic_inst_n_54\,
      \data_out_s_reg[31]_i_14_2\(9) => \gen_macc[12].logic_inst_n_55\,
      \data_out_s_reg[31]_i_14_2\(8) => \gen_macc[12].logic_inst_n_56\,
      \data_out_s_reg[31]_i_14_2\(7) => \gen_macc[12].logic_inst_n_57\,
      \data_out_s_reg[31]_i_14_2\(6) => \gen_macc[12].logic_inst_n_58\,
      \data_out_s_reg[31]_i_14_2\(5) => \gen_macc[12].logic_inst_n_59\,
      \data_out_s_reg[31]_i_14_2\(4) => \gen_macc[12].logic_inst_n_60\,
      \data_out_s_reg[31]_i_14_2\(3) => \gen_macc[12].logic_inst_n_61\,
      \data_out_s_reg[31]_i_14_2\(2) => \gen_macc[12].logic_inst_n_62\,
      \data_out_s_reg[31]_i_14_2\(1) => \gen_macc[12].logic_inst_n_63\,
      \data_out_s_reg[31]_i_14_2\(0) => \gen_macc[12].logic_inst_n_64\,
      data_rst_i => data_rst_i,
      end_s => end_s_56,
      \final_res_s_reg[0]_0\ => \gen_macc[15].logic_inst_n_33\,
      \final_res_s_reg[10]_0\ => \gen_macc[15].logic_inst_n_43\,
      \final_res_s_reg[11]_0\ => \gen_macc[15].logic_inst_n_44\,
      \final_res_s_reg[12]_0\ => \gen_macc[15].logic_inst_n_45\,
      \final_res_s_reg[13]_0\ => \gen_macc[15].logic_inst_n_46\,
      \final_res_s_reg[14]_0\ => \gen_macc[15].logic_inst_n_47\,
      \final_res_s_reg[15]_0\ => \gen_macc[15].logic_inst_n_48\,
      \final_res_s_reg[16]_0\ => \gen_macc[15].logic_inst_n_49\,
      \final_res_s_reg[17]_0\ => \gen_macc[15].logic_inst_n_50\,
      \final_res_s_reg[18]_0\ => \gen_macc[15].logic_inst_n_51\,
      \final_res_s_reg[19]_0\ => \gen_macc[15].logic_inst_n_52\,
      \final_res_s_reg[1]_0\ => \gen_macc[15].logic_inst_n_34\,
      \final_res_s_reg[20]_0\ => \gen_macc[15].logic_inst_n_53\,
      \final_res_s_reg[21]_0\ => \gen_macc[15].logic_inst_n_54\,
      \final_res_s_reg[22]_0\ => \gen_macc[15].logic_inst_n_55\,
      \final_res_s_reg[23]_0\ => \gen_macc[15].logic_inst_n_56\,
      \final_res_s_reg[24]_0\ => \gen_macc[15].logic_inst_n_57\,
      \final_res_s_reg[25]_0\ => \gen_macc[15].logic_inst_n_58\,
      \final_res_s_reg[26]_0\ => \gen_macc[15].logic_inst_n_59\,
      \final_res_s_reg[27]_0\ => \gen_macc[15].logic_inst_n_60\,
      \final_res_s_reg[28]_0\ => \gen_macc[15].logic_inst_n_61\,
      \final_res_s_reg[29]_0\ => \gen_macc[15].logic_inst_n_62\,
      \final_res_s_reg[2]_0\ => \gen_macc[15].logic_inst_n_35\,
      \final_res_s_reg[30]_0\ => \gen_macc[15].logic_inst_n_63\,
      \final_res_s_reg[31]_0\ => \gen_macc[15].logic_inst_n_64\,
      \final_res_s_reg[3]_0\ => \gen_macc[15].logic_inst_n_36\,
      \final_res_s_reg[4]_0\ => \gen_macc[15].logic_inst_n_37\,
      \final_res_s_reg[5]_0\ => \gen_macc[15].logic_inst_n_38\,
      \final_res_s_reg[6]_0\ => \gen_macc[15].logic_inst_n_39\,
      \final_res_s_reg[7]_0\ => \gen_macc[15].logic_inst_n_40\,
      \final_res_s_reg[8]_0\ => \gen_macc[15].logic_inst_n_41\,
      \final_res_s_reg[9]_0\ => \gen_macc[15].logic_inst_n_42\,
      ready_s => ready_s_55,
      ready_s_reg_0(0) => ready_next_s(16),
      res_s0 => res_s0_16,
      res_s_reg_0(29) => \gen_macc[14].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[14].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[14].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[14].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[14].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[14].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[14].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[14].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[14].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[14].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[14].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[14].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[14].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[14].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[14].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[14].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[14].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[14].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[14].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[14].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[14].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[14].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[14].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[14].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[14].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[14].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[14].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[14].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[14].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[14].logic_inst_n_31\
    );
\gen_macc[16].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_6
     port map (
      ACOUT(29) => \gen_macc[16].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[16].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[16].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[16].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[16].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[16].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[16].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[16].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[16].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[16].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[16].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[16].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[16].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[16].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[16].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[16].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[16].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[16].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[16].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[16].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[16].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[16].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[16].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[16].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[16].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[16].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[16].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[16].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[16].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[16].logic_inst_n_31\,
      E(0) => data_out_en_s_15,
      Q(0) => end_next_s_0(17),
      data_clk_i => data_clk_i,
      data_en_o_reg_0(0) => data_en_s(16),
      data_en_s => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_58,
      \final_res_s_reg[31]_0\(31) => \gen_macc[16].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[16].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[16].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[16].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[16].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[16].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[16].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[16].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[16].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[16].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[16].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[16].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[16].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[16].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[16].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[16].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[16].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[16].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[16].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[16].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[16].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[16].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[16].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[16].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[16].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[16].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[16].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[16].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[16].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[16].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[16].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[16].logic_inst_n_64\,
      ready_s => ready_s_57,
      ready_s_reg_0(0) => ready_next_s(17),
      res_s0 => res_s0_14,
      res_s_reg_0(29) => \gen_macc[15].logic_inst_n_1\,
      res_s_reg_0(28) => \gen_macc[15].logic_inst_n_2\,
      res_s_reg_0(27) => \gen_macc[15].logic_inst_n_3\,
      res_s_reg_0(26) => \gen_macc[15].logic_inst_n_4\,
      res_s_reg_0(25) => \gen_macc[15].logic_inst_n_5\,
      res_s_reg_0(24) => \gen_macc[15].logic_inst_n_6\,
      res_s_reg_0(23) => \gen_macc[15].logic_inst_n_7\,
      res_s_reg_0(22) => \gen_macc[15].logic_inst_n_8\,
      res_s_reg_0(21) => \gen_macc[15].logic_inst_n_9\,
      res_s_reg_0(20) => \gen_macc[15].logic_inst_n_10\,
      res_s_reg_0(19) => \gen_macc[15].logic_inst_n_11\,
      res_s_reg_0(18) => \gen_macc[15].logic_inst_n_12\,
      res_s_reg_0(17) => \gen_macc[15].logic_inst_n_13\,
      res_s_reg_0(16) => \gen_macc[15].logic_inst_n_14\,
      res_s_reg_0(15) => \gen_macc[15].logic_inst_n_15\,
      res_s_reg_0(14) => \gen_macc[15].logic_inst_n_16\,
      res_s_reg_0(13) => \gen_macc[15].logic_inst_n_17\,
      res_s_reg_0(12) => \gen_macc[15].logic_inst_n_18\,
      res_s_reg_0(11) => \gen_macc[15].logic_inst_n_19\,
      res_s_reg_0(10) => \gen_macc[15].logic_inst_n_20\,
      res_s_reg_0(9) => \gen_macc[15].logic_inst_n_21\,
      res_s_reg_0(8) => \gen_macc[15].logic_inst_n_22\,
      res_s_reg_0(7) => \gen_macc[15].logic_inst_n_23\,
      res_s_reg_0(6) => \gen_macc[15].logic_inst_n_24\,
      res_s_reg_0(5) => \gen_macc[15].logic_inst_n_25\,
      res_s_reg_0(4) => \gen_macc[15].logic_inst_n_26\,
      res_s_reg_0(3) => \gen_macc[15].logic_inst_n_27\,
      res_s_reg_0(2) => \gen_macc[15].logic_inst_n_28\,
      res_s_reg_0(1) => \gen_macc[15].logic_inst_n_29\,
      res_s_reg_0(0) => \gen_macc[15].logic_inst_n_30\
    );
\gen_macc[17].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_7
     port map (
      ACOUT(29) => \gen_macc[17].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[17].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[17].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[17].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[17].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[17].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[17].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[17].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[17].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[17].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[17].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[17].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[17].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[17].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[17].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[17].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[17].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[17].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[17].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[17].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[17].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[17].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[17].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[17].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[17].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[17].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[17].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[17].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[17].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[17].logic_inst_n_31\,
      E(0) => data_out_en_s_13,
      Q(0) => end_next_s_0(18),
      data_clk_i => data_clk_i,
      data_en_o_reg_0(0) => data_en_s(17),
      data_en_s => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_60,
      \final_res_s_reg[31]_0\(31) => \gen_macc[17].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[17].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[17].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[17].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[17].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[17].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[17].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[17].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[17].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[17].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[17].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[17].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[17].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[17].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[17].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[17].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[17].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[17].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[17].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[17].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[17].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[17].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[17].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[17].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[17].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[17].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[17].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[17].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[17].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[17].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[17].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[17].logic_inst_n_64\,
      ready_s => ready_s_59,
      ready_s_reg_0(0) => ready_next_s(18),
      res_s0 => res_s0_12,
      res_s_reg_0(29) => \gen_macc[16].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[16].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[16].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[16].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[16].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[16].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[16].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[16].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[16].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[16].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[16].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[16].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[16].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[16].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[16].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[16].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[16].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[16].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[16].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[16].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[16].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[16].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[16].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[16].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[16].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[16].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[16].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[16].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[16].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[16].logic_inst_n_31\
    );
\gen_macc[18].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_8
     port map (
      ACOUT(29) => \gen_macc[18].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[18].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[18].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[18].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[18].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[18].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[18].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[18].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[18].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[18].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[18].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[18].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[18].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[18].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[18].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[18].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[18].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[18].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[18].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[18].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[18].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[18].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[18].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[18].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[18].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[18].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[18].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[18].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[18].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[18].logic_inst_n_31\,
      E(0) => data_out_en_s_11,
      Q(0) => end_next_s_0(19),
      data_clk_i => data_clk_i,
      data_en_o_reg_0(0) => data_en_s(18),
      data_en_s => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_62,
      \final_res_s_reg[31]_0\(31) => \gen_macc[18].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[18].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[18].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[18].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[18].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[18].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[18].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[18].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[18].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[18].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[18].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[18].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[18].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[18].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[18].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[18].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[18].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[18].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[18].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[18].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[18].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[18].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[18].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[18].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[18].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[18].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[18].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[18].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[18].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[18].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[18].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[18].logic_inst_n_64\,
      ready_s => ready_s_61,
      ready_s_reg_0(0) => ready_next_s(19),
      res_s0 => res_s0_10,
      res_s_reg_0(29) => \gen_macc[17].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[17].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[17].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[17].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[17].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[17].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[17].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[17].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[17].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[17].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[17].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[17].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[17].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[17].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[17].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[17].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[17].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[17].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[17].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[17].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[17].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[17].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[17].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[17].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[17].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[17].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[17].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[17].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[17].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[17].logic_inst_n_31\
    );
\gen_macc[19].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_9
     port map (
      ACOUT(29) => \gen_macc[19].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[19].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[19].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[19].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[19].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[19].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[19].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[19].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[19].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[19].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[19].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[19].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[19].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[19].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[19].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[19].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[19].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[19].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[19].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[19].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[19].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[19].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[19].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[19].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[19].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[19].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[19].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[19].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[19].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[19].logic_inst_n_31\,
      E(0) => data_out_en_s_9,
      Q(0) => end_next_s_0(20),
      data_clk_i => data_clk_i,
      data_en_s(0) => data_en_s(19),
      data_en_s_0 => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      \data_out_s_reg[10]\(1 downto 0) => cpt_store_s_reg(1 downto 0),
      \data_out_s_reg[31]\(31) => \gen_macc[18].logic_inst_n_33\,
      \data_out_s_reg[31]\(30) => \gen_macc[18].logic_inst_n_34\,
      \data_out_s_reg[31]\(29) => \gen_macc[18].logic_inst_n_35\,
      \data_out_s_reg[31]\(28) => \gen_macc[18].logic_inst_n_36\,
      \data_out_s_reg[31]\(27) => \gen_macc[18].logic_inst_n_37\,
      \data_out_s_reg[31]\(26) => \gen_macc[18].logic_inst_n_38\,
      \data_out_s_reg[31]\(25) => \gen_macc[18].logic_inst_n_39\,
      \data_out_s_reg[31]\(24) => \gen_macc[18].logic_inst_n_40\,
      \data_out_s_reg[31]\(23) => \gen_macc[18].logic_inst_n_41\,
      \data_out_s_reg[31]\(22) => \gen_macc[18].logic_inst_n_42\,
      \data_out_s_reg[31]\(21) => \gen_macc[18].logic_inst_n_43\,
      \data_out_s_reg[31]\(20) => \gen_macc[18].logic_inst_n_44\,
      \data_out_s_reg[31]\(19) => \gen_macc[18].logic_inst_n_45\,
      \data_out_s_reg[31]\(18) => \gen_macc[18].logic_inst_n_46\,
      \data_out_s_reg[31]\(17) => \gen_macc[18].logic_inst_n_47\,
      \data_out_s_reg[31]\(16) => \gen_macc[18].logic_inst_n_48\,
      \data_out_s_reg[31]\(15) => \gen_macc[18].logic_inst_n_49\,
      \data_out_s_reg[31]\(14) => \gen_macc[18].logic_inst_n_50\,
      \data_out_s_reg[31]\(13) => \gen_macc[18].logic_inst_n_51\,
      \data_out_s_reg[31]\(12) => \gen_macc[18].logic_inst_n_52\,
      \data_out_s_reg[31]\(11) => \gen_macc[18].logic_inst_n_53\,
      \data_out_s_reg[31]\(10) => \gen_macc[18].logic_inst_n_54\,
      \data_out_s_reg[31]\(9) => \gen_macc[18].logic_inst_n_55\,
      \data_out_s_reg[31]\(8) => \gen_macc[18].logic_inst_n_56\,
      \data_out_s_reg[31]\(7) => \gen_macc[18].logic_inst_n_57\,
      \data_out_s_reg[31]\(6) => \gen_macc[18].logic_inst_n_58\,
      \data_out_s_reg[31]\(5) => \gen_macc[18].logic_inst_n_59\,
      \data_out_s_reg[31]\(4) => \gen_macc[18].logic_inst_n_60\,
      \data_out_s_reg[31]\(3) => \gen_macc[18].logic_inst_n_61\,
      \data_out_s_reg[31]\(2) => \gen_macc[18].logic_inst_n_62\,
      \data_out_s_reg[31]\(1) => \gen_macc[18].logic_inst_n_63\,
      \data_out_s_reg[31]\(0) => \gen_macc[18].logic_inst_n_64\,
      \data_out_s_reg[31]_0\(31) => \gen_macc[17].logic_inst_n_33\,
      \data_out_s_reg[31]_0\(30) => \gen_macc[17].logic_inst_n_34\,
      \data_out_s_reg[31]_0\(29) => \gen_macc[17].logic_inst_n_35\,
      \data_out_s_reg[31]_0\(28) => \gen_macc[17].logic_inst_n_36\,
      \data_out_s_reg[31]_0\(27) => \gen_macc[17].logic_inst_n_37\,
      \data_out_s_reg[31]_0\(26) => \gen_macc[17].logic_inst_n_38\,
      \data_out_s_reg[31]_0\(25) => \gen_macc[17].logic_inst_n_39\,
      \data_out_s_reg[31]_0\(24) => \gen_macc[17].logic_inst_n_40\,
      \data_out_s_reg[31]_0\(23) => \gen_macc[17].logic_inst_n_41\,
      \data_out_s_reg[31]_0\(22) => \gen_macc[17].logic_inst_n_42\,
      \data_out_s_reg[31]_0\(21) => \gen_macc[17].logic_inst_n_43\,
      \data_out_s_reg[31]_0\(20) => \gen_macc[17].logic_inst_n_44\,
      \data_out_s_reg[31]_0\(19) => \gen_macc[17].logic_inst_n_45\,
      \data_out_s_reg[31]_0\(18) => \gen_macc[17].logic_inst_n_46\,
      \data_out_s_reg[31]_0\(17) => \gen_macc[17].logic_inst_n_47\,
      \data_out_s_reg[31]_0\(16) => \gen_macc[17].logic_inst_n_48\,
      \data_out_s_reg[31]_0\(15) => \gen_macc[17].logic_inst_n_49\,
      \data_out_s_reg[31]_0\(14) => \gen_macc[17].logic_inst_n_50\,
      \data_out_s_reg[31]_0\(13) => \gen_macc[17].logic_inst_n_51\,
      \data_out_s_reg[31]_0\(12) => \gen_macc[17].logic_inst_n_52\,
      \data_out_s_reg[31]_0\(11) => \gen_macc[17].logic_inst_n_53\,
      \data_out_s_reg[31]_0\(10) => \gen_macc[17].logic_inst_n_54\,
      \data_out_s_reg[31]_0\(9) => \gen_macc[17].logic_inst_n_55\,
      \data_out_s_reg[31]_0\(8) => \gen_macc[17].logic_inst_n_56\,
      \data_out_s_reg[31]_0\(7) => \gen_macc[17].logic_inst_n_57\,
      \data_out_s_reg[31]_0\(6) => \gen_macc[17].logic_inst_n_58\,
      \data_out_s_reg[31]_0\(5) => \gen_macc[17].logic_inst_n_59\,
      \data_out_s_reg[31]_0\(4) => \gen_macc[17].logic_inst_n_60\,
      \data_out_s_reg[31]_0\(3) => \gen_macc[17].logic_inst_n_61\,
      \data_out_s_reg[31]_0\(2) => \gen_macc[17].logic_inst_n_62\,
      \data_out_s_reg[31]_0\(1) => \gen_macc[17].logic_inst_n_63\,
      \data_out_s_reg[31]_0\(0) => \gen_macc[17].logic_inst_n_64\,
      \data_out_s_reg[31]_1\(31) => \gen_macc[16].logic_inst_n_33\,
      \data_out_s_reg[31]_1\(30) => \gen_macc[16].logic_inst_n_34\,
      \data_out_s_reg[31]_1\(29) => \gen_macc[16].logic_inst_n_35\,
      \data_out_s_reg[31]_1\(28) => \gen_macc[16].logic_inst_n_36\,
      \data_out_s_reg[31]_1\(27) => \gen_macc[16].logic_inst_n_37\,
      \data_out_s_reg[31]_1\(26) => \gen_macc[16].logic_inst_n_38\,
      \data_out_s_reg[31]_1\(25) => \gen_macc[16].logic_inst_n_39\,
      \data_out_s_reg[31]_1\(24) => \gen_macc[16].logic_inst_n_40\,
      \data_out_s_reg[31]_1\(23) => \gen_macc[16].logic_inst_n_41\,
      \data_out_s_reg[31]_1\(22) => \gen_macc[16].logic_inst_n_42\,
      \data_out_s_reg[31]_1\(21) => \gen_macc[16].logic_inst_n_43\,
      \data_out_s_reg[31]_1\(20) => \gen_macc[16].logic_inst_n_44\,
      \data_out_s_reg[31]_1\(19) => \gen_macc[16].logic_inst_n_45\,
      \data_out_s_reg[31]_1\(18) => \gen_macc[16].logic_inst_n_46\,
      \data_out_s_reg[31]_1\(17) => \gen_macc[16].logic_inst_n_47\,
      \data_out_s_reg[31]_1\(16) => \gen_macc[16].logic_inst_n_48\,
      \data_out_s_reg[31]_1\(15) => \gen_macc[16].logic_inst_n_49\,
      \data_out_s_reg[31]_1\(14) => \gen_macc[16].logic_inst_n_50\,
      \data_out_s_reg[31]_1\(13) => \gen_macc[16].logic_inst_n_51\,
      \data_out_s_reg[31]_1\(12) => \gen_macc[16].logic_inst_n_52\,
      \data_out_s_reg[31]_1\(11) => \gen_macc[16].logic_inst_n_53\,
      \data_out_s_reg[31]_1\(10) => \gen_macc[16].logic_inst_n_54\,
      \data_out_s_reg[31]_1\(9) => \gen_macc[16].logic_inst_n_55\,
      \data_out_s_reg[31]_1\(8) => \gen_macc[16].logic_inst_n_56\,
      \data_out_s_reg[31]_1\(7) => \gen_macc[16].logic_inst_n_57\,
      \data_out_s_reg[31]_1\(6) => \gen_macc[16].logic_inst_n_58\,
      \data_out_s_reg[31]_1\(5) => \gen_macc[16].logic_inst_n_59\,
      \data_out_s_reg[31]_1\(4) => \gen_macc[16].logic_inst_n_60\,
      \data_out_s_reg[31]_1\(3) => \gen_macc[16].logic_inst_n_61\,
      \data_out_s_reg[31]_1\(2) => \gen_macc[16].logic_inst_n_62\,
      \data_out_s_reg[31]_1\(1) => \gen_macc[16].logic_inst_n_63\,
      \data_out_s_reg[31]_1\(0) => \gen_macc[16].logic_inst_n_64\,
      \data_out_s_reg[31]_2\ => \cpt_store_s_reg[0]_rep_n_0\,
      \data_out_s_reg[9]\ => \cpt_store_s_reg[1]_rep_n_0\,
      data_rst_i => data_rst_i,
      end_s => end_s_64,
      \final_res_s_reg[0]_0\ => \gen_macc[19].logic_inst_n_33\,
      \final_res_s_reg[10]_0\ => \gen_macc[19].logic_inst_n_43\,
      \final_res_s_reg[11]_0\ => \gen_macc[19].logic_inst_n_44\,
      \final_res_s_reg[12]_0\ => \gen_macc[19].logic_inst_n_45\,
      \final_res_s_reg[13]_0\ => \gen_macc[19].logic_inst_n_46\,
      \final_res_s_reg[14]_0\ => \gen_macc[19].logic_inst_n_47\,
      \final_res_s_reg[15]_0\ => \gen_macc[19].logic_inst_n_48\,
      \final_res_s_reg[16]_0\ => \gen_macc[19].logic_inst_n_49\,
      \final_res_s_reg[17]_0\ => \gen_macc[19].logic_inst_n_50\,
      \final_res_s_reg[18]_0\ => \gen_macc[19].logic_inst_n_51\,
      \final_res_s_reg[19]_0\ => \gen_macc[19].logic_inst_n_52\,
      \final_res_s_reg[1]_0\ => \gen_macc[19].logic_inst_n_34\,
      \final_res_s_reg[20]_0\ => \gen_macc[19].logic_inst_n_53\,
      \final_res_s_reg[21]_0\ => \gen_macc[19].logic_inst_n_54\,
      \final_res_s_reg[22]_0\ => \gen_macc[19].logic_inst_n_55\,
      \final_res_s_reg[23]_0\ => \gen_macc[19].logic_inst_n_56\,
      \final_res_s_reg[24]_0\ => \gen_macc[19].logic_inst_n_57\,
      \final_res_s_reg[25]_0\ => \gen_macc[19].logic_inst_n_58\,
      \final_res_s_reg[26]_0\ => \gen_macc[19].logic_inst_n_59\,
      \final_res_s_reg[27]_0\ => \gen_macc[19].logic_inst_n_60\,
      \final_res_s_reg[28]_0\ => \gen_macc[19].logic_inst_n_61\,
      \final_res_s_reg[29]_0\ => \gen_macc[19].logic_inst_n_62\,
      \final_res_s_reg[2]_0\ => \gen_macc[19].logic_inst_n_35\,
      \final_res_s_reg[30]_0\ => \gen_macc[19].logic_inst_n_63\,
      \final_res_s_reg[31]_0\ => \gen_macc[19].logic_inst_n_64\,
      \final_res_s_reg[3]_0\ => \gen_macc[19].logic_inst_n_36\,
      \final_res_s_reg[4]_0\ => \gen_macc[19].logic_inst_n_37\,
      \final_res_s_reg[5]_0\ => \gen_macc[19].logic_inst_n_38\,
      \final_res_s_reg[6]_0\ => \gen_macc[19].logic_inst_n_39\,
      \final_res_s_reg[7]_0\ => \gen_macc[19].logic_inst_n_40\,
      \final_res_s_reg[8]_0\ => \gen_macc[19].logic_inst_n_41\,
      \final_res_s_reg[9]_0\ => \gen_macc[19].logic_inst_n_42\,
      ready_s => ready_s_63,
      ready_s_reg_0(0) => ready_next_s(20),
      res_s0 => res_s0_8,
      res_s_reg_0(29) => \gen_macc[18].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[18].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[18].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[18].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[18].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[18].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[18].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[18].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[18].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[18].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[18].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[18].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[18].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[18].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[18].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[18].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[18].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[18].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[18].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[18].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[18].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[18].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[18].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[18].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[18].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[18].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[18].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[18].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[18].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[18].logic_inst_n_31\
    );
\gen_macc[1].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_10
     port map (
      ACOUT(29) => \gen_macc[1].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[1].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[1].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[1].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[1].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[1].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[1].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[1].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[1].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[1].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[1].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[1].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[1].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[1].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[1].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[1].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[1].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[1].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[1].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[1].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[1].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[1].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[1].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[1].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[1].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[1].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[1].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[1].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[1].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[1].logic_inst_n_31\,
      DOBDO(15 downto 0) => coeff_s(15 downto 0),
      E(0) => data_out_en_s_45,
      Q(0) => end_next_s_0(2),
      data_clk_i => data_clk_i,
      data_en_s(0) => data_en_s(1),
      data_en_s_0 => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_66,
      \final_res_s_reg[31]_0\(31) => \gen_macc[1].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[1].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[1].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[1].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[1].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[1].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[1].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[1].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[1].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[1].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[1].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[1].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[1].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[1].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[1].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[1].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[1].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[1].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[1].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[1].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[1].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[1].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[1].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[1].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[1].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[1].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[1].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[1].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[1].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[1].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[1].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[1].logic_inst_n_64\,
      ready_s => ready_s_65,
      ready_s_reg_0(0) => ready_next_s(2),
      res_s0 => res_s0_44
    );
\gen_macc[20].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_11
     port map (
      ACOUT(29) => \gen_macc[20].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[20].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[20].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[20].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[20].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[20].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[20].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[20].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[20].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[20].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[20].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[20].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[20].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[20].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[20].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[20].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[20].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[20].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[20].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[20].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[20].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[20].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[20].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[20].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[20].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[20].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[20].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[20].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[20].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[20].logic_inst_n_31\,
      E(0) => data_out_en_s_7,
      Q(0) => end_next_s_0(21),
      data_clk_i => data_clk_i,
      data_en_s(0) => data_en_s(20),
      data_en_s_0 => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_68,
      \final_res_s_reg[31]_0\(31) => \gen_macc[20].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[20].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[20].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[20].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[20].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[20].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[20].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[20].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[20].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[20].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[20].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[20].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[20].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[20].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[20].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[20].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[20].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[20].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[20].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[20].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[20].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[20].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[20].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[20].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[20].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[20].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[20].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[20].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[20].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[20].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[20].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[20].logic_inst_n_64\,
      ready_s => ready_s_67,
      ready_s_reg_0(0) => ready_next_s(21),
      res_s0 => res_s0_6,
      res_s_reg_0(29) => \gen_macc[19].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[19].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[19].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[19].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[19].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[19].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[19].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[19].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[19].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[19].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[19].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[19].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[19].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[19].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[19].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[19].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[19].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[19].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[19].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[19].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[19].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[19].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[19].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[19].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[19].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[19].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[19].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[19].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[19].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[19].logic_inst_n_31\
    );
\gen_macc[21].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_12
     port map (
      ACOUT(29) => \gen_macc[21].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[21].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[21].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[21].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[21].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[21].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[21].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[21].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[21].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[21].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[21].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[21].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[21].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[21].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[21].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[21].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[21].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[21].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[21].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[21].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[21].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[21].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[21].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[21].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[21].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[21].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[21].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[21].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[21].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[21].logic_inst_n_31\,
      E(0) => data_out_en_s_5,
      Q(0) => end_next_s_0(22),
      data_clk_i => data_clk_i,
      data_en_s(0) => data_en_s(21),
      data_en_s_0 => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_70,
      \final_res_s_reg[31]_0\(31) => \gen_macc[21].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[21].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[21].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[21].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[21].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[21].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[21].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[21].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[21].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[21].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[21].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[21].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[21].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[21].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[21].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[21].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[21].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[21].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[21].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[21].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[21].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[21].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[21].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[21].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[21].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[21].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[21].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[21].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[21].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[21].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[21].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[21].logic_inst_n_64\,
      ready_s => ready_s_69,
      ready_s_reg_0(0) => ready_next_s(22),
      res_s0 => res_s0_4,
      res_s_reg_0(29) => \gen_macc[20].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[20].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[20].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[20].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[20].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[20].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[20].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[20].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[20].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[20].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[20].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[20].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[20].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[20].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[20].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[20].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[20].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[20].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[20].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[20].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[20].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[20].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[20].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[20].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[20].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[20].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[20].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[20].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[20].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[20].logic_inst_n_31\
    );
\gen_macc[22].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_13
     port map (
      ACOUT(29) => \gen_macc[22].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[22].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[22].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[22].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[22].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[22].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[22].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[22].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[22].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[22].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[22].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[22].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[22].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[22].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[22].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[22].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[22].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[22].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[22].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[22].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[22].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[22].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[22].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[22].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[22].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[22].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[22].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[22].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[22].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[22].logic_inst_n_31\,
      E(0) => data_out_en_s_3,
      Q(0) => end_next_s_0(23),
      data_clk_i => data_clk_i,
      data_en_s(0) => data_en_s(22),
      data_en_s_0 => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_72,
      \final_res_s_reg[31]_0\(31) => \gen_macc[22].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[22].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[22].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[22].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[22].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[22].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[22].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[22].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[22].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[22].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[22].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[22].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[22].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[22].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[22].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[22].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[22].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[22].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[22].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[22].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[22].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[22].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[22].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[22].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[22].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[22].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[22].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[22].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[22].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[22].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[22].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[22].logic_inst_n_64\,
      ready_s => ready_s_71,
      ready_s_reg_0(0) => ready_next_s(23),
      res_s0 => res_s0_2,
      res_s_reg_0(29) => \gen_macc[21].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[21].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[21].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[21].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[21].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[21].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[21].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[21].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[21].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[21].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[21].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[21].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[21].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[21].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[21].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[21].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[21].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[21].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[21].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[21].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[21].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[21].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[21].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[21].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[21].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[21].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[21].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[21].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[21].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[21].logic_inst_n_31\
    );
\gen_macc[23].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_14
     port map (
      ACOUT(29) => \gen_macc[23].logic_inst_n_1\,
      ACOUT(28) => \gen_macc[23].logic_inst_n_2\,
      ACOUT(27) => \gen_macc[23].logic_inst_n_3\,
      ACOUT(26) => \gen_macc[23].logic_inst_n_4\,
      ACOUT(25) => \gen_macc[23].logic_inst_n_5\,
      ACOUT(24) => \gen_macc[23].logic_inst_n_6\,
      ACOUT(23) => \gen_macc[23].logic_inst_n_7\,
      ACOUT(22) => \gen_macc[23].logic_inst_n_8\,
      ACOUT(21) => \gen_macc[23].logic_inst_n_9\,
      ACOUT(20) => \gen_macc[23].logic_inst_n_10\,
      ACOUT(19) => \gen_macc[23].logic_inst_n_11\,
      ACOUT(18) => \gen_macc[23].logic_inst_n_12\,
      ACOUT(17) => \gen_macc[23].logic_inst_n_13\,
      ACOUT(16) => \gen_macc[23].logic_inst_n_14\,
      ACOUT(15) => \gen_macc[23].logic_inst_n_15\,
      ACOUT(14) => \gen_macc[23].logic_inst_n_16\,
      ACOUT(13) => \gen_macc[23].logic_inst_n_17\,
      ACOUT(12) => \gen_macc[23].logic_inst_n_18\,
      ACOUT(11) => \gen_macc[23].logic_inst_n_19\,
      ACOUT(10) => \gen_macc[23].logic_inst_n_20\,
      ACOUT(9) => \gen_macc[23].logic_inst_n_21\,
      ACOUT(8) => \gen_macc[23].logic_inst_n_22\,
      ACOUT(7) => \gen_macc[23].logic_inst_n_23\,
      ACOUT(6) => \gen_macc[23].logic_inst_n_24\,
      ACOUT(5) => \gen_macc[23].logic_inst_n_25\,
      ACOUT(4) => \gen_macc[23].logic_inst_n_26\,
      ACOUT(3) => \gen_macc[23].logic_inst_n_27\,
      ACOUT(2) => \gen_macc[23].logic_inst_n_28\,
      ACOUT(1) => \gen_macc[23].logic_inst_n_29\,
      ACOUT(0) => \gen_macc[23].logic_inst_n_30\,
      E(0) => data_out_en_s_1,
      Q(0) => end_next_s_0(24),
      \cpt_store_s_reg[0]_rep\(4) => data_en_s(24),
      \cpt_store_s_reg[0]_rep\(3 downto 0) => data_en_s(22 downto 19),
      data_clk_i => data_clk_i,
      data_en_o_reg_0 => \gen_macc[23].logic_inst_n_32\,
      data_en_s => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      \data_out_s_reg[10]\(1 downto 0) => cpt_store_s_reg(1 downto 0),
      \data_out_s_reg[31]\(31) => \gen_macc[22].logic_inst_n_33\,
      \data_out_s_reg[31]\(30) => \gen_macc[22].logic_inst_n_34\,
      \data_out_s_reg[31]\(29) => \gen_macc[22].logic_inst_n_35\,
      \data_out_s_reg[31]\(28) => \gen_macc[22].logic_inst_n_36\,
      \data_out_s_reg[31]\(27) => \gen_macc[22].logic_inst_n_37\,
      \data_out_s_reg[31]\(26) => \gen_macc[22].logic_inst_n_38\,
      \data_out_s_reg[31]\(25) => \gen_macc[22].logic_inst_n_39\,
      \data_out_s_reg[31]\(24) => \gen_macc[22].logic_inst_n_40\,
      \data_out_s_reg[31]\(23) => \gen_macc[22].logic_inst_n_41\,
      \data_out_s_reg[31]\(22) => \gen_macc[22].logic_inst_n_42\,
      \data_out_s_reg[31]\(21) => \gen_macc[22].logic_inst_n_43\,
      \data_out_s_reg[31]\(20) => \gen_macc[22].logic_inst_n_44\,
      \data_out_s_reg[31]\(19) => \gen_macc[22].logic_inst_n_45\,
      \data_out_s_reg[31]\(18) => \gen_macc[22].logic_inst_n_46\,
      \data_out_s_reg[31]\(17) => \gen_macc[22].logic_inst_n_47\,
      \data_out_s_reg[31]\(16) => \gen_macc[22].logic_inst_n_48\,
      \data_out_s_reg[31]\(15) => \gen_macc[22].logic_inst_n_49\,
      \data_out_s_reg[31]\(14) => \gen_macc[22].logic_inst_n_50\,
      \data_out_s_reg[31]\(13) => \gen_macc[22].logic_inst_n_51\,
      \data_out_s_reg[31]\(12) => \gen_macc[22].logic_inst_n_52\,
      \data_out_s_reg[31]\(11) => \gen_macc[22].logic_inst_n_53\,
      \data_out_s_reg[31]\(10) => \gen_macc[22].logic_inst_n_54\,
      \data_out_s_reg[31]\(9) => \gen_macc[22].logic_inst_n_55\,
      \data_out_s_reg[31]\(8) => \gen_macc[22].logic_inst_n_56\,
      \data_out_s_reg[31]\(7) => \gen_macc[22].logic_inst_n_57\,
      \data_out_s_reg[31]\(6) => \gen_macc[22].logic_inst_n_58\,
      \data_out_s_reg[31]\(5) => \gen_macc[22].logic_inst_n_59\,
      \data_out_s_reg[31]\(4) => \gen_macc[22].logic_inst_n_60\,
      \data_out_s_reg[31]\(3) => \gen_macc[22].logic_inst_n_61\,
      \data_out_s_reg[31]\(2) => \gen_macc[22].logic_inst_n_62\,
      \data_out_s_reg[31]\(1) => \gen_macc[22].logic_inst_n_63\,
      \data_out_s_reg[31]\(0) => \gen_macc[22].logic_inst_n_64\,
      \data_out_s_reg[31]_0\(31) => \gen_macc[21].logic_inst_n_33\,
      \data_out_s_reg[31]_0\(30) => \gen_macc[21].logic_inst_n_34\,
      \data_out_s_reg[31]_0\(29) => \gen_macc[21].logic_inst_n_35\,
      \data_out_s_reg[31]_0\(28) => \gen_macc[21].logic_inst_n_36\,
      \data_out_s_reg[31]_0\(27) => \gen_macc[21].logic_inst_n_37\,
      \data_out_s_reg[31]_0\(26) => \gen_macc[21].logic_inst_n_38\,
      \data_out_s_reg[31]_0\(25) => \gen_macc[21].logic_inst_n_39\,
      \data_out_s_reg[31]_0\(24) => \gen_macc[21].logic_inst_n_40\,
      \data_out_s_reg[31]_0\(23) => \gen_macc[21].logic_inst_n_41\,
      \data_out_s_reg[31]_0\(22) => \gen_macc[21].logic_inst_n_42\,
      \data_out_s_reg[31]_0\(21) => \gen_macc[21].logic_inst_n_43\,
      \data_out_s_reg[31]_0\(20) => \gen_macc[21].logic_inst_n_44\,
      \data_out_s_reg[31]_0\(19) => \gen_macc[21].logic_inst_n_45\,
      \data_out_s_reg[31]_0\(18) => \gen_macc[21].logic_inst_n_46\,
      \data_out_s_reg[31]_0\(17) => \gen_macc[21].logic_inst_n_47\,
      \data_out_s_reg[31]_0\(16) => \gen_macc[21].logic_inst_n_48\,
      \data_out_s_reg[31]_0\(15) => \gen_macc[21].logic_inst_n_49\,
      \data_out_s_reg[31]_0\(14) => \gen_macc[21].logic_inst_n_50\,
      \data_out_s_reg[31]_0\(13) => \gen_macc[21].logic_inst_n_51\,
      \data_out_s_reg[31]_0\(12) => \gen_macc[21].logic_inst_n_52\,
      \data_out_s_reg[31]_0\(11) => \gen_macc[21].logic_inst_n_53\,
      \data_out_s_reg[31]_0\(10) => \gen_macc[21].logic_inst_n_54\,
      \data_out_s_reg[31]_0\(9) => \gen_macc[21].logic_inst_n_55\,
      \data_out_s_reg[31]_0\(8) => \gen_macc[21].logic_inst_n_56\,
      \data_out_s_reg[31]_0\(7) => \gen_macc[21].logic_inst_n_57\,
      \data_out_s_reg[31]_0\(6) => \gen_macc[21].logic_inst_n_58\,
      \data_out_s_reg[31]_0\(5) => \gen_macc[21].logic_inst_n_59\,
      \data_out_s_reg[31]_0\(4) => \gen_macc[21].logic_inst_n_60\,
      \data_out_s_reg[31]_0\(3) => \gen_macc[21].logic_inst_n_61\,
      \data_out_s_reg[31]_0\(2) => \gen_macc[21].logic_inst_n_62\,
      \data_out_s_reg[31]_0\(1) => \gen_macc[21].logic_inst_n_63\,
      \data_out_s_reg[31]_0\(0) => \gen_macc[21].logic_inst_n_64\,
      \data_out_s_reg[31]_1\(31) => \gen_macc[20].logic_inst_n_33\,
      \data_out_s_reg[31]_1\(30) => \gen_macc[20].logic_inst_n_34\,
      \data_out_s_reg[31]_1\(29) => \gen_macc[20].logic_inst_n_35\,
      \data_out_s_reg[31]_1\(28) => \gen_macc[20].logic_inst_n_36\,
      \data_out_s_reg[31]_1\(27) => \gen_macc[20].logic_inst_n_37\,
      \data_out_s_reg[31]_1\(26) => \gen_macc[20].logic_inst_n_38\,
      \data_out_s_reg[31]_1\(25) => \gen_macc[20].logic_inst_n_39\,
      \data_out_s_reg[31]_1\(24) => \gen_macc[20].logic_inst_n_40\,
      \data_out_s_reg[31]_1\(23) => \gen_macc[20].logic_inst_n_41\,
      \data_out_s_reg[31]_1\(22) => \gen_macc[20].logic_inst_n_42\,
      \data_out_s_reg[31]_1\(21) => \gen_macc[20].logic_inst_n_43\,
      \data_out_s_reg[31]_1\(20) => \gen_macc[20].logic_inst_n_44\,
      \data_out_s_reg[31]_1\(19) => \gen_macc[20].logic_inst_n_45\,
      \data_out_s_reg[31]_1\(18) => \gen_macc[20].logic_inst_n_46\,
      \data_out_s_reg[31]_1\(17) => \gen_macc[20].logic_inst_n_47\,
      \data_out_s_reg[31]_1\(16) => \gen_macc[20].logic_inst_n_48\,
      \data_out_s_reg[31]_1\(15) => \gen_macc[20].logic_inst_n_49\,
      \data_out_s_reg[31]_1\(14) => \gen_macc[20].logic_inst_n_50\,
      \data_out_s_reg[31]_1\(13) => \gen_macc[20].logic_inst_n_51\,
      \data_out_s_reg[31]_1\(12) => \gen_macc[20].logic_inst_n_52\,
      \data_out_s_reg[31]_1\(11) => \gen_macc[20].logic_inst_n_53\,
      \data_out_s_reg[31]_1\(10) => \gen_macc[20].logic_inst_n_54\,
      \data_out_s_reg[31]_1\(9) => \gen_macc[20].logic_inst_n_55\,
      \data_out_s_reg[31]_1\(8) => \gen_macc[20].logic_inst_n_56\,
      \data_out_s_reg[31]_1\(7) => \gen_macc[20].logic_inst_n_57\,
      \data_out_s_reg[31]_1\(6) => \gen_macc[20].logic_inst_n_58\,
      \data_out_s_reg[31]_1\(5) => \gen_macc[20].logic_inst_n_59\,
      \data_out_s_reg[31]_1\(4) => \gen_macc[20].logic_inst_n_60\,
      \data_out_s_reg[31]_1\(3) => \gen_macc[20].logic_inst_n_61\,
      \data_out_s_reg[31]_1\(2) => \gen_macc[20].logic_inst_n_62\,
      \data_out_s_reg[31]_1\(1) => \gen_macc[20].logic_inst_n_63\,
      \data_out_s_reg[31]_1\(0) => \gen_macc[20].logic_inst_n_64\,
      \data_out_s_reg[31]_2\ => \cpt_store_s_reg[0]_rep_n_0\,
      \data_out_s_reg[9]\ => \cpt_store_s_reg[1]_rep_n_0\,
      data_rst_i => data_rst_i,
      end_s => end_s_74,
      \final_res_s_reg[0]_0\ => \gen_macc[23].logic_inst_n_33\,
      \final_res_s_reg[10]_0\ => \gen_macc[23].logic_inst_n_43\,
      \final_res_s_reg[11]_0\ => \gen_macc[23].logic_inst_n_44\,
      \final_res_s_reg[12]_0\ => \gen_macc[23].logic_inst_n_45\,
      \final_res_s_reg[13]_0\ => \gen_macc[23].logic_inst_n_46\,
      \final_res_s_reg[14]_0\ => \gen_macc[23].logic_inst_n_47\,
      \final_res_s_reg[15]_0\ => \gen_macc[23].logic_inst_n_48\,
      \final_res_s_reg[16]_0\ => \gen_macc[23].logic_inst_n_49\,
      \final_res_s_reg[17]_0\ => \gen_macc[23].logic_inst_n_50\,
      \final_res_s_reg[18]_0\ => \gen_macc[23].logic_inst_n_51\,
      \final_res_s_reg[19]_0\ => \gen_macc[23].logic_inst_n_52\,
      \final_res_s_reg[1]_0\ => \gen_macc[23].logic_inst_n_34\,
      \final_res_s_reg[20]_0\ => \gen_macc[23].logic_inst_n_53\,
      \final_res_s_reg[21]_0\ => \gen_macc[23].logic_inst_n_54\,
      \final_res_s_reg[22]_0\ => \gen_macc[23].logic_inst_n_55\,
      \final_res_s_reg[23]_0\ => \gen_macc[23].logic_inst_n_56\,
      \final_res_s_reg[24]_0\ => \gen_macc[23].logic_inst_n_57\,
      \final_res_s_reg[25]_0\ => \gen_macc[23].logic_inst_n_58\,
      \final_res_s_reg[26]_0\ => \gen_macc[23].logic_inst_n_59\,
      \final_res_s_reg[27]_0\ => \gen_macc[23].logic_inst_n_60\,
      \final_res_s_reg[28]_0\ => \gen_macc[23].logic_inst_n_61\,
      \final_res_s_reg[29]_0\ => \gen_macc[23].logic_inst_n_62\,
      \final_res_s_reg[2]_0\ => \gen_macc[23].logic_inst_n_35\,
      \final_res_s_reg[30]_0\ => \gen_macc[23].logic_inst_n_63\,
      \final_res_s_reg[31]_0\ => \gen_macc[23].logic_inst_n_64\,
      \final_res_s_reg[3]_0\ => \gen_macc[23].logic_inst_n_36\,
      \final_res_s_reg[4]_0\ => \gen_macc[23].logic_inst_n_37\,
      \final_res_s_reg[5]_0\ => \gen_macc[23].logic_inst_n_38\,
      \final_res_s_reg[6]_0\ => \gen_macc[23].logic_inst_n_39\,
      \final_res_s_reg[7]_0\ => \gen_macc[23].logic_inst_n_40\,
      \final_res_s_reg[8]_0\ => \gen_macc[23].logic_inst_n_41\,
      \final_res_s_reg[9]_0\ => \gen_macc[23].logic_inst_n_42\,
      ready_s => ready_s_73,
      ready_s_reg_0(0) => ready_next_s(24),
      res_s0 => res_s0_0,
      res_s_reg_0(29) => \gen_macc[22].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[22].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[22].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[22].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[22].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[22].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[22].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[22].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[22].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[22].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[22].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[22].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[22].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[22].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[22].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[22].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[22].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[22].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[22].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[22].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[22].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[22].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[22].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[22].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[22].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[22].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[22].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[22].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[22].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[22].logic_inst_n_31\
    );
\gen_macc[24].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_15
     port map (
      ACOUT(29) => \gen_macc[23].logic_inst_n_1\,
      ACOUT(28) => \gen_macc[23].logic_inst_n_2\,
      ACOUT(27) => \gen_macc[23].logic_inst_n_3\,
      ACOUT(26) => \gen_macc[23].logic_inst_n_4\,
      ACOUT(25) => \gen_macc[23].logic_inst_n_5\,
      ACOUT(24) => \gen_macc[23].logic_inst_n_6\,
      ACOUT(23) => \gen_macc[23].logic_inst_n_7\,
      ACOUT(22) => \gen_macc[23].logic_inst_n_8\,
      ACOUT(21) => \gen_macc[23].logic_inst_n_9\,
      ACOUT(20) => \gen_macc[23].logic_inst_n_10\,
      ACOUT(19) => \gen_macc[23].logic_inst_n_11\,
      ACOUT(18) => \gen_macc[23].logic_inst_n_12\,
      ACOUT(17) => \gen_macc[23].logic_inst_n_13\,
      ACOUT(16) => \gen_macc[23].logic_inst_n_14\,
      ACOUT(15) => \gen_macc[23].logic_inst_n_15\,
      ACOUT(14) => \gen_macc[23].logic_inst_n_16\,
      ACOUT(13) => \gen_macc[23].logic_inst_n_17\,
      ACOUT(12) => \gen_macc[23].logic_inst_n_18\,
      ACOUT(11) => \gen_macc[23].logic_inst_n_19\,
      ACOUT(10) => \gen_macc[23].logic_inst_n_20\,
      ACOUT(9) => \gen_macc[23].logic_inst_n_21\,
      ACOUT(8) => \gen_macc[23].logic_inst_n_22\,
      ACOUT(7) => \gen_macc[23].logic_inst_n_23\,
      ACOUT(6) => \gen_macc[23].logic_inst_n_24\,
      ACOUT(5) => \gen_macc[23].logic_inst_n_25\,
      ACOUT(4) => \gen_macc[23].logic_inst_n_26\,
      ACOUT(3) => \gen_macc[23].logic_inst_n_27\,
      ACOUT(2) => \gen_macc[23].logic_inst_n_28\,
      ACOUT(1) => \gen_macc[23].logic_inst_n_29\,
      ACOUT(0) => \gen_macc[23].logic_inst_n_30\,
      E(0) => data_out_en_s,
      Q(0) => \end_s_reg_n_0_[24]\,
      data_clk_i => data_clk_i,
      data_en_o_reg_0(0) => data_en_s(24),
      data_en_s => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_76,
      \final_res_s_reg[31]_0\(31) => \gen_macc[24].logic_inst_n_3\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[24].logic_inst_n_4\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[24].logic_inst_n_5\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[24].logic_inst_n_6\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[24].logic_inst_n_7\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[24].logic_inst_n_8\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[24].logic_inst_n_9\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[24].logic_inst_n_10\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[24].logic_inst_n_11\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[24].logic_inst_n_12\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[24].logic_inst_n_13\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[24].logic_inst_n_14\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[24].logic_inst_n_15\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[24].logic_inst_n_16\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[24].logic_inst_n_17\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[24].logic_inst_n_18\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[24].logic_inst_n_19\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[24].logic_inst_n_20\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[24].logic_inst_n_21\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[24].logic_inst_n_22\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[24].logic_inst_n_23\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[24].logic_inst_n_24\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[24].logic_inst_n_25\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[24].logic_inst_n_26\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[24].logic_inst_n_27\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[24].logic_inst_n_28\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[24].logic_inst_n_29\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[24].logic_inst_n_30\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[24].logic_inst_n_31\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[24].logic_inst_n_32\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[24].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[24].logic_inst_n_34\,
      ready_s => ready_s_75,
      ready_s_reg_0(0) => ready_next_s(0),
      res_s0 => res_s0
    );
\gen_macc[2].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_16
     port map (
      ACOUT(29) => \gen_macc[2].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[2].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[2].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[2].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[2].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[2].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[2].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[2].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[2].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[2].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[2].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[2].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[2].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[2].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[2].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[2].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[2].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[2].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[2].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[2].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[2].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[2].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[2].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[2].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[2].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[2].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[2].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[2].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[2].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[2].logic_inst_n_31\,
      E(0) => data_out_en_s_43,
      Q(0) => end_next_s_0(3),
      data_clk_i => data_clk_i,
      data_en_s(0) => data_en_s(2),
      data_en_s_0 => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_78,
      \final_res_s_reg[31]_0\(31) => \gen_macc[2].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[2].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[2].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[2].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[2].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[2].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[2].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[2].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[2].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[2].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[2].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[2].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[2].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[2].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[2].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[2].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[2].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[2].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[2].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[2].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[2].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[2].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[2].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[2].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[2].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[2].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[2].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[2].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[2].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[2].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[2].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[2].logic_inst_n_64\,
      ready_s => ready_s_77,
      ready_s_reg_0(0) => ready_next_s(3),
      res_s0 => res_s0_42,
      res_s_reg_0(29) => \gen_macc[1].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[1].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[1].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[1].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[1].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[1].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[1].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[1].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[1].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[1].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[1].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[1].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[1].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[1].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[1].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[1].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[1].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[1].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[1].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[1].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[1].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[1].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[1].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[1].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[1].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[1].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[1].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[1].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[1].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[1].logic_inst_n_31\
    );
\gen_macc[3].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_17
     port map (
      ACOUT(29) => \gen_macc[3].logic_inst_n_1\,
      ACOUT(28) => \gen_macc[3].logic_inst_n_2\,
      ACOUT(27) => \gen_macc[3].logic_inst_n_3\,
      ACOUT(26) => \gen_macc[3].logic_inst_n_4\,
      ACOUT(25) => \gen_macc[3].logic_inst_n_5\,
      ACOUT(24) => \gen_macc[3].logic_inst_n_6\,
      ACOUT(23) => \gen_macc[3].logic_inst_n_7\,
      ACOUT(22) => \gen_macc[3].logic_inst_n_8\,
      ACOUT(21) => \gen_macc[3].logic_inst_n_9\,
      ACOUT(20) => \gen_macc[3].logic_inst_n_10\,
      ACOUT(19) => \gen_macc[3].logic_inst_n_11\,
      ACOUT(18) => \gen_macc[3].logic_inst_n_12\,
      ACOUT(17) => \gen_macc[3].logic_inst_n_13\,
      ACOUT(16) => \gen_macc[3].logic_inst_n_14\,
      ACOUT(15) => \gen_macc[3].logic_inst_n_15\,
      ACOUT(14) => \gen_macc[3].logic_inst_n_16\,
      ACOUT(13) => \gen_macc[3].logic_inst_n_17\,
      ACOUT(12) => \gen_macc[3].logic_inst_n_18\,
      ACOUT(11) => \gen_macc[3].logic_inst_n_19\,
      ACOUT(10) => \gen_macc[3].logic_inst_n_20\,
      ACOUT(9) => \gen_macc[3].logic_inst_n_21\,
      ACOUT(8) => \gen_macc[3].logic_inst_n_22\,
      ACOUT(7) => \gen_macc[3].logic_inst_n_23\,
      ACOUT(6) => \gen_macc[3].logic_inst_n_24\,
      ACOUT(5) => \gen_macc[3].logic_inst_n_25\,
      ACOUT(4) => \gen_macc[3].logic_inst_n_26\,
      ACOUT(3) => \gen_macc[3].logic_inst_n_27\,
      ACOUT(2) => \gen_macc[3].logic_inst_n_28\,
      ACOUT(1) => \gen_macc[3].logic_inst_n_29\,
      ACOUT(0) => \gen_macc[3].logic_inst_n_30\,
      D(31 downto 0) => \data_s[24]_0\(31 downto 0),
      E(0) => data_out_en_s_41,
      Q(0) => end_next_s_0(4),
      SR(0) => clear,
      \cpt_store_s_reg[0]_rep\(2 downto 0) => data_en_s(2 downto 0),
      \cpt_store_s_reg[0]_rep_0\ => \cpt_store_s[4]_i_3_n_0\,
      \cpt_store_s_reg[0]_rep_1\ => \gen_macc[5].logic_inst_n_32\,
      \cpt_store_s_reg[0]_rep_2\ => \gen_macc[12].logic_inst_n_32\,
      \cpt_store_s_reg[0]_rep_3\ => \gen_macc[15].logic_inst_n_32\,
      \cpt_store_s_reg[0]_rep_4\ => \gen_macc[23].logic_inst_n_32\,
      data_clk_i => data_clk_i,
      data_en_next => data_en_next,
      data_en_s => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      \data_out_s_reg[0]\ => \data_out_s[31]_i_9_n_0\,
      \data_out_s_reg[0]_0\ => \gen_macc[23].logic_inst_n_33\,
      \data_out_s_reg[0]_1\ => \data_out_s[31]_i_11_n_0\,
      \data_out_s_reg[0]_2\ => \gen_macc[19].logic_inst_n_33\,
      \data_out_s_reg[0]_3\(3 downto 0) => cpt_store_s_reg(3 downto 0),
      \data_out_s_reg[0]_4\ => \gen_macc[11].logic_inst_n_33\,
      \data_out_s_reg[0]_i_2_0\ => \gen_macc[7].logic_inst_n_33\,
      \data_out_s_reg[0]_i_5_0\ => \cpt_store_s_reg[1]_rep_n_0\,
      \data_out_s_reg[10]\ => \gen_macc[23].logic_inst_n_43\,
      \data_out_s_reg[10]_0\ => \gen_macc[19].logic_inst_n_43\,
      \data_out_s_reg[10]_1\ => \gen_macc[11].logic_inst_n_43\,
      \data_out_s_reg[10]_i_2_0\ => \gen_macc[7].logic_inst_n_43\,
      \data_out_s_reg[10]_i_5_0\ => \cpt_store_s_reg[0]_rep_n_0\,
      \data_out_s_reg[11]\ => \gen_macc[23].logic_inst_n_44\,
      \data_out_s_reg[11]_0\ => \gen_macc[19].logic_inst_n_44\,
      \data_out_s_reg[11]_1\ => \gen_macc[11].logic_inst_n_44\,
      \data_out_s_reg[11]_i_2_0\ => \gen_macc[7].logic_inst_n_44\,
      \data_out_s_reg[12]\ => \gen_macc[23].logic_inst_n_45\,
      \data_out_s_reg[12]_0\ => \gen_macc[19].logic_inst_n_45\,
      \data_out_s_reg[12]_1\ => \gen_macc[11].logic_inst_n_45\,
      \data_out_s_reg[12]_i_2_0\ => \gen_macc[7].logic_inst_n_45\,
      \data_out_s_reg[13]\ => \gen_macc[23].logic_inst_n_46\,
      \data_out_s_reg[13]_0\ => \gen_macc[19].logic_inst_n_46\,
      \data_out_s_reg[13]_1\ => \gen_macc[11].logic_inst_n_46\,
      \data_out_s_reg[13]_i_2_0\ => \gen_macc[7].logic_inst_n_46\,
      \data_out_s_reg[14]\ => \gen_macc[23].logic_inst_n_47\,
      \data_out_s_reg[14]_0\ => \gen_macc[19].logic_inst_n_47\,
      \data_out_s_reg[14]_1\ => \gen_macc[11].logic_inst_n_47\,
      \data_out_s_reg[14]_i_2_0\ => \gen_macc[7].logic_inst_n_47\,
      \data_out_s_reg[15]\ => \gen_macc[23].logic_inst_n_48\,
      \data_out_s_reg[15]_0\ => \gen_macc[19].logic_inst_n_48\,
      \data_out_s_reg[15]_1\ => \gen_macc[11].logic_inst_n_48\,
      \data_out_s_reg[15]_i_2_0\ => \gen_macc[7].logic_inst_n_48\,
      \data_out_s_reg[16]\ => \gen_macc[23].logic_inst_n_49\,
      \data_out_s_reg[16]_0\ => \gen_macc[19].logic_inst_n_49\,
      \data_out_s_reg[16]_1\ => \gen_macc[11].logic_inst_n_49\,
      \data_out_s_reg[16]_i_2_0\ => \gen_macc[7].logic_inst_n_49\,
      \data_out_s_reg[17]\ => \gen_macc[23].logic_inst_n_50\,
      \data_out_s_reg[17]_0\ => \gen_macc[19].logic_inst_n_50\,
      \data_out_s_reg[17]_1\ => \gen_macc[11].logic_inst_n_50\,
      \data_out_s_reg[17]_i_2_0\ => \gen_macc[7].logic_inst_n_50\,
      \data_out_s_reg[18]\ => \gen_macc[23].logic_inst_n_51\,
      \data_out_s_reg[18]_0\ => \gen_macc[19].logic_inst_n_51\,
      \data_out_s_reg[18]_1\ => \gen_macc[11].logic_inst_n_51\,
      \data_out_s_reg[18]_i_2_0\ => \gen_macc[7].logic_inst_n_51\,
      \data_out_s_reg[19]\ => \gen_macc[23].logic_inst_n_52\,
      \data_out_s_reg[19]_0\ => \gen_macc[19].logic_inst_n_52\,
      \data_out_s_reg[19]_1\ => \gen_macc[11].logic_inst_n_52\,
      \data_out_s_reg[19]_i_2_0\ => \gen_macc[7].logic_inst_n_52\,
      \data_out_s_reg[1]\ => \gen_macc[23].logic_inst_n_34\,
      \data_out_s_reg[1]_0\ => \gen_macc[19].logic_inst_n_34\,
      \data_out_s_reg[1]_1\ => \gen_macc[11].logic_inst_n_34\,
      \data_out_s_reg[1]_i_2_0\ => \gen_macc[7].logic_inst_n_34\,
      \data_out_s_reg[20]\ => \gen_macc[23].logic_inst_n_53\,
      \data_out_s_reg[20]_0\ => \gen_macc[19].logic_inst_n_53\,
      \data_out_s_reg[20]_1\ => \gen_macc[11].logic_inst_n_53\,
      \data_out_s_reg[20]_i_2_0\ => \gen_macc[7].logic_inst_n_53\,
      \data_out_s_reg[21]\ => \gen_macc[23].logic_inst_n_54\,
      \data_out_s_reg[21]_0\ => \gen_macc[19].logic_inst_n_54\,
      \data_out_s_reg[21]_1\ => \gen_macc[11].logic_inst_n_54\,
      \data_out_s_reg[21]_i_2_0\ => \gen_macc[7].logic_inst_n_54\,
      \data_out_s_reg[22]\ => \gen_macc[23].logic_inst_n_55\,
      \data_out_s_reg[22]_0\ => \gen_macc[19].logic_inst_n_55\,
      \data_out_s_reg[22]_1\ => \gen_macc[11].logic_inst_n_55\,
      \data_out_s_reg[22]_i_2_0\ => \gen_macc[7].logic_inst_n_55\,
      \data_out_s_reg[23]\ => \gen_macc[23].logic_inst_n_56\,
      \data_out_s_reg[23]_0\ => \gen_macc[19].logic_inst_n_56\,
      \data_out_s_reg[23]_1\ => \gen_macc[11].logic_inst_n_56\,
      \data_out_s_reg[23]_i_2_0\ => \gen_macc[7].logic_inst_n_56\,
      \data_out_s_reg[24]\ => \gen_macc[23].logic_inst_n_57\,
      \data_out_s_reg[24]_0\ => \gen_macc[19].logic_inst_n_57\,
      \data_out_s_reg[24]_1\ => \gen_macc[11].logic_inst_n_57\,
      \data_out_s_reg[24]_i_2_0\ => \gen_macc[7].logic_inst_n_57\,
      \data_out_s_reg[25]\ => \gen_macc[23].logic_inst_n_58\,
      \data_out_s_reg[25]_0\ => \gen_macc[19].logic_inst_n_58\,
      \data_out_s_reg[25]_1\ => \gen_macc[11].logic_inst_n_58\,
      \data_out_s_reg[25]_i_2_0\ => \gen_macc[7].logic_inst_n_58\,
      \data_out_s_reg[26]\ => \gen_macc[23].logic_inst_n_59\,
      \data_out_s_reg[26]_0\ => \gen_macc[19].logic_inst_n_59\,
      \data_out_s_reg[26]_1\ => \gen_macc[11].logic_inst_n_59\,
      \data_out_s_reg[26]_i_2_0\ => \gen_macc[7].logic_inst_n_59\,
      \data_out_s_reg[27]\ => \gen_macc[23].logic_inst_n_60\,
      \data_out_s_reg[27]_0\ => \gen_macc[19].logic_inst_n_60\,
      \data_out_s_reg[27]_1\ => \gen_macc[11].logic_inst_n_60\,
      \data_out_s_reg[27]_i_2_0\ => \gen_macc[7].logic_inst_n_60\,
      \data_out_s_reg[28]\ => \gen_macc[23].logic_inst_n_61\,
      \data_out_s_reg[28]_0\ => \gen_macc[19].logic_inst_n_61\,
      \data_out_s_reg[28]_1\ => \gen_macc[11].logic_inst_n_61\,
      \data_out_s_reg[28]_i_2_0\ => \gen_macc[7].logic_inst_n_61\,
      \data_out_s_reg[29]\ => \gen_macc[23].logic_inst_n_62\,
      \data_out_s_reg[29]_0\ => \gen_macc[19].logic_inst_n_62\,
      \data_out_s_reg[29]_1\ => \gen_macc[11].logic_inst_n_62\,
      \data_out_s_reg[29]_i_2_0\ => \gen_macc[7].logic_inst_n_62\,
      \data_out_s_reg[2]\ => \gen_macc[23].logic_inst_n_35\,
      \data_out_s_reg[2]_0\ => \gen_macc[19].logic_inst_n_35\,
      \data_out_s_reg[2]_1\ => \gen_macc[11].logic_inst_n_35\,
      \data_out_s_reg[2]_i_2_0\ => \gen_macc[7].logic_inst_n_35\,
      \data_out_s_reg[30]\ => \gen_macc[23].logic_inst_n_63\,
      \data_out_s_reg[30]_0\ => \gen_macc[19].logic_inst_n_63\,
      \data_out_s_reg[30]_1\ => \gen_macc[11].logic_inst_n_63\,
      \data_out_s_reg[30]_i_2_0\ => \gen_macc[7].logic_inst_n_63\,
      \data_out_s_reg[31]\(31) => \gen_macc[24].logic_inst_n_3\,
      \data_out_s_reg[31]\(30) => \gen_macc[24].logic_inst_n_4\,
      \data_out_s_reg[31]\(29) => \gen_macc[24].logic_inst_n_5\,
      \data_out_s_reg[31]\(28) => \gen_macc[24].logic_inst_n_6\,
      \data_out_s_reg[31]\(27) => \gen_macc[24].logic_inst_n_7\,
      \data_out_s_reg[31]\(26) => \gen_macc[24].logic_inst_n_8\,
      \data_out_s_reg[31]\(25) => \gen_macc[24].logic_inst_n_9\,
      \data_out_s_reg[31]\(24) => \gen_macc[24].logic_inst_n_10\,
      \data_out_s_reg[31]\(23) => \gen_macc[24].logic_inst_n_11\,
      \data_out_s_reg[31]\(22) => \gen_macc[24].logic_inst_n_12\,
      \data_out_s_reg[31]\(21) => \gen_macc[24].logic_inst_n_13\,
      \data_out_s_reg[31]\(20) => \gen_macc[24].logic_inst_n_14\,
      \data_out_s_reg[31]\(19) => \gen_macc[24].logic_inst_n_15\,
      \data_out_s_reg[31]\(18) => \gen_macc[24].logic_inst_n_16\,
      \data_out_s_reg[31]\(17) => \gen_macc[24].logic_inst_n_17\,
      \data_out_s_reg[31]\(16) => \gen_macc[24].logic_inst_n_18\,
      \data_out_s_reg[31]\(15) => \gen_macc[24].logic_inst_n_19\,
      \data_out_s_reg[31]\(14) => \gen_macc[24].logic_inst_n_20\,
      \data_out_s_reg[31]\(13) => \gen_macc[24].logic_inst_n_21\,
      \data_out_s_reg[31]\(12) => \gen_macc[24].logic_inst_n_22\,
      \data_out_s_reg[31]\(11) => \gen_macc[24].logic_inst_n_23\,
      \data_out_s_reg[31]\(10) => \gen_macc[24].logic_inst_n_24\,
      \data_out_s_reg[31]\(9) => \gen_macc[24].logic_inst_n_25\,
      \data_out_s_reg[31]\(8) => \gen_macc[24].logic_inst_n_26\,
      \data_out_s_reg[31]\(7) => \gen_macc[24].logic_inst_n_27\,
      \data_out_s_reg[31]\(6) => \gen_macc[24].logic_inst_n_28\,
      \data_out_s_reg[31]\(5) => \gen_macc[24].logic_inst_n_29\,
      \data_out_s_reg[31]\(4) => \gen_macc[24].logic_inst_n_30\,
      \data_out_s_reg[31]\(3) => \gen_macc[24].logic_inst_n_31\,
      \data_out_s_reg[31]\(2) => \gen_macc[24].logic_inst_n_32\,
      \data_out_s_reg[31]\(1) => \gen_macc[24].logic_inst_n_33\,
      \data_out_s_reg[31]\(0) => \gen_macc[24].logic_inst_n_34\,
      \data_out_s_reg[31]_0\ => \gen_macc[23].logic_inst_n_64\,
      \data_out_s_reg[31]_1\ => \gen_macc[19].logic_inst_n_64\,
      \data_out_s_reg[31]_2\ => \gen_macc[11].logic_inst_n_64\,
      \data_out_s_reg[31]_i_13_0\(31) => \gen_macc[2].logic_inst_n_33\,
      \data_out_s_reg[31]_i_13_0\(30) => \gen_macc[2].logic_inst_n_34\,
      \data_out_s_reg[31]_i_13_0\(29) => \gen_macc[2].logic_inst_n_35\,
      \data_out_s_reg[31]_i_13_0\(28) => \gen_macc[2].logic_inst_n_36\,
      \data_out_s_reg[31]_i_13_0\(27) => \gen_macc[2].logic_inst_n_37\,
      \data_out_s_reg[31]_i_13_0\(26) => \gen_macc[2].logic_inst_n_38\,
      \data_out_s_reg[31]_i_13_0\(25) => \gen_macc[2].logic_inst_n_39\,
      \data_out_s_reg[31]_i_13_0\(24) => \gen_macc[2].logic_inst_n_40\,
      \data_out_s_reg[31]_i_13_0\(23) => \gen_macc[2].logic_inst_n_41\,
      \data_out_s_reg[31]_i_13_0\(22) => \gen_macc[2].logic_inst_n_42\,
      \data_out_s_reg[31]_i_13_0\(21) => \gen_macc[2].logic_inst_n_43\,
      \data_out_s_reg[31]_i_13_0\(20) => \gen_macc[2].logic_inst_n_44\,
      \data_out_s_reg[31]_i_13_0\(19) => \gen_macc[2].logic_inst_n_45\,
      \data_out_s_reg[31]_i_13_0\(18) => \gen_macc[2].logic_inst_n_46\,
      \data_out_s_reg[31]_i_13_0\(17) => \gen_macc[2].logic_inst_n_47\,
      \data_out_s_reg[31]_i_13_0\(16) => \gen_macc[2].logic_inst_n_48\,
      \data_out_s_reg[31]_i_13_0\(15) => \gen_macc[2].logic_inst_n_49\,
      \data_out_s_reg[31]_i_13_0\(14) => \gen_macc[2].logic_inst_n_50\,
      \data_out_s_reg[31]_i_13_0\(13) => \gen_macc[2].logic_inst_n_51\,
      \data_out_s_reg[31]_i_13_0\(12) => \gen_macc[2].logic_inst_n_52\,
      \data_out_s_reg[31]_i_13_0\(11) => \gen_macc[2].logic_inst_n_53\,
      \data_out_s_reg[31]_i_13_0\(10) => \gen_macc[2].logic_inst_n_54\,
      \data_out_s_reg[31]_i_13_0\(9) => \gen_macc[2].logic_inst_n_55\,
      \data_out_s_reg[31]_i_13_0\(8) => \gen_macc[2].logic_inst_n_56\,
      \data_out_s_reg[31]_i_13_0\(7) => \gen_macc[2].logic_inst_n_57\,
      \data_out_s_reg[31]_i_13_0\(6) => \gen_macc[2].logic_inst_n_58\,
      \data_out_s_reg[31]_i_13_0\(5) => \gen_macc[2].logic_inst_n_59\,
      \data_out_s_reg[31]_i_13_0\(4) => \gen_macc[2].logic_inst_n_60\,
      \data_out_s_reg[31]_i_13_0\(3) => \gen_macc[2].logic_inst_n_61\,
      \data_out_s_reg[31]_i_13_0\(2) => \gen_macc[2].logic_inst_n_62\,
      \data_out_s_reg[31]_i_13_0\(1) => \gen_macc[2].logic_inst_n_63\,
      \data_out_s_reg[31]_i_13_0\(0) => \gen_macc[2].logic_inst_n_64\,
      \data_out_s_reg[31]_i_13_1\(31) => \gen_macc[1].logic_inst_n_33\,
      \data_out_s_reg[31]_i_13_1\(30) => \gen_macc[1].logic_inst_n_34\,
      \data_out_s_reg[31]_i_13_1\(29) => \gen_macc[1].logic_inst_n_35\,
      \data_out_s_reg[31]_i_13_1\(28) => \gen_macc[1].logic_inst_n_36\,
      \data_out_s_reg[31]_i_13_1\(27) => \gen_macc[1].logic_inst_n_37\,
      \data_out_s_reg[31]_i_13_1\(26) => \gen_macc[1].logic_inst_n_38\,
      \data_out_s_reg[31]_i_13_1\(25) => \gen_macc[1].logic_inst_n_39\,
      \data_out_s_reg[31]_i_13_1\(24) => \gen_macc[1].logic_inst_n_40\,
      \data_out_s_reg[31]_i_13_1\(23) => \gen_macc[1].logic_inst_n_41\,
      \data_out_s_reg[31]_i_13_1\(22) => \gen_macc[1].logic_inst_n_42\,
      \data_out_s_reg[31]_i_13_1\(21) => \gen_macc[1].logic_inst_n_43\,
      \data_out_s_reg[31]_i_13_1\(20) => \gen_macc[1].logic_inst_n_44\,
      \data_out_s_reg[31]_i_13_1\(19) => \gen_macc[1].logic_inst_n_45\,
      \data_out_s_reg[31]_i_13_1\(18) => \gen_macc[1].logic_inst_n_46\,
      \data_out_s_reg[31]_i_13_1\(17) => \gen_macc[1].logic_inst_n_47\,
      \data_out_s_reg[31]_i_13_1\(16) => \gen_macc[1].logic_inst_n_48\,
      \data_out_s_reg[31]_i_13_1\(15) => \gen_macc[1].logic_inst_n_49\,
      \data_out_s_reg[31]_i_13_1\(14) => \gen_macc[1].logic_inst_n_50\,
      \data_out_s_reg[31]_i_13_1\(13) => \gen_macc[1].logic_inst_n_51\,
      \data_out_s_reg[31]_i_13_1\(12) => \gen_macc[1].logic_inst_n_52\,
      \data_out_s_reg[31]_i_13_1\(11) => \gen_macc[1].logic_inst_n_53\,
      \data_out_s_reg[31]_i_13_1\(10) => \gen_macc[1].logic_inst_n_54\,
      \data_out_s_reg[31]_i_13_1\(9) => \gen_macc[1].logic_inst_n_55\,
      \data_out_s_reg[31]_i_13_1\(8) => \gen_macc[1].logic_inst_n_56\,
      \data_out_s_reg[31]_i_13_1\(7) => \gen_macc[1].logic_inst_n_57\,
      \data_out_s_reg[31]_i_13_1\(6) => \gen_macc[1].logic_inst_n_58\,
      \data_out_s_reg[31]_i_13_1\(5) => \gen_macc[1].logic_inst_n_59\,
      \data_out_s_reg[31]_i_13_1\(4) => \gen_macc[1].logic_inst_n_60\,
      \data_out_s_reg[31]_i_13_1\(3) => \gen_macc[1].logic_inst_n_61\,
      \data_out_s_reg[31]_i_13_1\(2) => \gen_macc[1].logic_inst_n_62\,
      \data_out_s_reg[31]_i_13_1\(1) => \gen_macc[1].logic_inst_n_63\,
      \data_out_s_reg[31]_i_13_1\(0) => \gen_macc[1].logic_inst_n_64\,
      \data_out_s_reg[31]_i_13_2\(31 downto 0) => final_res_s(31 downto 0),
      \data_out_s_reg[31]_i_8_0\ => \gen_macc[7].logic_inst_n_64\,
      \data_out_s_reg[3]\ => \gen_macc[23].logic_inst_n_36\,
      \data_out_s_reg[3]_0\ => \gen_macc[19].logic_inst_n_36\,
      \data_out_s_reg[3]_1\ => \gen_macc[11].logic_inst_n_36\,
      \data_out_s_reg[3]_i_2_0\ => \gen_macc[7].logic_inst_n_36\,
      \data_out_s_reg[4]\ => \gen_macc[23].logic_inst_n_37\,
      \data_out_s_reg[4]_0\ => \gen_macc[19].logic_inst_n_37\,
      \data_out_s_reg[4]_1\ => \gen_macc[11].logic_inst_n_37\,
      \data_out_s_reg[4]_i_2_0\ => \gen_macc[7].logic_inst_n_37\,
      \data_out_s_reg[5]\ => \gen_macc[23].logic_inst_n_38\,
      \data_out_s_reg[5]_0\ => \gen_macc[19].logic_inst_n_38\,
      \data_out_s_reg[5]_1\ => \gen_macc[11].logic_inst_n_38\,
      \data_out_s_reg[5]_i_2_0\ => \gen_macc[7].logic_inst_n_38\,
      \data_out_s_reg[6]\ => \gen_macc[23].logic_inst_n_39\,
      \data_out_s_reg[6]_0\ => \gen_macc[19].logic_inst_n_39\,
      \data_out_s_reg[6]_1\ => \gen_macc[11].logic_inst_n_39\,
      \data_out_s_reg[6]_i_2_0\ => \gen_macc[7].logic_inst_n_39\,
      \data_out_s_reg[7]\ => \gen_macc[23].logic_inst_n_40\,
      \data_out_s_reg[7]_0\ => \gen_macc[19].logic_inst_n_40\,
      \data_out_s_reg[7]_1\ => \gen_macc[11].logic_inst_n_40\,
      \data_out_s_reg[7]_i_2_0\ => \gen_macc[7].logic_inst_n_40\,
      \data_out_s_reg[8]\ => \gen_macc[23].logic_inst_n_41\,
      \data_out_s_reg[8]_0\ => \gen_macc[19].logic_inst_n_41\,
      \data_out_s_reg[8]_1\ => \gen_macc[11].logic_inst_n_41\,
      \data_out_s_reg[8]_i_2_0\ => \gen_macc[7].logic_inst_n_41\,
      \data_out_s_reg[9]\ => \gen_macc[23].logic_inst_n_42\,
      \data_out_s_reg[9]_0\ => \gen_macc[19].logic_inst_n_42\,
      \data_out_s_reg[9]_1\ => \gen_macc[11].logic_inst_n_42\,
      \data_out_s_reg[9]_i_2_0\ => \gen_macc[7].logic_inst_n_42\,
      data_rst_i => data_rst_i,
      end_s => end_s_80,
      ready_s => ready_s_79,
      ready_s_reg_0(0) => ready_next_s(4),
      res_s0 => res_s0_40,
      res_s_reg_0(29) => \gen_macc[2].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[2].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[2].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[2].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[2].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[2].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[2].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[2].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[2].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[2].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[2].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[2].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[2].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[2].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[2].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[2].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[2].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[2].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[2].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[2].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[2].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[2].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[2].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[2].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[2].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[2].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[2].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[2].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[2].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[2].logic_inst_n_31\
    );
\gen_macc[4].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_18
     port map (
      ACOUT(29) => \gen_macc[4].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[4].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[4].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[4].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[4].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[4].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[4].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[4].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[4].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[4].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[4].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[4].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[4].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[4].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[4].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[4].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[4].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[4].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[4].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[4].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[4].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[4].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[4].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[4].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[4].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[4].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[4].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[4].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[4].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[4].logic_inst_n_31\,
      E(0) => data_out_en_s_39,
      Q(0) => end_next_s_0(5),
      data_clk_i => data_clk_i,
      data_en_s(0) => data_en_s(4),
      data_en_s_0 => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_82,
      \final_res_s_reg[31]_0\(31) => \gen_macc[4].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[4].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[4].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[4].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[4].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[4].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[4].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[4].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[4].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[4].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[4].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[4].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[4].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[4].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[4].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[4].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[4].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[4].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[4].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[4].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[4].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[4].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[4].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[4].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[4].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[4].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[4].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[4].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[4].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[4].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[4].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[4].logic_inst_n_64\,
      ready_s => ready_s_81,
      ready_s_reg_0(0) => ready_next_s(5),
      res_s0 => res_s0_38,
      res_s_reg_0(29) => \gen_macc[3].logic_inst_n_1\,
      res_s_reg_0(28) => \gen_macc[3].logic_inst_n_2\,
      res_s_reg_0(27) => \gen_macc[3].logic_inst_n_3\,
      res_s_reg_0(26) => \gen_macc[3].logic_inst_n_4\,
      res_s_reg_0(25) => \gen_macc[3].logic_inst_n_5\,
      res_s_reg_0(24) => \gen_macc[3].logic_inst_n_6\,
      res_s_reg_0(23) => \gen_macc[3].logic_inst_n_7\,
      res_s_reg_0(22) => \gen_macc[3].logic_inst_n_8\,
      res_s_reg_0(21) => \gen_macc[3].logic_inst_n_9\,
      res_s_reg_0(20) => \gen_macc[3].logic_inst_n_10\,
      res_s_reg_0(19) => \gen_macc[3].logic_inst_n_11\,
      res_s_reg_0(18) => \gen_macc[3].logic_inst_n_12\,
      res_s_reg_0(17) => \gen_macc[3].logic_inst_n_13\,
      res_s_reg_0(16) => \gen_macc[3].logic_inst_n_14\,
      res_s_reg_0(15) => \gen_macc[3].logic_inst_n_15\,
      res_s_reg_0(14) => \gen_macc[3].logic_inst_n_16\,
      res_s_reg_0(13) => \gen_macc[3].logic_inst_n_17\,
      res_s_reg_0(12) => \gen_macc[3].logic_inst_n_18\,
      res_s_reg_0(11) => \gen_macc[3].logic_inst_n_19\,
      res_s_reg_0(10) => \gen_macc[3].logic_inst_n_20\,
      res_s_reg_0(9) => \gen_macc[3].logic_inst_n_21\,
      res_s_reg_0(8) => \gen_macc[3].logic_inst_n_22\,
      res_s_reg_0(7) => \gen_macc[3].logic_inst_n_23\,
      res_s_reg_0(6) => \gen_macc[3].logic_inst_n_24\,
      res_s_reg_0(5) => \gen_macc[3].logic_inst_n_25\,
      res_s_reg_0(4) => \gen_macc[3].logic_inst_n_26\,
      res_s_reg_0(3) => \gen_macc[3].logic_inst_n_27\,
      res_s_reg_0(2) => \gen_macc[3].logic_inst_n_28\,
      res_s_reg_0(1) => \gen_macc[3].logic_inst_n_29\,
      res_s_reg_0(0) => \gen_macc[3].logic_inst_n_30\
    );
\gen_macc[5].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_19
     port map (
      ACOUT(29) => \gen_macc[5].logic_inst_n_1\,
      ACOUT(28) => \gen_macc[5].logic_inst_n_2\,
      ACOUT(27) => \gen_macc[5].logic_inst_n_3\,
      ACOUT(26) => \gen_macc[5].logic_inst_n_4\,
      ACOUT(25) => \gen_macc[5].logic_inst_n_5\,
      ACOUT(24) => \gen_macc[5].logic_inst_n_6\,
      ACOUT(23) => \gen_macc[5].logic_inst_n_7\,
      ACOUT(22) => \gen_macc[5].logic_inst_n_8\,
      ACOUT(21) => \gen_macc[5].logic_inst_n_9\,
      ACOUT(20) => \gen_macc[5].logic_inst_n_10\,
      ACOUT(19) => \gen_macc[5].logic_inst_n_11\,
      ACOUT(18) => \gen_macc[5].logic_inst_n_12\,
      ACOUT(17) => \gen_macc[5].logic_inst_n_13\,
      ACOUT(16) => \gen_macc[5].logic_inst_n_14\,
      ACOUT(15) => \gen_macc[5].logic_inst_n_15\,
      ACOUT(14) => \gen_macc[5].logic_inst_n_16\,
      ACOUT(13) => \gen_macc[5].logic_inst_n_17\,
      ACOUT(12) => \gen_macc[5].logic_inst_n_18\,
      ACOUT(11) => \gen_macc[5].logic_inst_n_19\,
      ACOUT(10) => \gen_macc[5].logic_inst_n_20\,
      ACOUT(9) => \gen_macc[5].logic_inst_n_21\,
      ACOUT(8) => \gen_macc[5].logic_inst_n_22\,
      ACOUT(7) => \gen_macc[5].logic_inst_n_23\,
      ACOUT(6) => \gen_macc[5].logic_inst_n_24\,
      ACOUT(5) => \gen_macc[5].logic_inst_n_25\,
      ACOUT(4) => \gen_macc[5].logic_inst_n_26\,
      ACOUT(3) => \gen_macc[5].logic_inst_n_27\,
      ACOUT(2) => \gen_macc[5].logic_inst_n_28\,
      ACOUT(1) => \gen_macc[5].logic_inst_n_29\,
      ACOUT(0) => \gen_macc[5].logic_inst_n_30\,
      E(0) => data_out_en_s_37,
      Q(0) => end_next_s_0(6),
      \cpt_store_s_reg[0]_rep\(1) => data_en_s(6),
      \cpt_store_s_reg[0]_rep\(0) => data_en_s(4),
      data_clk_i => data_clk_i,
      data_en_o_reg_0 => \gen_macc[5].logic_inst_n_32\,
      data_en_s => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_84,
      \final_res_s_reg[31]_0\(31) => \gen_macc[5].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[5].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[5].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[5].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[5].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[5].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[5].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[5].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[5].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[5].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[5].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[5].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[5].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[5].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[5].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[5].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[5].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[5].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[5].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[5].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[5].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[5].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[5].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[5].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[5].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[5].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[5].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[5].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[5].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[5].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[5].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[5].logic_inst_n_64\,
      ready_s => ready_s_83,
      ready_s_reg_0(0) => ready_next_s(6),
      res_s0 => res_s0_36,
      res_s_reg_0(29) => \gen_macc[4].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[4].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[4].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[4].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[4].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[4].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[4].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[4].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[4].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[4].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[4].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[4].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[4].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[4].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[4].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[4].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[4].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[4].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[4].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[4].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[4].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[4].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[4].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[4].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[4].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[4].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[4].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[4].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[4].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[4].logic_inst_n_31\
    );
\gen_macc[6].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_20
     port map (
      ACOUT(29) => \gen_macc[6].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[6].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[6].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[6].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[6].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[6].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[6].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[6].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[6].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[6].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[6].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[6].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[6].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[6].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[6].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[6].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[6].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[6].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[6].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[6].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[6].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[6].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[6].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[6].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[6].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[6].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[6].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[6].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[6].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[6].logic_inst_n_31\,
      E(0) => data_out_en_s_35,
      Q(0) => end_next_s_0(7),
      data_clk_i => data_clk_i,
      data_en_o_reg_0(0) => data_en_s(6),
      data_en_s => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_86,
      \final_res_s_reg[31]_0\(31) => \gen_macc[6].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[6].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[6].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[6].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[6].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[6].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[6].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[6].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[6].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[6].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[6].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[6].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[6].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[6].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[6].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[6].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[6].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[6].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[6].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[6].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[6].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[6].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[6].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[6].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[6].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[6].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[6].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[6].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[6].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[6].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[6].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[6].logic_inst_n_64\,
      ready_s => ready_s_85,
      ready_s_reg_0(0) => ready_next_s(7),
      res_s0 => res_s0_34,
      res_s_reg_0(29) => \gen_macc[5].logic_inst_n_1\,
      res_s_reg_0(28) => \gen_macc[5].logic_inst_n_2\,
      res_s_reg_0(27) => \gen_macc[5].logic_inst_n_3\,
      res_s_reg_0(26) => \gen_macc[5].logic_inst_n_4\,
      res_s_reg_0(25) => \gen_macc[5].logic_inst_n_5\,
      res_s_reg_0(24) => \gen_macc[5].logic_inst_n_6\,
      res_s_reg_0(23) => \gen_macc[5].logic_inst_n_7\,
      res_s_reg_0(22) => \gen_macc[5].logic_inst_n_8\,
      res_s_reg_0(21) => \gen_macc[5].logic_inst_n_9\,
      res_s_reg_0(20) => \gen_macc[5].logic_inst_n_10\,
      res_s_reg_0(19) => \gen_macc[5].logic_inst_n_11\,
      res_s_reg_0(18) => \gen_macc[5].logic_inst_n_12\,
      res_s_reg_0(17) => \gen_macc[5].logic_inst_n_13\,
      res_s_reg_0(16) => \gen_macc[5].logic_inst_n_14\,
      res_s_reg_0(15) => \gen_macc[5].logic_inst_n_15\,
      res_s_reg_0(14) => \gen_macc[5].logic_inst_n_16\,
      res_s_reg_0(13) => \gen_macc[5].logic_inst_n_17\,
      res_s_reg_0(12) => \gen_macc[5].logic_inst_n_18\,
      res_s_reg_0(11) => \gen_macc[5].logic_inst_n_19\,
      res_s_reg_0(10) => \gen_macc[5].logic_inst_n_20\,
      res_s_reg_0(9) => \gen_macc[5].logic_inst_n_21\,
      res_s_reg_0(8) => \gen_macc[5].logic_inst_n_22\,
      res_s_reg_0(7) => \gen_macc[5].logic_inst_n_23\,
      res_s_reg_0(6) => \gen_macc[5].logic_inst_n_24\,
      res_s_reg_0(5) => \gen_macc[5].logic_inst_n_25\,
      res_s_reg_0(4) => \gen_macc[5].logic_inst_n_26\,
      res_s_reg_0(3) => \gen_macc[5].logic_inst_n_27\,
      res_s_reg_0(2) => \gen_macc[5].logic_inst_n_28\,
      res_s_reg_0(1) => \gen_macc[5].logic_inst_n_29\,
      res_s_reg_0(0) => \gen_macc[5].logic_inst_n_30\
    );
\gen_macc[7].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_21
     port map (
      ACOUT(29) => \gen_macc[7].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[7].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[7].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[7].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[7].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[7].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[7].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[7].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[7].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[7].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[7].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[7].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[7].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[7].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[7].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[7].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[7].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[7].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[7].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[7].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[7].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[7].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[7].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[7].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[7].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[7].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[7].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[7].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[7].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[7].logic_inst_n_31\,
      E(0) => data_out_en_s_33,
      Q(0) => end_next_s_0(8),
      data_clk_i => data_clk_i,
      data_en_o_reg_0(0) => data_en_s(7),
      data_en_s => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      \data_out_s_reg[0]_i_5\ => \cpt_store_s_reg[1]_rep_n_0\,
      \data_out_s_reg[10]_i_5\ => \cpt_store_s_reg[0]_rep_n_0\,
      \data_out_s_reg[31]_i_13\(31) => \gen_macc[6].logic_inst_n_33\,
      \data_out_s_reg[31]_i_13\(30) => \gen_macc[6].logic_inst_n_34\,
      \data_out_s_reg[31]_i_13\(29) => \gen_macc[6].logic_inst_n_35\,
      \data_out_s_reg[31]_i_13\(28) => \gen_macc[6].logic_inst_n_36\,
      \data_out_s_reg[31]_i_13\(27) => \gen_macc[6].logic_inst_n_37\,
      \data_out_s_reg[31]_i_13\(26) => \gen_macc[6].logic_inst_n_38\,
      \data_out_s_reg[31]_i_13\(25) => \gen_macc[6].logic_inst_n_39\,
      \data_out_s_reg[31]_i_13\(24) => \gen_macc[6].logic_inst_n_40\,
      \data_out_s_reg[31]_i_13\(23) => \gen_macc[6].logic_inst_n_41\,
      \data_out_s_reg[31]_i_13\(22) => \gen_macc[6].logic_inst_n_42\,
      \data_out_s_reg[31]_i_13\(21) => \gen_macc[6].logic_inst_n_43\,
      \data_out_s_reg[31]_i_13\(20) => \gen_macc[6].logic_inst_n_44\,
      \data_out_s_reg[31]_i_13\(19) => \gen_macc[6].logic_inst_n_45\,
      \data_out_s_reg[31]_i_13\(18) => \gen_macc[6].logic_inst_n_46\,
      \data_out_s_reg[31]_i_13\(17) => \gen_macc[6].logic_inst_n_47\,
      \data_out_s_reg[31]_i_13\(16) => \gen_macc[6].logic_inst_n_48\,
      \data_out_s_reg[31]_i_13\(15) => \gen_macc[6].logic_inst_n_49\,
      \data_out_s_reg[31]_i_13\(14) => \gen_macc[6].logic_inst_n_50\,
      \data_out_s_reg[31]_i_13\(13) => \gen_macc[6].logic_inst_n_51\,
      \data_out_s_reg[31]_i_13\(12) => \gen_macc[6].logic_inst_n_52\,
      \data_out_s_reg[31]_i_13\(11) => \gen_macc[6].logic_inst_n_53\,
      \data_out_s_reg[31]_i_13\(10) => \gen_macc[6].logic_inst_n_54\,
      \data_out_s_reg[31]_i_13\(9) => \gen_macc[6].logic_inst_n_55\,
      \data_out_s_reg[31]_i_13\(8) => \gen_macc[6].logic_inst_n_56\,
      \data_out_s_reg[31]_i_13\(7) => \gen_macc[6].logic_inst_n_57\,
      \data_out_s_reg[31]_i_13\(6) => \gen_macc[6].logic_inst_n_58\,
      \data_out_s_reg[31]_i_13\(5) => \gen_macc[6].logic_inst_n_59\,
      \data_out_s_reg[31]_i_13\(4) => \gen_macc[6].logic_inst_n_60\,
      \data_out_s_reg[31]_i_13\(3) => \gen_macc[6].logic_inst_n_61\,
      \data_out_s_reg[31]_i_13\(2) => \gen_macc[6].logic_inst_n_62\,
      \data_out_s_reg[31]_i_13\(1) => \gen_macc[6].logic_inst_n_63\,
      \data_out_s_reg[31]_i_13\(0) => \gen_macc[6].logic_inst_n_64\,
      \data_out_s_reg[31]_i_13_0\(31) => \gen_macc[5].logic_inst_n_33\,
      \data_out_s_reg[31]_i_13_0\(30) => \gen_macc[5].logic_inst_n_34\,
      \data_out_s_reg[31]_i_13_0\(29) => \gen_macc[5].logic_inst_n_35\,
      \data_out_s_reg[31]_i_13_0\(28) => \gen_macc[5].logic_inst_n_36\,
      \data_out_s_reg[31]_i_13_0\(27) => \gen_macc[5].logic_inst_n_37\,
      \data_out_s_reg[31]_i_13_0\(26) => \gen_macc[5].logic_inst_n_38\,
      \data_out_s_reg[31]_i_13_0\(25) => \gen_macc[5].logic_inst_n_39\,
      \data_out_s_reg[31]_i_13_0\(24) => \gen_macc[5].logic_inst_n_40\,
      \data_out_s_reg[31]_i_13_0\(23) => \gen_macc[5].logic_inst_n_41\,
      \data_out_s_reg[31]_i_13_0\(22) => \gen_macc[5].logic_inst_n_42\,
      \data_out_s_reg[31]_i_13_0\(21) => \gen_macc[5].logic_inst_n_43\,
      \data_out_s_reg[31]_i_13_0\(20) => \gen_macc[5].logic_inst_n_44\,
      \data_out_s_reg[31]_i_13_0\(19) => \gen_macc[5].logic_inst_n_45\,
      \data_out_s_reg[31]_i_13_0\(18) => \gen_macc[5].logic_inst_n_46\,
      \data_out_s_reg[31]_i_13_0\(17) => \gen_macc[5].logic_inst_n_47\,
      \data_out_s_reg[31]_i_13_0\(16) => \gen_macc[5].logic_inst_n_48\,
      \data_out_s_reg[31]_i_13_0\(15) => \gen_macc[5].logic_inst_n_49\,
      \data_out_s_reg[31]_i_13_0\(14) => \gen_macc[5].logic_inst_n_50\,
      \data_out_s_reg[31]_i_13_0\(13) => \gen_macc[5].logic_inst_n_51\,
      \data_out_s_reg[31]_i_13_0\(12) => \gen_macc[5].logic_inst_n_52\,
      \data_out_s_reg[31]_i_13_0\(11) => \gen_macc[5].logic_inst_n_53\,
      \data_out_s_reg[31]_i_13_0\(10) => \gen_macc[5].logic_inst_n_54\,
      \data_out_s_reg[31]_i_13_0\(9) => \gen_macc[5].logic_inst_n_55\,
      \data_out_s_reg[31]_i_13_0\(8) => \gen_macc[5].logic_inst_n_56\,
      \data_out_s_reg[31]_i_13_0\(7) => \gen_macc[5].logic_inst_n_57\,
      \data_out_s_reg[31]_i_13_0\(6) => \gen_macc[5].logic_inst_n_58\,
      \data_out_s_reg[31]_i_13_0\(5) => \gen_macc[5].logic_inst_n_59\,
      \data_out_s_reg[31]_i_13_0\(4) => \gen_macc[5].logic_inst_n_60\,
      \data_out_s_reg[31]_i_13_0\(3) => \gen_macc[5].logic_inst_n_61\,
      \data_out_s_reg[31]_i_13_0\(2) => \gen_macc[5].logic_inst_n_62\,
      \data_out_s_reg[31]_i_13_0\(1) => \gen_macc[5].logic_inst_n_63\,
      \data_out_s_reg[31]_i_13_0\(0) => \gen_macc[5].logic_inst_n_64\,
      \data_out_s_reg[31]_i_13_1\(1 downto 0) => cpt_store_s_reg(1 downto 0),
      \data_out_s_reg[31]_i_13_2\(31) => \gen_macc[4].logic_inst_n_33\,
      \data_out_s_reg[31]_i_13_2\(30) => \gen_macc[4].logic_inst_n_34\,
      \data_out_s_reg[31]_i_13_2\(29) => \gen_macc[4].logic_inst_n_35\,
      \data_out_s_reg[31]_i_13_2\(28) => \gen_macc[4].logic_inst_n_36\,
      \data_out_s_reg[31]_i_13_2\(27) => \gen_macc[4].logic_inst_n_37\,
      \data_out_s_reg[31]_i_13_2\(26) => \gen_macc[4].logic_inst_n_38\,
      \data_out_s_reg[31]_i_13_2\(25) => \gen_macc[4].logic_inst_n_39\,
      \data_out_s_reg[31]_i_13_2\(24) => \gen_macc[4].logic_inst_n_40\,
      \data_out_s_reg[31]_i_13_2\(23) => \gen_macc[4].logic_inst_n_41\,
      \data_out_s_reg[31]_i_13_2\(22) => \gen_macc[4].logic_inst_n_42\,
      \data_out_s_reg[31]_i_13_2\(21) => \gen_macc[4].logic_inst_n_43\,
      \data_out_s_reg[31]_i_13_2\(20) => \gen_macc[4].logic_inst_n_44\,
      \data_out_s_reg[31]_i_13_2\(19) => \gen_macc[4].logic_inst_n_45\,
      \data_out_s_reg[31]_i_13_2\(18) => \gen_macc[4].logic_inst_n_46\,
      \data_out_s_reg[31]_i_13_2\(17) => \gen_macc[4].logic_inst_n_47\,
      \data_out_s_reg[31]_i_13_2\(16) => \gen_macc[4].logic_inst_n_48\,
      \data_out_s_reg[31]_i_13_2\(15) => \gen_macc[4].logic_inst_n_49\,
      \data_out_s_reg[31]_i_13_2\(14) => \gen_macc[4].logic_inst_n_50\,
      \data_out_s_reg[31]_i_13_2\(13) => \gen_macc[4].logic_inst_n_51\,
      \data_out_s_reg[31]_i_13_2\(12) => \gen_macc[4].logic_inst_n_52\,
      \data_out_s_reg[31]_i_13_2\(11) => \gen_macc[4].logic_inst_n_53\,
      \data_out_s_reg[31]_i_13_2\(10) => \gen_macc[4].logic_inst_n_54\,
      \data_out_s_reg[31]_i_13_2\(9) => \gen_macc[4].logic_inst_n_55\,
      \data_out_s_reg[31]_i_13_2\(8) => \gen_macc[4].logic_inst_n_56\,
      \data_out_s_reg[31]_i_13_2\(7) => \gen_macc[4].logic_inst_n_57\,
      \data_out_s_reg[31]_i_13_2\(6) => \gen_macc[4].logic_inst_n_58\,
      \data_out_s_reg[31]_i_13_2\(5) => \gen_macc[4].logic_inst_n_59\,
      \data_out_s_reg[31]_i_13_2\(4) => \gen_macc[4].logic_inst_n_60\,
      \data_out_s_reg[31]_i_13_2\(3) => \gen_macc[4].logic_inst_n_61\,
      \data_out_s_reg[31]_i_13_2\(2) => \gen_macc[4].logic_inst_n_62\,
      \data_out_s_reg[31]_i_13_2\(1) => \gen_macc[4].logic_inst_n_63\,
      \data_out_s_reg[31]_i_13_2\(0) => \gen_macc[4].logic_inst_n_64\,
      data_rst_i => data_rst_i,
      end_s => end_s_88,
      \final_res_s_reg[0]_0\ => \gen_macc[7].logic_inst_n_33\,
      \final_res_s_reg[10]_0\ => \gen_macc[7].logic_inst_n_43\,
      \final_res_s_reg[11]_0\ => \gen_macc[7].logic_inst_n_44\,
      \final_res_s_reg[12]_0\ => \gen_macc[7].logic_inst_n_45\,
      \final_res_s_reg[13]_0\ => \gen_macc[7].logic_inst_n_46\,
      \final_res_s_reg[14]_0\ => \gen_macc[7].logic_inst_n_47\,
      \final_res_s_reg[15]_0\ => \gen_macc[7].logic_inst_n_48\,
      \final_res_s_reg[16]_0\ => \gen_macc[7].logic_inst_n_49\,
      \final_res_s_reg[17]_0\ => \gen_macc[7].logic_inst_n_50\,
      \final_res_s_reg[18]_0\ => \gen_macc[7].logic_inst_n_51\,
      \final_res_s_reg[19]_0\ => \gen_macc[7].logic_inst_n_52\,
      \final_res_s_reg[1]_0\ => \gen_macc[7].logic_inst_n_34\,
      \final_res_s_reg[20]_0\ => \gen_macc[7].logic_inst_n_53\,
      \final_res_s_reg[21]_0\ => \gen_macc[7].logic_inst_n_54\,
      \final_res_s_reg[22]_0\ => \gen_macc[7].logic_inst_n_55\,
      \final_res_s_reg[23]_0\ => \gen_macc[7].logic_inst_n_56\,
      \final_res_s_reg[24]_0\ => \gen_macc[7].logic_inst_n_57\,
      \final_res_s_reg[25]_0\ => \gen_macc[7].logic_inst_n_58\,
      \final_res_s_reg[26]_0\ => \gen_macc[7].logic_inst_n_59\,
      \final_res_s_reg[27]_0\ => \gen_macc[7].logic_inst_n_60\,
      \final_res_s_reg[28]_0\ => \gen_macc[7].logic_inst_n_61\,
      \final_res_s_reg[29]_0\ => \gen_macc[7].logic_inst_n_62\,
      \final_res_s_reg[2]_0\ => \gen_macc[7].logic_inst_n_35\,
      \final_res_s_reg[30]_0\ => \gen_macc[7].logic_inst_n_63\,
      \final_res_s_reg[31]_0\ => \gen_macc[7].logic_inst_n_64\,
      \final_res_s_reg[3]_0\ => \gen_macc[7].logic_inst_n_36\,
      \final_res_s_reg[4]_0\ => \gen_macc[7].logic_inst_n_37\,
      \final_res_s_reg[5]_0\ => \gen_macc[7].logic_inst_n_38\,
      \final_res_s_reg[6]_0\ => \gen_macc[7].logic_inst_n_39\,
      \final_res_s_reg[7]_0\ => \gen_macc[7].logic_inst_n_40\,
      \final_res_s_reg[8]_0\ => \gen_macc[7].logic_inst_n_41\,
      \final_res_s_reg[9]_0\ => \gen_macc[7].logic_inst_n_42\,
      ready_s => ready_s_87,
      ready_s_reg_0(0) => ready_next_s(8),
      res_s0 => res_s0_32,
      res_s_reg_0(29) => \gen_macc[6].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[6].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[6].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[6].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[6].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[6].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[6].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[6].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[6].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[6].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[6].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[6].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[6].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[6].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[6].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[6].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[6].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[6].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[6].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[6].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[6].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[6].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[6].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[6].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[6].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[6].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[6].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[6].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[6].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[6].logic_inst_n_31\
    );
\gen_macc[8].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_22
     port map (
      ACOUT(29) => \gen_macc[8].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[8].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[8].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[8].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[8].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[8].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[8].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[8].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[8].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[8].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[8].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[8].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[8].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[8].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[8].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[8].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[8].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[8].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[8].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[8].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[8].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[8].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[8].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[8].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[8].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[8].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[8].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[8].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[8].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[8].logic_inst_n_31\,
      E(0) => data_out_en_s_31,
      Q(0) => end_next_s_0(9),
      data_clk_i => data_clk_i,
      data_en_o_reg_0(0) => data_en_s(8),
      data_en_s => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_90,
      \final_res_s_reg[31]_0\(31) => \gen_macc[8].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[8].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[8].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[8].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[8].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[8].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[8].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[8].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[8].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[8].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[8].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[8].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[8].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[8].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[8].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[8].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[8].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[8].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[8].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[8].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[8].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[8].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[8].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[8].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[8].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[8].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[8].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[8].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[8].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[8].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[8].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[8].logic_inst_n_64\,
      ready_s => ready_s_89,
      ready_s_reg_0(0) => ready_next_s(9),
      res_s0 => res_s0_30,
      res_s_reg_0(29) => \gen_macc[7].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[7].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[7].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[7].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[7].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[7].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[7].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[7].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[7].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[7].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[7].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[7].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[7].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[7].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[7].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[7].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[7].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[7].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[7].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[7].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[7].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[7].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[7].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[7].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[7].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[7].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[7].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[7].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[7].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[7].logic_inst_n_31\
    );
\gen_macc[9].logic_inst\: entity work.double_iq_pid_vco_firReal_1_0_firReal_proc_23
     port map (
      ACOUT(29) => \gen_macc[8].logic_inst_n_2\,
      ACOUT(28) => \gen_macc[8].logic_inst_n_3\,
      ACOUT(27) => \gen_macc[8].logic_inst_n_4\,
      ACOUT(26) => \gen_macc[8].logic_inst_n_5\,
      ACOUT(25) => \gen_macc[8].logic_inst_n_6\,
      ACOUT(24) => \gen_macc[8].logic_inst_n_7\,
      ACOUT(23) => \gen_macc[8].logic_inst_n_8\,
      ACOUT(22) => \gen_macc[8].logic_inst_n_9\,
      ACOUT(21) => \gen_macc[8].logic_inst_n_10\,
      ACOUT(20) => \gen_macc[8].logic_inst_n_11\,
      ACOUT(19) => \gen_macc[8].logic_inst_n_12\,
      ACOUT(18) => \gen_macc[8].logic_inst_n_13\,
      ACOUT(17) => \gen_macc[8].logic_inst_n_14\,
      ACOUT(16) => \gen_macc[8].logic_inst_n_15\,
      ACOUT(15) => \gen_macc[8].logic_inst_n_16\,
      ACOUT(14) => \gen_macc[8].logic_inst_n_17\,
      ACOUT(13) => \gen_macc[8].logic_inst_n_18\,
      ACOUT(12) => \gen_macc[8].logic_inst_n_19\,
      ACOUT(11) => \gen_macc[8].logic_inst_n_20\,
      ACOUT(10) => \gen_macc[8].logic_inst_n_21\,
      ACOUT(9) => \gen_macc[8].logic_inst_n_22\,
      ACOUT(8) => \gen_macc[8].logic_inst_n_23\,
      ACOUT(7) => \gen_macc[8].logic_inst_n_24\,
      ACOUT(6) => \gen_macc[8].logic_inst_n_25\,
      ACOUT(5) => \gen_macc[8].logic_inst_n_26\,
      ACOUT(4) => \gen_macc[8].logic_inst_n_27\,
      ACOUT(3) => \gen_macc[8].logic_inst_n_28\,
      ACOUT(2) => \gen_macc[8].logic_inst_n_29\,
      ACOUT(1) => \gen_macc[8].logic_inst_n_30\,
      ACOUT(0) => \gen_macc[8].logic_inst_n_31\,
      E(0) => data_out_en_s_29,
      Q(0) => end_next_s_0(10),
      data_clk_i => data_clk_i,
      data_en_o_reg_0(0) => data_en_s(9),
      data_en_s => data_en_s_46,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_in_en_s => data_in_en_s,
      data_rst_i => data_rst_i,
      end_s => end_s_92,
      \final_res_s_reg[31]_0\(31) => \gen_macc[9].logic_inst_n_33\,
      \final_res_s_reg[31]_0\(30) => \gen_macc[9].logic_inst_n_34\,
      \final_res_s_reg[31]_0\(29) => \gen_macc[9].logic_inst_n_35\,
      \final_res_s_reg[31]_0\(28) => \gen_macc[9].logic_inst_n_36\,
      \final_res_s_reg[31]_0\(27) => \gen_macc[9].logic_inst_n_37\,
      \final_res_s_reg[31]_0\(26) => \gen_macc[9].logic_inst_n_38\,
      \final_res_s_reg[31]_0\(25) => \gen_macc[9].logic_inst_n_39\,
      \final_res_s_reg[31]_0\(24) => \gen_macc[9].logic_inst_n_40\,
      \final_res_s_reg[31]_0\(23) => \gen_macc[9].logic_inst_n_41\,
      \final_res_s_reg[31]_0\(22) => \gen_macc[9].logic_inst_n_42\,
      \final_res_s_reg[31]_0\(21) => \gen_macc[9].logic_inst_n_43\,
      \final_res_s_reg[31]_0\(20) => \gen_macc[9].logic_inst_n_44\,
      \final_res_s_reg[31]_0\(19) => \gen_macc[9].logic_inst_n_45\,
      \final_res_s_reg[31]_0\(18) => \gen_macc[9].logic_inst_n_46\,
      \final_res_s_reg[31]_0\(17) => \gen_macc[9].logic_inst_n_47\,
      \final_res_s_reg[31]_0\(16) => \gen_macc[9].logic_inst_n_48\,
      \final_res_s_reg[31]_0\(15) => \gen_macc[9].logic_inst_n_49\,
      \final_res_s_reg[31]_0\(14) => \gen_macc[9].logic_inst_n_50\,
      \final_res_s_reg[31]_0\(13) => \gen_macc[9].logic_inst_n_51\,
      \final_res_s_reg[31]_0\(12) => \gen_macc[9].logic_inst_n_52\,
      \final_res_s_reg[31]_0\(11) => \gen_macc[9].logic_inst_n_53\,
      \final_res_s_reg[31]_0\(10) => \gen_macc[9].logic_inst_n_54\,
      \final_res_s_reg[31]_0\(9) => \gen_macc[9].logic_inst_n_55\,
      \final_res_s_reg[31]_0\(8) => \gen_macc[9].logic_inst_n_56\,
      \final_res_s_reg[31]_0\(7) => \gen_macc[9].logic_inst_n_57\,
      \final_res_s_reg[31]_0\(6) => \gen_macc[9].logic_inst_n_58\,
      \final_res_s_reg[31]_0\(5) => \gen_macc[9].logic_inst_n_59\,
      \final_res_s_reg[31]_0\(4) => \gen_macc[9].logic_inst_n_60\,
      \final_res_s_reg[31]_0\(3) => \gen_macc[9].logic_inst_n_61\,
      \final_res_s_reg[31]_0\(2) => \gen_macc[9].logic_inst_n_62\,
      \final_res_s_reg[31]_0\(1) => \gen_macc[9].logic_inst_n_63\,
      \final_res_s_reg[31]_0\(0) => \gen_macc[9].logic_inst_n_64\,
      ready_s => ready_s_91,
      ready_s_reg_0(0) => ready_next_s(10),
      res_s0 => res_s0_28,
      res_s_reg_0(29) => \gen_macc[9].logic_inst_n_2\,
      res_s_reg_0(28) => \gen_macc[9].logic_inst_n_3\,
      res_s_reg_0(27) => \gen_macc[9].logic_inst_n_4\,
      res_s_reg_0(26) => \gen_macc[9].logic_inst_n_5\,
      res_s_reg_0(25) => \gen_macc[9].logic_inst_n_6\,
      res_s_reg_0(24) => \gen_macc[9].logic_inst_n_7\,
      res_s_reg_0(23) => \gen_macc[9].logic_inst_n_8\,
      res_s_reg_0(22) => \gen_macc[9].logic_inst_n_9\,
      res_s_reg_0(21) => \gen_macc[9].logic_inst_n_10\,
      res_s_reg_0(20) => \gen_macc[9].logic_inst_n_11\,
      res_s_reg_0(19) => \gen_macc[9].logic_inst_n_12\,
      res_s_reg_0(18) => \gen_macc[9].logic_inst_n_13\,
      res_s_reg_0(17) => \gen_macc[9].logic_inst_n_14\,
      res_s_reg_0(16) => \gen_macc[9].logic_inst_n_15\,
      res_s_reg_0(15) => \gen_macc[9].logic_inst_n_16\,
      res_s_reg_0(14) => \gen_macc[9].logic_inst_n_17\,
      res_s_reg_0(13) => \gen_macc[9].logic_inst_n_18\,
      res_s_reg_0(12) => \gen_macc[9].logic_inst_n_19\,
      res_s_reg_0(11) => \gen_macc[9].logic_inst_n_20\,
      res_s_reg_0(10) => \gen_macc[9].logic_inst_n_21\,
      res_s_reg_0(9) => \gen_macc[9].logic_inst_n_22\,
      res_s_reg_0(8) => \gen_macc[9].logic_inst_n_23\,
      res_s_reg_0(7) => \gen_macc[9].logic_inst_n_24\,
      res_s_reg_0(6) => \gen_macc[9].logic_inst_n_25\,
      res_s_reg_0(5) => \gen_macc[9].logic_inst_n_26\,
      res_s_reg_0(4) => \gen_macc[9].logic_inst_n_27\,
      res_s_reg_0(3) => \gen_macc[9].logic_inst_n_28\,
      res_s_reg_0(2) => \gen_macc[9].logic_inst_n_29\,
      res_s_reg_0(1) => \gen_macc[9].logic_inst_n_30\,
      res_s_reg_0(0) => \gen_macc[9].logic_inst_n_31\
    );
ram_coeff: entity work.double_iq_pid_vco_firReal_1_0_firReal_ram
     port map (
      DOBDO(15 downto 0) => coeff_s(15 downto 0),
      Q(4) => \cpt_s_reg_n_0_[4]\,
      Q(3) => \cpt_s_reg_n_0_[3]\,
      Q(2) => \cpt_s_reg_n_0_[2]\,
      Q(1) => \cpt_s_reg_n_0_[1]\,
      Q(0) => \cpt_s_reg_n_0_[0]\,
      coeff_en_s => coeff_en_s,
      data_clk_i => data_clk_i,
      mem_reg_0(4 downto 0) => mem_reg(4 downto 0),
      mem_reg_1(15 downto 0) => mem_reg_0(15 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
\ready_s_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(0),
      Q => ready_next_s(1),
      S => data_rst_i
    );
\ready_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(10),
      Q => ready_next_s(11),
      R => data_rst_i
    );
\ready_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(11),
      Q => ready_next_s(12),
      R => data_rst_i
    );
\ready_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(12),
      Q => ready_next_s(13),
      R => data_rst_i
    );
\ready_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(13),
      Q => ready_next_s(14),
      R => data_rst_i
    );
\ready_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(14),
      Q => ready_next_s(15),
      R => data_rst_i
    );
\ready_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(15),
      Q => ready_next_s(16),
      R => data_rst_i
    );
\ready_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(16),
      Q => ready_next_s(17),
      R => data_rst_i
    );
\ready_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(17),
      Q => ready_next_s(18),
      R => data_rst_i
    );
\ready_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(18),
      Q => ready_next_s(19),
      R => data_rst_i
    );
\ready_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(19),
      Q => ready_next_s(20),
      R => data_rst_i
    );
\ready_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(1),
      Q => ready_next_s(2),
      R => data_rst_i
    );
\ready_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(20),
      Q => ready_next_s(21),
      R => data_rst_i
    );
\ready_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(21),
      Q => ready_next_s(22),
      R => data_rst_i
    );
\ready_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(22),
      Q => ready_next_s(23),
      R => data_rst_i
    );
\ready_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(23),
      Q => ready_next_s(24),
      R => data_rst_i
    );
\ready_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(24),
      Q => ready_next_s(0),
      R => data_rst_i
    );
\ready_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(2),
      Q => ready_next_s(3),
      R => data_rst_i
    );
\ready_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(3),
      Q => ready_next_s(4),
      R => data_rst_i
    );
\ready_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(4),
      Q => ready_next_s(5),
      R => data_rst_i
    );
\ready_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(5),
      Q => ready_next_s(6),
      R => data_rst_i
    );
\ready_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(6),
      Q => ready_next_s(7),
      R => data_rst_i
    );
\ready_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(7),
      Q => ready_next_s(8),
      R => data_rst_i
    );
\ready_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(8),
      Q => ready_next_s(9),
      R => data_rst_i
    );
\ready_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_in_en_s,
      D => ready_next_s(9),
      Q => ready_next_s(10),
      R => data_rst_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0_firReal is
  port (
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tick_o : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_rst_i : in STD_LOGIC;
    data_en_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end double_iq_pid_vco_firReal_1_0_firReal;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0_firReal is
  signal addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal coeff_addr_s : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal coeff_addr_uns_s : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal coeff_en_s : STD_LOGIC;
  signal coeff_val_s : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal coeff_val_s_0 : STD_LOGIC;
  signal handle_comm_n_10 : STD_LOGIC;
  signal handle_comm_n_11 : STD_LOGIC;
  signal handle_comm_n_12 : STD_LOGIC;
  signal handle_comm_n_13 : STD_LOGIC;
  signal handle_comm_n_14 : STD_LOGIC;
  signal handle_comm_n_4 : STD_LOGIC;
  signal handle_comm_n_7 : STD_LOGIC;
  signal handle_comm_n_9 : STD_LOGIC;
  signal read_en_s : STD_LOGIC;
begin
firReal_axi_inst: entity work.double_iq_pid_vco_firReal_1_0_firReal_axi
     port map (
      D(0) => handle_comm_n_7,
      E(0) => coeff_val_s_0,
      Q(4 downto 0) => coeff_addr_uns_s(4 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      \coeff_addr_s_reg[0]_0\(0) => handle_comm_n_4,
      \coeff_addr_s_reg[4]_0\(4 downto 0) => coeff_addr_s(4 downto 0),
      \coeff_addr_s_reg[4]_1\(4) => handle_comm_n_10,
      \coeff_addr_s_reg[4]_1\(3) => handle_comm_n_11,
      \coeff_addr_s_reg[4]_1\(2) => handle_comm_n_12,
      \coeff_addr_s_reg[4]_1\(1) => handle_comm_n_13,
      \coeff_addr_s_reg[4]_1\(0) => handle_comm_n_14,
      coeff_en_s => coeff_en_s,
      coeff_en_s_reg_0 => handle_comm_n_9,
      \coeff_val_s_reg[15]_0\(15 downto 0) => coeff_val_s(15 downto 0),
      read_en_s => read_en_s,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_rdata(1 downto 0) => s00_axi_rdata(1 downto 0),
      s00_axi_reset => s00_axi_reset,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0)
    );
fir_top_inst: entity work.double_iq_pid_vco_firReal_1_0_firReal_top
     port map (
      coeff_en_s => coeff_en_s,
      data_clk_i => data_clk_i,
      data_en_i => data_en_i,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_o(31 downto 0) => data_o(31 downto 0),
      data_rst_i => data_rst_i,
      mem_reg(4 downto 0) => coeff_addr_s(4 downto 0),
      mem_reg_0(15 downto 0) => coeff_val_s(15 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      tick_o => tick_o
    );
handle_comm: entity work.double_iq_pid_vco_firReal_1_0_firReal_handCom
     port map (
      D(0) => handle_comm_n_7,
      E(0) => coeff_val_s_0,
      Q(4 downto 0) => coeff_addr_uns_s(4 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      axi_arready_reg_0 => s00_axi_arready,
      axi_awready_reg_0 => s00_axi_awready,
      axi_wready_reg_0 => s00_axi_wready,
      \coeff_addr_uns_s_reg[4]\(4) => handle_comm_n_10,
      \coeff_addr_uns_s_reg[4]\(3) => handle_comm_n_11,
      \coeff_addr_uns_s_reg[4]\(2) => handle_comm_n_12,
      \coeff_addr_uns_s_reg[4]\(1) => handle_comm_n_13,
      \coeff_addr_uns_s_reg[4]\(0) => handle_comm_n_14,
      read_en_s => read_en_s,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_awvalid_0(0) => handle_comm_n_4,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_reset => s00_axi_reset,
      s00_axi_reset_0 => handle_comm_n_9,
      s00_axi_rready => s00_axi_rready,
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_firReal_1_0 is
  port (
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    tick_o : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of double_iq_pid_vco_firReal_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of double_iq_pid_vco_firReal_1_0 : entity is "double_iq_pid_vco_firReal_0_0,firReal,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of double_iq_pid_vco_firReal_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of double_iq_pid_vco_firReal_1_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of double_iq_pid_vco_firReal_1_0 : entity is "firReal,Vivado 2019.2";
end double_iq_pid_vco_firReal_1_0;

architecture STRUCTURE of double_iq_pid_vco_firReal_1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^data_clk_i\ : STD_LOGIC;
  signal \^data_rst_i\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \^tick_o\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of data_clk_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_CLK";
  attribute x_interface_info of data_clk_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_CLK";
  attribute x_interface_info of data_en_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_EN";
  attribute x_interface_info of data_en_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_EN";
  attribute x_interface_info of data_rst_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_RST";
  attribute x_interface_info of data_rst_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_RST";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_signal_clock CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_signal_clock, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute x_interface_info of s00_axi_reset : signal is "xilinx.com:signal:reset:1.0 s00_axi_signal_reset RST";
  attribute x_interface_parameter of s00_axi_reset : signal is "XIL_INTERFACENAME s00_axi_signal_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute x_interface_info of data_i : signal is "xilinx.com:interface:real:1.0 data_in DATA";
  attribute x_interface_info of data_o : signal is "xilinx.com:interface:real:1.0 data_out DATA";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
begin
  \^data_clk_i\ <= data_clk_i;
  \^data_rst_i\ <= data_rst_i;
  data_clk_o <= \^data_clk_i\;
  data_en_o <= \^tick_o\;
  data_rst_o <= \^data_rst_i\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(25) <= \<const0>\;
  s00_axi_rdata(24) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(23) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(20) <= \<const0>\;
  s00_axi_rdata(19) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(18) <= \<const0>\;
  s00_axi_rdata(17) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(16) <= \<const0>\;
  s00_axi_rdata(15) <= \<const0>\;
  s00_axi_rdata(14) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(13) <= \<const0>\;
  s00_axi_rdata(12) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(11) <= \<const0>\;
  s00_axi_rdata(10) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(9) <= \<const0>\;
  s00_axi_rdata(8) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(7) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(6) <= \<const0>\;
  s00_axi_rdata(5) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(4) <= \<const0>\;
  s00_axi_rdata(3) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(2) <= \<const0>\;
  s00_axi_rdata(1) <= \^s00_axi_rdata\(28);
  s00_axi_rdata(0) <= \^s00_axi_rdata\(0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  tick_o <= \^tick_o\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.double_iq_pid_vco_firReal_1_0_firReal
     port map (
      data_clk_i => \^data_clk_i\,
      data_en_i => data_en_i,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_o(31 downto 0) => data_o(31 downto 0),
      data_rst_i => \^data_rst_i\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(1) => \^s00_axi_rdata\(28),
      s00_axi_rdata(0) => \^s00_axi_rdata\(0),
      s00_axi_reset => s00_axi_reset,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid,
      tick_o => \^tick_o\
    );
end STRUCTURE;
