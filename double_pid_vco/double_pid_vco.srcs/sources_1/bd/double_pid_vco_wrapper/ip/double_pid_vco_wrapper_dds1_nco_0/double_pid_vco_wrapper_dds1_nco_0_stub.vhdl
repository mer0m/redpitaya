-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Tue Apr 25 10:01:24 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bma/git/fpga_design/redpitaya/double_pid_vco/double_pid_vco.srcs/sources_1/bd/double_pid_vco_wrapper/ip/double_pid_vco_wrapper_dds1_nco_0/double_pid_vco_wrapper_dds1_nco_0_stub.vhdl
-- Design      : double_pid_vco_wrapper_dds1_nco_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity double_pid_vco_wrapper_dds1_nco_0 is
  Port ( 
    ref_clk_i : in STD_LOGIC;
    ref_rst_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_reset : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    pinc_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pinc_en_i : in STD_LOGIC;
    pinc_rst_i : in STD_LOGIC;
    pinc_clk_i : in STD_LOGIC;
    poff_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    poff_en_i : in STD_LOGIC;
    poff_rst_i : in STD_LOGIC;
    poff_clk_i : in STD_LOGIC;
    dds_cos_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dds_sin_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dds_en_o : out STD_LOGIC;
    dds_clk_o : out STD_LOGIC;
    dds_rst_o : out STD_LOGIC;
    test_o : out STD_LOGIC;
    cos_fake_o : out STD_LOGIC;
    sin_fake_o : out STD_LOGIC;
    wave_clk_o : out STD_LOGIC;
    wave_rst_o : out STD_LOGIC;
    wave_en_o : out STD_LOGIC
  );

end double_pid_vco_wrapper_dds1_nco_0;

architecture stub of double_pid_vco_wrapper_dds1_nco_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ref_clk_i,ref_rst_i,s00_axi_aclk,s00_axi_reset,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,pinc_i[31:0],pinc_en_i,pinc_rst_i,pinc_clk_i,poff_i[11:0],poff_en_i,poff_rst_i,poff_clk_i,dds_cos_o[13:0],dds_sin_o[13:0],dds_en_o,dds_clk_o,dds_rst_o,test_o,cos_fake_o,sin_fake_o,wave_clk_o,wave_rst_o,wave_en_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "nco_counter,Vivado 2016.4";
begin
end;