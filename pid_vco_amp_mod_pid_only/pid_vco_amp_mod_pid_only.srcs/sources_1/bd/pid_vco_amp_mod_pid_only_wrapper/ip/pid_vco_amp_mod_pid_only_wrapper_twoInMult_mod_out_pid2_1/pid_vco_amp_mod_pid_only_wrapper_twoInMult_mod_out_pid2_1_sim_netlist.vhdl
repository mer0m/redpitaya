-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed May  9 15:28:53 2018
-- Host        : ux305 running 64-bit Debian GNU/Linux testing/unstable
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/fpga_design/redpitaya/pid_vco_amp_mod_pid_only/pid_vco_amp_mod_pid_only.srcs/sources_1/bd/pid_vco_amp_mod_pid_only_wrapper/ip/pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1/pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1_sim_netlist.vhdl
-- Design      : pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1_twoInMult is
  port (
    data_o : out STD_LOGIC_VECTOR ( 27 downto 0 );
    data_en_o : out STD_LOGIC;
    data2_en_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data1_en_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_i : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1_twoInMult : entity is "twoInMult";
end pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1_twoInMult;

architecture STRUCTURE of pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1_twoInMult is
  signal data1_en_s : STD_LOGIC;
  signal data2_en_s : STD_LOGIC;
  signal data_en_s : STD_LOGIC;
  signal NLW_data_s_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_s_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_s_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_data_s_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_s_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_s_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_data_s_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_data_s_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_data_s_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_s_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 28 );
  signal NLW_data_s_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
data1_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => data1_en_i,
      Q => data1_en_s,
      R => '0'
    );
data2_en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => data2_en_i,
      Q => data2_en_s,
      R => '0'
    );
data_en_o_reg: unisim.vcomponents.FDRE
     port map (
      C => data1_clk_i,
      CE => '1',
      D => data_en_s,
      Q => data_en_o,
      R => '0'
    );
data_s_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data1_i(13),
      A(28) => data1_i(13),
      A(27) => data1_i(13),
      A(26) => data1_i(13),
      A(25) => data1_i(13),
      A(24) => data1_i(13),
      A(23) => data1_i(13),
      A(22) => data1_i(13),
      A(21) => data1_i(13),
      A(20) => data1_i(13),
      A(19) => data1_i(13),
      A(18) => data1_i(13),
      A(17) => data1_i(13),
      A(16) => data1_i(13),
      A(15) => data1_i(13),
      A(14) => data1_i(13),
      A(13 downto 0) => data1_i(13 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_data_s_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => data2_i(13),
      B(16) => data2_i(13),
      B(15) => data2_i(13),
      B(14) => data2_i(13),
      B(13 downto 0) => data2_i(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_data_s_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_data_s_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_data_s_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => data_en_s,
      CEP => '0',
      CLK => data1_clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_data_s_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_data_s_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 28) => NLW_data_s_reg_P_UNCONNECTED(47 downto 28),
      P(27 downto 0) => data_o(27 downto 0),
      PATTERNBDETECT => NLW_data_s_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_data_s_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_data_s_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_data_s_reg_UNDERFLOW_UNCONNECTED
    );
data_s_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1_en_s,
      I1 => data2_en_s,
      O => data_en_s
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1 is
  port (
    data1_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_en_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data2_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_en_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 27 downto 0 );
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1 : entity is "pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1,twoInMult,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1 : entity is "twoInMult,Vivado 2016.4";
end pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1;

architecture STRUCTURE of pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1 is
  signal \^data1_clk_i\ : STD_LOGIC;
begin
  \^data1_clk_i\ <= data1_clk_i;
  data_clk_o <= \^data1_clk_i\;
U0: entity work.pid_vco_amp_mod_pid_only_wrapper_twoInMult_mod_out_pid2_1_twoInMult
     port map (
      data1_clk_i => \^data1_clk_i\,
      data1_en_i => data1_en_i,
      data1_i(13 downto 0) => data1_i(13 downto 0),
      data2_en_i => data2_en_i,
      data2_i(13 downto 0) => data2_i(13 downto 0),
      data_en_o => data_en_o,
      data_o(27 downto 0) => data_o(27 downto 0)
    );
end STRUCTURE;
