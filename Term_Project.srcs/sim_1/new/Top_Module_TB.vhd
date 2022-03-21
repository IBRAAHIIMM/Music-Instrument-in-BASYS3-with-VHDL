library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Top_Module_TB is
end Top_Module_TB;

architecture Behavioral of Top_Module_TB is
component Top_music 
  Port (clk : in STD_LOGIC;
        inst : in STD_LOGIC;
        input_notes : in STD_LOGIC_VECTOR (7 downto 0);
        sound_out : out STD_LOGIC_VECTOR (7 downto 0));
end component;

constant clk_period : time := 10ns;
signal clk : STD_LOGIC;
signal inst : STD_LOGIC;
signal input_notes : STD_LOGIC_VECTOR(7 downto 0); 
signal sound_out : STD_LOGIC_VECTOR(7 downto 0); 
begin

tb: Top_music Port Map( clk => clk, inst => inst, input_notes => input_notes,sound_out => sound_out);

clock_stimulus: process
begin
clk <= '1';
wait for clk_period/2;
clk <= '0';
wait for clk_period/2;
end process;

KS_stimulus: process
begin
inst <= '1';
input_notes <= "10000000";
wait for 50ms;
inst <= '0';
input_notes <= "01000000";
wait for 50ms;
inst <= '1';
input_notes <= "00100000";
wait for 50ms;
inst <= '0';
input_notes <= "00001000";
wait for 50ms;
inst <= '0';
input_notes <= "00000100";
wait for 50ms;
inst <= '1';
input_notes <= "00000010";
wait for 50ms;
end process;

end Behavioral;