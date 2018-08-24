library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity cordic_impl is 
	generic (
		SHIFT_V : natural := 10;
		ATAN_SIZE : natural := 10;
		ALPHA_SIZE : natural := 8;
		DATA_SIZE : natural := 8
	);
	port 
	(
		-- Syscon signals
		reset		: in std_logic;
		clk			: in std_logic;
		fpga_clk	: in std_logic;
		fpga_rst	: in std_logic;
		-- sign		
		sign_i		: in std_logic_vector(3 downto 0);
		sign_o		: out std_logic_vector(3 downto 0);
		-- iter
		val_alpha_i : in std_logic_vector(ATAN_SIZE-1 downto 0);
		val_alpha_en_i : in std_logic;
		-- input data
		data_en_i	: in std_logic;
		data_i_i	: in std_logic_vector(DATA_SIZE-1 downto 0);
		data_q_i	: in std_logic_vector(DATA_SIZE-1 downto 0);
		data_atan_i : in std_logic_vector(ALPHA_SIZE-1 downto 0);
		-- output data
		data_en_o	: out std_logic;
		data_i_o	: out std_logic_vector(DATA_SIZE-1 downto 0);
		data_q_o	: out std_logic_vector(DATA_SIZE-1 downto 0);
		data_atan_o : out std_logic_vector(ALPHA_SIZE-1 downto 0)
	);
end entity;

---------------------------------------------------------------------------
Architecture cordic_impl_1 of cordic_impl is
---------------------------------------------------------------------------
	constant T_SZ_SHIFT : natural := DATA_SIZE-SHIFT_V;
	signal val_alpha_s : std_logic_vector(ALPHA_SIZE-1 downto 0);
	signal sign_next_s : std_logic;
	signal data_i_s, data2_i_s : std_logic_vector(DATA_SIZE-1 downto 0);
	signal data_q_s, data2_q_s : std_logic_vector(DATA_SIZE-1 downto 0);
	signal i_div_s, i_div_next_s : std_logic_vector(DATA_SIZE-1 downto 0);
	signal q_div_s, q_div_next_s : std_logic_vector(DATA_SIZE-1 downto 0);
	signal s_i_div_s, s_i_div_next_s : std_logic_vector(DATA_SIZE-1 downto 0);
	signal s_q_div_s, s_q_div_next_s : std_logic_vector(DATA_SIZE-1 downto 0);

	signal data_atan_s, data2_atan_s : std_logic_vector(ALPHA_SIZE-1 downto 0);
	signal s_alpha_s, s_alpha_next_s : std_logic_vector(ALPHA_SIZE-1 downto 0);
	signal sign_s	: std_logic_vector(3 downto 0);
	signal data_i_next_s : std_logic_vector(DATA_SIZE-1 downto 0);
	signal data_q_next_s : std_logic_vector(DATA_SIZE-1 downto 0);
	signal data_atan_next_s : std_logic_vector(ALPHA_SIZE-1 downto 0);
	signal data2_en_s : std_logic;
	signal sign2_s : std_logic_vector(3 downto 0);

	signal sign3_s		: std_logic_vector(3 downto 0);
	signal data3_en_s	: std_logic;
	signal data3_i_s	: std_logic_vector(DATA_SIZE-1 downto 0);
	signal data3_q_s	: std_logic_vector(DATA_SIZE-1 downto 0);
	signal data3_atan_s : std_logic_vector(ALPHA_SIZE-1 downto 0);
	signal i2_div_s : std_logic_vector(T_SZ_SHIFT-1 downto 0);
	signal q2_div_s : std_logic_vector(T_SZ_SHIFT-1 downto 0);
	signal l_dat_s : std_logic_vector(1 downto 0);
begin
	data_q_o <= data_q_s;
	data_i_o <= data_i_s;
	data_atan_o <= data_atan_s;
	sign_o <= sign_s;

	--process(clk)
	--begin
	--	if rising_edge(clk) then
			sign3_s <= sign_i;
			data3_en_s <= data_en_i;
			data3_i_s <= data_i_i;
			data3_q_s <= data_q_i;
			data3_atan_s <= data_atan_i;
			i2_div_s <= data_i_i(DATA_SIZE-1 downto SHIFT_V);
			q2_div_s <= data_q_i(DATA_SIZE-1 downto SHIFT_V);
			l_dat_s <= data_i_i(DATA_SIZE-1) & data_q_i(DATA_SIZE-1);
	--	end if;
	--end process;

	i_div_s <= (DATA_SIZE-1 downto T_SZ_SHIFT => i2_div_s(T_SZ_SHIFT-1))
			& i2_div_s;
	q_div_s <= (DATA_SIZE-1 downto T_SZ_SHIFT => q2_div_s(T_SZ_SHIFT-1))
			& q2_div_s;

	process(l_dat_s)
	begin
		case l_dat_s is
		when "11" =>
			sign_next_s <= '0';
		when "01"|"10" =>
			sign_next_s <= '1';
		when others =>
			sign_next_s <= '0';
		end case;
	end process;
	--sign_next_s <= '0' when signed(data3_i_s) < 0 and signed(data3_q_s) < 0
	--			else '1' when signed(data3_i_s) < 0 or signed(data3_q_s) < 0
	--			else '0';


	process(i_div_s, sign_next_s)
	begin
		if sign_next_s = '1' then
			s_i_div_next_s <= i_div_s;
		else
			s_i_div_next_s <= std_logic_vector(-signed(i_div_s));
		end if;
	end process;

	process(q_div_s, sign_next_s)
	begin
		if sign_next_s = '1' then
			s_q_div_next_s <= q_div_s;
		else
			s_q_div_next_s <= std_logic_vector(-signed(q_div_s));
		end if;
	end process;

	process(val_alpha_s, sign_next_s)
	begin
		if sign_next_s = '1' then
			s_alpha_next_s <= val_alpha_s;
		else
			s_alpha_next_s <= std_logic_vector(-signed(val_alpha_s));
		end if;
	end process;

	process(clk)
	begin
		if rising_edge(clk) then
			s_alpha_s <= s_alpha_next_s;
			s_i_div_s <= s_i_div_next_s;
			s_q_div_s <= s_q_div_next_s;
			data2_i_s <= data3_i_s;
			data2_q_s <= data3_q_s;
			data2_en_s <= data3_en_s;
			sign2_s <= sign3_s;
			data2_atan_s <= data3_atan_s;
		end if;
	end process;

	data_i_next_s <= std_logic_vector(signed(data2_i_s)-signed(s_q_div_s));
	data_q_next_s <= std_logic_vector(signed(data2_q_s)+signed(s_i_div_s));
	data_atan_next_s <= std_logic_vector(signed(data2_atan_s)-signed(s_alpha_s));

	process(clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				data_i_s <= (others => '0');
				data_q_s <= (others => '0');
				data_atan_s <= (others => '0');
				data_en_o <= '0';
				sign_s <= "0000";
			else
				data_i_s <= data_i_s;
				data_q_s <= data_q_s;
				data_atan_s <= data_atan_s;
				data_en_o <= '0';
				sign_s <= sign_s;
				if data2_en_s = '1' then
					sign_s <= sign2_s;
					data_i_s <= data_i_next_s;
					data_q_s <= data_q_next_s;
					data_atan_s <= data_atan_next_s;
					data_en_o <= '1';
				end if;
			end if;
		end if;
	end process;

	-- store atan value for this stage
	process(fpga_clk)
	begin
		if rising_edge(fpga_clk) then
			if fpga_rst = '1' then
				val_alpha_s <= (others => '0');
			else
				val_alpha_s <= val_alpha_s;
				if val_alpha_en_i = '1' then
					val_alpha_s <= (ALPHA_SIZE-1 downto ATAN_SIZE => '0')&val_alpha_i;
				end if;
			end if;
		end if;
	end process;

end architecture cordic_impl_1;

