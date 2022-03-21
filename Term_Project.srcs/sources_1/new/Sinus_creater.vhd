library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity wave_producer is
    Port (freq : in STD_LOGIC_VECTOR(15 DOWNTO 0); 
          clock : in STD_LOGIC;   
          sin_data : out STD_LOGIC_VECTOR(7 DOWNTO 0));
end wave_producer;

architecture Behavioral of wave_producer is

    component clock_divider is 
    Port (frequen : in INTEGER;
          clock_in : in STD_LOGIC;
          clock_out : out STD_LOGIC);
end component;

type wave_data is array (0 to 99) of integer range 0 to 255; 

signal sinus_wave : wave_data := (0,0,1,2,4,6,8,11,15,21,25,29,34,41,45,52,58,65,73,80,87,95,103,111,119,127,135,143,151,159,167,174,181,189,196,
202,209,215,230,226,231,235,239,243,246,249,251,253,254,255,255,255,254,253,251,249,246,243,239,235,231,226,220,215,209,202,195,189,181,174,
167,159,151,143,135,127,119,111,103,95,87,80,73,65,58,52,45,39,34,29,25,21,15,11,8,6,4,2,1,0);


constant f : integer := to_integer(unsigned(freq));  
signal clk_100x : STD_LOGIC; 
signal sin_value : integer range 0 to 255;
signal t : integer range 0 to 99 := 0; 

begin

clock_100x : clock_divider port map ( frequen => f * 100 , clock_in => clock, clock_out => clk_100x); 
    process(clk_100x)
    begin
        if (rising_edge(clk_100x)) then  
            t <= t + 1;
            sin_value <= sinus_wave(t);
            if t = 99 then
                t <= 0;
            end if;
        end if;    
    end process;
sin_data <= std_logic_vector(to_unsigned(sin_value,8)); 

end Behavioral;