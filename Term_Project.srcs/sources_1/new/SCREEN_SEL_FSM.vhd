library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Screen_select_FSM is
    Port (m_enable, p_enable : out STD_LOGIC;
          change_screen: in STD_LOGIC;
          clk_menu : in STD_LOGIC;
          sel : out STD_LOGIC);
end Screen_select_FSM;

architecture Behavioral of Screen_select_FSM is
type selection is (main,play);
signal next_state,current: selection;
begin

process(clk_menu,change_screen)
begin
    if rising_edge(clk_menu) then
        next_state <= current;
        case current is
            when main =>
            m_enable <= '1';
            p_enable <= '0';
            sel <= '1';
                if change_screen = '0' then
                    current <= main;
                else
                    current <= play;
                end if;
            when play =>
            m_enable <= '0';
            p_enable <= '1';       
            sel      <= '0';  
                if change_screen = '0' then
                    current <= play;
                else
                    current <= main;
                end if;  
            end case;
    end if;
end process;

end Behavioral;
