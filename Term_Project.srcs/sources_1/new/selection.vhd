library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity selection_of_notes is
  Port (inst_select : in STD_LOGIC;
        note_select : in STD_LOGIC_VECTOR(7 downto 0);
        out_select : out STD_LOGIC_VECTOR(7 downto 0));
end selection_of_notes;

architecture Behavioral of selection_of_notes is

begin
process(inst_select,note_select)
begin
    if inst_select = '1' then
        case note_select is
        when "10000000" => out_select <= "00011100";
        when "01000000" => out_select <= "00011011";
        when "00100000" => out_select <= "00100011";
        when "00010000" => out_select <= "00101011"; 
        when "00001000" => out_select <= "00110100";
        when "00000100" => out_select <= "00110011";
        when "00000010" => out_select <= "00111011";
        when others => out_select <= "11111111";
        end case;
    elsif (inst_select = '0') then
        case note_select is
        when "10000000" => out_select <= "00011010";
        when "01000000" => out_select <= "00100010";
        when "00100000" => out_select <= "00100001";
        when "00010000" => out_select <= "00101010"; 
        when "00001000" => out_select <= "00110010";
        when "00000100" => out_select <= "00110001";
        when "00000010" => out_select <= "00111010";
        when "00000001" => out_select <= "11110000";
        when others => out_select <= "11111111";
        end case;
    end if;
end process;
        
  


end Behavioral;
