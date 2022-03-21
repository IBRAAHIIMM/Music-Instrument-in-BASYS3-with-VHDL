library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity play_notes is
  Port (clock   : IN  STD_LOGIC; 
        store   : IN  STD_LOGIC;                    
        play    : IN  STD_LOGIC;
        note_code : in STD_LOGIC_VECTOR(7 downto 0);
        audio_data : out STD_LOGIC_VECTOR (7 downto 0));            
end play_notes;

architecture Behavioral of play_notes is

component instrument_notes 
    Port ( key_code : in STD_LOGIC_VECTOR (7 downto 0);
           clock : in STD_LOGIC;
           audio : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal note_code_temp : STD_LOGIC_VECTOR(7 downto 0) := "11110000" ;
signal i : INTEGER RANGE 0 TO 14; -- integer for looping the stored_keycode
signal stored_keycode: STD_LOGIC_VECTOR(119 downto 0);
signal counter_1sec : INTEGER RANGE 0 TO 50000000;

begin

  process( clock )
  begin
    if( rising_edge(clock) ) then
    counter_1sec <= counter_1sec + 1 ;
        if ( counter_1sec = 30000000 ) then --- playing the note every 1 second
            if ( store = '0' AND play = '0' ) then 
                 note_code_temp <= note_code;
            elsif ( store = '1' AND play = '0' ) then
                 note_code_temp <= note_code;
                 stored_keycode(119 downto 112) <= note_code;
                 stored_keycode(111 downto 0) <= stored_keycode(119 downto 8);
                 i <= 0 ;
            elsif ( store = '0' AND play = '1' ) then
                 i <= i + 1 ;
                 note_code_temp <= stored_keycode( (8*i)+7 downto (8*i)  );
            end if;
        end if;
    end if;
  end process;
  
instrument_audio : instrument_notes port map (key_code => note_code_temp, clock => clock, audio => audio_data);

end Behavioral;
