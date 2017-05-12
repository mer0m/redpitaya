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

-- IP VLNV: ggm:cogen:data16_multi_to_ram:1.0
-- IP Revision: 7

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY dds_gnuradio_wrapper_data16_multi_to_ram_0_0 IS
  PORT (
    data1_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    data1_en_i : IN STD_LOGIC;
    data1_clk_i : IN STD_LOGIC;
    data1_rst_i : IN STD_LOGIC;
    data1_eof_i : IN STD_LOGIC;
    data2_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    data2_en_i : IN STD_LOGIC;
    data2_clk_i : IN STD_LOGIC;
    data2_rst_i : IN STD_LOGIC;
    data2_eof_i : IN STD_LOGIC;
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_reset : IN STD_LOGIC;
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s00_axi_awvalid : IN STD_LOGIC;
    s00_axi_awready : OUT STD_LOGIC;
    s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_wvalid : IN STD_LOGIC;
    s00_axi_wready : OUT STD_LOGIC;
    s00_axi_bvalid : OUT STD_LOGIC;
    s00_axi_bready : IN STD_LOGIC;
    s00_axi_araddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC
  );
END dds_gnuradio_wrapper_data16_multi_to_ram_0_0;

ARCHITECTURE dds_gnuradio_wrapper_data16_multi_to_ram_0_0_arch OF dds_gnuradio_wrapper_data16_multi_to_ram_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF dds_gnuradio_wrapper_data16_multi_to_ram_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT data16_multi_to_ram IS
    GENERIC (
      id : INTEGER;
      NB_INPUT : INTEGER;
      DATA_FORMAT : STRING;
      DATA_SIZE : INTEGER;
      ADDR_SIZE : INTEGER;
      C_S00_AXI_DATA_WIDTH : INTEGER;
      C_S00_AXI_ADDR_WIDTH : INTEGER;
      SYNC_START : BOOLEAN
    );
    PORT (
      data1_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data1_en_i : IN STD_LOGIC;
      data1_clk_i : IN STD_LOGIC;
      data1_rst_i : IN STD_LOGIC;
      data1_eof_i : IN STD_LOGIC;
      data2_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data2_en_i : IN STD_LOGIC;
      data2_clk_i : IN STD_LOGIC;
      data2_rst_i : IN STD_LOGIC;
      data2_eof_i : IN STD_LOGIC;
      data3_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data3_en_i : IN STD_LOGIC;
      data3_clk_i : IN STD_LOGIC;
      data3_rst_i : IN STD_LOGIC;
      data3_eof_i : IN STD_LOGIC;
      data4_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data4_en_i : IN STD_LOGIC;
      data4_clk_i : IN STD_LOGIC;
      data4_rst_i : IN STD_LOGIC;
      data4_eof_i : IN STD_LOGIC;
      data5_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data5_en_i : IN STD_LOGIC;
      data5_clk_i : IN STD_LOGIC;
      data5_rst_i : IN STD_LOGIC;
      data5_eof_i : IN STD_LOGIC;
      data6_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data6_en_i : IN STD_LOGIC;
      data6_clk_i : IN STD_LOGIC;
      data6_rst_i : IN STD_LOGIC;
      data6_eof_i : IN STD_LOGIC;
      data7_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data7_en_i : IN STD_LOGIC;
      data7_clk_i : IN STD_LOGIC;
      data7_rst_i : IN STD_LOGIC;
      data7_eof_i : IN STD_LOGIC;
      data8_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data8_en_i : IN STD_LOGIC;
      data8_clk_i : IN STD_LOGIC;
      data8_rst_i : IN STD_LOGIC;
      data8_eof_i : IN STD_LOGIC;
      data9_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data9_en_i : IN STD_LOGIC;
      data9_clk_i : IN STD_LOGIC;
      data9_rst_i : IN STD_LOGIC;
      data9_eof_i : IN STD_LOGIC;
      data10_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data10_en_i : IN STD_LOGIC;
      data10_clk_i : IN STD_LOGIC;
      data10_rst_i : IN STD_LOGIC;
      data10_eof_i : IN STD_LOGIC;
      data11_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data11_en_i : IN STD_LOGIC;
      data11_clk_i : IN STD_LOGIC;
      data11_rst_i : IN STD_LOGIC;
      data11_eof_i : IN STD_LOGIC;
      data12_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data12_en_i : IN STD_LOGIC;
      data12_clk_i : IN STD_LOGIC;
      data12_rst_i : IN STD_LOGIC;
      data12_eof_i : IN STD_LOGIC;
      s00_axi_aclk : IN STD_LOGIC;
      s00_axi_reset : IN STD_LOGIC;
      s00_axi_awaddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s00_axi_awvalid : IN STD_LOGIC;
      s00_axi_awready : OUT STD_LOGIC;
      s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_wvalid : IN STD_LOGIC;
      s00_axi_wready : OUT STD_LOGIC;
      s00_axi_bvalid : OUT STD_LOGIC;
      s00_axi_bready : IN STD_LOGIC;
      s00_axi_araddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s00_axi_arvalid : IN STD_LOGIC;
      s00_axi_arready : OUT STD_LOGIC;
      s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_rvalid : OUT STD_LOGIC;
      s00_axi_rready : IN STD_LOGIC
    );
  END COMPONENT data16_multi_to_ram;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF data1_i: SIGNAL IS "xilinx.com:interface:real:1.0 data1 DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data1_en_i: SIGNAL IS "xilinx.com:interface:real:1.0 data1 DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data1_clk_i: SIGNAL IS "xilinx.com:interface:real:1.0 data1 DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data1_rst_i: SIGNAL IS "xilinx.com:interface:real:1.0 data1 DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data1_eof_i: SIGNAL IS "xilinx.com:interface:real:1.0 data1 DATA_EOF";
  ATTRIBUTE X_INTERFACE_INFO OF data2_i: SIGNAL IS "xilinx.com:interface:real:1.0 data2 DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data2_en_i: SIGNAL IS "xilinx.com:interface:real:1.0 data2 DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF data2_clk_i: SIGNAL IS "xilinx.com:interface:real:1.0 data2 DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data2_rst_i: SIGNAL IS "xilinx.com:interface:real:1.0 data2 DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF data2_eof_i: SIGNAL IS "xilinx.com:interface:real:1.0 data2 DATA_EOF";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_reset: SIGNAL IS "xilinx.com:signal:reset:1.0 s00_axi_reset RST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
BEGIN
  U0 : data16_multi_to_ram
    GENERIC MAP (
      id => 1,
      NB_INPUT => 2,
      DATA_FORMAT => "signed",
      DATA_SIZE => 16,
      ADDR_SIZE => 12,
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ADDR_WIDTH => 6,
      SYNC_START => false
    )
    PORT MAP (
      data1_i => data1_i,
      data1_en_i => data1_en_i,
      data1_clk_i => data1_clk_i,
      data1_rst_i => data1_rst_i,
      data1_eof_i => data1_eof_i,
      data2_i => data2_i,
      data2_en_i => data2_en_i,
      data2_clk_i => data2_clk_i,
      data2_rst_i => data2_rst_i,
      data2_eof_i => data2_eof_i,
      data3_i => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      data3_en_i => '0',
      data3_clk_i => '0',
      data3_rst_i => '0',
      data3_eof_i => '0',
      data4_i => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      data4_en_i => '0',
      data4_clk_i => '0',
      data4_rst_i => '0',
      data4_eof_i => '0',
      data5_i => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      data5_en_i => '0',
      data5_clk_i => '0',
      data5_rst_i => '0',
      data5_eof_i => '0',
      data6_i => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      data6_en_i => '0',
      data6_clk_i => '0',
      data6_rst_i => '0',
      data6_eof_i => '0',
      data7_i => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      data7_en_i => '0',
      data7_clk_i => '0',
      data7_rst_i => '0',
      data7_eof_i => '0',
      data8_i => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      data8_en_i => '0',
      data8_clk_i => '0',
      data8_rst_i => '0',
      data8_eof_i => '0',
      data9_i => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      data9_en_i => '0',
      data9_clk_i => '0',
      data9_rst_i => '0',
      data9_eof_i => '0',
      data10_i => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      data10_en_i => '0',
      data10_clk_i => '0',
      data10_rst_i => '0',
      data10_eof_i => '0',
      data11_i => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      data11_en_i => '0',
      data11_clk_i => '0',
      data11_rst_i => '0',
      data11_eof_i => '0',
      data12_i => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      data12_en_i => '0',
      data12_clk_i => '0',
      data12_rst_i => '0',
      data12_eof_i => '0',
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      s00_axi_awaddr => s00_axi_awaddr,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_wdata => s00_axi_wdata,
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_araddr => s00_axi_araddr,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_arready => s00_axi_arready,
      s00_axi_rdata => s00_axi_rdata,
      s00_axi_rresp => s00_axi_rresp,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_rready => s00_axi_rready
    );
END dds_gnuradio_wrapper_data16_multi_to_ram_0_0_arch;