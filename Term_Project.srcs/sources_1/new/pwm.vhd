library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity pwm is
    generic (   n : integer := 10; -- 1024 bit resolution
                eoc : integer := 99
                );
    port (  clk, reset : in std_logic;
            duty : in std_logic_vector (n-1 downto 0);
            pwm_out : out std_logic
            );
end pwm;

architecture behavioral of pwm is
    signal comptador : integer range 0 to 2**n-1;
    signal comptador_clk_div : integer range 0 to eoc;
    signal clk_div : std_logic ;

begin
proc_clk_div : process (clk) begin
    if rising_edge(clk) then
        clk_div <= '0';
        if reset = '1' then
            comptador_clk_div <= 0;
        elsif comptador_clk_div = eoc then
            comptador_clk_div <= 0;
            clk_div <= '1';
        else comptador_clk_div <= comptador_clk_div + 1;
        end if;
    end if;
end process;

proc_comptador : process (clk_div) is begin
    if rising_edge(clk_div) then
        if reset = '1' then
            comptador <= 0;
        elsif comptador = 2**n-2 then
            comptador <= 0;
        else
            comptador <= comptador + 1;
        end if;
    end if;
end process;

pwm_out <= '1' when comptador < to_integer(unsigned(duty)) else '0';

end behavioral;
