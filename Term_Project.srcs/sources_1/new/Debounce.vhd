LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity debounce is 
    port( clock : in std_logic;
          input_signal : in std_logic;
          result : out std_logic);
end debounce;

architecture Behavioral of debounce is 

    signal signal_holder : std_logic_vector(1 downto 0);--1 dto 0
    signal change_checker : std_logic;
    signal counter : std_logic_vector(9 downto 0) := "0000000000"; -- it is different from the original code because our clock is 100MHz instead of 50MHz

begin
    change_checker <= signal_holder(0) xor signal_holder(1);
    process(clock)
begin
        if(rising_edge(clock)) then 
            signal_holder(0) <= input_signal;
            signal_holder(1) <= signal_holder(0);
            if (change_checker = '1') then
                counter <= "0000000000";
            elsif (counter(9) = '0') then
                counter <= counter + 1;
            else 
                result <= signal_holder(1);
            end if;
        end if;
    end process;
end Behavioral;