-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sat May 30 19:57:30 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_iq_pid_vco_dupplReal_0_0_stub.vhdl
-- Design      : double_iq_pid_vco_dupplReal_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_eof_i : in STD_LOGIC;
    data_sof_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 39 downto 0 );
    data1_en_o : out STD_LOGIC;
    data1_clk_o : out STD_LOGIC;
    data1_rst_o : out STD_LOGIC;
    data1_eof_o : out STD_LOGIC;
    data1_sof_o : out STD_LOGIC;
    data1_o : out STD_LOGIC_VECTOR ( 39 downto 0 );
    data2_en_o : out STD_LOGIC;
    data2_clk_o : out STD_LOGIC;
    data2_rst_o : out STD_LOGIC;
    data2_eof_o : out STD_LOGIC;
    data2_sof_o : out STD_LOGIC;
    data2_o : out STD_LOGIC_VECTOR ( 39 downto 0 );
    data3_en_o : out STD_LOGIC;
    data3_clk_o : out STD_LOGIC;
    data3_rst_o : out STD_LOGIC;
    data3_eof_o : out STD_LOGIC;
    data3_sof_o : out STD_LOGIC;
    data3_o : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_en_i,data_clk_i,data_rst_i,data_eof_i,data_sof_i,data_i[39:0],data1_en_o,data1_clk_o,data1_rst_o,data1_eof_o,data1_sof_o,data1_o[39:0],data2_en_o,data2_clk_o,data2_rst_o,data2_eof_o,data2_sof_o,data2_o[39:0],data3_en_o,data3_clk_o,data3_rst_o,data3_eof_o,data3_sof_o,data3_o[39:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dupplReal,Vivado 2019.2";
begin
end;
