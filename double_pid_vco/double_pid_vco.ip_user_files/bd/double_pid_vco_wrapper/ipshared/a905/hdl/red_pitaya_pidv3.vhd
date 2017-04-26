library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

Entity red_pitaya_pidv3 is 
	generic (
		P_SIZE : integer := 14;
		PSR : integer := 12; --PSR_SIZE
		I_SIZE : integer := 14;
		ISR : integer := 28;
		D_SIZE : integer := 14;
		DSR : integer := 8;
		DATA_IN_SIZE : natural := 14;
		DATA_OUT_SIZE : natural := 14;
		id : natural := 1
	);
	port (
		-- block signals
		data_i	 	: in std_logic_vector(DATA_IN_SIZE-1 downto 0);
		data_en_i	: in std_logic;
		data_clk_i 	: in std_logic;
		data_rst_i 	: in std_logic;
        setpoint_i  : in std_logic_vector(DATA_IN_SIZE-1 downto 0);
        kp_i        : in std_logic_vector(P_SIZE-1 downto 0);
        ki_i        : in std_logic_vector(I_SIZE-1 downto 0);
        kd_i        : in std_logic_vector(D_SIZE-1 downto 0);
        sign_i      : in std_logic;
        int_rst_i   : in std_logic;
		data_o   	: out std_logic_vector(DATA_OUT_SIZE-1 downto 0);
		data_en_o	: out std_logic;
		data_clk_o 	: out std_logic;
		data_rst_o 	: out std_logic
	);
end red_pitaya_pidv3;

Architecture Behavioral of red_pitaya_pidv3 is
	signal setpoint_s : std_logic_vector(DATA_IN_SIZE-1 downto 0);
	signal kp_s       : std_logic_vector(P_SIZE-1 downto 0);
	signal ki_s       : std_logic_vector(I_SIZE-1 downto 0);
	signal kd_s       : std_logic_vector(D_SIZE-1 downto 0);
	signal sign_s     : std_logic;
	signal int_rst_s  : std_logic;
	--comm
	signal addr_s : std_logic_vector(2 downto 0);
	signal write_en_s, read_en_s : std_logic;
begin
	data_clk_o <= data_clk_i;
	data_rst_o <= data_rst_i;
	
	
	red_pitaya_pidv3Logic : entity work.red_pitaya_pidv3_logic
	generic map(DATA_IN_SIZE => DATA_IN_SIZE, DATA_OUT_SIZE => DATA_OUT_SIZE,
	P_SIZE => P_SIZE, I_SIZE => I_SIZE, D_SIZE => D_SIZE,
	ISR => ISR, PSR => PSR, DSR => DSR)
	port map (clk_i => data_clk_i, reset => data_rst_i,
		data_i => data_i, data_en_i  => data_en_i,
		data_o => data_o, data_en_o=> data_en_o,
		setpoint_i => setpoint_s, 
		kp_i => kp_i, ki_i => ki_i, kd_i => kd_i,
		sign_i => sign_i, int_rst_i => int_rst_i
		);


end Behavioral;
