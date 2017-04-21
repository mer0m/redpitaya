-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: gwbs:user:ltc2145:1.0
-- IP Revision: 10

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY xil_defaultlib;
USE xil_defaultlib.ltc2145;

ENTITY pid_vco_wrapper_ltc2145_0_0 IS
  PORT (
    processing_rst_i : IN STD_LOGIC;
    resetn : IN STD_LOGIC;
    adc_cdcs : OUT STD_LOGIC;
    adc_clk_i : IN STD_LOGIC;
    adc_data_a_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    adc_data_b_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    adc_clk : OUT STD_LOGIC;
    data_a_en_o : OUT STD_LOGIC;
    data_a_clk_o : OUT STD_LOGIC;
    data_a_rst_o : OUT STD_LOGIC;
    data_a_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    data_b_en_o : OUT STD_LOGIC;
    data_b_clk_o : OUT STD_LOGIC;
    data_b_rst_o : OUT STD_LOGIC;
    data_b_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
  );
END pid_vco_wrapper_ltc2145_0_0;

ARCHITECTURE pid_vco_wrapper_ltc2145_0_0_arch OF pid_vco_wrapper_ltc2145_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF pid_vco_wrapper_ltc2145_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ltc2145 IS
    PORT (
      processing_rst_i : IN STD_LOGIC;
      resetn : IN STD_LOGIC;
      adc_cdcs : OUT STD_LOGIC;
      adc_clk_i : IN STD_LOGIC;
      adc_data_a_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      adc_data_b_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      adc_clk : OUT STD_LOGIC;
      data_a_en_o : OUT STD_LOGIC;
      data_a_clk_o : OUT STD_LOGIC;
      data_a_rst_o : OUT STD_LOGIC;
      data_a_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      data_b_en_o : OUT STD_LOGIC;
      data_b_clk_o : OUT STD_LOGIC;
      data_b_rst_o : OUT STD_LOGIC;
      data_b_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
    );
  END COMPONENT ltc2145;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF data_a_en_o: SIGNAL IS "xilinx.com:interface:real:1.0 data_a DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data_a_clk_o: SIGNAL IS "xilinx.com:interface:real:1.0 data_a DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data_a_rst_o: SIGNAL IS "xilinx.com:interface:real:1.0 data_a DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data_a_o: SIGNAL IS "xilinx.com:interface:real:1.0 data_a DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data_b_en_o: SIGNAL IS "xilinx.com:interface:real:1.0 data_b DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data_b_clk_o: SIGNAL IS "xilinx.com:interface:real:1.0 data_b DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data_b_rst_o: SIGNAL IS "xilinx.com:interface:real:1.0 data_b DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data_b_o: SIGNAL IS "xilinx.com:interface:real:1.0 data_b DATA";
BEGIN
  U0 : ltc2145
    PORT MAP (
      processing_rst_i => processing_rst_i,
      resetn => resetn,
      adc_cdcs => adc_cdcs,
      adc_clk_i => adc_clk_i,
      adc_data_a_i => adc_data_a_i,
      adc_data_b_i => adc_data_b_i,
      adc_clk => adc_clk,
      data_a_en_o => data_a_en_o,
      data_a_clk_o => data_a_clk_o,
      data_a_rst_o => data_a_rst_o,
      data_a_o => data_a_o,
      data_b_en_o => data_b_en_o,
      data_b_clk_o => data_b_clk_o,
      data_b_rst_o => data_b_rst_o,
      data_b_o => data_b_o
    );
END pid_vco_wrapper_ltc2145_0_0_arch;
