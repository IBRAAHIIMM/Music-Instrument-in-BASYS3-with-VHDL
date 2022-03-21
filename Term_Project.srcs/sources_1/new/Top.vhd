
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top_music is
  Port (clk : in STD_LOGIC;
        inst : in STD_LOGIC_VECTOR(1 DOWNTO 0);
        input_notes : in STD_LOGIC_VECTOR (6 downto 0);
        sound_out : out STD_LOGIC_VECTOR (7 downto 0));
end Top_music;

architecture Behavioral of Top_music is
component note_inst 
    Port ( inst : in STD_LOGIC_VECTOR(1 DOWNTO 0);
           input_notes : in STD_LOGIC_VECTOR (6 downto 0);
           frequency_1 : out integer;
           frequency_2 : out integer;
           constant1 : out integer;
           constant2 : out integer);
end component;

component adder_sine 
    Port ( clk : in STD_LOGIC;
           note_freq1 : in INTEGER range 0 to 10000;
           note_freq2 : in INTEGER range 0 to 10000;
           x1 : in INTEGER range 0 to 100;
           x2 : in INTEGER range 0 to 100;
           output : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

component Sawtooth_adder 
  Port ( clk : in STD_LOGIC;
         note_freq1 : in INTEGER range 0 to 10000;
         note_freq2 : in INTEGER range 0 to 10000;
         x1 : in INTEGER range 0 to 100;
         x2 : in INTEGER range 0 to 100;
         output : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal frequency_1 : integer range 0 to 10000 := 1000;
signal frequency_2 : integer range 0 to 10000 := 1000;
signal constant1 : integer range 0 to 15 := 0;
signal constant2 : integer range 0 to 15 := 0;

signal sawtooth_o : STD_LOGIC_VECTOR (7 downto 0);
signal sinus_inst : STD_LOGIC_VECTOR (7 downto 0);


begin
audio_generate: adder_sine port map (clk => clk, note_freq1 => frequency_1, note_freq2 => frequency_2, x1 => constant1, x2 => constant2, output => sinus_inst);

inst_notes: note_inst Port Map(inst => inst,input_notes =>input_notes,frequency_1=> frequency_1,
                               frequency_2 => frequency_2, constant1 => constant1);
sawtooth_ad: Sawtooth_adder Port Map(clk => clk, note_freq1 => frequency_1,note_freq2=> frequency_2,x1 => constant1,x2=> constant2, output => sawtooth_o);

process(inst)
begin
 if inst = "11" then
    sound_out <= sawtooth_o;
 else
    sound_out <= sinus_inst;
 end if;
end process;
    
end Behavioral;
