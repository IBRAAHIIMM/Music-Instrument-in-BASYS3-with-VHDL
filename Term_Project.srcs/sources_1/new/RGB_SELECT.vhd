library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RGB_select is
    Port (selectt: in STD_LOGIC;
          M_R,M_G,M_B : in STD_LOGIC_VECTOR(3 downto 0);
          P_R,P_G,P_B : in STD_LOGIC_VECTOR(3 downto 0);
          O_R,O_G,O_B : out STD_LOGIC_VECTOR(3 downto 0));
end RGB_select;

architecture Behavioral of RGB_select is

begin
process(selectt)
begin
    if selectt = '1' then
        O_R <= M_R;
        O_G <= M_G;
        O_B <= M_B;    
    else 
        O_R <= P_R;
        O_G <= P_G;
        O_B <= P_B;
    end if;
end process;
end Behavioral;
