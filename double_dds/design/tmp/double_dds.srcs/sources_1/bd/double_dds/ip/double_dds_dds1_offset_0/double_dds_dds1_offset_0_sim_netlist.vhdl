-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Thu Oct 22 19:49:13 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/fpga_design/redpitaya/double_dds/design/tmp/double_dds.srcs/sources_1/bd/double_dds/ip/double_dds_dds1_offset_0/double_dds_dds1_offset_0_sim_netlist.vhdl
-- Design      : double_dds_dds1_offset_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dds1_offset_0_add_constReal_handComm is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    addr_s : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_arvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dds1_offset_0_add_constReal_handComm : entity is "add_constReal_handComm";
end double_dds_dds1_offset_0_add_constReal_handComm;

architecture STRUCTURE of double_dds_dds1_offset_0_add_constReal_handComm is
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
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal read_addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s00_axi_arvalid_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal write_addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal write_en_s : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_reg[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_1\ : label is "soft_lutpair2";
begin
  addr_s(1 downto 0) <= \^addr_s\(1 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_arvalid_0(0) <= \^s00_axi_arvalid_0\(0);
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
\addr_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_addr_s(0),
      I1 => write_en_s,
      I2 => read_addr_s(0),
      I3 => \^s00_axi_arvalid_0\(0),
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
      I3 => \^s00_axi_arvalid_0\(0),
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
\offset_l_s[31]_i_1\: unisim.vcomponents.LUT6
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
      O => s00_axi_awvalid_0(0)
    );
\offset_s[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => \^addr_s\(0),
      I5 => \^addr_s\(1),
      O => E(0)
    );
\readdata_s[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^s00_axi_rvalid\,
      O => \^s00_axi_arvalid_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dds1_offset_0_add_constReal_logic is
  port (
    data_en_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dds1_offset_0_add_constReal_logic : entity is "add_constReal_logic";
end double_dds_dds1_offset_0_add_constReal_logic;

architecture STRUCTURE of double_dds_dds1_offset_0_add_constReal_logic is
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
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_en_i,
      Q => data_en_o,
      R => '0'
    );
\data_s[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(11),
      I1 => \out\(11),
      O => \data_s[11]_i_2_n_0\
    );
\data_s[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(10),
      I1 => \out\(10),
      O => \data_s[11]_i_3_n_0\
    );
\data_s[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(9),
      I1 => \out\(9),
      O => \data_s[11]_i_4_n_0\
    );
\data_s[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(8),
      I1 => \out\(8),
      O => \data_s[11]_i_5_n_0\
    );
\data_s[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(13),
      I1 => \out\(13),
      O => \data_s[13]_i_2_n_0\
    );
\data_s[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(12),
      I1 => \out\(12),
      O => \data_s[13]_i_3_n_0\
    );
\data_s[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(3),
      I1 => \out\(3),
      O => \data_s[3]_i_2_n_0\
    );
\data_s[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(2),
      I1 => \out\(2),
      O => \data_s[3]_i_3_n_0\
    );
\data_s[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(1),
      I1 => \out\(1),
      O => \data_s[3]_i_4_n_0\
    );
\data_s[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(0),
      I1 => \out\(0),
      O => \data_s[3]_i_5_n_0\
    );
\data_s[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(7),
      I1 => \out\(7),
      O => \data_s[7]_i_2_n_0\
    );
\data_s[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(6),
      I1 => \out\(6),
      O => \data_s[7]_i_3_n_0\
    );
\data_s[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(5),
      I1 => \out\(5),
      O => \data_s[7]_i_4_n_0\
    );
\data_s[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_i(4),
      I1 => \out\(4),
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
entity double_dds_dds1_offset_0_add_constReal_synchronizer_vector is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dds1_offset_0_add_constReal_synchronizer_vector : entity is "add_constReal_synchronizer_vector";
end double_dds_dds1_offset_0_add_constReal_synchronizer_vector;

architecture STRUCTURE of double_dds_dds1_offset_0_add_constReal_synchronizer_vector is
  signal \flipflops[0]_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute async_reg : string;
  attribute async_reg of \flipflops[0]_0\ : signal is "true";
  signal \flipflops[1]_1\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute async_reg of \flipflops[1]_1\ : signal is "true";
  signal \flipflops[2]_2\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute async_reg of \flipflops[2]_2\ : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \flipflops_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \flipflops_reg[0][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[0][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[0][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[0][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[0][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[0][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[0][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[0][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[0][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[0][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[0][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[0][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[0][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[0][9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[1][9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2][0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2][10]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2][10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2][11]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2][11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2][12]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2][12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2][13]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2][13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2][1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2][2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2][3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2][4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2][5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2][6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2][7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2][8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \flipflops_reg[2][9]\ : label is std.standard.true;
  attribute KEEP of \flipflops_reg[2][9]\ : label is "yes";
begin
  \out\(13 downto 0) <= \flipflops[2]_2\(13 downto 0);
\flipflops_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => Q(0),
      Q => \flipflops[0]_0\(0),
      R => '0'
    );
\flipflops_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => Q(10),
      Q => \flipflops[0]_0\(10),
      R => '0'
    );
\flipflops_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => Q(11),
      Q => \flipflops[0]_0\(11),
      R => '0'
    );
\flipflops_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => Q(12),
      Q => \flipflops[0]_0\(12),
      R => '0'
    );
\flipflops_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => Q(13),
      Q => \flipflops[0]_0\(13),
      R => '0'
    );
\flipflops_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => Q(1),
      Q => \flipflops[0]_0\(1),
      R => '0'
    );
\flipflops_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => Q(2),
      Q => \flipflops[0]_0\(2),
      R => '0'
    );
\flipflops_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => Q(3),
      Q => \flipflops[0]_0\(3),
      R => '0'
    );
\flipflops_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => Q(4),
      Q => \flipflops[0]_0\(4),
      R => '0'
    );
\flipflops_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => Q(5),
      Q => \flipflops[0]_0\(5),
      R => '0'
    );
\flipflops_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => Q(6),
      Q => \flipflops[0]_0\(6),
      R => '0'
    );
\flipflops_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => Q(7),
      Q => \flipflops[0]_0\(7),
      R => '0'
    );
\flipflops_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => Q(8),
      Q => \flipflops[0]_0\(8),
      R => '0'
    );
\flipflops_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => Q(9),
      Q => \flipflops[0]_0\(9),
      R => '0'
    );
\flipflops_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[0]_0\(0),
      Q => \flipflops[1]_1\(0),
      R => '0'
    );
\flipflops_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[0]_0\(10),
      Q => \flipflops[1]_1\(10),
      R => '0'
    );
\flipflops_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[0]_0\(11),
      Q => \flipflops[1]_1\(11),
      R => '0'
    );
\flipflops_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[0]_0\(12),
      Q => \flipflops[1]_1\(12),
      R => '0'
    );
\flipflops_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[0]_0\(13),
      Q => \flipflops[1]_1\(13),
      R => '0'
    );
\flipflops_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[0]_0\(1),
      Q => \flipflops[1]_1\(1),
      R => '0'
    );
\flipflops_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[0]_0\(2),
      Q => \flipflops[1]_1\(2),
      R => '0'
    );
\flipflops_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[0]_0\(3),
      Q => \flipflops[1]_1\(3),
      R => '0'
    );
\flipflops_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[0]_0\(4),
      Q => \flipflops[1]_1\(4),
      R => '0'
    );
\flipflops_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[0]_0\(5),
      Q => \flipflops[1]_1\(5),
      R => '0'
    );
\flipflops_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[0]_0\(6),
      Q => \flipflops[1]_1\(6),
      R => '0'
    );
\flipflops_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[0]_0\(7),
      Q => \flipflops[1]_1\(7),
      R => '0'
    );
\flipflops_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[0]_0\(8),
      Q => \flipflops[1]_1\(8),
      R => '0'
    );
\flipflops_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[0]_0\(9),
      Q => \flipflops[1]_1\(9),
      R => '0'
    );
\flipflops_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[1]_1\(0),
      Q => \flipflops[2]_2\(0),
      R => '0'
    );
\flipflops_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[1]_1\(10),
      Q => \flipflops[2]_2\(10),
      R => '0'
    );
\flipflops_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[1]_1\(11),
      Q => \flipflops[2]_2\(11),
      R => '0'
    );
\flipflops_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[1]_1\(12),
      Q => \flipflops[2]_2\(12),
      R => '0'
    );
\flipflops_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[1]_1\(13),
      Q => \flipflops[2]_2\(13),
      R => '0'
    );
\flipflops_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[1]_1\(1),
      Q => \flipflops[2]_2\(1),
      R => '0'
    );
\flipflops_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[1]_1\(2),
      Q => \flipflops[2]_2\(2),
      R => '0'
    );
\flipflops_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[1]_1\(3),
      Q => \flipflops[2]_2\(3),
      R => '0'
    );
\flipflops_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[1]_1\(4),
      Q => \flipflops[2]_2\(4),
      R => '0'
    );
\flipflops_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[1]_1\(5),
      Q => \flipflops[2]_2\(5),
      R => '0'
    );
\flipflops_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[1]_1\(6),
      Q => \flipflops[2]_2\(6),
      R => '0'
    );
\flipflops_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[1]_1\(7),
      Q => \flipflops[2]_2\(7),
      R => '0'
    );
\flipflops_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[1]_1\(8),
      Q => \flipflops[2]_2\(8),
      R => '0'
    );
\flipflops_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => '1',
      D => \flipflops[1]_1\(9),
      Q => \flipflops[2]_2\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dds1_offset_0_wb_add_constReal is
  port (
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    \offset_s_reg[63]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \readdata_s_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dds1_offset_0_wb_add_constReal : entity is "wb_add_constReal";
end double_dds_dds1_offset_0_wb_add_constReal;

architecture STRUCTURE of double_dds_dds1_offset_0_wb_add_constReal is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal offset_l_s : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal offset_s : STD_LOGIC_VECTOR ( 63 downto 14 );
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
\offset_l_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(0),
      Q => offset_l_s(0)
    );
\offset_l_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(10),
      Q => offset_l_s(10)
    );
\offset_l_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(11),
      Q => offset_l_s(11)
    );
\offset_l_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(12),
      Q => offset_l_s(12)
    );
\offset_l_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(13),
      Q => offset_l_s(13)
    );
\offset_l_s_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(14),
      Q => offset_l_s(14)
    );
\offset_l_s_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(15),
      Q => offset_l_s(15)
    );
\offset_l_s_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(16),
      Q => offset_l_s(16)
    );
\offset_l_s_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(17),
      Q => offset_l_s(17)
    );
\offset_l_s_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(18),
      Q => offset_l_s(18)
    );
\offset_l_s_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(19),
      Q => offset_l_s(19)
    );
\offset_l_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(1),
      Q => offset_l_s(1)
    );
\offset_l_s_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(20),
      Q => offset_l_s(20)
    );
\offset_l_s_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(21),
      Q => offset_l_s(21)
    );
\offset_l_s_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(22),
      Q => offset_l_s(22)
    );
\offset_l_s_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(23),
      Q => offset_l_s(23)
    );
\offset_l_s_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(24),
      Q => offset_l_s(24)
    );
\offset_l_s_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(25),
      Q => offset_l_s(25)
    );
\offset_l_s_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(26),
      Q => offset_l_s(26)
    );
\offset_l_s_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(27),
      Q => offset_l_s(27)
    );
\offset_l_s_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(28),
      Q => offset_l_s(28)
    );
\offset_l_s_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(29),
      Q => offset_l_s(29)
    );
\offset_l_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(2),
      Q => offset_l_s(2)
    );
\offset_l_s_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(30),
      Q => offset_l_s(30)
    );
\offset_l_s_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(31),
      Q => offset_l_s(31)
    );
\offset_l_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(3),
      Q => offset_l_s(3)
    );
\offset_l_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(4),
      Q => offset_l_s(4)
    );
\offset_l_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(5),
      Q => offset_l_s(5)
    );
\offset_l_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(6),
      Q => offset_l_s(6)
    );
\offset_l_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(7),
      Q => offset_l_s(7)
    );
\offset_l_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(8),
      Q => offset_l_s(8)
    );
\offset_l_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(9),
      Q => offset_l_s(9)
    );
\offset_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(0),
      Q => \^q\(0)
    );
\offset_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(10),
      Q => \^q\(10)
    );
\offset_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(11),
      Q => \^q\(11)
    );
\offset_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(12),
      Q => \^q\(12)
    );
\offset_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(13),
      Q => \^q\(13)
    );
\offset_s_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(14),
      Q => offset_s(14)
    );
\offset_s_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(15),
      Q => offset_s(15)
    );
\offset_s_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(16),
      Q => offset_s(16)
    );
\offset_s_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(17),
      Q => offset_s(17)
    );
\offset_s_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(18),
      Q => offset_s(18)
    );
\offset_s_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(19),
      Q => offset_s(19)
    );
\offset_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(1),
      Q => \^q\(1)
    );
\offset_s_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(20),
      Q => offset_s(20)
    );
\offset_s_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(21),
      Q => offset_s(21)
    );
\offset_s_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(22),
      Q => offset_s(22)
    );
\offset_s_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(23),
      Q => offset_s(23)
    );
\offset_s_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(24),
      Q => offset_s(24)
    );
\offset_s_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(25),
      Q => offset_s(25)
    );
\offset_s_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(26),
      Q => offset_s(26)
    );
\offset_s_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(27),
      Q => offset_s(27)
    );
\offset_s_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(28),
      Q => offset_s(28)
    );
\offset_s_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(29),
      Q => offset_s(29)
    );
\offset_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(2),
      Q => \^q\(2)
    );
\offset_s_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(30),
      Q => offset_s(30)
    );
\offset_s_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(31),
      Q => offset_s(31)
    );
\offset_s_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(0),
      Q => offset_s(32)
    );
\offset_s_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(1),
      Q => offset_s(33)
    );
\offset_s_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(2),
      Q => offset_s(34)
    );
\offset_s_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(3),
      Q => offset_s(35)
    );
\offset_s_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(4),
      Q => offset_s(36)
    );
\offset_s_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(5),
      Q => offset_s(37)
    );
\offset_s_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(6),
      Q => offset_s(38)
    );
\offset_s_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(7),
      Q => offset_s(39)
    );
\offset_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(3),
      Q => \^q\(3)
    );
\offset_s_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(8),
      Q => offset_s(40)
    );
\offset_s_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(9),
      Q => offset_s(41)
    );
\offset_s_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(10),
      Q => offset_s(42)
    );
\offset_s_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(11),
      Q => offset_s(43)
    );
\offset_s_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(12),
      Q => offset_s(44)
    );
\offset_s_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(13),
      Q => offset_s(45)
    );
\offset_s_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(14),
      Q => offset_s(46)
    );
\offset_s_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(15),
      Q => offset_s(47)
    );
\offset_s_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(16),
      Q => offset_s(48)
    );
\offset_s_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(17),
      Q => offset_s(49)
    );
\offset_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(4),
      Q => \^q\(4)
    );
\offset_s_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(18),
      Q => offset_s(50)
    );
\offset_s_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(19),
      Q => offset_s(51)
    );
\offset_s_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(20),
      Q => offset_s(52)
    );
\offset_s_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(21),
      Q => offset_s(53)
    );
\offset_s_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(22),
      Q => offset_s(54)
    );
\offset_s_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(23),
      Q => offset_s(55)
    );
\offset_s_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(24),
      Q => offset_s(56)
    );
\offset_s_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(25),
      Q => offset_s(57)
    );
\offset_s_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(26),
      Q => offset_s(58)
    );
\offset_s_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(27),
      Q => offset_s(59)
    );
\offset_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(5),
      Q => \^q\(5)
    );
\offset_s_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(28),
      Q => offset_s(60)
    );
\offset_s_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(29),
      Q => offset_s(61)
    );
\offset_s_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(30),
      Q => offset_s(62)
    );
\offset_s_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => s00_axi_wdata(31),
      Q => offset_s(63)
    );
\offset_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(6),
      Q => \^q\(6)
    );
\offset_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(7),
      Q => \^q\(7)
    );
\offset_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(8),
      Q => \^q\(8)
    );
\offset_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \offset_s_reg[63]_0\(0),
      CLR => s00_axi_reset,
      D => offset_l_s(9),
      Q => \^q\(9)
    );
\readdata_s[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FACF"
    )
        port map (
      I0 => \^q\(0),
      I1 => offset_s(32),
      I2 => addr_s(1),
      I3 => addr_s(0),
      O => p_0_in(0)
    );
\readdata_s[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(42),
      I1 => addr_s(1),
      I2 => \^q\(10),
      I3 => addr_s(0),
      O => p_0_in(10)
    );
\readdata_s[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(43),
      I1 => addr_s(1),
      I2 => \^q\(11),
      I3 => addr_s(0),
      O => p_0_in(11)
    );
\readdata_s[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(44),
      I1 => addr_s(1),
      I2 => \^q\(12),
      I3 => addr_s(0),
      O => p_0_in(12)
    );
\readdata_s[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(45),
      I1 => addr_s(1),
      I2 => \^q\(13),
      I3 => addr_s(0),
      O => p_0_in(13)
    );
\readdata_s[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(46),
      I1 => addr_s(1),
      I2 => offset_s(14),
      I3 => addr_s(0),
      O => p_0_in(14)
    );
\readdata_s[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(47),
      I1 => addr_s(1),
      I2 => offset_s(15),
      I3 => addr_s(0),
      O => p_0_in(15)
    );
\readdata_s[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(48),
      I1 => addr_s(1),
      I2 => offset_s(16),
      I3 => addr_s(0),
      O => p_0_in(16)
    );
\readdata_s[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(49),
      I1 => addr_s(1),
      I2 => offset_s(17),
      I3 => addr_s(0),
      O => p_0_in(17)
    );
\readdata_s[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(50),
      I1 => addr_s(1),
      I2 => offset_s(18),
      I3 => addr_s(0),
      O => p_0_in(18)
    );
\readdata_s[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(51),
      I1 => addr_s(1),
      I2 => offset_s(19),
      I3 => addr_s(0),
      O => p_0_in(19)
    );
\readdata_s[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(33),
      I1 => addr_s(1),
      I2 => \^q\(1),
      I3 => addr_s(0),
      O => p_0_in(1)
    );
\readdata_s[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(52),
      I1 => addr_s(1),
      I2 => offset_s(20),
      I3 => addr_s(0),
      O => p_0_in(20)
    );
\readdata_s[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(53),
      I1 => addr_s(1),
      I2 => offset_s(21),
      I3 => addr_s(0),
      O => p_0_in(21)
    );
\readdata_s[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(54),
      I1 => addr_s(1),
      I2 => offset_s(22),
      I3 => addr_s(0),
      O => p_0_in(22)
    );
\readdata_s[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(55),
      I1 => addr_s(1),
      I2 => offset_s(23),
      I3 => addr_s(0),
      O => p_0_in(23)
    );
\readdata_s[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(56),
      I1 => addr_s(1),
      I2 => offset_s(24),
      I3 => addr_s(0),
      O => p_0_in(24)
    );
\readdata_s[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(57),
      I1 => addr_s(1),
      I2 => offset_s(25),
      I3 => addr_s(0),
      O => p_0_in(25)
    );
\readdata_s[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(58),
      I1 => addr_s(1),
      I2 => offset_s(26),
      I3 => addr_s(0),
      O => p_0_in(26)
    );
\readdata_s[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(59),
      I1 => addr_s(1),
      I2 => offset_s(27),
      I3 => addr_s(0),
      O => p_0_in(27)
    );
\readdata_s[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(60),
      I1 => addr_s(1),
      I2 => offset_s(28),
      I3 => addr_s(0),
      O => p_0_in(28)
    );
\readdata_s[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(61),
      I1 => addr_s(1),
      I2 => offset_s(29),
      I3 => addr_s(0),
      O => p_0_in(29)
    );
\readdata_s[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(34),
      I1 => addr_s(1),
      I2 => \^q\(2),
      I3 => addr_s(0),
      O => p_0_in(2)
    );
\readdata_s[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(62),
      I1 => addr_s(1),
      I2 => offset_s(30),
      I3 => addr_s(0),
      O => p_0_in(30)
    );
\readdata_s[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(63),
      I1 => addr_s(1),
      I2 => offset_s(31),
      I3 => addr_s(0),
      O => p_0_in(31)
    );
\readdata_s[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(35),
      I1 => addr_s(1),
      I2 => \^q\(3),
      I3 => addr_s(0),
      O => p_0_in(3)
    );
\readdata_s[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(36),
      I1 => addr_s(1),
      I2 => \^q\(4),
      I3 => addr_s(0),
      O => p_0_in(4)
    );
\readdata_s[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(37),
      I1 => addr_s(1),
      I2 => \^q\(5),
      I3 => addr_s(0),
      O => p_0_in(5)
    );
\readdata_s[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(38),
      I1 => addr_s(1),
      I2 => \^q\(6),
      I3 => addr_s(0),
      O => p_0_in(6)
    );
\readdata_s[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(39),
      I1 => addr_s(1),
      I2 => \^q\(7),
      I3 => addr_s(0),
      O => p_0_in(7)
    );
\readdata_s[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(40),
      I1 => addr_s(1),
      I2 => \^q\(8),
      I3 => addr_s(0),
      O => p_0_in(8)
    );
\readdata_s[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC88"
    )
        port map (
      I0 => offset_s(41),
      I1 => addr_s(1),
      I2 => \^q\(9),
      I3 => addr_s(0),
      O => p_0_in(9)
    );
\readdata_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(0),
      Q => s00_axi_rdata(0)
    );
\readdata_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(10),
      Q => s00_axi_rdata(10)
    );
\readdata_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(11),
      Q => s00_axi_rdata(11)
    );
\readdata_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(12),
      Q => s00_axi_rdata(12)
    );
\readdata_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(13),
      Q => s00_axi_rdata(13)
    );
\readdata_s_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(14),
      Q => s00_axi_rdata(14)
    );
\readdata_s_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(15),
      Q => s00_axi_rdata(15)
    );
\readdata_s_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(16),
      Q => s00_axi_rdata(16)
    );
\readdata_s_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(17),
      Q => s00_axi_rdata(17)
    );
\readdata_s_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(18),
      Q => s00_axi_rdata(18)
    );
\readdata_s_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(19),
      Q => s00_axi_rdata(19)
    );
\readdata_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(1),
      Q => s00_axi_rdata(1)
    );
\readdata_s_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(20),
      Q => s00_axi_rdata(20)
    );
\readdata_s_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(21),
      Q => s00_axi_rdata(21)
    );
\readdata_s_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(22),
      Q => s00_axi_rdata(22)
    );
\readdata_s_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(23),
      Q => s00_axi_rdata(23)
    );
\readdata_s_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(24),
      Q => s00_axi_rdata(24)
    );
\readdata_s_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(25),
      Q => s00_axi_rdata(25)
    );
\readdata_s_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(26),
      Q => s00_axi_rdata(26)
    );
\readdata_s_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(27),
      Q => s00_axi_rdata(27)
    );
\readdata_s_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(28),
      Q => s00_axi_rdata(28)
    );
\readdata_s_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(29),
      Q => s00_axi_rdata(29)
    );
\readdata_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(2),
      Q => s00_axi_rdata(2)
    );
\readdata_s_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(30),
      Q => s00_axi_rdata(30)
    );
\readdata_s_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(31),
      Q => s00_axi_rdata(31)
    );
\readdata_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(3),
      Q => s00_axi_rdata(3)
    );
\readdata_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(4),
      Q => s00_axi_rdata(4)
    );
\readdata_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(5),
      Q => s00_axi_rdata(5)
    );
\readdata_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(6),
      Q => s00_axi_rdata(6)
    );
\readdata_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(7),
      Q => s00_axi_rdata(7)
    );
\readdata_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(8),
      Q => s00_axi_rdata(8)
    );
\readdata_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      CLR => s00_axi_reset,
      D => p_0_in(9),
      Q => s00_axi_rdata(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dds1_offset_0_add_constReal is
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
  attribute C_S00_AXI_ADDR_WIDTH of double_dds_dds1_offset_0_add_constReal : entity is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of double_dds_dds1_offset_0_add_constReal : entity is 32;
  attribute DATA_IN_SIZE : integer;
  attribute DATA_IN_SIZE of double_dds_dds1_offset_0_add_constReal : entity is 14;
  attribute DATA_OUT_SIZE : integer;
  attribute DATA_OUT_SIZE of double_dds_dds1_offset_0_add_constReal : entity is 14;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dds1_offset_0_add_constReal : entity is "add_constReal";
  attribute add_val : integer;
  attribute add_val of double_dds_dds1_offset_0_add_constReal : entity is 0;
  attribute format : string;
  attribute format of double_dds_dds1_offset_0_add_constReal : entity is "signed";
  attribute id : integer;
  attribute id of double_dds_dds1_offset_0_add_constReal : entity is 1;
end double_dds_dds1_offset_0_add_constReal;

architecture STRUCTURE of double_dds_dds1_offset_0_add_constReal is
  signal \<const0>\ : STD_LOGIC;
  signal addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^data_clk_i\ : STD_LOGIC;
  signal \^data_rst_i\ : STD_LOGIC;
  signal offset_l_s : STD_LOGIC;
  signal offset_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal offset_s_0 : STD_LOGIC;
  signal offset_sync_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal read_en_s : STD_LOGIC;
begin
  \^data_clk_i\ <= data_clk_i;
  \^data_rst_i\ <= data_rst_i;
  data_clk_o <= \^data_clk_i\;
  data_rst_o <= \^data_rst_i\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
add_constRealHandComm: entity work.double_dds_dds1_offset_0_add_constReal_handComm
     port map (
      E(0) => offset_s_0,
      addr_s(1 downto 0) => addr_s(1 downto 0),
      axi_arready_reg_0 => s00_axi_arready,
      axi_awready_reg_0 => s00_axi_awready,
      axi_wready_reg_0 => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_arvalid_0(0) => read_en_s,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_awvalid_0(0) => offset_l_s,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_reset => s00_axi_reset,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wvalid => s00_axi_wvalid
    );
add_constRealLogic: entity work.double_dds_dds1_offset_0_add_constReal_logic
     port map (
      data_clk_i => \^data_clk_i\,
      data_en_i => data_en_i,
      data_en_o => data_en_o,
      data_i(13 downto 0) => data_i(13 downto 0),
      data_o(13 downto 0) => data_o(13 downto 0),
      data_rst_i => \^data_rst_i\,
      \out\(13 downto 0) => offset_sync_s(13 downto 0)
    );
offset_syn: entity work.double_dds_dds1_offset_0_add_constReal_synchronizer_vector
     port map (
      Q(13 downto 0) => offset_s(13 downto 0),
      data_clk_i => \^data_clk_i\,
      \out\(13 downto 0) => offset_sync_s(13 downto 0)
    );
wb_add_constReal_inst: entity work.double_dds_dds1_offset_0_wb_add_constReal
     port map (
      E(0) => offset_l_s,
      Q(13 downto 0) => offset_s(13 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      \offset_s_reg[63]_0\(0) => offset_s_0,
      \readdata_s_reg[31]_0\(0) => read_en_s,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_reset => s00_axi_reset,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dds1_offset_0 is
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
  attribute NotValidForBitStream of double_dds_dds1_offset_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of double_dds_dds1_offset_0 : entity is "double_dds_dds1_offset_0,add_constReal,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of double_dds_dds1_offset_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of double_dds_dds1_offset_0 : entity is "add_constReal,Vivado 2019.2";
end double_dds_dds1_offset_0;

architecture STRUCTURE of double_dds_dds1_offset_0 is
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
  attribute x_interface_info : string;
  attribute x_interface_info of data_clk_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_CLK";
  attribute x_interface_info of data_clk_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_CLK";
  attribute x_interface_info of data_en_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_EN";
  attribute x_interface_info of data_en_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_EN";
  attribute x_interface_info of data_rst_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_RST";
  attribute x_interface_info of data_rst_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_RST";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute x_interface_parameter : string;
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
  attribute x_interface_info of data_i : signal is "xilinx.com:interface:real:1.0 data_in DATA";
  attribute x_interface_info of data_o : signal is "xilinx.com:interface:real:1.0 data_out DATA";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_dds_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
U0: entity work.double_dds_dds1_offset_0_add_constReal
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
