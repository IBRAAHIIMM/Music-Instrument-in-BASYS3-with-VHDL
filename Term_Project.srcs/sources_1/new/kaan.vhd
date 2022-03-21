library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_STD.ALL;

entity four_bit_subtractor is

    Port ( num1 : in STD_LOGIC_VECTOR (3 downto 0);
           num2 : in STD_LOGIC_VECTOR (3 downto 0);
           c_inn : in STD_LOGIC;
           overF : out STD_LOGIC;
           r00 : out STD_LOGIC;
           r11 : out STD_LOGIC;
           r22 : out STD_LOGIC;
           r33 : out STD_LOGIC;
           c00 : inout STD_LOGIC;
           c11 : inout STD_LOGIC;
           c22 : inout STD_LOGIC;
           c33 : inout STD_LOGIC
           --c_outt : inout STD_LOGIC
           );
end four_bit_subtractor;

architecture Behavioral of four_bit_subtractor is
signal AA : signed(3 downto 0) := signed(num1);
signal BB : signed(3 downto 0) := signed(num2);
signal r  : signed(3 downto 0);
signal check  : signed(3 downto 0) := "0000";

begin
process(AA,BB,r,check)
begin
r <= AA-BB;
if AA >= check and BB <= check then
     if r <= check then
        overF <= '1';
     else
        overF <= '0';
     end if;
elsif (AA <= check and BB >= check) then
        if r >= check then 
            overF <= '1';
        else
            overF <= '0';
        end if;
       
end if;
r00 <= r(0);
r11 <= r(1);
r22 <= r(2);
r33 <= r(3);
end process;
end Behavioral;