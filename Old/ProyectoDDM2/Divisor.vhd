library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Divisor is
    Port ( CLK50Mhz : in  STD_LOGIC;
           CLK1khz   : out STD_LOGIC);
end Divisor;

architecture Behavioral of Divisor is
signal pulso: STD_LOGIC := '0';
signal contador: integer range 0 to 24999 := 0;

begin
process (CLK50Mhz)
begin
if (CLK50Mhz'event and CLK50Mhz = '1') then 
if (contador = 24999) then
                pulso <= NOT(pulso);
                contador <= 0;
            else
                contador <= contador+1;
            end if;
    end if;
  end process;
 CLK1khz <=  pulso;
end Behavioral;