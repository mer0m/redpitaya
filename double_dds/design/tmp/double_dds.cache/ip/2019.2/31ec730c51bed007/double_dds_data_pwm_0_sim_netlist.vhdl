-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun May 31 18:57:03 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_dds_data_pwm_0_sim_netlist.vhdl
-- Design      : double_dds_data_pwm_0
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
    busy_s_0 : in STD_LOGIC;
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
      I0 => busy_s_0,
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
    busy_s_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset_0 : out STD_LOGIC;
    sync_stage3_s_reg_0 : out STD_LOGIC;
    busy_s_0 : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    start_acq2_s : in STD_LOGIC;
    start_o : in STD_LOGIC;
    start_s : in STD_LOGIC;
    start_s_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__1\ : entity is "dataReal_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__1\ is
  signal \^busy_s_2\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
  busy_s_2(0) <= \^busy_s_2\(0);
start_acq2_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => s00_axi_reset,
      I1 => \^busy_s_2\(0),
      I2 => start_acq2_s,
      I3 => start_o,
      O => s00_axi_reset_0
    );
start_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000054"
    )
        port map (
      I0 => \^busy_s_2\(0),
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
      Q => \^busy_s_2\(0),
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
    busy_s : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    busy_s_0 : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    start_acq2_s_reg : in STD_LOGIC;
    start_o : in STD_LOGIC;
    busy_s_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_s : in STD_LOGIC
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
\readdata_s[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^sync_stage3_s_reg_0\(0),
      I1 => busy_s_2(0),
      I2 => start_s,
      O => busy_s
    );
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
    \select_chan_s_reg[0]\ : out STD_LOGIC;
    addr_s : out STD_LOGIC_VECTOR ( 1 downto 0 );
    read_en_s : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_reinit_s : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    incr_addr_s : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_handCom;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_handCom is
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
\ram_addr_s[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => s00_axi_reset,
      I1 => \^addr_s\(0),
      I2 => write_en_s,
      I3 => \^addr_s\(1),
      O => SR(0)
    );
\ram_addr_s[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => \^addr_s\(1),
      I2 => axi_rvalid_reg_n_0,
      I3 => s00_axi_arvalid,
      I4 => \^axi_arready_reg_0\,
      I5 => incr_addr_s,
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
      INIT => X"0000AE400000BF40"
    )
        port map (
      I0 => \^addr_s\(0),
      I1 => \^addr_s\(1),
      I2 => \^read_en_s\,
      I3 => incr_addr_s,
      I4 => s00_axi_reset,
      I5 => write_en_s,
      O => \select_chan_s_reg[0]\
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
    DOBDO : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \readdata_s_reg[30]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data2_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    mem_reg_0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readdata_s_reg[16]\ : in STD_LOGIC;
    busy_s_0 : in STD_LOGIC;
    data2_en_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage is
  signal \res_s[1]_1\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal we_even_s : STD_LOGIC;
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "data32_top_inst/subtop_loop[1].data_subtop_inst/half_axi_bits.ram_even/mem";
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
      ADDRARDADDR(13 downto 4) => Q(10 downto 1),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 4) => mem_reg_0(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => data2_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 0) => data2_i(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15) => DOBDO(9),
      DOBDO(14) => \res_s[1]_1\(14),
      DOBDO(13 downto 11) => DOBDO(8 downto 6),
      DOBDO(10) => \res_s[1]_1\(10),
      DOBDO(9 downto 6) => DOBDO(5 downto 2),
      DOBDO(5 downto 4) => \res_s[1]_1\(5 downto 4),
      DOBDO(3 downto 2) => DOBDO(1 downto 0),
      DOBDO(1 downto 0) => \res_s[1]_1\(1 downto 0),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => we_even_s,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"11",
      WEBWE(3 downto 0) => B"0000"
    );
\mem_reg_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => busy_s_0,
      I1 => data2_en_i,
      I2 => Q(0),
      O => we_even_s
    );
\readdata_s[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[1]_1\(0),
      I2 => \readdata_s_reg[30]\(0),
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
      I1 => \res_s[1]_1\(1),
      I2 => \readdata_s_reg[30]\(1),
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
      I1 => \res_s[1]_1\(4),
      I2 => \readdata_s_reg[30]\(2),
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
      I1 => \res_s[1]_1\(5),
      I2 => \readdata_s_reg[30]\(3),
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
      I1 => \res_s[1]_1\(10),
      I2 => \readdata_s_reg[30]\(4),
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
      I1 => \res_s[1]_1\(14),
      I2 => \readdata_s_reg[30]\(5),
      I3 => \readdata_s_reg[16]\,
      I4 => addr_s(1),
      O => D(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_0 is
  port (
    mem_reg_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 9 downto 0 );
    data2_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    mem_reg_1 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readdata_s_reg[31]\ : in STD_LOGIC;
    busy_s_0 : in STD_LOGIC;
    data2_en_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_0 : entity is "dataReal_to_ram_storage";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_0 is
  signal \res_s[1]_1\ : STD_LOGIC_VECTOR ( 31 downto 18 );
  signal we_odd_s : STD_LOGIC;
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "data32_top_inst/subtop_loop[1].data_subtop_inst/half_axi_bits.ram_odd/mem";
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
      ADDRARDADDR(13 downto 4) => Q(10 downto 1),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 4) => mem_reg_1(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => data2_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 0) => data2_i(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15) => \res_s[1]_1\(31),
      DOBDO(14) => mem_reg_0(5),
      DOBDO(13 downto 11) => \res_s[1]_1\(29 downto 27),
      DOBDO(10) => mem_reg_0(4),
      DOBDO(9 downto 6) => \res_s[1]_1\(25 downto 22),
      DOBDO(5 downto 4) => mem_reg_0(3 downto 2),
      DOBDO(3 downto 2) => \res_s[1]_1\(19 downto 18),
      DOBDO(1 downto 0) => mem_reg_0(1 downto 0),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => we_odd_s,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"11",
      WEBWE(3 downto 0) => B"0000"
    );
\mem_reg_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => busy_s_0,
      I2 => data2_en_i,
      O => we_odd_s
    );
\readdata_s[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[31]\,
      I2 => \res_s[1]_1\(18),
      I3 => DOBDO(0),
      I4 => addr_s(1),
      O => D(0)
    );
\readdata_s[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[31]\,
      I2 => \res_s[1]_1\(19),
      I3 => DOBDO(1),
      I4 => addr_s(1),
      O => D(1)
    );
\readdata_s[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[31]\,
      I2 => \res_s[1]_1\(22),
      I3 => DOBDO(2),
      I4 => addr_s(1),
      O => D(2)
    );
\readdata_s[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[31]\,
      I2 => \res_s[1]_1\(23),
      I3 => DOBDO(3),
      I4 => addr_s(1),
      O => D(3)
    );
\readdata_s[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[31]\,
      I2 => \res_s[1]_1\(24),
      I3 => DOBDO(4),
      I4 => addr_s(1),
      O => D(4)
    );
\readdata_s[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[31]\,
      I2 => \res_s[1]_1\(25),
      I3 => DOBDO(5),
      I4 => addr_s(1),
      O => D(5)
    );
\readdata_s[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[31]\,
      I2 => \res_s[1]_1\(27),
      I3 => DOBDO(6),
      I4 => addr_s(1),
      O => D(6)
    );
\readdata_s[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[31]\,
      I2 => \res_s[1]_1\(28),
      I3 => DOBDO(7),
      I4 => addr_s(1),
      O => D(7)
    );
\readdata_s[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[31]\,
      I2 => \res_s[1]_1\(29),
      I3 => DOBDO(8),
      I4 => addr_s(1),
      O => D(8)
    );
\readdata_s[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[31]\,
      I2 => \res_s[1]_1\(31),
      I3 => DOBDO(9),
      I4 => addr_s(1),
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_1 is
  port (
    mem_reg_0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    mem_reg_1 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    data1_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readdata_s_reg[2]\ : in STD_LOGIC;
    busy_s_0 : in STD_LOGIC;
    data1_en_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_1 : entity is "dataReal_to_ram_storage";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_1 is
  signal \res_s[0]_0\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal we_even_s : STD_LOGIC;
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "data32_top_inst/subtop_loop[0].data_subtop_inst/half_axi_bits.ram_even/mem";
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
      ADDRARDADDR(13 downto 4) => Q(10 downto 1),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 4) => mem_reg_1(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => data1_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 0) => data1_i(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15) => \res_s[0]_0\(15),
      DOBDO(14) => mem_reg_0(8),
      DOBDO(13) => \res_s[0]_0\(13),
      DOBDO(12) => mem_reg_0(7),
      DOBDO(11) => \res_s[0]_0\(11),
      DOBDO(10) => mem_reg_0(6),
      DOBDO(9) => \res_s[0]_0\(9),
      DOBDO(8 downto 7) => mem_reg_0(5 downto 4),
      DOBDO(6) => \res_s[0]_0\(6),
      DOBDO(5) => mem_reg_0(3),
      DOBDO(4) => \res_s[0]_0\(4),
      DOBDO(3) => mem_reg_0(2),
      DOBDO(2) => \res_s[0]_0\(2),
      DOBDO(1 downto 0) => mem_reg_0(1 downto 0),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => we_even_s,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"11",
      WEBWE(3 downto 0) => B"0000"
    );
mem_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => busy_s_0,
      I1 => data1_en_i,
      I2 => Q(0),
      O => we_even_s
    );
\readdata_s[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[0]_0\(11),
      I2 => DOBDO(4),
      I3 => \readdata_s_reg[2]\,
      I4 => addr_s(1),
      O => D(4)
    );
\readdata_s[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[0]_0\(13),
      I2 => DOBDO(5),
      I3 => \readdata_s_reg[2]\,
      I4 => addr_s(1),
      O => D(5)
    );
\readdata_s[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[0]_0\(15),
      I2 => DOBDO(6),
      I3 => \readdata_s_reg[2]\,
      I4 => addr_s(1),
      O => D(6)
    );
\readdata_s[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[0]_0\(2),
      I2 => DOBDO(0),
      I3 => \readdata_s_reg[2]\,
      I4 => addr_s(1),
      O => D(0)
    );
\readdata_s[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[0]_0\(4),
      I2 => DOBDO(1),
      I3 => \readdata_s_reg[2]\,
      I4 => addr_s(1),
      O => D(1)
    );
\readdata_s[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[0]_0\(6),
      I2 => DOBDO(2),
      I3 => \readdata_s_reg[2]\,
      I4 => addr_s(1),
      O => D(2)
    );
\readdata_s[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEE5555"
    )
        port map (
      I0 => addr_s(0),
      I1 => \res_s[0]_0\(9),
      I2 => DOBDO(3),
      I3 => \readdata_s_reg[2]\,
      I4 => addr_s(1),
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_2 is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \readdata_s_reg[14]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    mem_reg_0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    data1_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    busy_s : in STD_LOGIC;
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readdata_s_reg[0]\ : in STD_LOGIC;
    busy_s_0 : in STD_LOGIC;
    data1_en_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_2 : entity is "dataReal_to_ram_storage";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_2 is
  signal \res_s[0]_0\ : STD_LOGIC_VECTOR ( 30 downto 16 );
  signal we_odd_s : STD_LOGIC;
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "data32_top_inst/subtop_loop[0].data_subtop_inst/half_axi_bits.ram_odd/mem";
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
      ADDRARDADDR(13 downto 4) => Q(10 downto 1),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 4) => mem_reg_0(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => data1_clk_i,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 0) => data1_i(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15) => DOBDO(6),
      DOBDO(14) => \res_s[0]_0\(30),
      DOBDO(13) => DOBDO(5),
      DOBDO(12) => \res_s[0]_0\(28),
      DOBDO(11) => DOBDO(4),
      DOBDO(10) => \res_s[0]_0\(26),
      DOBDO(9) => DOBDO(3),
      DOBDO(8 downto 7) => \res_s[0]_0\(24 downto 23),
      DOBDO(6) => DOBDO(2),
      DOBDO(5) => \res_s[0]_0\(21),
      DOBDO(4) => DOBDO(1),
      DOBDO(3) => \res_s[0]_0\(19),
      DOBDO(2) => DOBDO(0),
      DOBDO(1 downto 0) => \res_s[0]_0\(17 downto 16),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => we_odd_s,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => s00_axi_reset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"11",
      WEBWE(3 downto 0) => B"0000"
    );
\mem_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => busy_s_0,
      I2 => data1_en_i,
      O => we_odd_s
    );
\readdata_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAFFFAFFCAFF0AF"
    )
        port map (
      I0 => busy_s,
      I1 => \res_s[0]_0\(16),
      I2 => addr_s(0),
      I3 => addr_s(1),
      I4 => \readdata_s_reg[0]\,
      I5 => \readdata_s_reg[14]\(0),
      O => D(0)
    );
\readdata_s[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[0]\,
      I2 => \res_s[0]_0\(26),
      I3 => \readdata_s_reg[14]\(6),
      I4 => addr_s(1),
      O => D(6)
    );
\readdata_s[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[0]\,
      I2 => \res_s[0]_0\(28),
      I3 => \readdata_s_reg[14]\(7),
      I4 => addr_s(1),
      O => D(7)
    );
\readdata_s[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[0]\,
      I2 => \res_s[0]_0\(30),
      I3 => \readdata_s_reg[14]\(8),
      I4 => addr_s(1),
      O => D(8)
    );
\readdata_s[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[0]\,
      I2 => \res_s[0]_0\(17),
      I3 => \readdata_s_reg[14]\(1),
      I4 => addr_s(1),
      O => D(1)
    );
\readdata_s[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[0]\,
      I2 => \res_s[0]_0\(19),
      I3 => \readdata_s_reg[14]\(2),
      I4 => addr_s(1),
      O => D(2)
    );
\readdata_s[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[0]\,
      I2 => \res_s[0]_0\(21),
      I3 => \readdata_s_reg[14]\(3),
      I4 => addr_s(1),
      O => D(3)
    );
\readdata_s[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[0]\,
      I2 => \res_s[0]_0\(23),
      I3 => \readdata_s_reg[14]\(4),
      I4 => addr_s(1),
      O => D(4)
    );
\readdata_s[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51400000"
    )
        port map (
      I0 => addr_s(0),
      I1 => \readdata_s_reg[0]\,
      I2 => \res_s[0]_0\(24),
      I3 => \readdata_s_reg[14]\(5),
      I4 => addr_s(1),
      O => D(5)
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
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    busy_s : out STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readdata_s_reg[31]\ : in STD_LOGIC;
    start_o : in STD_LOGIC;
    busy_s_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_s : in STD_LOGIC;
    data2_en_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop is
  signal busy_s_0 : STD_LOGIC;
  signal \busy_s_i_2__0_n_0\ : STD_LOGIC;
  signal \busy_s_i_3__0_n_0\ : STD_LOGIC;
  signal \busy_s_i_4__0_n_0\ : STD_LOGIC;
  signal \busy_s_i_5__0_n_0\ : STD_LOGIC;
  signal busy_sync_n_1 : STD_LOGIC;
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \res_s[1]_1\ : STD_LOGIC_VECTOR ( 30 downto 2 );
  signal sample_cpt_s0 : STD_LOGIC;
  signal \sample_cpt_s[10]_i_3__0_n_0\ : STD_LOGIC;
  signal sample_cpt_s_reg : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \sample_cpt_s_reg__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
      I3 => \sample_cpt_s_reg__0\(0),
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
      I0 => busy_s_0,
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
      Q => busy_s_0,
      R => '0'
    );
busy_sync: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_sync__xdcDup__3\
     port map (
      busy_s => busy_s,
      busy_s_0 => busy_s_0,
      busy_s_2(0) => busy_s_2(0),
      data2_clk_i => data2_clk_i,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      s00_axi_reset_0 => busy_sync_n_1,
      start_acq2_s_reg => start_acq2_s_reg_n_0,
      start_o => start_o,
      start_s => start_s,
      sync_stage3_s_reg_0(0) => sync_stage3_s_reg(0)
    );
\half_axi_bits.ram_even\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage
     port map (
      D(5) => D(14),
      D(4) => D(10),
      D(3 downto 2) => D(5 downto 4),
      D(1 downto 0) => D(1 downto 0),
      DOBDO(9) => \res_s[1]_1\(15),
      DOBDO(8 downto 6) => \res_s[1]_1\(13 downto 11),
      DOBDO(5 downto 2) => \res_s[1]_1\(9 downto 6),
      DOBDO(1 downto 0) => \res_s[1]_1\(3 downto 2),
      Q(10 downto 1) => sample_cpt_s_reg(10 downto 1),
      Q(0) => \sample_cpt_s_reg__0\(0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_s_0 => busy_s_0,
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(15 downto 0) => data2_i(15 downto 0),
      mem_reg_0(9 downto 0) => Q(9 downto 0),
      \readdata_s_reg[16]\ => \readdata_s_reg[31]\,
      \readdata_s_reg[30]\(5) => \res_s[1]_1\(30),
      \readdata_s_reg[30]\(4) => \res_s[1]_1\(26),
      \readdata_s_reg[30]\(3 downto 2) => \res_s[1]_1\(21 downto 20),
      \readdata_s_reg[30]\(1 downto 0) => \res_s[1]_1\(17 downto 16),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset
    );
\half_axi_bits.ram_odd\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_0
     port map (
      D(9) => D(15),
      D(8 downto 6) => D(13 downto 11),
      D(5 downto 2) => D(9 downto 6),
      D(1 downto 0) => D(3 downto 2),
      DOBDO(9) => \res_s[1]_1\(15),
      DOBDO(8 downto 6) => \res_s[1]_1\(13 downto 11),
      DOBDO(5 downto 2) => \res_s[1]_1\(9 downto 6),
      DOBDO(1 downto 0) => \res_s[1]_1\(3 downto 2),
      Q(10 downto 1) => sample_cpt_s_reg(10 downto 1),
      Q(0) => \sample_cpt_s_reg__0\(0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_s_0 => busy_s_0,
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(15 downto 0) => data2_i(15 downto 0),
      mem_reg_0(5) => \res_s[1]_1\(30),
      mem_reg_0(4) => \res_s[1]_1\(26),
      mem_reg_0(3 downto 2) => \res_s[1]_1\(21 downto 20),
      mem_reg_0(1 downto 0) => \res_s[1]_1\(17 downto 16),
      mem_reg_1(9 downto 0) => Q(9 downto 0),
      \readdata_s_reg[31]\ => \readdata_s_reg[31]\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset
    );
\sample_cpt_s[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sample_cpt_s_reg__0\(0),
      O => \plusOp__1\(0)
    );
\sample_cpt_s[10]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data2_rst_i,
      I1 => busy_s_0,
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
      I2 => \sample_cpt_s_reg__0\(0),
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
      I0 => \sample_cpt_s_reg__0\(0),
      I1 => sample_cpt_s_reg(1),
      O => \plusOp__1\(1)
    );
\sample_cpt_s[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sample_cpt_s_reg(1),
      I1 => \sample_cpt_s_reg__0\(0),
      I2 => sample_cpt_s_reg(2),
      O => \plusOp__1\(2)
    );
\sample_cpt_s[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sample_cpt_s_reg__0\(0),
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
      I2 => \sample_cpt_s_reg__0\(0),
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
      I1 => \sample_cpt_s_reg__0\(0),
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
      Q => \sample_cpt_s_reg__0\(0),
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
      busy_s_0 => busy_s_0,
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
    busy_s_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sync_stage3_s_reg : out STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    data1_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    busy_s : in STD_LOGIC;
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \readdata_s_reg[0]\ : in STD_LOGIC;
    start_o : in STD_LOGIC;
    start_s : in STD_LOGIC;
    start_s_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal \res_s[0]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sample_cpt_s0 : STD_LOGIC;
  signal \sample_cpt_s[10]_i_3_n_0\ : STD_LOGIC;
  signal sample_cpt_s_reg : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \sample_cpt_s_reg__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
      I3 => \sample_cpt_s_reg__0\(0),
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
      busy_s_0 => busy_s_0,
      busy_s_2(0) => busy_s_2(0),
      data1_clk_i => data1_clk_i,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      s00_axi_reset_0 => busy_sync_n_1,
      start_acq2_s => start_acq2_s,
      start_o => start_o,
      start_s => start_s,
      start_s_reg(0) => start_s_reg(0),
      sync_stage3_s_reg_0 => sync_stage3_s_reg
    );
\half_axi_bits.ram_even\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_1
     port map (
      D(6) => D(15),
      D(5) => D(13),
      D(4) => D(11),
      D(3) => D(9),
      D(2) => D(6),
      D(1) => D(4),
      D(0) => D(2),
      DOBDO(6) => \res_s[0]_0\(31),
      DOBDO(5) => \res_s[0]_0\(29),
      DOBDO(4) => \res_s[0]_0\(27),
      DOBDO(3) => \res_s[0]_0\(25),
      DOBDO(2) => \res_s[0]_0\(22),
      DOBDO(1) => \res_s[0]_0\(20),
      DOBDO(0) => \res_s[0]_0\(18),
      Q(10 downto 1) => sample_cpt_s_reg(10 downto 1),
      Q(0) => \sample_cpt_s_reg__0\(0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_s_0 => busy_s_0,
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_i(15 downto 0) => data1_i(15 downto 0),
      mem_reg_0(8) => \res_s[0]_0\(14),
      mem_reg_0(7) => \res_s[0]_0\(12),
      mem_reg_0(6) => \res_s[0]_0\(10),
      mem_reg_0(5 downto 4) => \res_s[0]_0\(8 downto 7),
      mem_reg_0(3) => \res_s[0]_0\(5),
      mem_reg_0(2) => \res_s[0]_0\(3),
      mem_reg_0(1 downto 0) => \res_s[0]_0\(1 downto 0),
      mem_reg_1(9 downto 0) => Q(9 downto 0),
      \readdata_s_reg[2]\ => \readdata_s_reg[0]\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset
    );
\half_axi_bits.ram_odd\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_storage_2
     port map (
      D(8) => D(14),
      D(7) => D(12),
      D(6) => D(10),
      D(5 downto 4) => D(8 downto 7),
      D(3) => D(5),
      D(2) => D(3),
      D(1 downto 0) => D(1 downto 0),
      DOBDO(6) => \res_s[0]_0\(31),
      DOBDO(5) => \res_s[0]_0\(29),
      DOBDO(4) => \res_s[0]_0\(27),
      DOBDO(3) => \res_s[0]_0\(25),
      DOBDO(2) => \res_s[0]_0\(22),
      DOBDO(1) => \res_s[0]_0\(20),
      DOBDO(0) => \res_s[0]_0\(18),
      Q(10 downto 1) => sample_cpt_s_reg(10 downto 1),
      Q(0) => \sample_cpt_s_reg__0\(0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_s => busy_s,
      busy_s_0 => busy_s_0,
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_i(15 downto 0) => data1_i(15 downto 0),
      mem_reg_0(9 downto 0) => Q(9 downto 0),
      \readdata_s_reg[0]\ => \readdata_s_reg[0]\,
      \readdata_s_reg[14]\(8) => \res_s[0]_0\(14),
      \readdata_s_reg[14]\(7) => \res_s[0]_0\(12),
      \readdata_s_reg[14]\(6) => \res_s[0]_0\(10),
      \readdata_s_reg[14]\(5 downto 4) => \res_s[0]_0\(8 downto 7),
      \readdata_s_reg[14]\(3) => \res_s[0]_0\(5),
      \readdata_s_reg[14]\(2) => \res_s[0]_0\(3),
      \readdata_s_reg[14]\(1 downto 0) => \res_s[0]_0\(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset
    );
\sample_cpt_s[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sample_cpt_s_reg__0\(0),
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
      I2 => \sample_cpt_s_reg__0\(0),
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
      I0 => \sample_cpt_s_reg__0\(0),
      I1 => sample_cpt_s_reg(1),
      O => \plusOp__0\(1)
    );
\sample_cpt_s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sample_cpt_s_reg(1),
      I1 => \sample_cpt_s_reg__0\(0),
      I2 => sample_cpt_s_reg(2),
      O => \plusOp__0\(2)
    );
\sample_cpt_s[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sample_cpt_s_reg__0\(0),
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
      I2 => \sample_cpt_s_reg__0\(0),
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
      I1 => \sample_cpt_s_reg__0\(0),
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
      Q => \sample_cpt_s_reg__0\(0),
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
    incr_addr_s : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data1_clk_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    data1_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_clk_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \select_chan_s_reg[0]_0\ : in STD_LOGIC;
    addr_s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    start_o : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    data1_en_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data2_en_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_top is
  signal busy_s : STD_LOGIC;
  signal busy_s_2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^incr_addr_s\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \ram_addr_s[9]_i_4_n_0\ : STD_LOGIC;
  signal ram_addr_s_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal start_s : STD_LOGIC;
  signal \subtop_loop[0].data_subtop_inst_n_17\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ram_addr_s[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ram_addr_s[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ram_addr_s[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ram_addr_s[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ram_addr_s[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ram_addr_s[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ram_addr_s[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ram_addr_s[9]_i_3\ : label is "soft_lutpair9";
begin
  incr_addr_s <= \^incr_addr_s\;
\ram_addr_s[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_addr_s_reg(0),
      O => plusOp(0)
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
      I0 => \ram_addr_s[9]_i_4_n_0\,
      I1 => ram_addr_s_reg(6),
      O => plusOp(6)
    );
\ram_addr_s[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ram_addr_s[9]_i_4_n_0\,
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
      I1 => \ram_addr_s[9]_i_4_n_0\,
      I2 => ram_addr_s_reg(7),
      I3 => ram_addr_s_reg(8),
      O => plusOp(8)
    );
\ram_addr_s[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ram_addr_s_reg(7),
      I1 => \ram_addr_s[9]_i_4_n_0\,
      I2 => ram_addr_s_reg(6),
      I3 => ram_addr_s_reg(8),
      I4 => ram_addr_s_reg(9),
      O => plusOp(9)
    );
\ram_addr_s[9]_i_4\: unisim.vcomponents.LUT6
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
      O => \ram_addr_s[9]_i_4_n_0\
    );
\ram_addr_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => plusOp(0),
      Q => ram_addr_s_reg(0),
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
      D => \select_chan_s_reg[0]_0\,
      Q => \^incr_addr_s\,
      R => '0'
    );
start_s_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \subtop_loop[0].data_subtop_inst_n_17\,
      Q => start_s,
      R => '0'
    );
\subtop_loop[0].data_subtop_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop__xdcDup__1\
     port map (
      D(15 downto 0) => D(15 downto 0),
      Q(9 downto 0) => ram_addr_s_reg(9 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_s => busy_s,
      busy_s_2(0) => busy_s_2(0),
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_i(15 downto 0) => data1_i(15 downto 0),
      data1_rst_i => data1_rst_i,
      \readdata_s_reg[0]\ => \^incr_addr_s\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      start_o => start_o,
      start_s => start_s,
      start_s_reg(0) => busy_s_2(1),
      sync_stage3_s_reg => \subtop_loop[0].data_subtop_inst_n_17\
    );
\subtop_loop[1].data_subtop_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_subtop
     port map (
      D(15 downto 0) => D(31 downto 16),
      Q(9 downto 0) => ram_addr_s_reg(9 downto 0),
      addr_s(1 downto 0) => addr_s(1 downto 0),
      busy_s => busy_s,
      busy_s_2(0) => busy_s_2(0),
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(15 downto 0) => data2_i(15 downto 0),
      data2_rst_i => data2_rst_i,
      \readdata_s_reg[31]\ => \^incr_addr_s\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      start_o => start_o,
      start_s => start_s,
      sync_stage3_s_reg(0) => busy_s_2(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram is
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
  attribute DATA_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram : entity is 16;
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
  signal handle_comm_n_10 : STD_LOGIC;
  signal handle_comm_n_4 : STD_LOGIC;
  signal handle_comm_n_8 : STD_LOGIC;
  signal incr_addr_s : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ram_reinit_s : STD_LOGIC;
  signal read_en_s : STD_LOGIC;
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
      E(0) => handle_comm_n_10,
      SR(0) => handle_comm_n_8,
      addr_s(1 downto 0) => addr_s(1 downto 0),
      data1_clk_i => data1_clk_i,
      data1_en_i => data1_en_i,
      data1_i(15 downto 0) => data1_i(15 downto 0),
      data1_rst_i => data1_rst_i,
      data2_clk_i => data2_clk_i,
      data2_en_i => data2_en_i,
      data2_i(15 downto 0) => data2_i(15 downto 0),
      data2_rst_i => data2_rst_i,
      incr_addr_s => incr_addr_s,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      \select_chan_s_reg[0]_0\ => handle_comm_n_4,
      start_o => start_o
    );
handle_comm: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dataReal_to_ram_handCom
     port map (
      E(0) => handle_comm_n_10,
      SR(0) => handle_comm_n_8,
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
      s00_axi_rready => s00_axi_rready,
      s00_axi_wvalid => s00_axi_wvalid,
      \select_chan_s_reg[0]\ => handle_comm_n_4
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "double_dds_data_pwm_0,dataReal_to_ram,{}";
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
  attribute DATA_SIZE of inst : label is 16;
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
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_signal_clock, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_dds_ps7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_reset : signal is "xilinx.com:signal:reset:1.0 s00_axi_signal_reset RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_reset : signal is "XIL_INTERFACENAME s00_axi_signal_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_dds_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
