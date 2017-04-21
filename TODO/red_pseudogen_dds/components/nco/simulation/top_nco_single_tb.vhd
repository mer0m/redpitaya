library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
USE std.textio.ALL;

entity top_nco_single_tb is
end entity top_nco_single_tb;

architecture RTL of top_nco_single_tb is
	function to_string(sv: Std_Logic_Vector) return string is
		use Std.TextIO.all;
		variable bv: bit_vector(sv'range) := to_bitvector(sv);
		variable lp: line;
	begin
		write(lp, bv);
		return lp.all;
	end;

	signal reset : std_logic;
    CONSTANT HALF_PERIODE : time := 5.0 ns;  -- Half clock period
	signal clk : std_logic;

	signal cpt_step_s : std_logic_vector(9 downto 0);
	signal cpt_tmp_s : std_logic_vector(15 downto 0);

	signal reset_nco_s : std_logic;

	signal cos_fake_s, sin_fake_s, wave_en_s : std_logic;
	signal cos_s, sin_s : std_logic_vector(15 downto 0);
begin

	--cpt_step_s <= x"0A3D70A3";
	cpt_tmp_s <= x"0028";
	cpt_step_s <= cpt_tmp_s(9 downto 0);

	nco_inst : entity work.nco_single_logic
	generic map(
		COUNTER_SIZE => 10, 
		DATA_SIZE => 16)
	port map(
		-- Syscon signals
		rst_i	=> reset,
		clk_i	=> clk,
		cpt_step_i => cpt_step_s,

		cos_o => cos_s,
		sin_o => sin_s,
		cos_fake_o => cos_fake_s,
		sin_fake_o => sin_fake_s,
		wave_en_o => wave_en_s
	);

    stimulis : process
    begin
	reset <= '0';
	wait until rising_edge(clk);
	reset <= '1';
	wait until rising_edge(clk);
	wait until rising_edge(clk);
	wait until rising_edge(clk);
	reset <= '0';
    wait for 10 ns;
    wait for 10 us;
    wait for 10 us;
    wait for 10 us;
    wait for 10 us;
    wait for 10 us;
    wait for 10 us;
    wait for 10 us;
    wait for 10 us;
    wait for 10 us;
--   wait for 10 us;
--    wait for 10 us;
--    wait for 10 us;
--    wait for 10 us;
--    wait for 10 us;
--    wait for 10 us;
	wait for 1 ms;
    assert false report "End of test" severity error;
    end process stimulis;
    
    clockp : process
    begin
        clk <= '1';
        wait for HALF_PERIODE;
        clk <= '0';
        wait for HALF_PERIODE;
    end process clockp;

end architecture RTL;
