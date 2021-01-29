-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: ggm:cogen:meanReal:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY double_iq_pid_vco_meanReal_2_0 IS
  PORT (
    data_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    data_en_i : IN STD_LOGIC;
    data_clk_i : IN STD_LOGIC;
    data_rst_i : IN STD_LOGIC;
    data_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    data_clk_o : OUT STD_LOGIC;
    data_rst_o : OUT STD_LOGIC;
    data_en_o : OUT STD_LOGIC
  );
END double_iq_pid_vco_meanReal_2_0;

ARCHITECTURE double_iq_pid_vco_meanReal_2_0_arch OF double_iq_pid_vco_meanReal_2_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF double_iq_pid_vco_meanReal_2_0_arch: ARCHITECTURE IS "yes";
  COMPONENT meanReal IS
    GENERIC (
      SIGNED_FORMAT : BOOLEAN;
      NB_ACCUM : INTEGER;
      SHIFT : INTEGER;
      DATA_OUT_SIZE : INTEGER;
      DATA_IN_SIZE : INTEGER
    );
    PORT (
      data_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      data_en_i : IN STD_LOGIC;
      data_clk_i : IN STD_LOGIC;
      data_rst_i : IN STD_LOGIC;
      data_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      data_clk_o : OUT STD_LOGIC;
      data_rst_o : OUT STD_LOGIC;
      data_en_o : OUT STD_LOGIC
    );
  END COMPONENT meanReal;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF double_iq_pid_vco_meanReal_2_0_arch: ARCHITECTURE IS "meanReal,Vivado 2019.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF double_iq_pid_vco_meanReal_2_0_arch : ARCHITECTURE IS "double_iq_pid_vco_meanReal_2_0,meanReal,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF double_iq_pid_vco_meanReal_2_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF data_en_o: SIGNAL IS "xilinx.com:interface:real:1.0 data_out DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data_rst_o: SIGNAL IS "xilinx.com:interface:real:1.0 data_out DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data_clk_o: SIGNAL IS "xilinx.com:interface:real:1.0 data_out DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data_o: SIGNAL IS "xilinx.com:interface:real:1.0 data_out DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data_rst_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data_clk_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data_en_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA";
BEGIN
  U0 : meanReal
    GENERIC MAP (
      SIGNED_FORMAT => true,
      NB_ACCUM => 8192,
      SHIFT => 13,
      DATA_OUT_SIZE => 16,
      DATA_IN_SIZE => 14
    )
    PORT MAP (
      data_i => data_i,
      data_en_i => data_en_i,
      data_clk_i => data_clk_i,
      data_rst_i => data_rst_i,
      data_o => data_o,
      data_clk_o => data_clk_o,
      data_rst_o => data_rst_o,
      data_en_o => data_en_o
    );
END double_iq_pid_vco_meanReal_2_0_arch;
