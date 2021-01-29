-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Jan 29 17:08:27 2021
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode synth_stub -rename_top double_iq_pid_vco_mixer_sin_5_0 -prefix
--               double_iq_pid_vco_mixer_sin_5_0_ double_iq_pid_vco_mixer_sin_0_0_stub.vhdl
-- Design      : double_iq_pid_vco_mixer_sin_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity double_iq_pid_vco_mixer_sin_5_0 is
  Port ( 
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    nco_i_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    nco_q_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    nco_en_i : in STD_LOGIC;
    nco_rst_i : in STD_LOGIC;
    nco_clk_i : in STD_LOGIC;
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_i_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_q_o : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );

end double_iq_pid_vco_mixer_sin_5_0;

architecture stub of double_iq_pid_vco_mixer_sin_5_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_en_i,data_clk_i,data_rst_i,data_i[13:0],nco_i_i[15:0],nco_q_i[15:0],nco_en_i,nco_rst_i,nco_clk_i,data_en_o,data_clk_o,data_rst_o,data_i_o[13:0],data_q_o[13:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mixer_sin,Vivado 2019.2";
begin
end;
