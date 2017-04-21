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

-- IP VLNV: ggm:cogen:mixer_sin:1.0
-- IP Revision: 29

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY test_pound_mixer_sin_0_0 IS
  PORT (
    data_en_i : IN STD_LOGIC;
    data_clk_i : IN STD_LOGIC;
    data_rst_i : IN STD_LOGIC;
    data_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    nco_i_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    nco_q_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    nco_en_i : IN STD_LOGIC;
    nco_rst_i : IN STD_LOGIC;
    nco_clk_i : IN STD_LOGIC;
    data_en_o : OUT STD_LOGIC;
    data_clk_o : OUT STD_LOGIC;
    data_rst_o : OUT STD_LOGIC;
    data_i_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    data_q_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
  );
END test_pound_mixer_sin_0_0;

ARCHITECTURE test_pound_mixer_sin_0_0_arch OF test_pound_mixer_sin_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF test_pound_mixer_sin_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mixer_sin IS
    GENERIC (
      DATA_SIZE : INTEGER;
      NCO_SIZE : INTEGER
    );
    PORT (
      data_en_i : IN STD_LOGIC;
      data_clk_i : IN STD_LOGIC;
      data_rst_i : IN STD_LOGIC;
      data_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      nco_i_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      nco_q_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      nco_en_i : IN STD_LOGIC;
      nco_rst_i : IN STD_LOGIC;
      nco_clk_i : IN STD_LOGIC;
      data_en_o : OUT STD_LOGIC;
      data_clk_o : OUT STD_LOGIC;
      data_rst_o : OUT STD_LOGIC;
      data_i_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      data_q_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
    );
  END COMPONENT mixer_sin;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF test_pound_mixer_sin_0_0_arch: ARCHITECTURE IS "mixer_sin,Vivado 2016.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF test_pound_mixer_sin_0_0_arch : ARCHITECTURE IS "test_pound_mixer_sin_0_0,mixer_sin,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF data_en_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data_clk_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data_rst_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_RST, xilinx.com:signal:reset:1.0 processing_rst RST";
  ATTRIBUTE X_INTERFACE_INFO OF data_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA";
  ATTRIBUTE X_INTERFACE_INFO OF nco_i_i: SIGNAL IS "xilinx.com:interface:complex:1.0 nco_in DATA_I";
  ATTRIBUTE X_INTERFACE_INFO OF nco_q_i: SIGNAL IS "xilinx.com:interface:complex:1.0 nco_in DATA_Q";
  ATTRIBUTE X_INTERFACE_INFO OF nco_en_i: SIGNAL IS "xilinx.com:interface:complex:1.0 nco_in DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF nco_rst_i: SIGNAL IS "xilinx.com:interface:complex:1.0 nco_in DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF nco_clk_i: SIGNAL IS "xilinx.com:interface:complex:1.0 nco_in DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data_en_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_out DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data_clk_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_out DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data_rst_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_out DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data_i_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_out DATA_I";
  ATTRIBUTE X_INTERFACE_INFO OF data_q_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_out DATA_Q";
BEGIN
  U0 : mixer_sin
    GENERIC MAP (
      DATA_SIZE => 14,
      NCO_SIZE => 16
    )
    PORT MAP (
      data_en_i => data_en_i,
      data_clk_i => data_clk_i,
      data_rst_i => data_rst_i,
      data_i => data_i,
      nco_i_i => nco_i_i,
      nco_q_i => nco_q_i,
      nco_en_i => nco_en_i,
      nco_rst_i => nco_rst_i,
      nco_clk_i => nco_clk_i,
      data_en_o => data_en_o,
      data_clk_o => data_clk_o,
      data_rst_o => data_rst_o,
      data_i_o => data_i_o,
      data_q_o => data_q_o
    );
END test_pound_mixer_sin_0_0_arch;
