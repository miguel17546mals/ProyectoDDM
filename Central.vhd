
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity central is
			 --Entradas
    Port ( KeyPad  : in std_logic_vector(3 downto 0);
           clk 	 : in std_logic;
			  Magna   : in std_logic;
			  Premium : in std_logic;
			  --Salidas
           bombaMagna   : out std_logic;
           BombaPremium : out std_logic);
end central;

architecture Behavioral of central is
--Declaracion de las variables que manejaremos en el proceso
signal litros : integer;
signal precio : real; 
signal contador : integer;

begin
 litros <= 0;
 precio <= 0.0;
	 process is 
	  variable i : integer := 0;
	 begin
		 for i in 0 to 999 loop
			exit when i = litros;
			wait for 1 sec;
		 end loop;
	 end process;
	 
end Behavioral;