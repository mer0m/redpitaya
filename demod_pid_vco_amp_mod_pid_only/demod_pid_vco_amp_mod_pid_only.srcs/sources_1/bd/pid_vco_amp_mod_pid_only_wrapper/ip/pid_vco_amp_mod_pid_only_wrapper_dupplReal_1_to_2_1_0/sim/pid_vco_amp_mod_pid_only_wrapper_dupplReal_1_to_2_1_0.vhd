-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: ggm:cogen:dupplReal_1_to_2:1.0
-- IP Revision: 7

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_1_0 IS
  PORT (
    data_en_i : IN STD_LOGIC;
    data_eof_i : IN STD_LOGIC;
    data_clk_i : IN STD_LOGIC;
    data_rst_i : IN STD_LOGIC;
    data_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    data1_en_o : OUT STD_LOGIC;
    data1_eof_o : OUT STD_LOGIC;
    data1_clk_o : OUT STD_LOGIC;
    data1_rst_o : OUT STD_LOGIC;
    data1_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    data2_en_o : OUT STD_LOGIC;
    data2_eof_o : OUT STD_LOGIC;
    data2_clk_o : OUT STD_LOGIC;
    data2_rst_o : OUT STD_LOGIC;
    data2_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
  );
END pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_1_0;

ARCHITECTURE pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_1_0_arch OF pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT dupplReal_1_to_2 IS
    GENERIC (
      DATA_SIZE : INTEGER
    );
    PORT (
      data_en_i : IN STD_LOGIC;
      data_eof_i : IN STD_LOGIC;
      data_clk_i : IN STD_LOGIC;
      data_rst_i : IN STD_LOGIC;
      data_i : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      data1_en_o : OUT STD_LOGIC;
      data1_eof_o : OUT STD_LOGIC;
      data1_clk_o : OUT STD_LOGIC;
      data1_rst_o : OUT STD_LOGIC;
      data1_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      data2_en_o : OUT STD_LOGIC;
      data2_eof_o : OUT STD_LOGIC;
      data2_clk_o : OUT STD_LOGIC;
      data2_rst_o : OUT STD_LOGIC;
      data2_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
    );
  END COMPONENT dupplReal_1_to_2;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF data_en_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data_eof_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_EOF";
  ATTRIBUTE X_INTERFACE_INFO OF data_clk_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data_rst_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data_i: SIGNAL IS "xilinx.com:interface:real:1.0 data_in DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data1_en_o: SIGNAL IS "xilinx.com:interface:real:1.0 data1_out DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data1_eof_o: SIGNAL IS "xilinx.com:interface:real:1.0 data1_out DATA_EOF";
  ATTRIBUTE X_INTERFACE_INFO OF data1_clk_o: SIGNAL IS "xilinx.com:interface:real:1.0 data1_out DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data1_rst_o: SIGNAL IS "xilinx.com:interface:real:1.0 data1_out DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data1_o: SIGNAL IS "xilinx.com:interface:real:1.0 data1_out DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data2_en_o: SIGNAL IS "xilinx.com:interface:real:1.0 data2_out DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data2_eof_o: SIGNAL IS "xilinx.com:interface:real:1.0 data2_out DATA_EOF";
  ATTRIBUTE X_INTERFACE_INFO OF data2_clk_o: SIGNAL IS "xilinx.com:interface:real:1.0 data2_out DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data2_rst_o: SIGNAL IS "xilinx.com:interface:real:1.0 data2_out DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data2_o: SIGNAL IS "xilinx.com:interface:real:1.0 data2_out DATA";
BEGIN
  U0 : dupplReal_1_to_2
    GENERIC MAP (
      DATA_SIZE => 14
    )
    PORT MAP (
      data_en_i => data_en_i,
      data_eof_i => data_eof_i,
      data_clk_i => data_clk_i,
      data_rst_i => data_rst_i,
      data_i => data_i,
      data1_en_o => data1_en_o,
      data1_eof_o => data1_eof_o,
      data1_clk_o => data1_clk_o,
      data1_rst_o => data1_rst_o,
      data1_o => data1_o,
      data2_en_o => data2_en_o,
      data2_eof_o => data2_eof_o,
      data2_clk_o => data2_clk_o,
      data2_rst_o => data2_rst_o,
      data2_o => data2_o
    );
END pid_vco_amp_mod_pid_only_wrapper_dupplReal_1_to_2_1_0_arch;
