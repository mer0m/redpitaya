library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fir16bitsOneInTwoMult_v1_0_S00_AXI is
	generic (
		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32
	);
	port (
		S_AXI_ACLK	: in std_logic;
		reset		: in std_logic;
		addr_i	  : in std_logic_vector(1 downto 0);
		write_en_i	: in std_logic;
		writedata	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		read_en_i : in std_logic;
		read_ack_o : out std_logic;
		readdata	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);--;
		-- test
		--r_coeff_addr_o : out std_logic_vector(9 downto 0);
		--r_coeff_val_i : in std_logic_vector(15 downto 0);
		-- end of test
		coeff_en_o : out std_logic;
		coeff_val_o : out std_logic_vector(15 downto 0);
		coeff_addr_o : out std_logic_vector(9 downto 0)
	);
end fir16bitsOneInTwoMult_v1_0_S00_AXI;

architecture arch_imp of fir16bitsOneInTwoMult_v1_0_S00_AXI is
	constant REG_ID	 : std_logic_vector(1 downto 0) := "00";
	constant REG_FIR_COEFF : std_logic_vector(1 downto 0) := "01";

	signal readdata_s	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal coeff_en_s : std_logic;
	signal coeff_val_s  : std_logic_vector(15 downto 0);
	signal coeff_addr_s : std_logic_vector(9 downto 0);
	signal coeff_addr_uns_s : natural range 0 to 2**9-1;
	-- test
	--signal r_coeff_addr_s : std_logic_vector(9 downto 0);
	--signal r_coeff_addr_uns_s : natural range 0 to 2**10-1;
begin
	-- test
	--r_coeff_addr_o <= r_coeff_addr_s;
	-- end of test

	coeff_en_o <= coeff_en_s;
	coeff_val_o <= coeff_val_s;
	coeff_addr_o <= coeff_addr_s;
	readdata <= readdata_s;

	write_process : process (S_AXI_ACLK)
	begin
		if rising_edge(S_AXI_ACLK) then 
			if  reset = '1' then
				coeff_en_s <= '0';
				coeff_val_s <= (others => '0');
				coeff_addr_s <= (others => '0');
				coeff_addr_uns_s <= 0;
			else
				coeff_addr_uns_s <= coeff_addr_uns_s;
				coeff_en_s <= '0';
				coeff_val_s <= coeff_val_s;
				coeff_addr_s <= coeff_addr_s;
				if (write_en_i = '1') then
					case addr_i is --write_addr is
					when REG_ID =>
						coeff_addr_s <= (others => '0');
					when REG_FIR_COEFF =>
						coeff_en_s <= '1';
						coeff_val_s <= writedata(15 downto 0);
						coeff_addr_uns_s <= coeff_addr_uns_s + 1;
						coeff_addr_s <= std_logic_vector(to_unsigned(coeff_addr_uns_s,10));
					when others =>
					end case;
				end if;
			end if;
		end if;
	end process;

	read_process : process( S_AXI_ACLK ) is
	begin
		if (rising_edge (S_AXI_ACLK)) then
			if (reset = '1') then
				readdata_s <= (others => '0');
				--r_coeff_addr_uns_s <= 0;
				--r_coeff_addr_s <= (others => '0');
				read_ack_o <= '0';
			else
				--r_coeff_addr_uns_s <= r_coeff_addr_uns_s;
				--r_coeff_addr_s <= r_coeff_addr_s;
				read_ack_o <= '0';
		   		readdata_s <= readdata_s;
				if (read_en_i = '1') then
					read_ack_o <= '1';
			  		case addr_i is --read_addr is
		  			when REG_ID =>
						readdata_s <= x"ff55AA22";
					--when REG_FIR_COEFF =>
					--	readdata_s <= (31 downto 16 => '0')&r_coeff_val_i;
					--	r_coeff_addr_uns_s <= r_coeff_addr_uns_s + 1;
					--	r_coeff_addr_s <= std_logic_vector(to_unsigned(r_coeff_addr_uns_s,10));
					when others =>
						readdata_s <= x"55AA55AA";
					end case;
				end if;
			end if;
	  	end if;
	end process read_process;
end arch_imp;
