-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Fri Apr 21 09:23:55 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/fpga_design/redpitaya/double_pid_vco/double_pid_vco.srcs/sources_1/bd/double_pid_vco_wrapper/ip/double_pid_vco_wrapper_ltc2145_0_0/double_pid_vco_wrapper_ltc2145_0_0_sim_netlist.vhdl
-- Design      : double_pid_vco_wrapper_ltc2145_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_pid_vco_wrapper_ltc2145_0_0_ltc2145_cmos_capture is
  port (
    data_b_en_o : out STD_LOGIC;
    data_a_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_b_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_clk_i : in STD_LOGIC;
    adc_data_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_data_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_pid_vco_wrapper_ltc2145_0_0_ltc2145_cmos_capture : entity is "ltc2145_cmos_capture";
end double_pid_vco_wrapper_ltc2145_0_0_ltc2145_cmos_capture;

architecture STRUCTURE of double_pid_vco_wrapper_ltc2145_0_0_ltc2145_cmos_capture is
  signal adc_data_en_i_1_n_0 : STD_LOGIC;
  signal \data_b_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_b_s[9]_i_1_n_0\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 12 downto 0 );
begin
adc_data_en_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => adc_data_en_i_1_n_0
    );
adc_data_en_reg: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => '1',
      Q => data_b_en_o
    );
\data_a_s[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(0),
      O => p_1_out(0)
    );
\data_a_s[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(10),
      O => p_1_out(10)
    );
\data_a_s[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(11),
      O => p_1_out(11)
    );
\data_a_s[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(12),
      O => p_1_out(12)
    );
\data_a_s[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(1),
      O => p_1_out(1)
    );
\data_a_s[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(2),
      O => p_1_out(2)
    );
\data_a_s[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(3),
      O => p_1_out(3)
    );
\data_a_s[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(4),
      O => p_1_out(4)
    );
\data_a_s[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(5),
      O => p_1_out(5)
    );
\data_a_s[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(6),
      O => p_1_out(6)
    );
\data_a_s[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(7),
      O => p_1_out(7)
    );
\data_a_s[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(8),
      O => p_1_out(8)
    );
\data_a_s[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_a_i(9),
      O => p_1_out(9)
    );
\data_a_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => p_1_out(0),
      Q => data_a_o(0)
    );
\data_a_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => p_1_out(10),
      Q => data_a_o(10)
    );
\data_a_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => p_1_out(11),
      Q => data_a_o(11)
    );
\data_a_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => p_1_out(12),
      Q => data_a_o(12)
    );
\data_a_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => adc_data_a_i(13),
      Q => data_a_o(13)
    );
\data_a_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => p_1_out(1),
      Q => data_a_o(1)
    );
\data_a_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => p_1_out(2),
      Q => data_a_o(2)
    );
\data_a_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => p_1_out(3),
      Q => data_a_o(3)
    );
\data_a_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => p_1_out(4),
      Q => data_a_o(4)
    );
\data_a_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => p_1_out(5),
      Q => data_a_o(5)
    );
\data_a_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => p_1_out(6),
      Q => data_a_o(6)
    );
\data_a_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => p_1_out(7),
      Q => data_a_o(7)
    );
\data_a_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => p_1_out(8),
      Q => data_a_o(8)
    );
\data_a_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => p_1_out(9),
      Q => data_a_o(9)
    );
\data_b_s[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(0),
      O => \data_b_s[0]_i_1_n_0\
    );
\data_b_s[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(10),
      O => \data_b_s[10]_i_1_n_0\
    );
\data_b_s[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(11),
      O => \data_b_s[11]_i_1_n_0\
    );
\data_b_s[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(12),
      O => \data_b_s[12]_i_1_n_0\
    );
\data_b_s[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(1),
      O => \data_b_s[1]_i_1_n_0\
    );
\data_b_s[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(2),
      O => \data_b_s[2]_i_1_n_0\
    );
\data_b_s[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(3),
      O => \data_b_s[3]_i_1_n_0\
    );
\data_b_s[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(4),
      O => \data_b_s[4]_i_1_n_0\
    );
\data_b_s[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(5),
      O => \data_b_s[5]_i_1_n_0\
    );
\data_b_s[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(6),
      O => \data_b_s[6]_i_1_n_0\
    );
\data_b_s[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(7),
      O => \data_b_s[7]_i_1_n_0\
    );
\data_b_s[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(8),
      O => \data_b_s[8]_i_1_n_0\
    );
\data_b_s[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_b_i(9),
      O => \data_b_s[9]_i_1_n_0\
    );
\data_b_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => \data_b_s[0]_i_1_n_0\,
      Q => data_b_o(0)
    );
\data_b_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => \data_b_s[10]_i_1_n_0\,
      Q => data_b_o(10)
    );
\data_b_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => \data_b_s[11]_i_1_n_0\,
      Q => data_b_o(11)
    );
\data_b_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => \data_b_s[12]_i_1_n_0\,
      Q => data_b_o(12)
    );
\data_b_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => adc_data_b_i(13),
      Q => data_b_o(13)
    );
\data_b_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => \data_b_s[1]_i_1_n_0\,
      Q => data_b_o(1)
    );
\data_b_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => \data_b_s[2]_i_1_n_0\,
      Q => data_b_o(2)
    );
\data_b_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => \data_b_s[3]_i_1_n_0\,
      Q => data_b_o(3)
    );
\data_b_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => \data_b_s[4]_i_1_n_0\,
      Q => data_b_o(4)
    );
\data_b_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => \data_b_s[5]_i_1_n_0\,
      Q => data_b_o(5)
    );
\data_b_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => \data_b_s[6]_i_1_n_0\,
      Q => data_b_o(6)
    );
\data_b_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => \data_b_s[7]_i_1_n_0\,
      Q => data_b_o(7)
    );
\data_b_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => \data_b_s[8]_i_1_n_0\,
      Q => data_b_o(8)
    );
\data_b_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => adc_clk_i,
      CE => '1',
      CLR => adc_data_en_i_1_n_0,
      D => \data_b_s[9]_i_1_n_0\,
      Q => data_b_o(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_pid_vco_wrapper_ltc2145_0_0_ltc2145 is
  port (
    data_b_en_o : out STD_LOGIC;
    data_a_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_b_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_clk_i : in STD_LOGIC;
    adc_data_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_data_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of double_pid_vco_wrapper_ltc2145_0_0_ltc2145 : entity is "ltc2145";
end double_pid_vco_wrapper_ltc2145_0_0_ltc2145;

architecture STRUCTURE of double_pid_vco_wrapper_ltc2145_0_0_ltc2145 is
begin
ltc2145_capture_inst: entity work.double_pid_vco_wrapper_ltc2145_0_0_ltc2145_cmos_capture
     port map (
      adc_clk_i => adc_clk_i,
      adc_data_a_i(13 downto 0) => adc_data_a_i(13 downto 0),
      adc_data_b_i(13 downto 0) => adc_data_b_i(13 downto 0),
      data_a_o(13 downto 0) => data_a_o(13 downto 0),
      data_b_en_o => data_b_en_o,
      data_b_o(13 downto 0) => data_b_o(13 downto 0),
      resetn => resetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity double_pid_vco_wrapper_ltc2145_0_0 is
  port (
    processing_rst_i : in STD_LOGIC;
    resetn : in STD_LOGIC;
    adc_cdcs : out STD_LOGIC;
    adc_clk_i : in STD_LOGIC;
    adc_data_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_data_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_clk : out STD_LOGIC;
    data_a_en_o : out STD_LOGIC;
    data_a_clk_o : out STD_LOGIC;
    data_a_rst_o : out STD_LOGIC;
    data_a_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_b_en_o : out STD_LOGIC;
    data_b_clk_o : out STD_LOGIC;
    data_b_rst_o : out STD_LOGIC;
    data_b_o : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of double_pid_vco_wrapper_ltc2145_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of double_pid_vco_wrapper_ltc2145_0_0 : entity is "double_pid_vco_wrapper_ltc2145_0_0,ltc2145,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of double_pid_vco_wrapper_ltc2145_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of double_pid_vco_wrapper_ltc2145_0_0 : entity is "ltc2145,Vivado 2016.4";
end double_pid_vco_wrapper_ltc2145_0_0;

architecture STRUCTURE of double_pid_vco_wrapper_ltc2145_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^adc_clk_i\ : STD_LOGIC;
  signal \^data_b_en_o\ : STD_LOGIC;
  signal \^processing_rst_i\ : STD_LOGIC;
begin
  \^adc_clk_i\ <= adc_clk_i;
  \^processing_rst_i\ <= processing_rst_i;
  adc_cdcs <= \<const1>\;
  adc_clk <= \^adc_clk_i\;
  data_a_clk_o <= \^adc_clk_i\;
  data_a_en_o <= \^data_b_en_o\;
  data_a_rst_o <= \^processing_rst_i\;
  data_b_clk_o <= \^adc_clk_i\;
  data_b_en_o <= \^data_b_en_o\;
  data_b_rst_o <= \^processing_rst_i\;
U0: entity work.double_pid_vco_wrapper_ltc2145_0_0_ltc2145
     port map (
      adc_clk_i => \^adc_clk_i\,
      adc_data_a_i(13 downto 0) => adc_data_a_i(13 downto 0),
      adc_data_b_i(13 downto 0) => adc_data_b_i(13 downto 0),
      data_a_o(13 downto 0) => data_a_o(13 downto 0),
      data_b_en_o => \^data_b_en_o\,
      data_b_o(13 downto 0) => data_b_o(13 downto 0),
      resetn => resetn
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
