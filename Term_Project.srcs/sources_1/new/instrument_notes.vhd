library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity note_inst is
    Port ( inst : in STD_LOGIC_VECTOR(1 downto 0);
           input_notes : in STD_LOGIC_VECTOR (6 downto 0);
           frequency_1 : out integer;
           frequency_2 : out integer;
           constant1 : out integer;
           constant2 : out integer);
end note_inst;

architecture Behavioral of note_inst is
begin

process(inst,input_notes)
begin
   if inst = "00" then 
    case input_notes is      

    when "1000000"  =>   
    frequency_1 <= 522;
    frequency_2 <= 1045;
    constant1 <= 15;
    constant2 <= 8;
    when "0100000" =>   
    frequency_1 <= 586;
    frequency_2 <= 1173;
    constant1 <= 15;
    constant2 <= 8;
    when "0010000" =>   
    frequency_1 <= 658;
    frequency_2 <= 1317;
    constant1 <= 11;
    constant2 <= 5;
    when "0001000" =>   
    frequency_1 <= 699;
    frequency_2 <= 1397;
    constant1 <= 12;
    constant2 <= 5;
    when "0000100" =>  
    frequency_1 <= 783;
    frequency_2 <= 1567;
    constant1 <= 9;
    constant2 <= 4;
    when "0000010" =>  
    frequency_1 <= 881;
    frequency_2 <= 1762;
    constant1 <= 14;
    constant2 <= 5;
    when "0000001" =>   
    frequency_1 <= 990;
    frequency_2 <= 1973;
    constant1 <= 8;
    constant2 <= 15;
--    when "00000001" => 
--    frequency_1 <= 1056;
--    frequency_2 <= 2042;
--    constant1 <= 5;
--    constant2 <= 7;
    when others =>
    frequency_1 <= 100;
    frequency_2 <= 100;
    constant1 <= 0;
    constant2 <= 0;
    end case;
  elsif inst = "01" then  
    case input_notes is 
    
    when "1000000" =>  
    frequency_1 <= 261;
    frequency_2 <= 522;
    constant1 <= 6;
    constant2 <= 14;
    when "0100000" =>                                
    frequency_1 <= 296;                                                    
    frequency_2 <= 587;                                                    
    constant1 <= 5;                                                      
    constant2 <= 8;                                                      
    when "0010000" =>                                
    frequency_1 <= 329;                                                    
    frequency_2 <= 657;                                                    
    constant1 <= 7;                                                      
    constant2 <= 10;                                                     
    when "0001000" =>  
    frequency_1 <= 350;
    frequency_2 <= 691;
    constant1 <= 10;
    constant2 <= 14;
    when "0000100" =>  
    frequency_1 <= 393;
    frequency_2 <= 783;
    constant1 <= 10;
    constant2 <= 10;
    when "0000010" =>   
    frequency_1 <= 441;
    frequency_2 <= 882;
    constant1 <= 10;
    constant2 <= 8;
    when "0000001" =>   
    frequency_1 <= 493;
    frequency_2 <= 98;
    constant1 <= 10;
    constant2 <= 6; 
--    when "00000001" => 
--    frequency_1 <= 562;
--    frequency_2 <= 1072;
--    constant1 <= 10;
--    constant2 <= 5;
    when others =>
    frequency_1 <= 100;
    frequency_2 <= 100;
    constant1 <= 0;
    constant2 <= 0;
    end case;
  elsif inst = "11" then  
    case input_notes is      
      when "1000000"  =>   
      frequency_1 <= 1026;
      frequency_2 <= 2093;
      constant1 <= 8;
      constant2 <= 15;
      when "0100000" =>   
      frequency_1 <= 1174;
      frequency_2 <= 2348;
      constant1 <= 9;
      constant2 <= 15;
      when "0010000" =>   
      frequency_1 <= 1318;
      frequency_2 <= 2635;
      constant1 <= 7;
      constant2 <= 11;
      when "0001000" =>   
      frequency_1 <= 1396;
      frequency_2 <= 2790;
      constant1 <= 6;
      constant2 <= 11;
      when "0000100" =>  
      frequency_1 <= 1567;
      frequency_2 <= 3135;
      constant1 <= 5;
      constant2 <= 10;
      when "0000010" =>  
      frequency_1 <= 1759;
      frequency_2 <= 3518;
      constant1 <= 6;
      constant2 <= 14;
      when "0000001" =>   
      frequency_1 <= 1977;
      frequency_2 <= 3952;
      constant1 <= 14;
      constant2 <= 8;
      when others =>
      frequency_1 <= 100;
      frequency_2 <= 100;
      constant1 <= 0;
      constant2 <= 0;
      end case;
 end if;
end process;

end Behavioral;