-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sat May 30 19:56:00 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_iq_pid_vco_dataReal_to_ram_slow_0_sim_netlist.vhdl
-- Design      : double_iq_pid_vco_dataReal_to_ram_slow_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync is
  port (
    busy_s_reg : out STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    sync_stage0_s_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    busy_s : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    busy_s_reg_0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync is
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
\busy_s_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => busy_s,
      I1 => sync_stage3_s_reg_n_0,
      I2 => data2_rst_i,
      I3 => busy_s_reg_0,
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
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset_0 : out STD_LOGIC;
    sync_stage3_s_reg_0 : out STD_LOGIC;
    busy_s_0 : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    start_s : in STD_LOGIC;
    start_s_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_data_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset : in STD_LOGIC;
    start_acq2_s : in STD_LOGIC;
    start_o : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__1\ : entity is "dataReal_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__1\ is
  signal busy_s : STD_LOGIC_VECTOR ( 0 to 0 );
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
\readdata_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDAAAAFFFD"
    )
        port map (
      I0 => addr_s(0),
      I1 => start_s,
      I2 => busy_s(0),
      I3 => start_s_reg(0),
      I4 => addr_s(1),
      I5 => ram_data_i(0),
      O => D(0)
    );
start_acq2_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => s00_axi_reset,
      I1 => busy_s(0),
      I2 => start_acq2_s,
      I3 => start_o,
      O => s00_axi_reset_0
    );
start_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000054"
    )
        port map (
      I0 => busy_s(0),
      I1 => start_o,
      I2 => start_s,
      I3 => s00_axi_reset,
      I4 => start_s_reg(0),
      O => sync_stage3_s_reg_0
    );
sync_stage0_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => busy_s_0,
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
      Q => busy_s(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__2\ is
  port (
    busy_s_reg : out STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    start_acq2_s : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    busy_s_0 : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    busy_s_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__2\ : entity is "dataReal_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__2\ is
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
busy_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => busy_s_0,
      I1 => sync_stage3_s,
      I2 => data1_rst_i,
      I3 => busy_s_reg_0,
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
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__3\ is
  port (
    sync_stage3_s_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset_0 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    busy_s : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    start_acq2_s_reg : in STD_LOGIC;
    start_o : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__3\ : entity is "dataReal_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__3\ is
  signal sync_stage0_s : STD_LOGIC;
  signal sync_stage1_s : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of sync_stage1_s : signal is "true";
  signal sync_stage2_s : STD_LOGIC;
  attribute async_reg of sync_stage2_s : signal is "true";
  signal \^sync_stage3_s_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of sync_stage1_s_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of sync_stage1_s_reg : label is "yes";
  attribute ASYNC_REG_boolean of sync_stage2_s_reg : label is std.standard.true;
  attribute KEEP of sync_stage2_s_reg : label is "yes";
begin
  sync_stage3_s_reg_0(0) <= \^sync_stage3_s_reg_0\(0);
\start_acq2_s_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => s00_axi_reset,
      I1 => \^sync_stage3_s_reg_0\(0),
      I2 => start_acq2_s_reg,
      I3 => start_o,
      O => s00_axi_reset_0
    );
sync_stage0_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => busy_s,
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
      Q => \^sync_stage3_s_reg_0\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_handCom is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    \select_s_reg[0]\ : out STD_LOGIC;
    read_en_s : out STD_LOGIC;
    addr_s : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \select_chan_s_reg[0]\ : out STD_LOGIC;
    ram_reinit_s : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    select_s : in STD_LOGIC;
    \select_chan_s_reg[0]_0\ : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_handCom;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_handCom is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
  attribute SOFT_HLUTNM of \addr_reg[1]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \readdata_s[31]_i_1\ : label is "soft_lutpair14";
begin
  SR(0) <= \^sr\(0);
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
\ram_addr_s[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => s00_axi_reset,
      I1 => \^addr_s\(0),
      I2 => write_en_s,
      I3 => \^addr_s\(1),
      O => \^sr\(0)
    );
\ram_addr_s[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => select_s,
      I1 => \select_chan_s_reg[0]_0\,
      I2 => \^addr_s\(0),
      I3 => \^addr_s\(1),
      I4 => \^read_en_s\,
      O => E(0)
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
      INIT => X"5515004055550000"
    )
        port map (
      I0 => \^sr\(0),
      I1 => \^read_en_s\,
      I2 => \^addr_s\(1),
      I3 => \^addr_s\(0),
      I4 => \select_chan_s_reg[0]_0\,
      I5 => select_s,
      O => \select_chan_s_reg[0]\
    );
\select_s[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA6A"
    )
        port map (
      I0 => select_s,
      I1 => \^read_en_s\,
      I2 => \^addr_s\(1),
      I3 => \^addr_s\(0),
      I4 => \^sr\(0),
      O => \select_s_reg[0]\
    );
start_o_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \^addr_s\(1),
      I1 => \^axi_awready_reg_0\,
      I2 => \^axi_wready_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => \^addr_s\(0),
      O => ram_reinit_s
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage is
  port (
    mem_reg_0_0 : out STD_LOGIC;
    mem_reg_0_1 : out STD_LOGIC;
    mem_reg_0_2 : out STD_LOGIC;
    mem_reg_0_3 : out STD_LOGIC;
    mem_reg_0_4 : out STD_LOGIC;
    mem_reg_0_5 : out STD_LOGIC;
    mem_reg_0_6 : out STD_LOGIC;
    mem_reg_0_7 : out STD_LOGIC;
    mem_reg_0_8 : out STD_LOGIC;
    mem_reg_0_9 : out STD_LOGIC;
    mem_reg_0_10 : out STD_LOGIC;
    mem_reg_0_11 : out STD_LOGIC;
    mem_reg_0_12 : out STD_LOGIC;
    mem_reg_0_13 : out STD_LOGIC;
    mem_reg_0_14 : out STD_LOGIC;
    mem_reg_0_15 : out STD_LOGIC;
    mem_reg_0_16 : out STD_LOGIC;
    mem_reg_1_0 : out STD_LOGIC;
    mem_reg_1_1 : out STD_LOGIC;
    mem_reg_1_2 : out STD_LOGIC;
    mem_reg_1_3 : out STD_LOGIC;
    mem_reg_1_4 : out STD_LOGIC;
    mem_reg_1_5 : out STD_LOGIC;
    mem_reg_1_6 : out STD_LOGIC;
    mem_reg_1_7 : out STD_LOGIC;
    mem_reg_1_8 : out STD_LOGIC;
    mem_reg_1_9 : out STD_LOGIC;
    mem_reg_1_10 : out STD_LOGIC;
    mem_reg_1_11 : out STD_LOGIC;
    mem_reg_1_12 : out STD_LOGIC;
    mem_reg_1_13 : out STD_LOGIC;
    mem_reg_1_14 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dout_b : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \readdata_s_reg[1]\ : in STD_LOGIC;
    \readdata_s_reg[1]_0\ : in STD_LOGIC;
    data2_en_i : in STD_LOGIC;
    busy_s : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    mem_reg_0_17 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage is
  signal \array_val[1]_1\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal data_en_s : STD_LOGIC;
  signal mem_reg_0_n_52 : STD_LOGIC;
  signal mem_reg_0_n_53 : STD_LOGIC;
  signal mem_reg_0_n_54 : STD_LOGIC;
  signal mem_reg_0_n_55 : STD_LOGIC;
  signal mem_reg_0_n_56 : STD_LOGIC;
  signal mem_reg_0_n_57 : STD_LOGIC;
  signal mem_reg_0_n_58 : STD_LOGIC;
  signal mem_reg_0_n_59 : STD_LOGIC;
  signal mem_reg_0_n_60 : STD_LOGIC;
  signal mem_reg_0_n_61 : STD_LOGIC;
  signal mem_reg_0_n_62 : STD_LOGIC;
  signal mem_reg_0_n_63 : STD_LOGIC;
  signal mem_reg_0_n_64 : STD_LOGIC;
  signal mem_reg_0_n_65 : STD_LOGIC;
  signal mem_reg_0_n_66 : STD_LOGIC;
  signal mem_reg_0_n_74 : STD_LOGIC;
  signal mem_reg_0_n_75 : STD_LOGIC;
  signal mem_reg_1_n_54 : STD_LOGIC;
  signal mem_reg_1_n_55 : STD_LOGIC;
  signal mem_reg_1_n_56 : STD_LOGIC;
  signal mem_reg_1_n_57 : STD_LOGIC;
  signal mem_reg_1_n_58 : STD_LOGIC;
  signal mem_reg_1_n_59 : STD_LOGIC;
  signal mem_reg_1_n_60 : STD_LOGIC;
  signal mem_reg_1_n_61 : STD_LOGIC;
  signal mem_reg_1_n_62 : STD_LOGIC;
  signal mem_reg_1_n_63 : STD_LOGIC;
  signal mem_reg_1_n_64 : STD_LOGIC;
  signal mem_reg_1_n_65 : STD_LOGIC;
  signal mem_reg_1_n_66 : STD_LOGIC;
  signal mem_reg_1_n_67 : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_mem_reg_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_mem_reg_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal NLW_mem_reg_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p2_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 131072;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "data32_top_inst/subtop_loop[1].data_subtop_inst/gteq_axi_bits.ram_msb/mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg_0 : label is 2047;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg_0 : label is 17;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0 : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0 : label is 17;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p2_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 131072;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "data32_top_inst/subtop_loop[1].data_subtop_inst/gteq_axi_bits.ram_msb/mem";
  attribute bram_addr_begin of mem_reg_1 : label is 0;
  attribute bram_addr_end of mem_reg_1 : label is 2047;
  attribute bram_slice_begin of mem_reg_1 : label is 18;
  attribute bram_slice_end of mem_reg_1 : label is 35;
  attribute ram_addr_begin of mem_reg_1 : label is 0;
  attribute ram_addr_end of mem_reg_1 : label is 2047;
  attribute ram_offset of mem_reg_1 : label is 0;
  attribute ram_slice_begin of mem_reg_1 : label is 18;
  attribute ram_slice_end of mem_reg_1 : label is 35;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_2 : label is "p2_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_2 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_2 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_2 : label is 131072;
  attribute RTL_RAM_NAME of mem_reg_2 : label is "data32_top_inst/subtop_loop[1].data_subtop_inst/gteq_axi_bits.ram_msb/mem";
  attribute bram_addr_begin of mem_reg_2 : label is 0;
  attribute bram_addr_end of mem_reg_2 : label is 2047;
  attribute bram_slice_begin of mem_reg_2 : label is 36;
  attribute bram_slice_end of mem_reg_2 : label is 53;
  attribute ram_addr_begin of mem_reg_2 : label is 0;
  attribute ram_addr_end of mem_reg_2 : label is 2047;
  attribute ram_offset of mem_reg_2 : label is 0;
  attribute ram_slice_begin of mem_reg_2 : label is 36;
  attribute ram_slice_end of mem_reg_2 : label is 53;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_3 : label is "p0_d10";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_3 : label is "p0_d10";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_3 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_3 : label is 131072;
  attribute RTL_RAM_NAME of mem_reg_3 : label is "data32_top_inst/subtop_loop[1].data_subtop_inst/gteq_axi_bits.ram_msb/mem";
  attribute bram_addr_begin of mem_reg_3 : label is 0;
  attribute bram_addr_end of mem_reg_3 : label is 2047;
  attribute bram_slice_begin of mem_reg_3 : label is 54;
  attribute bram_slice_end of mem_reg_3 : label is 63;
  attribute ram_addr_begin of mem_reg_3 : label is 0;
  attribute ram_addr_end of mem_reg_3 : label is 2047;
  attribute ram_offset of mem_reg_3 : label is 0;
  attribute ram_slice_begin of mem_reg_3 : label is 54;
  attribute ram_slice_end of mem_reg_3 : label is 63;
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
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => mem_reg_0_17(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data2_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 0) => data2_i(15 downto 0),
      DIBDI(31 downto 0) => B"00000000000000001111111111111111",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1 downto 0) => data2_i(17 downto 16),
      DIPBDIP(3 downto 0) => B"0011",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 16) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 16),
      DOBDO(15) => mem_reg_0_n_52,
      DOBDO(14) => mem_reg_0_n_53,
      DOBDO(13) => mem_reg_0_n_54,
      DOBDO(12) => mem_reg_0_n_55,
      DOBDO(11) => mem_reg_0_n_56,
      DOBDO(10) => mem_reg_0_n_57,
      DOBDO(9) => mem_reg_0_n_58,
      DOBDO(8) => mem_reg_0_n_59,
      DOBDO(7) => mem_reg_0_n_60,
      DOBDO(6) => mem_reg_0_n_61,
      DOBDO(5) => mem_reg_0_n_62,
      DOBDO(4) => mem_reg_0_n_63,
      DOBDO(3) => mem_reg_0_n_64,
      DOBDO(2) => mem_reg_0_n_65,
      DOBDO(1) => mem_reg_0_n_66,
      DOBDO(0) => mem_reg_1_14(0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 2) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 2),
      DOPBDOP(1) => mem_reg_0_n_74,
      DOPBDOP(0) => mem_reg_0_n_75,
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => data_en_s,
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
      WEA(3) => data_en_s,
      WEA(2) => data_en_s,
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
\mem_reg_0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data2_en_i,
      I1 => busy_s,
      O => data_en_s
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
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => mem_reg_0_17(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data2_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 0) => data2_i(33 downto 18),
      DIBDI(31 downto 0) => B"00000000000000001111111111111111",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1 downto 0) => data2_i(35 downto 34),
      DIPBDIP(3 downto 0) => B"0011",
      DOADO(31 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 16) => NLW_mem_reg_1_DOBDO_UNCONNECTED(31 downto 16),
      DOBDO(15) => \array_val[1]_1\(1),
      DOBDO(14) => mem_reg_1_14(1),
      DOBDO(13) => mem_reg_1_n_54,
      DOBDO(12) => mem_reg_1_n_55,
      DOBDO(11) => mem_reg_1_n_56,
      DOBDO(10) => mem_reg_1_n_57,
      DOBDO(9) => mem_reg_1_n_58,
      DOBDO(8) => mem_reg_1_n_59,
      DOBDO(7) => mem_reg_1_n_60,
      DOBDO(6) => mem_reg_1_n_61,
      DOBDO(5) => mem_reg_1_n_62,
      DOBDO(4) => mem_reg_1_n_63,
      DOBDO(3) => mem_reg_1_n_64,
      DOBDO(2) => mem_reg_1_n_65,
      DOBDO(1) => mem_reg_1_n_66,
      DOBDO(0) => mem_reg_1_n_67,
      DOPADOP(3 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 2) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 2),
      DOPBDOP(1 downto 0) => \array_val[1]_1\(3 downto 2),
      ECCPARITY(7 downto 0) => NLW_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => data_en_s,
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
      WEA(3) => data_en_s,
      WEA(2) => data_en_s,
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_2: unisim.vcomponents.RAMB36E1
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
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => mem_reg_0_17(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data2_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 0) => data2_i(51 downto 36),
      DIBDI(31 downto 0) => B"00000000000000001111111111111111",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1 downto 0) => data2_i(53 downto 52),
      DIPBDIP(3 downto 0) => B"0011",
      DOADO(31 downto 0) => NLW_mem_reg_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 16) => NLW_mem_reg_2_DOBDO_UNCONNECTED(31 downto 16),
      DOBDO(15 downto 0) => \array_val[1]_1\(19 downto 4),
      DOPADOP(3 downto 0) => NLW_mem_reg_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 2) => NLW_mem_reg_2_DOPBDOP_UNCONNECTED(3 downto 2),
      DOPBDOP(1 downto 0) => \array_val[1]_1\(21 downto 20),
      ECCPARITY(7 downto 0) => NLW_mem_reg_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => data_en_s,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_2_SBITERR_UNCONNECTED,
      WEA(3) => data_en_s,
      WEA(2) => data_en_s,
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_3: unisim.vcomponents.RAMB36E1
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
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => mem_reg_0_17(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data2_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 10) => B"0000000000000000000000",
      DIADI(9 downto 0) => data2_i(63 downto 54),
      DIBDI(31 downto 0) => B"00000000000000000000001111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 10) => NLW_mem_reg_3_DOBDO_UNCONNECTED(31 downto 10),
      DOBDO(9 downto 0) => \array_val[1]_1\(31 downto 22),
      DOPADOP(3 downto 0) => NLW_mem_reg_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => data_en_s,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_3_SBITERR_UNCONNECTED,
      WEA(3) => data_en_s,
      WEA(2) => data_en_s,
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
\readdata_s[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_57,
      I1 => dout_b(9),
      I2 => \array_val[1]_1\(10),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_9
    );
\readdata_s[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_56,
      I1 => dout_b(10),
      I2 => \array_val[1]_1\(11),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_10
    );
\readdata_s[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_55,
      I1 => dout_b(11),
      I2 => \array_val[1]_1\(12),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_11
    );
\readdata_s[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_54,
      I1 => dout_b(12),
      I2 => \array_val[1]_1\(13),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_12
    );
\readdata_s[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_53,
      I1 => dout_b(13),
      I2 => \array_val[1]_1\(14),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_13
    );
\readdata_s[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_52,
      I1 => dout_b(14),
      I2 => \array_val[1]_1\(15),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_14
    );
\readdata_s[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_75,
      I1 => dout_b(15),
      I2 => \array_val[1]_1\(16),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_15
    );
\readdata_s[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_74,
      I1 => dout_b(16),
      I2 => \array_val[1]_1\(17),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_16
    );
\readdata_s[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_1_n_67,
      I1 => dout_b(17),
      I2 => \array_val[1]_1\(18),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_1_0
    );
\readdata_s[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_1_n_66,
      I1 => dout_b(18),
      I2 => \array_val[1]_1\(19),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_1_1
    );
\readdata_s[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_66,
      I1 => dout_b(0),
      I2 => \array_val[1]_1\(1),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_0
    );
\readdata_s[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_1_n_65,
      I1 => dout_b(19),
      I2 => \array_val[1]_1\(20),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_1_2
    );
\readdata_s[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_1_n_64,
      I1 => dout_b(20),
      I2 => \array_val[1]_1\(21),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_1_3
    );
\readdata_s[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_1_n_63,
      I1 => dout_b(21),
      I2 => \array_val[1]_1\(22),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_1_4
    );
\readdata_s[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_1_n_62,
      I1 => dout_b(22),
      I2 => \array_val[1]_1\(23),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_1_5
    );
\readdata_s[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_1_n_61,
      I1 => dout_b(23),
      I2 => \array_val[1]_1\(24),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_1_6
    );
\readdata_s[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_1_n_60,
      I1 => dout_b(24),
      I2 => \array_val[1]_1\(25),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_1_7
    );
\readdata_s[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_1_n_59,
      I1 => dout_b(25),
      I2 => \array_val[1]_1\(26),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_1_8
    );
\readdata_s[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_1_n_58,
      I1 => dout_b(26),
      I2 => \array_val[1]_1\(27),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_1_9
    );
\readdata_s[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_1_n_57,
      I1 => dout_b(27),
      I2 => \array_val[1]_1\(28),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_1_10
    );
\readdata_s[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_1_n_56,
      I1 => dout_b(28),
      I2 => \array_val[1]_1\(29),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_1_11
    );
\readdata_s[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_65,
      I1 => dout_b(1),
      I2 => \array_val[1]_1\(2),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_1
    );
\readdata_s[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_1_n_55,
      I1 => dout_b(29),
      I2 => \array_val[1]_1\(30),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_1_12
    );
\readdata_s[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_1_n_54,
      I1 => dout_b(30),
      I2 => \array_val[1]_1\(31),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_1_13
    );
\readdata_s[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_64,
      I1 => dout_b(2),
      I2 => \array_val[1]_1\(3),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_2
    );
\readdata_s[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_63,
      I1 => dout_b(3),
      I2 => \array_val[1]_1\(4),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_3
    );
\readdata_s[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_62,
      I1 => dout_b(4),
      I2 => \array_val[1]_1\(5),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_4
    );
\readdata_s[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_61,
      I1 => dout_b(5),
      I2 => \array_val[1]_1\(6),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_5
    );
\readdata_s[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_60,
      I1 => dout_b(6),
      I2 => \array_val[1]_1\(7),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_6
    );
\readdata_s[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_59,
      I1 => dout_b(7),
      I2 => \array_val[1]_1\(8),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_7
    );
\readdata_s[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => mem_reg_0_n_58,
      I1 => dout_b(8),
      I2 => \array_val[1]_1\(9),
      I3 => \readdata_s_reg[1]\,
      I4 => \readdata_s_reg[1]_0\,
      O => mem_reg_0_8
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    ram_data_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    dout_b : out STD_LOGIC_VECTOR ( 30 downto 0 );
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readdata_s_reg[31]\ : in STD_LOGIC;
    \readdata_s_reg[31]_0\ : in STD_LOGIC;
    \readdata_s_reg[31]_1\ : in STD_LOGIC;
    \readdata_s_reg[30]\ : in STD_LOGIC;
    \readdata_s_reg[2]\ : in STD_LOGIC;
    \readdata_s_reg[4]\ : in STD_LOGIC;
    \readdata_s_reg[6]\ : in STD_LOGIC;
    \readdata_s_reg[9]\ : in STD_LOGIC;
    \readdata_s_reg[11]\ : in STD_LOGIC;
    \readdata_s_reg[13]\ : in STD_LOGIC;
    \readdata_s_reg[15]\ : in STD_LOGIC;
    \readdata_s_reg[16]\ : in STD_LOGIC;
    \readdata_s_reg[17]\ : in STD_LOGIC;
    \readdata_s_reg[20]\ : in STD_LOGIC;
    \readdata_s_reg[21]\ : in STD_LOGIC;
    \readdata_s_reg[26]\ : in STD_LOGIC;
    \readdata_s_reg[29]\ : in STD_LOGIC;
    \readdata_s_reg[28]\ : in STD_LOGIC;
    \readdata_s_reg[27]\ : in STD_LOGIC;
    \readdata_s_reg[25]\ : in STD_LOGIC;
    \readdata_s_reg[24]\ : in STD_LOGIC;
    \readdata_s_reg[23]\ : in STD_LOGIC;
    \readdata_s_reg[22]\ : in STD_LOGIC;
    \readdata_s_reg[19]\ : in STD_LOGIC;
    \readdata_s_reg[18]\ : in STD_LOGIC;
    \readdata_s_reg[14]\ : in STD_LOGIC;
    \readdata_s_reg[12]\ : in STD_LOGIC;
    \readdata_s_reg[10]\ : in STD_LOGIC;
    \readdata_s_reg[8]\ : in STD_LOGIC;
    \readdata_s_reg[7]\ : in STD_LOGIC;
    \readdata_s_reg[5]\ : in STD_LOGIC;
    \readdata_s_reg[3]\ : in STD_LOGIC;
    \readdata_s_reg[1]\ : in STD_LOGIC;
    \readdata_s_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data1_en_i : in STD_LOGIC;
    busy_s_0 : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    mem_reg_0_0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    data1_i : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_0 : entity is "dataReal_to_ram_storage";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_0 is
  signal \array_val[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data_en_s : STD_LOGIC;
  signal mem_reg_0_n_52 : STD_LOGIC;
  signal mem_reg_0_n_53 : STD_LOGIC;
  signal mem_reg_0_n_54 : STD_LOGIC;
  signal mem_reg_0_n_55 : STD_LOGIC;
  signal mem_reg_0_n_56 : STD_LOGIC;
  signal mem_reg_0_n_57 : STD_LOGIC;
  signal mem_reg_0_n_58 : STD_LOGIC;
  signal mem_reg_0_n_59 : STD_LOGIC;
  signal mem_reg_0_n_60 : STD_LOGIC;
  signal mem_reg_0_n_61 : STD_LOGIC;
  signal mem_reg_0_n_62 : STD_LOGIC;
  signal mem_reg_0_n_63 : STD_LOGIC;
  signal mem_reg_0_n_64 : STD_LOGIC;
  signal mem_reg_0_n_65 : STD_LOGIC;
  signal mem_reg_0_n_66 : STD_LOGIC;
  signal mem_reg_0_n_67 : STD_LOGIC;
  signal mem_reg_0_n_74 : STD_LOGIC;
  signal mem_reg_0_n_75 : STD_LOGIC;
  signal mem_reg_1_n_54 : STD_LOGIC;
  signal mem_reg_1_n_55 : STD_LOGIC;
  signal mem_reg_1_n_56 : STD_LOGIC;
  signal mem_reg_1_n_57 : STD_LOGIC;
  signal mem_reg_1_n_58 : STD_LOGIC;
  signal mem_reg_1_n_59 : STD_LOGIC;
  signal mem_reg_1_n_60 : STD_LOGIC;
  signal mem_reg_1_n_61 : STD_LOGIC;
  signal mem_reg_1_n_62 : STD_LOGIC;
  signal mem_reg_1_n_63 : STD_LOGIC;
  signal mem_reg_1_n_64 : STD_LOGIC;
  signal mem_reg_1_n_65 : STD_LOGIC;
  signal mem_reg_1_n_66 : STD_LOGIC;
  signal mem_reg_1_n_67 : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_mem_reg_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_mem_reg_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal NLW_mem_reg_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p2_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 131072;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "data32_top_inst/subtop_loop[0].data_subtop_inst/gteq_axi_bits.ram_msb/mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg_0 : label is 2047;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg_0 : label is 17;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0 : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0 : label is 17;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p2_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 131072;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "data32_top_inst/subtop_loop[0].data_subtop_inst/gteq_axi_bits.ram_msb/mem";
  attribute bram_addr_begin of mem_reg_1 : label is 0;
  attribute bram_addr_end of mem_reg_1 : label is 2047;
  attribute bram_slice_begin of mem_reg_1 : label is 18;
  attribute bram_slice_end of mem_reg_1 : label is 35;
  attribute ram_addr_begin of mem_reg_1 : label is 0;
  attribute ram_addr_end of mem_reg_1 : label is 2047;
  attribute ram_offset of mem_reg_1 : label is 0;
  attribute ram_slice_begin of mem_reg_1 : label is 18;
  attribute ram_slice_end of mem_reg_1 : label is 35;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_2 : label is "p2_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_2 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_2 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_2 : label is 131072;
  attribute RTL_RAM_NAME of mem_reg_2 : label is "data32_top_inst/subtop_loop[0].data_subtop_inst/gteq_axi_bits.ram_msb/mem";
  attribute bram_addr_begin of mem_reg_2 : label is 0;
  attribute bram_addr_end of mem_reg_2 : label is 2047;
  attribute bram_slice_begin of mem_reg_2 : label is 36;
  attribute bram_slice_end of mem_reg_2 : label is 53;
  attribute ram_addr_begin of mem_reg_2 : label is 0;
  attribute ram_addr_end of mem_reg_2 : label is 2047;
  attribute ram_offset of mem_reg_2 : label is 0;
  attribute ram_slice_begin of mem_reg_2 : label is 36;
  attribute ram_slice_end of mem_reg_2 : label is 53;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_3 : label is "p0_d10";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_3 : label is "p0_d10";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_3 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_3 : label is 131072;
  attribute RTL_RAM_NAME of mem_reg_3 : label is "data32_top_inst/subtop_loop[0].data_subtop_inst/gteq_axi_bits.ram_msb/mem";
  attribute bram_addr_begin of mem_reg_3 : label is 0;
  attribute bram_addr_end of mem_reg_3 : label is 2047;
  attribute bram_slice_begin of mem_reg_3 : label is 54;
  attribute bram_slice_end of mem_reg_3 : label is 63;
  attribute ram_addr_begin of mem_reg_3 : label is 0;
  attribute ram_addr_end of mem_reg_3 : label is 2047;
  attribute ram_offset of mem_reg_3 : label is 0;
  attribute ram_slice_begin of mem_reg_3 : label is 54;
  attribute ram_slice_end of mem_reg_3 : label is 63;
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
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => mem_reg_0_0(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data1_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 0) => data1_i(15 downto 0),
      DIBDI(31 downto 0) => B"00000000000000001111111111111111",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1 downto 0) => data1_i(17 downto 16),
      DIPBDIP(3 downto 0) => B"0011",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 16) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 16),
      DOBDO(15) => mem_reg_0_n_52,
      DOBDO(14) => mem_reg_0_n_53,
      DOBDO(13) => mem_reg_0_n_54,
      DOBDO(12) => mem_reg_0_n_55,
      DOBDO(11) => mem_reg_0_n_56,
      DOBDO(10) => mem_reg_0_n_57,
      DOBDO(9) => mem_reg_0_n_58,
      DOBDO(8) => mem_reg_0_n_59,
      DOBDO(7) => mem_reg_0_n_60,
      DOBDO(6) => mem_reg_0_n_61,
      DOBDO(5) => mem_reg_0_n_62,
      DOBDO(4) => mem_reg_0_n_63,
      DOBDO(3) => mem_reg_0_n_64,
      DOBDO(2) => mem_reg_0_n_65,
      DOBDO(1) => mem_reg_0_n_66,
      DOBDO(0) => mem_reg_0_n_67,
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 2) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 2),
      DOPBDOP(1) => mem_reg_0_n_74,
      DOPBDOP(0) => mem_reg_0_n_75,
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => data_en_s,
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
      WEA(3) => data_en_s,
      WEA(2) => data_en_s,
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1_en_i,
      I1 => busy_s_0,
      O => data_en_s
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
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => mem_reg_0_0(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data1_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 0) => data1_i(33 downto 18),
      DIBDI(31 downto 0) => B"00000000000000001111111111111111",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1 downto 0) => data1_i(35 downto 34),
      DIPBDIP(3 downto 0) => B"0011",
      DOADO(31 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 16) => NLW_mem_reg_1_DOBDO_UNCONNECTED(31 downto 16),
      DOBDO(15) => dout_b(0),
      DOBDO(14) => \array_val[1]_0\(0),
      DOBDO(13) => mem_reg_1_n_54,
      DOBDO(12) => mem_reg_1_n_55,
      DOBDO(11) => mem_reg_1_n_56,
      DOBDO(10) => mem_reg_1_n_57,
      DOBDO(9) => mem_reg_1_n_58,
      DOBDO(8) => mem_reg_1_n_59,
      DOBDO(7) => mem_reg_1_n_60,
      DOBDO(6) => mem_reg_1_n_61,
      DOBDO(5) => mem_reg_1_n_62,
      DOBDO(4) => mem_reg_1_n_63,
      DOBDO(3) => mem_reg_1_n_64,
      DOBDO(2) => mem_reg_1_n_65,
      DOBDO(1) => mem_reg_1_n_66,
      DOBDO(0) => mem_reg_1_n_67,
      DOPADOP(3 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 2) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 2),
      DOPBDOP(1 downto 0) => dout_b(2 downto 1),
      ECCPARITY(7 downto 0) => NLW_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => data_en_s,
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
      WEA(3) => data_en_s,
      WEA(2) => data_en_s,
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_2: unisim.vcomponents.RAMB36E1
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
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => mem_reg_0_0(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data1_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 0) => data1_i(51 downto 36),
      DIBDI(31 downto 0) => B"00000000000000001111111111111111",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1 downto 0) => data1_i(53 downto 52),
      DIPBDIP(3 downto 0) => B"0011",
      DOADO(31 downto 0) => NLW_mem_reg_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 16) => NLW_mem_reg_2_DOBDO_UNCONNECTED(31 downto 16),
      DOBDO(15 downto 0) => dout_b(18 downto 3),
      DOPADOP(3 downto 0) => NLW_mem_reg_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 2) => NLW_mem_reg_2_DOPBDOP_UNCONNECTED(3 downto 2),
      DOPBDOP(1 downto 0) => dout_b(20 downto 19),
      ECCPARITY(7 downto 0) => NLW_mem_reg_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => data_en_s,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_2_SBITERR_UNCONNECTED,
      WEA(3) => data_en_s,
      WEA(2) => data_en_s,
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_3: unisim.vcomponents.RAMB36E1
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
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => mem_reg_0_0(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => data1_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_mem_reg_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 10) => B"0000000000000000000000",
      DIADI(9 downto 0) => data1_i(63 downto 54),
      DIBDI(31 downto 0) => B"00000000000000000000001111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 10) => NLW_mem_reg_3_DOBDO_UNCONNECTED(31 downto 10),
      DOBDO(9 downto 0) => dout_b(30 downto 21),
      DOPADOP(3 downto 0) => NLW_mem_reg_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => data_en_s,
      ENBWREN => '1',
      INJECTDBITERR => NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_3_SBITERR_UNCONNECTED,
      WEA(3) => data_en_s,
      WEA(2) => data_en_s,
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
\readdata_s[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \array_val[1]_0\(0),
      I1 => \readdata_s_reg[0]\(1),
      I2 => \readdata_s_reg[31]_0\,
      I3 => \readdata_s_reg[31]\,
      I4 => mem_reg_0_n_67,
      I5 => \readdata_s_reg[0]\(0),
      O => ram_data_i(0)
    );
\readdata_s[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_57,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[10]\,
      O => D(9)
    );
\readdata_s[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555FFFE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_56,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[11]\,
      O => D(10)
    );
\readdata_s[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_55,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[12]\,
      O => D(11)
    );
\readdata_s[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555FFFE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_54,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[13]\,
      O => D(12)
    );
\readdata_s[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_53,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[14]\,
      O => D(13)
    );
\readdata_s[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555FFFE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_52,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[15]\,
      O => D(14)
    );
\readdata_s[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555FFFE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_75,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[16]\,
      O => D(15)
    );
\readdata_s[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555FFFE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_74,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[17]\,
      O => D(16)
    );
\readdata_s[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_1_n_67,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[18]\,
      O => D(17)
    );
\readdata_s[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_1_n_66,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[19]\,
      O => D(18)
    );
\readdata_s[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_66,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[1]\,
      O => D(0)
    );
\readdata_s[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555FFFE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_1_n_65,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[20]\,
      O => D(19)
    );
\readdata_s[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555FFFE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_1_n_64,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[21]\,
      O => D(20)
    );
\readdata_s[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_1_n_63,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[22]\,
      O => D(21)
    );
\readdata_s[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_1_n_62,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[23]\,
      O => D(22)
    );
\readdata_s[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_1_n_61,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[24]\,
      O => D(23)
    );
\readdata_s[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_1_n_60,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[25]\,
      O => D(24)
    );
\readdata_s[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555FFFE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_1_n_59,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[26]\,
      O => D(25)
    );
\readdata_s[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_1_n_58,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[27]\,
      O => D(26)
    );
\readdata_s[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_1_n_57,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[28]\,
      O => D(27)
    );
\readdata_s[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_1_n_56,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[29]\,
      O => D(28)
    );
\readdata_s[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555FFFE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_65,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[2]\,
      O => D(1)
    );
\readdata_s[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555FFFE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_1_n_55,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[30]\,
      O => D(29)
    );
\readdata_s[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_1_n_54,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[31]_1\,
      O => D(30)
    );
\readdata_s[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_64,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[3]\,
      O => D(2)
    );
\readdata_s[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555FFFE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_63,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[4]\,
      O => D(3)
    );
\readdata_s[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_62,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[5]\,
      O => D(4)
    );
\readdata_s[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555FFFE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_61,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[6]\,
      O => D(5)
    );
\readdata_s[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_60,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[7]\,
      O => D(6)
    );
\readdata_s[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_59,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[8]\,
      O => D(7)
    );
\readdata_s[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555FFFE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => mem_reg_0_n_58,
      I2 => \readdata_s_reg[31]\,
      I3 => \readdata_s_reg[31]_0\,
      I4 => addr_s(1),
      I5 => \readdata_s_reg[9]\,
      O => D(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_dataReal_to_ram is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_dataReal_to_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_dataReal_to_ram is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop is
  port (
    sync_stage3_s_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_reg_0 : out STD_LOGIC;
    mem_reg_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_reg_0_0 : out STD_LOGIC;
    mem_reg_0_1 : out STD_LOGIC;
    mem_reg_0_2 : out STD_LOGIC;
    mem_reg_0_3 : out STD_LOGIC;
    mem_reg_0_4 : out STD_LOGIC;
    mem_reg_0_5 : out STD_LOGIC;
    mem_reg_0_6 : out STD_LOGIC;
    mem_reg_0_7 : out STD_LOGIC;
    mem_reg_0_8 : out STD_LOGIC;
    mem_reg_0_9 : out STD_LOGIC;
    mem_reg_0_10 : out STD_LOGIC;
    mem_reg_0_11 : out STD_LOGIC;
    mem_reg_0_12 : out STD_LOGIC;
    mem_reg_0_13 : out STD_LOGIC;
    mem_reg_0_14 : out STD_LOGIC;
    mem_reg_0_15 : out STD_LOGIC;
    mem_reg_1_0 : out STD_LOGIC;
    mem_reg_1_1 : out STD_LOGIC;
    mem_reg_1_2 : out STD_LOGIC;
    mem_reg_1_3 : out STD_LOGIC;
    mem_reg_1_4 : out STD_LOGIC;
    mem_reg_1_5 : out STD_LOGIC;
    mem_reg_1_6 : out STD_LOGIC;
    mem_reg_1_7 : out STD_LOGIC;
    mem_reg_1_8 : out STD_LOGIC;
    mem_reg_1_9 : out STD_LOGIC;
    mem_reg_1_10 : out STD_LOGIC;
    mem_reg_1_11 : out STD_LOGIC;
    mem_reg_1_12 : out STD_LOGIC;
    mem_reg_1_13 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    dout_b : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \readdata_s_reg[1]\ : in STD_LOGIC;
    \readdata_s_reg[1]_0\ : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    start_o : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data2_en_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop is
  signal busy_s : STD_LOGIC;
  signal \busy_s_i_2__0_n_0\ : STD_LOGIC;
  signal \busy_s_i_3__0_n_0\ : STD_LOGIC;
  signal \busy_s_i_4__0_n_0\ : STD_LOGIC;
  signal \busy_s_i_5__0_n_0\ : STD_LOGIC;
  signal busy_sync_n_1 : STD_LOGIC;
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sample_cpt_s0 : STD_LOGIC;
  signal \sample_cpt_s[10]_i_3__0_n_0\ : STD_LOGIC;
  signal sample_cpt_s_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal start_acq2_s_reg_n_0 : STD_LOGIC;
  signal sync_start_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sample_cpt_s[1]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sample_cpt_s[2]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sample_cpt_s[3]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sample_cpt_s[4]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sample_cpt_s[6]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sample_cpt_s[7]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sample_cpt_s[8]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sample_cpt_s[9]_i_1__0\ : label is "soft_lutpair5";
begin
\busy_s_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F00000000000000"
    )
        port map (
      I0 => sample_cpt_s_reg(7),
      I1 => sample_cpt_s_reg(6),
      I2 => sample_cpt_s_reg(8),
      I3 => \busy_s_i_3__0_n_0\,
      I4 => \busy_s_i_4__0_n_0\,
      I5 => \busy_s_i_5__0_n_0\,
      O => \busy_s_i_2__0_n_0\
    );
\busy_s_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D500000000000000"
    )
        port map (
      I0 => sample_cpt_s_reg(5),
      I1 => sample_cpt_s_reg(3),
      I2 => sample_cpt_s_reg(4),
      I3 => sample_cpt_s_reg(0),
      I4 => sample_cpt_s_reg(1),
      I5 => sample_cpt_s_reg(2),
      O => \busy_s_i_3__0_n_0\
    );
\busy_s_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sample_cpt_s_reg(8),
      I1 => sample_cpt_s_reg(7),
      I2 => sample_cpt_s_reg(5),
      I3 => sample_cpt_s_reg(4),
      O => \busy_s_i_4__0_n_0\
    );
\busy_s_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => busy_s,
      I1 => data2_en_i,
      I2 => sample_cpt_s_reg(10),
      I3 => sample_cpt_s_reg(9),
      O => \busy_s_i_5__0_n_0\
    );
busy_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => '1',
      D => sync_start_n_0,
      Q => busy_s,
      R => '0'
    );
busy_sync: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__3\
     port map (
      busy_s => busy_s,
      data2_clk_i => data2_clk_i,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      s00_axi_reset_0 => busy_sync_n_1,
      start_acq2_s_reg => start_acq2_s_reg_n_0,
      start_o => start_o,
      sync_stage3_s_reg_0(0) => sync_stage3_s_reg(0)
    );
\gteq_axi_bits.ram_msb\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage
     port map (
      Q(10 downto 0) => sample_cpt_s_reg(10 downto 0),
      busy_s => busy_s,
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(63 downto 0) => data2_i(63 downto 0),
      dout_b(30 downto 0) => dout_b(30 downto 0),
      mem_reg_0_0 => mem_reg_0,
      mem_reg_0_1 => mem_reg_0_0,
      mem_reg_0_10 => mem_reg_0_9,
      mem_reg_0_11 => mem_reg_0_10,
      mem_reg_0_12 => mem_reg_0_11,
      mem_reg_0_13 => mem_reg_0_12,
      mem_reg_0_14 => mem_reg_0_13,
      mem_reg_0_15 => mem_reg_0_14,
      mem_reg_0_16 => mem_reg_0_15,
      mem_reg_0_17(10 downto 0) => Q(10 downto 0),
      mem_reg_0_2 => mem_reg_0_1,
      mem_reg_0_3 => mem_reg_0_2,
      mem_reg_0_4 => mem_reg_0_3,
      mem_reg_0_5 => mem_reg_0_4,
      mem_reg_0_6 => mem_reg_0_5,
      mem_reg_0_7 => mem_reg_0_6,
      mem_reg_0_8 => mem_reg_0_7,
      mem_reg_0_9 => mem_reg_0_8,
      mem_reg_1_0 => mem_reg_1_0,
      mem_reg_1_1 => mem_reg_1_1,
      mem_reg_1_10 => mem_reg_1_10,
      mem_reg_1_11 => mem_reg_1_11,
      mem_reg_1_12 => mem_reg_1_12,
      mem_reg_1_13 => mem_reg_1_13,
      mem_reg_1_14(1 downto 0) => mem_reg_1(1 downto 0),
      mem_reg_1_2 => mem_reg_1_2,
      mem_reg_1_3 => mem_reg_1_3,
      mem_reg_1_4 => mem_reg_1_4,
      mem_reg_1_5 => mem_reg_1_5,
      mem_reg_1_6 => mem_reg_1_6,
      mem_reg_1_7 => mem_reg_1_7,
      mem_reg_1_8 => mem_reg_1_8,
      mem_reg_1_9 => mem_reg_1_9,
      \readdata_s_reg[1]\ => \readdata_s_reg[1]\,
      \readdata_s_reg[1]_0\ => \readdata_s_reg[1]_0\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset
    );
\sample_cpt_s[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_cpt_s_reg(0),
      O => \plusOp__1\(0)
    );
\sample_cpt_s[10]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data2_rst_i,
      I1 => busy_s,
      O => sample_cpt_s0
    );
\sample_cpt_s[10]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => sample_cpt_s_reg(8),
      I1 => sample_cpt_s_reg(6),
      I2 => \sample_cpt_s[10]_i_3__0_n_0\,
      I3 => sample_cpt_s_reg(7),
      I4 => sample_cpt_s_reg(9),
      I5 => sample_cpt_s_reg(10),
      O => \plusOp__1\(10)
    );
\sample_cpt_s[10]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sample_cpt_s_reg(5),
      I1 => sample_cpt_s_reg(3),
      I2 => sample_cpt_s_reg(0),
      I3 => sample_cpt_s_reg(1),
      I4 => sample_cpt_s_reg(2),
      I5 => sample_cpt_s_reg(4),
      O => \sample_cpt_s[10]_i_3__0_n_0\
    );
\sample_cpt_s[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sample_cpt_s_reg(0),
      I1 => sample_cpt_s_reg(1),
      O => \plusOp__1\(1)
    );
\sample_cpt_s[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sample_cpt_s_reg(1),
      I1 => sample_cpt_s_reg(0),
      I2 => sample_cpt_s_reg(2),
      O => \plusOp__1\(2)
    );
\sample_cpt_s[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => sample_cpt_s_reg(0),
      I1 => sample_cpt_s_reg(1),
      I2 => sample_cpt_s_reg(2),
      I3 => sample_cpt_s_reg(3),
      O => \plusOp__1\(3)
    );
\sample_cpt_s[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => sample_cpt_s_reg(2),
      I1 => sample_cpt_s_reg(1),
      I2 => sample_cpt_s_reg(0),
      I3 => sample_cpt_s_reg(3),
      I4 => sample_cpt_s_reg(4),
      O => \plusOp__1\(4)
    );
\sample_cpt_s[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => sample_cpt_s_reg(3),
      I1 => sample_cpt_s_reg(0),
      I2 => sample_cpt_s_reg(1),
      I3 => sample_cpt_s_reg(2),
      I4 => sample_cpt_s_reg(4),
      I5 => sample_cpt_s_reg(5),
      O => \plusOp__1\(5)
    );
\sample_cpt_s[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sample_cpt_s[10]_i_3__0_n_0\,
      I1 => sample_cpt_s_reg(6),
      O => \plusOp__1\(6)
    );
\sample_cpt_s[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sample_cpt_s[10]_i_3__0_n_0\,
      I1 => sample_cpt_s_reg(6),
      I2 => sample_cpt_s_reg(7),
      O => \plusOp__1\(7)
    );
\sample_cpt_s[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => sample_cpt_s_reg(6),
      I1 => \sample_cpt_s[10]_i_3__0_n_0\,
      I2 => sample_cpt_s_reg(7),
      I3 => sample_cpt_s_reg(8),
      O => \plusOp__1\(8)
    );
\sample_cpt_s[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => sample_cpt_s_reg(7),
      I1 => \sample_cpt_s[10]_i_3__0_n_0\,
      I2 => sample_cpt_s_reg(6),
      I3 => sample_cpt_s_reg(8),
      I4 => sample_cpt_s_reg(9),
      O => \plusOp__1\(9)
    );
\sample_cpt_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \plusOp__1\(0),
      Q => sample_cpt_s_reg(0),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \plusOp__1\(10),
      Q => sample_cpt_s_reg(10),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \plusOp__1\(1),
      Q => sample_cpt_s_reg(1),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \plusOp__1\(2),
      Q => sample_cpt_s_reg(2),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \plusOp__1\(3),
      Q => sample_cpt_s_reg(3),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \plusOp__1\(4),
      Q => sample_cpt_s_reg(4),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \plusOp__1\(5),
      Q => sample_cpt_s_reg(5),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \plusOp__1\(6),
      Q => sample_cpt_s_reg(6),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \plusOp__1\(7),
      Q => sample_cpt_s_reg(7),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \plusOp__1\(8),
      Q => sample_cpt_s_reg(8),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data2_clk_i,
      CE => data2_en_i,
      D => \plusOp__1\(9),
      Q => sample_cpt_s_reg(9),
      R => sample_cpt_s0
    );
start_acq2_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => busy_sync_n_1,
      Q => start_acq2_s_reg_n_0,
      R => '0'
    );
sync_start: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync
     port map (
      busy_s => busy_s,
      busy_s_reg => sync_start_n_0,
      busy_s_reg_0 => \busy_s_i_2__0_n_0\,
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
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop__xdcDup__1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dout_b : out STD_LOGIC_VECTOR ( 30 downto 0 );
    sync_stage3_s_reg : out STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    start_s_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readdata_s_reg[31]\ : in STD_LOGIC;
    \readdata_s_reg[31]_0\ : in STD_LOGIC;
    \readdata_s_reg[31]_1\ : in STD_LOGIC;
    \readdata_s_reg[30]\ : in STD_LOGIC;
    start_s : in STD_LOGIC;
    \readdata_s_reg[2]\ : in STD_LOGIC;
    \readdata_s_reg[4]\ : in STD_LOGIC;
    \readdata_s_reg[6]\ : in STD_LOGIC;
    \readdata_s_reg[9]\ : in STD_LOGIC;
    \readdata_s_reg[11]\ : in STD_LOGIC;
    \readdata_s_reg[13]\ : in STD_LOGIC;
    \readdata_s_reg[15]\ : in STD_LOGIC;
    \readdata_s_reg[16]\ : in STD_LOGIC;
    \readdata_s_reg[17]\ : in STD_LOGIC;
    \readdata_s_reg[20]\ : in STD_LOGIC;
    \readdata_s_reg[21]\ : in STD_LOGIC;
    \readdata_s_reg[26]\ : in STD_LOGIC;
    \readdata_s_reg[29]\ : in STD_LOGIC;
    \readdata_s_reg[28]\ : in STD_LOGIC;
    \readdata_s_reg[27]\ : in STD_LOGIC;
    \readdata_s_reg[25]\ : in STD_LOGIC;
    \readdata_s_reg[24]\ : in STD_LOGIC;
    \readdata_s_reg[23]\ : in STD_LOGIC;
    \readdata_s_reg[22]\ : in STD_LOGIC;
    \readdata_s_reg[19]\ : in STD_LOGIC;
    \readdata_s_reg[18]\ : in STD_LOGIC;
    \readdata_s_reg[14]\ : in STD_LOGIC;
    \readdata_s_reg[12]\ : in STD_LOGIC;
    \readdata_s_reg[10]\ : in STD_LOGIC;
    \readdata_s_reg[8]\ : in STD_LOGIC;
    \readdata_s_reg[7]\ : in STD_LOGIC;
    \readdata_s_reg[5]\ : in STD_LOGIC;
    \readdata_s_reg[3]\ : in STD_LOGIC;
    \readdata_s_reg[1]\ : in STD_LOGIC;
    \readdata_s_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_reset : in STD_LOGIC;
    start_o : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    data1_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop__xdcDup__1\ : entity is "dataReal_to_ram_subtop";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop__xdcDup__1\ is
  signal busy_s_0 : STD_LOGIC;
  signal busy_s_i_2_n_0 : STD_LOGIC;
  signal busy_s_i_3_n_0 : STD_LOGIC;
  signal busy_s_i_4_n_0 : STD_LOGIC;
  signal busy_s_i_5_n_0 : STD_LOGIC;
  signal busy_sync_n_1 : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal ram_data_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sample_cpt_s0 : STD_LOGIC;
  signal \sample_cpt_s[10]_i_3_n_0\ : STD_LOGIC;
  signal sample_cpt_s_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal start_acq2_s : STD_LOGIC;
  signal sync_start_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sample_cpt_s[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sample_cpt_s[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sample_cpt_s[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sample_cpt_s[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sample_cpt_s[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sample_cpt_s[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sample_cpt_s[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sample_cpt_s[9]_i_1\ : label is "soft_lutpair1";
begin
busy_s_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F00000000000000"
    )
        port map (
      I0 => sample_cpt_s_reg(7),
      I1 => sample_cpt_s_reg(6),
      I2 => sample_cpt_s_reg(8),
      I3 => busy_s_i_3_n_0,
      I4 => busy_s_i_4_n_0,
      I5 => busy_s_i_5_n_0,
      O => busy_s_i_2_n_0
    );
busy_s_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D500000000000000"
    )
        port map (
      I0 => sample_cpt_s_reg(5),
      I1 => sample_cpt_s_reg(3),
      I2 => sample_cpt_s_reg(4),
      I3 => sample_cpt_s_reg(0),
      I4 => sample_cpt_s_reg(1),
      I5 => sample_cpt_s_reg(2),
      O => busy_s_i_3_n_0
    );
busy_s_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sample_cpt_s_reg(8),
      I1 => sample_cpt_s_reg(7),
      I2 => sample_cpt_s_reg(5),
      I3 => sample_cpt_s_reg(4),
      O => busy_s_i_4_n_0
    );
busy_s_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => busy_s_0,
      I1 => data1_en_i,
      I2 => sample_cpt_s_reg(10),
      I3 => sample_cpt_s_reg(9),
      O => busy_s_i_5_n_0
    );
busy_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => sync_start_n_0,
      Q => busy_s_0,
      R => '0'
    );
busy_sync: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__1\
     port map (
      D(0) => D(0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_s_0 => busy_s_0,
      data1_clk_i => data1_clk_i,
      ram_data_i(0) => ram_data_i(0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      s00_axi_reset_0 => busy_sync_n_1,
      start_acq2_s => start_acq2_s,
      start_o => start_o,
      start_s => start_s,
      start_s_reg(0) => start_s_reg(0),
      sync_stage3_s_reg_0 => sync_stage3_s_reg
    );
\gteq_axi_bits.ram_msb\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_0
     port map (
      D(30 downto 0) => D(31 downto 1),
      Q(10 downto 0) => sample_cpt_s_reg(10 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_s_0 => busy_s_0,
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_i(63 downto 0) => data1_i(63 downto 0),
      dout_b(30 downto 0) => dout_b(30 downto 0),
      mem_reg_0_0(10 downto 0) => Q(10 downto 0),
      ram_data_i(0) => ram_data_i(0),
      \readdata_s_reg[0]\(1 downto 0) => \readdata_s_reg[0]\(1 downto 0),
      \readdata_s_reg[10]\ => \readdata_s_reg[10]\,
      \readdata_s_reg[11]\ => \readdata_s_reg[11]\,
      \readdata_s_reg[12]\ => \readdata_s_reg[12]\,
      \readdata_s_reg[13]\ => \readdata_s_reg[13]\,
      \readdata_s_reg[14]\ => \readdata_s_reg[14]\,
      \readdata_s_reg[15]\ => \readdata_s_reg[15]\,
      \readdata_s_reg[16]\ => \readdata_s_reg[16]\,
      \readdata_s_reg[17]\ => \readdata_s_reg[17]\,
      \readdata_s_reg[18]\ => \readdata_s_reg[18]\,
      \readdata_s_reg[19]\ => \readdata_s_reg[19]\,
      \readdata_s_reg[1]\ => \readdata_s_reg[1]\,
      \readdata_s_reg[20]\ => \readdata_s_reg[20]\,
      \readdata_s_reg[21]\ => \readdata_s_reg[21]\,
      \readdata_s_reg[22]\ => \readdata_s_reg[22]\,
      \readdata_s_reg[23]\ => \readdata_s_reg[23]\,
      \readdata_s_reg[24]\ => \readdata_s_reg[24]\,
      \readdata_s_reg[25]\ => \readdata_s_reg[25]\,
      \readdata_s_reg[26]\ => \readdata_s_reg[26]\,
      \readdata_s_reg[27]\ => \readdata_s_reg[27]\,
      \readdata_s_reg[28]\ => \readdata_s_reg[28]\,
      \readdata_s_reg[29]\ => \readdata_s_reg[29]\,
      \readdata_s_reg[2]\ => \readdata_s_reg[2]\,
      \readdata_s_reg[30]\ => \readdata_s_reg[30]\,
      \readdata_s_reg[31]\ => \readdata_s_reg[31]\,
      \readdata_s_reg[31]_0\ => \readdata_s_reg[31]_0\,
      \readdata_s_reg[31]_1\ => \readdata_s_reg[31]_1\,
      \readdata_s_reg[3]\ => \readdata_s_reg[3]\,
      \readdata_s_reg[4]\ => \readdata_s_reg[4]\,
      \readdata_s_reg[5]\ => \readdata_s_reg[5]\,
      \readdata_s_reg[6]\ => \readdata_s_reg[6]\,
      \readdata_s_reg[7]\ => \readdata_s_reg[7]\,
      \readdata_s_reg[8]\ => \readdata_s_reg[8]\,
      \readdata_s_reg[9]\ => \readdata_s_reg[9]\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset
    );
\sample_cpt_s[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_cpt_s_reg(0),
      O => \plusOp__0\(0)
    );
\sample_cpt_s[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data1_rst_i,
      I1 => busy_s_0,
      O => sample_cpt_s0
    );
\sample_cpt_s[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => sample_cpt_s_reg(8),
      I1 => sample_cpt_s_reg(6),
      I2 => \sample_cpt_s[10]_i_3_n_0\,
      I3 => sample_cpt_s_reg(7),
      I4 => sample_cpt_s_reg(9),
      I5 => sample_cpt_s_reg(10),
      O => \plusOp__0\(10)
    );
\sample_cpt_s[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sample_cpt_s_reg(5),
      I1 => sample_cpt_s_reg(3),
      I2 => sample_cpt_s_reg(0),
      I3 => sample_cpt_s_reg(1),
      I4 => sample_cpt_s_reg(2),
      I5 => sample_cpt_s_reg(4),
      O => \sample_cpt_s[10]_i_3_n_0\
    );
\sample_cpt_s[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sample_cpt_s_reg(0),
      I1 => sample_cpt_s_reg(1),
      O => \plusOp__0\(1)
    );
\sample_cpt_s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sample_cpt_s_reg(1),
      I1 => sample_cpt_s_reg(0),
      I2 => sample_cpt_s_reg(2),
      O => \plusOp__0\(2)
    );
\sample_cpt_s[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => sample_cpt_s_reg(0),
      I1 => sample_cpt_s_reg(1),
      I2 => sample_cpt_s_reg(2),
      I3 => sample_cpt_s_reg(3),
      O => \plusOp__0\(3)
    );
\sample_cpt_s[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => sample_cpt_s_reg(2),
      I1 => sample_cpt_s_reg(1),
      I2 => sample_cpt_s_reg(0),
      I3 => sample_cpt_s_reg(3),
      I4 => sample_cpt_s_reg(4),
      O => \plusOp__0\(4)
    );
\sample_cpt_s[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => sample_cpt_s_reg(3),
      I1 => sample_cpt_s_reg(0),
      I2 => sample_cpt_s_reg(1),
      I3 => sample_cpt_s_reg(2),
      I4 => sample_cpt_s_reg(4),
      I5 => sample_cpt_s_reg(5),
      O => \plusOp__0\(5)
    );
\sample_cpt_s[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sample_cpt_s[10]_i_3_n_0\,
      I1 => sample_cpt_s_reg(6),
      O => \plusOp__0\(6)
    );
\sample_cpt_s[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sample_cpt_s[10]_i_3_n_0\,
      I1 => sample_cpt_s_reg(6),
      I2 => sample_cpt_s_reg(7),
      O => \plusOp__0\(7)
    );
\sample_cpt_s[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => sample_cpt_s_reg(6),
      I1 => \sample_cpt_s[10]_i_3_n_0\,
      I2 => sample_cpt_s_reg(7),
      I3 => sample_cpt_s_reg(8),
      O => \plusOp__0\(8)
    );
\sample_cpt_s[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => sample_cpt_s_reg(7),
      I1 => \sample_cpt_s[10]_i_3_n_0\,
      I2 => sample_cpt_s_reg(6),
      I3 => sample_cpt_s_reg(8),
      I4 => sample_cpt_s_reg(9),
      O => \plusOp__0\(9)
    );
\sample_cpt_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \plusOp__0\(0),
      Q => sample_cpt_s_reg(0),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \plusOp__0\(10),
      Q => sample_cpt_s_reg(10),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \plusOp__0\(1),
      Q => sample_cpt_s_reg(1),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \plusOp__0\(2),
      Q => sample_cpt_s_reg(2),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \plusOp__0\(3),
      Q => sample_cpt_s_reg(3),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \plusOp__0\(4),
      Q => sample_cpt_s_reg(4),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \plusOp__0\(5),
      Q => sample_cpt_s_reg(5),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \plusOp__0\(6),
      Q => sample_cpt_s_reg(6),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \plusOp__0\(7),
      Q => sample_cpt_s_reg(7),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \plusOp__0\(8),
      Q => sample_cpt_s_reg(8),
      R => sample_cpt_s0
    );
\sample_cpt_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => data1_en_i,
      D => \plusOp__0\(9),
      Q => sample_cpt_s_reg(9),
      R => sample_cpt_s0
    );
start_acq2_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => busy_sync_n_1,
      Q => start_acq2_s,
      R => '0'
    );
sync_start: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__2\
     port map (
      busy_s_0 => busy_s_0,
      busy_s_reg => sync_start_n_0,
      busy_s_reg_0 => busy_s_i_2_n_0,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_top is
  port (
    select_s : out STD_LOGIC;
    \select_chan_s_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    \select_s_reg[0]_0\ : in STD_LOGIC;
    \select_chan_s_reg[0]_1\ : in STD_LOGIC;
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_reset : in STD_LOGIC;
    start_o : in STD_LOGIC;
    data1_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data1_en_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data2_en_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_top is
  signal \array_val[1]_0\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \array_val[1]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal busy_s : STD_LOGIC_VECTOR ( 1 to 1 );
  signal plusOp : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \ram_addr_s[10]_i_4_n_0\ : STD_LOGIC;
  signal ram_addr_s_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^select_chan_s_reg[0]_0\ : STD_LOGIC;
  signal \^select_s\ : STD_LOGIC;
  signal start_s : STD_LOGIC;
  signal \subtop_loop[0].data_subtop_inst_n_63\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_1\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_10\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_11\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_12\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_13\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_14\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_15\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_16\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_17\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_18\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_19\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_20\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_21\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_22\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_23\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_24\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_25\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_26\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_27\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_28\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_29\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_3\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_30\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_31\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_32\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_33\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_4\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_5\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_6\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_7\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_8\ : STD_LOGIC;
  signal \subtop_loop[1].data_subtop_inst_n_9\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ram_addr_s[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ram_addr_s[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ram_addr_s[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ram_addr_s[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ram_addr_s[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ram_addr_s[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ram_addr_s[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ram_addr_s[9]_i_1\ : label is "soft_lutpair9";
begin
  \select_chan_s_reg[0]_0\ <= \^select_chan_s_reg[0]_0\;
  select_s <= \^select_s\;
\ram_addr_s[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_addr_s_reg(0),
      O => plusOp(0)
    );
\ram_addr_s[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => ram_addr_s_reg(8),
      I1 => ram_addr_s_reg(6),
      I2 => \ram_addr_s[10]_i_4_n_0\,
      I3 => ram_addr_s_reg(7),
      I4 => ram_addr_s_reg(9),
      I5 => ram_addr_s_reg(10),
      O => plusOp(10)
    );
\ram_addr_s[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ram_addr_s_reg(5),
      I1 => ram_addr_s_reg(3),
      I2 => ram_addr_s_reg(1),
      I3 => ram_addr_s_reg(0),
      I4 => ram_addr_s_reg(2),
      I5 => ram_addr_s_reg(4),
      O => \ram_addr_s[10]_i_4_n_0\
    );
\ram_addr_s[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ram_addr_s_reg(0),
      I1 => ram_addr_s_reg(1),
      O => plusOp(1)
    );
\ram_addr_s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => ram_addr_s_reg(0),
      I1 => ram_addr_s_reg(1),
      I2 => ram_addr_s_reg(2),
      O => plusOp(2)
    );
\ram_addr_s[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ram_addr_s_reg(1),
      I1 => ram_addr_s_reg(0),
      I2 => ram_addr_s_reg(2),
      I3 => ram_addr_s_reg(3),
      O => plusOp(3)
    );
\ram_addr_s[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ram_addr_s_reg(2),
      I1 => ram_addr_s_reg(0),
      I2 => ram_addr_s_reg(1),
      I3 => ram_addr_s_reg(3),
      I4 => ram_addr_s_reg(4),
      O => plusOp(4)
    );
\ram_addr_s[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => ram_addr_s_reg(3),
      I1 => ram_addr_s_reg(1),
      I2 => ram_addr_s_reg(0),
      I3 => ram_addr_s_reg(2),
      I4 => ram_addr_s_reg(4),
      I5 => ram_addr_s_reg(5),
      O => plusOp(5)
    );
\ram_addr_s[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ram_addr_s[10]_i_4_n_0\,
      I1 => ram_addr_s_reg(6),
      O => plusOp(6)
    );
\ram_addr_s[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ram_addr_s[10]_i_4_n_0\,
      I1 => ram_addr_s_reg(6),
      I2 => ram_addr_s_reg(7),
      O => plusOp(7)
    );
\ram_addr_s[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ram_addr_s_reg(6),
      I1 => \ram_addr_s[10]_i_4_n_0\,
      I2 => ram_addr_s_reg(7),
      I3 => ram_addr_s_reg(8),
      O => plusOp(8)
    );
\ram_addr_s[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ram_addr_s_reg(7),
      I1 => \ram_addr_s[10]_i_4_n_0\,
      I2 => ram_addr_s_reg(6),
      I3 => ram_addr_s_reg(8),
      I4 => ram_addr_s_reg(9),
      O => plusOp(9)
    );
\ram_addr_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(0),
      Q => ram_addr_s_reg(0),
      R => SR(0)
    );
\ram_addr_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(10),
      Q => ram_addr_s_reg(10),
      R => SR(0)
    );
\ram_addr_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(1),
      Q => ram_addr_s_reg(1),
      R => SR(0)
    );
\ram_addr_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(2),
      Q => ram_addr_s_reg(2),
      R => SR(0)
    );
\ram_addr_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(3),
      Q => ram_addr_s_reg(3),
      R => SR(0)
    );
\ram_addr_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(4),
      Q => ram_addr_s_reg(4),
      R => SR(0)
    );
\ram_addr_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(5),
      Q => ram_addr_s_reg(5),
      R => SR(0)
    );
\ram_addr_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(6),
      Q => ram_addr_s_reg(6),
      R => SR(0)
    );
\ram_addr_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(7),
      Q => ram_addr_s_reg(7),
      R => SR(0)
    );
\ram_addr_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(8),
      Q => ram_addr_s_reg(8),
      R => SR(0)
    );
\ram_addr_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(9),
      Q => ram_addr_s_reg(9),
      R => SR(0)
    );
\select_chan_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \select_chan_s_reg[0]_1\,
      Q => \^select_chan_s_reg[0]_0\,
      R => '0'
    );
\select_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \select_s_reg[0]_0\,
      Q => \^select_s\,
      R => '0'
    );
start_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \subtop_loop[0].data_subtop_inst_n_63\,
      Q => start_s,
      R => '0'
    );
\subtop_loop[0].data_subtop_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop__xdcDup__1\
     port map (
      D(31 downto 0) => D(31 downto 0),
      Q(10 downto 0) => ram_addr_s_reg(10 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_i(63 downto 0) => data1_i(63 downto 0),
      data1_rst_i => data1_rst_i,
      dout_b(30 downto 0) => \array_val[1]_0\(31 downto 1),
      \readdata_s_reg[0]\(1) => \array_val[1]_1\(0),
      \readdata_s_reg[0]\(0) => \subtop_loop[1].data_subtop_inst_n_3\,
      \readdata_s_reg[10]\ => \subtop_loop[1].data_subtop_inst_n_12\,
      \readdata_s_reg[11]\ => \subtop_loop[1].data_subtop_inst_n_13\,
      \readdata_s_reg[12]\ => \subtop_loop[1].data_subtop_inst_n_14\,
      \readdata_s_reg[13]\ => \subtop_loop[1].data_subtop_inst_n_15\,
      \readdata_s_reg[14]\ => \subtop_loop[1].data_subtop_inst_n_16\,
      \readdata_s_reg[15]\ => \subtop_loop[1].data_subtop_inst_n_17\,
      \readdata_s_reg[16]\ => \subtop_loop[1].data_subtop_inst_n_18\,
      \readdata_s_reg[17]\ => \subtop_loop[1].data_subtop_inst_n_19\,
      \readdata_s_reg[18]\ => \subtop_loop[1].data_subtop_inst_n_20\,
      \readdata_s_reg[19]\ => \subtop_loop[1].data_subtop_inst_n_21\,
      \readdata_s_reg[1]\ => \subtop_loop[1].data_subtop_inst_n_1\,
      \readdata_s_reg[20]\ => \subtop_loop[1].data_subtop_inst_n_22\,
      \readdata_s_reg[21]\ => \subtop_loop[1].data_subtop_inst_n_23\,
      \readdata_s_reg[22]\ => \subtop_loop[1].data_subtop_inst_n_24\,
      \readdata_s_reg[23]\ => \subtop_loop[1].data_subtop_inst_n_25\,
      \readdata_s_reg[24]\ => \subtop_loop[1].data_subtop_inst_n_26\,
      \readdata_s_reg[25]\ => \subtop_loop[1].data_subtop_inst_n_27\,
      \readdata_s_reg[26]\ => \subtop_loop[1].data_subtop_inst_n_28\,
      \readdata_s_reg[27]\ => \subtop_loop[1].data_subtop_inst_n_29\,
      \readdata_s_reg[28]\ => \subtop_loop[1].data_subtop_inst_n_30\,
      \readdata_s_reg[29]\ => \subtop_loop[1].data_subtop_inst_n_31\,
      \readdata_s_reg[2]\ => \subtop_loop[1].data_subtop_inst_n_4\,
      \readdata_s_reg[30]\ => \subtop_loop[1].data_subtop_inst_n_32\,
      \readdata_s_reg[31]\ => \^select_chan_s_reg[0]_0\,
      \readdata_s_reg[31]_0\ => \^select_s\,
      \readdata_s_reg[31]_1\ => \subtop_loop[1].data_subtop_inst_n_33\,
      \readdata_s_reg[3]\ => \subtop_loop[1].data_subtop_inst_n_5\,
      \readdata_s_reg[4]\ => \subtop_loop[1].data_subtop_inst_n_6\,
      \readdata_s_reg[5]\ => \subtop_loop[1].data_subtop_inst_n_7\,
      \readdata_s_reg[6]\ => \subtop_loop[1].data_subtop_inst_n_8\,
      \readdata_s_reg[7]\ => \subtop_loop[1].data_subtop_inst_n_9\,
      \readdata_s_reg[8]\ => \subtop_loop[1].data_subtop_inst_n_10\,
      \readdata_s_reg[9]\ => \subtop_loop[1].data_subtop_inst_n_11\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      start_o => start_o,
      start_s => start_s,
      start_s_reg(0) => busy_s(1),
      sync_stage3_s_reg => \subtop_loop[0].data_subtop_inst_n_63\
    );
\subtop_loop[1].data_subtop_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop
     port map (
      Q(10 downto 0) => ram_addr_s_reg(10 downto 0),
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(63 downto 0) => data2_i(63 downto 0),
      data2_rst_i => data2_rst_i,
      dout_b(30 downto 0) => \array_val[1]_0\(31 downto 1),
      mem_reg_0 => \subtop_loop[1].data_subtop_inst_n_1\,
      mem_reg_0_0 => \subtop_loop[1].data_subtop_inst_n_4\,
      mem_reg_0_1 => \subtop_loop[1].data_subtop_inst_n_5\,
      mem_reg_0_10 => \subtop_loop[1].data_subtop_inst_n_14\,
      mem_reg_0_11 => \subtop_loop[1].data_subtop_inst_n_15\,
      mem_reg_0_12 => \subtop_loop[1].data_subtop_inst_n_16\,
      mem_reg_0_13 => \subtop_loop[1].data_subtop_inst_n_17\,
      mem_reg_0_14 => \subtop_loop[1].data_subtop_inst_n_18\,
      mem_reg_0_15 => \subtop_loop[1].data_subtop_inst_n_19\,
      mem_reg_0_2 => \subtop_loop[1].data_subtop_inst_n_6\,
      mem_reg_0_3 => \subtop_loop[1].data_subtop_inst_n_7\,
      mem_reg_0_4 => \subtop_loop[1].data_subtop_inst_n_8\,
      mem_reg_0_5 => \subtop_loop[1].data_subtop_inst_n_9\,
      mem_reg_0_6 => \subtop_loop[1].data_subtop_inst_n_10\,
      mem_reg_0_7 => \subtop_loop[1].data_subtop_inst_n_11\,
      mem_reg_0_8 => \subtop_loop[1].data_subtop_inst_n_12\,
      mem_reg_0_9 => \subtop_loop[1].data_subtop_inst_n_13\,
      mem_reg_1(1) => \array_val[1]_1\(0),
      mem_reg_1(0) => \subtop_loop[1].data_subtop_inst_n_3\,
      mem_reg_1_0 => \subtop_loop[1].data_subtop_inst_n_20\,
      mem_reg_1_1 => \subtop_loop[1].data_subtop_inst_n_21\,
      mem_reg_1_10 => \subtop_loop[1].data_subtop_inst_n_30\,
      mem_reg_1_11 => \subtop_loop[1].data_subtop_inst_n_31\,
      mem_reg_1_12 => \subtop_loop[1].data_subtop_inst_n_32\,
      mem_reg_1_13 => \subtop_loop[1].data_subtop_inst_n_33\,
      mem_reg_1_2 => \subtop_loop[1].data_subtop_inst_n_22\,
      mem_reg_1_3 => \subtop_loop[1].data_subtop_inst_n_23\,
      mem_reg_1_4 => \subtop_loop[1].data_subtop_inst_n_24\,
      mem_reg_1_5 => \subtop_loop[1].data_subtop_inst_n_25\,
      mem_reg_1_6 => \subtop_loop[1].data_subtop_inst_n_26\,
      mem_reg_1_7 => \subtop_loop[1].data_subtop_inst_n_27\,
      mem_reg_1_8 => \subtop_loop[1].data_subtop_inst_n_28\,
      mem_reg_1_9 => \subtop_loop[1].data_subtop_inst_n_29\,
      \readdata_s_reg[1]\ => \^select_chan_s_reg[0]_0\,
      \readdata_s_reg[1]_0\ => \^select_s\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      start_o => start_o,
      sync_stage3_s_reg(0) => busy_s(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram is
  port (
    data1_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data1_eof_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data2_en_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    data2_eof_i : in STD_LOGIC;
    data3_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data3_en_i : in STD_LOGIC;
    data3_clk_i : in STD_LOGIC;
    data3_rst_i : in STD_LOGIC;
    data3_eof_i : in STD_LOGIC;
    data4_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data4_en_i : in STD_LOGIC;
    data4_clk_i : in STD_LOGIC;
    data4_rst_i : in STD_LOGIC;
    data4_eof_i : in STD_LOGIC;
    data5_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data5_en_i : in STD_LOGIC;
    data5_clk_i : in STD_LOGIC;
    data5_rst_i : in STD_LOGIC;
    data5_eof_i : in STD_LOGIC;
    data6_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data6_en_i : in STD_LOGIC;
    data6_clk_i : in STD_LOGIC;
    data6_rst_i : in STD_LOGIC;
    data6_eof_i : in STD_LOGIC;
    data7_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data7_en_i : in STD_LOGIC;
    data7_clk_i : in STD_LOGIC;
    data7_rst_i : in STD_LOGIC;
    data7_eof_i : in STD_LOGIC;
    data8_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data8_en_i : in STD_LOGIC;
    data8_clk_i : in STD_LOGIC;
    data8_rst_i : in STD_LOGIC;
    data8_eof_i : in STD_LOGIC;
    data9_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data9_en_i : in STD_LOGIC;
    data9_clk_i : in STD_LOGIC;
    data9_rst_i : in STD_LOGIC;
    data9_eof_i : in STD_LOGIC;
    data10_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data10_en_i : in STD_LOGIC;
    data10_clk_i : in STD_LOGIC;
    data10_rst_i : in STD_LOGIC;
    data10_eof_i : in STD_LOGIC;
    data11_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data11_en_i : in STD_LOGIC;
    data11_clk_i : in STD_LOGIC;
    data11_rst_i : in STD_LOGIC;
    data11_eof_i : in STD_LOGIC;
    data12_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data12_en_i : in STD_LOGIC;
    data12_clk_i : in STD_LOGIC;
    data12_rst_i : in STD_LOGIC;
    data12_eof_i : in STD_LOGIC;
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
  attribute C_S00_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram : entity is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram : entity is 32;
  attribute DATA_FORMAT : string;
  attribute DATA_FORMAT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram : entity is "signed";
  attribute DATA_SIZE : integer;
  attribute DATA_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram : entity is 64;
  attribute NB_INPUT : integer;
  attribute NB_INPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram : entity is 2;
  attribute NB_SAMPLE : integer;
  attribute NB_SAMPLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram : entity is 2048;
  attribute USE_EOF : string;
  attribute USE_EOF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram : entity is "FALSE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram is
  signal \<const0>\ : STD_LOGIC;
  signal addr_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data32_top_inst_n_1 : STD_LOGIC;
  signal handle_comm_n_4 : STD_LOGIC;
  signal handle_comm_n_8 : STD_LOGIC;
  signal handle_comm_n_9 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ram_addr_s : STD_LOGIC;
  signal ram_reinit_s : STD_LOGIC;
  signal read_en_s : STD_LOGIC;
  signal select_s : STD_LOGIC;
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
data32_top_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_top
     port map (
      D(31 downto 0) => p_0_in(31 downto 0),
      E(0) => ram_addr_s,
      SR(0) => handle_comm_n_8,
      addr_s(1 downto 0) => addr_s(1 downto 0),
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_i(63 downto 0) => data1_i(63 downto 0),
      data1_rst_i => data1_rst_i,
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(63 downto 0) => data2_i(63 downto 0),
      data2_rst_i => data2_rst_i,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      \select_chan_s_reg[0]_0\ => data32_top_inst_n_1,
      \select_chan_s_reg[0]_1\ => handle_comm_n_9,
      select_s => select_s,
      \select_s_reg[0]_0\ => handle_comm_n_4,
      start_o => start_o
    );
handle_comm: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_handCom
     port map (
      E(0) => ram_addr_s,
      SR(0) => handle_comm_n_8,
      addr_s(1 downto 0) => addr_s(1 downto 0),
      axi_arready_reg_0 => s00_axi_arready,
      axi_awready_reg_0 => s00_axi_awready,
      axi_wready_reg_0 => s00_axi_wready,
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
      s00_axi_rready => s00_axi_rready,
      s00_axi_wvalid => s00_axi_wvalid,
      \select_chan_s_reg[0]\ => handle_comm_n_9,
      \select_chan_s_reg[0]_0\ => data32_top_inst_n_1,
      select_s => select_s,
      \select_s_reg[0]\ => handle_comm_n_4
    );
wb_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wb_dataReal_to_ram
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data1_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data1_eof_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data2_en_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    data2_eof_i : in STD_LOGIC;
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "double_iq_pid_vco_dataReal_to_ram_slow_0,dataReal_to_ram,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dataReal_to_ram,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of inst : label is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of inst : label is 32;
  attribute DATA_FORMAT : string;
  attribute DATA_FORMAT of inst : label is "signed";
  attribute DATA_SIZE : integer;
  attribute DATA_SIZE of inst : label is 64;
  attribute NB_INPUT : integer;
  attribute NB_INPUT of inst : label is 2;
  attribute NB_SAMPLE : integer;
  attribute NB_SAMPLE of inst : label is 2048;
  attribute USE_EOF : string;
  attribute USE_EOF of inst : label is "FALSE";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of data1_clk_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA_CLK";
  attribute X_INTERFACE_INFO of data1_en_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA_EN";
  attribute X_INTERFACE_INFO of data1_eof_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA_EOF";
  attribute X_INTERFACE_INFO of data1_rst_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA_RST";
  attribute X_INTERFACE_INFO of data2_clk_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA_CLK";
  attribute X_INTERFACE_INFO of data2_en_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA_EN";
  attribute X_INTERFACE_INFO of data2_eof_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA_EOF";
  attribute X_INTERFACE_INFO of data2_rst_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA_RST";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_signal_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_signal_clock, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_reset : signal is "xilinx.com:signal:reset:1.0 s00_axi_signal_reset RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_reset : signal is "XIL_INTERFACENAME s00_axi_signal_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute X_INTERFACE_INFO of data1_i : signal is "xilinx.com:interface:real:1.0 data1_in DATA";
  attribute X_INTERFACE_INFO of data2_i : signal is "xilinx.com:interface:real:1.0 data2_in DATA";
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram
     port map (
      data10_clk_i => '0',
      data10_en_i => '0',
      data10_eof_i => '0',
      data10_i(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      data10_rst_i => '0',
      data11_clk_i => '0',
      data11_en_i => '0',
      data11_eof_i => '0',
      data11_i(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      data11_rst_i => '0',
      data12_clk_i => '0',
      data12_en_i => '0',
      data12_eof_i => '0',
      data12_i(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      data12_rst_i => '0',
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_eof_i => data1_eof_i,
      data1_i(63 downto 0) => data1_i(63 downto 0),
      data1_rst_i => data1_rst_i,
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_eof_i => data2_eof_i,
      data2_i(63 downto 0) => data2_i(63 downto 0),
      data2_rst_i => data2_rst_i,
      data3_clk_i => '0',
      data3_en_i => '0',
      data3_eof_i => '0',
      data3_i(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      data3_rst_i => '0',
      data4_clk_i => '0',
      data4_en_i => '0',
      data4_eof_i => '0',
      data4_i(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      data4_rst_i => '0',
      data5_clk_i => '0',
      data5_en_i => '0',
      data5_eof_i => '0',
      data5_i(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      data5_rst_i => '0',
      data6_clk_i => '0',
      data6_en_i => '0',
      data6_eof_i => '0',
      data6_i(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      data6_rst_i => '0',
      data7_clk_i => '0',
      data7_en_i => '0',
      data7_eof_i => '0',
      data7_i(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      data7_rst_i => '0',
      data8_clk_i => '0',
      data8_en_i => '0',
      data8_eof_i => '0',
      data8_i(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      data8_rst_i => '0',
      data9_clk_i => '0',
      data9_en_i => '0',
      data9_eof_i => '0',
      data9_i(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      data9_rst_i => '0',
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
