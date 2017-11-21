-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Tue Nov 21 16:56:11 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.1 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bma/git/fpga_design/redpitaya/pid_only/pid_only.srcs/sources_1/bd/pid_only_wrapper/ip/pid_only_wrapper_red_pitaya_pidv3_0_0/pid_only_wrapper_red_pitaya_pidv3_0_0_stub.vhdl
-- Design      : pid_only_wrapper_red_pitaya_pidv3_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pid_only_wrapper_red_pitaya_pidv3_0_0 is
  Port ( 
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_i : in STD_LOGIC;
    data_clk_i : in STD_LOGIC;
    data_rst_i : in STD_LOGIC;
    setpoint_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    kp_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    ki_i : in STD_LOGIC_VECTOR ( 19 downto 0 );
    kd_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    sign_i : in STD_LOGIC;
    int_rst_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC
  );

end pid_only_wrapper_red_pitaya_pidv3_0_0;

architecture stub of pid_only_wrapper_red_pitaya_pidv3_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_i[13:0],data_en_i,data_clk_i,data_rst_i,setpoint_i[13:0],kp_i[13:0],ki_i[19:0],kd_i[13:0],sign_i,int_rst_i,data_o[13:0],data_en_o,data_clk_o,data_rst_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "red_pitaya_pidv3,Vivado 2016.4";
begin
end;
