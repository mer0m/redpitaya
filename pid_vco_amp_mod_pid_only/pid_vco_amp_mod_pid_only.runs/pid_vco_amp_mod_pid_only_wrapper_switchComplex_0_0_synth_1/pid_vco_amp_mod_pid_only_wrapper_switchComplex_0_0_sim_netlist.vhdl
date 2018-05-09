-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed May  9 11:10:24 2018
-- Host        : ux305 running 64-bit Debian GNU/Linux testing/unstable
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_
--               pid_vco_amp_mod_pid_only_wrapper_switchComplex_0_0_sim_netlist.vhdl
-- Design      : pid_vco_amp_mod_pid_only_wrapper_switchComplex_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switchComplex_handComm is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    witchInput_s_reg : out STD_LOGIC;
    \axi_awaddr_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    witchInput_s_reg_0 : out STD_LOGIC;
    \axi_araddr_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \readdata_s_reg[0]\ : out STD_LOGIC;
    \readdata_s_reg[0]_0\ : out STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    witchIn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switchComplex_handComm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switchComplex_handComm is
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \^axi_araddr_reg[3]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \^axi_awaddr_reg[3]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal read_addr_s : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^readdata_s_reg[0]_0\ : STD_LOGIC;
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \^witchinput_s_reg_0\ : STD_LOGIC;
  signal write_addr_s : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \readdata_s[0]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of witchInput_s_i_2 : label is "soft_lutpair2";
begin
  \axi_araddr_reg[3]_0\(0) <= \^axi_araddr_reg[3]_0\(0);
  \axi_awaddr_reg[3]_0\(0) <= \^axi_awaddr_reg[3]_0\(0);
  \readdata_s_reg[0]_0\ <= \^readdata_s_reg[0]_0\;
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
  witchInput_s_reg_0 <= \^witchinput_s_reg_0\;
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
      I3 => \^axi_araddr_reg[3]_0\(0),
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
      Q => \^axi_araddr_reg[3]_0\(0),
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
      I4 => \^axi_awaddr_reg[3]_0\(0),
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
      Q => \^axi_awaddr_reg[3]_0\(0),
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
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => \^s00_axi_wready\,
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
      INIT => X"5C50"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^s00_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_arvalid,
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
\readdata_s[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010101010000000F"
    )
        port map (
      I0 => read_addr_s(0),
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => \^readdata_s_reg[0]_0\,
      I3 => \^axi_awaddr_reg[3]_0\(0),
      I4 => write_addr_s(0),
      I5 => \^witchinput_s_reg_0\,
      O => \readdata_s_reg[0]\
    );
\readdata_s[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s00_axi_arready\,
      O => \^readdata_s_reg[0]_0\
    );
witchInput_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \^axi_awaddr_reg[3]_0\(0),
      I2 => write_addr_s(0),
      I3 => \^witchinput_s_reg_0\,
      I4 => witchIn,
      O => witchInput_s_reg
    );
witchInput_s_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => \^s00_axi_wready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => \^witchinput_s_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switchComplex_wb is
  port (
    witchIn : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset : in STD_LOGIC;
    \axi_awaddr_reg[3]\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \axi_araddr_reg[2]\ : in STD_LOGIC;
    axi_awready_reg : in STD_LOGIC;
    \axi_awaddr_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_rvalid_reg : in STD_LOGIC;
    \axi_araddr_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switchComplex_wb;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switchComplex_wb is
  signal \readdata_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \readdata_s[0]_i_3_n_0\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^witchin\ : STD_LOGIC;
begin
  s00_axi_rdata(0) <= \^s00_axi_rdata\(0);
  witchIn <= \^witchin\;
\readdata_s[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^witchin\,
      I1 => \axi_araddr_reg[2]\,
      I2 => \readdata_s[0]_i_3_n_0\,
      I3 => \^s00_axi_rdata\(0),
      O => \readdata_s[0]_i_1_n_0\
    );
\readdata_s[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"010B"
    )
        port map (
      I0 => axi_awready_reg,
      I1 => \axi_awaddr_reg[3]_0\(0),
      I2 => axi_rvalid_reg,
      I3 => \axi_araddr_reg[3]\(0),
      O => \readdata_s[0]_i_3_n_0\
    );
\readdata_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \readdata_s[0]_i_1_n_0\,
      Q => \^s00_axi_rdata\(0),
      R => s00_axi_reset
    );
witchInput_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr_reg[3]\,
      Q => \^witchin\,
      R => s00_axi_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switchComplex is
  port (
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    data_i_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_q_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_o : out STD_LOGIC;
    data_eof_o : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data2_i_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_i_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_q_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_q_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_en_i : in STD_LOGIC;
    data1_en_i : in STD_LOGIC;
    data2_eof_i : in STD_LOGIC;
    data1_eof_i : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switchComplex;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switchComplex is
  signal handle_comm_n_10 : STD_LOGIC;
  signal handle_comm_n_5 : STD_LOGIC;
  signal handle_comm_n_7 : STD_LOGIC;
  signal handle_comm_n_9 : STD_LOGIC;
  signal read_addr_s : STD_LOGIC_VECTOR ( 1 to 1 );
  signal witchIn : STD_LOGIC;
  signal witchIn2_reg_srl2_n_0 : STD_LOGIC;
  signal witchIn3 : STD_LOGIC;
  signal write_addr_s : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of data_en_o_INST_0 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of data_eof_o_INST_0 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_i_o[0]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_i_o[10]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_i_o[11]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_i_o[12]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_i_o[13]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_i_o[1]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_i_o[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_i_o[3]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_i_o[4]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_i_o[5]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_i_o[6]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_i_o[7]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_i_o[8]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_i_o[9]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_q_o[0]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_q_o[10]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_q_o[11]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_q_o[12]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_q_o[13]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_q_o[1]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_q_o[2]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_q_o[3]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_q_o[4]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_q_o[5]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_q_o[6]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_q_o[7]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_q_o[8]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_q_o[9]_INST_0\ : label is "soft_lutpair14";
  attribute srl_name : string;
  attribute srl_name of witchIn2_reg_srl2 : label is "\U0/witchIn2_reg_srl2 ";
begin
data_en_o_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data2_en_i,
      I1 => witchIn3,
      I2 => data1_en_i,
      O => data_en_o
    );
data_eof_o_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data2_eof_i,
      I1 => witchIn3,
      I2 => data1_eof_i,
      O => data_eof_o
    );
\data_i_o[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i_i(0),
      I1 => data1_i_i(0),
      I2 => witchIn3,
      O => data_i_o(0)
    );
\data_i_o[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i_i(10),
      I1 => data1_i_i(10),
      I2 => witchIn3,
      O => data_i_o(10)
    );
\data_i_o[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i_i(11),
      I1 => data1_i_i(11),
      I2 => witchIn3,
      O => data_i_o(11)
    );
\data_i_o[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i_i(12),
      I1 => data1_i_i(12),
      I2 => witchIn3,
      O => data_i_o(12)
    );
\data_i_o[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i_i(13),
      I1 => data1_i_i(13),
      I2 => witchIn3,
      O => data_i_o(13)
    );
\data_i_o[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i_i(1),
      I1 => data1_i_i(1),
      I2 => witchIn3,
      O => data_i_o(1)
    );
\data_i_o[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i_i(2),
      I1 => data1_i_i(2),
      I2 => witchIn3,
      O => data_i_o(2)
    );
\data_i_o[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i_i(3),
      I1 => data1_i_i(3),
      I2 => witchIn3,
      O => data_i_o(3)
    );
\data_i_o[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i_i(4),
      I1 => data1_i_i(4),
      I2 => witchIn3,
      O => data_i_o(4)
    );
\data_i_o[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i_i(5),
      I1 => data1_i_i(5),
      I2 => witchIn3,
      O => data_i_o(5)
    );
\data_i_o[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i_i(6),
      I1 => data1_i_i(6),
      I2 => witchIn3,
      O => data_i_o(6)
    );
\data_i_o[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i_i(7),
      I1 => data1_i_i(7),
      I2 => witchIn3,
      O => data_i_o(7)
    );
\data_i_o[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i_i(8),
      I1 => data1_i_i(8),
      I2 => witchIn3,
      O => data_i_o(8)
    );
\data_i_o[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i_i(9),
      I1 => data1_i_i(9),
      I2 => witchIn3,
      O => data_i_o(9)
    );
\data_q_o[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_q_i(0),
      I1 => data1_q_i(0),
      I2 => witchIn3,
      O => data_q_o(0)
    );
\data_q_o[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_q_i(10),
      I1 => data1_q_i(10),
      I2 => witchIn3,
      O => data_q_o(10)
    );
\data_q_o[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_q_i(11),
      I1 => data1_q_i(11),
      I2 => witchIn3,
      O => data_q_o(11)
    );
\data_q_o[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_q_i(12),
      I1 => data1_q_i(12),
      I2 => witchIn3,
      O => data_q_o(12)
    );
\data_q_o[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_q_i(13),
      I1 => data1_q_i(13),
      I2 => witchIn3,
      O => data_q_o(13)
    );
\data_q_o[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_q_i(1),
      I1 => data1_q_i(1),
      I2 => witchIn3,
      O => data_q_o(1)
    );
\data_q_o[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_q_i(2),
      I1 => data1_q_i(2),
      I2 => witchIn3,
      O => data_q_o(2)
    );
\data_q_o[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_q_i(3),
      I1 => data1_q_i(3),
      I2 => witchIn3,
      O => data_q_o(3)
    );
\data_q_o[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_q_i(4),
      I1 => data1_q_i(4),
      I2 => witchIn3,
      O => data_q_o(4)
    );
\data_q_o[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_q_i(5),
      I1 => data1_q_i(5),
      I2 => witchIn3,
      O => data_q_o(5)
    );
\data_q_o[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_q_i(6),
      I1 => data1_q_i(6),
      I2 => witchIn3,
      O => data_q_o(6)
    );
\data_q_o[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_q_i(7),
      I1 => data1_q_i(7),
      I2 => witchIn3,
      O => data_q_o(7)
    );
\data_q_o[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_q_i(8),
      I1 => data1_q_i(8),
      I2 => witchIn3,
      O => data_q_o(8)
    );
\data_q_o[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_q_i(9),
      I1 => data1_q_i(9),
      I2 => witchIn3,
      O => data_q_o(9)
    );
handle_comm: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switchComplex_handComm
     port map (
      \axi_araddr_reg[3]_0\(0) => read_addr_s(1),
      \axi_awaddr_reg[3]_0\(0) => write_addr_s(1),
      \readdata_s_reg[0]\ => handle_comm_n_9,
      \readdata_s_reg[0]_0\ => handle_comm_n_10,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_reset => s00_axi_reset,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(0) => s00_axi_wdata(0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid,
      witchIn => witchIn,
      witchInput_s_reg => handle_comm_n_5,
      witchInput_s_reg_0 => handle_comm_n_7
    );
switchComplexWb_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switchComplex_wb
     port map (
      \axi_araddr_reg[2]\ => handle_comm_n_9,
      \axi_araddr_reg[3]\(0) => read_addr_s(1),
      \axi_awaddr_reg[3]\ => handle_comm_n_5,
      \axi_awaddr_reg[3]_0\(0) => write_addr_s(1),
      axi_awready_reg => handle_comm_n_7,
      axi_rvalid_reg => handle_comm_n_10,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_rdata(0) => s00_axi_rdata(0),
      s00_axi_reset => s00_axi_reset,
      witchIn => witchIn
    );
witchIn2_reg_srl2: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => data1_clk_i,
      D => witchIn,
      Q => witchIn2_reg_srl2_n_0
    );
witchIn3_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => witchIn2_reg_srl2_n_0,
      Q => witchIn3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data1_i_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_q_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_eof_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data1_en_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data2_i_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_q_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_eof_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    data2_en_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data_i_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_q_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_eof_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
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
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pid_vco_amp_mod_pid_only_wrapper_switchComplex_0_0,switchComplex,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "switchComplex,Vivado 2016.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^data1_clk_i\ : STD_LOGIC;
  signal \^data1_rst_i\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^data1_clk_i\ <= data1_clk_i;
  \^data1_rst_i\ <= data1_rst_i;
  data_clk_o <= \^data1_clk_i\;
  data_rst_o <= \^data1_rst_i\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \<const0>\;
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \<const0>\;
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \<const0>\;
  s00_axi_rdata(25) <= \<const0>\;
  s00_axi_rdata(24) <= \<const0>\;
  s00_axi_rdata(23) <= \<const0>\;
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \<const0>\;
  s00_axi_rdata(20) <= \<const0>\;
  s00_axi_rdata(19) <= \<const0>\;
  s00_axi_rdata(18) <= \<const0>\;
  s00_axi_rdata(17) <= \<const0>\;
  s00_axi_rdata(16) <= \<const0>\;
  s00_axi_rdata(15) <= \<const0>\;
  s00_axi_rdata(14) <= \<const0>\;
  s00_axi_rdata(13) <= \<const0>\;
  s00_axi_rdata(12) <= \<const0>\;
  s00_axi_rdata(11) <= \<const0>\;
  s00_axi_rdata(10) <= \<const0>\;
  s00_axi_rdata(9) <= \<const0>\;
  s00_axi_rdata(8) <= \<const0>\;
  s00_axi_rdata(7) <= \<const0>\;
  s00_axi_rdata(6) <= \<const0>\;
  s00_axi_rdata(5) <= \<const0>\;
  s00_axi_rdata(4) <= \<const0>\;
  s00_axi_rdata(3) <= \<const0>\;
  s00_axi_rdata(2) <= \<const0>\;
  s00_axi_rdata(1) <= \<const0>\;
  s00_axi_rdata(0) <= \^s00_axi_rdata\(0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switchComplex
     port map (
      data1_clk_i => \^data1_clk_i\,
      data1_en_i => data1_en_i,
      data1_eof_i => data1_eof_i,
      data1_i_i(13 downto 0) => data1_i_i(13 downto 0),
      data1_q_i(13 downto 0) => data1_q_i(13 downto 0),
      data2_en_i => data2_en_i,
      data2_eof_i => data2_eof_i,
      data2_i_i(13 downto 0) => data2_i_i(13 downto 0),
      data2_q_i(13 downto 0) => data2_q_i(13 downto 0),
      data_en_o => data_en_o,
      data_eof_o => data_eof_o,
      data_i_o(13 downto 0) => data_i_o(13 downto 0),
      data_q_o(13 downto 0) => data_q_o(13 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(0) => \^s00_axi_rdata\(0),
      s00_axi_reset => s00_axi_reset,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(0) => s00_axi_wdata(0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
