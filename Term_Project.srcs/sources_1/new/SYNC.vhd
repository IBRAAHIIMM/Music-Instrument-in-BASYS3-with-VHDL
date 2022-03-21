library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Synch is
      Port (clk,reset : in STD_LOGIC;
            HSYNC,VSYNC : out  STD_LOGIC;
            clk_refresh : out  STD_LOGIC;
            clk_change_sc : out STD_LOGIC;
            h_pos,v_pos : out integer);
end Synch;

architecture Behavioral of Synch is
signal clk_note: STD_LOGIC:= '0';
constant HD : integer := 1440;  --  1440   Horizontal Display (1440)
constant HFP : integer := 80;   --   80   Right border (front porch)
constant HSP : integer := 152;  --   152   Sync pulse (Retrace)
constant HBP : integer := 232;  --   232   Left boarder (back porch)

constant VD : integer := 900;   --  900   Vertical Display (480)
constant VFP : integer := 1;    --   1   Right border (front porch)
constant VSP : integer := 3;    --    3   Sync pulse (Retrace)
constant VBP : integer := 28;   --   28   Left boarder (back porch)

signal hPos : integer := 0;
signal vPos : integer := 0;
signal counter : integer := 0;
signal menu_clk : STD_LOGIC := '0';

begin

Horizontal_position_counter:process(clk, reset)
begin
	if(reset = '1')then
		hpos <= 0;
	elsif(clk'event and clk = '1')then
		if (hPos = (HD + HFP + HSP + HBP)) then
			hPos <= 0;
		else
			hPos <= hPos + 1;
		end if;
	end if;
end process;

Vertical_position_counter:process(clk,vPos, hPos)
begin
	if(reset = '1')then
		vPos <= 0;
	elsif(clk'event and clk = '1')then
		if(hPos = (HD + HFP + HSP + HBP))then
			if (vPos = (VD + VFP + VSP + VBP)) then
			    clk_note <= not clk_note;
				vPos <= 0;
			else
				vPos <= vPos + 1;
			end if;
		end if;
	end if;
end process;

Horizontal_Synchronisation:process(clk, reset, hPos)
begin
	if(reset = '1')then
		HSYNC <= '0';
	elsif(clk'event and clk = '1')then
		if((hPos <= (HD + HFP)) OR (hPos > HD + HFP + HSP))then
			HSYNC <= '1';
		else
			HSYNC <= '0';
		end if;
	end if;
end process;

Vertical_Synchronisation:process(clk, reset, vPos)
begin
	if(reset = '1')then
		VSYNC <= '0';
	elsif(clk'event and clk = '1')then
		if((vPos <= (VD + VFP)) OR (vPos > VD + VFP + VSP))then
			VSYNC <= '1';
		else
			VSYNC <= '0';
		end if;
	end if;
end process;
clk_refresh <= clk_note;
h_pos <= hPos;
v_pos <= vPos;
clk_change_sc <= menu_clk;
clock_ch: process(clk,counter)
begin
    if rising_edge(clk) then
        if counter /=8000000 then
            counter <= counter +1;
        else
            counter <= 0;
            menu_clk <= not menu_clk;
        end if;
    end if;
end process;           
end Behavioral;
