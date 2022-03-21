library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder_sine is
    Port ( clk : in STD_LOGIC;
           note_freq1 : in INTEGER range 0 to 10000;
           note_freq2 : in INTEGER range 0 to 10000;
           x1 : in INTEGER range 0 to 100;
           x2 : in INTEGER range 0 to 100;
           output : out STD_LOGIC_VECTOR (7 downto 0));
end adder_sine;

architecture Behavioral of adder_sine is

component wave_producer 
    Port (freq : in STD_LOGIC_VECTOR(15 DOWNTO 0);
          clock : in STD_LOGIC;
          sin_data : out STD_LOGIC_VECTOR(7 DOWNTO 0));
end component;

constant frequency_first : std_logic_vector (15 downto 0) := std_logic_vector(to_unsigned(note_freq1,16)); 
constant frequency_second : std_logic_vector (15 downto 0) := std_logic_vector(to_unsigned(note_freq2,16));
signal wave_vector_1 : std_logic_vector (7 downto 0) := "00000000";
signal wave_vector_2 : std_logic_vector (7 downto 0) := "00000000";
signal sinw_value1 : integer ;
signal sinw_value2 : integer ;
signal wave_out : integer range 0 to 255 := 0;

begin
    firstharmonic : wave_producer port map ( freq => frequency_first, clock => clk, sin_data => wave_vector_1);
    secondharmonic : wave_producer port map ( freq => frequency_second, clock => clk, sin_data => wave_vector_2);
    sinw_value1 <= to_integer(unsigned(wave_vector_1)); 
    sinw_value2 <= to_integer(unsigned(wave_vector_2));
    wave_out <= ( (x1*sinw_value1) + (x2*sinw_value2) ) / (x1 + x2); 
    output <= std_logic_vector(to_unsigned(wave_out,8)); 
end Behavioral;
