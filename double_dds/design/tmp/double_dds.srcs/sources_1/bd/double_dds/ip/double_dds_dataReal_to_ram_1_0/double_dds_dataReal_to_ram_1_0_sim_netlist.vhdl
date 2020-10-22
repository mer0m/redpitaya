-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Thu Oct 22 19:00:24 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/fpga_design/redpitaya/double_dds/design/tmp/double_dds.srcs/sources_1/bd/double_dds/ip/double_dds_dataReal_to_ram_1_0/double_dds_dataReal_to_ram_1_0_sim_netlist.vhdl
-- Design      : double_dds_dataReal_to_ram_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dataReal_to_ram_1_0_dataReal_sync is
  port (
    busy_s_reg : out STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    sync_stage0_s_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    busy_s_1 : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    busy_s_reg_0 : in STD_LOGIC;
    busy_s_reg_1 : in STD_LOGIC;
    busy_s_reg_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dataReal_to_ram_1_0_dataReal_sync : entity is "dataReal_sync";
end double_dds_dataReal_to_ram_1_0_dataReal_sync;

architecture STRUCTURE of double_dds_dataReal_to_ram_1_0_dataReal_sync is
  signal sync_stage0_s : STD_LOGIC;
  signal sync_stage1_s : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of sync_stage1_s : signal is "true";
  signal sync_stage2_s : STD_LOGIC;
  attribute async_reg of sync_stage2_s : signal is "true";
  signal sync_stage3_s_reg_n_0 : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of sync_stage1_s_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of sync_stage1_s_reg : label is "yes";
  attribute ASYNC_REG_boolean of sync_stage2_s_reg : label is std.standard.true;
  attribute KEEP of sync_stage2_s_reg : label is "yes";
begin
\busy_s_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E0E0E0E0E0E0E"
    )
        port map (
      I0 => busy_s_1,
      I1 => sync_stage3_s_reg_n_0,
      I2 => data2_rst_i,
      I3 => busy_s_reg_0,
      I4 => busy_s_reg_1,
      I5 => busy_s_reg_2,
      O => busy_s_reg
    );
sync_stage0_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sync_stage0_s_reg_0,
      Q => sync_stage0_s,
      R => '0'
    );
sync_stage1_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => sync_stage0_s,
      Q => sync_stage1_s,
      R => '0'
    );
sync_stage2_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => sync_stage1_s,
      Q => sync_stage2_s,
      R => '0'
    );
sync_stage3_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => sync_stage2_s,
      Q => sync_stage3_s_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__1\ is
  port (
    busy_s_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset_0 : out STD_LOGIC;
    s00_axi_reset_1 : out STD_LOGIC;
    busy_s_1 : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    busy_d_s : in STD_LOGIC;
    start_s : in STD_LOGIC;
    interrupt_o_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_acq2_s : in STD_LOGIC;
    start_o : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__1\ : entity is "dataReal_sync";
end \double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__1\;

architecture STRUCTURE of \double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__1\ is
  signal \^busy_s_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sync_stage0_s : STD_LOGIC;
  signal sync_stage1_s : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of sync_stage1_s : signal is "true";
  signal sync_stage2_s : STD_LOGIC;
  attribute async_reg of sync_stage2_s : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of sync_stage1_s_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of sync_stage1_s_reg : label is "yes";
  attribute ASYNC_REG_boolean of sync_stage2_s_reg : label is std.standard.true;
  attribute KEEP of sync_stage2_s_reg : label is "yes";
begin
  busy_s_0(0) <= \^busy_s_0\(0);
interrupt_o_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => s00_axi_reset,
      I1 => busy_d_s,
      I2 => start_s,
      I3 => \^busy_s_0\(0),
      I4 => interrupt_o_reg(0),
      O => s00_axi_reset_0
    );
start_acq2_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => s00_axi_reset,
      I1 => \^busy_s_0\(0),
      I2 => start_acq2_s,
      I3 => start_o,
      O => s00_axi_reset_1
    );
sync_stage0_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => busy_s_1,
      Q => sync_stage0_s,
      R => '0'
    );
sync_stage1_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sync_stage0_s,
      Q => sync_stage1_s,
      R => '0'
    );
sync_stage2_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sync_stage1_s,
      Q => sync_stage2_s,
      R => '0'
    );
sync_stage3_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sync_stage2_s,
      Q => \^busy_s_0\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__2\ is
  port (
    busy_s_reg : out STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    start_acq2_s : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    busy_s_1 : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    busy_s_reg_0 : in STD_LOGIC;
    busy_s_reg_1 : in STD_LOGIC;
    busy_s_reg_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__2\ : entity is "dataReal_sync";
end \double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__2\;

architecture STRUCTURE of \double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__2\ is
  signal sync_stage0_s : STD_LOGIC;
  signal sync_stage1_s : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of sync_stage1_s : signal is "true";
  signal sync_stage2_s : STD_LOGIC;
  attribute async_reg of sync_stage2_s : signal is "true";
  signal sync_stage3_s : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of sync_stage1_s_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of sync_stage1_s_reg : label is "yes";
  attribute ASYNC_REG_boolean of sync_stage2_s_reg : label is std.standard.true;
  attribute KEEP of sync_stage2_s_reg : label is "yes";
begin
busy_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E0E0E0E0E0E0E"
    )
        port map (
      I0 => busy_s_1,
      I1 => sync_stage3_s,
      I2 => data1_rst_i,
      I3 => busy_s_reg_0,
      I4 => busy_s_reg_1,
      I5 => busy_s_reg_2,
      O => busy_s_reg
    );
sync_stage0_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => start_acq2_s,
      Q => sync_stage0_s,
      R => '0'
    );
sync_stage1_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => sync_stage0_s,
      Q => sync_stage1_s,
      R => '0'
    );
sync_stage2_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => sync_stage1_s,
      Q => sync_stage2_s,
      R => '0'
    );
sync_stage3_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => sync_stage2_s,
      Q => sync_stage3_s,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__3\ is
  port (
    sync_stage3_s_reg_0 : out STD_LOGIC;
    s00_axi_reset_0 : out STD_LOGIC;
    busy_s : out STD_LOGIC;
    s00_axi_reset_1 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    busy_s_1 : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    start_o : in STD_LOGIC;
    start_s : in STD_LOGIC;
    busy_s_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_acq2_s_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__3\ : entity is "dataReal_sync";
end \double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__3\;

architecture STRUCTURE of \double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__3\ is
  signal sync_stage0_s : STD_LOGIC;
  signal sync_stage1_s : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of sync_stage1_s : signal is "true";
  signal sync_stage2_s : STD_LOGIC;
  attribute async_reg of sync_stage2_s : signal is "true";
  signal \^sync_stage3_s_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of busy_d_s_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of start_s_i_1 : label is "soft_lutpair0";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of sync_stage1_s_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of sync_stage1_s_reg : label is "yes";
  attribute ASYNC_REG_boolean of sync_stage2_s_reg : label is std.standard.true;
  attribute KEEP of sync_stage2_s_reg : label is "yes";
begin
  sync_stage3_s_reg_0 <= \^sync_stage3_s_reg_0\;
busy_d_s_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^sync_stage3_s_reg_0\,
      I1 => busy_s_0(0),
      I2 => start_s,
      O => busy_s
    );
\start_acq2_s_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => s00_axi_reset,
      I1 => \^sync_stage3_s_reg_0\,
      I2 => start_acq2_s_reg,
      I3 => start_o,
      O => s00_axi_reset_1
    );
start_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000054"
    )
        port map (
      I0 => s00_axi_reset,
      I1 => start_o,
      I2 => start_s,
      I3 => \^sync_stage3_s_reg_0\,
      I4 => busy_s_0(0),
      O => s00_axi_reset_0
    );
sync_stage0_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => busy_s_1,
      Q => sync_stage0_s,
      R => '0'
    );
sync_stage1_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sync_stage0_s,
      Q => sync_stage1_s,
      R => '0'
    );
sync_stage2_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sync_stage1_s,
      Q => sync_stage2_s,
      R => '0'
    );
sync_stage3_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sync_stage2_s,
      Q => \^sync_stage3_s_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dataReal_to_ram_1_0_dataReal_to_ram_handCom is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    \select_chan_s_reg[0]\ : out STD_LOGIC;
    read_en_s : out STD_LOGIC;
    addr_s : out STD_LOGIC_VECTOR ( 1 downto 0 );
    select_chan_s : out STD_LOGIC;
    s00_axi_reset_0 : out STD_LOGIC;
    ram_reinit_s : out STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    incr_addr_s : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dataReal_to_ram_1_0_dataReal_to_ram_handCom : entity is "dataReal_to_ram_handCom";
end double_dds_dataReal_to_ram_1_0_dataReal_to_ram_handCom;

architecture STRUCTURE of double_dds_dataReal_to_ram_1_0_dataReal_to_ram_handCom is
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
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ram_addr_s[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of start_o_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of start_o_i_2 : label is "soft_lutpair3";
begin
  addr_s(1 downto 0) <= \^addr_s\(1 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  read_en_s <= \^read_en_s\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
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
      I1 => axi_rvalid_reg_n_0,
      I2 => s00_axi_arvalid,
      I3 => \^axi_arready_reg_0\,
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
\ram_addr_s[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => s00_axi_reset,
      I1 => \^addr_s\(0),
      I2 => write_en_s,
      I3 => \^addr_s\(1),
      O => s00_axi_reset_0
    );
\ram_addr_s[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => incr_addr_s,
      I1 => \^addr_s\(0),
      I2 => \^addr_s\(1),
      I3 => axi_rvalid_reg_n_0,
      I4 => s00_axi_arvalid,
      I5 => \^axi_arready_reg_0\,
      O => select_chan_s
    );
\readdata_s[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => axi_rvalid_reg_n_0,
      O => \^read_en_s\
    );
\select_chan_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C060C060C000C0C"
    )
        port map (
      I0 => \^read_en_s\,
      I1 => incr_addr_s,
      I2 => s00_axi_reset,
      I3 => \^addr_s\(0),
      I4 => write_en_s,
      I5 => \^addr_s\(1),
      O => \select_chan_s_reg[0]\
    );
start_o_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^addr_s\(1),
      I1 => write_addr_s(0),
      I2 => write_en_s,
      O => ram_reinit_s
    );
start_o_i_2: unisim.vcomponents.LUT4
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    mem_reg_1_0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout_b : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \readdata_s_reg[16]\ : in STD_LOGIC;
    busy_s_1 : in STD_LOGIC;
    data2_en_i : in STD_LOGIC;
    \sample_cpt_s_reg__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    data2_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addr_b : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage : entity is "dataReal_to_ram_storage";
end double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage;

architecture STRUCTURE of double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage is
  signal \res_s[1]_2\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal we_even_s : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 65536;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "data32_top_inst/subtop_loop[1].data_subtop_inst/half_axi_bits.ram_even/mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg_0 : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg_0 : label is 8;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0 : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0 : label is 8;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d7";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d7";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 65536;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "data32_top_inst/subtop_loop[1].data_subtop_inst/half_axi_bits.ram_even/mem";
  attribute bram_addr_begin of mem_reg_1 : label is 0;
  attribute bram_addr_end of mem_reg_1 : label is 4095;
  attribute bram_slice_begin of mem_reg_1 : label is 9;
  attribute bram_slice_end of mem_reg_1 : label is 15;
  attribute ram_addr_begin of mem_reg_1 : label is 0;
  attribute ram_addr_end of mem_reg_1 : label is 4095;
  attribute ram_offset of mem_reg_1 : label is 0;
  attribute ram_slice_begin of mem_reg_1 : label is 9;
  attribute ram_slice_end of mem_reg_1 : label is 15;
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
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => ADDRARDADDR(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addr_b(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data2_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => data2_i(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => data2_i(8),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 6) => mem_reg_1_0(3 downto 2),
      DOBDO(5 downto 4) => \res_s[1]_2\(5 downto 4),
      DOBDO(3 downto 2) => mem_reg_1_0(1 downto 0),
      DOBDO(1 downto 0) => \res_s[1]_2\(1 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => mem_reg_1_0(4),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => we_even_s,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => we_even_s,
      WEA(2) => we_even_s,
      WEA(1) => we_even_s,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\mem_reg_0_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => busy_s_1,
      I1 => data2_en_i,
      I2 => \sample_cpt_s_reg__0\(0),
      O => we_even_s
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
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => ADDRARDADDR(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addr_b(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data2_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 7) => B"0000000000000000000000000",
      DIADI(6) => data2_i(13),
      DIADI(5) => data2_i(13),
      DIADI(4 downto 0) => data2_i(13 downto 9),
      DIBDI(31 downto 0) => B"00000000000000000000000001111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 7) => NLW_mem_reg_1_DOBDO_UNCONNECTED(31 downto 7),
      DOBDO(6) => mem_reg_1_0(9),
      DOBDO(5) => \res_s[1]_2\(14),
      DOBDO(4 downto 2) => mem_reg_1_0(8 downto 6),
      DOBDO(1) => \res_s[1]_2\(10),
      DOBDO(0) => mem_reg_1_0(5),
      DOPADOP(3 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => we_even_s,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => we_even_s,
      WEA(2) => we_even_s,
      WEA(1) => we_even_s,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\readdata_s[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[1]_2\(0),
      I2 => dout_b(0),
      I3 => \readdata_s_reg[16]\,
      I4 => addr_s(1),
      O => D(0)
    );
\readdata_s[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[1]_2\(1),
      I2 => dout_b(1),
      I3 => \readdata_s_reg[16]\,
      I4 => addr_s(1),
      O => D(1)
    );
\readdata_s[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[1]_2\(4),
      I2 => dout_b(2),
      I3 => \readdata_s_reg[16]\,
      I4 => addr_s(1),
      O => D(2)
    );
\readdata_s[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[1]_2\(5),
      I2 => dout_b(3),
      I3 => \readdata_s_reg[16]\,
      I4 => addr_s(1),
      O => D(3)
    );
\readdata_s[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[1]_2\(10),
      I2 => dout_b(4),
      I3 => \readdata_s_reg[16]\,
      I4 => addr_s(1),
      O => D(4)
    );
\readdata_s[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[1]_2\(14),
      I2 => dout_b(5),
      I3 => \readdata_s_reg[16]\,
      I4 => addr_s(1),
      O => D(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    dout_b : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \readdata_s_reg[31]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readdata_s_reg[18]\ : in STD_LOGIC;
    busy_s_1 : in STD_LOGIC;
    data2_en_i : in STD_LOGIC;
    \sample_cpt_s_reg__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    data2_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addr_b : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_0 : entity is "dataReal_to_ram_storage";
end double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_0;

architecture STRUCTURE of double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_0 is
  signal \res_s[1]_2\ : STD_LOGIC_VECTOR ( 31 downto 18 );
  signal we_odd_s : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 65536;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "data32_top_inst/subtop_loop[1].data_subtop_inst/half_axi_bits.ram_odd/mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg_0 : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg_0 : label is 8;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0 : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0 : label is 8;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d7";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d7";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 65536;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "data32_top_inst/subtop_loop[1].data_subtop_inst/half_axi_bits.ram_odd/mem";
  attribute bram_addr_begin of mem_reg_1 : label is 0;
  attribute bram_addr_end of mem_reg_1 : label is 4095;
  attribute bram_slice_begin of mem_reg_1 : label is 9;
  attribute bram_slice_end of mem_reg_1 : label is 15;
  attribute ram_addr_begin of mem_reg_1 : label is 0;
  attribute ram_addr_end of mem_reg_1 : label is 4095;
  attribute ram_offset of mem_reg_1 : label is 0;
  attribute ram_slice_begin of mem_reg_1 : label is 9;
  attribute ram_slice_end of mem_reg_1 : label is 15;
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
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => ADDRARDADDR(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addr_b(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data2_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => data2_i(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => data2_i(8),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 6) => \res_s[1]_2\(23 downto 22),
      DOBDO(5 downto 4) => dout_b(3 downto 2),
      DOBDO(3 downto 2) => \res_s[1]_2\(19 downto 18),
      DOBDO(1 downto 0) => dout_b(1 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => \res_s[1]_2\(24),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => we_odd_s,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => we_odd_s,
      WEA(2) => we_odd_s,
      WEA(1) => we_odd_s,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\mem_reg_0_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => busy_s_1,
      I1 => data2_en_i,
      I2 => \sample_cpt_s_reg__0\(0),
      O => we_odd_s
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
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => ADDRARDADDR(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addr_b(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data2_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 7) => B"0000000000000000000000000",
      DIADI(6) => data2_i(13),
      DIADI(5) => data2_i(13),
      DIADI(4 downto 0) => data2_i(13 downto 9),
      DIBDI(31 downto 0) => B"00000000000000000000000001111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 7) => NLW_mem_reg_1_DOBDO_UNCONNECTED(31 downto 7),
      DOBDO(6) => \res_s[1]_2\(31),
      DOBDO(5) => dout_b(5),
      DOBDO(4 downto 2) => \res_s[1]_2\(29 downto 27),
      DOBDO(1) => dout_b(4),
      DOBDO(0) => \res_s[1]_2\(25),
      DOPADOP(3 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => we_odd_s,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => we_odd_s,
      WEA(2) => we_odd_s,
      WEA(1) => we_odd_s,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\readdata_s[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[1]_2\(18),
      I1 => \readdata_s_reg[31]\(0),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[18]\,
      O => D(0)
    );
\readdata_s[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[1]_2\(19),
      I1 => \readdata_s_reg[31]\(1),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[18]\,
      O => D(1)
    );
\readdata_s[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[1]_2\(22),
      I1 => \readdata_s_reg[31]\(2),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[18]\,
      O => D(2)
    );
\readdata_s[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[1]_2\(23),
      I1 => \readdata_s_reg[31]\(3),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[18]\,
      O => D(3)
    );
\readdata_s[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[1]_2\(24),
      I1 => \readdata_s_reg[31]\(4),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[18]\,
      O => D(4)
    );
\readdata_s[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[1]_2\(25),
      I1 => \readdata_s_reg[31]\(5),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[18]\,
      O => D(5)
    );
\readdata_s[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[1]_2\(27),
      I1 => \readdata_s_reg[31]\(6),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[18]\,
      O => D(6)
    );
\readdata_s[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[1]_2\(28),
      I1 => \readdata_s_reg[31]\(7),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[18]\,
      O => D(7)
    );
\readdata_s[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[1]_2\(29),
      I1 => \readdata_s_reg[31]\(8),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[18]\,
      O => D(8)
    );
\readdata_s[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[1]_2\(31),
      I1 => \readdata_s_reg[31]\(9),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[18]\,
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_reg_1_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \readdata_s_reg[0]\ : in STD_LOGIC;
    dout_b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    busy_s : in STD_LOGIC;
    busy_s_1 : in STD_LOGIC;
    data1_en_i : in STD_LOGIC;
    \sample_cpt_s_reg__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addr_b : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data1_i : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_1 : entity is "dataReal_to_ram_storage";
end double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_1;

architecture STRUCTURE of double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_1 is
  signal \res_s[0]_1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal we_even_s : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 65536;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "data32_top_inst/subtop_loop[0].data_subtop_inst/half_axi_bits.ram_even/mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg_0 : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg_0 : label is 8;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0 : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0 : label is 8;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d7";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d7";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 65536;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "data32_top_inst/subtop_loop[0].data_subtop_inst/half_axi_bits.ram_even/mem";
  attribute bram_addr_begin of mem_reg_1 : label is 0;
  attribute bram_addr_end of mem_reg_1 : label is 4095;
  attribute bram_slice_begin of mem_reg_1 : label is 9;
  attribute bram_slice_end of mem_reg_1 : label is 15;
  attribute ram_addr_begin of mem_reg_1 : label is 0;
  attribute ram_addr_end of mem_reg_1 : label is 4095;
  attribute ram_offset of mem_reg_1 : label is 0;
  attribute ram_slice_begin of mem_reg_1 : label is 9;
  attribute ram_slice_end of mem_reg_1 : label is 15;
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
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => ADDRARDADDR(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addr_b(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data1_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => data1_i(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => data1_i(8),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7) => mem_reg_1_0(3),
      DOBDO(6) => \res_s[0]_1\(6),
      DOBDO(5) => mem_reg_1_0(2),
      DOBDO(4) => \res_s[0]_1\(4),
      DOBDO(3) => mem_reg_1_0(1),
      DOBDO(2) => \res_s[0]_1\(2),
      DOBDO(1) => mem_reg_1_0(0),
      DOBDO(0) => \res_s[0]_1\(0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => mem_reg_1_0(4),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => we_even_s,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => we_even_s,
      WEA(2) => we_even_s,
      WEA(1) => we_even_s,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => busy_s_1,
      I1 => data1_en_i,
      I2 => \sample_cpt_s_reg__0\(0),
      O => we_even_s
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
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => ADDRARDADDR(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addr_b(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data1_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 7) => B"0000000000000000000000000",
      DIADI(6) => data1_i(13),
      DIADI(5) => data1_i(13),
      DIADI(4 downto 0) => data1_i(13 downto 9),
      DIBDI(31 downto 0) => B"00000000000000000000000001111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 7) => NLW_mem_reg_1_DOBDO_UNCONNECTED(31 downto 7),
      DOBDO(6) => \res_s[0]_1\(15),
      DOBDO(5) => mem_reg_1_0(7),
      DOBDO(4) => \res_s[0]_1\(13),
      DOBDO(3) => mem_reg_1_0(6),
      DOBDO(2) => \res_s[0]_1\(11),
      DOBDO(1) => mem_reg_1_0(5),
      DOBDO(0) => \res_s[0]_1\(9),
      DOPADOP(3 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => we_even_s,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => we_even_s,
      WEA(2) => we_even_s,
      WEA(1) => we_even_s,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\readdata_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE4FFFFFFE400FF"
    )
        port map (
      I0 => \readdata_s_reg[0]\,
      I1 => \res_s[0]_1\(0),
      I2 => dout_b(0),
      I3 => addr_s(0),
      I4 => addr_s(1),
      I5 => busy_s,
      O => D(0)
    );
\readdata_s[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[0]_1\(11),
      I2 => dout_b(5),
      I3 => \readdata_s_reg[0]\,
      I4 => addr_s(1),
      O => D(5)
    );
\readdata_s[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[0]_1\(13),
      I2 => dout_b(6),
      I3 => \readdata_s_reg[0]\,
      I4 => addr_s(1),
      O => D(6)
    );
\readdata_s[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[0]_1\(15),
      I2 => dout_b(7),
      I3 => \readdata_s_reg[0]\,
      I4 => addr_s(1),
      O => D(7)
    );
\readdata_s[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[0]_1\(2),
      I2 => dout_b(1),
      I3 => \readdata_s_reg[0]\,
      I4 => addr_s(1),
      O => D(1)
    );
\readdata_s[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[0]_1\(4),
      I2 => dout_b(2),
      I3 => \readdata_s_reg[0]\,
      I4 => addr_s(1),
      O => D(2)
    );
\readdata_s[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[0]_1\(6),
      I2 => dout_b(3),
      I3 => \readdata_s_reg[0]\,
      I4 => addr_s(1),
      O => D(3)
    );
\readdata_s[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[0]_1\(9),
      I2 => dout_b(4),
      I3 => \readdata_s_reg[0]\,
      I4 => addr_s(1),
      O => D(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_2 is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dout_b : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \readdata_s_reg[14]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readdata_s_reg[1]\ : in STD_LOGIC;
    busy_s_1 : in STD_LOGIC;
    data1_en_i : in STD_LOGIC;
    \sample_cpt_s_reg__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addr_b : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data1_i : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_2 : entity is "dataReal_to_ram_storage";
end double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_2;

architecture STRUCTURE of double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_2 is
  signal \res_s[0]_1\ : STD_LOGIC_VECTOR ( 30 downto 17 );
  signal we_odd_s : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 65536;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "data32_top_inst/subtop_loop[0].data_subtop_inst/half_axi_bits.ram_odd/mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg_0 : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg_0 : label is 8;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0 : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0 : label is 8;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d7";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d7";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 65536;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "data32_top_inst/subtop_loop[0].data_subtop_inst/half_axi_bits.ram_odd/mem";
  attribute bram_addr_begin of mem_reg_1 : label is 0;
  attribute bram_addr_end of mem_reg_1 : label is 4095;
  attribute bram_slice_begin of mem_reg_1 : label is 9;
  attribute bram_slice_end of mem_reg_1 : label is 15;
  attribute ram_addr_begin of mem_reg_1 : label is 0;
  attribute ram_addr_end of mem_reg_1 : label is 4095;
  attribute ram_offset of mem_reg_1 : label is 0;
  attribute ram_slice_begin of mem_reg_1 : label is 9;
  attribute ram_slice_end of mem_reg_1 : label is 15;
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
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => ADDRARDADDR(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addr_b(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data1_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => data1_i(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => data1_i(8),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7) => \res_s[0]_1\(23),
      DOBDO(6) => dout_b(3),
      DOBDO(5) => \res_s[0]_1\(21),
      DOBDO(4) => dout_b(2),
      DOBDO(3) => \res_s[0]_1\(19),
      DOBDO(2) => dout_b(1),
      DOBDO(1) => \res_s[0]_1\(17),
      DOBDO(0) => dout_b(0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => \res_s[0]_1\(24),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => we_odd_s,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => we_odd_s,
      WEA(2) => we_odd_s,
      WEA(1) => we_odd_s,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\mem_reg_0_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => busy_s_1,
      I1 => data1_en_i,
      I2 => \sample_cpt_s_reg__0\(0),
      O => we_odd_s
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
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => ADDRARDADDR(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addr_b(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data1_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 7) => B"0000000000000000000000000",
      DIADI(6) => data1_i(13),
      DIADI(5) => data1_i(13),
      DIADI(4 downto 0) => data1_i(13 downto 9),
      DIBDI(31 downto 0) => B"00000000000000000000000001111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 7) => NLW_mem_reg_1_DOBDO_UNCONNECTED(31 downto 7),
      DOBDO(6) => dout_b(7),
      DOBDO(5) => \res_s[0]_1\(30),
      DOBDO(4) => dout_b(6),
      DOBDO(3) => \res_s[0]_1\(28),
      DOBDO(2) => dout_b(5),
      DOBDO(1) => \res_s[0]_1\(26),
      DOBDO(0) => dout_b(4),
      DOPADOP(3 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => we_odd_s,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => we_odd_s,
      WEA(2) => we_odd_s,
      WEA(1) => we_odd_s,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\readdata_s[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[0]_1\(26),
      I1 => \readdata_s_reg[14]\(5),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[1]\,
      O => D(5)
    );
\readdata_s[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[0]_1\(28),
      I1 => \readdata_s_reg[14]\(6),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[1]\,
      O => D(6)
    );
\readdata_s[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[0]_1\(30),
      I1 => \readdata_s_reg[14]\(7),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[1]\,
      O => D(7)
    );
\readdata_s[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[0]_1\(17),
      I1 => \readdata_s_reg[14]\(0),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[1]\,
      O => D(0)
    );
\readdata_s[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[0]_1\(19),
      I1 => \readdata_s_reg[14]\(1),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[1]\,
      O => D(1)
    );
\readdata_s[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[0]_1\(21),
      I1 => \readdata_s_reg[14]\(2),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[1]\,
      O => D(2)
    );
\readdata_s[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[0]_1\(23),
      I1 => \readdata_s_reg[14]\(3),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[1]\,
      O => D(3)
    );
\readdata_s[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \res_s[0]_1\(24),
      I1 => \readdata_s_reg[14]\(4),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[1]\,
      O => D(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dataReal_to_ram_1_0_wb_dataReal_to_ram is
  port (
    start_o : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_reinit_s : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dataReal_to_ram_1_0_wb_dataReal_to_ram : entity is "wb_dataReal_to_ram";
end double_dds_dataReal_to_ram_1_0_wb_dataReal_to_ram;

architecture STRUCTURE of double_dds_dataReal_to_ram_1_0_wb_dataReal_to_ram is
begin
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
      D => ram_reinit_s,
      Q => start_o,
      R => '0'
    );
wbs_read_ack_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => E(0),
      Q => s00_axi_rvalid,
      R => s00_axi_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dataReal_to_ram_1_0_dataReal_to_ram_subtop is
  port (
    sync_stage3_s_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset_0 : out STD_LOGIC;
    busy_s : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    start_o : in STD_LOGIC;
    start_s : in STD_LOGIC;
    busy_s_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readdata_s_reg[18]\ : in STD_LOGIC;
    addr_b : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_en_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dataReal_to_ram_1_0_dataReal_to_ram_subtop : entity is "dataReal_to_ram_subtop";
end double_dds_dataReal_to_ram_1_0_dataReal_to_ram_subtop;

architecture STRUCTURE of double_dds_dataReal_to_ram_1_0_dataReal_to_ram_subtop is
  signal busy_s_1 : STD_LOGIC;
  signal \busy_s_i_2__0_n_0\ : STD_LOGIC;
  signal \busy_s_i_3__0_n_0\ : STD_LOGIC;
  signal \busy_s_i_4__0_n_0\ : STD_LOGIC;
  signal \busy_s_i_5__0_n_0\ : STD_LOGIC;
  signal busy_sync_n_3 : STD_LOGIC;
  signal \res_s[1]_2\ : STD_LOGIC_VECTOR ( 30 downto 2 );
  signal sample_cpt_s0 : STD_LOGIC;
  signal \sample_cpt_s[0]_i_3__0_n_0\ : STD_LOGIC;
  signal sample_cpt_s_reg : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \sample_cpt_s_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \sample_cpt_s_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \sample_cpt_s_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \sample_cpt_s_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \sample_cpt_s_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \sample_cpt_s_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \sample_cpt_s_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \sample_cpt_s_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \sample_cpt_s_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \sample_cpt_s_reg__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal start_acq2_s_reg_n_0 : STD_LOGIC;
  signal sync_start_n_0 : STD_LOGIC;
  signal \NLW_sample_cpt_s_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sample_cpt_s_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
\busy_s_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D000000000000000"
    )
        port map (
      I0 => sample_cpt_s_reg(5),
      I1 => sample_cpt_s_reg(3),
      I2 => sample_cpt_s_reg(2),
      I3 => sample_cpt_s_reg(4),
      I4 => \sample_cpt_s_reg__0\(0),
      I5 => sample_cpt_s_reg(1),
      O => \busy_s_i_2__0_n_0\
    );
\busy_s_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D500D500D500D5"
    )
        port map (
      I0 => sample_cpt_s_reg(11),
      I1 => sample_cpt_s_reg(9),
      I2 => sample_cpt_s_reg(10),
      I3 => sample_cpt_s_reg(8),
      I4 => sample_cpt_s_reg(6),
      I5 => sample_cpt_s_reg(7),
      O => \busy_s_i_3__0_n_0\
    );
\busy_s_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => sample_cpt_s_reg(11),
      I1 => sample_cpt_s_reg(12),
      I2 => data2_en_i,
      I3 => busy_s_1,
      I4 => \busy_s_i_5__0_n_0\,
      O => \busy_s_i_4__0_n_0\
    );
\busy_s_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sample_cpt_s_reg(10),
      I1 => sample_cpt_s_reg(8),
      I2 => sample_cpt_s_reg(7),
      I3 => sample_cpt_s_reg(5),
      O => \busy_s_i_5__0_n_0\
    );
busy_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => sync_start_n_0,
      Q => busy_s_1,
      R => '0'
    );
busy_sync: entity work.\double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__3\
     port map (
      busy_s => busy_s,
      busy_s_0(0) => busy_s_0(0),
      busy_s_1 => busy_s_1,
      data2_clk_i => data2_clk_i,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      s00_axi_reset_0 => s00_axi_reset_0,
      s00_axi_reset_1 => busy_sync_n_3,
      start_acq2_s_reg => start_acq2_s_reg_n_0,
      start_o => start_o,
      start_s => start_s,
      sync_stage3_s_reg_0 => sync_stage3_s_reg(0)
    );
\half_axi_bits.ram_even\: entity work.double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage
     port map (
      ADDRARDADDR(11 downto 0) => sample_cpt_s_reg(12 downto 1),
      D(5) => D(14),
      D(4) => D(10),
      D(3 downto 2) => D(5 downto 4),
      D(1 downto 0) => D(1 downto 0),
      addr_b(11 downto 0) => addr_b(11 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_s_1 => busy_s_1,
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(13 downto 0) => data2_i(13 downto 0),
      dout_b(5) => \res_s[1]_2\(30),
      dout_b(4) => \res_s[1]_2\(26),
      dout_b(3 downto 2) => \res_s[1]_2\(21 downto 20),
      dout_b(1 downto 0) => \res_s[1]_2\(17 downto 16),
      mem_reg_1_0(9) => \res_s[1]_2\(15),
      mem_reg_1_0(8 downto 6) => \res_s[1]_2\(13 downto 11),
      mem_reg_1_0(5 downto 2) => \res_s[1]_2\(9 downto 6),
      mem_reg_1_0(1 downto 0) => \res_s[1]_2\(3 downto 2),
      \readdata_s_reg[16]\ => \readdata_s_reg[18]\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      \sample_cpt_s_reg__0\(0) => \sample_cpt_s_reg__0\(0)
    );
\half_axi_bits.ram_odd\: entity work.double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_0
     port map (
      ADDRARDADDR(11 downto 0) => sample_cpt_s_reg(12 downto 1),
      D(9) => D(15),
      D(8 downto 6) => D(13 downto 11),
      D(5 downto 2) => D(9 downto 6),
      D(1 downto 0) => D(3 downto 2),
      addr_b(11 downto 0) => addr_b(11 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_s_1 => busy_s_1,
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(13 downto 0) => data2_i(13 downto 0),
      dout_b(5) => \res_s[1]_2\(30),
      dout_b(4) => \res_s[1]_2\(26),
      dout_b(3 downto 2) => \res_s[1]_2\(21 downto 20),
      dout_b(1 downto 0) => \res_s[1]_2\(17 downto 16),
      \readdata_s_reg[18]\ => \readdata_s_reg[18]\,
      \readdata_s_reg[31]\(9) => \res_s[1]_2\(15),
      \readdata_s_reg[31]\(8 downto 6) => \res_s[1]_2\(13 downto 11),
      \readdata_s_reg[31]\(5 downto 2) => \res_s[1]_2\(9 downto 6),
      \readdata_s_reg[31]\(1 downto 0) => \res_s[1]_2\(3 downto 2),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      \sample_cpt_s_reg__0\(0) => \sample_cpt_s_reg__0\(0)
    );
\sample_cpt_s[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data2_rst_i,
      I1 => busy_s_1,
      O => sample_cpt_s0
    );
\sample_cpt_s[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sample_cpt_s_reg__0\(0),
      O => \sample_cpt_s[0]_i_3__0_n_0\
    );
\sample_cpt_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \sample_cpt_s_reg[0]_i_2__0_n_7\,
      Q => \sample_cpt_s_reg__0\(0),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sample_cpt_s_reg[0]_i_2__0_n_0\,
      CO(2) => \sample_cpt_s_reg[0]_i_2__0_n_1\,
      CO(1) => \sample_cpt_s_reg[0]_i_2__0_n_2\,
      CO(0) => \sample_cpt_s_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sample_cpt_s_reg[0]_i_2__0_n_4\,
      O(2) => \sample_cpt_s_reg[0]_i_2__0_n_5\,
      O(1) => \sample_cpt_s_reg[0]_i_2__0_n_6\,
      O(0) => \sample_cpt_s_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => sample_cpt_s_reg(3 downto 1),
      S(0) => \sample_cpt_s[0]_i_3__0_n_0\
    );
\sample_cpt_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \sample_cpt_s_reg[8]_i_1__0_n_5\,
      Q => sample_cpt_s_reg(10),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \sample_cpt_s_reg[8]_i_1__0_n_4\,
      Q => sample_cpt_s_reg(11),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \sample_cpt_s_reg[12]_i_1__0_n_7\,
      Q => sample_cpt_s_reg(12),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_cpt_s_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_sample_cpt_s_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_sample_cpt_s_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \sample_cpt_s_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => sample_cpt_s_reg(12)
    );
\sample_cpt_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \sample_cpt_s_reg[0]_i_2__0_n_6\,
      Q => sample_cpt_s_reg(1),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \sample_cpt_s_reg[0]_i_2__0_n_5\,
      Q => sample_cpt_s_reg(2),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \sample_cpt_s_reg[0]_i_2__0_n_4\,
      Q => sample_cpt_s_reg(3),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \sample_cpt_s_reg[4]_i_1__0_n_7\,
      Q => sample_cpt_s_reg(4),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_cpt_s_reg[0]_i_2__0_n_0\,
      CO(3) => \sample_cpt_s_reg[4]_i_1__0_n_0\,
      CO(2) => \sample_cpt_s_reg[4]_i_1__0_n_1\,
      CO(1) => \sample_cpt_s_reg[4]_i_1__0_n_2\,
      CO(0) => \sample_cpt_s_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sample_cpt_s_reg[4]_i_1__0_n_4\,
      O(2) => \sample_cpt_s_reg[4]_i_1__0_n_5\,
      O(1) => \sample_cpt_s_reg[4]_i_1__0_n_6\,
      O(0) => \sample_cpt_s_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => sample_cpt_s_reg(7 downto 4)
    );
\sample_cpt_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \sample_cpt_s_reg[4]_i_1__0_n_6\,
      Q => sample_cpt_s_reg(5),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \sample_cpt_s_reg[4]_i_1__0_n_5\,
      Q => sample_cpt_s_reg(6),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \sample_cpt_s_reg[4]_i_1__0_n_4\,
      Q => sample_cpt_s_reg(7),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \sample_cpt_s_reg[8]_i_1__0_n_7\,
      Q => sample_cpt_s_reg(8),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_cpt_s_reg[4]_i_1__0_n_0\,
      CO(3) => \sample_cpt_s_reg[8]_i_1__0_n_0\,
      CO(2) => \sample_cpt_s_reg[8]_i_1__0_n_1\,
      CO(1) => \sample_cpt_s_reg[8]_i_1__0_n_2\,
      CO(0) => \sample_cpt_s_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sample_cpt_s_reg[8]_i_1__0_n_4\,
      O(2) => \sample_cpt_s_reg[8]_i_1__0_n_5\,
      O(1) => \sample_cpt_s_reg[8]_i_1__0_n_6\,
      O(0) => \sample_cpt_s_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => sample_cpt_s_reg(11 downto 8)
    );
\sample_cpt_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \sample_cpt_s_reg[8]_i_1__0_n_6\,
      Q => sample_cpt_s_reg(9),
      R => sample_cpt_s0
    );
start_acq2_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => busy_sync_n_3,
      Q => start_acq2_s_reg_n_0,
      R => '0'
    );
sync_start: entity work.double_dds_dataReal_to_ram_1_0_dataReal_sync
     port map (
      busy_s_1 => busy_s_1,
      busy_s_reg => sync_start_n_0,
      busy_s_reg_0 => \busy_s_i_2__0_n_0\,
      busy_s_reg_1 => \busy_s_i_3__0_n_0\,
      busy_s_reg_2 => \busy_s_i_4__0_n_0\,
      data2_clk_i => data2_clk_i,
      data2_rst_i => data2_rst_i,
      s00_axi_aclk => s00_axi_aclk,
      sync_stage0_s_reg_0 => start_acq2_s_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \double_dds_dataReal_to_ram_1_0_dataReal_to_ram_subtop__xdcDup__1\ is
  port (
    busy_s_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    busy_d_s : in STD_LOGIC;
    start_s : in STD_LOGIC;
    interrupt_o_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \readdata_s_reg[1]\ : in STD_LOGIC;
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    busy_s : in STD_LOGIC;
    start_o : in STD_LOGIC;
    addr_b : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data1_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \double_dds_dataReal_to_ram_1_0_dataReal_to_ram_subtop__xdcDup__1\ : entity is "dataReal_to_ram_subtop";
end \double_dds_dataReal_to_ram_1_0_dataReal_to_ram_subtop__xdcDup__1\;

architecture STRUCTURE of \double_dds_dataReal_to_ram_1_0_dataReal_to_ram_subtop__xdcDup__1\ is
  signal busy_s_1 : STD_LOGIC;
  signal busy_s_i_2_n_0 : STD_LOGIC;
  signal busy_s_i_3_n_0 : STD_LOGIC;
  signal busy_s_i_4_n_0 : STD_LOGIC;
  signal busy_s_i_5_n_0 : STD_LOGIC;
  signal busy_sync_n_2 : STD_LOGIC;
  signal \res_s[0]_1\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal sample_cpt_s0 : STD_LOGIC;
  signal \sample_cpt_s[0]_i_3_n_0\ : STD_LOGIC;
  signal sample_cpt_s_reg : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \sample_cpt_s_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sample_cpt_s_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \sample_cpt_s_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \sample_cpt_s_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \sample_cpt_s_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \sample_cpt_s_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \sample_cpt_s_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \sample_cpt_s_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \sample_cpt_s_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \sample_cpt_s_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sample_cpt_s_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \sample_cpt_s_reg__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal start_acq2_s : STD_LOGIC;
  signal sync_start_n_0 : STD_LOGIC;
  signal \NLW_sample_cpt_s_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sample_cpt_s_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
busy_s_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D000000000000000"
    )
        port map (
      I0 => sample_cpt_s_reg(5),
      I1 => sample_cpt_s_reg(3),
      I2 => sample_cpt_s_reg(2),
      I3 => sample_cpt_s_reg(4),
      I4 => \sample_cpt_s_reg__0\(0),
      I5 => sample_cpt_s_reg(1),
      O => busy_s_i_2_n_0
    );
busy_s_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D500D500D500D5"
    )
        port map (
      I0 => sample_cpt_s_reg(11),
      I1 => sample_cpt_s_reg(9),
      I2 => sample_cpt_s_reg(10),
      I3 => sample_cpt_s_reg(8),
      I4 => sample_cpt_s_reg(6),
      I5 => sample_cpt_s_reg(7),
      O => busy_s_i_3_n_0
    );
busy_s_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => sample_cpt_s_reg(11),
      I1 => sample_cpt_s_reg(12),
      I2 => data1_en_i,
      I3 => busy_s_1,
      I4 => busy_s_i_5_n_0,
      O => busy_s_i_4_n_0
    );
busy_s_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sample_cpt_s_reg(10),
      I1 => sample_cpt_s_reg(8),
      I2 => sample_cpt_s_reg(7),
      I3 => sample_cpt_s_reg(5),
      O => busy_s_i_5_n_0
    );
busy_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => sync_start_n_0,
      Q => busy_s_1,
      R => '0'
    );
busy_sync: entity work.\double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__1\
     port map (
      busy_d_s => busy_d_s,
      busy_s_0(0) => busy_s_0(0),
      busy_s_1 => busy_s_1,
      data1_clk_i => data1_clk_i,
      interrupt_o_reg(0) => interrupt_o_reg(0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      s00_axi_reset_0 => s00_axi_reset_0,
      s00_axi_reset_1 => busy_sync_n_2,
      start_acq2_s => start_acq2_s,
      start_o => start_o,
      start_s => start_s
    );
\half_axi_bits.ram_even\: entity work.double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_1
     port map (
      ADDRARDADDR(11 downto 0) => sample_cpt_s_reg(12 downto 1),
      D(7) => D(15),
      D(6) => D(13),
      D(5) => D(11),
      D(4) => D(9),
      D(3) => D(6),
      D(2) => D(4),
      D(1) => D(2),
      D(0) => D(0),
      addr_b(11 downto 0) => addr_b(11 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_s => busy_s,
      busy_s_1 => busy_s_1,
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_i(13 downto 0) => data1_i(13 downto 0),
      dout_b(7) => \res_s[0]_1\(31),
      dout_b(6) => \res_s[0]_1\(29),
      dout_b(5) => \res_s[0]_1\(27),
      dout_b(4) => \res_s[0]_1\(25),
      dout_b(3) => \res_s[0]_1\(22),
      dout_b(2) => \res_s[0]_1\(20),
      dout_b(1) => \res_s[0]_1\(18),
      dout_b(0) => \res_s[0]_1\(16),
      mem_reg_1_0(7) => \res_s[0]_1\(14),
      mem_reg_1_0(6) => \res_s[0]_1\(12),
      mem_reg_1_0(5) => \res_s[0]_1\(10),
      mem_reg_1_0(4 downto 3) => \res_s[0]_1\(8 downto 7),
      mem_reg_1_0(2) => \res_s[0]_1\(5),
      mem_reg_1_0(1) => \res_s[0]_1\(3),
      mem_reg_1_0(0) => \res_s[0]_1\(1),
      \readdata_s_reg[0]\ => \readdata_s_reg[1]\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      \sample_cpt_s_reg__0\(0) => \sample_cpt_s_reg__0\(0)
    );
\half_axi_bits.ram_odd\: entity work.double_dds_dataReal_to_ram_1_0_dataReal_to_ram_storage_2
     port map (
      ADDRARDADDR(11 downto 0) => sample_cpt_s_reg(12 downto 1),
      D(7) => D(14),
      D(6) => D(12),
      D(5) => D(10),
      D(4 downto 3) => D(8 downto 7),
      D(2) => D(5),
      D(1) => D(3),
      D(0) => D(1),
      addr_b(11 downto 0) => addr_b(11 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_s_1 => busy_s_1,
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_i(13 downto 0) => data1_i(13 downto 0),
      dout_b(7) => \res_s[0]_1\(31),
      dout_b(6) => \res_s[0]_1\(29),
      dout_b(5) => \res_s[0]_1\(27),
      dout_b(4) => \res_s[0]_1\(25),
      dout_b(3) => \res_s[0]_1\(22),
      dout_b(2) => \res_s[0]_1\(20),
      dout_b(1) => \res_s[0]_1\(18),
      dout_b(0) => \res_s[0]_1\(16),
      \readdata_s_reg[14]\(7) => \res_s[0]_1\(14),
      \readdata_s_reg[14]\(6) => \res_s[0]_1\(12),
      \readdata_s_reg[14]\(5) => \res_s[0]_1\(10),
      \readdata_s_reg[14]\(4 downto 3) => \res_s[0]_1\(8 downto 7),
      \readdata_s_reg[14]\(2) => \res_s[0]_1\(5),
      \readdata_s_reg[14]\(1) => \res_s[0]_1\(3),
      \readdata_s_reg[14]\(0) => \res_s[0]_1\(1),
      \readdata_s_reg[1]\ => \readdata_s_reg[1]\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      \sample_cpt_s_reg__0\(0) => \sample_cpt_s_reg__0\(0)
    );
\sample_cpt_s[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data1_rst_i,
      I1 => busy_s_1,
      O => sample_cpt_s0
    );
\sample_cpt_s[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sample_cpt_s_reg__0\(0),
      O => \sample_cpt_s[0]_i_3_n_0\
    );
\sample_cpt_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \sample_cpt_s_reg[0]_i_2_n_7\,
      Q => \sample_cpt_s_reg__0\(0),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sample_cpt_s_reg[0]_i_2_n_0\,
      CO(2) => \sample_cpt_s_reg[0]_i_2_n_1\,
      CO(1) => \sample_cpt_s_reg[0]_i_2_n_2\,
      CO(0) => \sample_cpt_s_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sample_cpt_s_reg[0]_i_2_n_4\,
      O(2) => \sample_cpt_s_reg[0]_i_2_n_5\,
      O(1) => \sample_cpt_s_reg[0]_i_2_n_6\,
      O(0) => \sample_cpt_s_reg[0]_i_2_n_7\,
      S(3 downto 1) => sample_cpt_s_reg(3 downto 1),
      S(0) => \sample_cpt_s[0]_i_3_n_0\
    );
\sample_cpt_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \sample_cpt_s_reg[8]_i_1_n_5\,
      Q => sample_cpt_s_reg(10),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \sample_cpt_s_reg[8]_i_1_n_4\,
      Q => sample_cpt_s_reg(11),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \sample_cpt_s_reg[12]_i_1_n_7\,
      Q => sample_cpt_s_reg(12),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_cpt_s_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_sample_cpt_s_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_sample_cpt_s_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \sample_cpt_s_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => sample_cpt_s_reg(12)
    );
\sample_cpt_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \sample_cpt_s_reg[0]_i_2_n_6\,
      Q => sample_cpt_s_reg(1),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \sample_cpt_s_reg[0]_i_2_n_5\,
      Q => sample_cpt_s_reg(2),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \sample_cpt_s_reg[0]_i_2_n_4\,
      Q => sample_cpt_s_reg(3),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \sample_cpt_s_reg[4]_i_1_n_7\,
      Q => sample_cpt_s_reg(4),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_cpt_s_reg[0]_i_2_n_0\,
      CO(3) => \sample_cpt_s_reg[4]_i_1_n_0\,
      CO(2) => \sample_cpt_s_reg[4]_i_1_n_1\,
      CO(1) => \sample_cpt_s_reg[4]_i_1_n_2\,
      CO(0) => \sample_cpt_s_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sample_cpt_s_reg[4]_i_1_n_4\,
      O(2) => \sample_cpt_s_reg[4]_i_1_n_5\,
      O(1) => \sample_cpt_s_reg[4]_i_1_n_6\,
      O(0) => \sample_cpt_s_reg[4]_i_1_n_7\,
      S(3 downto 0) => sample_cpt_s_reg(7 downto 4)
    );
\sample_cpt_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \sample_cpt_s_reg[4]_i_1_n_6\,
      Q => sample_cpt_s_reg(5),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \sample_cpt_s_reg[4]_i_1_n_5\,
      Q => sample_cpt_s_reg(6),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \sample_cpt_s_reg[4]_i_1_n_4\,
      Q => sample_cpt_s_reg(7),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \sample_cpt_s_reg[8]_i_1_n_7\,
      Q => sample_cpt_s_reg(8),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_cpt_s_reg[4]_i_1_n_0\,
      CO(3) => \sample_cpt_s_reg[8]_i_1_n_0\,
      CO(2) => \sample_cpt_s_reg[8]_i_1_n_1\,
      CO(1) => \sample_cpt_s_reg[8]_i_1_n_2\,
      CO(0) => \sample_cpt_s_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sample_cpt_s_reg[8]_i_1_n_4\,
      O(2) => \sample_cpt_s_reg[8]_i_1_n_5\,
      O(1) => \sample_cpt_s_reg[8]_i_1_n_6\,
      O(0) => \sample_cpt_s_reg[8]_i_1_n_7\,
      S(3 downto 0) => sample_cpt_s_reg(11 downto 8)
    );
\sample_cpt_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \sample_cpt_s_reg[8]_i_1_n_6\,
      Q => sample_cpt_s_reg(9),
      R => sample_cpt_s0
    );
start_acq2_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => busy_sync_n_2,
      Q => start_acq2_s,
      R => '0'
    );
sync_start: entity work.\double_dds_dataReal_to_ram_1_0_dataReal_sync__xdcDup__2\
     port map (
      busy_s_1 => busy_s_1,
      busy_s_reg => sync_start_n_0,
      busy_s_reg_0 => busy_s_i_2_n_0,
      busy_s_reg_1 => busy_s_i_3_n_0,
      busy_s_reg_2 => busy_s_i_4_n_0,
      data1_clk_i => data1_clk_i,
      data1_rst_i => data1_rst_i,
      s00_axi_aclk => s00_axi_aclk,
      start_acq2_s => start_acq2_s
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dataReal_to_ram_1_0_dataReal_to_ram_top is
  port (
    incr_addr_s : out STD_LOGIC;
    s00_axi_reset_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    busy_s : out STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    \ram_addr_s_reg[11]_0\ : in STD_LOGIC;
    select_chan_s : in STD_LOGIC;
    \select_chan_s_reg[0]_0\ : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    start_o : in STD_LOGIC;
    busy_d_s : in STD_LOGIC;
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data1_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data2_en_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dataReal_to_ram_1_0_dataReal_to_ram_top : entity is "dataReal_to_ram_top";
end double_dds_dataReal_to_ram_1_0_dataReal_to_ram_top;

architecture STRUCTURE of double_dds_dataReal_to_ram_1_0_dataReal_to_ram_top is
  signal \^busy_s\ : STD_LOGIC;
  signal busy_s_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^incr_addr_s\ : STD_LOGIC;
  signal \ram_addr_s[0]_i_4_n_0\ : STD_LOGIC;
  signal ram_addr_s_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \ram_addr_s_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \ram_addr_s_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \ram_addr_s_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \ram_addr_s_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \ram_addr_s_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \ram_addr_s_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \ram_addr_s_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \ram_addr_s_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \ram_addr_s_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_s_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ram_addr_s_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ram_addr_s_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ram_addr_s_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ram_addr_s_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ram_addr_s_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ram_addr_s_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ram_addr_s_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ram_addr_s_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ram_addr_s_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ram_addr_s_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ram_addr_s_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ram_addr_s_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ram_addr_s_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal start_s : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_1\ : STD_LOGIC;
  signal \NLW_ram_addr_s_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  busy_s <= \^busy_s\;
  incr_addr_s <= \^incr_addr_s\;
\ram_addr_s[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_addr_s_reg(0),
      O => \ram_addr_s[0]_i_4_n_0\
    );
\ram_addr_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => select_chan_s,
      D => \ram_addr_s_reg[0]_i_3_n_7\,
      Q => ram_addr_s_reg(0),
      R => \ram_addr_s_reg[11]_0\
    );
\ram_addr_s_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ram_addr_s_reg[0]_i_3_n_0\,
      CO(2) => \ram_addr_s_reg[0]_i_3_n_1\,
      CO(1) => \ram_addr_s_reg[0]_i_3_n_2\,
      CO(0) => \ram_addr_s_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ram_addr_s_reg[0]_i_3_n_4\,
      O(2) => \ram_addr_s_reg[0]_i_3_n_5\,
      O(1) => \ram_addr_s_reg[0]_i_3_n_6\,
      O(0) => \ram_addr_s_reg[0]_i_3_n_7\,
      S(3 downto 1) => ram_addr_s_reg(3 downto 1),
      S(0) => \ram_addr_s[0]_i_4_n_0\
    );
\ram_addr_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => select_chan_s,
      D => \ram_addr_s_reg[8]_i_1_n_5\,
      Q => ram_addr_s_reg(10),
      R => \ram_addr_s_reg[11]_0\
    );
\ram_addr_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => select_chan_s,
      D => \ram_addr_s_reg[8]_i_1_n_4\,
      Q => ram_addr_s_reg(11),
      R => \ram_addr_s_reg[11]_0\
    );
\ram_addr_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => select_chan_s,
      D => \ram_addr_s_reg[0]_i_3_n_6\,
      Q => ram_addr_s_reg(1),
      R => \ram_addr_s_reg[11]_0\
    );
\ram_addr_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => select_chan_s,
      D => \ram_addr_s_reg[0]_i_3_n_5\,
      Q => ram_addr_s_reg(2),
      R => \ram_addr_s_reg[11]_0\
    );
\ram_addr_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => select_chan_s,
      D => \ram_addr_s_reg[0]_i_3_n_4\,
      Q => ram_addr_s_reg(3),
      R => \ram_addr_s_reg[11]_0\
    );
\ram_addr_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => select_chan_s,
      D => \ram_addr_s_reg[4]_i_1_n_7\,
      Q => ram_addr_s_reg(4),
      R => \ram_addr_s_reg[11]_0\
    );
\ram_addr_s_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ram_addr_s_reg[0]_i_3_n_0\,
      CO(3) => \ram_addr_s_reg[4]_i_1_n_0\,
      CO(2) => \ram_addr_s_reg[4]_i_1_n_1\,
      CO(1) => \ram_addr_s_reg[4]_i_1_n_2\,
      CO(0) => \ram_addr_s_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ram_addr_s_reg[4]_i_1_n_4\,
      O(2) => \ram_addr_s_reg[4]_i_1_n_5\,
      O(1) => \ram_addr_s_reg[4]_i_1_n_6\,
      O(0) => \ram_addr_s_reg[4]_i_1_n_7\,
      S(3 downto 0) => ram_addr_s_reg(7 downto 4)
    );
\ram_addr_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => select_chan_s,
      D => \ram_addr_s_reg[4]_i_1_n_6\,
      Q => ram_addr_s_reg(5),
      R => \ram_addr_s_reg[11]_0\
    );
\ram_addr_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => select_chan_s,
      D => \ram_addr_s_reg[4]_i_1_n_5\,
      Q => ram_addr_s_reg(6),
      R => \ram_addr_s_reg[11]_0\
    );
\ram_addr_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => select_chan_s,
      D => \ram_addr_s_reg[4]_i_1_n_4\,
      Q => ram_addr_s_reg(7),
      R => \ram_addr_s_reg[11]_0\
    );
\ram_addr_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => select_chan_s,
      D => \ram_addr_s_reg[8]_i_1_n_7\,
      Q => ram_addr_s_reg(8),
      R => \ram_addr_s_reg[11]_0\
    );
\ram_addr_s_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ram_addr_s_reg[4]_i_1_n_0\,
      CO(3) => \NLW_ram_addr_s_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ram_addr_s_reg[8]_i_1_n_1\,
      CO(1) => \ram_addr_s_reg[8]_i_1_n_2\,
      CO(0) => \ram_addr_s_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ram_addr_s_reg[8]_i_1_n_4\,
      O(2) => \ram_addr_s_reg[8]_i_1_n_5\,
      O(1) => \ram_addr_s_reg[8]_i_1_n_6\,
      O(0) => \ram_addr_s_reg[8]_i_1_n_7\,
      S(3 downto 0) => ram_addr_s_reg(11 downto 8)
    );
\ram_addr_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => select_chan_s,
      D => \ram_addr_s_reg[8]_i_1_n_6\,
      Q => ram_addr_s_reg(9),
      R => \ram_addr_s_reg[11]_0\
    );
\select_chan_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \select_chan_s_reg[0]_0\,
      Q => \^incr_addr_s\,
      R => '0'
    );
start_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \subtop_loop[1].data_subtop_inst_n_1\,
      Q => start_s,
      R => '0'
    );
\subtop_loop[0].data_subtop_inst\: entity work.\double_dds_dataReal_to_ram_1_0_dataReal_to_ram_subtop__xdcDup__1\
     port map (
      D(15 downto 0) => D(15 downto 0),
      addr_b(11 downto 0) => ram_addr_s_reg(11 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_d_s => busy_d_s,
      busy_s => \^busy_s\,
      busy_s_0(0) => busy_s_0(0),
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_i(13 downto 0) => data1_i(13 downto 0),
      data1_rst_i => data1_rst_i,
      interrupt_o_reg(0) => busy_s_0(1),
      \readdata_s_reg[1]\ => \^incr_addr_s\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      s00_axi_reset_0 => s00_axi_reset_0,
      start_o => start_o,
      start_s => start_s
    );
\subtop_loop[1].data_subtop_inst\: entity work.double_dds_dataReal_to_ram_1_0_dataReal_to_ram_subtop
     port map (
      D(15 downto 0) => D(31 downto 16),
      addr_b(11 downto 0) => ram_addr_s_reg(11 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_s => \^busy_s\,
      busy_s_0(0) => busy_s_0(0),
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(13 downto 0) => data2_i(13 downto 0),
      data2_rst_i => data2_rst_i,
      \readdata_s_reg[18]\ => \^incr_addr_s\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      s00_axi_reset_0 => \subtop_loop[1].data_subtop_inst_n_1\,
      start_o => start_o,
      start_s => start_s,
      sync_stage3_s_reg(0) => busy_s_0(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_dds_dataReal_to_ram_1_0_dataReal_to_ram is
  port (
    data1_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data1_eof_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_en_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    data2_eof_i : in STD_LOGIC;
    data3_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data3_en_i : in STD_LOGIC;
    data3_clk_i : in STD_LOGIC;
    data3_rst_i : in STD_LOGIC;
    data3_eof_i : in STD_LOGIC;
    data4_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data4_en_i : in STD_LOGIC;
    data4_clk_i : in STD_LOGIC;
    data4_rst_i : in STD_LOGIC;
    data4_eof_i : in STD_LOGIC;
    data5_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data5_en_i : in STD_LOGIC;
    data5_clk_i : in STD_LOGIC;
    data5_rst_i : in STD_LOGIC;
    data5_eof_i : in STD_LOGIC;
    data6_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data6_en_i : in STD_LOGIC;
    data6_clk_i : in STD_LOGIC;
    data6_rst_i : in STD_LOGIC;
    data6_eof_i : in STD_LOGIC;
    data7_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data7_en_i : in STD_LOGIC;
    data7_clk_i : in STD_LOGIC;
    data7_rst_i : in STD_LOGIC;
    data7_eof_i : in STD_LOGIC;
    data8_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data8_en_i : in STD_LOGIC;
    data8_clk_i : in STD_LOGIC;
    data8_rst_i : in STD_LOGIC;
    data8_eof_i : in STD_LOGIC;
    data9_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data9_en_i : in STD_LOGIC;
    data9_clk_i : in STD_LOGIC;
    data9_rst_i : in STD_LOGIC;
    data9_eof_i : in STD_LOGIC;
    data10_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data10_en_i : in STD_LOGIC;
    data10_clk_i : in STD_LOGIC;
    data10_rst_i : in STD_LOGIC;
    data10_eof_i : in STD_LOGIC;
    data11_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data11_en_i : in STD_LOGIC;
    data11_clk_i : in STD_LOGIC;
    data11_rst_i : in STD_LOGIC;
    data11_eof_i : in STD_LOGIC;
    data12_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data12_en_i : in STD_LOGIC;
    data12_clk_i : in STD_LOGIC;
    data12_rst_i : in STD_LOGIC;
    data12_eof_i : in STD_LOGIC;
    interrupt_o : out STD_LOGIC;
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
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of double_dds_dataReal_to_ram_1_0_dataReal_to_ram : entity is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of double_dds_dataReal_to_ram_1_0_dataReal_to_ram : entity is 32;
  attribute DATA_FORMAT : string;
  attribute DATA_FORMAT of double_dds_dataReal_to_ram_1_0_dataReal_to_ram : entity is "signed";
  attribute DATA_SIZE : integer;
  attribute DATA_SIZE of double_dds_dataReal_to_ram_1_0_dataReal_to_ram : entity is 14;
  attribute NB_INPUT : integer;
  attribute NB_INPUT of double_dds_dataReal_to_ram_1_0_dataReal_to_ram : entity is 2;
  attribute NB_SAMPLE : integer;
  attribute NB_SAMPLE of double_dds_dataReal_to_ram_1_0_dataReal_to_ram : entity is 8192;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_dds_dataReal_to_ram_1_0_dataReal_to_ram : entity is "dataReal_to_ram";
  attribute USE_EOF : string;
  attribute USE_EOF of double_dds_dataReal_to_ram_1_0_dataReal_to_ram : entity is "FALSE";
end double_dds_dataReal_to_ram_1_0_dataReal_to_ram;

architecture STRUCTURE of double_dds_dataReal_to_ram_1_0_dataReal_to_ram is
  signal \<const0>\ : STD_LOGIC;
  signal addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal busy_d_s : STD_LOGIC;
  signal busy_s : STD_LOGIC;
  signal data32_top_inst_n_1 : STD_LOGIC;
  signal handle_comm_n_4 : STD_LOGIC;
  signal handle_comm_n_9 : STD_LOGIC;
  signal incr_addr_s : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ram_reinit_s : STD_LOGIC;
  signal read_en_s : STD_LOGIC;
  signal select_chan_s : STD_LOGIC;
  signal start_o : STD_LOGIC;
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
busy_d_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => busy_s,
      Q => busy_d_s,
      R => s00_axi_reset
    );
data32_top_inst: entity work.double_dds_dataReal_to_ram_1_0_dataReal_to_ram_top
     port map (
      D(31 downto 0) => p_0_in(31 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_d_s => busy_d_s,
      busy_s => busy_s,
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_i(13 downto 0) => data1_i(13 downto 0),
      data1_rst_i => data1_rst_i,
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(13 downto 0) => data2_i(13 downto 0),
      data2_rst_i => data2_rst_i,
      incr_addr_s => incr_addr_s,
      \ram_addr_s_reg[11]_0\ => handle_comm_n_9,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      s00_axi_reset_0 => data32_top_inst_n_1,
      select_chan_s => select_chan_s,
      \select_chan_s_reg[0]_0\ => handle_comm_n_4,
      start_o => start_o
    );
handle_comm: entity work.double_dds_dataReal_to_ram_1_0_dataReal_to_ram_handCom
     port map (
      addr_s(1 downto 0) => addr_s(1 downto 0),
      axi_arready_reg_0 => s00_axi_arready,
      axi_awready_reg_0 => s00_axi_awready,
      axi_wready_reg_0 => s00_axi_wready,
      incr_addr_s => incr_addr_s,
      ram_reinit_s => ram_reinit_s,
      read_en_s => read_en_s,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_reset => s00_axi_reset,
      s00_axi_reset_0 => handle_comm_n_9,
      s00_axi_rready => s00_axi_rready,
      s00_axi_wvalid => s00_axi_wvalid,
      select_chan_s => select_chan_s,
      \select_chan_s_reg[0]\ => handle_comm_n_4
    );
interrupt_o_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data32_top_inst_n_1,
      Q => interrupt_o,
      R => '0'
    );
wb_inst: entity work.double_dds_dataReal_to_ram_1_0_wb_dataReal_to_ram
     port map (
      D(31 downto 0) => p_0_in(31 downto 0),
      E(0) => read_en_s,
      ram_reinit_s => ram_reinit_s,
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
entity double_dds_dataReal_to_ram_1_0 is
  port (
    data1_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data1_eof_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_en_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    data2_eof_i : in STD_LOGIC;
    interrupt_o : out STD_LOGIC;
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
  attribute NotValidForBitStream of double_dds_dataReal_to_ram_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of double_dds_dataReal_to_ram_1_0 : entity is "double_dds_dataReal_to_ram_1_0,dataReal_to_ram,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of double_dds_dataReal_to_ram_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of double_dds_dataReal_to_ram_1_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of double_dds_dataReal_to_ram_1_0 : entity is "dataReal_to_ram,Vivado 2019.2";
end double_dds_dataReal_to_ram_1_0;

architecture STRUCTURE of double_dds_dataReal_to_ram_1_0 is
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of U0 : label is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of U0 : label is 32;
  attribute DATA_FORMAT : string;
  attribute DATA_FORMAT of U0 : label is "signed";
  attribute DATA_SIZE : integer;
  attribute DATA_SIZE of U0 : label is 14;
  attribute NB_INPUT : integer;
  attribute NB_INPUT of U0 : label is 2;
  attribute NB_SAMPLE : integer;
  attribute NB_SAMPLE of U0 : label is 8192;
  attribute USE_EOF : string;
  attribute USE_EOF of U0 : label is "FALSE";
  attribute x_interface_info : string;
  attribute x_interface_info of data1_clk_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA_CLK";
  attribute x_interface_info of data1_en_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA_EN";
  attribute x_interface_info of data1_eof_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA_EOF";
  attribute x_interface_info of data1_rst_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA_RST";
  attribute x_interface_info of data2_clk_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA_CLK";
  attribute x_interface_info of data2_en_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA_EN";
  attribute x_interface_info of data2_eof_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA_EOF";
  attribute x_interface_info of data2_rst_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA_RST";
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
  attribute x_interface_info of data1_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA";
  attribute x_interface_info of data2_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA";
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
U0: entity work.double_dds_dataReal_to_ram_1_0_dataReal_to_ram
     port map (
      data10_clk_i => '0',
      data10_en_i => '0',
      data10_eof_i => '0',
      data10_i(13 downto 0) => B"00000000000000",
      data10_rst_i => '0',
      data11_clk_i => '0',
      data11_en_i => '0',
      data11_eof_i => '0',
      data11_i(13 downto 0) => B"00000000000000",
      data11_rst_i => '0',
      data12_clk_i => '0',
      data12_en_i => '0',
      data12_eof_i => '0',
      data12_i(13 downto 0) => B"00000000000000",
      data12_rst_i => '0',
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_eof_i => data1_eof_i,
      data1_i(13 downto 0) => data1_i(13 downto 0),
      data1_rst_i => data1_rst_i,
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_eof_i => data2_eof_i,
      data2_i(13 downto 0) => data2_i(13 downto 0),
      data2_rst_i => data2_rst_i,
      data3_clk_i => '0',
      data3_en_i => '0',
      data3_eof_i => '0',
      data3_i(13 downto 0) => B"00000000000000",
      data3_rst_i => '0',
      data4_clk_i => '0',
      data4_en_i => '0',
      data4_eof_i => '0',
      data4_i(13 downto 0) => B"00000000000000",
      data4_rst_i => '0',
      data5_clk_i => '0',
      data5_en_i => '0',
      data5_eof_i => '0',
      data5_i(13 downto 0) => B"00000000000000",
      data5_rst_i => '0',
      data6_clk_i => '0',
      data6_en_i => '0',
      data6_eof_i => '0',
      data6_i(13 downto 0) => B"00000000000000",
      data6_rst_i => '0',
      data7_clk_i => '0',
      data7_en_i => '0',
      data7_eof_i => '0',
      data7_i(13 downto 0) => B"00000000000000",
      data7_rst_i => '0',
      data8_clk_i => '0',
      data8_en_i => '0',
      data8_eof_i => '0',
      data8_i(13 downto 0) => B"00000000000000",
      data8_rst_i => '0',
      data9_clk_i => '0',
      data9_en_i => '0',
      data9_eof_i => '0',
      data9_i(13 downto 0) => B"00000000000000",
      data9_rst_i => '0',
      interrupt_o => interrupt_o,
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
