library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity fir16OITM_cpt is 
	generic (
		NB_BITS: natural := 2;
		THRESH : natural := 3;
		MAX_VAL: natural := 3
	);
	port 
	(
		reset_i			: in std_logic;
		clk_i			: in std_logic;
		enable_counter_i : in std_logic;
		cpt_en			: in std_logic;
		cpt_overflow_o	: out std_logic;
		--cpt_valid_o		: out std_logic;
		cpt_val_o		: out std_logic_vector(NB_BITS-1 downto 0)
	);
end entity;

---------------------------------------------------------------------------
Architecture fir16OITM_cpt_1 of fir16OITM_cpt is
---------------------------------------------------------------------------
	signal cpt_val_s, cpt_val_next	: natural range 0 to MAX_VAL-1;
	signal cpt_val2_s, cpt_val2_next: natural range 0 to MAX_VAL-1;
	signal cpt_overflow_next	: std_logic;
	signal cpt_overflow_reg		: std_logic;
	--signal valid_next	: std_logic;
	--signal valid_s : std_logic;
begin
	cpt_val_o <= std_logic_vector(to_unsigned(cpt_val2_s, NB_BITS));
	cpt_overflow_o <= cpt_overflow_reg;
	--cpt_valid_o <= valid_s;
	
	process(clk_i)
	begin
		if rising_edge(clk_i) then
			cpt_overflow_reg <= cpt_overflow_next;
			--valid_s <= valid_next;
			cpt_val2_s <= cpt_val2_next;
		end if;
	end process;

	fir16OITM_cpt : process(clk_i)
	begin
		if rising_edge(clk_i) then
			if reset_i = '1' then
				cpt_val_s <= 0;
			else
				cpt_val_s <= cpt_val_next;
			end if;
		end if;
	end process;

	cpt_val_next <= 0 when ((MAX_VAL-1 = cpt_val_s and cpt_en = '1') or (enable_counter_i = '0'))
				else cpt_val_s + 1 when cpt_en = '1'
				else cpt_val_s;
	cpt_val2_next <= cpt_val_next when cpt_val_next < THRESH else THRESH-1;
	cpt_overflow_next <= '1' when (cpt_val_s = THRESH-1 and cpt_en = '1') else '0';
	--valid_next <= '1' when (cpt_val_s < THRESH and cpt_en = '1') else '0';

end architecture fir16OITM_cpt_1;

