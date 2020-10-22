-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Thu Oct 22 19:41:13 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/fpga_design/redpitaya/double_dds/design/tmp/double_dds.srcs/sources_1/bd/double_dds/ip/double_dds_dds_ampl_0/double_dds_dds_ampl_0_sim_netlist.vhdl
-- Design      : double_dds_dds_ampl_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dds_ampl_0_axi_to_dac_handcomm is
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
    s00_axi_wdata_1_sp_1 : out STD_LOGIC;
    s00_axi_wdata_2_sp_1 : out STD_LOGIC;
    s00_axi_wdata_0_sp_1 : out STD_LOGIC;
    s00_axi_reset_0 : out STD_LOGIC;
    s00_axi_reset_1 : out STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dds_ampl_0_axi_to_dac_handcomm : entity is "axi_to_dac_handcomm";
end double_dds_dds_ampl_0_axi_to_dac_handcomm;

architecture STRUCTURE of double_dds_dds_ampl_0_axi_to_dac_handcomm is
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
  signal s00_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s00_axi_wdata_1_sn_1 : STD_LOGIC;
  signal s00_axi_wdata_2_sn_1 : STD_LOGIC;
  signal write_addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal write_en_s : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_reg[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of data_a_en_o_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of data_b_en_o_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_1\ : label is "soft_lutpair2";
begin
  addr_s(1 downto 0) <= \^addr_s\(1 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_arvalid_0(0) <= \^s00_axi_arvalid_0\(0);
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wdata_0_sp_1 <= s00_axi_wdata_0_sn_1;
  s00_axi_wdata_1_sp_1 <= s00_axi_wdata_1_sn_1;
  s00_axi_wdata_2_sp_1 <= s00_axi_wdata_2_sn_1;
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
data_a_en_always_high_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => write_en_s,
      I2 => \^addr_s\(1),
      I3 => \^addr_s\(0),
      I4 => D(2),
      O => s00_axi_wdata_1_sn_1
    );
data_a_en_o_i_1: unisim.vcomponents.LUT4
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
\data_a_s[31]_i_1\: unisim.vcomponents.LUT6
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
data_b_en_always_high_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_wdata(2),
      I1 => write_en_s,
      I2 => \^addr_s\(1),
      I3 => \^addr_s\(0),
      I4 => D(1),
      O => s00_axi_wdata_2_sn_1
    );
data_b_en_o_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => \^addr_s\(1),
      I2 => write_en_s,
      I3 => s00_axi_reset,
      O => s00_axi_reset_1
    );
\data_b_s[31]_i_1\: unisim.vcomponents.LUT6
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
synchronize_chan_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => write_en_s,
      I2 => \^addr_s\(1),
      I3 => \^addr_s\(0),
      I4 => D(0),
      O => s00_axi_wdata_0_sn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dds_ampl_0_axi_to_dac_sync_vect is
  port (
    D : out STD_LOGIC_VECTOR ( 13 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    ref_clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dds_ampl_0_axi_to_dac_sync_vect : entity is "axi_to_dac_sync_vect";
end double_dds_dds_ampl_0_axi_to_dac_sync_vect;

architecture STRUCTURE of double_dds_dds_ampl_0_axi_to_dac_sync_vect is
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
  D(13 downto 0) <= \flipflops_vect[2]_2\(13 downto 0);
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
      D => Q(0),
      Q => sync_vect_stage0_s(0),
      R => '0'
    );
\sync_vect_stage0_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(10),
      Q => sync_vect_stage0_s(10),
      R => '0'
    );
\sync_vect_stage0_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(11),
      Q => sync_vect_stage0_s(11),
      R => '0'
    );
\sync_vect_stage0_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(12),
      Q => sync_vect_stage0_s(12),
      R => '0'
    );
\sync_vect_stage0_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(13),
      Q => sync_vect_stage0_s(13),
      R => '0'
    );
\sync_vect_stage0_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(1),
      Q => sync_vect_stage0_s(1),
      R => '0'
    );
\sync_vect_stage0_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(2),
      Q => sync_vect_stage0_s(2),
      R => '0'
    );
\sync_vect_stage0_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(3),
      Q => sync_vect_stage0_s(3),
      R => '0'
    );
\sync_vect_stage0_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(4),
      Q => sync_vect_stage0_s(4),
      R => '0'
    );
\sync_vect_stage0_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(5),
      Q => sync_vect_stage0_s(5),
      R => '0'
    );
\sync_vect_stage0_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(6),
      Q => sync_vect_stage0_s(6),
      R => '0'
    );
\sync_vect_stage0_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(7),
      Q => sync_vect_stage0_s(7),
      R => '0'
    );
\sync_vect_stage0_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(8),
      Q => sync_vect_stage0_s(8),
      R => '0'
    );
\sync_vect_stage0_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(9),
      Q => sync_vect_stage0_s(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \double_dds_dds_ampl_0_axi_to_dac_sync_vect__parameterized0\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \flipflops_vect_reg[2][4]_0\ : out STD_LOGIC;
    \flipflops_vect_reg[2][3]_0\ : out STD_LOGIC;
    ref_rst_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    ref_clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \double_dds_dds_ampl_0_axi_to_dac_sync_vect__parameterized0\ : entity is "axi_to_dac_sync_vect";
end \double_dds_dds_ampl_0_axi_to_dac_sync_vect__parameterized0\;

architecture STRUCTURE of \double_dds_dds_ampl_0_axi_to_dac_sync_vect__parameterized0\ is
  signal \flipflops_vect[0]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute async_reg : string;
  attribute async_reg of \flipflops_vect[0]_0\ : signal is "true";
  signal \flipflops_vect[1]_1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute async_reg of \flipflops_vect[1]_1\ : signal is "true";
  signal \flipflops_vect[2]_2\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute async_reg of \flipflops_vect[2]_2\ : signal is "true";
  signal sync_vect_stage0_s : STD_LOGIC_VECTOR ( 4 downto 0 );
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
begin
  \out\(0) <= \flipflops_vect[2]_2\(3);
dataA_en_o_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFE2"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(4),
      I1 => \flipflops_vect[2]_2\(0),
      I2 => \flipflops_vect[2]_2\(3),
      I3 => \flipflops_vect[2]_2\(2),
      I4 => ref_rst_i,
      O => \flipflops_vect_reg[2][4]_0\
    );
dataB_en_o_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(3),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => ref_rst_i,
      O => \flipflops_vect_reg[2][3]_0\
    );
\data_a_out_s[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(4),
      I1 => \flipflops_vect[2]_2\(0),
      I2 => \flipflops_vect[2]_2\(3),
      O => E(0)
    );
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \double_dds_dds_ampl_0_axi_to_dac_sync_vect__xdcDup__1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 13 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    ref_clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \double_dds_dds_ampl_0_axi_to_dac_sync_vect__xdcDup__1\ : entity is "axi_to_dac_sync_vect";
end \double_dds_dds_ampl_0_axi_to_dac_sync_vect__xdcDup__1\;

architecture STRUCTURE of \double_dds_dds_ampl_0_axi_to_dac_sync_vect__xdcDup__1\ is
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
  D(13 downto 0) <= \flipflops_vect[2]_2\(13 downto 0);
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
      D => Q(0),
      Q => sync_vect_stage0_s(0),
      R => '0'
    );
\sync_vect_stage0_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(10),
      Q => sync_vect_stage0_s(10),
      R => '0'
    );
\sync_vect_stage0_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(11),
      Q => sync_vect_stage0_s(11),
      R => '0'
    );
\sync_vect_stage0_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(12),
      Q => sync_vect_stage0_s(12),
      R => '0'
    );
\sync_vect_stage0_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(13),
      Q => sync_vect_stage0_s(13),
      R => '0'
    );
\sync_vect_stage0_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(1),
      Q => sync_vect_stage0_s(1),
      R => '0'
    );
\sync_vect_stage0_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(2),
      Q => sync_vect_stage0_s(2),
      R => '0'
    );
\sync_vect_stage0_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(3),
      Q => sync_vect_stage0_s(3),
      R => '0'
    );
\sync_vect_stage0_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(4),
      Q => sync_vect_stage0_s(4),
      R => '0'
    );
\sync_vect_stage0_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(5),
      Q => sync_vect_stage0_s(5),
      R => '0'
    );
\sync_vect_stage0_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(6),
      Q => sync_vect_stage0_s(6),
      R => '0'
    );
\sync_vect_stage0_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(7),
      Q => sync_vect_stage0_s(7),
      R => '0'
    );
\sync_vect_stage0_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(8),
      Q => sync_vect_stage0_s(8),
      R => '0'
    );
\sync_vect_stage0_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(9),
      Q => sync_vect_stage0_s(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dds_ampl_0_wb_axi_to_dac is
  port (
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \data_b_s_reg[13]_0\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_reset : in STD_LOGIC;
    synchronize_chan_s_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    data_b_en_always_high_s_reg_0 : in STD_LOGIC;
    data_a_en_always_high_s_reg_0 : in STD_LOGIC;
    data_b_en_o_reg_0 : in STD_LOGIC;
    data_a_en_o_reg_0 : in STD_LOGIC;
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_b_s_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \readdata_s_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dds_ampl_0_wb_axi_to_dac : entity is "wb_axi_to_dac";
end double_dds_dds_ampl_0_wb_axi_to_dac;

architecture STRUCTURE of double_dds_dds_ampl_0_wb_axi_to_dac is
  signal \^d\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data_a_s : STD_LOGIC_VECTOR ( 31 downto 14 );
  signal data_b_s : STD_LOGIC_VECTOR ( 31 downto 14 );
  signal \^data_b_s_reg[13]_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal readdata_next_s : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  D(4 downto 0) <= \^d\(4 downto 0);
  Q(13 downto 0) <= \^q\(13 downto 0);
  \data_b_s_reg[13]_0\(13 downto 0) <= \^data_b_s_reg[13]_0\(13 downto 0);
data_a_en_always_high_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_a_en_always_high_s_reg_0,
      Q => \^d\(2),
      R => s00_axi_reset
    );
data_a_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_a_en_o_reg_0,
      Q => \^d\(4),
      R => '0'
    );
\data_a_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => s00_axi_reset
    );
\data_a_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(10),
      Q => \^q\(10),
      R => s00_axi_reset
    );
\data_a_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(11),
      Q => \^q\(11),
      R => s00_axi_reset
    );
\data_a_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(12),
      Q => \^q\(12),
      R => s00_axi_reset
    );
\data_a_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(13),
      Q => \^q\(13),
      R => s00_axi_reset
    );
\data_a_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(14),
      Q => data_a_s(14),
      R => s00_axi_reset
    );
\data_a_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(15),
      Q => data_a_s(15),
      R => s00_axi_reset
    );
\data_a_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(16),
      Q => data_a_s(16),
      R => s00_axi_reset
    );
\data_a_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(17),
      Q => data_a_s(17),
      R => s00_axi_reset
    );
\data_a_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(18),
      Q => data_a_s(18),
      R => s00_axi_reset
    );
\data_a_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(19),
      Q => data_a_s(19),
      R => s00_axi_reset
    );
\data_a_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => s00_axi_reset
    );
\data_a_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(20),
      Q => data_a_s(20),
      R => s00_axi_reset
    );
\data_a_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(21),
      Q => data_a_s(21),
      R => s00_axi_reset
    );
\data_a_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(22),
      Q => data_a_s(22),
      R => s00_axi_reset
    );
\data_a_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(23),
      Q => data_a_s(23),
      R => s00_axi_reset
    );
\data_a_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(24),
      Q => data_a_s(24),
      R => s00_axi_reset
    );
\data_a_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(25),
      Q => data_a_s(25),
      R => s00_axi_reset
    );
\data_a_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(26),
      Q => data_a_s(26),
      R => s00_axi_reset
    );
\data_a_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(27),
      Q => data_a_s(27),
      R => s00_axi_reset
    );
\data_a_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(28),
      Q => data_a_s(28),
      R => s00_axi_reset
    );
\data_a_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(29),
      Q => data_a_s(29),
      R => s00_axi_reset
    );
\data_a_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(2),
      Q => \^q\(2),
      R => s00_axi_reset
    );
\data_a_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(30),
      Q => data_a_s(30),
      R => s00_axi_reset
    );
\data_a_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(31),
      Q => data_a_s(31),
      R => s00_axi_reset
    );
\data_a_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(3),
      Q => \^q\(3),
      R => s00_axi_reset
    );
\data_a_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(4),
      Q => \^q\(4),
      R => s00_axi_reset
    );
\data_a_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(5),
      Q => \^q\(5),
      R => s00_axi_reset
    );
\data_a_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(6),
      Q => \^q\(6),
      R => s00_axi_reset
    );
\data_a_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(7),
      Q => \^q\(7),
      R => s00_axi_reset
    );
\data_a_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(8),
      Q => \^q\(8),
      R => s00_axi_reset
    );
\data_a_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(9),
      Q => \^q\(9),
      R => s00_axi_reset
    );
data_b_en_always_high_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_b_en_always_high_s_reg_0,
      Q => \^d\(1),
      R => s00_axi_reset
    );
data_b_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_b_en_o_reg_0,
      Q => \^d\(3),
      R => '0'
    );
\data_b_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(0),
      Q => \^data_b_s_reg[13]_0\(0),
      R => s00_axi_reset
    );
\data_b_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(10),
      Q => \^data_b_s_reg[13]_0\(10),
      R => s00_axi_reset
    );
\data_b_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(11),
      Q => \^data_b_s_reg[13]_0\(11),
      R => s00_axi_reset
    );
\data_b_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(12),
      Q => \^data_b_s_reg[13]_0\(12),
      R => s00_axi_reset
    );
\data_b_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(13),
      Q => \^data_b_s_reg[13]_0\(13),
      R => s00_axi_reset
    );
\data_b_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(14),
      Q => data_b_s(14),
      R => s00_axi_reset
    );
\data_b_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(15),
      Q => data_b_s(15),
      R => s00_axi_reset
    );
\data_b_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(16),
      Q => data_b_s(16),
      R => s00_axi_reset
    );
\data_b_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(17),
      Q => data_b_s(17),
      R => s00_axi_reset
    );
\data_b_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(18),
      Q => data_b_s(18),
      R => s00_axi_reset
    );
\data_b_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(19),
      Q => data_b_s(19),
      R => s00_axi_reset
    );
\data_b_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(1),
      Q => \^data_b_s_reg[13]_0\(1),
      R => s00_axi_reset
    );
\data_b_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(20),
      Q => data_b_s(20),
      R => s00_axi_reset
    );
\data_b_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(21),
      Q => data_b_s(21),
      R => s00_axi_reset
    );
\data_b_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(22),
      Q => data_b_s(22),
      R => s00_axi_reset
    );
\data_b_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(23),
      Q => data_b_s(23),
      R => s00_axi_reset
    );
\data_b_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(24),
      Q => data_b_s(24),
      R => s00_axi_reset
    );
\data_b_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(25),
      Q => data_b_s(25),
      R => s00_axi_reset
    );
\data_b_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(26),
      Q => data_b_s(26),
      R => s00_axi_reset
    );
\data_b_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(27),
      Q => data_b_s(27),
      R => s00_axi_reset
    );
\data_b_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(28),
      Q => data_b_s(28),
      R => s00_axi_reset
    );
\data_b_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(29),
      Q => data_b_s(29),
      R => s00_axi_reset
    );
\data_b_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(2),
      Q => \^data_b_s_reg[13]_0\(2),
      R => s00_axi_reset
    );
\data_b_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(30),
      Q => data_b_s(30),
      R => s00_axi_reset
    );
\data_b_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(31),
      Q => data_b_s(31),
      R => s00_axi_reset
    );
\data_b_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(3),
      Q => \^data_b_s_reg[13]_0\(3),
      R => s00_axi_reset
    );
\data_b_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(4),
      Q => \^data_b_s_reg[13]_0\(4),
      R => s00_axi_reset
    );
\data_b_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(5),
      Q => \^data_b_s_reg[13]_0\(5),
      R => s00_axi_reset
    );
\data_b_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(6),
      Q => \^data_b_s_reg[13]_0\(6),
      R => s00_axi_reset
    );
\data_b_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(7),
      Q => \^data_b_s_reg[13]_0\(7),
      R => s00_axi_reset
    );
\data_b_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(8),
      Q => \^data_b_s_reg[13]_0\(8),
      R => s00_axi_reset
    );
\data_b_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_b_s_reg[31]_0\(0),
      D => s00_axi_wdata(9),
      Q => \^data_b_s_reg[13]_0\(9),
      R => s00_axi_reset
    );
\readdata_s[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEF322F3"
    )
        port map (
      I0 => \^q\(0),
      I1 => addr_s(1),
      I2 => \^data_b_s_reg[13]_0\(0),
      I3 => addr_s(0),
      I4 => \^d\(0),
      O => readdata_next_s(0)
    );
\readdata_s[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^q\(10),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \^data_b_s_reg[13]_0\(10),
      O => readdata_next_s(10)
    );
\readdata_s[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^q\(11),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \^data_b_s_reg[13]_0\(11),
      O => readdata_next_s(11)
    );
\readdata_s[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^q\(12),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \^data_b_s_reg[13]_0\(12),
      O => readdata_next_s(12)
    );
\readdata_s[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^q\(13),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \^data_b_s_reg[13]_0\(13),
      O => readdata_next_s(13)
    );
\readdata_s[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(14),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(14),
      O => readdata_next_s(14)
    );
\readdata_s[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(15),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(15),
      O => readdata_next_s(15)
    );
\readdata_s[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(16),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(16),
      O => readdata_next_s(16)
    );
\readdata_s[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(17),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(17),
      O => readdata_next_s(17)
    );
\readdata_s[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(18),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(18),
      O => readdata_next_s(18)
    );
\readdata_s[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(19),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(19),
      O => readdata_next_s(19)
    );
\readdata_s[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^q\(1),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \^data_b_s_reg[13]_0\(1),
      O => readdata_next_s(1)
    );
\readdata_s[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(20),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(20),
      O => readdata_next_s(20)
    );
\readdata_s[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(21),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(21),
      O => readdata_next_s(21)
    );
\readdata_s[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(22),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(22),
      O => readdata_next_s(22)
    );
\readdata_s[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(23),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(23),
      O => readdata_next_s(23)
    );
\readdata_s[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(24),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(24),
      O => readdata_next_s(24)
    );
\readdata_s[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(25),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(25),
      O => readdata_next_s(25)
    );
\readdata_s[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(26),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(26),
      O => readdata_next_s(26)
    );
\readdata_s[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(27),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(27),
      O => readdata_next_s(27)
    );
\readdata_s[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(28),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(28),
      O => readdata_next_s(28)
    );
\readdata_s[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(29),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(29),
      O => readdata_next_s(29)
    );
\readdata_s[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^q\(2),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \^data_b_s_reg[13]_0\(2),
      O => readdata_next_s(2)
    );
\readdata_s[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(30),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(30),
      O => readdata_next_s(30)
    );
\readdata_s[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => data_a_s(31),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => data_b_s(31),
      O => readdata_next_s(31)
    );
\readdata_s[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^q\(3),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \^data_b_s_reg[13]_0\(3),
      O => readdata_next_s(3)
    );
\readdata_s[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^q\(4),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \^data_b_s_reg[13]_0\(4),
      O => readdata_next_s(4)
    );
\readdata_s[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^q\(5),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \^data_b_s_reg[13]_0\(5),
      O => readdata_next_s(5)
    );
\readdata_s[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^q\(6),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \^data_b_s_reg[13]_0\(6),
      O => readdata_next_s(6)
    );
\readdata_s[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^q\(7),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \^data_b_s_reg[13]_0\(7),
      O => readdata_next_s(7)
    );
\readdata_s[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^q\(8),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \^data_b_s_reg[13]_0\(8),
      O => readdata_next_s(8)
    );
\readdata_s[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^q\(9),
      I1 => addr_s(0),
      I2 => addr_s(1),
      I3 => \^data_b_s_reg[13]_0\(9),
      O => readdata_next_s(9)
    );
\readdata_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(0),
      Q => s00_axi_rdata(0),
      R => s00_axi_reset
    );
\readdata_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(10),
      Q => s00_axi_rdata(10),
      R => s00_axi_reset
    );
\readdata_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(11),
      Q => s00_axi_rdata(11),
      R => s00_axi_reset
    );
\readdata_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(12),
      Q => s00_axi_rdata(12),
      R => s00_axi_reset
    );
\readdata_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(13),
      Q => s00_axi_rdata(13),
      R => s00_axi_reset
    );
\readdata_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(14),
      Q => s00_axi_rdata(14),
      R => s00_axi_reset
    );
\readdata_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(15),
      Q => s00_axi_rdata(15),
      R => s00_axi_reset
    );
\readdata_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(16),
      Q => s00_axi_rdata(16),
      R => s00_axi_reset
    );
\readdata_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(17),
      Q => s00_axi_rdata(17),
      R => s00_axi_reset
    );
\readdata_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(18),
      Q => s00_axi_rdata(18),
      R => s00_axi_reset
    );
\readdata_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(19),
      Q => s00_axi_rdata(19),
      R => s00_axi_reset
    );
\readdata_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(1),
      Q => s00_axi_rdata(1),
      R => s00_axi_reset
    );
\readdata_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(20),
      Q => s00_axi_rdata(20),
      R => s00_axi_reset
    );
\readdata_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(21),
      Q => s00_axi_rdata(21),
      R => s00_axi_reset
    );
\readdata_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(22),
      Q => s00_axi_rdata(22),
      R => s00_axi_reset
    );
\readdata_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(23),
      Q => s00_axi_rdata(23),
      R => s00_axi_reset
    );
\readdata_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(24),
      Q => s00_axi_rdata(24),
      R => s00_axi_reset
    );
\readdata_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(25),
      Q => s00_axi_rdata(25),
      R => s00_axi_reset
    );
\readdata_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(26),
      Q => s00_axi_rdata(26),
      R => s00_axi_reset
    );
\readdata_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(27),
      Q => s00_axi_rdata(27),
      R => s00_axi_reset
    );
\readdata_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(28),
      Q => s00_axi_rdata(28),
      R => s00_axi_reset
    );
\readdata_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(29),
      Q => s00_axi_rdata(29),
      R => s00_axi_reset
    );
\readdata_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(2),
      Q => s00_axi_rdata(2),
      R => s00_axi_reset
    );
\readdata_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(30),
      Q => s00_axi_rdata(30),
      R => s00_axi_reset
    );
\readdata_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(31),
      Q => s00_axi_rdata(31),
      R => s00_axi_reset
    );
\readdata_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(3),
      Q => s00_axi_rdata(3),
      R => s00_axi_reset
    );
\readdata_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(4),
      Q => s00_axi_rdata(4),
      R => s00_axi_reset
    );
\readdata_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(5),
      Q => s00_axi_rdata(5),
      R => s00_axi_reset
    );
\readdata_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(6),
      Q => s00_axi_rdata(6),
      R => s00_axi_reset
    );
\readdata_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(7),
      Q => s00_axi_rdata(7),
      R => s00_axi_reset
    );
\readdata_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(8),
      Q => s00_axi_rdata(8),
      R => s00_axi_reset
    );
\readdata_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => readdata_next_s(9),
      Q => s00_axi_rdata(9),
      R => s00_axi_reset
    );
synchronize_chan_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => synchronize_chan_s_reg_0,
      Q => \^d\(0),
      R => s00_axi_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dds_ampl_0_axi_to_dac is
  port (
    ref_clk_i : in STD_LOGIC;
    ref_rst_i : in STD_LOGIC;
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
    dataA_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dataA_en_o : out STD_LOGIC;
    dataA_eof_o : out STD_LOGIC;
    dataA_clk_o : out STD_LOGIC;
    dataA_rst_o : out STD_LOGIC;
    dataB_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dataB_en_o : out STD_LOGIC;
    dataB_eof_o : out STD_LOGIC;
    dataB_clk_o : out STD_LOGIC;
    dataB_rst_o : out STD_LOGIC
  );
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of double_dds_dds_ampl_0_axi_to_dac : entity is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of double_dds_dds_ampl_0_axi_to_dac : entity is 32;
  attribute DATAA_DEFAULT_OUT : integer;
  attribute DATAA_DEFAULT_OUT of double_dds_dds_ampl_0_axi_to_dac : entity is 0;
  attribute DATAA_EN_ALWAYS_HIGH : string;
  attribute DATAA_EN_ALWAYS_HIGH of double_dds_dds_ampl_0_axi_to_dac : entity is "FALSE";
  attribute DATAB_DEFAULT_OUT : integer;
  attribute DATAB_DEFAULT_OUT of double_dds_dds_ampl_0_axi_to_dac : entity is 0;
  attribute DATAB_EN_ALWAYS_HIGH : string;
  attribute DATAB_EN_ALWAYS_HIGH of double_dds_dds_ampl_0_axi_to_dac : entity is "FALSE";
  attribute DATA_SIZE : integer;
  attribute DATA_SIZE of double_dds_dds_ampl_0_axi_to_dac : entity is 14;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dds_ampl_0_axi_to_dac : entity is "axi_to_dac";
  attribute SYNCHRONIZE_CHAN : string;
  attribute SYNCHRONIZE_CHAN of double_dds_dds_ampl_0_axi_to_dac : entity is "FALSE";
  attribute id : integer;
  attribute id of double_dds_dds_ampl_0_axi_to_dac : entity is 1;
end double_dds_dds_ampl_0_axi_to_dac;

architecture STRUCTURE of double_dds_dds_ampl_0_axi_to_dac is
  signal \<const0>\ : STD_LOGIC;
  signal addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal bit_i : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal conf_sync_n_2 : STD_LOGIC;
  signal conf_sync_n_3 : STD_LOGIC;
  signal data_a_en_next_s : STD_LOGIC;
  signal data_a_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data_a_s_0 : STD_LOGIC;
  signal data_a_sync_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data_b_en_sync_s : STD_LOGIC;
  signal data_b_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data_b_s_1 : STD_LOGIC;
  signal data_b_sync_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal handle_comm_n_10 : STD_LOGIC;
  signal handle_comm_n_11 : STD_LOGIC;
  signal handle_comm_n_12 : STD_LOGIC;
  signal handle_comm_n_13 : STD_LOGIC;
  signal handle_comm_n_14 : STD_LOGIC;
  signal read_en_s : STD_LOGIC;
  signal \^ref_clk_i\ : STD_LOGIC;
  signal \^ref_rst_i\ : STD_LOGIC;
begin
  \^ref_clk_i\ <= ref_clk_i;
  \^ref_rst_i\ <= ref_rst_i;
  dataA_clk_o <= \^ref_clk_i\;
  dataA_eof_o <= \<const0>\;
  dataA_rst_o <= \^ref_rst_i\;
  dataB_clk_o <= \^ref_clk_i\;
  dataB_eof_o <= \<const0>\;
  dataB_rst_o <= \^ref_rst_i\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
conf_sync: entity work.\double_dds_dds_ampl_0_axi_to_dac_sync_vect__parameterized0\
     port map (
      D(4 downto 0) => bit_i(4 downto 0),
      E(0) => data_a_en_next_s,
      \flipflops_vect_reg[2][3]_0\ => conf_sync_n_3,
      \flipflops_vect_reg[2][4]_0\ => conf_sync_n_2,
      \out\(0) => data_b_en_sync_s,
      ref_clk_i => \^ref_clk_i\,
      ref_rst_i => \^ref_rst_i\,
      s00_axi_aclk => s00_axi_aclk
    );
dataA_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => '1',
      D => conf_sync_n_2,
      Q => dataA_en_o,
      R => '0'
    );
dataA_sync: entity work.\double_dds_dds_ampl_0_axi_to_dac_sync_vect__xdcDup__1\
     port map (
      D(13 downto 0) => data_a_sync_s(13 downto 0),
      Q(13 downto 0) => data_a_s(13 downto 0),
      ref_clk_i => \^ref_clk_i\,
      s00_axi_aclk => s00_axi_aclk
    );
dataB_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => '1',
      D => conf_sync_n_3,
      Q => dataB_en_o,
      R => '0'
    );
dataB_sync: entity work.double_dds_dds_ampl_0_axi_to_dac_sync_vect
     port map (
      D(13 downto 0) => data_b_sync_s(13 downto 0),
      Q(13 downto 0) => data_b_s(13 downto 0),
      ref_clk_i => \^ref_clk_i\,
      s00_axi_aclk => s00_axi_aclk
    );
\data_a_out_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_a_en_next_s,
      D => data_a_sync_s(0),
      Q => dataA_o(0),
      R => \^ref_rst_i\
    );
\data_a_out_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_a_en_next_s,
      D => data_a_sync_s(10),
      Q => dataA_o(10),
      R => \^ref_rst_i\
    );
\data_a_out_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_a_en_next_s,
      D => data_a_sync_s(11),
      Q => dataA_o(11),
      R => \^ref_rst_i\
    );
\data_a_out_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_a_en_next_s,
      D => data_a_sync_s(12),
      Q => dataA_o(12),
      R => \^ref_rst_i\
    );
\data_a_out_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_a_en_next_s,
      D => data_a_sync_s(13),
      Q => dataA_o(13),
      R => \^ref_rst_i\
    );
\data_a_out_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_a_en_next_s,
      D => data_a_sync_s(1),
      Q => dataA_o(1),
      R => \^ref_rst_i\
    );
\data_a_out_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_a_en_next_s,
      D => data_a_sync_s(2),
      Q => dataA_o(2),
      R => \^ref_rst_i\
    );
\data_a_out_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_a_en_next_s,
      D => data_a_sync_s(3),
      Q => dataA_o(3),
      R => \^ref_rst_i\
    );
\data_a_out_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_a_en_next_s,
      D => data_a_sync_s(4),
      Q => dataA_o(4),
      R => \^ref_rst_i\
    );
\data_a_out_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_a_en_next_s,
      D => data_a_sync_s(5),
      Q => dataA_o(5),
      R => \^ref_rst_i\
    );
\data_a_out_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_a_en_next_s,
      D => data_a_sync_s(6),
      Q => dataA_o(6),
      R => \^ref_rst_i\
    );
\data_a_out_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_a_en_next_s,
      D => data_a_sync_s(7),
      Q => dataA_o(7),
      R => \^ref_rst_i\
    );
\data_a_out_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_a_en_next_s,
      D => data_a_sync_s(8),
      Q => dataA_o(8),
      R => \^ref_rst_i\
    );
\data_a_out_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_a_en_next_s,
      D => data_a_sync_s(9),
      Q => dataA_o(9),
      R => \^ref_rst_i\
    );
\data_b_out_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_b_en_sync_s,
      D => data_b_sync_s(0),
      Q => dataB_o(0),
      R => \^ref_rst_i\
    );
\data_b_out_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_b_en_sync_s,
      D => data_b_sync_s(10),
      Q => dataB_o(10),
      R => \^ref_rst_i\
    );
\data_b_out_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_b_en_sync_s,
      D => data_b_sync_s(11),
      Q => dataB_o(11),
      R => \^ref_rst_i\
    );
\data_b_out_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_b_en_sync_s,
      D => data_b_sync_s(12),
      Q => dataB_o(12),
      R => \^ref_rst_i\
    );
\data_b_out_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_b_en_sync_s,
      D => data_b_sync_s(13),
      Q => dataB_o(13),
      R => \^ref_rst_i\
    );
\data_b_out_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_b_en_sync_s,
      D => data_b_sync_s(1),
      Q => dataB_o(1),
      R => \^ref_rst_i\
    );
\data_b_out_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_b_en_sync_s,
      D => data_b_sync_s(2),
      Q => dataB_o(2),
      R => \^ref_rst_i\
    );
\data_b_out_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_b_en_sync_s,
      D => data_b_sync_s(3),
      Q => dataB_o(3),
      R => \^ref_rst_i\
    );
\data_b_out_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_b_en_sync_s,
      D => data_b_sync_s(4),
      Q => dataB_o(4),
      R => \^ref_rst_i\
    );
\data_b_out_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_b_en_sync_s,
      D => data_b_sync_s(5),
      Q => dataB_o(5),
      R => \^ref_rst_i\
    );
\data_b_out_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_b_en_sync_s,
      D => data_b_sync_s(6),
      Q => dataB_o(6),
      R => \^ref_rst_i\
    );
\data_b_out_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_b_en_sync_s,
      D => data_b_sync_s(7),
      Q => dataB_o(7),
      R => \^ref_rst_i\
    );
\data_b_out_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_b_en_sync_s,
      D => data_b_sync_s(8),
      Q => dataB_o(8),
      R => \^ref_rst_i\
    );
\data_b_out_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^ref_clk_i\,
      CE => data_b_en_sync_s,
      D => data_b_sync_s(9),
      Q => dataB_o(9),
      R => \^ref_rst_i\
    );
handle_comm: entity work.double_dds_dds_ampl_0_axi_to_dac_handcomm
     port map (
      D(2 downto 0) => bit_i(2 downto 0),
      E(0) => data_b_s_1,
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
      s00_axi_awvalid_0(0) => data_a_s_0,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_reset => s00_axi_reset,
      s00_axi_reset_0 => handle_comm_n_13,
      s00_axi_reset_1 => handle_comm_n_14,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(2 downto 0) => s00_axi_wdata(2 downto 0),
      s00_axi_wdata_0_sp_1 => handle_comm_n_12,
      s00_axi_wdata_1_sp_1 => handle_comm_n_10,
      s00_axi_wdata_2_sp_1 => handle_comm_n_11,
      s00_axi_wvalid => s00_axi_wvalid
    );
wb_atd_inst: entity work.double_dds_dds_ampl_0_wb_axi_to_dac
     port map (
      D(4 downto 0) => bit_i(4 downto 0),
      E(0) => data_a_s_0,
      Q(13 downto 0) => data_a_s(13 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      data_a_en_always_high_s_reg_0 => handle_comm_n_10,
      data_a_en_o_reg_0 => handle_comm_n_13,
      data_b_en_always_high_s_reg_0 => handle_comm_n_11,
      data_b_en_o_reg_0 => handle_comm_n_14,
      \data_b_s_reg[13]_0\(13 downto 0) => data_b_s(13 downto 0),
      \data_b_s_reg[31]_0\(0) => data_b_s_1,
      \readdata_s_reg[31]_0\(0) => read_en_s,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_reset => s00_axi_reset,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      synchronize_chan_s_reg_0 => handle_comm_n_12
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dds_ampl_0 is
  port (
    ref_clk_i : in STD_LOGIC;
    ref_rst_i : in STD_LOGIC;
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
    dataA_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dataA_en_o : out STD_LOGIC;
    dataA_eof_o : out STD_LOGIC;
    dataA_clk_o : out STD_LOGIC;
    dataA_rst_o : out STD_LOGIC;
    dataB_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dataB_en_o : out STD_LOGIC;
    dataB_eof_o : out STD_LOGIC;
    dataB_clk_o : out STD_LOGIC;
    dataB_rst_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of double_dds_dds_ampl_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of double_dds_dds_ampl_0 : entity is "double_dds_dds_ampl_0,axi_to_dac,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of double_dds_dds_ampl_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of double_dds_dds_ampl_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of double_dds_dds_ampl_0 : entity is "axi_to_dac,Vivado 2019.2";
end double_dds_dds_ampl_0;

architecture STRUCTURE of double_dds_dds_ampl_0 is
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of U0 : label is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of U0 : label is 32;
  attribute DATAA_DEFAULT_OUT : integer;
  attribute DATAA_DEFAULT_OUT of U0 : label is 0;
  attribute DATAA_EN_ALWAYS_HIGH : string;
  attribute DATAA_EN_ALWAYS_HIGH of U0 : label is "FALSE";
  attribute DATAB_DEFAULT_OUT : integer;
  attribute DATAB_DEFAULT_OUT of U0 : label is 0;
  attribute DATAB_EN_ALWAYS_HIGH : string;
  attribute DATAB_EN_ALWAYS_HIGH of U0 : label is "FALSE";
  attribute DATA_SIZE : integer;
  attribute DATA_SIZE of U0 : label is 14;
  attribute SYNCHRONIZE_CHAN : string;
  attribute SYNCHRONIZE_CHAN of U0 : label is "FALSE";
  attribute id : integer;
  attribute id of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of dataA_clk_o : signal is "xilinx.com:interface:real:1.0 dataA_out DATA_CLK";
  attribute x_interface_info of dataA_en_o : signal is "xilinx.com:interface:real:1.0 dataA_out DATA_EN";
  attribute x_interface_info of dataA_eof_o : signal is "xilinx.com:interface:real:1.0 dataA_out DATA_EOF";
  attribute x_interface_info of dataA_rst_o : signal is "xilinx.com:interface:real:1.0 dataA_out DATA_RST";
  attribute x_interface_info of dataB_clk_o : signal is "xilinx.com:interface:real:1.0 dataB_out DATA_CLK";
  attribute x_interface_info of dataB_en_o : signal is "xilinx.com:interface:real:1.0 dataB_out DATA_EN";
  attribute x_interface_info of dataB_eof_o : signal is "xilinx.com:interface:real:1.0 dataB_out DATA_EOF";
  attribute x_interface_info of dataB_rst_o : signal is "xilinx.com:interface:real:1.0 dataB_out DATA_RST";
  attribute x_interface_info of ref_clk_i : signal is "xilinx.com:signal:clock:1.0 ref_clk_i CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ref_clk_i : signal is "XIL_INTERFACENAME ref_clk_i, ASSOCIATED_BUSIF dataA_out:dataB_out, ASSOCIATED_RESET ref_rst_i, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_dds_redpitaya_converters_0_0_clk_o, INSERT_VIP 0";
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
  attribute x_interface_info of dataA_o : signal is "xilinx.com:interface:real:1.0 dataA_out DATA";
  attribute x_interface_info of dataB_o : signal is "xilinx.com:interface:real:1.0 dataB_out DATA";
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
U0: entity work.double_dds_dds_ampl_0_axi_to_dac
     port map (
      dataA_clk_o => dataA_clk_o,
      dataA_en_o => dataA_en_o,
      dataA_eof_o => dataA_eof_o,
      dataA_o(13 downto 0) => dataA_o(13 downto 0),
      dataA_rst_o => dataA_rst_o,
      dataB_clk_o => dataB_clk_o,
      dataB_en_o => dataB_en_o,
      dataB_eof_o => dataB_eof_o,
      dataB_o(13 downto 0) => dataB_o(13 downto 0),
      dataB_rst_o => dataB_rst_o,
      ref_clk_i => ref_clk_i,
      ref_rst_i => ref_rst_i,
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
