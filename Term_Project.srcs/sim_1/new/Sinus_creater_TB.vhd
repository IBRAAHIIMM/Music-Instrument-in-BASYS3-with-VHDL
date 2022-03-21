library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sinus_creater_TB is
--  Port ( );
end Sinus_creater_TB;

architecture Behavioral of Sinus_creater_TB is
component wave_producer 
    Port (freq : in STD_LOGIC_VECTOR(15 DOWNTO 0); --- freq of harmonic
          clock : in STD_LOGIC;   ---100MHz clock of Basys3
          sin_data : out STD_LOGIC_VECTOR(7 DOWNTO 0));
end component;

signal freq : STD_LOGIC_VECTOR(15 DOWNTO 0) := "1000000000000000"; --- freq of harmonic
signal clock :  STD_LOGIC := '1';   ---100MHz clock of Basys3
signal sin_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
constant clk_period : time := 10ns;

begin
sinus_c: wave_producer Port Map(freq => freq, clock => clock , sin_data => sin_data);

clock_stimulus: process
begin
clock <= '1';
wait for clk_period/2;
clock <= '0';
wait for clk_period/2;
end process;


stimulus: process
begin
freq <= "0000100000010000";
wait for 50ms;
freq <= "0000101110010000";
wait for 50ms;
freq <= "1000101110010000";
wait for 50ms;
freq <= "0110101110010000";
wait for 50ms;
end process;
end Behavioral;
