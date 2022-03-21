library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Sawtooth_adder is
    Port ( clk : in STD_LOGIC;
           note_freq1 : in INTEGER range 0 to 10000;
           note_freq2 : in INTEGER range 0 to 10000;
           x1 : in INTEGER range 0 to 100;
           x2 : in INTEGER range 0 to 100;
           output : out STD_LOGIC_VECTOR (7 downto 0));
end Sawtooth_adder;

architecture Behavioral of Sawtooth_adder is

component sawtooth_generator 
    Port (freq : in STD_LOGIC_VECTOR(15 DOWNTO 0); 
          clock : in STD_LOGIC;   
          sawtooth_out : out STD_LOGIC_VECTOR(7 DOWNTO 0));
end component;

constant frequency_first : std_logic_vector (15 downto 0) := std_logic_vector(to_unsigned(note_freq1,16)); 
constant frequency_second : std_logic_vector (15 downto 0) := std_logic_vector(to_unsigned(note_freq2,16));
signal sawtooth_vector1 : std_logic_vector (7 downto 0) := "00000000";
signal sawtooth_vector2 : std_logic_vector (7 downto 0) := "00000000";
signal wave1 : integer ;
signal wave2 : integer ;
signal outputvector : integer range 0 to 255 := 0;

begin
firstharm: sawtooth_generator port map ( freq => frequency_first, clock => clk, sawtooth_out => sawtooth_vector1);
secondharm: sawtooth_generator port map ( freq => frequency_second, clock => clk, sawtooth_out => sawtooth_vector2);
    wave1 <= to_integer(unsigned(sawtooth_vector1));
    wave2 <= to_integer(unsigned(sawtooth_vector2));
    outputvector <= ( (x1*wave1) + (x2*wave2) ) / (x1 + x2); 
    output <= std_logic_vector(to_unsigned(outputvector,8)); 
end Behavioral;
