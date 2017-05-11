library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;

entity nco_counter_cos_rom is
port (
	clk : in std_logic;
	addr_a : in std_logic_vector(9 downto 0);
	addr_b : in std_logic_vector(9 downto 0);
	data_a : out std_logic_vector(15 downto 0);
	data_b : out std_logic_vector(15 downto 0));
end entity nco_counter_cos_rom;

architecture behavioral of nco_counter_cos_rom is

	signal i: integer range 0 to 2**10-1 :=0;
	type mem is array ( 0 to 2**10-1) of 
			std_logic_vector(15 downto 0);

	constant my_Rom : mem := (
		"0111111111111111",
		"0111111111111110",
		"0111111111111100",
		"0111111111111001",
		"0111111111110101",
		"0111111111101111",
		"0111111111101000",
		"0111111111100000",
		"0111111111010111",
		"0111111111001101",
		"0111111111000001",
		"0111111110110100",
		"0111111110100110",
		"0111111110010110",
		"0111111110000110",
		"0111111101110100",
		"0111111101100001",
		"0111111101001100",
		"0111111100110111",
		"0111111100100000",
		"0111111100001000",
		"0111111011101111",
		"0111111011010100",
		"0111111010111001",
		"0111111010011100",
		"0111111001111110",
		"0111111001011110",
		"0111111000111110",
		"0111111000011100",
		"0111110111111001",
		"0111110111010101",
		"0111110110110000",
		"0111110110001001",
		"0111110101100001",
		"0111110100111000",
		"0111110100001110",
		"0111110011100010",
		"0111110010110110",
		"0111110010001000",
		"0111110001011001",
		"0111110000101001",
		"0111101111110111",
		"0111101111000100",
		"0111101110010001",
		"0111101101011100",
		"0111101100100101",
		"0111101011101110",
		"0111101010110101",
		"0111101001111100",
		"0111101001000001",
		"0111101000000100",
		"0111100111000111",
		"0111100110001001",
		"0111100101001001",
		"0111100100001000",
		"0111100011000110",
		"0111100010000011",
		"0111100000111111",
		"0111011111111001",
		"0111011110110011",
		"0111011101101011",
		"0111011100100010",
		"0111011011011000",
		"0111011010001101",
		"0111011001000000",
		"0111010111110011",
		"0111010110100100",
		"0111010101010100",
		"0111010100000011",
		"0111010010110001",
		"0111010001011110",
		"0111010000001010",
		"0111001110110101",
		"0111001101011110",
		"0111001100000110",
		"0111001010101110",
		"0111001001010100",
		"0111000111111001",
		"0111000110011101",
		"0111000101000000",
		"0111000011100001",
		"0111000010000010",
		"0111000000100010",
		"0110111111000000",
		"0110111101011110",
		"0110111011111010",
		"0110111010010101",
		"0110111000110000",
		"0110110111001001",
		"0110110101100001",
		"0110110011111000",
		"0110110010001110",
		"0110110000100011",
		"0110101110110111",
		"0110101101001010",
		"0110101011011011",
		"0110101001101100",
		"0110100111111100",
		"0110100110001011",
		"0110100100011001",
		"0110100010100101",
		"0110100000110001",
		"0110011110111100",
		"0110011101000101",
		"0110011011001110",
		"0110011001010110",
		"0110010111011101",
		"0110010101100010",
		"0110010011100111",
		"0110010001101011",
		"0110001111101110",
		"0110001101110000",
		"0110001011110001",
		"0110001001110001",
		"0110000111110000",
		"0110000101101110",
		"0110000011101011",
		"0110000001100111",
		"0101111111100010",
		"0101111101011101",
		"0101111011010110",
		"0101111001001111",
		"0101110111000110",
		"0101110100111101",
		"0101110010110011",
		"0101110000101000",
		"0101101110011100",
		"0101101100001111",
		"0101101010000001",
		"0101100111110011",
		"0101100101100011",
		"0101100011010011",
		"0101100001000010",
		"0101011110110000",
		"0101011100011101",
		"0101011010001001",
		"0101010111110100",
		"0101010101011111",
		"0101010011001001",
		"0101010000110010",
		"0101001110011010",
		"0101001100000001",
		"0101001001101000",
		"0101000111001110",
		"0101000100110011",
		"0101000010010111",
		"0100111111111010",
		"0100111101011101",
		"0100111010111111",
		"0100111000100000",
		"0100110110000000",
		"0100110011100000",
		"0100110000111111",
		"0100101110011101",
		"0100101011111010",
		"0100101001010111",
		"0100100110110011",
		"0100100100001110",
		"0100100001101001",
		"0100011111000011",
		"0100011100011100",
		"0100011001110100",
		"0100010111001100",
		"0100010100100011",
		"0100010001111010",
		"0100001111010000",
		"0100001100100101",
		"0100001001111001",
		"0100000111001101",
		"0100000100100000",
		"0100000001110011",
		"0011111111000101",
		"0011111100010110",
		"0011111001100111",
		"0011110110110111",
		"0011110100000111",
		"0011110001010110",
		"0011101110100100",
		"0011101011110010",
		"0011101000111111",
		"0011100110001100",
		"0011100011011000",
		"0011100000100100",
		"0011011101101111",
		"0011011010111001",
		"0011011000000011",
		"0011010101001101",
		"0011010010010110",
		"0011001111011110",
		"0011001100100110",
		"0011001001101101",
		"0011000110110100",
		"0011000011111011",
		"0011000001000001",
		"0010111110000110",
		"0010111011001100",
		"0010111000010000",
		"0010110101010100",
		"0010110010011000",
		"0010101111011011",
		"0010101100011110",
		"0010101001100001",
		"0010100110100011",
		"0010100011100101",
		"0010100000100110",
		"0010011101100111",
		"0010011010100111",
		"0010010111100111",
		"0010010100100111",
		"0010010001100111",
		"0010001110100110",
		"0010001011100100",
		"0010001000100011",
		"0010000101100001",
		"0010000010011111",
		"0001111111011100",
		"0001111100011001",
		"0001111001010110",
		"0001110110010011",
		"0001110011001111",
		"0001110000001011",
		"0001101101000110",
		"0001101010000010",
		"0001100110111101",
		"0001100011111000",
		"0001100000110011",
		"0001011101101101",
		"0001011010100111",
		"0001010111100001",
		"0001010100011011",
		"0001010001010101",
		"0001001110001110",
		"0001001011000111",
		"0001001000000000",
		"0001000100111001",
		"0001000001110010",
		"0000111110101011",
		"0000111011100011",
		"0000111000011011",
		"0000110101010011",
		"0000110010001011",
		"0000101111000011",
		"0000101011111011",
		"0000101000110010",
		"0000100101101010",
		"0000100010100001",
		"0000011111011001",
		"0000011100010000",
		"0000011001000111",
		"0000010101111110",
		"0000010010110110",
		"0000001111101101",
		"0000001100100100",
		"0000001001011011",
		"0000000110010010",
		"0000000011001001",
		"0000000000000000",
		"1111111100110111",
		"1111111001101110",
		"1111110110100101",
		"1111110011011100",
		"1111110000010011",
		"1111101101001010",
		"1111101010000010",
		"1111100110111001",
		"1111100011110000",
		"1111100000100111",
		"1111011101011111",
		"1111011010010110",
		"1111010111001110",
		"1111010100000101",
		"1111010000111101",
		"1111001101110101",
		"1111001010101101",
		"1111000111100101",
		"1111000100011101",
		"1111000001010101",
		"1110111110001110",
		"1110111011000111",
		"1110111000000000",
		"1110110100111001",
		"1110110001110010",
		"1110101110101011",
		"1110101011100101",
		"1110101000011111",
		"1110100101011001",
		"1110100010010011",
		"1110011111001101",
		"1110011100001000",
		"1110011001000011",
		"1110010101111110",
		"1110010010111010",
		"1110001111110101",
		"1110001100110001",
		"1110001001101101",
		"1110000110101010",
		"1110000011100111",
		"1110000000100100",
		"1101111101100001",
		"1101111010011111",
		"1101110111011101",
		"1101110100011100",
		"1101110001011010",
		"1101101110011001",
		"1101101011011001",
		"1101101000011001",
		"1101100101011001",
		"1101100010011001",
		"1101011111011010",
		"1101011100011011",
		"1101011001011101",
		"1101010110011111",
		"1101010011100010",
		"1101010000100101",
		"1101001101101000",
		"1101001010101100",
		"1101000111110000",
		"1101000100110100",
		"1101000001111010",
		"1100111110111111",
		"1100111100000101",
		"1100111001001100",
		"1100110110010011",
		"1100110011011010",
		"1100110000100010",
		"1100101101101010",
		"1100101010110011",
		"1100100111111101",
		"1100100101000111",
		"1100100010010001",
		"1100011111011100",
		"1100011100101000",
		"1100011001110100",
		"1100010111000001",
		"1100010100001110",
		"1100010001011100",
		"1100001110101010",
		"1100001011111001",
		"1100001001001001",
		"1100000110011001",
		"1100000011101010",
		"1100000000111011",
		"1011111110001101",
		"1011111011100000",
		"1011111000110011",
		"1011110110000111",
		"1011110011011011",
		"1011110000110000",
		"1011101110000110",
		"1011101011011101",
		"1011101000110100",
		"1011100110001100",
		"1011100011100100",
		"1011100000111101",
		"1011011110010111",
		"1011011011110010",
		"1011011001001101",
		"1011010110101001",
		"1011010100000110",
		"1011010001100011",
		"1011001111000001",
		"1011001100100000",
		"1011001010000000",
		"1011000111100000",
		"1011000101000001",
		"1011000010100011",
		"1011000000000110",
		"1010111101101001",
		"1010111011001101",
		"1010111000110010",
		"1010110110011000",
		"1010110011111111",
		"1010110001100110",
		"1010101111001110",
		"1010101100110111",
		"1010101010100001",
		"1010101000001100",
		"1010100101110111",
		"1010100011100011",
		"1010100001010000",
		"1010011110111110",
		"1010011100101101",
		"1010011010011101",
		"1010011000001101",
		"1010010101111111",
		"1010010011110001",
		"1010010001100100",
		"1010001111011000",
		"1010001101001101",
		"1010001011000011",
		"1010001000111010",
		"1010000110110001",
		"1010000100101010",
		"1010000010100011",
		"1010000000011110",
		"1001111110011001",
		"1001111100010101",
		"1001111010010010",
		"1001111000010000",
		"1001110110001111",
		"1001110100001111",
		"1001110010010000",
		"1001110000010010",
		"1001101110010101",
		"1001101100011001",
		"1001101010011110",
		"1001101000100011",
		"1001100110101010",
		"1001100100110010",
		"1001100010111011",
		"1001100001000100",
		"1001011111001111",
		"1001011101011011",
		"1001011011100111",
		"1001011001110101",
		"1001011000000100",
		"1001010110010100",
		"1001010100100101",
		"1001010010110110",
		"1001010001001001",
		"1001001111011101",
		"1001001101110010",
		"1001001100001000",
		"1001001010011111",
		"1001001000110111",
		"1001000111010000",
		"1001000101101011",
		"1001000100000110",
		"1001000010100010",
		"1001000001000000",
		"1000111111011110",
		"1000111101111110",
		"1000111100011111",
		"1000111011000000",
		"1000111001100011",
		"1000111000000111",
		"1000110110101100",
		"1000110101010010",
		"1000110011111010",
		"1000110010100010",
		"1000110001001011",
		"1000101111110110",
		"1000101110100010",
		"1000101101001111",
		"1000101011111101",
		"1000101010101100",
		"1000101001011100",
		"1000101000001101",
		"1000100111000000",
		"1000100101110011",
		"1000100100101000",
		"1000100011011110",
		"1000100010010101",
		"1000100001001101",
		"1000100000000111",
		"1000011111000001",
		"1000011101111101",
		"1000011100111010",
		"1000011011111000",
		"1000011010110111",
		"1000011001110111",
		"1000011000111001",
		"1000010111111100",
		"1000010110111111",
		"1000010110000100",
		"1000010101001011",
		"1000010100010010",
		"1000010011011011",
		"1000010010100100",
		"1000010001101111",
		"1000010000111100",
		"1000010000001001",
		"1000001111010111",
		"1000001110100111",
		"1000001101111000",
		"1000001101001010",
		"1000001100011110",
		"1000001011110010",
		"1000001011001000",
		"1000001010011111",
		"1000001001110111",
		"1000001001010000",
		"1000001000101011",
		"1000001000000111",
		"1000000111100100",
		"1000000111000010",
		"1000000110100010",
		"1000000110000010",
		"1000000101100100",
		"1000000101000111",
		"1000000100101100",
		"1000000100010001",
		"1000000011111000",
		"1000000011100000",
		"1000000011001001",
		"1000000010110100",
		"1000000010011111",
		"1000000010001100",
		"1000000001111010",
		"1000000001101010",
		"1000000001011010",
		"1000000001001100",
		"1000000000111111",
		"1000000000110011",
		"1000000000101001",
		"1000000000100000",
		"1000000000011000",
		"1000000000010001",
		"1000000000001011",
		"1000000000000111",
		"1000000000000100",
		"1000000000000010",
		"1000000000000001",
		"1000000000000010",
		"1000000000000100",
		"1000000000000111",
		"1000000000001011",
		"1000000000010001",
		"1000000000011000",
		"1000000000100000",
		"1000000000101001",
		"1000000000110011",
		"1000000000111111",
		"1000000001001100",
		"1000000001011010",
		"1000000001101010",
		"1000000001111010",
		"1000000010001100",
		"1000000010011111",
		"1000000010110100",
		"1000000011001001",
		"1000000011100000",
		"1000000011111000",
		"1000000100010001",
		"1000000100101100",
		"1000000101000111",
		"1000000101100100",
		"1000000110000010",
		"1000000110100010",
		"1000000111000010",
		"1000000111100100",
		"1000001000000111",
		"1000001000101011",
		"1000001001010000",
		"1000001001110111",
		"1000001010011111",
		"1000001011001000",
		"1000001011110010",
		"1000001100011110",
		"1000001101001010",
		"1000001101111000",
		"1000001110100111",
		"1000001111010111",
		"1000010000001001",
		"1000010000111100",
		"1000010001101111",
		"1000010010100100",
		"1000010011011011",
		"1000010100010010",
		"1000010101001011",
		"1000010110000100",
		"1000010110111111",
		"1000010111111100",
		"1000011000111001",
		"1000011001110111",
		"1000011010110111",
		"1000011011111000",
		"1000011100111010",
		"1000011101111101",
		"1000011111000001",
		"1000100000000111",
		"1000100001001101",
		"1000100010010101",
		"1000100011011110",
		"1000100100101000",
		"1000100101110011",
		"1000100111000000",
		"1000101000001101",
		"1000101001011100",
		"1000101010101100",
		"1000101011111101",
		"1000101101001111",
		"1000101110100010",
		"1000101111110110",
		"1000110001001011",
		"1000110010100010",
		"1000110011111010",
		"1000110101010010",
		"1000110110101100",
		"1000111000000111",
		"1000111001100011",
		"1000111011000000",
		"1000111100011111",
		"1000111101111110",
		"1000111111011110",
		"1001000001000000",
		"1001000010100010",
		"1001000100000110",
		"1001000101101011",
		"1001000111010000",
		"1001001000110111",
		"1001001010011111",
		"1001001100001000",
		"1001001101110010",
		"1001001111011101",
		"1001010001001001",
		"1001010010110110",
		"1001010100100101",
		"1001010110010100",
		"1001011000000100",
		"1001011001110101",
		"1001011011100111",
		"1001011101011011",
		"1001011111001111",
		"1001100001000100",
		"1001100010111011",
		"1001100100110010",
		"1001100110101010",
		"1001101000100011",
		"1001101010011110",
		"1001101100011001",
		"1001101110010101",
		"1001110000010010",
		"1001110010010000",
		"1001110100001111",
		"1001110110001111",
		"1001111000010000",
		"1001111010010010",
		"1001111100010101",
		"1001111110011001",
		"1010000000011110",
		"1010000010100011",
		"1010000100101010",
		"1010000110110001",
		"1010001000111010",
		"1010001011000011",
		"1010001101001101",
		"1010001111011000",
		"1010010001100100",
		"1010010011110001",
		"1010010101111111",
		"1010011000001101",
		"1010011010011101",
		"1010011100101101",
		"1010011110111110",
		"1010100001010000",
		"1010100011100011",
		"1010100101110111",
		"1010101000001100",
		"1010101010100001",
		"1010101100110111",
		"1010101111001110",
		"1010110001100110",
		"1010110011111111",
		"1010110110011000",
		"1010111000110010",
		"1010111011001101",
		"1010111101101001",
		"1011000000000110",
		"1011000010100011",
		"1011000101000001",
		"1011000111100000",
		"1011001010000000",
		"1011001100100000",
		"1011001111000001",
		"1011010001100011",
		"1011010100000110",
		"1011010110101001",
		"1011011001001101",
		"1011011011110010",
		"1011011110010111",
		"1011100000111101",
		"1011100011100100",
		"1011100110001100",
		"1011101000110100",
		"1011101011011101",
		"1011101110000110",
		"1011110000110000",
		"1011110011011011",
		"1011110110000111",
		"1011111000110011",
		"1011111011100000",
		"1011111110001101",
		"1100000000111011",
		"1100000011101010",
		"1100000110011001",
		"1100001001001001",
		"1100001011111001",
		"1100001110101010",
		"1100010001011100",
		"1100010100001110",
		"1100010111000001",
		"1100011001110100",
		"1100011100101000",
		"1100011111011100",
		"1100100010010001",
		"1100100101000111",
		"1100100111111101",
		"1100101010110011",
		"1100101101101010",
		"1100110000100010",
		"1100110011011010",
		"1100110110010011",
		"1100111001001100",
		"1100111100000101",
		"1100111110111111",
		"1101000001111010",
		"1101000100110100",
		"1101000111110000",
		"1101001010101100",
		"1101001101101000",
		"1101010000100101",
		"1101010011100010",
		"1101010110011111",
		"1101011001011101",
		"1101011100011011",
		"1101011111011010",
		"1101100010011001",
		"1101100101011001",
		"1101101000011001",
		"1101101011011001",
		"1101101110011001",
		"1101110001011010",
		"1101110100011100",
		"1101110111011101",
		"1101111010011111",
		"1101111101100001",
		"1110000000100100",
		"1110000011100111",
		"1110000110101010",
		"1110001001101101",
		"1110001100110001",
		"1110001111110101",
		"1110010010111010",
		"1110010101111110",
		"1110011001000011",
		"1110011100001000",
		"1110011111001101",
		"1110100010010011",
		"1110100101011001",
		"1110101000011111",
		"1110101011100101",
		"1110101110101011",
		"1110110001110010",
		"1110110100111001",
		"1110111000000000",
		"1110111011000111",
		"1110111110001110",
		"1111000001010101",
		"1111000100011101",
		"1111000111100101",
		"1111001010101101",
		"1111001101110101",
		"1111010000111101",
		"1111010100000101",
		"1111010111001110",
		"1111011010010110",
		"1111011101011111",
		"1111100000100111",
		"1111100011110000",
		"1111100110111001",
		"1111101010000010",
		"1111101101001010",
		"1111110000010011",
		"1111110011011100",
		"1111110110100101",
		"1111111001101110",
		"1111111100110111",
		"0000000000000000",
		"0000000011001001",
		"0000000110010010",
		"0000001001011011",
		"0000001100100100",
		"0000001111101101",
		"0000010010110110",
		"0000010101111110",
		"0000011001000111",
		"0000011100010000",
		"0000011111011001",
		"0000100010100001",
		"0000100101101010",
		"0000101000110010",
		"0000101011111011",
		"0000101111000011",
		"0000110010001011",
		"0000110101010011",
		"0000111000011011",
		"0000111011100011",
		"0000111110101011",
		"0001000001110010",
		"0001000100111001",
		"0001001000000000",
		"0001001011000111",
		"0001001110001110",
		"0001010001010101",
		"0001010100011011",
		"0001010111100001",
		"0001011010100111",
		"0001011101101101",
		"0001100000110011",
		"0001100011111000",
		"0001100110111101",
		"0001101010000010",
		"0001101101000110",
		"0001110000001011",
		"0001110011001111",
		"0001110110010011",
		"0001111001010110",
		"0001111100011001",
		"0001111111011100",
		"0010000010011111",
		"0010000101100001",
		"0010001000100011",
		"0010001011100100",
		"0010001110100110",
		"0010010001100111",
		"0010010100100111",
		"0010010111100111",
		"0010011010100111",
		"0010011101100111",
		"0010100000100110",
		"0010100011100101",
		"0010100110100011",
		"0010101001100001",
		"0010101100011110",
		"0010101111011011",
		"0010110010011000",
		"0010110101010100",
		"0010111000010000",
		"0010111011001100",
		"0010111110000110",
		"0011000001000001",
		"0011000011111011",
		"0011000110110100",
		"0011001001101101",
		"0011001100100110",
		"0011001111011110",
		"0011010010010110",
		"0011010101001101",
		"0011011000000011",
		"0011011010111001",
		"0011011101101111",
		"0011100000100100",
		"0011100011011000",
		"0011100110001100",
		"0011101000111111",
		"0011101011110010",
		"0011101110100100",
		"0011110001010110",
		"0011110100000111",
		"0011110110110111",
		"0011111001100111",
		"0011111100010110",
		"0011111111000101",
		"0100000001110011",
		"0100000100100000",
		"0100000111001101",
		"0100001001111001",
		"0100001100100101",
		"0100001111010000",
		"0100010001111010",
		"0100010100100011",
		"0100010111001100",
		"0100011001110100",
		"0100011100011100",
		"0100011111000011",
		"0100100001101001",
		"0100100100001110",
		"0100100110110011",
		"0100101001010111",
		"0100101011111010",
		"0100101110011101",
		"0100110000111111",
		"0100110011100000",
		"0100110110000000",
		"0100111000100000",
		"0100111010111111",
		"0100111101011101",
		"0100111111111010",
		"0101000010010111",
		"0101000100110011",
		"0101000111001110",
		"0101001001101000",
		"0101001100000001",
		"0101001110011010",
		"0101010000110010",
		"0101010011001001",
		"0101010101011111",
		"0101010111110100",
		"0101011010001001",
		"0101011100011101",
		"0101011110110000",
		"0101100001000010",
		"0101100011010011",
		"0101100101100011",
		"0101100111110011",
		"0101101010000001",
		"0101101100001111",
		"0101101110011100",
		"0101110000101000",
		"0101110010110011",
		"0101110100111101",
		"0101110111000110",
		"0101111001001111",
		"0101111011010110",
		"0101111101011101",
		"0101111111100010",
		"0110000001100111",
		"0110000011101011",
		"0110000101101110",
		"0110000111110000",
		"0110001001110001",
		"0110001011110001",
		"0110001101110000",
		"0110001111101110",
		"0110010001101011",
		"0110010011100111",
		"0110010101100010",
		"0110010111011101",
		"0110011001010110",
		"0110011011001110",
		"0110011101000101",
		"0110011110111100",
		"0110100000110001",
		"0110100010100101",
		"0110100100011001",
		"0110100110001011",
		"0110100111111100",
		"0110101001101100",
		"0110101011011011",
		"0110101101001010",
		"0110101110110111",
		"0110110000100011",
		"0110110010001110",
		"0110110011111000",
		"0110110101100001",
		"0110110111001001",
		"0110111000110000",
		"0110111010010101",
		"0110111011111010",
		"0110111101011110",
		"0110111111000000",
		"0111000000100010",
		"0111000010000010",
		"0111000011100001",
		"0111000101000000",
		"0111000110011101",
		"0111000111111001",
		"0111001001010100",
		"0111001010101110",
		"0111001100000110",
		"0111001101011110",
		"0111001110110101",
		"0111010000001010",
		"0111010001011110",
		"0111010010110001",
		"0111010100000011",
		"0111010101010100",
		"0111010110100100",
		"0111010111110011",
		"0111011001000000",
		"0111011010001101",
		"0111011011011000",
		"0111011100100010",
		"0111011101101011",
		"0111011110110011",
		"0111011111111001",
		"0111100000111111",
		"0111100010000011",
		"0111100011000110",
		"0111100100001000",
		"0111100101001001",
		"0111100110001001",
		"0111100111000111",
		"0111101000000100",
		"0111101001000001",
		"0111101001111100",
		"0111101010110101",
		"0111101011101110",
		"0111101100100101",
		"0111101101011100",
		"0111101110010001",
		"0111101111000100",
		"0111101111110111",
		"0111110000101001",
		"0111110001011001",
		"0111110010001000",
		"0111110010110110",
		"0111110011100010",
		"0111110100001110",
		"0111110100111000",
		"0111110101100001",
		"0111110110001001",
		"0111110110110000",
		"0111110111010101",
		"0111110111111001",
		"0111111000011100",
		"0111111000111110",
		"0111111001011110",
		"0111111001111110",
		"0111111010011100",
		"0111111010111001",
		"0111111011010100",
		"0111111011101111",
		"0111111100001000",
		"0111111100100000",
		"0111111100110111",
		"0111111101001100",
		"0111111101100001",
		"0111111101110100",
		"0111111110000110",
		"0111111110010110",
		"0111111110100110",
		"0111111110110100",
		"0111111111000001",
		"0111111111001101",
		"0111111111010111",
		"0111111111100000",
		"0111111111101000",
		"0111111111101111",
		"0111111111110101",
		"0111111111111001",
		"0111111111111100",
		"0111111111111110");
begin

	process(clk)
	begin
		if rising_edge(clk) then
			data_a<=my_rom(to_integer(unsigned(addr_a)));
		end if;
	end process;
	process(clk)
	begin
		if rising_edge(clk) then
			data_b<=my_rom(to_integer(unsigned(addr_b)));
		end if;
	end process;
end architecture behavioral;
