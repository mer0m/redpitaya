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

-- IP VLNV: ggm:cogen:axi_to_dac:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY double_iq_pid_vco_dds_range_0 IS
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
    dataA_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    dataA_en_o : OUT STD_LOGIC;
    dataA_eof_o : OUT STD_LOGIC;
    dataA_clk_o : OUT STD_LOGIC;
    dataA_rst_o : OUT STD_LOGIC;
    dataB_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    dataB_en_o : OUT STD_LOGIC;
    dataB_eof_o : OUT STD_LOGIC;
    dataB_clk_o : OUT STD_LOGIC;
    dataB_rst_o : OUT STD_LOGIC
  );
END double_iq_pid_vco_dds_range_0;

ARCHITECTURE double_iq_pid_vco_dds_range_0_arch OF double_iq_pid_vco_dds_range_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF double_iq_pid_vco_dds_range_0_arch: ARCHITECTURE IS "yes";
  COMPONENT axi_to_dac IS
    GENERIC (
      DATA_SIZE : INTEGER;
      DATAA_DEFAULT_OUT : INTEGER;
      DATAA_EN_ALWAYS_HIGH : BOOLEAN;
      DATAB_DEFAULT_OUT : INTEGER;
      DATAB_EN_ALWAYS_HIGH : BOOLEAN;
      SYNCHRONIZE_CHAN : BOOLEAN;
      id : INTEGER;
      C_S00_AXI_DATA_WIDTH : INTEGER;
      C_S00_AXI_ADDR_WIDTH : INTEGER
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
      dataA_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      dataA_en_o : OUT STD_LOGIC;
      dataA_eof_o : OUT STD_LOGIC;
      dataA_clk_o : OUT STD_LOGIC;
      dataA_rst_o : OUT STD_LOGIC;
      dataB_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      dataB_en_o : OUT STD_LOGIC;
      dataB_eof_o : OUT STD_LOGIC;
      dataB_clk_o : OUT STD_LOGIC;
      dataB_rst_o : OUT STD_LOGIC
    );
  END COMPONENT axi_to_dac;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF double_iq_pid_vco_dds_range_0_arch: ARCHITECTURE IS "axi_to_dac,Vivado 2019.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF double_iq_pid_vco_dds_range_0_arch : ARCHITECTURE IS "double_iq_pid_vco_dds_range_0,axi_to_dac,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF double_iq_pid_vco_dds_range_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF dataB_rst_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataB_out DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF dataB_clk_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataB_out DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF dataB_eof_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataB_out DATA_EOF";
  ATTRIBUTE X_INTERFACE_INFO OF dataB_en_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataB_out DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF dataB_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataB_out DATA";
  ATTRIBUTE X_INTERFACE_INFO OF dataA_rst_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataA_out DATA_RST";
  ATTRIBUTE X_INTERFACE_INFO OF dataA_clk_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataA_out DATA_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF dataA_eof_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataA_out DATA_EOF";
  ATTRIBUTE X_INTERFACE_INFO OF dataA_en_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataA_out DATA_EN";
  ATTRIBUTE X_INTERFACE_INFO OF dataA_o: SIGNAL IS "xilinx.com:interface:real:1.0 dataA_out DATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NU" & 
"M_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_reset: SIGNAL IS "XIL_INTERFACENAME s00_axi_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_reset: SIGNAL IS "xilinx.com:signal:reset:1.0 s00_axi_reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aclk: SIGNAL IS "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_reset, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_ps7_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ref_rst_i: SIGNAL IS "XIL_INTERFACENAME ref_rst_i, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ref_rst_i: SIGNAL IS "xilinx.com:signal:reset:1.0 ref_rst_i RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ref_clk_i: SIGNAL IS "XIL_INTERFACENAME ref_clk_i, ASSOCIATED_BUSIF dataA_out:dataB_out, ASSOCIATED_RESET ref_rst_i, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN double_iq_pid_vco_redpitaya_converters_0_0_clk_o, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ref_clk_i: SIGNAL IS "xilinx.com:signal:clock:1.0 ref_clk_i CLK";
BEGIN
  U0 : axi_to_dac
    GENERIC MAP (
      DATA_SIZE => 14,
      DATAA_DEFAULT_OUT => 0,
      DATAA_EN_ALWAYS_HIGH => false,
      DATAB_DEFAULT_OUT => 0,
      DATAB_EN_ALWAYS_HIGH => false,
      SYNCHRONIZE_CHAN => false,
      id => 1,
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ADDR_WIDTH => 4
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
      dataA_o => dataA_o,
      dataA_en_o => dataA_en_o,
      dataA_eof_o => dataA_eof_o,
      dataA_clk_o => dataA_clk_o,
      dataA_rst_o => dataA_rst_o,
      dataB_o => dataB_o,
      dataB_en_o => dataB_en_o,
      dataB_eof_o => dataB_eof_o,
      dataB_clk_o => dataB_clk_o,
      dataB_rst_o => dataB_rst_o
    );
END double_iq_pid_vco_dds_range_0_arch;
