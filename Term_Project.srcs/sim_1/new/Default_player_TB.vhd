library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity default_song_TB is
--  Port ( );
end default_song_TB;

architecture Behavioral of default_song_TB is
component default_note_player 
    Port ( clk : in STD_LOGIC;
     --      start : in STD_LOGIC;
           note_out : out STD_LOGIC_VECTOR(6 downto 0);
           enable : in STD_LOGIC);
      --    temp_c : out integer;
        --    cyclee : out integer;
     --   count : out integer);
  --     playyy : out stD_logic);
end component;

constant period : time :=10ns;
signal clk :   STD_LOGIC;
signal note_out:  STD_LOGIC_VECTOR(6 DOWNTO 0);
signal enable : STD_LOGIC;
signal start : STD_LOGIC;
signal  count,temp_count,cycle : integer;


begin

PLAYERR: default_note_player Port Map(clk => clk,note_out => note_out,--start => start, --count => count,
                                  enable => enable);--cyclee => cycle); 

clock_sti: process
begin
clk <= '1';
wait for period/2;
clk <= '0';
wait for period/2;
end process;

stimuli: process
begin
enable <= '1';
---start <= '1';
wait for 100ms;
--enable <= '0';
----start <= '1';
--wait for 100ns;
--enable <= '1';  
----start <= '0';
--wait for 1000ms;
--enable <= '1';  
----start <= '0';
--wait for 100ns;
end process;
end Behavioral;
