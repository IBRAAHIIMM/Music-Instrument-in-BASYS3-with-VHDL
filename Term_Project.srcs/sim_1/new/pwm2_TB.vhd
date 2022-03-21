    
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity pwm_tb is
    generic (   n : integer := 10;
                eoc : integer := 99
                );
end pwm_tb;

architecture bench of pwm_tb is
    component  pwm is
        generic (   n : integer;
                    eoc : integer
                    );
        port (  clk, reset : in std_logic;
                duty : in std_logic_vector (n-1 downto 0);
                pwm_out : out std_logic
                );
    end component ;

    signal clk_tb : std_logic := '0';
    signal reset_tb : std_logic := '1';
    signal duty_tb : std_logic_vector (n-1 downto 0);
    signal pwm_out_tb : std_logic;
        
begin

uut: pwm
    generic map (   n => 10,
                    eoc => 99
                    )
    port map (  clk => clk_tb,
                reset => reset_tb,
                duty => duty_tb,
                pwm_out => pwm_out_tb
                );

clk_tb <= not clk_tb after 5ns; --half_period
reset_tb <= '0' after 10ns;
--duty_tb <= b"0000000000"; -- 0% duty cycle
duty_tb <= b"0111111111"; -- 50% duty cycle
--duty_tb <= b"1111111111"; -- 100% duty cycle

end bench;