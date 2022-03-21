library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity default_note_player is
    Port ( clk : in STD_LOGIC;
           note_out : out STD_LOGIC_VECTOR(6 downto 0);
           enable : in STD_LOGIC);
end default_note_player;

architecture Behavioral of default_note_player is
type note is array(0 to 47) of std_logic_vector(6 downto 0);
type duration is array(0 to 47) of integer;
signal bak_postaci : note := ("0000100","0001000","0000100","0000010","0000100","0001000","0010000","0100000","0001000","0010000","0100000","0010000",
                              "0000100","0001000","0000100","0000010","0000100","0001000","0010000","0100000","0001000","0010000","0100000","1000000",
                              "0000100","0001000","0000100","0000010","0000100","0001000","0010000","0100000","0001000","0010000","0100000","0010000",
                              "0000100","0001000","0000100","0000010","0000100","0001000","0010000","0100000","0001000","0010000","0100000","1000000");
signal postaci_counter : duration := (35000000,35000000,35000000,35000000,35000000,35000000,70000000,35000000,35000000,35000000,35000000,140000000,
                                      35000000,35000000,35000000,35000000,35000000,35000000,70000000,35000000,35000000,35000000,35000000,140000000,
                                      35000000,35000000,35000000,35000000,35000000,35000000,70000000,35000000,35000000,35000000,35000000,140000000,
                                      35000000,35000000,35000000,35000000,35000000,35000000,70000000,35000000,35000000,35000000,35000000,140000000);
                                      
                                                            
signal counter: integer:= 0;
signal index : integer := 0;
begin
play_process: process(clk,enable)
begin
  if rising_edge(clk) then
     if enable = '1' then 
        counter <= counter  + 1;
           if counter < postaci_counter(index) then
                 note_out <= bak_postaci(index);
           elsif (counter >= postaci_counter(index)) and (counter < postaci_counter(index)+5000000) then
                note_out <= "0000000";
           elsif counter =  postaci_counter(index)+9000000 then
                note_out <= "0000000";
                if index /= 47 then
                    index <= index +1;
                    counter <= 0;
                else
                    counter <= 0;
                    index <= 0;
                end if;
           end if;
       else 
          index <= 0;
          counter <= 0;
       end if;
  end if;
end process;

end Behavioral;