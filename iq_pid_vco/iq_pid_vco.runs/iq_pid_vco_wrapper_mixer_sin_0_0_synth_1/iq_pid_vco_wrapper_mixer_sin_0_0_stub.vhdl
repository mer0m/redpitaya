-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Fri Apr 21 17:30:52 2017
-- Host        : ux305 running 64-bit Debian GNU/Linux 9.0 (stretch)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ iq_pid_vco_wrapper_mixer_sin_0_0_stub.vhdl
-- Design      : iq_pid_vco_wrapper_mixer_sin_0_0
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
    data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    nco_i_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    nco_q_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    nco_en_i : in STD_LOGIC;
    nco_rst_i : in STD_LOGIC;
    nco_clk_i : in STD_LOGIC;
    data_en_o : out STD_LOGIC;
    data_clk_o : out STD_LOGIC;
    data_rst_o : out STD_LOGIC;
    data_i_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_q_o : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_en_i,data_clk_i,data_rst_i,data_i[13:0],nco_i_i[13:0],nco_q_i[13:0],nco_en_i,nco_rst_i,nco_clk_i,data_en_o,data_clk_o,data_rst_o,data_i_o[13:0],data_q_o[13:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mixer_sin,Vivado 2016.4";
begin
end;
