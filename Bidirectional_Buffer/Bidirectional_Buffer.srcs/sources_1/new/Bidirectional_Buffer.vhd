library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Bidirectional_Buffer is
    Port ( A : inout STD_LOGIC;
           B : inout STD_LOGIC;
           DIR : in STD_LOGIC;
           OE_Inv : in STD_LOGIC);
end Bidirectional_Buffer;

architecture Behavioral of Bidirectional_Buffer is
begin
  process(DIR, OE_Inv)
  begin
    if OE_Inv = '0' then
      if DIR = '0' then
        A <= B;
        B <= B;
      else
        if DIR = '1' then
          B <= A;
          A <= A;
        end if;
      end if;
    else 
      if OE_Inv = '1' then
        -- No Output
      end if;
    end if;
  end process;
end Behavioral;

