library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity three2eight_decoder_tb is 
end three2eight_decoder_tb;


architecture Behavioral of three2eight_decoder_tb is

    component three2eight_decoder
    port(
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           e : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (7 downto 0)
           );
    end component;

    signal a : STD_LOGIC := '0';
    signal b : STD_LOGIC := '0';
    signal c : STD_LOGIC := '0';
    signal e : STD_LOGIC := '0';
    
    signal y : STD_LOGIC_VECTOR (7 downto 0);
begin
    uut : three2eight_decoder port map(
        a => a,
        b => b,
        c => c,
        e => e,
        y => y
    );
    
    stim_proc: process
    begin
        wait for 100 ns;
        a <= '1';
        b <= '1';
        c <= '0';
        e <= '1';
        wait for 100 ns;
        a <= '0';
        b <= '1';
        c <= '1';
        e <= '0';
        
    end process;

end Behavioral;
