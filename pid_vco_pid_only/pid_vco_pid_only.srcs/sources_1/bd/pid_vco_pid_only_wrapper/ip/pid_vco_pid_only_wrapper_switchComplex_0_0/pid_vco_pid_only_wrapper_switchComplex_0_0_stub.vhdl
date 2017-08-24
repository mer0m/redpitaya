-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed Aug 23 12:05:09 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.1 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bma/git/fpga_design/redpitaya/pid_vco_pid_only/pid_vco_pid_only.srcs/sources_1/bd/pid_vco_pid_only_wrapper/ip/pid_vco_pid_only_wrapper_switchComplex_0_0/pid_vco_pid_only_wrapper_switchComplex_0_0_stub.vhdl
-- Design      : pid_vco_pid_only_wrapper_switchComplex_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pid_vco_pid_only_wrapper_switchComplex_0_0 is
  Port ( 
    data1_i_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_q_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data1_eof_i : in STD_LOGIC;
    data1_rst_i : in STD_LOGIC;
    data1_en_i : in STD_LOGIC;
    data1_clk_i : in STD_LOGIC;
    data2_i_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_q_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data2_eof_i : in STD_LOGIC;
    data2_rst_i : in STD_LOGIC;
    data2_en_i : in STD_LOGIC;
    data2_clk_i : in STD_LOGIC;
    data_i_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_q_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_eof_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
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
    s00_axi_rready : in STD_LOGIC
  );

end pid_vco_pid_only_wrapper_switchComplex_0_0;

architecture stub of pid_vco_pid_only_wrapper_switchComplex_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data1_i_i[13:0],data1_q_i[13:0],data1_eof_i,data1_rst_i,data1_en_i,data1_clk_i,data2_i_i[13:0],data2_q_i[13:0],data2_eof_i,data2_rst_i,data2_en_i,data2_clk_i,data_i_o[13:0],data_q_o[13:0],data_eof_o,data_rst_o,data_en_o,data_clk_o,s00_axi_aclk,s00_axi_reset,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "switchComplex,Vivado 2016.4";
begin
end;