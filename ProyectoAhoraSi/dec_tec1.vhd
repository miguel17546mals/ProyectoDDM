--
--------   -----------------
--fila 0   | 1 | 2 | 3 | A |
--------   -----------------
--fila 1   | 4 | 5 | 6 | B |
--------   -----------------
--fila 2   | 7 | 8 | 9 | C |
--------   -----------------
--fila 3   | * | 0 | # | D |
--------   -----------------
--Columnas   3   2   1   0

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity dec_tec1 is
    Port ( columnas : in std_logic_vector(3 downto 0);
           clk 	   : in std_logic;
		   filas : out std_logic_vector(3 downto 0);
           dato  : out std_logic_vector(3 downto 0);
           pulso : out std_logic);
end dec_tec1;

architecture Behavioral of dec_tec1 is

signal cont: std_logic_vector(1 downto 0); 
signal dec_filas: std_logic_vector(3 downto 0);

begin
--Proceso para el contador cont.
Process(clk)
begin
	if (clk'event and clk='1') then
		cont<=cont+1;
	end if;
end process;

--proceso para mostrar el dato por el puerto
process(clk)
begin
	if(clk'event and clk='0')then
		if cont = "00" then
			filas <= "0001";
			dec_filas <= "0001";
		elsif cont = "01" then 
			filas <= "0010";
			dec_filas <= "0010";
		elsif cont = "10" then
			filas <= "0100" ;
			dec_filas <= "0100";
		elsif cont = "11" then 
			filas <= "1000";
			dec_filas <= "1000";
		else
			filas <= "0000";
			dec_filas <= "0000";			
		end if;
	end if;
end process;

process(columnas) begin
	if columnas = "0001" or columnas = "0010" or columnas = "0100" or columnas = "1000" then
		pulso <= '1';
	else 
		pulso <= '0';
	end if;
end process;

dato <=  "0001" when dec_filas="0001" and columnas="1000" else 		--1
         "0010" when dec_filas="0001" and columnas="0100" else 		--2
         "0011" when dec_filas="0001" and columnas="0010" else		--3
         "1010" when dec_filas="0001" and columnas="0001" else		--A
         "0100" when dec_filas="0010" and columnas="1000" else		--4
         "0101" when dec_filas="0010" and columnas="0100" else		--5
         "0110" when dec_filas="0010" and columnas="0010" else		--6
         "1011" when dec_filas="0010" and columnas="0001" else		--B
         "0111" when dec_filas="0100" and columnas="1000" else		--7
         "1000" when dec_filas="0100" and columnas="0100" else		--8
         "1001" when dec_filas="0100" and columnas="0010" else		--9
         "1100" when dec_filas="0100" and columnas="0001" else		--C
         "1111" when dec_filas="1000" and columnas="1000" else		--* -- F en Hex
         "0000" when dec_filas="1000" and columnas="0100" else		--0
         "1110" when dec_filas="1000" and columnas="0010" else		--# -- E en Hex
         "1101" when dec_filas="1000" and columnas="0001" else		--D
	    "0000";
end Behavioral;
