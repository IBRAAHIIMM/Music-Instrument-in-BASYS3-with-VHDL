LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY keyboard_input IS
PORT(
clock        : IN  STD_LOGIC;                    
ps2_clock    : IN  STD_LOGIC;                    
ps2_data     : IN  STD_LOGIC;                  
ps2_code_new : OUT STD_LOGIC;                    
ps2_code     : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END keyboard_input;

ARCHITECTURE Behavioral OF keyboard_input IS

SIGNAL signal_holder        : STD_LOGIC_VECTOR(1 DOWNTO 0); 
SIGNAL debounced_ps2_clock  : STD_LOGIC;
SIGNAL debounced_ps2_data   : STD_LOGIC;
SIGNAL word                 : STD_LOGIC_VECTOR(10 DOWNTO 0);                
SIGNAL count                : INTEGER RANGE 0 TO 10000; 
SIGNAL error                :  std_logic;  

COMPONENT debounce IS
port( clock        : in std_logic;
      input_signal : in std_logic;
      result       : out std_logic); 
END COMPONENT;

BEGIN

PROCESS(clock)
BEGIN
IF(rising_edge(clock)) THEN  
  signal_holder(0) <= ps2_clock;      
  signal_holder(1) <= ps2_data;     
END IF;
END PROCESS;

debounce_clk: debounce  PORT MAP(clock => clock, input_signal => signal_holder(0), result => debounced_ps2_clock);
debounce_data: debounce PORT MAP(clock => clock, input_signal => signal_holder(1), result => debounced_ps2_data);

PROCESS(debounced_ps2_clock)
BEGIN
IF(falling_edge(debounced_ps2_clock) ) THEN    
  word <= debounced_ps2_data & word(10 DOWNTO 1);   
END IF;
END PROCESS;
error <= NOT (NOT word(0) AND word(10) AND (word(9) XOR word(8) XOR word(7) XOR
            word(6) XOR word(5) XOR word(4) XOR word(3) XOR word(2) XOR word(1)));

PROCESS(clock)
BEGIN
IF(rising_edge(clock)) THEN          
  
  IF( count = (100000000/18000)) THEN
    count <= 0;                         
  ELSIF(count /= (100000000/18000)) THEN
      count <= count + 1; 
  END IF;
  
  IF(count = (100000000/18000) AND error = '0') THEN  
    ps2_code_new <= '1';
    ps2_code <= word(8 DOWNTO 1);
  ELSE
    ps2_code_new <= '0';
  END IF;
  
END IF;
END PROCESS;
END Behavioral;