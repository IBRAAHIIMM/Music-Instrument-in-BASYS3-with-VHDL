library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity topmodule is
    Port (clk : in STD_LOGIC;
          ps2_clk : in STD_LOGIC;
          ps2_data : in STD_LOGIC;
          keyboard_code : inout STD_LOGIC_VECTOR (7 downto 0);
          store_in   : in  STD_LOGIC;                    
          play_in    : in  STD_LOGIC;
          store_out : out  STD_LOGIC;
          play_out : out  STD_LOGIC;
          audio_data_top : out STD_LOGIC_VECTOR (7 downto 0));           
end topmodule;

architecture Behavioral of topmodule is

component keyboard_input 
  Port (clock        : IN  STD_LOGIC;                    
        ps2_clock    : IN  STD_LOGIC;                    
        ps2_data     : IN  STD_LOGIC;                    
        ps2_code_new : OUT STD_LOGIC;       
        ps2_code     : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) ); 
end component;

component play_notes 
  Port (clock      : IN  STD_LOGIC; 
        store      : IN  STD_LOGIC;                    
        play       : IN  STD_LOGIC;
        note_code  : in STD_LOGIC_VECTOR(7 downto 0);
        audio_data : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal new_code_available : std_logic := '0'; -- not used anyhwere but i need to declare, because it is defined in ps2_keyboard code

begin
  
  play_out <= play_in; -- led outputs
  store_out <= store_in;
  keyboard : keyboard_input port map (clock => clk, ps2_clock => ps2_clk, ps2_data => ps2_data, ps2_code_new => new_code_available, ps2_code => keyboard_code);
  playing_with_1sec : play_notes port map (clock => clk, store => store_in, play => play_in, note_code => keyboard_code, audio_data => audio_data_top);
  
end Behavioral;