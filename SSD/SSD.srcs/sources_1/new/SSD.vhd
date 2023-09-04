library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SSD is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           en : in STD_LOGIC;
           abcdefg : out STD_LOGIC_VECTOR (6 downto 0));
end SSD;

architecture Behavioral of SSD is

begin
process(input, en)
    begin
        if en = '1' then  
            case input is
                when "0000" =>
                    abcdefg <= "1111110"; 
                when "0001" =>
                    abcdefg <= "0110000"; 
                when "0010" =>
                    abcdefg <= "1101101"; 
                when "0011" =>
                    abcdefg <= "1111001"; 
                when "0100" =>
                    abcdefg <= "0110011"; 
                when "0101" =>
                    abcdefg <= "1011011"; 
                when "0110" =>
                    abcdefg <= "1011111"; 
                when "0111" =>
                    abcdefg <= "1110000"; 
                when "1000" =>
                    abcdefg <= "1111111"; 
                when "1001" =>
                    abcdefg <= "1111011"; 
                when others =>
                    abcdefg <= "0000000"; 
            end case;
        else
            abcdefg <= "0000000";  
        end if;
    end process;
end Behavioral;
