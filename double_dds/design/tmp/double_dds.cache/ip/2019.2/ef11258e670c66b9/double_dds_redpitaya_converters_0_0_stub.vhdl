-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun May 31 18:47:33 2020
-- Host        : ux305 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ double_dds_redpitaya_converters_0_0_stub.vhdl
-- Design      : double_dds_redpitaya_converters_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    adc_rst_i : in STD_LOGIC;
    clk_o : out STD_LOGIC;
    rst_o : out STD_LOGIC;
    rstn_o : out STD_LOGIC;
    adc_clk_p_i : in STD_LOGIC;
    adc_clk_n_i : in STD_LOGIC;
    adc_data_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_data_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_cdcs : out STD_LOGIC;
    data_a_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_a_en_o : out STD_LOGIC;
    data_a_clk_o : out STD_LOGIC;
    data_a_rst_o : out STD_LOGIC;
    data_b_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    data_b_en_o : out STD_LOGIC;
    data_b_clk_o : out STD_LOGIC;
    data_b_rst_o : out STD_LOGIC;
    dac_dat_a_en_i : in STD_LOGIC;
    dac_dat_a_rst_i : in STD_LOGIC;
    dac_dat_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_dat_b_en_i : in STD_LOGIC;
    dac_dat_b_rst_i : in STD_LOGIC;
    dac_dat_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_dat_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_wrt_o : out STD_LOGIC;
    dac_sel_o : out STD_LOGIC;
    dac_clk_o : out STD_LOGIC;
    dac_rst_o : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "adc_rst_i,clk_o,rst_o,rstn_o,adc_clk_p_i,adc_clk_n_i,adc_data_a_i[13:0],adc_data_b_i[13:0],adc_cdcs,data_a_o[13:0],data_a_en_o,data_a_clk_o,data_a_rst_o,data_b_o[13:0],data_b_en_o,data_b_clk_o,data_b_rst_o,dac_dat_a_en_i,dac_dat_a_rst_i,dac_dat_a_i[13:0],dac_dat_b_en_i,dac_dat_b_rst_i,dac_dat_b_i[13:0],dac_dat_o[13:0],dac_wrt_o,dac_sel_o,dac_clk_o,dac_rst_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "redpitaya_converters,Vivado 2019.2";
begin
end;
