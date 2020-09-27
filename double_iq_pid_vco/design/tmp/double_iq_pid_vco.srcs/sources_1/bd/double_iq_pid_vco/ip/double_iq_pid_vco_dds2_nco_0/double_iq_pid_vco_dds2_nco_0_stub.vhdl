-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri May 15 18:34:21 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode synth_stub -rename_top double_iq_pid_vco_dds2_nco_0 -prefix
--               double_iq_pid_vco_dds2_nco_0_ double_iq_pid_vco_demod2_nco_0_stub.vhdl
-- Design      : double_iq_pid_vco_demod2_nco_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity double_iq_pid_vco_dds2_nco_0 is
  Port ( 
    ref_clk_i : in STD_LOGIC;
    ref_rst_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    sync_i : in STD_LOGIC;
    pinc_i : in STD_LOGIC_VECTOR ( 39 downto 0 );
    pinc_en_i : in STD_LOGIC;
    pinc_rst_i : in STD_LOGIC;
    pinc_clk_i : in STD_LOGIC;
    poff_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    poff_en_i : in STD_LOGIC;
    poff_rst_i : in STD_LOGIC;
    poff_clk_i : in STD_LOGIC;
    dds_cos_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dds_sin_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dds_en_o : out STD_LOGIC;
    dds_clk_o : out STD_LOGIC;
    dds_rst_o : out STD_LOGIC;
    trigger_o : out STD_LOGIC;
    cos_fake_o : out STD_LOGIC;
    sin_fake_o : out STD_LOGIC;
    wave_clk_o : out STD_LOGIC;
    wave_rst_o : out STD_LOGIC;
    wave_en_o : out STD_LOGIC
  );

end double_iq_pid_vco_dds2_nco_0;

architecture stub of double_iq_pid_vco_dds2_nco_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ref_clk_i,ref_rst_i,s00_axi_aclk,s00_axi_reset,s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,sync_i,pinc_i[39:0],pinc_en_i,pinc_rst_i,pinc_clk_i,poff_i[11:0],poff_en_i,poff_rst_i,poff_clk_i,dds_cos_o[15:0],dds_sin_o[15:0],dds_en_o,dds_clk_o,dds_rst_o,trigger_o,cos_fake_o,sin_fake_o,wave_clk_o,wave_rst_o,wave_en_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "nco_counter,Vivado 2019.2";
begin
end;
