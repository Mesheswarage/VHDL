library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity SSD_tb is
end;

architecture bench of SSD_tb is

  component SSD
      Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
             en : in STD_LOGIC;
             abcdefg : out STD_LOGIC_VECTOR (6 downto 0));
  end component;

  signal input: STD_LOGIC_VECTOR (3 downto 0);
  signal en: STD_LOGIC;
  signal abcdefg: STD_LOGIC_VECTOR (6 downto 0);

begin

  uut: SSD port map ( input   => input,
                      en      => en,
                      abcdefg => abcdefg );

  stimulus: process
  begin
  
        input <= "0000";  
        en <= '1';       

        wait for 100ns;
        
        input <= "0001";  
        wait for 100ns;
        input <= "0010";  
        wait for 100ns;
        input <= "0011"; 
        wait for 100ns;
        input <= "0100";  
        wait for 100ns;
        input <= "0101"; 
        wait for 100ns;
        input <= "0110";  
        wait for 100ns;
        input <= "0111";  
        wait for 100ns;
        input <= "1000";  
        wait for 100ns;
        input <= "1001";  
        wait for 100ns;
        
        en <= '0';
    
    wait;
  end process;


end;