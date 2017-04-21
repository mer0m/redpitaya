library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity red_pitaya_pid_logic is 
	generic (
		PSR : integer := 12; --PSR_SIZE
		ISR : integer := 18;
		DSR : integer := 10;
		DATA_SIZE : natural := 14
	);
	port
	(
		--syscon signals
		clk_i    : in std_logic;
		reset   : in std_logic;
		--data
		data_i	 : in std_logic_vector(DATA_SIZE-1 downto 0);
		data_en_i: in std_logic;
		data_o	 : out std_logic_vector(DATA_SIZE-1 downto 0);
		data_en_o: out std_logic;
		--settings
		--implementer le sens
		setpoint_i : in std_logic_vector(DATA_SIZE-1 downto 0);
		kp_i	   : in std_logic_vector(DATA_SIZE-1 downto 0);
		ki_i	   : in std_logic_vector(DATA_SIZE-1 downto 0);
		kd_i	   : in std_logic_vector(DATA_SIZE-1 downto 0);
		sign_i	   : in std_logic;
		int_rst_i  : in std_logic
	);
end entity;

Architecture behavioral of red_pitaya_pid_logic is
	--sig
	signal data_in_s  : std_logic_vector(DATA_SIZE downto 0);
	signal setpoint_s : std_logic_vector(DATA_SIZE downto 0);
	signal error_s 	  : std_logic_vector(DATA_SIZE downto 0);
	signal data_en_s  : std_logic;
	signal data2_en_s : std_logic;
	signal data_en_out_s : std_logic;
	signal P_temp_s	  : std_logic_vector((2*DATA_SIZE) downto 0);
	signal P_s 	  : std_logic_vector((2*DATA_SIZE)-PSR downto 0);
	--signal I_desat_s  : std_logic_vector(33-1 downto 0);
	signal I_sum_s	  : std_logic_vector(33-1 downto 0); --somme
	signal I_temp_s   : std_logic_vector(33-1 downto 0); --
	signal I_s	  : std_logic_vector(33-1-ISR downto 0);
	--signal I_s	  : std_logic_vector(33-1 downto 0);
	signal pid_sum_s  : std_logic_vector(33-1 downto 0); 		--v_k
	signal pid_out_s  : std_logic_vector(DATA_SIZE-1 downto 0); 	--u_k
	
begin
	data_in_s <= data_i(DATA_SIZE-1)&data_i; --msb extension (-> sign bit)
	setpoint_s <= setpoint_i(DATA_SIZE-1)&setpoint_i;

	--error signal
	process(clk_i)
	begin
		if rising_edge(clk_i) then
			data_en_s <= '0';
			if reset = '1' then
				error_s <= (others => '0');
			else
				error_s <= error_s;
				if data_en_i = '1' then
					error_s <= std_logic_vector(signed(data_in_s) - signed(setpoint_s)); --negative sign
					--error_s <= std_logic_vector(signed(setpoint_s) - signed(data_in_s)); --positive sign
					data_en_s <= '1';
				end if;
			end if;
		end if;
	end process;
	
	--proportional part
	process(clk_i)
	begin
		if rising_edge(clk_i) then
			data2_en_s <= '0';
			if reset = '1' then
				P_s  <= (others => '0');
			else
				P_s <= P_s;
				if data_en_s = '1' then
					--P_s <= std_logic_vector(signed(kp_i)*signed(error_s));
					P_s <= P_temp_s(2*DATA_SIZE downto PSR); 
					data2_en_s <= '1' ;
				end if;
			end if;
		end if;
	end process;
	P_temp_s <= std_logic_vector(signed(kp_i)*signed(error_s));

----
----	--integral part
----	process(clk_i)
----	begin
----		if rising_edge(clk_i) then
----			if reset = '1' then --ici aussi le reset_int
----				I_s <= (others => '0');
----			else 
----				I_s <= I_s;
----				if data_en_s = '1' then
----					if (I_sum_s(33-1 downto 33-2) = "01") then --positive saturation --on devrait foutre ça au niveau de la somme
----					I_s <= '0' & (31 downto 0 => '1');
----					--I_s <= '0' & (31 downto ISR => '1');
----					elsif (I_sum_s(33-1 downto 33-2) = "10") then --negative saturation
----					I_s <= '1' & (31 downto 0 => '0');
----					--I_s <= '1' & (31 downto ISR => '0');  --33-1 dt ISR
----					else I_s <= I_sum_s; --desaturation ici ?
----					--else I_s <= I_sum_s(33-1 downto ISR);
----					end if;
----				end if;
----			end if;
----		end if;
----	end process;
----	I_sum_s <= std_logic_vector(signed(I_s) + (signed(ki_i)*signed(error_s)) ); --ici on somme avec une version tronquée de I_s -> pas glop
----	
----

	--integral part
	process(clk_i)
	begin
		if rising_edge(clk_i) then
			if reset = '1' then --ici aussi le reset_int
				I_s <= (others => '0');
				I_temp_s <= (others => '0');
			else 
				I_s <= I_s;
				I_temp_s <= I_temp_s;
				if data_en_s = '1' then
					if (I_sum_s(33-1 downto 33-2) = "01") then --positive saturation --on devrait foutre ça au niveau de la somme
					--I_s <= '0' & (31 downto 0 => '1');
					I_s <= '0' & (31 downto ISR => '1');
					elsif (I_sum_s(33-1 downto 33-2) = "10") then --negative saturation
					--I_s <= '1' & (31 downto 0 => '0');
					I_s <= '1' & (31 downto ISR => '0');  --33-1 dt ISR
					--else I_s <= I_sum_s; --desaturation ici ?
					else I_s <= I_sum_s(33-1 downto ISR);
					I_temp_s <= I_sum_s;
					end if;
				end if;
			end if;
		end if;
	end process;
	I_sum_s <= std_logic_vector(signed(I_temp_s) + (signed(ki_i)*signed(error_s)) ); --ici on somme avec une version tronquée de I_s -> pas glop



	--derivative --none for the moment

	--sum + sat + integr desat
	process(clk_i)
	begin
		if rising_edge(clk_i) then
			data_en_o <= '0';
			if reset = '1' then
				pid_out_s <= (others => '0');
			else 
				pid_out_s <= pid_out_s;
				if data2_en_s ='1' then
					data_en_o <= '1';
					if ( pid_sum_s (32) = '0' and ( pid_sum_s (32-2 downto 13) /= (32-2 downto 13 => '0')) )  then --/= ==différent
						--pid_out_s <= '0' & (others =>'1');
						pid_out_s <= '0' & ( DATA_SIZE-2 downto 0 =>'1'); 
					elsif ( pid_sum_s (32) = '1' and ( pid_sum_s (32-2 downto 13) /= (32-2 downto 13 => '1')) ) then 
						--pid_out_s <= '1' & (others => '0');
						--pid_out_s <= '1' & (DATA_SIZE-2 downto 0 => '0');  --borne -1V
						pid_out_s <=  (DATA_SIZE-1 downto 0 => '0');  --borne 0V
					else pid_out_s <= pid_sum_s(DATA_SIZE-1 downto 0);
					end if;
				end if;
			end if;
		end if;
	end process;
	--pid_sum_s <= std_logic_vector(signed(P_s) + signed(I_s)); --rajouter D_s
	--pid_sum_s <= std_logic_vector(signed(  ( 33-1 downto 28-PSR-1 => '0') &P_s  ) + signed(  (33-1 downto 31-ISR => '0') &I_s  ) ); --rajouter D_s
	pid_sum_s <= std_logic_vector( (33-1 downto 0 => '0') + signed(P_s) + signed(I_s));


	--output
	data_o <= pid_out_s;
	--data_o <= (13 downto 0 => '0');  --out_dac 0V
	--data_o <= '1'&(12 downto 0 => '0'); -- out_dac -1V

end behavioral;


















