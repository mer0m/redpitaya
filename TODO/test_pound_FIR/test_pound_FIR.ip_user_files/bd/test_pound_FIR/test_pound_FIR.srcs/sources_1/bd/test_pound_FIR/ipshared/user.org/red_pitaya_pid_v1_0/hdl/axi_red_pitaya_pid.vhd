library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

Entity axi_red_pitaya_pid is
	generic(
	DATA_SIZE : natural := 14;
		--setp,kp,ki,kd
	id	 : natural := 1;
	axi_size : natural := 16
	);
	port
	(
		-- Syscon signals
                clk_i    : in std_logic;
                rstn_i   : in std_logic;
		-- AXI signals
                axi_add       : in std_logic_vector(2 downto 0);
                axi_write     : in std_logic ;
                axi_writedata : in std_logic_vector( axi_size-1 downto 0);
                axi_read      : in std_logic ;
                axi_readdata  : out std_logic_vector( axi_size-1 downto 0);
		--block signals
		setpoint_o : out std_logic_vector(DATA_SIZE-1 downto 0);
                kp_o       : out std_logic_vector(DATA_SIZE-1 downto 0);
                ki_o       : out std_logic_vector(DATA_SIZE-1 downto 0);
                kd_o       : out std_logic_vector(DATA_SIZE-1 downto 0);
                sign_o     : out std_logic;
                int_rst_o  : out std_logic
	);
end entity axi_red_pitaya_pid;


Architecture axi_red_pitaya_pid_1 of axi_red_pitaya_pid is
	constant REG_ID     	: std_logic_vector := "000";
	constant REG_SETPOINT	: std_logic_vector := "001";
	constant REG_KP		: std_logic_vector := "010";
	constant REG_KI		: std_logic_vector := "011";
	constant REG_KD		: std_logic_vector := "100";
	constant REG_RST_INT	: std_logic_vector := "101";
	constant REG_SIGN	: std_logic_vector := "110";
	signal setpoint_s : std_logic_vector(DATA_SIZE-1 downto 0);
	signal kp_s       : std_logic_vector(DATA_SIZE-1 downto 0);
        signal ki_s       : std_logic_vector(DATA_SIZE-1 downto 0);
        signal kd_s       : std_logic_vector(DATA_SIZE-1 downto 0);
        signal sign_s     : std_logic;
        signal int_rst_s  : std_logic;
	--axi signals
	signal readdata_s : std_logic_vector(axi_size-1 downto 0);
begin
	axi_readdata <= readdata_s;
	setpoint_o <= setpoint_s;
	kp_o <= kp_s;
	ki_o <= ki_s;
	kd_o <= kd_s;
	sign_o <= sign_s;
	int_rst_o <= int_rst_s;
	
	--manage registers
	write_bloc : process(clk_i, rstn_i)
	begin
                 if rstn_i = '1' then
			setpoint_s <= (others => '0');
			kp_s <= (others => '0');
			ki_s <= (others => '0');
			kd_s <= (others => '0');
			sign_s <=  '0';
			int_rst_s <= '0';
			
                 elsif rising_edge(clk_i) then
			setpoint_s <= setpoint_s;
			kp_s <= kp_s;
			ki_s <= ki_s;
			kd_s <= kd_s;
			sign_s <= sign_s;
			int_rst_s <= int_rst_s;
                        if (axi_write = '1' ) then
                                case axi_add is 
				when REG_SETPOINT => 
					setpoint_s <= axi_writedata(DATA_SIZE-1 downto 0);
				when REG_KP => 
					kp_s <= axi_writedata(DATA_SIZE-1 downto 0);
				when REG_KI => 
					ki_s <= axi_writedata(DATA_SIZE-1 downto 0);
				when REG_KD =>
					kd_s <= axi_writedata(DATA_SIZE-1 downto 0);
				when REG_RST_INT =>
					int_rst_s <= axi_writedata(0);
				when REG_SIGN =>
					sign_s <= axi_writedata(0);
				when others =>
                                end case;
                          end if;
                 end if;
	end process write_bloc;

        read_bloc : process(clk_i, rstn_i)
        begin
                if rstn_i = '1' then
                        readdata_s <= (others => '0');
                elsif rising_edge(clk_i) then
                        readdata_s <= readdata_s;
                        if (axi_read = '1') then
				case axi_add is
				when REG_ID =>
				when REG_SETPOINT => 
					readdata_s <= (31 downto DATA_SIZE => '0')&setpoint_s;
				when REG_KP => 
					readdata_s <= (31 downto DATA_SIZE => '0')&kp_s;
				when REG_KI => 
					readdata_s <= (31 downto DATA_SIZE => '0')&ki_s;
				when REG_KD =>
					readdata_s <= (31 downto DATA_SIZE => '0')&kd_s;
				when REG_RST_INT =>
					readdata_s <= (31 downto 1 => '0')&int_rst_s;
				when REG_SIGN =>
					readdata_s <= (31 downto 1 => '0')&sign_s;
				when others =>
                                end case;

                        end if;
                end if;
        end process read_bloc;
end Architecture axi_red_pitaya_pid_1;
