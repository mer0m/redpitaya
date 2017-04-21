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

-- IP VLNV: user.org:user:nco_counter:1.0
-- IP Revision: 15

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY vco_only_wrapper_dds_nco_0 IS
  PORT (
    ref_clk_i : IN STD_LOGIC;
    ref_rst_i : IN STD_LOGIC;
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_reset : IN STD_LOGIC;
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awvalid : IN STD_LOGIC;
    s00_axi_awready : OUT STD_LOGIC;
    s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_wvalid : IN STD_LOGIC;
    s00_axi_wready : OUT STD_LOGIC;
    s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_bvalid : OUT STD_LOGIC;
    s00_axi_bready : IN STD_LOGIC;
    s00_axi_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC;
    pinc_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    pinc_en_i : IN STD_LOGIC;
    pinc_rst_i : IN STD_LOGIC;
    pinc_clk_i : IN STD_LOGIC;
    poff_i : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    poff_en_i : IN STD_LOGIC;
    poff_rst_i : IN STD_LOGIC;
    poff_clk_i : IN STD_LOGIC;
    dds_cos_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    dds_sin_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    dds_en_o : OUT STD_LOGIC;
    dds_clk_o : OUT STD_LOGIC;
    dds_rst_o : OUT STD_LOGIC;
    test_o : OUT STD_LOGIC;
    cos_fake_o : OUT STD_LOGIC;
    sin_fake_o : OUT STD_LOGIC;
    wave_clk_o : OUT STD_LOGIC;
    wave_rst_o : OUT STD_LOGIC;
    wave_en_o : OUT STD_LOGIC
  );
END vco_only_wrapper_dds_nco_0;

ARCHITECTURE vco_only_wrapper_dds_nco_0_arch OF vco_only_wrapper_dds_nco_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF vco_only_wrapper_dds_nco_0_arch: ARCHITECTURE IS "yes";
  COMPONENT nco_counter IS
    GENERIC (
      id : INTEGER;
      DATA_SIZE : INTEGER;
      COUNTER_SIZE : INTEGER;
      C_S00_AXI_DATA_WIDTH : INTEGER;
      C_S00_AXI_ADDR_WIDTH : INTEGER;
      LUT_SIZE : INTEGER
    );
    PORT (
      ref_clk_i : IN STD_LOGIC;
      ref_rst_i : IN STD_LOGIC;
      s00_axi_aclk : IN STD_LOGIC;
      s00_axi_reset : IN STD_LOGIC;
      s00_axi_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_awvalid : IN STD_LOGIC;
      s00_axi_awready : OUT STD_LOGIC;
      s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_wvalid : IN STD_LOGIC;
      s00_axi_wready : OUT STD_LOGIC;
      s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_bvalid : OUT STD_LOGIC;
      s00_axi_bready : IN STD_LOGIC;
      s00_axi_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_arvalid : IN STD_LOGIC;
      s00_axi_arready : OUT STD_LOGIC;
      s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_rvalid : OUT STD_LOGIC;
      s00_axi_rready : IN STD_LOGIC;
      pinc_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pinc_en_i : IN STD_LOGIC;
      pinc_rst_i : IN STD_LOGIC;
      pinc_clk_i : IN STD_LOGIC;
      poff_i : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      poff_en_i : IN STD_LOGIC;
      poff_rst_i : IN STD_LOGIC;
      poff_clk_i : IN STD_LOGIC;
      dds_cos_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      dds_sin_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      dds_en_o : OUT STD_LOGIC;
      dds_clk_o : OUT STD_LOGIC;
      dds_rst_o : OUT STD_LOGIC;
      test_o : OUT STD_LOGIC;
      cos_fake_o : OUT STD_LOGIC;
      sin_fake_o : OUT STD_LOGIC;
      wave_clk_o : OUT STD_LOGIC;
      wave_rst_o : OUT STD_LOGIC;
      wave_en_o : OUT STD_LOGIC
    );
  END COMPONENT nco_counter;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF vco_only_wrapper_dds_nco_0_arch: ARCHITECTURE IS "nco_counter,Vivado 2016.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF vco_only_wrapper_dds_nco_0_arch : ARCHITECTURE IS "vco_only_wrapper_dds_nco_0,nco_counter,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s00_axi_signal_clock CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_reset: SIGNAL IS "xilinx.com:signal:reset:1.0 s00_axi_signal_reset RST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pinc_i: SIGNAL IS "xilinx.com:interface:real:1.0 pinc_in DATA";
  ATTRIBUTE X_INTERFACE_INFO OF pinc_en_i: SIGNAL IS "xilinx.com:interface:real:1.0 pinc_in DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF pinc_rst_i: SIGNAL IS "xilinx.com:interface:real:1.0 pinc_in DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF pinc_clk_i: SIGNAL IS "xilinx.com:interface:real:1.0 pinc_in DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF poff_i: SIGNAL IS "xilinx.com:interface:real:1.0 poff_in DATA";
  ATTRIBUTE X_INTERFACE_INFO OF poff_en_i: SIGNAL IS "xilinx.com:interface:real:1.0 poff_in DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF poff_rst_i: SIGNAL IS "xilinx.com:interface:real:1.0 poff_in DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF poff_clk_i: SIGNAL IS "xilinx.com:interface:real:1.0 poff_in DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF dds_cos_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_dds DATA_I";
  ATTRIBUTE X_INTERFACE_INFO OF dds_sin_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_dds DATA_Q";
  ATTRIBUTE X_INTERFACE_INFO OF dds_en_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_dds DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF dds_clk_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_dds DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF dds_rst_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_dds DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF cos_fake_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_out DATA_I";
  ATTRIBUTE X_INTERFACE_INFO OF sin_fake_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_out DATA_Q";
  ATTRIBUTE X_INTERFACE_INFO OF wave_clk_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_out DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF wave_rst_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_out DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF wave_en_o: SIGNAL IS "xilinx.com:interface:complex:1.0 data_out DATA_EN";
BEGIN
  U0 : nco_counter
    GENERIC MAP (
      id => 1,
      DATA_SIZE => 14,
      COUNTER_SIZE => 32,
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ADDR_WIDTH => 4,
      LUT_SIZE => 10
    )
    PORT MAP (
      ref_clk_i => ref_clk_i,
      ref_rst_i => ref_rst_i,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_reset => s00_axi_reset,
      s00_axi_awaddr => s00_axi_awaddr,
      s00_axi_awprot => s00_axi_awprot,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_wdata => s00_axi_wdata,
      s00_axi_wstrb => s00_axi_wstrb,
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_bresp => s00_axi_bresp,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_araddr => s00_axi_araddr,
      s00_axi_arprot => s00_axi_arprot,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_arready => s00_axi_arready,
      s00_axi_rdata => s00_axi_rdata,
      s00_axi_rresp => s00_axi_rresp,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_rready => s00_axi_rready,
      pinc_i => pinc_i,
      pinc_en_i => pinc_en_i,
      pinc_rst_i => pinc_rst_i,
      pinc_clk_i => pinc_clk_i,
      poff_i => poff_i,
      poff_en_i => poff_en_i,
      poff_rst_i => poff_rst_i,
      poff_clk_i => poff_clk_i,
      dds_cos_o => dds_cos_o,
      dds_sin_o => dds_sin_o,
      dds_en_o => dds_en_o,
      dds_clk_o => dds_clk_o,
      dds_rst_o => dds_rst_o,
      test_o => test_o,
      cos_fake_o => cos_fake_o,
      sin_fake_o => sin_fake_o,
      wave_clk_o => wave_clk_o,
      wave_rst_o => wave_rst_o,
      wave_en_o => wave_en_o
    );
END vco_only_wrapper_dds_nco_0_arch;
