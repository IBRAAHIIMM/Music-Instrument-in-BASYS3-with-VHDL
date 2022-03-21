library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VGA_TOP is
    Port (clk : in STD_LOGIC;
          change_screen: in STD_LOGIC;
          play_or_listen : in STD_LOGIC;
          notes : in STD_LOGIC_VECTOR(6 DOWNTO 0);
          reset : in STD_LOGIC;
          v_sync : out STD_LOGIC;
          h_sync : out STD_LOGIC;
          R : out STD_LOGIC_VECTOR(3 DOWNTO 0);
          G : out STD_LOGIC_VECTOR(3 DOWNTO 0);
          B : out STD_LOGIC_VECTOR(3 DOWNTO 0);
          note_out : out STD_LOGIC_VECTOR(6 DOWNTO 0));        
end VGA_TOP;

architecture Behavioral of VGA_TOP is
component Main_Menu_VGA  
Port (main_enable : in std_logic;
    clk : in STD_LOGIC; 
    rst: in STD_LOGIC;
    h_Poss,v_Poss : in integer;
    vga_red,vga_blue,vga_green : out STD_LOGIC_VECTOR(3 DOWNTO 0)); 
end component; 

component VGA_FSM 
    Port (clk_note : in STD_LOGIC;
          clk : in STD_LOGIC;
          play_enable: in STD_LOGIC;
          note : in STD_LOGIC_VECTOR(6 downto 0);
          vga_red,vga_blue,vga_green : out STD_LOGIC_VECTOR(3 DOWNTO 0);
          vPos,hPos : in integer;
          rst : in STD_LOGIC);
end component;

component RGB_select 
    Port (selectt: in STD_LOGIC;
          M_R,M_G,M_B : in STD_LOGIC_VECTOR(3 downto 0);
          P_R,P_G,P_B : in STD_LOGIC_VECTOR(3 downto 0);
          O_R,O_G,O_B : out STD_LOGIC_VECTOR(3 downto 0));
--          play_e,main_e : out STD_LOGIC);
end component;

component Synch 
    Port (clk,reset : in STD_LOGIC;
          HSYNC,VSYNC : out  STD_LOGIC;
          clk_refresh : out  STD_LOGIC;
          clk_change_sc : out STD_LOGIC;
          h_pos,v_pos : out integer);
end component;
component Screen_select_FSM 
    Port (m_enable, p_enable : out STD_LOGIC;
          change_screen: in STD_LOGIC;
          clk_menu : in STD_LOGIC;
          sel : out STD_LOGIC);
end component;
component default_note_player 
    Port ( clk : in STD_LOGIC;
     --      start : in STD_LOGIC;
           note_out : out STD_LOGIC_VECTOR(6 downto 0);
           enable : in STD_LOGIC);
end component;

signal v_pos,h_pos : integer;
signal M_R,M_G,M_B : std_logic_vector(3 downto 0);
signal P_R,P_G,P_B : STD_LOGIC_VECTOR(3 downto 0);
signal P_R1,P_G1,P_B1: STD_LOGIC_VECTOR(3 downto 0);
signal m_enable : STD_LOGIC;
signal p_enable : STD_LOGIC;
signal play_clk : STD_LOGIC := '0';
signal sel : STD_LOGIC;
signal clk_menu : STD_LOGIC;
signal notes_default : STD_LOGIC_VECTOR(6 downto 0);
signal notes_of_play : STD_LOGIC_VECTOR(6 downto 0);


begin

main_menu: Main_Menu_VGA Port Map(main_enable => m_enable,clk  => clk, rst => reset,h_Poss => h_pos,v_Poss => v_pos,
                            vga_red => M_R,vga_blue => M_B,vga_green => M_G);

play_menu:VGA_FSM Port Map(clk_note => play_clk,clk => clk, note => notes_of_play,vga_red => P_R, vga_green => P_G,vga_blue => P_B,
                                        vPos => v_pos, hPos => h_pos,rst => reset,play_enable =>p_enable);

RGB_sel: RGB_select Port Map(selectt => sel, M_R => M_R ,M_G => M_G,M_B => M_B,P_R => P_R,
                            P_G => P_G,P_B => P_B , O_R => R,O_G => G,O_B => B);

Synchronisation: Synch Port Map( clk => clk ,reset =>reset ,HSYNC => h_sync ,VSYNC => v_sync,clk_refresh => play_clk,
                                   h_pos => h_pos,v_pos => v_pos,clk_change_sc => clk_menu);                            

screen_sel: Screen_select_FSM  Port Map(clk_menu => clk_menu,change_screen => change_screen,sel => sel,
                                        m_enable => m_enable, p_enable => p_enable);   
                                        
def_player: default_note_player Port Map(clk => clk,note_out => notes_default ,enable => play_or_listen); 

play_menu_mux: process(clk,play_or_listen)
begin
if rising_edge(clk) then 
    if play_or_listen = '1' then
        notes_of_play <= notes_default;
        note_out <= notes_default;
    else
        notes_of_play <= notes;
        note_out <= notes;
    end if;
end if;
end process;
end Behavioral;
  