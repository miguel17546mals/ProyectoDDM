
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
			  debug			: out std_logic_vector (3 downto 0);
           bombaMagna   : out std_logic;
           bombaPremium : out std_logic);
end central;

architecture Behavioral of central is
--Declaracion de las variables que manejaremos en el proceso
signal litros : integer range 0 to 999 := 0;
signal precio : integer range 0 to 999:= 0; 
signal contador :  integer range 0 to 999:= 0;
signal i : integer range 0 to 50000000;
signal t : integer ;
signal clk_state : std_logic;
signal cont : integer range 0 to 99;

--signal contador : integer;
TYPE estados is (S0,S1,S3,S4,S5,S6,S7,S8,S9);
Signal estado_pr,estado_sig : estados;

begin
 --litros <= 0;
 --precio <= 0;
 --contador <= 0;
 --cont <= 0;
 --Inicializacion de los estados
 process (clk,KeyPad) begin 
	if (KeyPad = "1101") then 
		estado_pr <= S0;
	elsif (clk'event and clk ='1') then
		estado_pr <= estado_sig;
	end if;
 end process;
 
 --Definicion de los estados
 process (KeyPad,estado_pr,contador,precio,litros,i,Magna,Premium) begin
	debug <= "0000";
	estado_sig <= S0;
	case(estado_pr) is 
		when S0 =>
			debug <= "0001";
			bombaMagna <= '0';
			bombaPremium <= '0';
			if (KeyPad = "0001" or KeyPad = "0010" or KeyPad = "0011" or KeyPad = "0100" -- N
			or KeyPad = "0101" or KeyPad = "0110" or KeyPad = "0111" or KeyPad = "1000" or KeyPad = "1001") then
				contador <= CONV_INTEGER(KeyPad);
				estado_sig <= S1;
			else 
				estado_sig <= S0;
			end if;
		
		when S1 =>
			debug <= "0010";
			bombaMagna <= '0';
			bombaPremium <= '0';
			
			if KeyPad = "1100" then
				debug <= "1100";
				estado_sig <= S1;
			elsif (KeyPad = "0000" or KeyPad = "0001" or KeyPad = "0010" or KeyPad = "0011" or KeyPad = "0100" -- N
			or KeyPad = "0101" or KeyPad = "0110" or KeyPad = "0111" or KeyPad = "1000" or KeyPad = "1001") then
				contador <= contador*10 + CONV_INTEGER(KeyPad);
				estado_sig <= S3;
			else 
				estado_sig <= S0;
			end if;

		when S3 =>
			debug <= "0100";
			bombaMagna <= '0';
			bombaPremium <= '0';
			if KeyPad = "1111" then -- *
				estado_sig <= S4;
			elsif KeyPad = "1110" then -- #
				estado_sig <= S5;
			elsif KeyPad = "1101" then -- D
				estado_sig <= S0;
			else 
				estado_sig <= S3;
			end if;	
		when S4 =>
			debug <= "0101";
			bombaMagna <= '0';
			bombaPremium <= '0';
			if KeyPad = "1010" then -- A
				estado_sig <= S6;
			elsif KeyPad = "1110" then -- B
				estado_sig <= S7;
			elsif KeyPad = "1101" then -- D
				estado_sig <= S0;
			else                       -- Otros
				estado_sig <= S4; 
			end if;		
		-- Caso Magna Pesos
		when S6 =>
			debug <= "0111";
			bombaMagna <= '0';
			bombaPremium <= '0';
			precio <= contador;
			litros <= integer (precio/8);
			while Magna = '0'loop
				--Pierde el tiempo 
			end loop;
			--Activa la Bomba
			if Magna = '1' then	
				bombaMagna <= '1';
				if cont = 0 then 
					bombaMagna<= '0';
				end if;
			end if;
		-- caso Premium Pesos
		when S7 =>
			debug <= "1000";
			bombaMagna <= '0';
			bombaPremium <= '0';
			precio <= contador;
			litros <= integer (precio/10);
			while Premium = '0'loop
				--Pierde el tiempo 
			end loop;
			--Activa la Bomba
			if Premium = '1' then
				bombaPremium <= '1';
				if cont = 0 then 
					bombaPremium<= '0';
				end if;
			end if;
		-- Caso Magna Litros
		when S5 =>
			debug <= "0110";
			bombaMagna <= '0';
			bombaPremium <= '0';
			if KeyPad = "1010" then -- A
				estado_sig <= S8;
			elsif KeyPad = "1110" then -- B
				estado_sig <= S9;
			elsif KeyPad = "1101" then -- D
				estado_sig <= S0;
			else                       -- Otros
				estado_sig <= S5; 
			end if;
		-- Caso Magna Litros
		when S8 =>
			debug <= "1001";
			bombaMagna <= '0';
			bombaPremium <= '0';
			precio <= contador * 8;
			litros <= contador;
			while Magna = '0'loop
				--Pierde el tiempo 
			end loop;
			--Activa la Bomba
			if Magna = '1' then
				bombaMagna<= '1';
				if cont = 0 then 
					bombaMagna<= '0';
				end if;
			end if;
		-- Caso Premium Litros
		when S9 =>
			debug <= "1010";
			bombaMagna <= '0';
			bombaPremium <= '0';
			precio <= contador * 10;
			litros <= contador;
			while Premium = '0'loop
				--Pierde el tiempo 
			end loop;
			--Activa la Bomba
			if Premium = '1' then
				bombaPremium<= '1';
				if cont = 0 then 
					bombaPremium<= '0';
				end if;
			end if;	
	end case;
 end process;

divisor1hz: process(clk,i,magna,premium) begin
		if clk'event and clk='1' then
			if i < 50000000  then 
				i <= i+1;
			else
				clk_state <= not clk_state;
				i <= 0;
			end if;
		end if;
end process;
 
contadorT: process (clk_state,cont,litros) begin 
		if rising_edge(clk_state)then
			if cont < litros then 
				cont <= cont + 1;
			else 
				cont <= 0;
				--litros <= 0;
			end if;	
		end if;	
end process ;

end Behavioral;