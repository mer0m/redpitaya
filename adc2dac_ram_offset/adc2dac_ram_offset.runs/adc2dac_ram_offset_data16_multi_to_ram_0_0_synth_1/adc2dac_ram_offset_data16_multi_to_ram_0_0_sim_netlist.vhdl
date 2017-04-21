-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Tue Mar 28 17:02:34 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adc2dac_ram_offset_data16_multi_to_ram_0_0_sim_netlist.vhdl
-- Design      : adc2dac_ram_offset_data16_multi_to_ram_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_handCom is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    start_o_reg : out STD_LOGIC;
    start_o_reg_0 : out STD_LOGIC;
    \addr_reg_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    read_en_s : out STD_LOGIC;
    \readdata_s_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    mem_reg_1 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_handCom;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_handCom is
  signal addr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^addr_reg_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal addr_s : STD_LOGIC_VECTOR ( 3 to 3 );
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_reg_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal read_addr_s : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^read_en_s\ : STD_LOGIC;
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal start_o_i_2_n_0 : STD_LOGIC;
  signal \^start_o_reg_0\ : STD_LOGIC;
  signal write_addr_s : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ram_addr_s[11]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \readdata_s[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \readdata_s[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \readdata_s[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \readdata_s[13]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \readdata_s[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \readdata_s[15]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \readdata_s[16]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \readdata_s[17]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \readdata_s[18]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \readdata_s[19]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \readdata_s[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \readdata_s[20]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \readdata_s[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \readdata_s[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \readdata_s[23]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \readdata_s[24]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \readdata_s[25]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \readdata_s[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \readdata_s[27]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \readdata_s[28]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \readdata_s[29]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \readdata_s[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \readdata_s[30]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \readdata_s[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \readdata_s[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \readdata_s[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \readdata_s[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \readdata_s[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \readdata_s[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \readdata_s[9]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of start_o_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of start_o_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of wbs_read_ack_i_1 : label is "soft_lutpair20";
begin
  \addr_reg_reg[2]_0\(2 downto 0) <= \^addr_reg_reg[2]_0\(2 downto 0);
  read_en_s <= \^read_en_s\;
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
  start_o_reg_0 <= \^start_o_reg_0\;
\addr_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => write_addr_s(0),
      I1 => addr_reg(0),
      I2 => read_addr_s(0),
      I3 => start_o_i_2_n_0,
      I4 => \^read_en_s\,
      O => \^addr_reg_reg[2]_0\(0)
    );
\addr_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => write_addr_s(1),
      I1 => addr_reg(1),
      I2 => read_addr_s(1),
      I3 => start_o_i_2_n_0,
      I4 => \^read_en_s\,
      O => \^addr_reg_reg[2]_0\(1)
    );
\addr_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => write_addr_s(2),
      I1 => addr_reg(2),
      I2 => read_addr_s(2),
      I3 => start_o_i_2_n_0,
      I4 => \^read_en_s\,
      O => \^addr_reg_reg[2]_0\(2)
    );
\addr_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => write_addr_s(3),
      I1 => addr_reg(3),
      I2 => read_addr_s(3),
      I3 => start_o_i_2_n_0,
      I4 => \^read_en_s\,
      O => addr_s(3)
    );
\addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^addr_reg_reg[2]_0\(0),
      Q => addr_reg(0),
      R => '0'
    );
\addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^addr_reg_reg[2]_0\(1),
      Q => addr_reg(1),
      R => '0'
    );
\addr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^addr_reg_reg[2]_0\(2),
      Q => addr_reg(2),
      R => '0'
    );
\addr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => addr_s(3),
      Q => addr_reg(3),
      R => '0'
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(0),
      Q => read_addr_s(0),
      S => s00_axi_reset
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(1),
      Q => read_addr_s(1),
      S => s00_axi_reset
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(2),
      Q => read_addr_s(2),
      S => s00_axi_reset
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(3),
      Q => read_addr_s(3),
      S => s00_axi_reset
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => s00_axi_reset
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => write_addr_s(0),
      R => s00_axi_reset
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => write_addr_s(1),
      R => s00_axi_reset
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => write_addr_s(2),
      R => s00_axi_reset
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => write_addr_s(3),
      R => s00_axi_reset
    );
axi_awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => s00_axi_reset
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => \^s00_axi_wready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => \^s00_axi_awready\,
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
      INIT => X"55C0"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^s00_axi_arready\,
      I2 => s00_axi_arvalid,
      I3 => axi_rvalid_reg_n_0,
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
      I2 => \^s00_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => s00_axi_reset
    );
\ram_addr_s[11]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02001000"
    )
        port map (
      I0 => \^addr_reg_reg[2]_0\(0),
      I1 => addr_s(3),
      I2 => \^addr_reg_reg[2]_0\(2),
      I3 => \^read_en_s\,
      I4 => \^addr_reg_reg[2]_0\(1),
      O => E(0)
    );
\readdata_s[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(9),
      O => D(9)
    );
\readdata_s[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFC"
    )
        port map (
      I0 => mem_reg_1(10),
      I1 => \^start_o_reg_0\,
      I2 => \^addr_reg_reg[2]_0\(0),
      I3 => \^addr_reg_reg[2]_0\(1),
      O => D(10)
    );
\readdata_s[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(11),
      O => D(11)
    );
\readdata_s[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFC"
    )
        port map (
      I0 => mem_reg_1(12),
      I1 => \^start_o_reg_0\,
      I2 => \^addr_reg_reg[2]_0\(0),
      I3 => \^addr_reg_reg[2]_0\(1),
      O => D(12)
    );
\readdata_s[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(13),
      O => D(13)
    );
\readdata_s[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFC"
    )
        port map (
      I0 => mem_reg_1(14),
      I1 => \^start_o_reg_0\,
      I2 => \^addr_reg_reg[2]_0\(0),
      I3 => \^addr_reg_reg[2]_0\(1),
      O => D(14)
    );
\readdata_s[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFC"
    )
        port map (
      I0 => mem_reg_1(15),
      I1 => \^start_o_reg_0\,
      I2 => \^addr_reg_reg[2]_0\(0),
      I3 => \^addr_reg_reg[2]_0\(1),
      O => D(15)
    );
\readdata_s[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFC"
    )
        port map (
      I0 => mem_reg_1(16),
      I1 => \^start_o_reg_0\,
      I2 => \^addr_reg_reg[2]_0\(0),
      I3 => \^addr_reg_reg[2]_0\(1),
      O => D(16)
    );
\readdata_s[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(17),
      O => D(17)
    );
\readdata_s[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(18),
      O => D(18)
    );
\readdata_s[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(0),
      O => D(0)
    );
\readdata_s[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFC"
    )
        port map (
      I0 => mem_reg_1(19),
      I1 => \^start_o_reg_0\,
      I2 => \^addr_reg_reg[2]_0\(0),
      I3 => \^addr_reg_reg[2]_0\(1),
      O => D(19)
    );
\readdata_s[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFC"
    )
        port map (
      I0 => mem_reg_1(20),
      I1 => \^start_o_reg_0\,
      I2 => \^addr_reg_reg[2]_0\(0),
      I3 => \^addr_reg_reg[2]_0\(1),
      O => D(20)
    );
\readdata_s[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(21),
      O => D(21)
    );
\readdata_s[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(22),
      O => D(22)
    );
\readdata_s[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(23),
      O => D(23)
    );
\readdata_s[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(24),
      O => D(24)
    );
\readdata_s[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFC"
    )
        port map (
      I0 => mem_reg_1(25),
      I1 => \^start_o_reg_0\,
      I2 => \^addr_reg_reg[2]_0\(0),
      I3 => \^addr_reg_reg[2]_0\(1),
      O => D(25)
    );
\readdata_s[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(26),
      O => D(26)
    );
\readdata_s[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(27),
      O => D(27)
    );
\readdata_s[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(28),
      O => D(28)
    );
\readdata_s[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFC"
    )
        port map (
      I0 => mem_reg_1(1),
      I1 => \^start_o_reg_0\,
      I2 => \^addr_reg_reg[2]_0\(0),
      I3 => \^addr_reg_reg[2]_0\(1),
      O => D(1)
    );
\readdata_s[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFC"
    )
        port map (
      I0 => mem_reg_1(29),
      I1 => \^start_o_reg_0\,
      I2 => \^addr_reg_reg[2]_0\(0),
      I3 => \^addr_reg_reg[2]_0\(1),
      O => D(29)
    );
\readdata_s[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0000"
    )
        port map (
      I0 => \^addr_reg_reg[2]_0\(1),
      I1 => \^addr_reg_reg[2]_0\(2),
      I2 => \^addr_reg_reg[2]_0\(0),
      I3 => addr_s(3),
      I4 => \^read_en_s\,
      O => \readdata_s_reg[31]\(0)
    );
\readdata_s[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(30),
      O => D(30)
    );
\readdata_s[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7B3C480"
    )
        port map (
      I0 => \^read_en_s\,
      I1 => start_o_i_2_n_0,
      I2 => read_addr_s(3),
      I3 => addr_reg(3),
      I4 => write_addr_s(3),
      I5 => \^addr_reg_reg[2]_0\(2),
      O => \^start_o_reg_0\
    );
\readdata_s[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(2),
      O => D(2)
    );
\readdata_s[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFC"
    )
        port map (
      I0 => mem_reg_1(3),
      I1 => \^start_o_reg_0\,
      I2 => \^addr_reg_reg[2]_0\(0),
      I3 => \^addr_reg_reg[2]_0\(1),
      O => D(3)
    );
\readdata_s[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(4),
      O => D(4)
    );
\readdata_s[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFC"
    )
        port map (
      I0 => mem_reg_1(5),
      I1 => \^start_o_reg_0\,
      I2 => \^addr_reg_reg[2]_0\(0),
      I3 => \^addr_reg_reg[2]_0\(1),
      O => D(5)
    );
\readdata_s[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(6),
      O => D(6)
    );
\readdata_s[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => \^addr_reg_reg[2]_0\(1),
      I3 => mem_reg_1(7),
      O => D(7)
    );
\readdata_s[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFC"
    )
        port map (
      I0 => mem_reg_1(8),
      I1 => \^start_o_reg_0\,
      I2 => \^addr_reg_reg[2]_0\(0),
      I3 => \^addr_reg_reg[2]_0\(1),
      O => D(8)
    );
start_o_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^start_o_reg_0\,
      I1 => \^addr_reg_reg[2]_0\(0),
      I2 => start_o_i_2_n_0,
      I3 => \^addr_reg_reg[2]_0\(1),
      O => start_o_reg
    );
start_o_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s00_axi_wready\,
      O => start_o_i_2_n_0
    );
wbs_read_ack_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_rvalid_reg_n_0,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      O => \^read_en_s\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_logic is
  port (
    \sync_start_dis.start_acquisition2_s_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_start_dis.start_acquisition2_s_reg_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    mem_reg_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_clk_i : in STD_LOGIC;
    start_acquisition4_s : in STD_LOGIC;
    data2_en_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    \sync_start_dis.start_acquisition2_s_reg_1\ : in STD_LOGIC;
    start_o : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_logic is
  signal acquis_reg : STD_LOGIC;
  signal \acquis_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \busy_s_i_1__0_n_0\ : STD_LOGIC;
  signal busy_s_i_2_n_0 : STD_LOGIC;
  signal busy_s_i_3_n_0 : STD_LOGIC;
  signal busy_s_i_4_n_0 : STD_LOGIC;
  signal \counter[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5__0_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal ram_addr_s : STD_LOGIC;
  signal \ram_addr_s[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \ram_en_o_i_1__0_n_0\ : STD_LOGIC;
  signal \^sync_start_dis.start_acquisition2_s_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_counter_reg[8]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acquis_reg_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ram_en_o_i_1__0\ : label is "soft_lutpair1";
begin
  \sync_start_dis.start_acquisition2_s_reg\(0) <= \^sync_start_dis.start_acquisition2_s_reg\(0);
\acquis_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EE2E"
    )
        port map (
      I0 => start_acquisition4_s,
      I1 => acquis_reg,
      I2 => data2_en_i,
      I3 => busy_s_i_2_n_0,
      I4 => data2_rst_i,
      O => \acquis_reg_i_1__0_n_0\
    );
acquis_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => \acquis_reg_i_1__0_n_0\,
      Q => acquis_reg,
      R => '0'
    );
\busy_s_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AEAE0EAE"
    )
        port map (
      I0 => \^sync_start_dis.start_acquisition2_s_reg\(0),
      I1 => start_acquisition4_s,
      I2 => acquis_reg,
      I3 => data2_en_i,
      I4 => busy_s_i_2_n_0,
      I5 => data2_rst_i,
      O => \busy_s_i_1__0_n_0\
    );
busy_s_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => busy_s_i_3_n_0,
      I1 => counter_reg(5),
      I2 => counter_reg(4),
      I3 => counter_reg(7),
      I4 => counter_reg(6),
      I5 => busy_s_i_4_n_0,
      O => busy_s_i_2_n_0
    );
busy_s_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter_reg(8),
      I2 => counter_reg(11),
      I3 => counter_reg(10),
      O => busy_s_i_3_n_0
    );
busy_s_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(0),
      I2 => counter_reg(3),
      I3 => counter_reg(2),
      O => busy_s_i_4_n_0
    );
busy_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => \busy_s_i_1__0_n_0\,
      Q => \^sync_start_dis.start_acquisition2_s_reg\(0),
      R => '0'
    );
\counter[0]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(3),
      O => \counter[0]_i_2__0_n_0\
    );
\counter[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(2),
      O => \counter[0]_i_3__0_n_0\
    );
\counter[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(1),
      O => \counter[0]_i_4__0_n_0\
    );
\counter[0]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_5__0_n_0\
    );
\counter[4]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(7),
      O => \counter[4]_i_2__0_n_0\
    );
\counter[4]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(6),
      O => \counter[4]_i_3__0_n_0\
    );
\counter[4]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(5),
      O => \counter[4]_i_4__0_n_0\
    );
\counter[4]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(4),
      O => \counter[4]_i_5__0_n_0\
    );
\counter[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(11),
      O => \counter[8]_i_2__0_n_0\
    );
\counter[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(10),
      O => \counter[8]_i_3__0_n_0\
    );
\counter[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(9),
      O => \counter[8]_i_4__0_n_0\
    );
\counter[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(8),
      O => \counter[8]_i_5__0_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[0]_i_1__0_n_7\,
      Q => counter_reg(0),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\counter_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1__0_n_0\,
      CO(2) => \counter_reg[0]_i_1__0_n_1\,
      CO(1) => \counter_reg[0]_i_1__0_n_2\,
      CO(0) => \counter_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_1__0_n_4\,
      O(2) => \counter_reg[0]_i_1__0_n_5\,
      O(1) => \counter_reg[0]_i_1__0_n_6\,
      O(0) => \counter_reg[0]_i_1__0_n_7\,
      S(3) => \counter[0]_i_2__0_n_0\,
      S(2) => \counter[0]_i_3__0_n_0\,
      S(1) => \counter[0]_i_4__0_n_0\,
      S(0) => \counter[0]_i_5__0_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[8]_i_1__0_n_5\,
      Q => counter_reg(10),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[8]_i_1__0_n_4\,
      Q => counter_reg(11),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[0]_i_1__0_n_6\,
      Q => counter_reg(1),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[0]_i_1__0_n_5\,
      Q => counter_reg(2),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[0]_i_1__0_n_4\,
      Q => counter_reg(3),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[4]_i_1__0_n_7\,
      Q => counter_reg(4),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1__0_n_0\,
      CO(3) => \counter_reg[4]_i_1__0_n_0\,
      CO(2) => \counter_reg[4]_i_1__0_n_1\,
      CO(1) => \counter_reg[4]_i_1__0_n_2\,
      CO(0) => \counter_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1__0_n_4\,
      O(2) => \counter_reg[4]_i_1__0_n_5\,
      O(1) => \counter_reg[4]_i_1__0_n_6\,
      O(0) => \counter_reg[4]_i_1__0_n_7\,
      S(3) => \counter[4]_i_2__0_n_0\,
      S(2) => \counter[4]_i_3__0_n_0\,
      S(1) => \counter[4]_i_4__0_n_0\,
      S(0) => \counter[4]_i_5__0_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[4]_i_1__0_n_6\,
      Q => counter_reg(5),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[4]_i_1__0_n_5\,
      Q => counter_reg(6),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[4]_i_1__0_n_4\,
      Q => counter_reg(7),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[8]_i_1__0_n_7\,
      Q => counter_reg(8),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1__0_n_0\,
      CO(3) => \NLW_counter_reg[8]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[8]_i_1__0_n_1\,
      CO(1) => \counter_reg[8]_i_1__0_n_2\,
      CO(0) => \counter_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1__0_n_4\,
      O(2) => \counter_reg[8]_i_1__0_n_5\,
      O(1) => \counter_reg[8]_i_1__0_n_6\,
      O(0) => \counter_reg[8]_i_1__0_n_7\,
      S(3) => \counter[8]_i_2__0_n_0\,
      S(2) => \counter[8]_i_3__0_n_0\,
      S(1) => \counter[8]_i_4__0_n_0\,
      S(0) => \counter[8]_i_5__0_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[8]_i_1__0_n_6\,
      Q => counter_reg(9),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\ram_addr_s[11]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => acquis_reg,
      I1 => start_acquisition4_s,
      I2 => data2_rst_i,
      O => \ram_addr_s[11]_i_1__1_n_0\
    );
\ram_addr_s[11]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => acquis_reg,
      I1 => data2_en_i,
      O => ram_addr_s
    );
\ram_addr_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => counter_reg(0),
      Q => Q(0),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\ram_addr_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => counter_reg(10),
      Q => Q(10),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\ram_addr_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => counter_reg(11),
      Q => Q(11),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\ram_addr_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => counter_reg(1),
      Q => Q(1),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\ram_addr_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => counter_reg(2),
      Q => Q(2),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\ram_addr_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => counter_reg(3),
      Q => Q(3),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\ram_addr_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => counter_reg(4),
      Q => Q(4),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\ram_addr_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => counter_reg(5),
      Q => Q(5),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\ram_addr_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => counter_reg(6),
      Q => Q(6),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\ram_addr_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => counter_reg(7),
      Q => Q(7),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\ram_addr_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => counter_reg(8),
      Q => Q(8),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\ram_addr_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => counter_reg(9),
      Q => Q(9),
      R => \ram_addr_s[11]_i_1__1_n_0\
    );
\ram_data_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(0),
      Q => mem_reg_1(0),
      R => data2_rst_i
    );
\ram_data_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(10),
      Q => mem_reg_1(10),
      R => data2_rst_i
    );
\ram_data_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(11),
      Q => mem_reg_1(11),
      R => data2_rst_i
    );
\ram_data_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(12),
      Q => mem_reg_1(12),
      R => data2_rst_i
    );
\ram_data_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(13),
      Q => mem_reg_1(13),
      R => data2_rst_i
    );
\ram_data_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(14),
      Q => mem_reg_1(14),
      R => data2_rst_i
    );
\ram_data_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(15),
      Q => mem_reg_1(15),
      R => data2_rst_i
    );
\ram_data_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(1),
      Q => mem_reg_1(1),
      R => data2_rst_i
    );
\ram_data_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(2),
      Q => mem_reg_1(2),
      R => data2_rst_i
    );
\ram_data_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(3),
      Q => mem_reg_1(3),
      R => data2_rst_i
    );
\ram_data_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(4),
      Q => mem_reg_1(4),
      R => data2_rst_i
    );
\ram_data_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(5),
      Q => mem_reg_1(5),
      R => data2_rst_i
    );
\ram_data_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(6),
      Q => mem_reg_1(6),
      R => data2_rst_i
    );
\ram_data_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(7),
      Q => mem_reg_1(7),
      R => data2_rst_i
    );
\ram_data_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(8),
      Q => mem_reg_1(8),
      R => data2_rst_i
    );
\ram_data_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => ram_addr_s,
      D => data2_i(9),
      Q => mem_reg_1(9),
      R => data2_rst_i
    );
\ram_en_o_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data2_en_i,
      I1 => acquis_reg,
      I2 => data2_rst_i,
      O => \ram_en_o_i_1__0_n_0\
    );
ram_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => \ram_en_o_i_1__0_n_0\,
      Q => WEA(0),
      R => '0'
    );
\sync_start_dis.start_acquisition2_s_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \sync_start_dis.start_acquisition2_s_reg_1\,
      I1 => start_o,
      I2 => \^sync_start_dis.start_acquisition2_s_reg\(0),
      I3 => s00_axi_reset,
      O => \sync_start_dis.start_acquisition2_s_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_logic_1 is
  port (
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    busy_all_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_start_dis.start_acquisition2_s_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    mem_reg_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data1_clk_i : in STD_LOGIC;
    start_acquisition2_s : in STD_LOGIC;
    start_o : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    start_acquisition4_s : in STD_LOGIC;
    data1_en_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data1_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_logic_1 : entity is "data16_multi_to_ram_logic";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_logic_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_logic_1 is
  signal acquis_reg : STD_LOGIC;
  signal acquis_reg_i_1_n_0 : STD_LOGIC;
  signal acquis_reg_i_2_n_0 : STD_LOGIC;
  signal acquis_reg_i_3_n_0 : STD_LOGIC;
  signal acquis_reg_i_4_n_0 : STD_LOGIC;
  signal \^busy_all_s\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal busy_s_i_1_n_0 : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal ram_addr_s : STD_LOGIC;
  signal \ram_addr_s[11]_i_1_n_0\ : STD_LOGIC;
  signal ram_en_o_i_1_n_0 : STD_LOGIC;
  signal \NLW_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of acquis_reg_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ram_en_o_i_1 : label is "soft_lutpair0";
begin
  busy_all_s(0) <= \^busy_all_s\(0);
acquis_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EE2E"
    )
        port map (
      I0 => start_acquisition4_s,
      I1 => acquis_reg,
      I2 => data1_en_i,
      I3 => acquis_reg_i_2_n_0,
      I4 => data1_rst_i,
      O => acquis_reg_i_1_n_0
    );
acquis_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => acquis_reg_i_3_n_0,
      I1 => counter_reg(5),
      I2 => counter_reg(4),
      I3 => counter_reg(7),
      I4 => counter_reg(6),
      I5 => acquis_reg_i_4_n_0,
      O => acquis_reg_i_2_n_0
    );
acquis_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter_reg(8),
      I2 => counter_reg(11),
      I3 => counter_reg(10),
      O => acquis_reg_i_3_n_0
    );
acquis_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(0),
      I2 => counter_reg(3),
      I3 => counter_reg(2),
      O => acquis_reg_i_4_n_0
    );
acquis_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => acquis_reg_i_1_n_0,
      Q => acquis_reg,
      R => '0'
    );
busy_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AEAE0EAE"
    )
        port map (
      I0 => \^busy_all_s\(0),
      I1 => start_acquisition4_s,
      I2 => acquis_reg,
      I3 => data1_en_i,
      I4 => acquis_reg_i_2_n_0,
      I5 => data1_rst_i,
      O => busy_s_i_1_n_0
    );
busy_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => busy_s_i_1_n_0,
      Q => \^busy_all_s\(0),
      R => '0'
    );
\counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(3),
      O => \counter[0]_i_2_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(2),
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(1),
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_5_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(7),
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(6),
      O => \counter[4]_i_3_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(5),
      O => \counter[4]_i_4_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(4),
      O => \counter[4]_i_5_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(11),
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(10),
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(9),
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(8),
      O => \counter[8]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[0]_i_1_n_7\,
      Q => counter_reg(0),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2) => \counter_reg[0]_i_1_n_1\,
      CO(1) => \counter_reg[0]_i_1_n_2\,
      CO(0) => \counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3) => \counter[0]_i_2_n_0\,
      S(2) => \counter[0]_i_3_n_0\,
      S(1) => \counter[0]_i_4_n_0\,
      S(0) => \counter[0]_i_5_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[0]_i_1_n_6\,
      Q => counter_reg(1),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[0]_i_1_n_5\,
      Q => counter_reg(2),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[0]_i_1_n_4\,
      Q => counter_reg(3),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3) => \counter[4]_i_2_n_0\,
      S(2) => \counter[4]_i_3_n_0\,
      S(1) => \counter[4]_i_4_n_0\,
      S(0) => \counter[4]_i_5_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3) => \counter[8]_i_2_n_0\,
      S(2) => \counter[8]_i_3_n_0\,
      S(1) => \counter[8]_i_4_n_0\,
      S(0) => \counter[8]_i_5_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\ram_addr_s[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => acquis_reg,
      I1 => start_acquisition4_s,
      I2 => data1_rst_i,
      O => \ram_addr_s[11]_i_1_n_0\
    );
\ram_addr_s[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => acquis_reg,
      I1 => data1_en_i,
      O => ram_addr_s
    );
\ram_addr_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => counter_reg(0),
      Q => Q(0),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\ram_addr_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => counter_reg(10),
      Q => Q(10),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\ram_addr_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => counter_reg(11),
      Q => Q(11),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\ram_addr_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => counter_reg(1),
      Q => Q(1),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\ram_addr_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => counter_reg(2),
      Q => Q(2),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\ram_addr_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => counter_reg(3),
      Q => Q(3),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\ram_addr_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => counter_reg(4),
      Q => Q(4),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\ram_addr_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => counter_reg(5),
      Q => Q(5),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\ram_addr_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => counter_reg(6),
      Q => Q(6),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\ram_addr_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => counter_reg(7),
      Q => Q(7),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\ram_addr_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => counter_reg(8),
      Q => Q(8),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\ram_addr_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => counter_reg(9),
      Q => Q(9),
      R => \ram_addr_s[11]_i_1_n_0\
    );
\ram_data_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(0),
      Q => mem_reg_1(0),
      R => data1_rst_i
    );
\ram_data_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(10),
      Q => mem_reg_1(10),
      R => data1_rst_i
    );
\ram_data_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(11),
      Q => mem_reg_1(11),
      R => data1_rst_i
    );
\ram_data_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(12),
      Q => mem_reg_1(12),
      R => data1_rst_i
    );
\ram_data_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(13),
      Q => mem_reg_1(13),
      R => data1_rst_i
    );
\ram_data_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(14),
      Q => mem_reg_1(14),
      R => data1_rst_i
    );
\ram_data_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(15),
      Q => mem_reg_1(15),
      R => data1_rst_i
    );
\ram_data_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(1),
      Q => mem_reg_1(1),
      R => data1_rst_i
    );
\ram_data_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(2),
      Q => mem_reg_1(2),
      R => data1_rst_i
    );
\ram_data_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(3),
      Q => mem_reg_1(3),
      R => data1_rst_i
    );
\ram_data_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(4),
      Q => mem_reg_1(4),
      R => data1_rst_i
    );
\ram_data_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(5),
      Q => mem_reg_1(5),
      R => data1_rst_i
    );
\ram_data_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(6),
      Q => mem_reg_1(6),
      R => data1_rst_i
    );
\ram_data_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(7),
      Q => mem_reg_1(7),
      R => data1_rst_i
    );
\ram_data_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(8),
      Q => mem_reg_1(8),
      R => data1_rst_i
    );
\ram_data_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => ram_addr_s,
      D => data1_i(9),
      Q => mem_reg_1(9),
      R => data1_rst_i
    );
ram_en_o_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data1_en_i,
      I1 => acquis_reg,
      I2 => data1_rst_i,
      O => ram_en_o_i_1_n_0
    );
ram_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => ram_en_o_i_1_n_0,
      Q => WEA(0),
      R => '0'
    );
\sync_start_dis.start_acquisition2_s_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => start_acquisition2_s,
      I1 => start_o,
      I2 => \^busy_all_s\(0),
      I3 => s00_axi_reset,
      O => \sync_start_dis.start_acquisition2_s_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_storage is
  port (
    \readdata_s_reg[31]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    addr_a : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    din_a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_storage;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_storage is
  signal mem_reg_0_n_45 : STD_LOGIC;
  signal mem_reg_0_n_46 : STD_LOGIC;
  signal mem_reg_0_n_47 : STD_LOGIC;
  signal mem_reg_0_n_48 : STD_LOGIC;
  signal mem_reg_0_n_49 : STD_LOGIC;
  signal mem_reg_0_n_50 : STD_LOGIC;
  signal mem_reg_0_n_51 : STD_LOGIC;
  signal mem_reg_0_n_52 : STD_LOGIC;
  signal mem_reg_0_n_88 : STD_LOGIC;
  signal mem_reg_1_n_46 : STD_LOGIC;
  signal mem_reg_1_n_47 : STD_LOGIC;
  signal mem_reg_1_n_48 : STD_LOGIC;
  signal mem_reg_1_n_49 : STD_LOGIC;
  signal mem_reg_1_n_50 : STD_LOGIC;
  signal mem_reg_1_n_51 : STD_LOGIC;
  signal mem_reg_1_n_52 : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of mem_reg_0 : label is "INDEPENDENT";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 65536;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg_0 : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg_0 : label is 8;
  attribute CLOCK_DOMAINS of mem_reg_1 : label is "INDEPENDENT";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d7";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d7";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 65536;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "mem";
  attribute bram_addr_begin of mem_reg_1 : label is 0;
  attribute bram_addr_end of mem_reg_1 : label is 4095;
  attribute bram_slice_begin of mem_reg_1 : label is 9;
  attribute bram_slice_end of mem_reg_1 : label is 15;
begin
mem_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addr_a(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => Q(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data2_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => din_a(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => din_a(8),
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 8),
      DOADO(7) => mem_reg_0_n_45,
      DOADO(6) => mem_reg_0_n_46,
      DOADO(5) => mem_reg_0_n_47,
      DOADO(4) => mem_reg_0_n_48,
      DOADO(3) => mem_reg_0_n_49,
      DOADO(2) => mem_reg_0_n_50,
      DOADO(1) => mem_reg_0_n_51,
      DOADO(0) => mem_reg_0_n_52,
      DOBDO(31 downto 8) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => \readdata_s_reg[31]\(7 downto 0),
      DOPADOP(3 downto 1) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 1),
      DOPADOP(0) => mem_reg_0_n_88,
      DOPBDOP(3 downto 1) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => \readdata_s_reg[31]\(8),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addr_a(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => Q(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data2_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 7) => B"0000000000000000000000000",
      DIADI(6 downto 0) => din_a(15 downto 9),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 7) => NLW_mem_reg_1_DOADO_UNCONNECTED(31 downto 7),
      DOADO(6) => mem_reg_1_n_46,
      DOADO(5) => mem_reg_1_n_47,
      DOADO(4) => mem_reg_1_n_48,
      DOADO(3) => mem_reg_1_n_49,
      DOADO(2) => mem_reg_1_n_50,
      DOADO(1) => mem_reg_1_n_51,
      DOADO(0) => mem_reg_1_n_52,
      DOBDO(31 downto 7) => NLW_mem_reg_1_DOBDO_UNCONNECTED(31 downto 7),
      DOBDO(6 downto 0) => \readdata_s_reg[31]\(15 downto 9),
      DOPADOP(3 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_storage_2 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \readdata_s_reg[15]\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \axi_araddr_reg[5]\ : in STD_LOGIC;
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    busy_s_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    busy_all_s : in STD_LOGIC_VECTOR ( 0 to 0 );
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    addr_a : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    din_a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_storage_2 : entity is "data16_multi_to_ram_storage";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_storage_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_storage_2 is
  signal mem_reg_0_n_45 : STD_LOGIC;
  signal mem_reg_0_n_46 : STD_LOGIC;
  signal mem_reg_0_n_47 : STD_LOGIC;
  signal mem_reg_0_n_48 : STD_LOGIC;
  signal mem_reg_0_n_49 : STD_LOGIC;
  signal mem_reg_0_n_50 : STD_LOGIC;
  signal mem_reg_0_n_51 : STD_LOGIC;
  signal mem_reg_0_n_52 : STD_LOGIC;
  signal mem_reg_0_n_88 : STD_LOGIC;
  signal mem_reg_1_n_46 : STD_LOGIC;
  signal mem_reg_1_n_47 : STD_LOGIC;
  signal mem_reg_1_n_48 : STD_LOGIC;
  signal mem_reg_1_n_49 : STD_LOGIC;
  signal mem_reg_1_n_50 : STD_LOGIC;
  signal mem_reg_1_n_51 : STD_LOGIC;
  signal mem_reg_1_n_52 : STD_LOGIC;
  signal res_s : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of mem_reg_0 : label is "INDEPENDENT";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 65536;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg_0 : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg_0 : label is 8;
  attribute CLOCK_DOMAINS of mem_reg_1 : label is "INDEPENDENT";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d7";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d7";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 65536;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "mem";
  attribute bram_addr_begin of mem_reg_1 : label is 0;
  attribute bram_addr_end of mem_reg_1 : label is 4095;
  attribute bram_slice_begin of mem_reg_1 : label is 9;
  attribute bram_slice_end of mem_reg_1 : label is 15;
begin
mem_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addr_a(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => Q(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data1_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => din_a(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => din_a(8),
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 8),
      DOADO(7) => mem_reg_0_n_45,
      DOADO(6) => mem_reg_0_n_46,
      DOADO(5) => mem_reg_0_n_47,
      DOADO(4) => mem_reg_0_n_48,
      DOADO(3) => mem_reg_0_n_49,
      DOADO(2) => mem_reg_0_n_50,
      DOADO(1) => mem_reg_0_n_51,
      DOADO(0) => mem_reg_0_n_52,
      DOBDO(31 downto 8) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 1) => \readdata_s_reg[15]\(6 downto 0),
      DOBDO(0) => res_s(0),
      DOPADOP(3 downto 1) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 1),
      DOPADOP(0) => mem_reg_0_n_88,
      DOPBDOP(3 downto 1) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => \readdata_s_reg[15]\(7),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addr_a(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => Q(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data1_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 7) => B"0000000000000000000000000",
      DIADI(6 downto 0) => din_a(15 downto 9),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 7) => NLW_mem_reg_1_DOADO_UNCONNECTED(31 downto 7),
      DOADO(6) => mem_reg_1_n_46,
      DOADO(5) => mem_reg_1_n_47,
      DOADO(4) => mem_reg_1_n_48,
      DOADO(3) => mem_reg_1_n_49,
      DOADO(2) => mem_reg_1_n_50,
      DOADO(1) => mem_reg_1_n_51,
      DOADO(0) => mem_reg_1_n_52,
      DOBDO(31 downto 7) => NLW_mem_reg_1_DOBDO_UNCONNECTED(31 downto 7),
      DOBDO(6 downto 0) => \readdata_s_reg[15]\(14 downto 8),
      DOPADOP(3 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\readdata_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFFFFFEFEFFFCF"
    )
        port map (
      I0 => res_s(0),
      I1 => \axi_araddr_reg[5]\,
      I2 => addr_s(1),
      I3 => busy_s_reg(0),
      I4 => addr_s(0),
      I5 => busy_all_s(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_data16_multi_to_ram is
  port (
    start_o : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_reset : in STD_LOGIC;
    \axi_araddr_reg[5]\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    read_en_s : in STD_LOGIC;
    \axi_awaddr_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_awaddr_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_data16_multi_to_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_data16_multi_to_ram is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \ram_addr_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_s[10]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_s[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \ram_addr_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_s[2]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_s[3]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_s[4]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_s[5]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_s[6]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_s[7]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_s[8]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_s[9]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_plusOp_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ram_addr_s[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ram_addr_s[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ram_addr_s[11]_i_2__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ram_addr_s[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ram_addr_s[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ram_addr_s[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ram_addr_s[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ram_addr_s[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ram_addr_s[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ram_addr_s[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ram_addr_s[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ram_addr_s[9]_i_1\ : label is "soft_lutpair22";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(11),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(10),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      O => \i__carry_i_4_n_0\
    );
\plusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__0/i__carry_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry_n_3\,
      CYINIT => \^q\(0),
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_inferred__0/i__carry_n_4\,
      O(2) => \plusOp_inferred__0/i__carry_n_5\,
      O(1) => \plusOp_inferred__0/i__carry_n_6\,
      O(0) => \plusOp_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\plusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_inferred__0/i__carry__0_n_4\,
      O(2) => \plusOp_inferred__0/i__carry__0_n_5\,
      O(1) => \plusOp_inferred__0/i__carry__0_n_6\,
      O(0) => \plusOp_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\plusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(3 downto 2) => \NLW_plusOp_inferred__0/i__carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_inferred__0/i__carry__1_O_UNCONNECTED\(3),
      O(2) => \plusOp_inferred__0/i__carry__1_n_5\,
      O(1) => \plusOp_inferred__0/i__carry__1_n_6\,
      O(0) => \plusOp_inferred__0/i__carry__1_n_7\,
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
\ram_addr_s[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \axi_awaddr_reg[4]\(0),
      O => \ram_addr_s[0]_i_1_n_0\
    );
\ram_addr_s[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry__1_n_6\,
      I1 => \axi_awaddr_reg[4]\(0),
      O => \ram_addr_s[10]_i_1_n_0\
    );
\ram_addr_s[11]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry__1_n_5\,
      I1 => \axi_awaddr_reg[4]\(0),
      O => \ram_addr_s[11]_i_2__0_n_0\
    );
\ram_addr_s[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry_n_7\,
      I1 => \axi_awaddr_reg[4]\(0),
      O => \ram_addr_s[1]_i_1_n_0\
    );
\ram_addr_s[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry_n_6\,
      I1 => \axi_awaddr_reg[4]\(0),
      O => \ram_addr_s[2]_i_1_n_0\
    );
\ram_addr_s[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry_n_5\,
      I1 => \axi_awaddr_reg[4]\(0),
      O => \ram_addr_s[3]_i_1_n_0\
    );
\ram_addr_s[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry_n_4\,
      I1 => \axi_awaddr_reg[4]\(0),
      O => \ram_addr_s[4]_i_1_n_0\
    );
\ram_addr_s[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry__0_n_7\,
      I1 => \axi_awaddr_reg[4]\(0),
      O => \ram_addr_s[5]_i_1_n_0\
    );
\ram_addr_s[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry__0_n_6\,
      I1 => \axi_awaddr_reg[4]\(0),
      O => \ram_addr_s[6]_i_1_n_0\
    );
\ram_addr_s[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry__0_n_5\,
      I1 => \axi_awaddr_reg[4]\(0),
      O => \ram_addr_s[7]_i_1_n_0\
    );
\ram_addr_s[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry__0_n_4\,
      I1 => \axi_awaddr_reg[4]\(0),
      O => \ram_addr_s[8]_i_1_n_0\
    );
\ram_addr_s[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry__1_n_7\,
      I1 => \axi_awaddr_reg[4]\(0),
      O => \ram_addr_s[9]_i_1_n_0\
    );
\ram_addr_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[2]\(0),
      D => \ram_addr_s[0]_i_1_n_0\,
      Q => \^q\(0),
      R => s00_axi_reset
    );
\ram_addr_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[2]\(0),
      D => \ram_addr_s[10]_i_1_n_0\,
      Q => \^q\(10),
      R => s00_axi_reset
    );
\ram_addr_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[2]\(0),
      D => \ram_addr_s[11]_i_2__0_n_0\,
      Q => \^q\(11),
      R => s00_axi_reset
    );
\ram_addr_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[2]\(0),
      D => \ram_addr_s[1]_i_1_n_0\,
      Q => \^q\(1),
      R => s00_axi_reset
    );
\ram_addr_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[2]\(0),
      D => \ram_addr_s[2]_i_1_n_0\,
      Q => \^q\(2),
      R => s00_axi_reset
    );
\ram_addr_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[2]\(0),
      D => \ram_addr_s[3]_i_1_n_0\,
      Q => \^q\(3),
      R => s00_axi_reset
    );
\ram_addr_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[2]\(0),
      D => \ram_addr_s[4]_i_1_n_0\,
      Q => \^q\(4),
      R => s00_axi_reset
    );
\ram_addr_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[2]\(0),
      D => \ram_addr_s[5]_i_1_n_0\,
      Q => \^q\(5),
      R => s00_axi_reset
    );
\ram_addr_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[2]\(0),
      D => \ram_addr_s[6]_i_1_n_0\,
      Q => \^q\(6),
      R => s00_axi_reset
    );
\ram_addr_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[2]\(0),
      D => \ram_addr_s[7]_i_1_n_0\,
      Q => \^q\(7),
      R => s00_axi_reset
    );
\ram_addr_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[2]\(0),
      D => \ram_addr_s[8]_i_1_n_0\,
      Q => \^q\(8),
      R => s00_axi_reset
    );
\ram_addr_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[2]\(0),
      D => \ram_addr_s[9]_i_1_n_0\,
      Q => \^q\(9),
      R => s00_axi_reset
    );
\readdata_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(0),
      Q => s00_axi_rdata(0),
      R => s00_axi_reset
    );
\readdata_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(10),
      Q => s00_axi_rdata(10),
      R => s00_axi_reset
    );
\readdata_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(11),
      Q => s00_axi_rdata(11),
      R => s00_axi_reset
    );
\readdata_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(12),
      Q => s00_axi_rdata(12),
      R => s00_axi_reset
    );
\readdata_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(13),
      Q => s00_axi_rdata(13),
      R => s00_axi_reset
    );
\readdata_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(14),
      Q => s00_axi_rdata(14),
      R => s00_axi_reset
    );
\readdata_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(15),
      Q => s00_axi_rdata(15),
      R => s00_axi_reset
    );
\readdata_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(16),
      Q => s00_axi_rdata(16),
      R => s00_axi_reset
    );
\readdata_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(17),
      Q => s00_axi_rdata(17),
      R => s00_axi_reset
    );
\readdata_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(18),
      Q => s00_axi_rdata(18),
      R => s00_axi_reset
    );
\readdata_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(19),
      Q => s00_axi_rdata(19),
      R => s00_axi_reset
    );
\readdata_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(1),
      Q => s00_axi_rdata(1),
      R => s00_axi_reset
    );
\readdata_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(20),
      Q => s00_axi_rdata(20),
      R => s00_axi_reset
    );
\readdata_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(21),
      Q => s00_axi_rdata(21),
      R => s00_axi_reset
    );
\readdata_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(22),
      Q => s00_axi_rdata(22),
      R => s00_axi_reset
    );
\readdata_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(23),
      Q => s00_axi_rdata(23),
      R => s00_axi_reset
    );
\readdata_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(24),
      Q => s00_axi_rdata(24),
      R => s00_axi_reset
    );
\readdata_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(25),
      Q => s00_axi_rdata(25),
      R => s00_axi_reset
    );
\readdata_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(26),
      Q => s00_axi_rdata(26),
      R => s00_axi_reset
    );
\readdata_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(27),
      Q => s00_axi_rdata(27),
      R => s00_axi_reset
    );
\readdata_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(28),
      Q => s00_axi_rdata(28),
      R => s00_axi_reset
    );
\readdata_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(29),
      Q => s00_axi_rdata(29),
      R => s00_axi_reset
    );
\readdata_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(2),
      Q => s00_axi_rdata(2),
      R => s00_axi_reset
    );
\readdata_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(30),
      Q => s00_axi_rdata(30),
      R => s00_axi_reset
    );
\readdata_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(31),
      Q => s00_axi_rdata(31),
      R => s00_axi_reset
    );
\readdata_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(3),
      Q => s00_axi_rdata(3),
      R => s00_axi_reset
    );
\readdata_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(4),
      Q => s00_axi_rdata(4),
      R => s00_axi_reset
    );
\readdata_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(5),
      Q => s00_axi_rdata(5),
      R => s00_axi_reset
    );
\readdata_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(6),
      Q => s00_axi_rdata(6),
      R => s00_axi_reset
    );
\readdata_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(7),
      Q => s00_axi_rdata(7),
      R => s00_axi_reset
    );
\readdata_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(8),
      Q => s00_axi_rdata(8),
      R => s00_axi_reset
    );
\readdata_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(9),
      Q => s00_axi_rdata(9),
      R => s00_axi_reset
    );
start_o_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr_reg[5]\,
      Q => start_o,
      R => s00_axi_reset
    );
wbs_read_ack_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => read_en_s,
      Q => s00_axi_rvalid,
      R => s00_axi_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_subtop is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \readdata_s_reg[15]\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    busy_s_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_araddr_reg[5]\ : in STD_LOGIC;
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    start_o : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    data1_en_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data1_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_subtop;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_subtop is
  signal acquisition_fsm_inst_n_2 : STD_LOGIC;
  signal busy_all_s : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ram_addr_w_s : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ram_data_w_s : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ram_en_s : STD_LOGIC;
  signal start_acquisition2_s : STD_LOGIC;
  signal start_acquisition3_s : STD_LOGIC;
  signal start_acquisition4_s : STD_LOGIC;
begin
acquisition_fsm_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_logic_1
     port map (
      Q(11 downto 0) => ram_addr_w_s(11 downto 0),
      WEA(0) => ram_en_s,
      busy_all_s(0) => busy_all_s(0),
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_i(15 downto 0) => data1_i(15 downto 0),
      data1_rst_i => data1_rst_i,
      mem_reg_1(15 downto 0) => ram_data_w_s(15 downto 0),
      s00_axi_reset => s00_axi_reset,
      start_acquisition2_s => start_acquisition2_s,
      start_acquisition4_s => start_acquisition4_s,
      start_o => start_o,
      \sync_start_dis.start_acquisition2_s_reg\ => acquisition_fsm_inst_n_2
    );
ram_msb: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_storage_2
     port map (
      D(0) => D(0),
      Q(11 downto 0) => Q(11 downto 0),
      WEA(0) => ram_en_s,
      addr_a(11 downto 0) => ram_addr_w_s(11 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      \axi_araddr_reg[5]\ => \axi_araddr_reg[5]\,
      busy_all_s(0) => busy_all_s(0),
      busy_s_reg(0) => busy_s_reg(0),
      data1_clk_i => data1_clk_i,
      din_a(15 downto 0) => ram_data_w_s(15 downto 0),
      \readdata_s_reg[15]\(14 downto 0) => \readdata_s_reg[15]\(14 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
start_acquisition3_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => start_acquisition2_s,
      Q => start_acquisition3_s,
      R => '0'
    );
start_acquisition4_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => start_acquisition3_s,
      Q => start_acquisition4_s,
      R => '0'
    );
\sync_start_dis.start_acquisition2_s_reg\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => acquisition_fsm_inst_n_2,
      Q => start_acquisition2_s,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_subtop_0 is
  port (
    \sync_start_dis.start_acquisition2_s_reg_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \readdata_s_reg[31]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    data2_en_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    start_o : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_subtop_0 : entity is "data16_multi_to_ram_subtop";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_subtop_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_subtop_0 is
  signal acquisition_fsm_inst_n_2 : STD_LOGIC;
  signal ram_addr_w_s : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ram_data_w_s : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ram_en_s : STD_LOGIC;
  signal start_acquisition3_s_reg_n_0 : STD_LOGIC;
  signal start_acquisition4_s : STD_LOGIC;
  signal \sync_start_dis.start_acquisition2_s_reg_n_0\ : STD_LOGIC;
begin
acquisition_fsm_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_logic
     port map (
      Q(11 downto 0) => ram_addr_w_s(11 downto 0),
      WEA(0) => ram_en_s,
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(15 downto 0) => data2_i(15 downto 0),
      data2_rst_i => data2_rst_i,
      mem_reg_1(15 downto 0) => ram_data_w_s(15 downto 0),
      s00_axi_reset => s00_axi_reset,
      start_acquisition4_s => start_acquisition4_s,
      start_o => start_o,
      \sync_start_dis.start_acquisition2_s_reg\(0) => \sync_start_dis.start_acquisition2_s_reg_0\(0),
      \sync_start_dis.start_acquisition2_s_reg_0\ => acquisition_fsm_inst_n_2,
      \sync_start_dis.start_acquisition2_s_reg_1\ => \sync_start_dis.start_acquisition2_s_reg_n_0\
    );
ram_msb: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_storage
     port map (
      Q(11 downto 0) => Q(11 downto 0),
      WEA(0) => ram_en_s,
      addr_a(11 downto 0) => ram_addr_w_s(11 downto 0),
      data2_clk_i => data2_clk_i,
      din_a(15 downto 0) => ram_data_w_s(15 downto 0),
      \readdata_s_reg[31]\(15 downto 0) => \readdata_s_reg[31]\(15 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
start_acquisition3_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => \sync_start_dis.start_acquisition2_s_reg_n_0\,
      Q => start_acquisition3_s_reg_n_0,
      R => '0'
    );
start_acquisition4_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => start_acquisition3_s_reg_n_0,
      Q => start_acquisition4_s,
      R => '0'
    );
\sync_start_dis.start_acquisition2_s_reg\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => acquisition_fsm_inst_n_2,
      Q => \sync_start_dis.start_acquisition2_s_reg_n_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_top is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \readdata_s_reg[31]\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    data1_clk_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \axi_araddr_reg[5]\ : in STD_LOGIC;
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    start_o : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    data1_en_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data2_en_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data1_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_top is
  signal busy_all_s : STD_LOGIC_VECTOR ( 1 to 1 );
begin
\subtop_loop[0].data_subtop_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_subtop
     port map (
      D(0) => D(0),
      Q(11 downto 0) => Q(11 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      \axi_araddr_reg[5]\ => \axi_araddr_reg[5]\,
      busy_s_reg(0) => busy_all_s(1),
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_i(15 downto 0) => data1_i(15 downto 0),
      data1_rst_i => data1_rst_i,
      \readdata_s_reg[15]\(14 downto 0) => \readdata_s_reg[31]\(14 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      start_o => start_o
    );
\subtop_loop[1].data_subtop_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_subtop_0
     port map (
      Q(11 downto 0) => Q(11 downto 0),
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(15 downto 0) => data2_i(15 downto 0),
      data2_rst_i => data2_rst_i,
      \readdata_s_reg[31]\(15 downto 0) => \readdata_s_reg[31]\(30 downto 15),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      start_o => start_o,
      \sync_start_dis.start_acquisition2_s_reg_0\(0) => busy_all_s(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram is
  port (
    data1_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data1_eof_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_en_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    data2_eof_i : in STD_LOGIC;
    data3_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data3_en_i : in STD_LOGIC;
    data3_clk_i : in STD_LOGIC;
    data3_rst_i : in STD_LOGIC;
    data3_eof_i : in STD_LOGIC;
    data4_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data4_en_i : in STD_LOGIC;
    data4_clk_i : in STD_LOGIC;
    data4_rst_i : in STD_LOGIC;
    data4_eof_i : in STD_LOGIC;
    data5_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data5_en_i : in STD_LOGIC;
    data5_clk_i : in STD_LOGIC;
    data5_rst_i : in STD_LOGIC;
    data5_eof_i : in STD_LOGIC;
    data6_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data6_en_i : in STD_LOGIC;
    data6_clk_i : in STD_LOGIC;
    data6_rst_i : in STD_LOGIC;
    data6_eof_i : in STD_LOGIC;
    data7_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data7_en_i : in STD_LOGIC;
    data7_clk_i : in STD_LOGIC;
    data7_rst_i : in STD_LOGIC;
    data7_eof_i : in STD_LOGIC;
    data8_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data8_en_i : in STD_LOGIC;
    data8_clk_i : in STD_LOGIC;
    data8_rst_i : in STD_LOGIC;
    data8_eof_i : in STD_LOGIC;
    data9_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data9_en_i : in STD_LOGIC;
    data9_clk_i : in STD_LOGIC;
    data9_rst_i : in STD_LOGIC;
    data9_eof_i : in STD_LOGIC;
    data10_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data10_en_i : in STD_LOGIC;
    data10_clk_i : in STD_LOGIC;
    data10_rst_i : in STD_LOGIC;
    data10_eof_i : in STD_LOGIC;
    data11_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data11_en_i : in STD_LOGIC;
    data11_clk_i : in STD_LOGIC;
    data11_rst_i : in STD_LOGIC;
    data11_eof_i : in STD_LOGIC;
    data12_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data12_en_i : in STD_LOGIC;
    data12_clk_i : in STD_LOGIC;
    data12_rst_i : in STD_LOGIC;
    data12_eof_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ADDR_SIZE : integer;
  attribute ADDR_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram : entity is 12;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram : entity is 6;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram : entity is 32;
  attribute DATA_FORMAT : string;
  attribute DATA_FORMAT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram : entity is "signed";
  attribute DATA_SIZE : integer;
  attribute DATA_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram : entity is 16;
  attribute NB_INPUT : integer;
  attribute NB_INPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram : entity is 2;
  attribute SYNC_START : string;
  attribute SYNC_START of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram : entity is "FALSE";
  attribute id : integer;
  attribute id of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram is
  signal \<const0>\ : STD_LOGIC;
  signal addr_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal data32_top_inst_n_0 : STD_LOGIC;
  signal handle_comm_n_12 : STD_LOGIC;
  signal handle_comm_n_13 : STD_LOGIC;
  signal handle_comm_n_14 : STD_LOGIC;
  signal handle_comm_n_15 : STD_LOGIC;
  signal handle_comm_n_16 : STD_LOGIC;
  signal handle_comm_n_17 : STD_LOGIC;
  signal handle_comm_n_18 : STD_LOGIC;
  signal handle_comm_n_19 : STD_LOGIC;
  signal handle_comm_n_20 : STD_LOGIC;
  signal handle_comm_n_21 : STD_LOGIC;
  signal handle_comm_n_22 : STD_LOGIC;
  signal handle_comm_n_23 : STD_LOGIC;
  signal handle_comm_n_24 : STD_LOGIC;
  signal handle_comm_n_25 : STD_LOGIC;
  signal handle_comm_n_26 : STD_LOGIC;
  signal handle_comm_n_27 : STD_LOGIC;
  signal handle_comm_n_28 : STD_LOGIC;
  signal handle_comm_n_29 : STD_LOGIC;
  signal handle_comm_n_30 : STD_LOGIC;
  signal handle_comm_n_31 : STD_LOGIC;
  signal handle_comm_n_32 : STD_LOGIC;
  signal handle_comm_n_33 : STD_LOGIC;
  signal handle_comm_n_34 : STD_LOGIC;
  signal handle_comm_n_35 : STD_LOGIC;
  signal handle_comm_n_36 : STD_LOGIC;
  signal handle_comm_n_37 : STD_LOGIC;
  signal handle_comm_n_38 : STD_LOGIC;
  signal handle_comm_n_39 : STD_LOGIC;
  signal handle_comm_n_4 : STD_LOGIC;
  signal handle_comm_n_40 : STD_LOGIC;
  signal handle_comm_n_41 : STD_LOGIC;
  signal handle_comm_n_42 : STD_LOGIC;
  signal handle_comm_n_5 : STD_LOGIC;
  signal ram_addr_s : STD_LOGIC;
  signal read_en_s : STD_LOGIC;
  signal readdata_s : STD_LOGIC;
  signal res_addr_s : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal res_s : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal start_o : STD_LOGIC;
begin
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
data32_top_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_top
     port map (
      D(0) => data32_top_inst_n_0,
      Q(11 downto 0) => res_addr_s(11 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      \axi_araddr_reg[5]\ => handle_comm_n_5,
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_i(15 downto 0) => data1_i(15 downto 0),
      data1_rst_i => data1_rst_i,
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(15 downto 0) => data2_i(15 downto 0),
      data2_rst_i => data2_rst_i,
      \readdata_s_reg[31]\(30 downto 0) => res_s(31 downto 1),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      start_o => start_o
    );
handle_comm: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram_handCom
     port map (
      D(30) => handle_comm_n_12,
      D(29) => handle_comm_n_13,
      D(28) => handle_comm_n_14,
      D(27) => handle_comm_n_15,
      D(26) => handle_comm_n_16,
      D(25) => handle_comm_n_17,
      D(24) => handle_comm_n_18,
      D(23) => handle_comm_n_19,
      D(22) => handle_comm_n_20,
      D(21) => handle_comm_n_21,
      D(20) => handle_comm_n_22,
      D(19) => handle_comm_n_23,
      D(18) => handle_comm_n_24,
      D(17) => handle_comm_n_25,
      D(16) => handle_comm_n_26,
      D(15) => handle_comm_n_27,
      D(14) => handle_comm_n_28,
      D(13) => handle_comm_n_29,
      D(12) => handle_comm_n_30,
      D(11) => handle_comm_n_31,
      D(10) => handle_comm_n_32,
      D(9) => handle_comm_n_33,
      D(8) => handle_comm_n_34,
      D(7) => handle_comm_n_35,
      D(6) => handle_comm_n_36,
      D(5) => handle_comm_n_37,
      D(4) => handle_comm_n_38,
      D(3) => handle_comm_n_39,
      D(2) => handle_comm_n_40,
      D(1) => handle_comm_n_41,
      D(0) => handle_comm_n_42,
      E(0) => ram_addr_s,
      \addr_reg_reg[2]_0\(2 downto 0) => addr_s(2 downto 0),
      mem_reg_1(30 downto 0) => res_s(31 downto 1),
      read_en_s => read_en_s,
      \readdata_s_reg[31]\(0) => readdata_s,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(5 downto 2),
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(5 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_reset => s00_axi_reset,
      s00_axi_rready => s00_axi_rready,
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid,
      start_o_reg => handle_comm_n_4,
      start_o_reg_0 => handle_comm_n_5
    );
wb_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_data16_multi_to_ram
     port map (
      D(31) => handle_comm_n_12,
      D(30) => handle_comm_n_13,
      D(29) => handle_comm_n_14,
      D(28) => handle_comm_n_15,
      D(27) => handle_comm_n_16,
      D(26) => handle_comm_n_17,
      D(25) => handle_comm_n_18,
      D(24) => handle_comm_n_19,
      D(23) => handle_comm_n_20,
      D(22) => handle_comm_n_21,
      D(21) => handle_comm_n_22,
      D(20) => handle_comm_n_23,
      D(19) => handle_comm_n_24,
      D(18) => handle_comm_n_25,
      D(17) => handle_comm_n_26,
      D(16) => handle_comm_n_27,
      D(15) => handle_comm_n_28,
      D(14) => handle_comm_n_29,
      D(13) => handle_comm_n_30,
      D(12) => handle_comm_n_31,
      D(11) => handle_comm_n_32,
      D(10) => handle_comm_n_33,
      D(9) => handle_comm_n_34,
      D(8) => handle_comm_n_35,
      D(7) => handle_comm_n_36,
      D(6) => handle_comm_n_37,
      D(5) => handle_comm_n_38,
      D(4) => handle_comm_n_39,
      D(3) => handle_comm_n_40,
      D(2) => handle_comm_n_41,
      D(1) => handle_comm_n_42,
      D(0) => data32_top_inst_n_0,
      E(0) => readdata_s,
      Q(11 downto 0) => res_addr_s(11 downto 0),
      \axi_araddr_reg[5]\ => handle_comm_n_4,
      \axi_awaddr_reg[2]\(0) => ram_addr_s,
      \axi_awaddr_reg[4]\(0) => addr_s(2),
      read_en_s => read_en_s,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_reset => s00_axi_reset,
      s00_axi_rvalid => s00_axi_rvalid,
      start_o => start_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data1_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data1_eof_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_en_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    data2_eof_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adc2dac_ram_offset_data16_multi_to_ram_0_0,data16_multi_to_ram,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "data16_multi_to_ram,Vivado 2016.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute ADDR_SIZE : integer;
  attribute ADDR_SIZE of U0 : label is 12;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of U0 : label is 6;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of U0 : label is 32;
  attribute DATA_FORMAT : string;
  attribute DATA_FORMAT of U0 : label is "signed";
  attribute DATA_SIZE : integer;
  attribute DATA_SIZE of U0 : label is 16;
  attribute NB_INPUT : integer;
  attribute NB_INPUT of U0 : label is 2;
  attribute SYNC_START : string;
  attribute SYNC_START of U0 : label is "FALSE";
  attribute id : integer;
  attribute id of U0 : label is 1;
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data16_multi_to_ram
     port map (
      data10_clk_i => '0',
      data10_en_i => '0',
      data10_eof_i => '0',
      data10_i(15 downto 0) => B"0000000000000000",
      data10_rst_i => '0',
      data11_clk_i => '0',
      data11_en_i => '0',
      data11_eof_i => '0',
      data11_i(15 downto 0) => B"0000000000000000",
      data11_rst_i => '0',
      data12_clk_i => '0',
      data12_en_i => '0',
      data12_eof_i => '0',
      data12_i(15 downto 0) => B"0000000000000000",
      data12_rst_i => '0',
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_eof_i => data1_eof_i,
      data1_i(15 downto 0) => data1_i(15 downto 0),
      data1_rst_i => data1_rst_i,
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_eof_i => data2_eof_i,
      data2_i(15 downto 0) => data2_i(15 downto 0),
      data2_rst_i => data2_rst_i,
      data3_clk_i => '0',
      data3_en_i => '0',
      data3_eof_i => '0',
      data3_i(15 downto 0) => B"0000000000000000",
      data3_rst_i => '0',
      data4_clk_i => '0',
      data4_en_i => '0',
      data4_eof_i => '0',
      data4_i(15 downto 0) => B"0000000000000000",
      data4_rst_i => '0',
      data5_clk_i => '0',
      data5_en_i => '0',
      data5_eof_i => '0',
      data5_i(15 downto 0) => B"0000000000000000",
      data5_rst_i => '0',
      data6_clk_i => '0',
      data6_en_i => '0',
      data6_eof_i => '0',
      data6_i(15 downto 0) => B"0000000000000000",
      data6_rst_i => '0',
      data7_clk_i => '0',
      data7_en_i => '0',
      data7_eof_i => '0',
      data7_i(15 downto 0) => B"0000000000000000",
      data7_rst_i => '0',
      data8_clk_i => '0',
      data8_en_i => '0',
      data8_eof_i => '0',
      data8_i(15 downto 0) => B"0000000000000000",
      data8_rst_i => '0',
      data9_clk_i => '0',
      data9_en_i => '0',
      data9_eof_i => '0',
      data9_i(15 downto 0) => B"0000000000000000",
      data9_rst_i => '0',
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(5 downto 0) => s00_axi_araddr(5 downto 0),
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(5 downto 0) => s00_axi_awaddr(5 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_reset => s00_axi_reset,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rresp(1 downto 0) => s00_axi_rresp(1 downto 0),
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
