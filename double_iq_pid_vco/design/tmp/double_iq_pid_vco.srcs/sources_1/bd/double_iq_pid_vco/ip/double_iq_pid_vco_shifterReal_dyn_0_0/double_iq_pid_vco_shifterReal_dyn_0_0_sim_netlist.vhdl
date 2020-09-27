-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri May 15 18:42:13 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/github/oscimpDigital/app/redpitaya/double_iq_pid_vco/design/tmp/double_iq_pid_vco.srcs/sources_1/bd/double_iq_pid_vco/ip/double_iq_pid_vco_shifterReal_dyn_0_0/double_iq_pid_vco_shifterReal_dyn_0_0_sim_netlist.vhdl
-- Design      : double_iq_pid_vco_shifterReal_dyn_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_comm is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    \readdata_s_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_comm : entity is "shifterReal_dyn_comm";
end double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_comm;

architecture STRUCTURE of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_comm is
begin
\readdata_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => D(0),
      Q => s00_axi_rdata(0),
      R => s00_axi_reset
    );
\readdata_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => D(1),
      Q => s00_axi_rdata(1),
      R => s00_axi_reset
    );
\readdata_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => D(2),
      Q => s00_axi_rdata(2),
      R => s00_axi_reset
    );
\readdata_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => D(5),
      Q => s00_axi_rdata(5),
      R => s00_axi_reset
    );
\readdata_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => D(3),
      Q => s00_axi_rdata(3),
      R => s00_axi_reset
    );
\readdata_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \readdata_s_reg[31]_0\(0),
      D => D(4),
      Q => s00_axi_rdata(4),
      R => s00_axi_reset
    );
\shift_val_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(0),
      Q => Q(0),
      R => s00_axi_reset
    );
\shift_val_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(1),
      Q => Q(1),
      R => s00_axi_reset
    );
\shift_val_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(2),
      Q => Q(2),
      R => s00_axi_reset
    );
\shift_val_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(3),
      Q => Q(3),
      R => s00_axi_reset
    );
\shift_val_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => s00_axi_wdata(4),
      Q => Q(4),
      R => s00_axi_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_handcomm is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    addr_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_handcomm : entity is "shifterReal_dyn_handcomm";
end double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_handcomm;

architecture STRUCTURE of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_handcomm is
  signal addr_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^addr_s\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal addr_s_0 : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal wr_en_s : STD_LOGIC;
  signal write_addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \readdata_s[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \readdata_s[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \readdata_s[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \readdata_s[4]_i_1\ : label is "soft_lutpair5";
begin
  addr_s(0) <= \^addr_s\(0);
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
      I1 => wr_en_s,
      I2 => read_addr_s(0),
      I3 => \^s00_axi_arvalid_0\(0),
      I4 => addr_reg(0),
      O => addr_s_0(0)
    );
\addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => addr_s_0(0),
      Q => addr_reg(0),
      R => '0'
    );
\addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^addr_s\(0),
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
\readdata_s[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => addr_s_0(0),
      I2 => Q(0),
      O => D(0)
    );
\readdata_s[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => Q(1),
      I2 => addr_s_0(0),
      O => D(1)
    );
\readdata_s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => Q(2),
      I2 => addr_s_0(0),
      O => D(2)
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
\readdata_s[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_addr_s(1),
      I1 => wr_en_s,
      I2 => read_addr_s(1),
      I3 => \^s00_axi_arvalid_0\(0),
      I4 => addr_reg(1),
      O => \^addr_s\(0)
    );
\readdata_s[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => \^axi_wready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => wr_en_s
    );
\readdata_s[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => Q(3),
      I2 => addr_s_0(0),
      O => D(3)
    );
\readdata_s[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => Q(4),
      I2 => addr_s_0(0),
      O => D(4)
    );
\shift_val_s[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => \^addr_s\(0),
      I5 => addr_s_0(0),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_logic is
  port (
    data_en_o : out STD_LOGIC;
    data_eof_o : out STD_LOGIC;
    data_sof_o : out STD_LOGIC;
    \data_i[14]\ : out STD_LOGIC;
    data_i_5_sp_1 : out STD_LOGIC;
    data_i_1_sp_1 : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_rst_i : in STD_LOGIC;
    data_en_i : in STD_LOGIC;
    rest_is_zero_next_s : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 12 downto 0 );
    data_eof_i : in STD_LOGIC;
    data_sof_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_logic : entity is "shifterReal_dyn_logic";
end double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_logic;

architecture STRUCTURE of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_logic is
  signal data_en_s_i_1_n_0 : STD_LOGIC;
  signal data_eof_s_i_1_n_0 : STD_LOGIC;
  signal data_i_1_sn_1 : STD_LOGIC;
  signal data_i_5_sn_1 : STD_LOGIC;
  signal \data_o[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[0]_INST_0_n_0\ : STD_LOGIC;
  signal \data_o[0]_INST_0_n_1\ : STD_LOGIC;
  signal \data_o[0]_INST_0_n_2\ : STD_LOGIC;
  signal \data_o[0]_INST_0_n_3\ : STD_LOGIC;
  signal \data_o[12]_INST_0_n_3\ : STD_LOGIC;
  signal \data_o[4]_INST_0_n_0\ : STD_LOGIC;
  signal \data_o[4]_INST_0_n_1\ : STD_LOGIC;
  signal \data_o[4]_INST_0_n_2\ : STD_LOGIC;
  signal \data_o[4]_INST_0_n_3\ : STD_LOGIC;
  signal \data_o[8]_INST_0_n_0\ : STD_LOGIC;
  signal \data_o[8]_INST_0_n_1\ : STD_LOGIC;
  signal \data_o[8]_INST_0_n_2\ : STD_LOGIC;
  signal \data_o[8]_INST_0_n_3\ : STD_LOGIC;
  signal data_s : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data_sof_s_i_1_n_0 : STD_LOGIC;
  signal neg_val_s : STD_LOGIC;
  signal rest_is_zero_s : STD_LOGIC;
  signal \NLW_data_o[12]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_data_o[12]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of data_eof_s_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of data_sof_s_i_1 : label is "soft_lutpair6";
begin
  data_i_1_sp_1 <= data_i_1_sn_1;
  data_i_5_sp_1 <= data_i_5_sn_1;
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
      Q => data_en_o,
      R => '0'
    );
data_eof_s_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data_eof_i,
      I1 => data_en_i,
      I2 => data_rst_i,
      O => data_eof_s_i_1_n_0
    );
data_eof_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_eof_s_i_1_n_0,
      Q => data_eof_o,
      R => '0'
    );
\data_o[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_o[0]_INST_0_n_0\,
      CO(2) => \data_o[0]_INST_0_n_1\,
      CO(1) => \data_o[0]_INST_0_n_2\,
      CO(0) => \data_o[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => data_s(0),
      O(3 downto 0) => data_o(3 downto 0),
      S(3 downto 1) => data_s(3 downto 1),
      S(0) => \data_o[0]_INST_0_i_1_n_0\
    );
\data_o[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rest_is_zero_s,
      I1 => neg_val_s,
      I2 => data_s(0),
      O => \data_o[0]_INST_0_i_1_n_0\
    );
\data_o[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_o[8]_INST_0_n_0\,
      CO(3 downto 1) => \NLW_data_o[12]_INST_0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \data_o[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_data_o[12]_INST_0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data_o(13 downto 12),
      S(3 downto 2) => B"00",
      S(1 downto 0) => data_s(13 downto 12)
    );
\data_o[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_o[0]_INST_0_n_0\,
      CO(3) => \data_o[4]_INST_0_n_0\,
      CO(2) => \data_o[4]_INST_0_n_1\,
      CO(1) => \data_o[4]_INST_0_n_2\,
      CO(0) => \data_o[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_o(7 downto 4),
      S(3 downto 0) => data_s(7 downto 4)
    );
\data_o[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_o[4]_INST_0_n_0\,
      CO(3) => \data_o[8]_INST_0_n_0\,
      CO(2) => \data_o[8]_INST_0_n_1\,
      CO(1) => \data_o[8]_INST_0_n_2\,
      CO(0) => \data_o[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_o(11 downto 8),
      S(3 downto 0) => data_s(11 downto 8)
    );
\data_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => data_en_i,
      D => D(0),
      Q => data_s(0),
      R => data_rst_i
    );
\data_s_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => data_en_i,
      D => D(10),
      Q => data_s(10),
      R => data_rst_i
    );
\data_s_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => data_en_i,
      D => D(11),
      Q => data_s(11),
      R => data_rst_i
    );
\data_s_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => data_en_i,
      D => D(12),
      Q => data_s(12),
      R => data_rst_i
    );
\data_s_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => data_en_i,
      D => D(13),
      Q => data_s(13),
      R => data_rst_i
    );
\data_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => data_en_i,
      D => D(1),
      Q => data_s(1),
      R => data_rst_i
    );
\data_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => data_en_i,
      D => D(2),
      Q => data_s(2),
      R => data_rst_i
    );
\data_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => data_en_i,
      D => D(3),
      Q => data_s(3),
      R => data_rst_i
    );
\data_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => data_en_i,
      D => D(4),
      Q => data_s(4),
      R => data_rst_i
    );
\data_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => data_en_i,
      D => D(5),
      Q => data_s(5),
      R => data_rst_i
    );
\data_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => data_en_i,
      D => D(6),
      Q => data_s(6),
      R => data_rst_i
    );
\data_s_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => data_en_i,
      D => D(7),
      Q => data_s(7),
      R => data_rst_i
    );
\data_s_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => data_en_i,
      D => D(8),
      Q => data_s(8),
      R => data_rst_i
    );
\data_s_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk_i,
      CE => data_en_i,
      D => D(9),
      Q => data_s(9),
      R => data_rst_i
    );
data_sof_s_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data_sof_i,
      I1 => data_en_i,
      I2 => data_rst_i,
      O => data_sof_s_i_1_n_0
    );
data_sof_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_sof_s_i_1_n_0,
      Q => data_sof_o,
      R => '0'
    );
neg_val_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => data_i(12),
      Q => neg_val_s,
      R => data_rst_i
    );
rest_is_zero_s_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_i(5),
      I1 => data_i(4),
      O => data_i_5_sn_1
    );
rest_is_zero_s_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => data_i(10),
      I1 => data_i(6),
      I2 => data_i(9),
      I3 => data_i(11),
      I4 => data_i(7),
      I5 => data_i(8),
      O => \data_i[14]\
    );
rest_is_zero_s_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_i(1),
      I1 => data_i(0),
      I2 => data_i(3),
      I3 => data_i(2),
      O => data_i_1_sn_1
    );
rest_is_zero_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_en_i,
      D => rest_is_zero_next_s,
      Q => rest_is_zero_s,
      R => data_rst_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_synchronizer_vector is
  port (
    D : out STD_LOGIC_VECTOR ( 13 downto 0 );
    rest_is_zero_next_s : out STD_LOGIC;
    rest_is_zero_s_reg : in STD_LOGIC;
    rest_is_zero_s_reg_0 : in STD_LOGIC;
    rest_is_zero_s_reg_1 : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \sync_vect_stage0_s_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    data_clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_synchronizer_vector : entity is "shifterReal_dyn_synchronizer_vector";
end double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_synchronizer_vector;

architecture STRUCTURE of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_synchronizer_vector is
  signal \data_s[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[0]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[10]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[10]_i_5_n_0\ : STD_LOGIC;
  signal \data_s[10]_i_6_n_0\ : STD_LOGIC;
  signal \data_s[10]_i_7_n_0\ : STD_LOGIC;
  signal \data_s[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[11]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[11]_i_5_n_0\ : STD_LOGIC;
  signal \data_s[11]_i_6_n_0\ : STD_LOGIC;
  signal \data_s[11]_i_7_n_0\ : STD_LOGIC;
  signal \data_s[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[12]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[12]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[12]_i_5_n_0\ : STD_LOGIC;
  signal \data_s[12]_i_6_n_0\ : STD_LOGIC;
  signal \data_s[12]_i_7_n_0\ : STD_LOGIC;
  signal \data_s[12]_i_8_n_0\ : STD_LOGIC;
  signal \data_s[12]_i_9_n_0\ : STD_LOGIC;
  signal \data_s[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[13]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[13]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[13]_i_5_n_0\ : STD_LOGIC;
  signal \data_s[13]_i_6_n_0\ : STD_LOGIC;
  signal \data_s[13]_i_7_n_0\ : STD_LOGIC;
  signal \data_s[13]_i_8_n_0\ : STD_LOGIC;
  signal \data_s[13]_i_9_n_0\ : STD_LOGIC;
  signal \data_s[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[2]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[6]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[8]_i_4_n_0\ : STD_LOGIC;
  signal \data_s[9]_i_2_n_0\ : STD_LOGIC;
  signal \data_s[9]_i_3_n_0\ : STD_LOGIC;
  signal \data_s[9]_i_4_n_0\ : STD_LOGIC;
  signal \flipflops_vect[0]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute async_reg : string;
  attribute async_reg of \flipflops_vect[0]_0\ : signal is "true";
  signal \flipflops_vect[1]_1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute async_reg of \flipflops_vect[1]_1\ : signal is "true";
  signal \flipflops_vect[2]_2\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute async_reg of \flipflops_vect[2]_2\ : signal is "true";
  signal rest_is_zero_s_i_11_n_0 : STD_LOGIC;
  signal rest_is_zero_s_i_12_n_0 : STD_LOGIC;
  signal rest_is_zero_s_i_13_n_0 : STD_LOGIC;
  signal rest_is_zero_s_i_15_n_0 : STD_LOGIC;
  signal rest_is_zero_s_i_2_n_0 : STD_LOGIC;
  signal rest_is_zero_s_i_3_n_0 : STD_LOGIC;
  signal rest_is_zero_s_i_4_n_0 : STD_LOGIC;
  signal rest_is_zero_s_i_5_n_0 : STD_LOGIC;
  signal rest_is_zero_s_i_6_n_0 : STD_LOGIC;
  signal rest_is_zero_s_i_7_n_0 : STD_LOGIC;
  signal rest_is_zero_s_i_8_n_0 : STD_LOGIC;
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
\data_s[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(2),
      I1 => \flipflops_vect[2]_2\(3),
      I2 => \data_s[0]_i_2_n_0\,
      I3 => \flipflops_vect[2]_2\(4),
      I4 => \data_s[0]_i_3_n_0\,
      O => D(0)
    );
\data_s[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_i(18),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => data_i(17),
      I3 => \flipflops_vect[2]_2\(0),
      I4 => data_i(16),
      O => \data_s[0]_i_2_n_0\
    );
\data_s[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_s[12]_i_9_n_0\,
      I1 => \data_s[8]_i_4_n_0\,
      I2 => \flipflops_vect[2]_2\(3),
      I3 => \data_s[4]_i_4_n_0\,
      I4 => \flipflops_vect[2]_2\(2),
      I5 => \data_s[0]_i_4_n_0\,
      O => \data_s[0]_i_3_n_0\
    );
\data_s[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(3),
      I1 => data_i(2),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(1),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(0),
      O => \data_s[0]_i_4_n_0\
    );
\data_s[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_s[10]_i_4_n_0\,
      I1 => \data_s[10]_i_5_n_0\,
      I2 => \flipflops_vect[2]_2\(3),
      I3 => \data_s[10]_i_6_n_0\,
      I4 => \flipflops_vect[2]_2\(2),
      I5 => \data_s[10]_i_7_n_0\,
      O => \data_s[10]_i_2_n_0\
    );
\data_s[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(3),
      I1 => data_i(28),
      I2 => \flipflops_vect[2]_2\(0),
      I3 => \flipflops_vect[2]_2\(1),
      I4 => \data_s[12]_i_5_n_0\,
      I5 => \flipflops_vect[2]_2\(2),
      O => \data_s[10]_i_3_n_0\
    );
\data_s[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(25),
      I1 => data_i(24),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(23),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(22),
      O => \data_s[10]_i_4_n_0\
    );
\data_s[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(21),
      I1 => data_i(20),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(19),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(18),
      O => \data_s[10]_i_5_n_0\
    );
\data_s[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(17),
      I1 => data_i(16),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(15),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(14),
      O => \data_s[10]_i_6_n_0\
    );
\data_s[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(13),
      I1 => data_i(12),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(11),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(10),
      O => \data_s[10]_i_7_n_0\
    );
\data_s[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_s[11]_i_4_n_0\,
      I1 => \data_s[11]_i_5_n_0\,
      I2 => \flipflops_vect[2]_2\(3),
      I3 => \data_s[11]_i_6_n_0\,
      I4 => \flipflops_vect[2]_2\(2),
      I5 => \data_s[11]_i_7_n_0\,
      O => \data_s[11]_i_2_n_0\
    );
\data_s[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(3),
      I1 => data_i(29),
      I2 => \flipflops_vect[2]_2\(0),
      I3 => \flipflops_vect[2]_2\(1),
      I4 => \data_s[13]_i_5_n_0\,
      I5 => \flipflops_vect[2]_2\(2),
      O => \data_s[11]_i_3_n_0\
    );
\data_s[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(26),
      I1 => data_i(25),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(24),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(23),
      O => \data_s[11]_i_4_n_0\
    );
\data_s[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(22),
      I1 => data_i(21),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(20),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(19),
      O => \data_s[11]_i_5_n_0\
    );
\data_s[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(18),
      I1 => data_i(17),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(16),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(15),
      O => \data_s[11]_i_6_n_0\
    );
\data_s[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(14),
      I1 => data_i(13),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(12),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(11),
      O => \data_s[11]_i_7_n_0\
    );
\data_s[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0FCC00AA00CC"
    )
        port map (
      I0 => \data_s[12]_i_2_n_0\,
      I1 => \data_s[12]_i_3_n_0\,
      I2 => \flipflops_vect[2]_2\(2),
      I3 => \flipflops_vect[2]_2\(4),
      I4 => \flipflops_vect[2]_2\(3),
      I5 => \data_s[12]_i_4_n_0\,
      O => D(12)
    );
\data_s[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_s[12]_i_5_n_0\,
      I1 => \flipflops_vect[2]_2\(1),
      I2 => \data_s[12]_i_6_n_0\,
      I3 => \flipflops_vect[2]_2\(2),
      I4 => \data_s[12]_i_7_n_0\,
      O => \data_s[12]_i_2_n_0\
    );
\data_s[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_s[12]_i_8_n_0\,
      I1 => \flipflops_vect[2]_2\(2),
      I2 => \data_s[12]_i_9_n_0\,
      O => \data_s[12]_i_3_n_0\
    );
\data_s[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_i(30),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => data_i(29),
      I3 => \flipflops_vect[2]_2\(0),
      I4 => data_i(28),
      O => \data_s[12]_i_4_n_0\
    );
\data_s[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_i(27),
      I1 => \flipflops_vect[2]_2\(0),
      I2 => data_i(26),
      O => \data_s[12]_i_5_n_0\
    );
\data_s[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_i(25),
      I1 => \flipflops_vect[2]_2\(0),
      I2 => data_i(24),
      O => \data_s[12]_i_6_n_0\
    );
\data_s[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(23),
      I1 => data_i(22),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(21),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(20),
      O => \data_s[12]_i_7_n_0\
    );
\data_s[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(19),
      I1 => data_i(18),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(17),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(16),
      O => \data_s[12]_i_8_n_0\
    );
\data_s[12]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(15),
      I1 => data_i(14),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(13),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(12),
      O => \data_s[12]_i_9_n_0\
    );
\data_s[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0FCC00AA00CC"
    )
        port map (
      I0 => \data_s[13]_i_2_n_0\,
      I1 => \data_s[13]_i_3_n_0\,
      I2 => \flipflops_vect[2]_2\(2),
      I3 => \flipflops_vect[2]_2\(4),
      I4 => \flipflops_vect[2]_2\(3),
      I5 => \data_s[13]_i_4_n_0\,
      O => D(13)
    );
\data_s[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_s[13]_i_5_n_0\,
      I1 => \flipflops_vect[2]_2\(1),
      I2 => \data_s[13]_i_6_n_0\,
      I3 => \flipflops_vect[2]_2\(2),
      I4 => \data_s[13]_i_7_n_0\,
      O => \data_s[13]_i_2_n_0\
    );
\data_s[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_s[13]_i_8_n_0\,
      I1 => \flipflops_vect[2]_2\(2),
      I2 => \data_s[13]_i_9_n_0\,
      O => \data_s[13]_i_3_n_0\
    );
\data_s[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_i(31),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => data_i(30),
      I3 => \flipflops_vect[2]_2\(0),
      I4 => data_i(29),
      O => \data_s[13]_i_4_n_0\
    );
\data_s[13]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_i(28),
      I1 => \flipflops_vect[2]_2\(0),
      I2 => data_i(27),
      O => \data_s[13]_i_5_n_0\
    );
\data_s[13]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_i(26),
      I1 => \flipflops_vect[2]_2\(0),
      I2 => data_i(25),
      O => \data_s[13]_i_6_n_0\
    );
\data_s[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(24),
      I1 => data_i(23),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(22),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(21),
      O => \data_s[13]_i_7_n_0\
    );
\data_s[13]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(20),
      I1 => data_i(19),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(18),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(17),
      O => \data_s[13]_i_8_n_0\
    );
\data_s[13]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(16),
      I1 => data_i(15),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(14),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(13),
      O => \data_s[13]_i_9_n_0\
    );
\data_s[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(2),
      I1 => \flipflops_vect[2]_2\(3),
      I2 => \data_s[1]_i_2_n_0\,
      I3 => \flipflops_vect[2]_2\(4),
      I4 => \data_s[1]_i_3_n_0\,
      O => D(1)
    );
\data_s[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_i(19),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => data_i(18),
      I3 => \flipflops_vect[2]_2\(0),
      I4 => data_i(17),
      O => \data_s[1]_i_2_n_0\
    );
\data_s[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_s[13]_i_9_n_0\,
      I1 => \data_s[9]_i_4_n_0\,
      I2 => \flipflops_vect[2]_2\(3),
      I3 => \data_s[5]_i_4_n_0\,
      I4 => \flipflops_vect[2]_2\(2),
      I5 => \data_s[1]_i_4_n_0\,
      O => \data_s[1]_i_3_n_0\
    );
\data_s[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(4),
      I1 => data_i(3),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(2),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(1),
      O => \data_s[1]_i_4_n_0\
    );
\data_s[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(2),
      I1 => \flipflops_vect[2]_2\(3),
      I2 => \data_s[2]_i_2_n_0\,
      I3 => \flipflops_vect[2]_2\(4),
      I4 => \data_s[2]_i_3_n_0\,
      O => D(2)
    );
\data_s[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_i(20),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => data_i(19),
      I3 => \flipflops_vect[2]_2\(0),
      I4 => data_i(18),
      O => \data_s[2]_i_2_n_0\
    );
\data_s[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_s[10]_i_6_n_0\,
      I1 => \data_s[10]_i_7_n_0\,
      I2 => \flipflops_vect[2]_2\(3),
      I3 => \data_s[6]_i_4_n_0\,
      I4 => \flipflops_vect[2]_2\(2),
      I5 => \data_s[2]_i_4_n_0\,
      O => \data_s[2]_i_3_n_0\
    );
\data_s[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(5),
      I1 => data_i(4),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(3),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(2),
      O => \data_s[2]_i_4_n_0\
    );
\data_s[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(2),
      I1 => \flipflops_vect[2]_2\(3),
      I2 => \data_s[3]_i_2_n_0\,
      I3 => \flipflops_vect[2]_2\(4),
      I4 => \data_s[3]_i_3_n_0\,
      O => D(3)
    );
\data_s[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_i(21),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => data_i(20),
      I3 => \flipflops_vect[2]_2\(0),
      I4 => data_i(19),
      O => \data_s[3]_i_2_n_0\
    );
\data_s[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_s[11]_i_6_n_0\,
      I1 => \data_s[11]_i_7_n_0\,
      I2 => \flipflops_vect[2]_2\(3),
      I3 => \data_s[7]_i_4_n_0\,
      I4 => \flipflops_vect[2]_2\(2),
      I5 => \data_s[3]_i_4_n_0\,
      O => \data_s[3]_i_3_n_0\
    );
\data_s[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(6),
      I1 => data_i(5),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(4),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(3),
      O => \data_s[3]_i_4_n_0\
    );
\data_s[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(2),
      I1 => \flipflops_vect[2]_2\(3),
      I2 => \data_s[4]_i_2_n_0\,
      I3 => \flipflops_vect[2]_2\(4),
      I4 => \data_s[4]_i_3_n_0\,
      O => D(4)
    );
\data_s[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_i(22),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => data_i(21),
      I3 => \flipflops_vect[2]_2\(0),
      I4 => data_i(20),
      O => \data_s[4]_i_2_n_0\
    );
\data_s[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_s[12]_i_8_n_0\,
      I1 => \data_s[12]_i_9_n_0\,
      I2 => \flipflops_vect[2]_2\(3),
      I3 => \data_s[8]_i_4_n_0\,
      I4 => \flipflops_vect[2]_2\(2),
      I5 => \data_s[4]_i_4_n_0\,
      O => \data_s[4]_i_3_n_0\
    );
\data_s[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(7),
      I1 => data_i(6),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(5),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(4),
      O => \data_s[4]_i_4_n_0\
    );
\data_s[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(2),
      I1 => \flipflops_vect[2]_2\(3),
      I2 => \data_s[5]_i_2_n_0\,
      I3 => \flipflops_vect[2]_2\(4),
      I4 => \data_s[5]_i_3_n_0\,
      O => D(5)
    );
\data_s[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_i(23),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => data_i(22),
      I3 => \flipflops_vect[2]_2\(0),
      I4 => data_i(21),
      O => \data_s[5]_i_2_n_0\
    );
\data_s[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_s[13]_i_8_n_0\,
      I1 => \data_s[13]_i_9_n_0\,
      I2 => \flipflops_vect[2]_2\(3),
      I3 => \data_s[9]_i_4_n_0\,
      I4 => \flipflops_vect[2]_2\(2),
      I5 => \data_s[5]_i_4_n_0\,
      O => \data_s[5]_i_3_n_0\
    );
\data_s[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(8),
      I1 => data_i(7),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(6),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(5),
      O => \data_s[5]_i_4_n_0\
    );
\data_s[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(2),
      I1 => \flipflops_vect[2]_2\(3),
      I2 => \data_s[6]_i_2_n_0\,
      I3 => \flipflops_vect[2]_2\(4),
      I4 => \data_s[6]_i_3_n_0\,
      O => D(6)
    );
\data_s[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_i(24),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => data_i(23),
      I3 => \flipflops_vect[2]_2\(0),
      I4 => data_i(22),
      O => \data_s[6]_i_2_n_0\
    );
\data_s[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_s[10]_i_5_n_0\,
      I1 => \data_s[10]_i_6_n_0\,
      I2 => \flipflops_vect[2]_2\(3),
      I3 => \data_s[10]_i_7_n_0\,
      I4 => \flipflops_vect[2]_2\(2),
      I5 => \data_s[6]_i_4_n_0\,
      O => \data_s[6]_i_3_n_0\
    );
\data_s[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(9),
      I1 => data_i(8),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(7),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(6),
      O => \data_s[6]_i_4_n_0\
    );
\data_s[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(2),
      I1 => \flipflops_vect[2]_2\(3),
      I2 => \data_s[7]_i_2_n_0\,
      I3 => \flipflops_vect[2]_2\(4),
      I4 => \data_s[7]_i_3_n_0\,
      O => D(7)
    );
\data_s[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_i(25),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => data_i(24),
      I3 => \flipflops_vect[2]_2\(0),
      I4 => data_i(23),
      O => \data_s[7]_i_2_n_0\
    );
\data_s[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_s[11]_i_5_n_0\,
      I1 => \data_s[11]_i_6_n_0\,
      I2 => \flipflops_vect[2]_2\(3),
      I3 => \data_s[11]_i_7_n_0\,
      I4 => \flipflops_vect[2]_2\(2),
      I5 => \data_s[7]_i_4_n_0\,
      O => \data_s[7]_i_3_n_0\
    );
\data_s[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(10),
      I1 => data_i(9),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(8),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(7),
      O => \data_s[7]_i_4_n_0\
    );
\data_s[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(2),
      I1 => \flipflops_vect[2]_2\(3),
      I2 => \data_s[8]_i_2_n_0\,
      I3 => \flipflops_vect[2]_2\(4),
      I4 => \data_s[8]_i_3_n_0\,
      O => D(8)
    );
\data_s[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_i(26),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => data_i(25),
      I3 => \flipflops_vect[2]_2\(0),
      I4 => data_i(24),
      O => \data_s[8]_i_2_n_0\
    );
\data_s[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_s[12]_i_7_n_0\,
      I1 => \data_s[12]_i_8_n_0\,
      I2 => \flipflops_vect[2]_2\(3),
      I3 => \data_s[12]_i_9_n_0\,
      I4 => \flipflops_vect[2]_2\(2),
      I5 => \data_s[8]_i_4_n_0\,
      O => \data_s[8]_i_3_n_0\
    );
\data_s[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(11),
      I1 => data_i(10),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(9),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(8),
      O => \data_s[8]_i_4_n_0\
    );
\data_s[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => \flipflops_vect[2]_2\(2),
      I1 => \flipflops_vect[2]_2\(3),
      I2 => \data_s[9]_i_2_n_0\,
      I3 => \flipflops_vect[2]_2\(4),
      I4 => \data_s[9]_i_3_n_0\,
      O => D(9)
    );
\data_s[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_i(27),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => data_i(26),
      I3 => \flipflops_vect[2]_2\(0),
      I4 => data_i(25),
      O => \data_s[9]_i_2_n_0\
    );
\data_s[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_s[13]_i_7_n_0\,
      I1 => \data_s[13]_i_8_n_0\,
      I2 => \flipflops_vect[2]_2\(3),
      I3 => \data_s[13]_i_9_n_0\,
      I4 => \flipflops_vect[2]_2\(2),
      I5 => \data_s[9]_i_4_n_0\,
      O => \data_s[9]_i_3_n_0\
    );
\data_s[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(12),
      I1 => data_i(11),
      I2 => \flipflops_vect[2]_2\(1),
      I3 => data_i(10),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(9),
      O => \data_s[9]_i_4_n_0\
    );
\data_s_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_s[10]_i_2_n_0\,
      I1 => \data_s[10]_i_3_n_0\,
      O => D(10),
      S => \flipflops_vect[2]_2\(4)
    );
\data_s_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_s[11]_i_2_n_0\,
      I1 => \data_s[11]_i_3_n_0\,
      O => D(11),
      S => \flipflops_vect[2]_2\(4)
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
rest_is_zero_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001F11"
    )
        port map (
      I0 => rest_is_zero_s_i_2_n_0,
      I1 => \flipflops_vect[2]_2\(3),
      I2 => rest_is_zero_s_i_3_n_0,
      I3 => rest_is_zero_s_i_4_n_0,
      I4 => \flipflops_vect[2]_2\(4),
      I5 => rest_is_zero_s_i_5_n_0,
      O => rest_is_zero_next_s
    );
rest_is_zero_s_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEACA8AEAAACA8"
    )
        port map (
      I0 => data_i(8),
      I1 => \flipflops_vect[2]_2\(1),
      I2 => \flipflops_vect[2]_2\(2),
      I3 => data_i(9),
      I4 => \flipflops_vect[2]_2\(0),
      I5 => data_i(10),
      O => rest_is_zero_s_i_11_n_0
    );
rest_is_zero_s_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFEFEFEFE"
    )
        port map (
      I0 => data_i(10),
      I1 => data_i(9),
      I2 => data_i(11),
      I3 => \flipflops_vect[2]_2\(0),
      I4 => \flipflops_vect[2]_2\(1),
      I5 => data_i(12),
      O => rest_is_zero_s_i_12_n_0
    );
rest_is_zero_s_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"015F"
    )
        port map (
      I0 => data_i(16),
      I1 => data_i(17),
      I2 => \flipflops_vect[2]_2\(0),
      I3 => \flipflops_vect[2]_2\(1),
      O => rest_is_zero_s_i_13_n_0
    );
rest_is_zero_s_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => data_i(10),
      I1 => data_i(9),
      I2 => data_i(11),
      I3 => \flipflops_vect[2]_2\(3),
      I4 => \flipflops_vect[2]_2\(4),
      I5 => \flipflops_vect[2]_2\(2),
      O => rest_is_zero_s_i_15_n_0
    );
rest_is_zero_s_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0080AAAAAAAA"
    )
        port map (
      I0 => rest_is_zero_s_i_6_n_0,
      I1 => \flipflops_vect[2]_2\(0),
      I2 => data_i(4),
      I3 => \flipflops_vect[2]_2\(1),
      I4 => rest_is_zero_s_i_7_n_0,
      I5 => rest_is_zero_s_i_8_n_0,
      O => rest_is_zero_s_i_2_n_0
    );
rest_is_zero_s_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => data_i(7),
      I1 => \flipflops_vect[2]_2\(3),
      I2 => rest_is_zero_s_reg_0,
      I3 => rest_is_zero_s_reg_1,
      I4 => data_i(6),
      I5 => rest_is_zero_s_i_11_n_0,
      O => rest_is_zero_s_i_3_n_0
    );
rest_is_zero_s_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01115555FFFFFFFF"
    )
        port map (
      I0 => rest_is_zero_s_i_12_n_0,
      I1 => data_i(13),
      I2 => \flipflops_vect[2]_2\(0),
      I3 => data_i(14),
      I4 => \flipflops_vect[2]_2\(1),
      I5 => \flipflops_vect[2]_2\(2),
      O => rest_is_zero_s_i_4_n_0
    );
rest_is_zero_s_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => rest_is_zero_s_i_13_n_0,
      I1 => rest_is_zero_s_reg,
      I2 => rest_is_zero_s_i_15_n_0,
      I3 => rest_is_zero_s_reg_0,
      I4 => rest_is_zero_s_reg_1,
      I5 => data_i(6),
      O => rest_is_zero_s_i_5_n_0
    );
rest_is_zero_s_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFCFFF0F0F0"
    )
        port map (
      I0 => data_i(2),
      I1 => data_i(1),
      I2 => \flipflops_vect[2]_2\(2),
      I3 => \flipflops_vect[2]_2\(0),
      I4 => data_i(0),
      I5 => \flipflops_vect[2]_2\(1),
      O => rest_is_zero_s_i_6_n_0
    );
rest_is_zero_s_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => data_i(2),
      I1 => data_i(3),
      I2 => data_i(0),
      I3 => data_i(1),
      I4 => \flipflops_vect[2]_2\(2),
      O => rest_is_zero_s_i_7_n_0
    );
rest_is_zero_s_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0111FFFF"
    )
        port map (
      I0 => data_i(5),
      I1 => data_i(4),
      I2 => \flipflops_vect[2]_2\(0),
      I3 => data_i(6),
      I4 => \flipflops_vect[2]_2\(1),
      O => rest_is_zero_s_i_8_n_0
    );
\sync_vect_stage0_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \sync_vect_stage0_s_reg[4]_0\(0),
      Q => sync_vect_stage0_s(0),
      R => '0'
    );
\sync_vect_stage0_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \sync_vect_stage0_s_reg[4]_0\(1),
      Q => sync_vect_stage0_s(1),
      R => '0'
    );
\sync_vect_stage0_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \sync_vect_stage0_s_reg[4]_0\(2),
      Q => sync_vect_stage0_s(2),
      R => '0'
    );
\sync_vect_stage0_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \sync_vect_stage0_s_reg[4]_0\(3),
      Q => sync_vect_stage0_s(3),
      R => '0'
    );
\sync_vect_stage0_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \sync_vect_stage0_s_reg[4]_0\(4),
      Q => sync_vect_stage0_s(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn is
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
    data_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_en_i : in STD_LOGIC;
    data_eof_i : in STD_LOGIC;
    data_sof_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_o : out STD_LOGIC;
    data_eof_o : out STD_LOGIC;
    data_sof_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC
  );
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn : entity is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn : entity is 32;
  attribute DATA_IN_SIZE : integer;
  attribute DATA_IN_SIZE of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn : entity is 32;
  attribute DATA_OUT_SIZE : integer;
  attribute DATA_OUT_SIZE of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn : entity is 14;
  attribute DEFAULT_SHIFT : integer;
  attribute DEFAULT_SHIFT of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn : entity is "shifterReal_dyn";
  attribute SIGNED_DATA : string;
  attribute SIGNED_DATA of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn : entity is "TRUE";
  attribute id : integer;
  attribute id of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn : entity is 1;
end double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn;

architecture STRUCTURE of double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn is
  signal \<const0>\ : STD_LOGIC;
  signal addr_s : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \array_val[0]_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^data_clk_i\ : STD_LOGIC;
  signal \^data_rst_i\ : STD_LOGIC;
  signal handle_comm_n_10 : STD_LOGIC;
  signal handle_comm_n_11 : STD_LOGIC;
  signal handle_comm_n_6 : STD_LOGIC;
  signal handle_comm_n_7 : STD_LOGIC;
  signal handle_comm_n_8 : STD_LOGIC;
  signal handle_comm_n_9 : STD_LOGIC;
  signal rd_en_s : STD_LOGIC;
  signal rest_is_zero_next_s : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal shift_inst1_n_3 : STD_LOGIC;
  signal shift_inst1_n_4 : STD_LOGIC;
  signal shift_inst1_n_5 : STD_LOGIC;
  signal shift_val_s : STD_LOGIC_VECTOR ( 4 downto 0 );
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
  s00_axi_rdata(12) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(11) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(10) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(9) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(8) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(7) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(6) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(5) <= \^s00_axi_rdata\(30);
  s00_axi_rdata(4 downto 0) <= \^s00_axi_rdata\(4 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
handle_comm: entity work.double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_handcomm
     port map (
      D(4) => handle_comm_n_7,
      D(3) => handle_comm_n_8,
      D(2) => handle_comm_n_9,
      D(1) => handle_comm_n_10,
      D(0) => handle_comm_n_11,
      E(0) => handle_comm_n_6,
      Q(4 downto 0) => shift_val_s(4 downto 0),
      addr_s(0) => addr_s(1),
      axi_arready_reg_0 => s00_axi_arready,
      axi_awready_reg_0 => s00_axi_awready,
      axi_wready_reg_0 => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_arvalid_0(0) => rd_en_s,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_reset => s00_axi_reset,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wvalid => s00_axi_wvalid
    );
shift_comm_inst: entity work.double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_comm
     port map (
      D(5) => addr_s(1),
      D(4) => handle_comm_n_7,
      D(3) => handle_comm_n_8,
      D(2) => handle_comm_n_9,
      D(1) => handle_comm_n_10,
      D(0) => handle_comm_n_11,
      E(0) => handle_comm_n_6,
      Q(4 downto 0) => shift_val_s(4 downto 0),
      \readdata_s_reg[31]_0\(0) => rd_en_s,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_rdata(5) => \^s00_axi_rdata\(30),
      s00_axi_rdata(4 downto 0) => \^s00_axi_rdata\(4 downto 0),
      s00_axi_reset => s00_axi_reset,
      s00_axi_wdata(4 downto 0) => s00_axi_wdata(4 downto 0)
    );
shift_inst1: entity work.double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_logic
     port map (
      D(13 downto 0) => \array_val[0]_0\(13 downto 0),
      data_clk_i => \^data_clk_i\,
      data_en_i => data_en_i,
      data_en_o => data_en_o,
      data_eof_i => data_eof_i,
      data_eof_o => data_eof_o,
      data_i(12) => data_i(31),
      data_i(11 downto 8) => data_i(15 downto 12),
      data_i(7 downto 6) => data_i(8 downto 7),
      data_i(5 downto 0) => data_i(5 downto 0),
      \data_i[14]\ => shift_inst1_n_3,
      data_i_1_sp_1 => shift_inst1_n_5,
      data_i_5_sp_1 => shift_inst1_n_4,
      data_o(13 downto 0) => data_o(13 downto 0),
      data_rst_i => \^data_rst_i\,
      data_sof_i => data_sof_i,
      data_sof_o => data_sof_o,
      rest_is_zero_next_s => rest_is_zero_next_s
    );
shift_sync: entity work.double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn_synchronizer_vector
     port map (
      D(13 downto 0) => \array_val[0]_0\(13 downto 0),
      data_clk_i => \^data_clk_i\,
      data_i(31 downto 0) => data_i(31 downto 0),
      rest_is_zero_next_s => rest_is_zero_next_s,
      rest_is_zero_s_reg => shift_inst1_n_3,
      rest_is_zero_s_reg_0 => shift_inst1_n_5,
      rest_is_zero_s_reg_1 => shift_inst1_n_4,
      s00_axi_aclk => s00_axi_aclk,
      \sync_vect_stage0_s_reg[4]_0\(4 downto 0) => shift_val_s(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_iq_pid_vco_shifterReal_dyn_0_0 is
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
    data_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_en_i : in STD_LOGIC;
    data_eof_i : in STD_LOGIC;
    data_sof_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_o : out STD_LOGIC;
    data_eof_o : out STD_LOGIC;
    data_sof_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of double_iq_pid_vco_shifterReal_dyn_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of double_iq_pid_vco_shifterReal_dyn_0_0 : entity is "double_iq_pid_vco_shifterReal_dyn_0_0,shifterReal_dyn,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of double_iq_pid_vco_shifterReal_dyn_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of double_iq_pid_vco_shifterReal_dyn_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of double_iq_pid_vco_shifterReal_dyn_0_0 : entity is "shifterReal_dyn,Vivado 2019.2";
end double_iq_pid_vco_shifterReal_dyn_0_0;

architecture STRUCTURE of double_iq_pid_vco_shifterReal_dyn_0_0 is
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of inst : label is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of inst : label is 32;
  attribute DATA_IN_SIZE : integer;
  attribute DATA_IN_SIZE of inst : label is 32;
  attribute DATA_OUT_SIZE : integer;
  attribute DATA_OUT_SIZE of inst : label is 14;
  attribute DEFAULT_SHIFT : integer;
  attribute DEFAULT_SHIFT of inst : label is 0;
  attribute SIGNED_DATA : string;
  attribute SIGNED_DATA of inst : label is "TRUE";
  attribute id : integer;
  attribute id of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of data_clk_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_CLK";
  attribute X_INTERFACE_INFO of data_clk_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_CLK";
  attribute X_INTERFACE_INFO of data_en_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_EN";
  attribute X_INTERFACE_INFO of data_en_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_EN";
  attribute X_INTERFACE_INFO of data_eof_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_EOF";
  attribute X_INTERFACE_INFO of data_eof_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_EOF";
  attribute X_INTERFACE_INFO of data_rst_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_RST";
  attribute X_INTERFACE_INFO of data_rst_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_RST";
  attribute X_INTERFACE_INFO of data_sof_i : signal is "xilinx.com:interface:real:1.0 data_in DATA_SOF";
  attribute X_INTERFACE_INFO of data_sof_o : signal is "xilinx.com:interface:real:1.0 data_out DATA_SOF";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_reset : signal is "xilinx.com:signal:reset:1.0 s00_axi_reset RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_reset : signal is "XIL_INTERFACENAME s00_axi_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute X_INTERFACE_INFO of data_i : signal is "xilinx.com:interface:real:1.0 data_in DATA";
  attribute X_INTERFACE_INFO of data_o : signal is "xilinx.com:interface:real:1.0 data_out DATA";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
inst: entity work.double_iq_pid_vco_shifterReal_dyn_0_0_shifterReal_dyn
     port map (
      data_clk_i => data_clk_i,
      data_clk_o => data_clk_o,
      data_en_i => data_en_i,
      data_en_o => data_en_o,
      data_eof_i => data_eof_i,
      data_eof_o => data_eof_o,
      data_i(31 downto 0) => data_i(31 downto 0),
      data_o(13 downto 0) => data_o(13 downto 0),
      data_rst_i => data_rst_i,
      data_rst_o => data_rst_o,
      data_sof_i => data_sof_i,
      data_sof_o => data_sof_o,
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
