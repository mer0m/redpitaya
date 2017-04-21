library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

library UNISIM;
use UNISIM.VComponents.all;

entity fir16OITM_multiplier is
	generic(
		DATA_OUT_SIZE : natural := 48;
		USE_OPMODE_REG_AND_PCEN_RST : natural := 0;
		carryin_cfg : bit := '0';
		carryout_cfg: bit := '0';
		opmode : std_logic_vector(6 downto 0) :=b"00000000";
		-- alumode : 0 => Z + X + Y + CIN (carryinsel)
		alumode : std_logic_vector(3 downto 0):= "0000";
		-- multiplier A port = A2, B port = B2
		INMODE : std_logic_vector(4 downto 0):= "00000";
		carryinsel : std_logic_vector(2 downto 0):= "000" -- fabric carryin
	);
	port (
		reset : in std_logic;
		rst_accum : in std_logic;
		clock : in std_logic;

		en_a : in std_logic;
		en_b : in std_logic;

		in_a : in std_logic_vector(29 downto 0);
		in_b : in std_logic_vector(17 downto 0);
		result : out std_logic_vector(DATA_OUT_SIZE-1 downto 0)
	);
end entity fir16OITM_multiplier;

architecture Behavioral of fir16OITM_multiplier is
signal pcen: std_logic;
signal opmode_s, opmode2_s : std_logic_vector(6 downto 0);
signal result_s : std_logic_vector(47 downto 0);
signal test_size : natural := 0;
signal rst_pcen_s : std_logic;
begin
	result <= result_s(DATA_OUT_SIZE-1 downto 0);
	
	with_opmode_reg_and_pcen_rst : if USE_OPMODE_REG_AND_PCEN_RST /= 0 generate
		rst_pcen_s <= rst_accum or reset;
		process(clock)
		begin
			if rising_edge(clock) then 
				opmode2_s <= opmode_s;
			end if;
		end process;
	end generate;
	without_opmode_reg_and_pcen_rst : if USE_OPMODE_REG_AND_PCEN_RST = 0 generate
		rst_pcen_s <= reset;
		opmode2_s <= opmode_s;
	end generate;


	process(clock, reset)
	begin
		if rising_edge(clock) then
		--if reset = '1' then
		--	pcen <= '0';
		--else--if rising_edge(clock) then
			pcen <= en_a;
		--end if;
		end if;
	end process;
	--opmode_s <= opmode(7 downto 4)&not(rst_accum)&'0'&opmode(1 downto 0);
	--opmode_s <= opmode;
	--opmode_s <= opmode(6 downto 5)&not(rst_accum)&opmode(3 downto 0);
	opmode_s <= opmode(6)&not(rst_accum)&opmode(4 downto 0);

   -- Dans le mode multiplication de A x B puis accumulation :
   -- X prends P
   -- Y prends le multiplieur
   -- Z prends 0
   -- MREG prends 0 pour desactiver le registre
   DSP48E1_inst : DSP48E1
   generic map (
      -- Feature Control Attributes: Data Path Selection
      A_INPUT => "DIRECT",               -- Selects A input source, "DIRECT" (A port) or "CASCADE" (ACIN port)
      B_INPUT => "DIRECT",               -- Selects B input source, "DIRECT" (B port) or "CASCADE" (BCIN port)
      USE_DPORT => FALSE,                -- Select D port usage (TRUE or FALSE)
      USE_MULT => "MULTIPLY",            -- Select multiplier usage ("MULTIPLY", "DYNAMIC", or "NONE")
      USE_SIMD => "ONE48",               -- SIMD selection ("ONE48", "TWO24", "FOUR12")
      -- Pattern Detector Attributes: Pattern Detection Configuration
      AUTORESET_PATDET => "NO_RESET",    -- "NO_RESET", "RESET_MATCH", "RESET_NOT_MATCH" 
      MASK => X"3fffffffffff",           -- 48-bit mask value for pattern detect (1=ignore)
      PATTERN => X"000000000000",        -- 48-bit pattern match for pattern detect
      SEL_MASK => "MASK",                -- "C", "MASK", "ROUNDING_MODE1", "ROUNDING_MODE2" 
      SEL_PATTERN => "PATTERN",          -- Select pattern value ("PATTERN" or "C")
      USE_PATTERN_DETECT => "NO_PATDET", -- Enable pattern detect ("PATDET" or "NO_PATDET")
      -- Register Control Attributes: Pipeline Register Configuration
      ACASCREG => 1,--1,                     -- Number of pipeline stages between A/ACIN and ACOUT (0, 1 or 2)
      ADREG => 1, --mandat!!!!               -- Number of pipeline stages for pre-adder (0 or 1)
      ALUMODEREG => 0,--1,                   -- Number of pipeline stages for ALUMODE (0 or 1)
      AREG => 1,--1,                         -- Number of pipeline stages for A (0, 1 or 2)
      BCASCREG => 1,                     -- Number of pipeline stages between B/BCIN and BCOUT (0, 1 or 2)
      BREG => 1,                         -- Number of pipeline stages for B (0, 1 or 2)
      CARRYINREG => 0,--1,                   -- Number of pipeline stages for CARRYIN (0 or 1)
      CARRYINSELREG => 0,--1,                -- Number of pipeline stages for CARRYINSEL (0 or 1)
      CREG => 0,--1,                         -- Number of pipeline stages for C (0 or 1)
      DREG => 1, --mandat!!!!                -- Number of pipeline stages for D (0 or 1)
      INMODEREG => 0,--1,                    -- Number of pipeline stages for INMODE (0 or 1)
      MREG => 0,                         -- Number of multiplier pipeline stages (0 or 1)
      OPMODEREG => 0,        -- Number of pipeline stages for OPMODE (0 or 1)
      PREG => 1                          -- Number of pipeline stages for P (0 or 1)
   )
   port map (
      -- Cascade: 30-bit (each) output: Cascade Ports
      ACOUT => open,--ACOUT,                   -- 30-bit output: A port cascade output
      BCOUT => open,--BCOUT,                   -- 18-bit output: B port cascade output
      CARRYCASCOUT => open,--CARRYCASCOUT,     -- 1-bit output: Cascade carry output
      MULTSIGNOUT => open,--MULTSIGNOUT,       -- 1-bit output: Multiplier sign cascade output
      PCOUT => open,--PCOUT,                   -- 48-bit output: Cascade output
      -- Control: 1-bit (each) output: Control Inputs/Status Bits
      OVERFLOW => open,--OVERFLOW,             -- 1-bit output: Overflow in add/acc output
      PATTERNBDETECT => open,--PATTERNBDETECT, -- 1-bit output: Pattern bar detect output
      PATTERNDETECT => open,--PATTERNDETECT,   -- 1-bit output: Pattern detect output
      UNDERFLOW => open,--UNDERFLOW,           -- 1-bit output: Underflow in add/acc output
      -- Data: 4-bit (each) output: Data Ports
      CARRYOUT => open,--CARRYOUT,             -- 4-bit output: Carry output
      P => result_s,--P,                       -- 48-bit output: Primary data output
      -- Cascade: 30-bit (each) input: Cascade Ports
      ACIN => (others =>'0'),--ACIN,    -- 30-bit input: A cascade data input
      BCIN => (others => '0'),--BCIN,   -- 18-bit input: B cascade input
      CARRYCASCIN => '0',--CARRYCASCIN,       -- 1-bit input: Cascade carry input
      MULTSIGNIN => '0',--MULTSIGNIN,         -- 1-bit input: Multiplier sign input
      PCIN => (others => '0'),--PCIN,   -- 48-bit input: P cascade input
      -- Control: 4-bit (each) input: Control Inputs/Status Bits
      -- ALUMODE : 
      ALUMODE => ALUMODE,               -- 4-bit input: ALU control input
      CARRYINSEL => CARRYINSEL,         -- 3-bit input: Carry select input
      CLK => clock,                     -- 1-bit input: Clock input
      -- Gestion de l'entree du multiplieur pour A
      -- 0001 pour n'utiliser que A1 (un seul registre)
      INMODE => INMODE,      -- 5-bit input: INMODE control input
      -- OPMODE [6:4] => Z,
	  --		[3:2] => Y, 
	  --		[1:0] => X
      -- X:00 => 0, 
	  --		X:01 & Y:01 => M,
	  --		X:10 => P,
	  --		X:11 => A:B
      -- Y:00 => 0, 
	  --		Y:01 & X:01 => M, 
	  --		Y:10 => 48'ff..ff,
	  --		Y:11 => C
      -- Z:000 => 0, 
	  --		Z:001 => PCIN,
	  --		Z:010 => P,
	  --		Z:011 => C,
	  --		Z:100 => P,
      --        Z:101 => 17-bit shift(PCIN),
	  --		Z:110 => 17-bit shift (P),
      --        Z:111 => illegal 
      OPMODE => opmode_s,               -- 7-bit input: Operation mode input
      -- Data: 30-bit (each) input: Data Ports
      A => in_a,                        -- 30-bit input: A data input
      B => in_b,                        -- 18-bit input: B data input
      C => (others=>'0'),--C,           -- 48-bit input: C data input
      CARRYIN => '0',--CARRYIN,         -- 1-bit input: Carry input signal
      D => (24 downto 0 => '1'),--D,     -- 25-bit input: D data input
      -- Reset/Clock Enable: 1-bit (each) input: Reset/Clock Enable Inputs
      CEA1 => en_a,                     -- 1-bit input: Clock enable input for 1st stage AREG
      CEA2 => en_a,--'0',--CEA2,               -- 1-bit input: Clock enable input for 2nd stage AREG
      CEAD => '0',--CEAD,               -- 1-bit input: Clock enable input for ADREG
      CEALUMODE => '1',--clock,--CEALUMODE,   -- 1-bit input: Clock enable input for ALUMODE
      CEB1 => en_b,--CEB1,              -- 1-bit input: Clock enable input for 1st stage BREG
      CEB2 => en_b,--'0',--CEB2,               -- 1-bit input: Clock enable input for 2nd stage BREG
      CEC => '0',--CEC,                 -- 1-bit input: Clock enable input for CREG
      CECARRYIN => '1',--CECARRYIN,   -- 1-bit input: Clock enable input for CARRYINREG
      CECTRL => '1',--pcen,--CECTRL,  -- 1-bit input: Clock enable input for OPMODEREG and CARRYINSELREG
      CED => '0',--CED,                 -- 1-bit input: Clock enable input for DREG
      CEINMODE => '1',--CEINMODE,     -- 1-bit input: Clock enable input for INMODEREG
      CEM => '0',--CEM,                 -- 1-bit input: Clock enable input for MREG
      CEP => pcen,--CEP,                -- 1-bit input: Clock enable input for PREG
      RSTA => reset,                    -- 1-bit input: Reset input for AREG
      RSTALLCARRYIN => reset,--RSTALLCARRYIN,   -- 1-bit input: Reset input for CARRYINREG
      RSTALUMODE => reset,--RSTALUMODE, -- 1-bit input: Reset input for ALUMODEREG
      RSTB => reset,                    -- 1-bit input: Reset input for BREG
      RSTC => reset,                    -- 1-bit input: Reset input for CREG
      RSTCTRL => reset,--RSTCTRL,       -- 1-bit input: Reset input for OPMODEREG and CARRYINSELREG
      RSTD => '0',                      -- 1-bit input: Reset input for DREG and ADREG
      RSTINMODE => reset,--RSTINMODE,   -- 1-bit input: Reset input for INMODEREG
      RSTM => reset,                    -- 1-bit input: Reset input for MREG
      RSTP => rst_pcen_s--rst_accum --ggm pour essayer avec Z -- 1-bit reset input for P pipeline registers
      --RSTP => rst_accum --ggm pour essayer avec Z -- 1-bit reset input for P pipeline registers
   );

   -- End of DSP48E1_inst instantiation

end Behavioral;
