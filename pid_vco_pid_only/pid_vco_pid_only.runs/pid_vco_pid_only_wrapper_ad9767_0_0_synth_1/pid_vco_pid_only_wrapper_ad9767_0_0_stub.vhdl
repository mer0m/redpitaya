-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Sat May  6 09:10:18 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pid_vco_pid_only_wrapper_ad9767_0_0_stub.vhdl
-- Design      : pid_vco_pid_only_wrapper_ad9767_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    dac_clk_i : in STD_LOGIC;
    dac_2clk_i : in STD_LOGIC;
    dac_2ph_i : in STD_LOGIC;
    dac_locked_i : in STD_LOGIC;
    dac_dat_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_wrt_o : out STD_LOGIC;
    dac_sel_o : out STD_LOGIC;
    dac_clk_o : out STD_LOGIC;
    dac_rst_o : out STD_LOGIC;
    dac_dat_a_en_i : in STD_LOGIC;
    dac_dat_a_rst_i : in STD_LOGIC;
    dac_dat_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_dat_b_en_i : in STD_LOGIC;
    dac_dat_b_rst_i : in STD_LOGIC;
    dac_dat_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dac_clk_i,dac_2clk_i,dac_2ph_i,dac_locked_i,dac_dat_o[13:0],dac_wrt_o,dac_sel_o,dac_clk_o,dac_rst_o,dac_dat_a_en_i,dac_dat_a_rst_i,dac_dat_a_i[13:0],dac_dat_b_en_i,dac_dat_b_rst_i,dac_dat_b_i[13:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ad9767,Vivado 2016.4";
begin
end;
