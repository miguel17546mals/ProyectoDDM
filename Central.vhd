
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE ieee.numeric_std.ALL;

entity central is
			 --Entradas
    Port ( KeyPad  : in std_logic_vector(3 downto 0);
           clk 	 : in std_logic;
			  Magna   : in std_logic;
			  Premium : in std_logic;
			  --Salidas
           bombaMagna   : out std_logic;
           bombaPremium : out std_logic);
end central;

architecture Behavioral of central is
--Declaracion de las variables que manejaremos en el proceso
signal litros : integer;
signal precio : real; 
signal contador :  integer range 0 to 999;
--signal contador : integer;
TYPE estados is (S0,S1,S2,S3,S4,S5,S6,S7,S8,S9);
Signal estado_pr,estado_sig : estados;
begin
 litros <= 0;
 precio <= 0.0;
 contador <= 0;
 --Inicializacion de los estados
 process (clk,KeyPad) begin 
	if (KeyPad = "1101") then 
		estado_pr <= S0;
	elsif (clk'event and clk ='1') then
		estado_pr <= estado_sig;
	end if;
 end process;
 
 --Definicion de los estados
 process (KeyPad,estado_pr,contador) begin
	case(estado_pr) is 
		when S0 =>
			bombaMagna <= '0';
			bombaPremium <= '0';
			if (KeyPad = "0000" or KeyPad = "0001" or KeyPad = "0010" or KeyPad = "0011" or KeyPad = "0100"
			or KeyPad = "0101" or KeyPad = "0110" or KeyPad = "0111" or KeyPad = "1000" or KeyPad = "1001") then
				estado_sig <= S1;
				contador <= CONV_INTEGER(KeyPad);
			else 
				estado_sig <= S0;
			end if;
		when S1 =>
			bombaMagna <= '0';
			bombaPremium <= '0';
			if (KeyPad = "0000" or KeyPad = "0001" or KeyPad = "0010" or KeyPad = "0011" or KeyPad = "0100"
			or KeyPad = "0101" or KeyPad = "0110" or KeyPad = "0111" or KeyPad = "1000" or KeyPad = "1001") then
				estado_sig <= S2;
			else 
				estado_sig <= S0;
			end if;
		when S2 =>
			bombaMagna <= '0';
			bombaPremium <= '0';
			if (KeyPad = "0000" or KeyPad = "0001" or KeyPad = "0010" or KeyPad = "0011" or KeyPad = "0100"
			or KeyPad = "0101" or KeyPad = "0110" or KeyPad = "0111" or KeyPad = "1000" or KeyPad = "1001") then
				estado_sig <= S3;
			else 
				estado_sig <= S0;
			end if;			
	end case;
 end process;
 
 

end Behavioral;