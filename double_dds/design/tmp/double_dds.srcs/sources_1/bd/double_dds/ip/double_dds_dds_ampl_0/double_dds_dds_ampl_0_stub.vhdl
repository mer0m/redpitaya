-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun Oct 11 16:19:21 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bma/git/fpga_design/redpitaya/double_dds/design/tmp/double_dds.srcs/sources_1/bd/double_dds/ip/double_dds_dds_ampl_0/double_dds_dds_ampl_0_stub.vhdl
-- Design      : double_dds_dds_ampl_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity double_dds_dds_ampl_0 is
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
    dataA_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dataA_en_o : out STD_LOGIC;
    dataA_eof_o : out STD_LOGIC;
    dataA_clk_o : out STD_LOGIC;
    dataA_rst_o : out STD_LOGIC;
    dataB_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dataB_en_o : out STD_LOGIC;
    dataB_eof_o : out STD_LOGIC;
    dataB_clk_o : out STD_LOGIC;
    dataB_rst_o : out STD_LOGIC
  );

end double_dds_dds_ampl_0;

architecture stub of double_dds_dds_ampl_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ref_clk_i,ref_rst_i,s00_axi_aclk,s00_axi_reset,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,dataA_o[13:0],dataA_en_o,dataA_eof_o,dataA_clk_o,dataA_rst_o,dataB_o[13:0],dataB_en_o,dataB_eof_o,dataB_clk_o,dataB_rst_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axi_to_dac,Vivado 2019.2";
begin
end;
