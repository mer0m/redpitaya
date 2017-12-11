-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Thu Dec  7 10:24:54 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.1 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bma/git/fpga_design/redpitaya/gain_only/gain_only.srcs/sources_1/bd/gain_only_wrapper/ip/gain_only_wrapper_redpitaya_adc_dac_clk_0_0/gain_only_wrapper_redpitaya_adc_dac_clk_0_0_sim_netlist.vhdl
-- Design      : gain_only_wrapper_redpitaya_adc_dac_clk_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gain_only_wrapper_redpitaya_adc_dac_clk_0_0_redpitaya_adc_dac_clk is
  port (
    adc_clk_p_i : in STD_LOGIC;
    adc_clk_n_i : in STD_LOGIC;
    dac_clk_o : out STD_LOGIC;
    dac_2clk_o : out STD_LOGIC;
    dac_2ph_o : out STD_LOGIC;
    dac_locked_o : out STD_LOGIC;
    adc_clk_o : out STD_LOGIC;
    adc_rst_i : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    ser_clk_o : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gain_only_wrapper_redpitaya_adc_dac_clk_0_0_redpitaya_adc_dac_clk : entity is "redpitaya_adc_dac_clk";
end gain_only_wrapper_redpitaya_adc_dac_clk_0_0_redpitaya_adc_dac_clk;

architecture STRUCTURE of gain_only_wrapper_redpitaya_adc_dac_clk_0_0_redpitaya_adc_dac_clk is
  signal adc_clk_in : STD_LOGIC;
  signal \^adc_clk_o\ : STD_LOGIC;
  signal dac_2clk_out : STD_LOGIC;
  signal dac_2ph_out : STD_LOGIC;
  signal dac_clk_fb : STD_LOGIC;
  signal dac_clk_fb_buf : STD_LOGIC;
  signal dac_clk_out : STD_LOGIC;
  signal ser_clk_out : STD_LOGIC;
  signal NLW_i_dac_plle2_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_plle2_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_plle2_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_plle2_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of i_adc_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of i_clk : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of i_clk : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of i_clk : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of i_clk : label is "AUTO";
  attribute BOX_TYPE of i_dac1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of i_dac2_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of i_dac2ph_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of i_dac_plle2 : label is "PRIMITIVE";
  attribute BOX_TYPE of i_dacfb_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of i_ser_buf : label is "PRIMITIVE";
begin
  adc_clk_o <= \^adc_clk_o\;
i_adc_buf: unisim.vcomponents.BUFG
     port map (
      I => adc_clk_in,
      O => \^adc_clk_o\
    );
i_clk: unisim.vcomponents.IBUFDS
    generic map(
      DQS_BIAS => "FALSE",
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_clk_p_i,
      IB => adc_clk_n_i,
      O => adc_clk_in
    );
i_dac1_buf: unisim.vcomponents.BUFG
     port map (
      I => dac_clk_out,
      O => dac_clk_o
    );
i_dac2_buf: unisim.vcomponents.BUFG
     port map (
      I => dac_2clk_out,
      O => dac_2clk_o
    );
i_dac2ph_buf: unisim.vcomponents.BUFG
     port map (
      I => dac_2ph_out,
      O => dac_2ph_o
    );
i_dac_plle2: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 8,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 8.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE => 8,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 4,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 4,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => -45.000000,
      CLKOUT3_DIVIDE => 4,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "BUF_IN",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => dac_clk_fb_buf,
      CLKFBOUT => dac_clk_fb,
      CLKIN1 => \^adc_clk_o\,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKOUT0 => dac_clk_out,
      CLKOUT1 => dac_2clk_out,
      CLKOUT2 => dac_2ph_out,
      CLKOUT3 => ser_clk_out,
      CLKOUT4 => NLW_i_dac_plle2_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_i_dac_plle2_CLKOUT5_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_i_dac_plle2_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_i_dac_plle2_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => dac_locked_o,
      PWRDWN => '0',
      RST => adc_rst_i
    );
i_dacfb_buf: unisim.vcomponents.BUFG
     port map (
      I => dac_clk_fb,
      O => dac_clk_fb_buf
    );
i_ser_buf: unisim.vcomponents.BUFG
     port map (
      I => ser_clk_out,
      O => ser_clk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gain_only_wrapper_redpitaya_adc_dac_clk_0_0 is
  port (
    adc_clk_p_i : in STD_LOGIC;
    adc_clk_n_i : in STD_LOGIC;
    dac_clk_o : out STD_LOGIC;
    dac_2clk_o : out STD_LOGIC;
    dac_2ph_o : out STD_LOGIC;
    dac_locked_o : out STD_LOGIC;
    adc_clk_o : out STD_LOGIC;
    adc_rst_i : in STD_LOGIC;
    ser_clk_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of gain_only_wrapper_redpitaya_adc_dac_clk_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of gain_only_wrapper_redpitaya_adc_dac_clk_0_0 : entity is "gain_only_wrapper_redpitaya_adc_dac_clk_0_0,redpitaya_adc_dac_clk,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of gain_only_wrapper_redpitaya_adc_dac_clk_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of gain_only_wrapper_redpitaya_adc_dac_clk_0_0 : entity is "redpitaya_adc_dac_clk,Vivado 2016.4";
end gain_only_wrapper_redpitaya_adc_dac_clk_0_0;

architecture STRUCTURE of gain_only_wrapper_redpitaya_adc_dac_clk_0_0 is
begin
inst: entity work.gain_only_wrapper_redpitaya_adc_dac_clk_0_0_redpitaya_adc_dac_clk
     port map (
      adc_clk_n_i => adc_clk_n_i,
      adc_clk_o => adc_clk_o,
      adc_clk_p_i => adc_clk_p_i,
      adc_rst_i => adc_rst_i,
      clk_i => '0',
      dac_2clk_o => dac_2clk_o,
      dac_2ph_o => dac_2ph_o,
      dac_clk_o => dac_clk_o,
      dac_locked_o => dac_locked_o,
      ser_clk_o => ser_clk_o
    );
end STRUCTURE;
