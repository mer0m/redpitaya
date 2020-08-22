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

-- IP VLNV: ggm:cogen:dupplReal:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY double_iq_pid_vco_dupplReal_0_0 IS
  PORT (
    data_en_i : IN STD_LOGIC;
    data_clk_i : IN STD_LOGIC;
    data_rst_i : IN STD_LOGIC;
    data_eof_i : IN STD_LOGIC;
    data_sof_i : IN STD_LOGIC;
    data_i : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
    data1_en_o : OUT STD_LOGIC;
    data1_clk_o : OUT STD_LOGIC;
    data1_rst_o : OUT STD_LOGIC;
    data1_eof_o : OUT STD_LOGIC;
    data1_sof_o : OUT STD_LOGIC;
    data1_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
    data2_en_o : OUT STD_LOGIC;
    data2_clk_o : OUT STD_LOGIC;
    data2_rst_o : OUT STD_LOGIC;
    data2_eof_o : OUT STD_LOGIC;
    data2_sof_o : OUT STD_LOGIC;
    data2_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
    data3_en_o : OUT STD_LOGIC;
    data3_clk_o : OUT STD_LOGIC;
    data3_rst_o : OUT STD_LOGIC;
    data3_eof_o : OUT STD_LOGIC;
    data3_sof_o : OUT STD_LOGIC;
    data3_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0)
  );
END double_iq_pid_vco_dupplReal_0_0;

ARCHITECTURE double_iq_pid_vco_dupplReal_0_0_arch OF double_iq_pid_vco_dupplReal_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF double_iq_pid_vco_dupplReal_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT dupplReal IS
    GENERIC (
      NB_OUTPUT : INTEGER;
      DATA_SIZE : INTEGER
    );
    PORT (
      data_en_i : IN STD_LOGIC;
      data_clk_i : IN STD_LOGIC;
      data_rst_i : IN STD_LOGIC;
      data_eof_i : IN STD_LOGIC;
      data_sof_i : IN STD_LOGIC;
      data_i : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
      data1_en_o : OUT STD_LOGIC;
      data1_clk_o : OUT STD_LOGIC;
      data1_rst_o : OUT STD_LOGIC;
      data1_eof_o : OUT STD_LOGIC;
      data1_sof_o : OUT STD_LOGIC;
      data1_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data2_en_o : OUT STD_LOGIC;
      data2_clk_o : OUT STD_LOGIC;
      data2_rst_o : OUT STD_LOGIC;
      data2_eof_o : OUT STD_LOGIC;
      data2_sof_o : OUT STD_LOGIC;
      data2_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data3_en_o : OUT STD_LOGIC;
      data3_clk_o : OUT STD_LOGIC;
      data3_rst_o : OUT STD_LOGIC;
      data3_eof_o : OUT STD_LOGIC;
      data3_sof_o : OUT STD_LOGIC;
      data3_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data4_en_o : OUT STD_LOGIC;
      data4_clk_o : OUT STD_LOGIC;
      data4_rst_o : OUT STD_LOGIC;
      data4_eof_o : OUT STD_LOGIC;
      data4_sof_o : OUT STD_LOGIC;
      data4_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data5_en_o : OUT STD_LOGIC;
      data5_clk_o : OUT STD_LOGIC;
      data5_rst_o : OUT STD_LOGIC;
      data5_eof_o : OUT STD_LOGIC;
      data5_sof_o : OUT STD_LOGIC;
      data5_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data6_en_o : OUT STD_LOGIC;
      data6_clk_o : OUT STD_LOGIC;
      data6_rst_o : OUT STD_LOGIC;
      data6_eof_o : OUT STD_LOGIC;
      data6_sof_o : OUT STD_LOGIC;
      data6_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data7_en_o : OUT STD_LOGIC;
      data7_clk_o : OUT STD_LOGIC;
      data7_rst_o : OUT STD_LOGIC;
      data7_eof_o : OUT STD_LOGIC;
      data7_sof_o : OUT STD_LOGIC;
      data7_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data8_en_o : OUT STD_LOGIC;
      data8_clk_o : OUT STD_LOGIC;
      data8_rst_o : OUT STD_LOGIC;
      data8_eof_o : OUT STD_LOGIC;
      data8_sof_o : OUT STD_LOGIC;
      data8_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data9_en_o : OUT STD_LOGIC;
      data9_clk_o : OUT STD_LOGIC;
      data9_rst_o : OUT STD_LOGIC;
      data9_eof_o : OUT STD_LOGIC;
      data9_sof_o : OUT STD_LOGIC;
      data9_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data10_en_o : OUT STD_LOGIC;
      data10_clk_o : OUT STD_LOGIC;
      data10_rst_o : OUT STD_LOGIC;
      data10_eof_o : OUT STD_LOGIC;
      data10_sof_o : OUT STD_LOGIC;
      data10_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data11_en_o : OUT STD_LOGIC;
      data11_clk_o : OUT STD_LOGIC;
      data11_rst_o : OUT STD_LOGIC;
      data11_eof_o : OUT STD_LOGIC;
      data11_sof_o : OUT STD_LOGIC;
      data11_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data12_en_o : OUT STD_LOGIC;
      data12_clk_o : OUT STD_LOGIC;
      data12_rst_o : OUT STD_LOGIC;
      data12_eof_o : OUT STD_LOGIC;
      data12_sof_o : OUT STD_LOGIC;
      data12_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data13_en_o : OUT STD_LOGIC;
      data13_clk_o : OUT STD_LOGIC;
      data13_rst_o : OUT STD_LOGIC;
      data13_eof_o : OUT STD_LOGIC;
      data13_sof_o : OUT STD_LOGIC;
      data13_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data14_en_o : OUT STD_LOGIC;
      data14_clk_o : OUT STD_LOGIC;
      data14_rst_o : OUT STD_LOGIC;
      data14_eof_o : OUT STD_LOGIC;
      data14_sof_o : OUT STD_LOGIC;
      data14_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data15_en_o : OUT STD_LOGIC;
      data15_clk_o : OUT STD_LOGIC;
      data15_rst_o : OUT STD_LOGIC;
      data15_eof_o : OUT STD_LOGIC;
      data15_sof_o : OUT STD_LOGIC;
      data15_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data16_en_o : OUT STD_LOGIC;
      data16_clk_o : OUT STD_LOGIC;
      data16_rst_o : OUT STD_LOGIC;
      data16_eof_o : OUT STD_LOGIC;
      data16_sof_o : OUT STD_LOGIC;
      data16_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data17_en_o : OUT STD_LOGIC;
      data17_clk_o : OUT STD_LOGIC;
      data17_rst_o : OUT STD_LOGIC;
      data17_eof_o : OUT STD_LOGIC;
      data17_sof_o : OUT STD_LOGIC;
      data17_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data18_en_o : OUT STD_LOGIC;
      data18_clk_o : OUT STD_LOGIC;
      data18_rst_o : OUT STD_LOGIC;
      data18_eof_o : OUT STD_LOGIC;
      data18_sof_o : OUT STD_LOGIC;
      data18_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data19_en_o : OUT STD_LOGIC;
      data19_clk_o : OUT STD_LOGIC;
      data19_rst_o : OUT STD_LOGIC;
      data19_eof_o : OUT STD_LOGIC;
      data19_sof_o : OUT STD_LOGIC;
      data19_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data20_en_o : OUT STD_LOGIC;
      data20_clk_o : OUT STD_LOGIC;
      data20_rst_o : OUT STD_LOGIC;
      data20_eof_o : OUT STD_LOGIC;
      data20_sof_o : OUT STD_LOGIC;
      data20_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data21_en_o : OUT STD_LOGIC;
      data21_clk_o : OUT STD_LOGIC;
      data21_rst_o : OUT STD_LOGIC;
      data21_eof_o : OUT STD_LOGIC;
      data21_sof_o : OUT STD_LOGIC;
      data21_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data22_en_o : OUT STD_LOGIC;
      data22_clk_o : OUT STD_LOGIC;
      data22_rst_o : OUT STD_LOGIC;
      data22_eof_o : OUT STD_LOGIC;
      data22_sof_o : OUT STD_LOGIC;
      data22_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data23_en_o : OUT STD_LOGIC;
      data23_clk_o : OUT STD_LOGIC;
      data23_rst_o : OUT STD_LOGIC;
      data23_eof_o : OUT STD_LOGIC;
      data23_sof_o : OUT STD_LOGIC;
      data23_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data24_en_o : OUT STD_LOGIC;
      data24_clk_o : OUT STD_LOGIC;
      data24_rst_o : OUT STD_LOGIC;
      data24_eof_o : OUT STD_LOGIC;
      data24_sof_o : OUT STD_LOGIC;
      data24_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data25_en_o : OUT STD_LOGIC;
      data25_clk_o : OUT STD_LOGIC;
      data25_rst_o : OUT STD_LOGIC;
      data25_eof_o : OUT STD_LOGIC;
      data25_sof_o : OUT STD_LOGIC;
      data25_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data26_en_o : OUT STD_LOGIC;
      data26_clk_o : OUT STD_LOGIC;
      data26_rst_o : OUT STD_LOGIC;
      data26_eof_o : OUT STD_LOGIC;
      data26_sof_o : OUT STD_LOGIC;
      data26_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data27_en_o : OUT STD_LOGIC;
      data27_clk_o : OUT STD_LOGIC;
      data27_rst_o : OUT STD_LOGIC;
      data27_eof_o : OUT STD_LOGIC;
      data27_sof_o : OUT STD_LOGIC;
      data27_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data28_en_o : OUT STD_LOGIC;
      data28_clk_o : OUT STD_LOGIC;
      data28_rst_o : OUT STD_LOGIC;
      data28_eof_o : OUT STD_LOGIC;
      data28_sof_o : OUT STD_LOGIC;
      data28_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data29_en_o : OUT STD_LOGIC;
      data29_clk_o : OUT STD_LOGIC;
      data29_rst_o : OUT STD_LOGIC;
      data29_eof_o : OUT STD_LOGIC;
      data29_sof_o : OUT STD_LOGIC;
      data29_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data30_en_o : OUT STD_LOGIC;
      data30_clk_o : OUT STD_LOGIC;
      data30_rst_o : OUT STD_LOGIC;
      data30_eof_o : OUT STD_LOGIC;
      data30_sof_o : OUT STD_LOGIC;
      data30_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data31_en_o : OUT STD_LOGIC;
      data31_clk_o : OUT STD_LOGIC;
      data31_rst_o : OUT STD_LOGIC;
      data31_eof_o : OUT STD_LOGIC;
      data31_sof_o : OUT STD_LOGIC;
      data31_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      data32_en_o : OUT STD_LOGIC;
      data32_clk_o : OUT STD_LOGIC;
      data32_rst_o : OUT STD_LOGIC;
      data32_eof_o : OUT STD_LOGIC;
      data32_sof_o : OUT STD_LOGIC;
      data32_o : OUT STD_LOGIC_VECTOR(39 DOWNTO 0)
    );
  END COMPONENT dupplReal;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF double_iq_pid_vco_dupplReal_0_0_arch: ARCHITECTURE IS "dupplReal,Vivado 2019.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF double_iq_pid_vco_dupplReal_0_0_arch : ARCHITECTURE IS "double_iq_pid_vco_dupplReal_0_0,dupplReal,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF double_iq_pid_vco_dupplReal_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF data3_o: SIGNAL IS "xilinx.com:interface:real:1.0 data3_out DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data3_sof_o: SIGNAL IS "xilinx.com:interface:real:1.0 data3_out DATA_SOF";
  ATTRIBUTE X_INTERFACE_INFO OF data3_eof_o: SIGNAL IS "xilinx.com:interface:real:1.0 data3_out DATA_EOF";
  ATTRIBUTE X_INTERFACE_INFO OF data3_rst_o: SIGNAL IS "xilinx.com:interface:real:1.0 data3_out DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data3_clk_o: SIGNAL IS "xilinx.com:interface:real:1.0 data3_out DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data3_en_o: SIGNAL IS "xilinx.com:interface:real:1.0 data3_out DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data2_o: SIGNAL IS "xilinx.com:interface:real:1.0 data2_out DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data2_sof_o: SIGNAL IS "xilinx.com:interface:real:1.0 data2_out DATA_SOF";
  ATTRIBUTE X_INTERFACE_INFO OF data2_eof_o: SIGNAL IS "xilinx.com:interface:real:1.0 data2_out DATA_EOF";
  ATTRIBUTE X_INTERFACE_INFO OF data2_rst_o: SIGNAL IS "xilinx.com:interface:real:1.0 data2_out DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data2_clk_o: SIGNAL IS "xilinx.com:interface:real:1.0 data2_out DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data2_en_o: SIGNAL IS "xilinx.com:interface:real:1.0 data2_out DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data1_o: SIGNAL IS "xilinx.com:interface:real:1.0 data1_out DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data1_sof_o: SIGNAL IS "xilinx.com:interface:real:1.0 data1_out DATA_SOF";
  ATTRIBUTE X_INTERFACE_INFO OF data1_eof_o: SIGNAL IS "xilinx.com:interface:real:1.0 data1_out DATA_EOF";
  ATTRIBUTE X_INTERFACE_INFO OF data1_rst_o: SIGNAL IS "xilinx.com:interface:real:1.0 data1_out DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data1_clk_o: SIGNAL IS "xilinx.com:interface:real:1.0 data1_out DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data1_en_o: SIGNAL IS "xilinx.com:interface:real:1.0 data1_out DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data_sof_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_SOF";
  ATTRIBUTE X_INTERFACE_INFO OF data_eof_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_EOF";
  ATTRIBUTE X_INTERFACE_INFO OF data_rst_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data_clk_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data_en_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_EN";
BEGIN
  U0 : dupplReal
    GENERIC MAP (
      NB_OUTPUT => 3,
      DATA_SIZE => 40
    )
    PORT MAP (
      data_en_i => data_en_i,
      data_clk_i => data_clk_i,
      data_rst_i => data_rst_i,
      data_eof_i => data_eof_i,
      data_sof_i => data_sof_i,
      data_i => data_i,
      data1_en_o => data1_en_o,
      data1_clk_o => data1_clk_o,
      data1_rst_o => data1_rst_o,
      data1_eof_o => data1_eof_o,
      data1_sof_o => data1_sof_o,
      data1_o => data1_o,
      data2_en_o => data2_en_o,
      data2_clk_o => data2_clk_o,
      data2_rst_o => data2_rst_o,
      data2_eof_o => data2_eof_o,
      data2_sof_o => data2_sof_o,
      data2_o => data2_o,
      data3_en_o => data3_en_o,
      data3_clk_o => data3_clk_o,
      data3_rst_o => data3_rst_o,
      data3_eof_o => data3_eof_o,
      data3_sof_o => data3_sof_o,
      data3_o => data3_o
    );
END double_iq_pid_vco_dupplReal_0_0_arch;
