-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: ggm:cogen:redpitaya_converters:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY double_iq_pid_vco_redpitaya_converters_0_0 IS
  PORT (
    adc_rst_i : IN STD_LOGIC;
    clk_o : OUT STD_LOGIC;
    rst_o : OUT STD_LOGIC;
    rstn_o : OUT STD_LOGIC;
    adc_clk_p_i : IN STD_LOGIC;
    adc_clk_n_i : IN STD_LOGIC;
    adc_data_a_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    adc_data_b_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    adc_cdcs : OUT STD_LOGIC;
    data_a_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    data_a_en_o : OUT STD_LOGIC;
    data_a_clk_o : OUT STD_LOGIC;
    data_a_rst_o : OUT STD_LOGIC;
    data_b_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    data_b_en_o : OUT STD_LOGIC;
    data_b_clk_o : OUT STD_LOGIC;
    data_b_rst_o : OUT STD_LOGIC;
    dac_dat_a_en_i : IN STD_LOGIC;
    dac_dat_a_rst_i : IN STD_LOGIC;
    dac_dat_a_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    dac_dat_b_en_i : IN STD_LOGIC;
    dac_dat_b_rst_i : IN STD_LOGIC;
    dac_dat_b_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    dac_dat_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    dac_wrt_o : OUT STD_LOGIC;
    dac_sel_o : OUT STD_LOGIC;
    dac_clk_o : OUT STD_LOGIC;
    dac_rst_o : OUT STD_LOGIC
  );
END double_iq_pid_vco_redpitaya_converters_0_0;

ARCHITECTURE double_iq_pid_vco_redpitaya_converters_0_0_arch OF double_iq_pid_vco_redpitaya_converters_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF double_iq_pid_vco_redpitaya_converters_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT redpitaya_converters IS
    GENERIC (
      ADC_SIZE : INTEGER;
      ADC_EN : BOOLEAN;
      CLOCK_DUTY_CYCLE_STABILIZER_EN : BOOLEAN;
      DAC_EN : BOOLEAN
    );
    PORT (
      adc_rst_i : IN STD_LOGIC;
      clk_o : OUT STD_LOGIC;
      rst_o : OUT STD_LOGIC;
      rstn_o : OUT STD_LOGIC;
      adc_clk_p_i : IN STD_LOGIC;
      adc_clk_n_i : IN STD_LOGIC;
      adc_data_a_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      adc_data_b_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      adc_cdcs : OUT STD_LOGIC;
      data_a_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      data_a_en_o : OUT STD_LOGIC;
      data_a_clk_o : OUT STD_LOGIC;
      data_a_rst_o : OUT STD_LOGIC;
      data_b_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      data_b_en_o : OUT STD_LOGIC;
      data_b_clk_o : OUT STD_LOGIC;
      data_b_rst_o : OUT STD_LOGIC;
      dac_dat_a_en_i : IN STD_LOGIC;
      dac_dat_a_rst_i : IN STD_LOGIC;
      dac_dat_a_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      dac_dat_b_en_i : IN STD_LOGIC;
      dac_dat_b_rst_i : IN STD_LOGIC;
      dac_dat_b_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      dac_dat_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      dac_wrt_o : OUT STD_LOGIC;
      dac_sel_o : OUT STD_LOGIC;
      dac_clk_o : OUT STD_LOGIC;
      dac_rst_o : OUT STD_LOGIC
    );
  END COMPONENT redpitaya_converters;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF double_iq_pid_vco_redpitaya_converters_0_0_arch: ARCHITECTURE IS "redpitaya_converters,Vivado 2019.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF double_iq_pid_vco_redpitaya_converters_0_0_arch : ARCHITECTURE IS "double_iq_pid_vco_redpitaya_converters_0_0,redpitaya_converters,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF double_iq_pid_vco_redpitaya_converters_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF dac_rst_o: SIGNAL IS "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_RST";
  ATTRIBUTE X_INTERFACE_INFO OF dac_clk_o: SIGNAL IS "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF dac_sel_o: SIGNAL IS "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_SEL";
  ATTRIBUTE X_INTERFACE_INFO OF dac_wrt_o: SIGNAL IS "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_WRT";
  ATTRIBUTE X_INTERFACE_INFO OF dac_dat_o: SIGNAL IS "ggm:interface:redpitaya_converters_if:1.0 phys_interface DAC_DAT";
  ATTRIBUTE X_INTERFACE_INFO OF dac_dat_b_i: SIGNAL IS "xilinx.com:interface:real:1.0 dataB_in DATA";
  ATTRIBUTE X_INTERFACE_INFO OF dac_dat_b_rst_i: SIGNAL IS "xilinx.com:interface:real:1.0 dataB_in DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF dac_dat_b_en_i: SIGNAL IS "xilinx.com:interface:real:1.0 dataB_in DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF dac_dat_a_i: SIGNAL IS "xilinx.com:interface:real:1.0 dataA_in DATA";
  ATTRIBUTE X_INTERFACE_INFO OF dac_dat_a_rst_i: SIGNAL IS "xilinx.com:interface:real:1.0 dataA_in DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF dac_dat_a_en_i: SIGNAL IS "xilinx.com:interface:real:1.0 dataA_in DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data_b_rst_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataB_out DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data_b_clk_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataB_out DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data_b_en_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataB_out DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data_b_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataB_out DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data_a_rst_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataA_out DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data_a_clk_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataA_out DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data_a_en_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataA_out DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data_a_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataA_out DATA";
  ATTRIBUTE X_INTERFACE_INFO OF adc_cdcs: SIGNAL IS "ggm:interface:redpitaya_converters_if:1.0 phys_interface ADC_CDCS";
  ATTRIBUTE X_INTERFACE_INFO OF adc_data_b_i: SIGNAL IS "ggm:interface:redpitaya_converters_if:1.0 phys_interface ADC_B";
  ATTRIBUTE X_INTERFACE_INFO OF adc_data_a_i: SIGNAL IS "ggm:interface:redpitaya_converters_if:1.0 phys_interface ADC_A";
  ATTRIBUTE X_INTERFACE_INFO OF adc_clk_n_i: SIGNAL IS "ggm:interface:redpitaya_converters_if:1.0 phys_interface CLK_N";
  ATTRIBUTE X_INTERFACE_INFO OF adc_clk_p_i: SIGNAL IS "ggm:interface:redpitaya_converters_if:1.0 phys_interface CLK_P";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rstn_o: SIGNAL IS "XIL_INTERFACENAME rstn_o, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rstn_o: SIGNAL IS "xilinx.com:signal:reset:1.0 rstn_o RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst_o: SIGNAL IS "XIL_INTERFACENAME rst_o, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst_o: SIGNAL IS "xilinx.com:signal:reset:1.0 rst_o RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk_o: SIGNAL IS "XIL_INTERFACENAME clk_o, ASSOCIATED_BUSIF dataA_out:dataB_out:dataA_in:dataB_in, ASSOCIATED_RESET rst_o:rstn_o, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_redpitaya_converters_0_0_clk_o, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk_o: SIGNAL IS "xilinx.com:signal:clock:1.0 clk_o CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF adc_rst_i: SIGNAL IS "XIL_INTERFACENAME adc_rst_i, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF adc_rst_i: SIGNAL IS "xilinx.com:signal:reset:1.0 adc_rst_i RST";
BEGIN
  U0 : redpitaya_converters
    GENERIC MAP (
      ADC_SIZE => 14,
      ADC_EN => true,
      CLOCK_DUTY_CYCLE_STABILIZER_EN => false,
      DAC_EN => true
    )
    PORT MAP (
      adc_rst_i => adc_rst_i,
      clk_o => clk_o,
      rst_o => rst_o,
      rstn_o => rstn_o,
      adc_clk_p_i => adc_clk_p_i,
      adc_clk_n_i => adc_clk_n_i,
      adc_data_a_i => adc_data_a_i,
      adc_data_b_i => adc_data_b_i,
      adc_cdcs => adc_cdcs,
      data_a_o => data_a_o,
      data_a_en_o => data_a_en_o,
      data_a_clk_o => data_a_clk_o,
      data_a_rst_o => data_a_rst_o,
      data_b_o => data_b_o,
      data_b_en_o => data_b_en_o,
      data_b_clk_o => data_b_clk_o,
      data_b_rst_o => data_b_rst_o,
      dac_dat_a_en_i => dac_dat_a_en_i,
      dac_dat_a_rst_i => dac_dat_a_rst_i,
      dac_dat_a_i => dac_dat_a_i,
      dac_dat_b_en_i => dac_dat_b_en_i,
      dac_dat_b_rst_i => dac_dat_b_rst_i,
      dac_dat_b_i => dac_dat_b_i,
      dac_dat_o => dac_dat_o,
      dac_wrt_o => dac_wrt_o,
      dac_sel_o => dac_sel_o,
      dac_clk_o => dac_clk_o,
      dac_rst_o => dac_rst_o
    );
END double_iq_pid_vco_redpitaya_converters_0_0_arch;
