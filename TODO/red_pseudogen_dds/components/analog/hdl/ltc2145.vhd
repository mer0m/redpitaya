library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ltc2145 is
port (
    -- pl
    resetn: in std_logic;
    adc_cdcs: out std_logic;
    -- a/d clk
    adc_clk_i: in std_logic;
    -- lvds/cmos input
    adc_data_a_i: in std_logic_vector(13 downto 0);
    adc_data_b_i: in std_logic_vector(13 downto 0);
    -- adc data
    adc_clk: out std_logic;
    data_a_en_o: out std_logic;
    data_a_o: out std_logic_vector(13 downto 0);
    data_b_en_o: out std_logic;
    data_b_o: out std_logic_vector(13 downto 0)
);
end entity ltc2145;

architecture rtl of ltc2145 is
signal data_en_s : std_logic;

begin
	data_a_en_o <= data_en_s;
	data_b_en_o <= data_en_s;

    ltc2145_capture_inst: entity work.ltc2145_cmos_capture
    port map (
	-- a/d
	clk_in_i => adc_clk_i,
	resetn => resetn,
	clk_cdcs => adc_cdcs,
	-- a/d a-b
	adc_data_a_i => adc_data_a_i,
	adc_data_b_i => adc_data_b_i,
	-- a/d dat
	adc_clk_o => adc_clk,
	adc_data_en => data_en_s,
	adc_data_a => data_a_o,
	adc_data_b => data_b_o
    );

end rtl;
