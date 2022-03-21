library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sawtooth_generator is
    Port (freq : in STD_LOGIC_VECTOR(15 DOWNTO 0); 
          clock : in STD_LOGIC;  
          sawtooth_out : out STD_LOGIC_VECTOR(7 DOWNTO 0));
end sawtooth_generator;

architecture Behavioral of sawtooth_generator is

component clock_divider is 
    Port (frequen : in INTEGER;
          clock_in : in STD_LOGIC;
          clock_out : out STD_LOGIC);
end component;

type wave_data is array (0 to 99) of integer range 0 to 255; 

signal sawtooth : wave_data:= (175, 252, 255, 225, 232, 249, 238, 230, 241, 244, 233, 235, 244, 238, 233, 240, 242, 234, 235, 243, 239, 233, 240, 243, 234, 235, 244, 
239, 231, 241, 246, 230, 231, 258, 233, 122, 18, 1, 30, 36, 29, 38, 49, 48, 49, 59, 63, 62, 67, 74, 74, 76, 82, 85, 85, 89, 93, 94, 96, 100, 102, 103, 105, 109, 110, 111,
 114, 116, 117, 119, 122, 122, 123, 126, 128, 128, 129, 132, 133, 133, 135, 137, 137, 138, 141, 141, 141, 144, 145, 145, 146, 148, 149, 148, 151, 152, 151, 152, 155, 155);

constant f : integer := to_integer(unsigned(freq));  
signal clk_100x : STD_LOGIC; 
signal wave : integer range 0 to 255;
signal t : integer range 0 to 99 := 0;

begin

clock_100x : clock_divider port map ( frequen => f * 100 , clock_in => clock, clock_out => clk_100x); 
    process(clk_100x)
    begin
        if (rising_edge(clk_100x)) then
            t <= t + 1;
            wave <= sawtooth(t);
            if t = 99 then
                t <= 0;
            end if;
        end if;    
    end process;
sawtooth_out <= std_logic_vector(to_unsigned(wave,8));
end Behavioral;