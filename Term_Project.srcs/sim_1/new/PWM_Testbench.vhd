LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwmx_tb is
GENERIC(
      sys_clk         : INTEGER := 50000000; --system clock frequency in Hz
      pwm_freq        : INTEGER := 100000;    --PWM switching frequency in Hz
      bits_resolution : INTEGER := 8;          --bits of resolution setting the duty cycle
      phases          : INTEGER := 1); 
end pwmx_tb;

architecture Behavioral of PWM_Testbench is

component pwmx is
 
 generic(  sys_clk         : INTEGER; --system clock frequency in Hz
          pwm_freq        : INTEGER;    --PWM switching frequency in Hz
          bits_resolution : INTEGER;          --bits of resolution setting the duty cycle
          phases : INTEGER );

 Port ( clk : in STD_LOGIC;
       reset_n : in STD_LOGIC;
       ena : in STD_LOGIC;
       duty      : IN  STD_LOGIC_VECTOR(bits_resolution-1 DOWNTO 0);
       pwm_out   : OUT STD_LOGIC_VECTOR(phases-1 DOWNTO 0);          --pwm outputs
       pwm_n_out : OUT STD_LOGIC_VECTOR(phases-1 DOWNTO 0)
       ); 


end component;

signal clk : std_logic := '0';
signal reset_n : std_logic := '1';
signal ena :   STD_LOGIC;
signal duty :  STD_LOGIC_VECTOR(bits_resolution-1 DOWNTO 0);
signal pwm_out   :  STD_LOGIC_VECTOR(phases-1 DOWNTO 0);          --pwm outputs
signal pwm_n_out :  STD_LOGIC_VECTOR(phases-1 DOWNTO 0);

BEGIN
pwm:  pwmx 
            
            generic map(sys_clk =>50000000, pwm_freq => 100000, bits_resolution=> 8,
                  phases=> 1)
            
            Port Map (clk => clk, reset_n => reset_n,ena => ena,duty => duty, pwm_out => pwm_out,
                        pwm_n_out => pwm_n_out);
                      
            
                  
              
clk <= not clk after 5ns; --half_period
reset_n <= '0' after 10ns;
--duty_tb <= b"0000000000"; -- 0% duty cycle
duty <= b"0111111111"; -- 50% duty cycle
--duty_tb <= b"1111111111"; -- 100% duty cycle

END Behavioral;





