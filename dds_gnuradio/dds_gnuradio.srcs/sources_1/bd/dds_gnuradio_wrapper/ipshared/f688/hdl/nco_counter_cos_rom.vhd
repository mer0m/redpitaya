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
		"0111111111001100",
		"0111111111000001",
		"0111111110110100",
		"0111111110100110",
		"0111111110010110",
		"0111111110000101",
		"0111111101110100",
		"0111111101100000",
		"0111111101001100",
		"0111111100110110",
		"0111111100100000",
		"0111111100001000",
		"0111111011101110",
		"0111111011010100",
		"0111111010111000",
		"0111111010011011",
		"0111111001111101",
		"0111111001011110",
		"0111111000111101",
		"0111111000011011",
		"0111110111111000",
		"0111110111010100",
		"0111110110101110",
		"0111110110001000",
		"0111110101100000",
		"0111110100110111",
		"0111110100001100",
		"0111110011100001",
		"0111110010110100",
		"0111110010000110",
		"0111110001010111",
		"0111110000100111",
		"0111101111110101",
		"0111101111000010",
		"0111101110001110",
		"0111101101011001",
		"0111101100100011",
		"0111101011101011",
		"0111101010110011",
		"0111101001111001",
		"0111101000111110",
		"0111101000000001",
		"0111100111000100",
		"0111100110000101",
		"0111100101000110",
		"0111100100000101",
		"0111100011000011",
		"0111100001111111",
		"0111100000111011",
		"0111011111110101",
		"0111011110101111",
		"0111011101100111",
		"0111011100011110",
		"0111011011010011",
		"0111011010001000",
		"0111011000111011",
		"0111010111101110",
		"0111010110011111",
		"0111010101001111",
		"0111010011111110",
		"0111010010101100",
		"0111010001011000",
		"0111010000000100",
		"0111001110101110",
		"0111001101011000",
		"0111001100000000",
		"0111001010100111",
		"0111001001001101",
		"0111000111110010",
		"0111000110010110",
		"0111000100111000",
		"0111000011011010",
		"0111000001111010",
		"0111000000011010",
		"0110111110111000",
		"0110111101010101",
		"0110111011110010",
		"0110111010001101",
		"0110111000100111",
		"0110110111000000",
		"0110110101011000",
		"0110110011101110",
		"0110110010000100",
		"0110110000011001",
		"0110101110101101",
		"0110101100111111",
		"0110101011010001",
		"0110101001100010",
		"0110100111110001",
		"0110100110000000",
		"0110100100001101",
		"0110100010011010",
		"0110100000100101",
		"0110011110110000",
		"0110011100111001",
		"0110011011000010",
		"0110011001001001",
		"0110010111010000",
		"0110010101010110",
		"0110010011011010",
		"0110010001011110",
		"0110001111100000",
		"0110001101100010",
		"0110001011100011",
		"0110001001100010",
		"0110000111100001",
		"0110000101011111",
		"0110000011011100",
		"0110000001011000",
		"0101111111010011",
		"0101111101001101",
		"0101111011000110",
		"0101111000111111",
		"0101110110110110",
		"0101110100101100",
		"0101110010100010",
		"0101110000010111",
		"0101101110001010",
		"0101101011111101",
		"0101101001101111",
		"0101100111100000",
		"0101100101010001",
		"0101100011000000",
		"0101100000101111",
		"0101011110011100",
		"0101011100001001",
		"0101011001110101",
		"0101010111100000",
		"0101010101001011",
		"0101010010110100",
		"0101010000011101",
		"0101001110000101",
		"0101001011101100",
		"0101001001010010",
		"0101000110111000",
		"0101000100011101",
		"0101000010000001",
		"0100111111100100",
		"0100111101000110",
		"0100111010101000",
		"0100111000001001",
		"0100110101101001",
		"0100110011001000",
		"0100110000100111",
		"0100101110000100",
		"0100101011100010",
		"0100101000111110",
		"0100100110011010",
		"0100100011110101",
		"0100100001001111",
		"0100011110101001",
		"0100011100000001",
		"0100011001011010",
		"0100010110110001",
		"0100010100001000",
		"0100010001011110",
		"0100001110110100",
		"0100001100001001",
		"0100001001011101",
		"0100000110110001",
		"0100000100000011",
		"0100000001010110",
		"0011111110101000",
		"0011111011111001",
		"0011111001001001",
		"0011110110011001",
		"0011110011101000",
		"0011110000110111",
		"0011101110000101",
		"0011101011010011",
		"0011101000100000",
		"0011100101101100",
		"0011100010111000",
		"0011100000000011",
		"0011011101001110",
		"0011011010011000",
		"0011010111100010",
		"0011010100101011",
		"0011010001110100",
		"0011001110111100",
		"0011001100000100",
		"0011001001001011",
		"0011000110010001",
		"0011000011011000",
		"0011000000011101",
		"0010111101100011",
		"0010111010101000",
		"0010110111101100",
		"0010110100110000",
		"0010110001110011",
		"0010101110110110",
		"0010101011111001",
		"0010101000111011",
		"0010100101111101",
		"0010100010111110",
		"0010011111111111",
		"0010011101000000",
		"0010011010000000",
		"0010010111000000",
		"0010010100000000",
		"0010010000111111",
		"0010001101111110",
		"0010001010111100",
		"0010000111111010",
		"0010000100111000",
		"0010000001110110",
		"0001111110110011",
		"0001111011110000",
		"0001111000101100",
		"0001110101101001",
		"0001110010100100",
		"0001101111100000",
		"0001101100011100",
		"0001101001010111",
		"0001100110010010",
		"0001100011001100",
		"0001100000000111",
		"0001011101000001",
		"0001011001111011",
		"0001010110110101",
		"0001010011101110",
		"0001010000101000",
		"0001001101100001",
		"0001001010011010",
		"0001000111010011",
		"0001000100001011",
		"0001000001000100",
		"0000111101111100",
		"0000111010110100",
		"0000110111101100",
		"0000110100100100",
		"0000110001011100",
		"0000101110010011",
		"0000101011001011",
		"0000101000000010",
		"0000100100111010",
		"0000100001110001",
		"0000011110101000",
		"0000011011011111",
		"0000011000010110",
		"0000010101001101",
		"0000010010000100",
		"0000001110111011",
		"0000001011110010",
		"0000001000101000",
		"0000000101011111",
		"0000000010010110",
		"1111111111001101",
		"1111111100000011",
		"1111111000111010",
		"1111110101110001",
		"1111110010101000",
		"1111101111011111",
		"1111101100010101",
		"1111101001001100",
		"1111100110000011",
		"1111100010111010",
		"1111011111110001",
		"1111011100101001",
		"1111011001100000",
		"1111010110010111",
		"1111010011001111",
		"1111010000000110",
		"1111001100111110",
		"1111001001110110",
		"1111000110101110",
		"1111000011100110",
		"1111000000011110",
		"1110111101010110",
		"1110111010001111",
		"1110110111001000",
		"1110110100000001",
		"1110110000111010",
		"1110101101110011",
		"1110101010101100",
		"1110100111100110",
		"1110100100100000",
		"1110100001011010",
		"1110011110010100",
		"1110011011001111",
		"1110011000001010",
		"1110010101000101",
		"1110010010000000",
		"1110001110111100",
		"1110001011110111",
		"1110001000110100",
		"1110000101110000",
		"1110000010101101",
		"1101111111101010",
		"1101111100100111",
		"1101111001100101",
		"1101110110100011",
		"1101110011100001",
		"1101110000100000",
		"1101101101011111",
		"1101101010011110",
		"1101100111011110",
		"1101100100011110",
		"1101100001011110",
		"1101011110011111",
		"1101011011100000",
		"1101011000100010",
		"1101010101100100",
		"1101010010100110",
		"1101001111101001",
		"1101001100101100",
		"1101001001110000",
		"1101000110110100",
		"1101000011111001",
		"1101000000111110",
		"1100111110000011",
		"1100111011001001",
		"1100111000010000",
		"1100110101010111",
		"1100110010011110",
		"1100101111100110",
		"1100101100101110",
		"1100101001110111",
		"1100100111000001",
		"1100100100001011",
		"1100100001010101",
		"1100011110100000",
		"1100011011101100",
		"1100011000111000",
		"1100010110000101",
		"1100010011010010",
		"1100010000100000",
		"1100001101101110",
		"1100001010111101",
		"1100001000001101",
		"1100000101011101",
		"1100000010101110",
		"1011111111111111",
		"1011111101010001",
		"1011111010100100",
		"1011110111110111",
		"1011110101001011",
		"1011110010100000",
		"1011101111110101",
		"1011101101001011",
		"1011101010100001",
		"1011100111111000",
		"1011100101010000",
		"1011100010101001",
		"1011100000000010",
		"1011011101011100",
		"1011011010110111",
		"1011011000010010",
		"1011010101101110",
		"1011010011001011",
		"1011010000101000",
		"1011001110000111",
		"1011001011100110",
		"1011001001000101",
		"1011000110100110",
		"1011000100000111",
		"1011000001101001",
		"1010111111001100",
		"1010111100101111",
		"1010111010010100",
		"1010110111111001",
		"1010110101011111",
		"1010110011000101",
		"1010110000101101",
		"1010101110010101",
		"1010101011111110",
		"1010101001101000",
		"1010100111010011",
		"1010100100111111",
		"1010100010101011",
		"1010100000011000",
		"1010011110000110",
		"1010011011110101",
		"1010011001100101",
		"1010010111010110",
		"1010010101001000",
		"1010010010111010",
		"1010010000101101",
		"1010001110100010",
		"1010001100010111",
		"1010001010001101",
		"1010001000000100",
		"1010000101111011",
		"1010000011110100",
		"1010000001101110",
		"1001111111101000",
		"1001111101100100",
		"1001111011100000",
		"1001111001011110",
		"1001110111011100",
		"1001110101011011",
		"1001110011011100",
		"1001110001011101",
		"1001101111011111",
		"1001101101100010",
		"1001101011100110",
		"1001101001101011",
		"1001100111110001",
		"1001100101111000",
		"1001100100000000",
		"1001100010001001",
		"1001100000010011",
		"1001011110011110",
		"1001011100101010",
		"1001011010110111",
		"1001011001000101",
		"1001010111010100",
		"1001010101100100",
		"1001010011110110",
		"1001010010001000",
		"1001010000011011",
		"1001001110101111",
		"1001001101000100",
		"1001001011011011",
		"1001001001110010",
		"1001001000001011",
		"1001000110100100",
		"1001000100111111",
		"1001000011011010",
		"1001000001110111",
		"1001000000010101",
		"1000111110110100",
		"1000111101010100",
		"1000111011110101",
		"1000111010010111",
		"1000111000111010",
		"1000110111011110",
		"1000110110000100",
		"1000110100101010",
		"1000110011010010",
		"1000110001111011",
		"1000110000100101",
		"1000101111010000",
		"1000101101111100",
		"1000101100101001",
		"1000101011010111",
		"1000101010000111",
		"1000101000111000",
		"1000100111101001",
		"1000100110011100",
		"1000100101010000",
		"1000100100000101",
		"1000100010111100",
		"1000100001110011",
		"1000100000101100",
		"1000011111100110",
		"1000011110100001",
		"1000011101011101",
		"1000011100011010",
		"1000011011011001",
		"1000011010011000",
		"1000011001011001",
		"1000011000011011",
		"1000010111011110",
		"1000010110100011",
		"1000010101101000",
		"1000010100101111",
		"1000010011110111",
		"1000010011000000",
		"1000010010001010",
		"1000010001010110",
		"1000010000100010",
		"1000001111110000",
		"1000001110111111",
		"1000001110001111",
		"1000001101100001",
		"1000001100110011",
		"1000001100000111",
		"1000001011011100",
		"1000001010110011",
		"1000001010001010",
		"1000001001100011",
		"1000001000111101",
		"1000001000011000",
		"1000000111110100",
		"1000000111010010",
		"1000000110110001",
		"1000000110010001",
		"1000000101110010",
		"1000000101010100",
		"1000000100111000",
		"1000000100011101",
		"1000000100000011",
		"1000000011101010",
		"1000000011010011",
		"1000000010111101",
		"1000000010101000",
		"1000000010010100",
		"1000000010000001",
		"1000000001110000",
		"1000000001100000",
		"1000000001010001",
		"1000000001000100",
		"1000000000110111",
		"1000000000101100",
		"1000000000100010",
		"1000000000011010",
		"1000000000010010",
		"1000000000001100",
		"1000000000000111",
		"1000000000000011",
		"1000000000000001",
		"1000000000000000",
		"1000000000000000",
		"1000000000000001",
		"1000000000000011",
		"1000000000000111",
		"1000000000001100",
		"1000000000010010",
		"1000000000011010",
		"1000000000100010",
		"1000000000101100",
		"1000000000110111",
		"1000000001000100",
		"1000000001010001",
		"1000000001100000",
		"1000000001110000",
		"1000000010000001",
		"1000000010010100",
		"1000000010101000",
		"1000000010111101",
		"1000000011010011",
		"1000000011101010",
		"1000000100000011",
		"1000000100011101",
		"1000000100111000",
		"1000000101010100",
		"1000000101110010",
		"1000000110010001",
		"1000000110110001",
		"1000000111010010",
		"1000000111110100",
		"1000001000011000",
		"1000001000111101",
		"1000001001100011",
		"1000001010001010",
		"1000001010110011",
		"1000001011011100",
		"1000001100000111",
		"1000001100110011",
		"1000001101100001",
		"1000001110001111",
		"1000001110111111",
		"1000001111110000",
		"1000010000100010",
		"1000010001010110",
		"1000010010001010",
		"1000010011000000",
		"1000010011110111",
		"1000010100101111",
		"1000010101101000",
		"1000010110100011",
		"1000010111011110",
		"1000011000011011",
		"1000011001011001",
		"1000011010011000",
		"1000011011011001",
		"1000011100011010",
		"1000011101011101",
		"1000011110100001",
		"1000011111100110",
		"1000100000101100",
		"1000100001110011",
		"1000100010111100",
		"1000100100000101",
		"1000100101010000",
		"1000100110011100",
		"1000100111101001",
		"1000101000111000",
		"1000101010000111",
		"1000101011010111",
		"1000101100101001",
		"1000101101111100",
		"1000101111010000",
		"1000110000100101",
		"1000110001111011",
		"1000110011010010",
		"1000110100101010",
		"1000110110000100",
		"1000110111011110",
		"1000111000111010",
		"1000111010010111",
		"1000111011110101",
		"1000111101010100",
		"1000111110110100",
		"1001000000010101",
		"1001000001110111",
		"1001000011011010",
		"1001000100111111",
		"1001000110100100",
		"1001001000001011",
		"1001001001110010",
		"1001001011011011",
		"1001001101000100",
		"1001001110101111",
		"1001010000011011",
		"1001010010001000",
		"1001010011110110",
		"1001010101100100",
		"1001010111010100",
		"1001011001000101",
		"1001011010110111",
		"1001011100101010",
		"1001011110011110",
		"1001100000010011",
		"1001100010001001",
		"1001100100000000",
		"1001100101111000",
		"1001100111110001",
		"1001101001101011",
		"1001101011100110",
		"1001101101100010",
		"1001101111011111",
		"1001110001011101",
		"1001110011011100",
		"1001110101011011",
		"1001110111011100",
		"1001111001011110",
		"1001111011100000",
		"1001111101100100",
		"1001111111101000",
		"1010000001101110",
		"1010000011110100",
		"1010000101111011",
		"1010001000000100",
		"1010001010001101",
		"1010001100010111",
		"1010001110100010",
		"1010010000101101",
		"1010010010111010",
		"1010010101001000",
		"1010010111010110",
		"1010011001100101",
		"1010011011110101",
		"1010011110000110",
		"1010100000011000",
		"1010100010101011",
		"1010100100111111",
		"1010100111010011",
		"1010101001101000",
		"1010101011111110",
		"1010101110010101",
		"1010110000101101",
		"1010110011000101",
		"1010110101011111",
		"1010110111111001",
		"1010111010010100",
		"1010111100101111",
		"1010111111001100",
		"1011000001101001",
		"1011000100000111",
		"1011000110100110",
		"1011001001000101",
		"1011001011100110",
		"1011001110000111",
		"1011010000101000",
		"1011010011001011",
		"1011010101101110",
		"1011011000010010",
		"1011011010110111",
		"1011011101011100",
		"1011100000000010",
		"1011100010101001",
		"1011100101010000",
		"1011100111111000",
		"1011101010100001",
		"1011101101001011",
		"1011101111110101",
		"1011110010100000",
		"1011110101001011",
		"1011110111110111",
		"1011111010100100",
		"1011111101010001",
		"1011111111111111",
		"1100000010101110",
		"1100000101011101",
		"1100001000001101",
		"1100001010111101",
		"1100001101101110",
		"1100010000100000",
		"1100010011010010",
		"1100010110000101",
		"1100011000111000",
		"1100011011101100",
		"1100011110100000",
		"1100100001010101",
		"1100100100001011",
		"1100100111000001",
		"1100101001110111",
		"1100101100101110",
		"1100101111100110",
		"1100110010011110",
		"1100110101010111",
		"1100111000010000",
		"1100111011001001",
		"1100111110000011",
		"1101000000111110",
		"1101000011111001",
		"1101000110110100",
		"1101001001110000",
		"1101001100101100",
		"1101001111101001",
		"1101010010100110",
		"1101010101100100",
		"1101011000100010",
		"1101011011100000",
		"1101011110011111",
		"1101100001011110",
		"1101100100011110",
		"1101100111011110",
		"1101101010011110",
		"1101101101011111",
		"1101110000100000",
		"1101110011100001",
		"1101110110100011",
		"1101111001100101",
		"1101111100100111",
		"1101111111101010",
		"1110000010101101",
		"1110000101110000",
		"1110001000110100",
		"1110001011110111",
		"1110001110111100",
		"1110010010000000",
		"1110010101000101",
		"1110011000001010",
		"1110011011001111",
		"1110011110010100",
		"1110100001011010",
		"1110100100100000",
		"1110100111100110",
		"1110101010101100",
		"1110101101110011",
		"1110110000111010",
		"1110110100000001",
		"1110110111001000",
		"1110111010001111",
		"1110111101010110",
		"1111000000011110",
		"1111000011100110",
		"1111000110101110",
		"1111001001110110",
		"1111001100111110",
		"1111010000000110",
		"1111010011001111",
		"1111010110010111",
		"1111011001100000",
		"1111011100101001",
		"1111011111110001",
		"1111100010111010",
		"1111100110000011",
		"1111101001001100",
		"1111101100010101",
		"1111101111011111",
		"1111110010101000",
		"1111110101110001",
		"1111111000111010",
		"1111111100000011",
		"1111111111001101",
		"0000000010010110",
		"0000000101011111",
		"0000001000101000",
		"0000001011110010",
		"0000001110111011",
		"0000010010000100",
		"0000010101001101",
		"0000011000010110",
		"0000011011011111",
		"0000011110101000",
		"0000100001110001",
		"0000100100111010",
		"0000101000000010",
		"0000101011001011",
		"0000101110010011",
		"0000110001011100",
		"0000110100100100",
		"0000110111101100",
		"0000111010110100",
		"0000111101111100",
		"0001000001000100",
		"0001000100001011",
		"0001000111010011",
		"0001001010011010",
		"0001001101100001",
		"0001010000101000",
		"0001010011101110",
		"0001010110110101",
		"0001011001111011",
		"0001011101000001",
		"0001100000000111",
		"0001100011001100",
		"0001100110010010",
		"0001101001010111",
		"0001101100011100",
		"0001101111100000",
		"0001110010100100",
		"0001110101101001",
		"0001111000101100",
		"0001111011110000",
		"0001111110110011",
		"0010000001110110",
		"0010000100111000",
		"0010000111111010",
		"0010001010111100",
		"0010001101111110",
		"0010010000111111",
		"0010010100000000",
		"0010010111000000",
		"0010011010000000",
		"0010011101000000",
		"0010011111111111",
		"0010100010111110",
		"0010100101111101",
		"0010101000111011",
		"0010101011111001",
		"0010101110110110",
		"0010110001110011",
		"0010110100110000",
		"0010110111101100",
		"0010111010101000",
		"0010111101100011",
		"0011000000011101",
		"0011000011011000",
		"0011000110010001",
		"0011001001001011",
		"0011001100000100",
		"0011001110111100",
		"0011010001110100",
		"0011010100101011",
		"0011010111100010",
		"0011011010011000",
		"0011011101001110",
		"0011100000000011",
		"0011100010111000",
		"0011100101101100",
		"0011101000100000",
		"0011101011010011",
		"0011101110000101",
		"0011110000110111",
		"0011110011101000",
		"0011110110011001",
		"0011111001001001",
		"0011111011111001",
		"0011111110101000",
		"0100000001010110",
		"0100000100000011",
		"0100000110110001",
		"0100001001011101",
		"0100001100001001",
		"0100001110110100",
		"0100010001011110",
		"0100010100001000",
		"0100010110110001",
		"0100011001011010",
		"0100011100000001",
		"0100011110101001",
		"0100100001001111",
		"0100100011110101",
		"0100100110011010",
		"0100101000111110",
		"0100101011100010",
		"0100101110000100",
		"0100110000100111",
		"0100110011001000",
		"0100110101101001",
		"0100111000001001",
		"0100111010101000",
		"0100111101000110",
		"0100111111100100",
		"0101000010000001",
		"0101000100011101",
		"0101000110111000",
		"0101001001010010",
		"0101001011101100",
		"0101001110000101",
		"0101010000011101",
		"0101010010110100",
		"0101010101001011",
		"0101010111100000",
		"0101011001110101",
		"0101011100001001",
		"0101011110011100",
		"0101100000101111",
		"0101100011000000",
		"0101100101010001",
		"0101100111100000",
		"0101101001101111",
		"0101101011111101",
		"0101101110001010",
		"0101110000010111",
		"0101110010100010",
		"0101110100101100",
		"0101110110110110",
		"0101111000111111",
		"0101111011000110",
		"0101111101001101",
		"0101111111010011",
		"0110000001011000",
		"0110000011011100",
		"0110000101011111",
		"0110000111100001",
		"0110001001100010",
		"0110001011100011",
		"0110001101100010",
		"0110001111100000",
		"0110010001011110",
		"0110010011011010",
		"0110010101010110",
		"0110010111010000",
		"0110011001001001",
		"0110011011000010",
		"0110011100111001",
		"0110011110110000",
		"0110100000100101",
		"0110100010011010",
		"0110100100001101",
		"0110100110000000",
		"0110100111110001",
		"0110101001100010",
		"0110101011010001",
		"0110101100111111",
		"0110101110101101",
		"0110110000011001",
		"0110110010000100",
		"0110110011101110",
		"0110110101011000",
		"0110110111000000",
		"0110111000100111",
		"0110111010001101",
		"0110111011110010",
		"0110111101010101",
		"0110111110111000",
		"0111000000011010",
		"0111000001111010",
		"0111000011011010",
		"0111000100111000",
		"0111000110010110",
		"0111000111110010",
		"0111001001001101",
		"0111001010100111",
		"0111001100000000",
		"0111001101011000",
		"0111001110101110",
		"0111010000000100",
		"0111010001011000",
		"0111010010101100",
		"0111010011111110",
		"0111010101001111",
		"0111010110011111",
		"0111010111101110",
		"0111011000111011",
		"0111011010001000",
		"0111011011010011",
		"0111011100011110",
		"0111011101100111",
		"0111011110101111",
		"0111011111110101",
		"0111100000111011",
		"0111100001111111",
		"0111100011000011",
		"0111100100000101",
		"0111100101000110",
		"0111100110000101",
		"0111100111000100",
		"0111101000000001",
		"0111101000111110",
		"0111101001111001",
		"0111101010110011",
		"0111101011101011",
		"0111101100100011",
		"0111101101011001",
		"0111101110001110",
		"0111101111000010",
		"0111101111110101",
		"0111110000100111",
		"0111110001010111",
		"0111110010000110",
		"0111110010110100",
		"0111110011100001",
		"0111110100001100",
		"0111110100110111",
		"0111110101100000",
		"0111110110001000",
		"0111110110101110",
		"0111110111010100",
		"0111110111111000",
		"0111111000011011",
		"0111111000111101",
		"0111111001011110",
		"0111111001111101",
		"0111111010011011",
		"0111111010111000",
		"0111111011010100",
		"0111111011101110",
		"0111111100001000",
		"0111111100100000",
		"0111111100110110",
		"0111111101001100",
		"0111111101100000",
		"0111111101110100",
		"0111111110000101",
		"0111111110010110",
		"0111111110100110",
		"0111111110110100",
		"0111111111000001",
		"0111111111001100",
		"0111111111010111",
		"0111111111100000",
		"0111111111101000",
		"0111111111101111",
		"0111111111110101",
		"0111111111111001",
		"0111111111111100",
		"0111111111111110",
		"0111111111111111");
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
