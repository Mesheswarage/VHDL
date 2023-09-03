----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/31/2023 10:11:49 AM
-- Design Name: 
-- Module Name: ThreeTo8Decoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity three2eight_decoder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           e : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (7 downto 0));
end three2eight_decoder;

architecture Behavioral of three2eight_decoder is
    signal abce : std_logic_vector(3 downto 0);
begin
    abce <= a & b & c & e;
    
    with abce select y <=
        "10000000" when "0001",
        "01000000" when "0011",
        "00100000" when "0101",
        "00010000" when "0111",
        "00001000" when "1001", 
        "00000100" when "1011",
        "00000010" when "1101",
        "00000001" when "1111",
        "00000000" when others;  

end Behavioral;
