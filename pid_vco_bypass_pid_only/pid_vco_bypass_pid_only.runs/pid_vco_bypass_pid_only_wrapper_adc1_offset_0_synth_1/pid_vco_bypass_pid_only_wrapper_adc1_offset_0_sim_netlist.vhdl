-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Mon Nov 27 12:23:10 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.1 (stretch)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pid_vco_bypass_pid_only_wrapper_adc1_offset_0_sim_netlist.vhdl
-- Design      : pid_vco_bypass_pid_only_wrapper_adc1_offset_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const_handComm is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 13 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \readdata_s_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const_handComm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const_handComm is
  signal addr_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal read_addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \readdata_s[31]_i_3_n_0\ : STD_LOGIC;
  signal \readdata_s[31]_i_4_n_0\ : STD_LOGIC;
  signal \readdata_s[31]_i_5_n_0\ : STD_LOGIC;
  signal \readdata_s[31]_i_6_n_0\ : STD_LOGIC;
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal write_addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_reg[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_6\ : label is "soft_lutpair1";
begin
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\addr_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => read_addr_s(0),
      I1 => \readdata_s[31]_i_4_n_0\,
      I2 => addr_reg(0),
      I3 => \readdata_s[31]_i_3_n_0\,
      I4 => write_addr_s(0),
      O => addr_s(0)
    );
\addr_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => read_addr_s(1),
      I1 => \readdata_s[31]_i_4_n_0\,
      I2 => addr_reg(1),
      I3 => \readdata_s[31]_i_3_n_0\,
      I4 => write_addr_s(1),
      O => addr_s(1)
    );
\addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => addr_s(0),
      Q => addr_reg(0),
      R => '0'
    );
\addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => addr_s(1),
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
      I2 => \^s00_axi_arready\,
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
      I2 => \^s00_axi_arready\,
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
      I1 => \^s00_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s00_axi_arready\,
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
      I3 => \^s00_axi_awready\,
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
      I3 => \^s00_axi_awready\,
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
      I2 => \^s00_axi_awready\,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^s00_axi_awready\,
      R => s00_axi_reset
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      I3 => \^s00_axi_wready\,
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
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
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
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => s00_axi_reset
    );
\offset_s[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => write_addr_s(1),
      I1 => write_addr_s(0),
      I2 => \readdata_s[31]_i_3_n_0\,
      O => E(0)
    );
\readdata_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABABAAAAFBABF"
    )
        port map (
      I0 => Q(0),
      I1 => \readdata_s[31]_i_5_n_0\,
      I2 => \readdata_s[31]_i_3_n_0\,
      I3 => write_addr_s(0),
      I4 => \readdata_s[31]_i_6_n_0\,
      I5 => write_addr_s(1),
      O => D(0)
    );
\readdata_s[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A8AAAA08A80"
    )
        port map (
      I0 => Q(10),
      I1 => \readdata_s[31]_i_5_n_0\,
      I2 => \readdata_s[31]_i_3_n_0\,
      I3 => write_addr_s(0),
      I4 => \readdata_s[31]_i_6_n_0\,
      I5 => write_addr_s(1),
      O => D(10)
    );
\readdata_s[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A8AAAA08A80"
    )
        port map (
      I0 => Q(11),
      I1 => \readdata_s[31]_i_5_n_0\,
      I2 => \readdata_s[31]_i_3_n_0\,
      I3 => write_addr_s(0),
      I4 => \readdata_s[31]_i_6_n_0\,
      I5 => write_addr_s(1),
      O => D(11)
    );
\readdata_s[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A8AAAA08A80"
    )
        port map (
      I0 => Q(12),
      I1 => \readdata_s[31]_i_5_n_0\,
      I2 => \readdata_s[31]_i_3_n_0\,
      I3 => write_addr_s(0),
      I4 => \readdata_s[31]_i_6_n_0\,
      I5 => write_addr_s(1),
      O => D(12)
    );
\readdata_s[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A8AAAA08A80"
    )
        port map (
      I0 => Q(1),
      I1 => \readdata_s[31]_i_5_n_0\,
      I2 => \readdata_s[31]_i_3_n_0\,
      I3 => write_addr_s(0),
      I4 => \readdata_s[31]_i_6_n_0\,
      I5 => write_addr_s(1),
      O => D(1)
    );
\readdata_s[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A8AAAA08A80"
    )
        port map (
      I0 => Q(2),
      I1 => \readdata_s[31]_i_5_n_0\,
      I2 => \readdata_s[31]_i_3_n_0\,
      I3 => write_addr_s(0),
      I4 => \readdata_s[31]_i_6_n_0\,
      I5 => write_addr_s(1),
      O => D(2)
    );
\readdata_s[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10D0"
    )
        port map (
      I0 => write_addr_s(1),
      I1 => \readdata_s[31]_i_3_n_0\,
      I2 => \readdata_s[31]_i_4_n_0\,
      I3 => read_addr_s(1),
      O => \readdata_s_reg[0]\(0)
    );
\readdata_s[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A8AAAA08A80"
    )
        port map (
      I0 => Q(13),
      I1 => \readdata_s[31]_i_5_n_0\,
      I2 => \readdata_s[31]_i_3_n_0\,
      I3 => write_addr_s(0),
      I4 => \readdata_s[31]_i_6_n_0\,
      I5 => write_addr_s(1),
      O => D(13)
    );
\readdata_s[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      I3 => \^s00_axi_wready\,
      O => \readdata_s[31]_i_3_n_0\
    );
\readdata_s[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      O => \readdata_s[31]_i_4_n_0\
    );
\readdata_s[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => read_addr_s(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => \^s00_axi_rvalid\,
      I4 => addr_reg(0),
      O => \readdata_s[31]_i_5_n_0\
    );
\readdata_s[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => read_addr_s(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => \^s00_axi_rvalid\,
      I4 => addr_reg(1),
      O => \readdata_s[31]_i_6_n_0\
    );
\readdata_s[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A8AAAA08A80"
    )
        port map (
      I0 => Q(3),
      I1 => \readdata_s[31]_i_5_n_0\,
      I2 => \readdata_s[31]_i_3_n_0\,
      I3 => write_addr_s(0),
      I4 => \readdata_s[31]_i_6_n_0\,
      I5 => write_addr_s(1),
      O => D(3)
    );
\readdata_s[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A8AAAA08A80"
    )
        port map (
      I0 => Q(4),
      I1 => \readdata_s[31]_i_5_n_0\,
      I2 => \readdata_s[31]_i_3_n_0\,
      I3 => write_addr_s(0),
      I4 => \readdata_s[31]_i_6_n_0\,
      I5 => write_addr_s(1),
      O => D(4)
    );
\readdata_s[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A8AAAA08A80"
    )
        port map (
      I0 => Q(5),
      I1 => \readdata_s[31]_i_5_n_0\,
      I2 => \readdata_s[31]_i_3_n_0\,
      I3 => write_addr_s(0),
      I4 => \readdata_s[31]_i_6_n_0\,
      I5 => write_addr_s(1),
      O => D(5)
    );
\readdata_s[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A8AAAA08A80"
    )
        port map (
      I0 => Q(6),
      I1 => \readdata_s[31]_i_5_n_0\,
      I2 => \readdata_s[31]_i_3_n_0\,
      I3 => write_addr_s(0),
      I4 => \readdata_s[31]_i_6_n_0\,
      I5 => write_addr_s(1),
      O => D(6)
    );
\readdata_s[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A8AAAA08A80"
    )
        port map (
      I0 => Q(7),
      I1 => \readdata_s[31]_i_5_n_0\,
      I2 => \readdata_s[31]_i_3_n_0\,
      I3 => write_addr_s(0),
      I4 => \readdata_s[31]_i_6_n_0\,
      I5 => write_addr_s(1),
      O => D(7)
    );
\readdata_s[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A8AAAA08A80"
    )
        port map (
      I0 => Q(8),
      I1 => \readdata_s[31]_i_5_n_0\,
      I2 => \readdata_s[31]_i_3_n_0\,
      I3 => write_addr_s(0),
      I4 => \readdata_s[31]_i_6_n_0\,
      I5 => write_addr_s(1),
      O => D(8)
    );
\readdata_s[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A8AAAA08A80"
    )
        port map (
      I0 => Q(9),
      I1 => \readdata_s[31]_i_5_n_0\,
      I2 => \readdata_s[31]_i_3_n_0\,
      I3 => write_addr_s(0),
      I4 => \readdata_s[31]_i_6_n_0\,
      I5 => write_addr_s(1),
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const_logic is
  port (
    data_en_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_clk_i : in STD_LOGIC;
    data_en_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const_logic is
  signal add_val2_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal add_val_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data_en_o_i_1_n_0 : STD_LOGIC;
  signal data_in_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \data_s[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[11]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[11]_i_5_n_0\ : STD_LOGIC;
  signal \data_s[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[13]_i_3_n_0\ : STD_LOGIC;
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
  signal \data_s_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \data_s_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_s_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \data_s_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \data_s_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \data_s_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_s_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \data_s_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \data_s_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_data_s_reg[13]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_data_s_reg[13]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
\add_val2_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => add_val_s(0),
      Q => add_val2_s(0),
      R => '0'
    );
\add_val2_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => add_val_s(10),
      Q => add_val2_s(10),
      R => '0'
    );
\add_val2_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => add_val_s(11),
      Q => add_val2_s(11),
      R => '0'
    );
\add_val2_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => add_val_s(12),
      Q => add_val2_s(12),
      R => '0'
    );
\add_val2_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => add_val_s(13),
      Q => add_val2_s(13),
      R => '0'
    );
\add_val2_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => add_val_s(1),
      Q => add_val2_s(1),
      R => '0'
    );
\add_val2_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => add_val_s(2),
      Q => add_val2_s(2),
      R => '0'
    );
\add_val2_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => add_val_s(3),
      Q => add_val2_s(3),
      R => '0'
    );
\add_val2_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => add_val_s(4),
      Q => add_val2_s(4),
      R => '0'
    );
\add_val2_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => add_val_s(5),
      Q => add_val2_s(5),
      R => '0'
    );
\add_val2_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => add_val_s(6),
      Q => add_val2_s(6),
      R => '0'
    );
\add_val2_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => add_val_s(7),
      Q => add_val2_s(7),
      R => '0'
    );
\add_val2_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => add_val_s(8),
      Q => add_val2_s(8),
      R => '0'
    );
\add_val2_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => add_val_s(9),
      Q => add_val2_s(9),
      R => '0'
    );
\add_val_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => add_val_s(0),
      R => '0'
    );
\add_val_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(10),
      Q => add_val_s(10),
      R => '0'
    );
\add_val_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(11),
      Q => add_val_s(11),
      R => '0'
    );
\add_val_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(12),
      Q => add_val_s(12),
      R => '0'
    );
\add_val_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(13),
      Q => add_val_s(13),
      R => '0'
    );
\add_val_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(1),
      Q => add_val_s(1),
      R => '0'
    );
\add_val_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(2),
      Q => add_val_s(2),
      R => '0'
    );
\add_val_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(3),
      Q => add_val_s(3),
      R => '0'
    );
\add_val_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(4),
      Q => add_val_s(4),
      R => '0'
    );
\add_val_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(5),
      Q => add_val_s(5),
      R => '0'
    );
\add_val_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(6),
      Q => add_val_s(6),
      R => '0'
    );
\add_val_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(7),
      Q => add_val_s(7),
      R => '0'
    );
\add_val_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(8),
      Q => add_val_s(8),
      R => '0'
    );
\add_val_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => Q(9),
      Q => add_val_s(9),
      R => '0'
    );
data_en_o_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_en_i,
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
\data_s[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(11),
      I1 => add_val2_s(11),
      O => \data_s[11]_i_2_n_0\
    );
\data_s[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(10),
      I1 => add_val2_s(10),
      O => \data_s[11]_i_3_n_0\
    );
\data_s[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(9),
      I1 => add_val2_s(9),
      O => \data_s[11]_i_4_n_0\
    );
\data_s[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(8),
      I1 => add_val2_s(8),
      O => \data_s[11]_i_5_n_0\
    );
\data_s[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => add_val2_s(13),
      O => \data_s[13]_i_2_n_0\
    );
\data_s[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(12),
      I1 => add_val2_s(12),
      O => \data_s[13]_i_3_n_0\
    );
\data_s[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(3),
      I1 => add_val2_s(3),
      O => \data_s[3]_i_2_n_0\
    );
\data_s[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(2),
      I1 => add_val2_s(2),
      O => \data_s[3]_i_3_n_0\
    );
\data_s[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(1),
      I1 => add_val2_s(1),
      O => \data_s[3]_i_4_n_0\
    );
\data_s[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(0),
      I1 => add_val2_s(0),
      O => \data_s[3]_i_5_n_0\
    );
\data_s[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(7),
      I1 => add_val2_s(7),
      O => \data_s[7]_i_2_n_0\
    );
\data_s[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(6),
      I1 => add_val2_s(6),
      O => \data_s[7]_i_3_n_0\
    );
\data_s[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(5),
      I1 => add_val2_s(5),
      O => \data_s[7]_i_4_n_0\
    );
\data_s[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(4),
      I1 => add_val2_s(4),
      O => \data_s[7]_i_5_n_0\
    );
\data_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_in_s(0),
      Q => data_o(0),
      R => data_rst_i
    );
\data_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_in_s(10),
      Q => data_o(10),
      R => data_rst_i
    );
\data_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_in_s(11),
      Q => data_o(11),
      R => data_rst_i
    );
\data_s_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_s_reg[7]_i_1_n_0\,
      CO(3) => \data_s_reg[11]_i_1_n_0\,
      CO(2) => \data_s_reg[11]_i_1_n_1\,
      CO(1) => \data_s_reg[11]_i_1_n_2\,
      CO(0) => \data_s_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_i(11 downto 8),
      O(3 downto 0) => data_in_s(11 downto 8),
      S(3) => \data_s[11]_i_2_n_0\,
      S(2) => \data_s[11]_i_3_n_0\,
      S(1) => \data_s[11]_i_4_n_0\,
      S(0) => \data_s[11]_i_5_n_0\
    );
\data_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_in_s(12),
      Q => data_o(12),
      R => data_rst_i
    );
\data_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_in_s(13),
      Q => data_o(13),
      R => data_rst_i
    );
\data_s_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_s_reg[11]_i_1_n_0\,
      CO(3 downto 1) => \NLW_data_s_reg[13]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \data_s_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => data_i(12),
      O(3 downto 2) => \NLW_data_s_reg[13]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data_in_s(13 downto 12),
      S(3 downto 2) => B"00",
      S(1) => \data_s[13]_i_2_n_0\,
      S(0) => \data_s[13]_i_3_n_0\
    );
\data_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_in_s(1),
      Q => data_o(1),
      R => data_rst_i
    );
\data_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_in_s(2),
      Q => data_o(2),
      R => data_rst_i
    );
\data_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_in_s(3),
      Q => data_o(3),
      R => data_rst_i
    );
\data_s_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_s_reg[3]_i_1_n_0\,
      CO(2) => \data_s_reg[3]_i_1_n_1\,
      CO(1) => \data_s_reg[3]_i_1_n_2\,
      CO(0) => \data_s_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_i(3 downto 0),
      O(3 downto 0) => data_in_s(3 downto 0),
      S(3) => \data_s[3]_i_2_n_0\,
      S(2) => \data_s[3]_i_3_n_0\,
      S(1) => \data_s[3]_i_4_n_0\,
      S(0) => \data_s[3]_i_5_n_0\
    );
\data_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_in_s(4),
      Q => data_o(4),
      R => data_rst_i
    );
\data_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_in_s(5),
      Q => data_o(5),
      R => data_rst_i
    );
\data_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_in_s(6),
      Q => data_o(6),
      R => data_rst_i
    );
\data_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_in_s(7),
      Q => data_o(7),
      R => data_rst_i
    );
\data_s_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_s_reg[3]_i_1_n_0\,
      CO(3) => \data_s_reg[7]_i_1_n_0\,
      CO(2) => \data_s_reg[7]_i_1_n_1\,
      CO(1) => \data_s_reg[7]_i_1_n_2\,
      CO(0) => \data_s_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_i(7 downto 4),
      O(3 downto 0) => data_in_s(7 downto 4),
      S(3) => \data_s[7]_i_2_n_0\,
      S(2) => \data_s[7]_i_3_n_0\,
      S(1) => \data_s[7]_i_4_n_0\,
      S(0) => \data_s[7]_i_5_n_0\
    );
\data_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_in_s(8),
      Q => data_o(8),
      R => data_rst_i
    );
\data_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_in_s(9),
      Q => data_o(9),
      R => data_rst_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_add_const is
  port (
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 13 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    \axi_awaddr_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_add_const;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_add_const is
begin
\offset_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(0),
      Q => Q(0)
    );
\offset_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(10),
      Q => Q(10)
    );
\offset_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(11),
      Q => Q(11)
    );
\offset_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(12),
      Q => Q(12)
    );
\offset_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(13),
      Q => Q(13)
    );
\offset_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(1),
      Q => Q(1)
    );
\offset_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(2),
      Q => Q(2)
    );
\offset_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(3),
      Q => Q(3)
    );
\offset_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(4),
      Q => Q(4)
    );
\offset_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(5),
      Q => Q(5)
    );
\offset_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(6),
      Q => Q(6)
    );
\offset_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(7),
      Q => Q(7)
    );
\offset_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(8),
      Q => Q(8)
    );
\offset_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(9),
      Q => Q(9)
    );
\readdata_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[3]\(0),
      CLR => s00_axi_reset,
      D => D(0),
      Q => s00_axi_rdata(0)
    );
\readdata_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[3]\(0),
      CLR => s00_axi_reset,
      D => D(10),
      Q => s00_axi_rdata(10)
    );
\readdata_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[3]\(0),
      CLR => s00_axi_reset,
      D => D(11),
      Q => s00_axi_rdata(11)
    );
\readdata_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[3]\(0),
      CLR => s00_axi_reset,
      D => D(12),
      Q => s00_axi_rdata(12)
    );
\readdata_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[3]\(0),
      CLR => s00_axi_reset,
      D => D(1),
      Q => s00_axi_rdata(1)
    );
\readdata_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[3]\(0),
      CLR => s00_axi_reset,
      D => D(2),
      Q => s00_axi_rdata(2)
    );
\readdata_s_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[3]\(0),
      CLR => s00_axi_reset,
      D => D(13),
      Q => s00_axi_rdata(13)
    );
\readdata_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[3]\(0),
      CLR => s00_axi_reset,
      D => D(3),
      Q => s00_axi_rdata(3)
    );
\readdata_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[3]\(0),
      CLR => s00_axi_reset,
      D => D(4),
      Q => s00_axi_rdata(4)
    );
\readdata_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[3]\(0),
      CLR => s00_axi_reset,
      D => D(5),
      Q => s00_axi_rdata(5)
    );
\readdata_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[3]\(0),
      CLR => s00_axi_reset,
      D => D(6),
      Q => s00_axi_rdata(6)
    );
\readdata_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[3]\(0),
      CLR => s00_axi_reset,
      D => D(7),
      Q => s00_axi_rdata(7)
    );
\readdata_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[3]\(0),
      CLR => s00_axi_reset,
      D => D(8),
      Q => s00_axi_rdata(8)
    );
\readdata_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr_reg[3]\(0),
      CLR => s00_axi_reset,
      D => D(9),
      Q => s00_axi_rdata(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const : entity is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const : entity is 32;
  attribute DATA_IN_SIZE : integer;
  attribute DATA_IN_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const : entity is 14;
  attribute DATA_OUT_SIZE : integer;
  attribute DATA_OUT_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const : entity is 14;
  attribute add_val : integer;
  attribute add_val of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const : entity is 0;
  attribute format : string;
  attribute format of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const : entity is "signed";
  attribute id : integer;
  attribute id of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const is
  signal \<const0>\ : STD_LOGIC;
  signal add_constHandComm_n_18 : STD_LOGIC;
  signal add_constHandComm_n_19 : STD_LOGIC;
  signal add_constHandComm_n_20 : STD_LOGIC;
  signal \^data_clk_i\ : STD_LOGIC;
  signal \^data_rst_i\ : STD_LOGIC;
  signal offset_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
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
  s00_axi_rdata(17) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(16) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(15) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(14) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(13) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(12 downto 0) <= \^s00_axi_rdata\(12 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
add_constHandComm: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const_handComm
     port map (
      D(13) => p_0_in(31),
      D(12 downto 1) => p_0_in(12 downto 1),
      D(0) => add_constHandComm_n_18,
      E(0) => add_constHandComm_n_19,
      Q(13 downto 0) => offset_s(13 downto 0),
      \readdata_s_reg[0]\(0) => add_constHandComm_n_20,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_reset => s00_axi_reset,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid
    );
add_constLogic: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const_logic
     port map (
      Q(13 downto 0) => offset_s(13 downto 0),
      data_clk_i => \^data_clk_i\,
      data_en_i => data_en_i,
      data_en_o => data_en_o,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_o(13 downto 0) => data_o(13 downto 0),
      data_rst_i => \^data_rst_i\
    );
wb_add_const_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_add_const
     port map (
      D(13) => p_0_in(31),
      D(12 downto 1) => p_0_in(12 downto 1),
      D(0) => add_constHandComm_n_18,
      E(0) => add_constHandComm_n_19,
      Q(13 downto 0) => offset_s(13 downto 0),
      \axi_awaddr_reg[3]\(0) => add_constHandComm_n_20,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_rdata(13) => \^s00_axi_rdata\(30),
      s00_axi_rdata(12 downto 0) => \^s00_axi_rdata\(12 downto 0),
      s00_axi_reset => s00_axi_reset,
      s00_axi_wdata(13 downto 0) => s00_axi_wdata(13 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_rst_i : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pid_vco_bypass_pid_only_wrapper_adc1_offset_0,add_const,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "add_const,Vivado 2016.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of U0 : label is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of U0 : label is 32;
  attribute DATA_IN_SIZE : integer;
  attribute DATA_IN_SIZE of U0 : label is 14;
  attribute DATA_OUT_SIZE : integer;
  attribute DATA_OUT_SIZE of U0 : label is 14;
  attribute add_val : integer;
  attribute add_val of U0 : label is 0;
  attribute format : string;
  attribute format of U0 : label is "signed";
  attribute id : integer;
  attribute id of U0 : label is 1;
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_const
     port map (
      data_clk_i => data_clk_i,
      data_clk_o => data_clk_o,
      data_en_i => data_en_i,
      data_en_o => data_en_o,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_o(13 downto 0) => data_o(13 downto 0),
      data_rst_i => data_rst_i,
      data_rst_o => data_rst_o,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(3 downto 0),
      s00_axi_arprot(2 downto 0) => s00_axi_arprot(2 downto 0),
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(3 downto 0),
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
