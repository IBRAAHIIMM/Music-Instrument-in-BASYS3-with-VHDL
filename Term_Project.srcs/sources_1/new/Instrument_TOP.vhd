
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Instrument_TOP is
    Port (clk : in STD_LOGIC;--
          change_screen: in STD_LOGIC;--
          play_or_listen : in STD_LOGIC;
          imitate_the_screen : in STD_LOGIC;--
           instrument: in STD_LOGIC_VECTOR(1 DOWNTO 0);
           inp_notes : in STD_LOGIC_VECTOR(6 DOWNTO 0);
           reset : in STD_LOGIC;--
           vsync : out STD_LOGIC;--
           hsync : out STD_LOGIC;--
           R : out STD_LOGIC_VECTOR(3 DOWNTO 0);--
           G : out STD_LOGIC_VECTOR(3 DOWNTO 0);--
           B : out STD_LOGIC_VECTOR(3 DOWNTO 0);--
           out_sound : out STD_LOGIC_VECTOR (7 downto 0));   
end Instrument_TOP;

architecture Behavioral of Instrument_TOP is
component VGA_TOP 
    Port (clk : in STD_LOGIC;
          change_screen: in STD_LOGIC;
          play_or_listen : in STD_LOGIC;
     --     start_listen : in STD_LOGIC;
          notes : in STD_LOGIC_VECTOR(6 DOWNTO 0);
          reset : in STD_LOGIC;
          v_sync : out STD_LOGIC;
          h_sync : out STD_LOGIC;
          R : out STD_LOGIC_VECTOR(3 DOWNTO 0);
          G : out STD_LOGIC_VECTOR(3 DOWNTO 0);
          B : out STD_LOGIC_VECTOR(3 DOWNTO 0);
          note_out : out STD_LOGIC_VECTOR (6 downto 0));        
end component;

component Top_music 
  Port (clk : in STD_LOGIC;
        inst : in STD_LOGIC_VECTOR(1 DOWNTO 0); -----------
        input_notes : in STD_LOGIC_VECTOR (6 downto 0);--
        sound_out : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal note_playing : STD_LOGIC_VECTOR (6 downto 0);
signal play_note : STD_LOGIC_VECTOR (6 downto 0);
begin

vga_t: VGA_TOP Port Map(clk => clk, change_screen => change_screen,play_or_listen =>play_or_listen, notes => inp_notes,
                        reset => reset,v_sync => vsync, h_sync => hsync, R => R,G=> G,B => B, note_out => note_playing);
  
music: Top_music Port Map(clk => clk, inst => instrument,input_notes => play_note,sound_out => out_sound);

process(imitate_the_screen)
begin
    if imitate_the_screen = '0' then
        play_note <= note_playing;
    elsif imitate_the_screen = '1' then
        play_note <= inp_notes;
    end if;
end process;                       
end Behavioral;
