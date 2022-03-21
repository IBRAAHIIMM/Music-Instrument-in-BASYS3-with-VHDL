library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clock_divider is
    Port ( frequen : in INTEGER;
           clock_in : in STD_LOGIC; 
           clock_out : out STD_LOGIC); 
end clock_divider;
architecture Behavioral of clock_divider is
signal number : integer := 100000000 / frequen;
signal count : integer range 0 to 100000000 := 0;
signal temp_clockout : std_logic := '0';
begin
    process(clock_in)
    begin 
        if(rising_edge(clock_in)) then
            count <= count + 1; 
            if (count > number ) then
                count <= 0;
                temp_clockout <= not temp_clockout; 
            end if;
        end if;
    end process;
    clock_out <= temp_clockout;
    
end Behavioral;