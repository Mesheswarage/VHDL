library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Bidirectional_Buffer_tb is
end Bidirectional_Buffer_tb;

architecture bench of Bidirectional_Buffer_tb is
  component Bidirectional_Buffer
    Port (
      A : inout STD_LOGIC ;
      B : inout STD_LOGIC ;
      DIR : in STD_LOGIC;
      OE_Inv : in STD_LOGIC
    );
  end component;

  signal A : STD_LOGIC;
  signal B : STD_LOGIC;
  signal DIR : STD_LOGIC ;
  signal OE_Inv : STD_LOGIC ;
  

begin
  uut: Bidirectional_Buffer port map (
    A      => A ,
    B      => B ,
    DIR    => DIR ,
    OE_Inv => OE_Inv
  );

  stimulus: process
  begin
    A <= '0' ;
    B <= '0' ;
    
    wait for 20 ns;

    A <= '0';
    B <= '1';
    DIR <= '0';
    OE_Inv <= '0';
    
    wait for  20 ns;
  
    report "Value of A is " & std_logic'image(A);
    assert A = '0' report "B to A data transfer" severity note;

    wait;
  end process;
end;
