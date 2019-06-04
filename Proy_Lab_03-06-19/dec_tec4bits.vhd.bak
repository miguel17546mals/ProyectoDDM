--------   -----------------
--fila 0   | 0 | 1 | 2 | 3 |
--------   -----------------
--fila 1   | 4 | 5 | 6 | 7 |
--------   -----------------
--fila 2   | 8 | 9 | A | B |
--------   -----------------
--fila 3   | C | D | E | F |
--------   -----------------
--Columnas 1000 0100 001 0001



library ieee;
use ieee.std_logic_1164.all;

entity Teclado4bits is
port (
fila	: in std_logic_vector(3 downto 0); --fila 
clk     : in std_logic := '1';
data	: out std_logic_vector (4 downto 0);
dato	: out std_logic := '0';
columna : out std_logic_vector (3 downto 0)
); 
end Teclado4bits;

architecture behavior of Teclado4bits is

type estado is (s0,s1,s2,s3);
signal contador : integer; 
signal pr_state,nx_state : estado;
signal key : std_logic_vector (3 DOWNTO 0);

begin 
process (clk) 
begin
	if rising_edge(clk) then
		pr_state <= nx_state;
	end if;
end process;

process (fila,key) begin
	dato <= '0';
	data <= "10000";
	case (pr_state) is
		when s0 =>
			columna <= "1000";
			case (fila) is
				when "1000" =>
					nx_state <= s0;
					dato <= '1';
					data <= "00100";  -- 1 -- 4
				when "0100" =>
					nx_state <= s0;
					dato <= '1';
					data <= "01000";  -- 4 -- 8 
				when "0010" => 					
					nx_state <= s0;
					dato <= '1';
					data <= "01100";  -- 7 -- C
				when "0001" =>
					nx_state <= s0;
					dato <= '1';
					data <= "00000";  -- *  -- 0
				when others =>
					nx_state <= s1;
			end case;
		when s1 =>
			columna <= "0100";
			case (fila) is
				when "1000" =>
					nx_state <= s1;
					dato <= '1';
					data <= "00011";  -- 2  -- cambio 3 
				when "0100" =>
					nx_state <= s1;
					dato <= '1';
					data <= "00111";  -- 5 -- 7
				when "0010" => 					
					nx_state <= s1;
					dato <= '1';
					data <= "01011";  -- 8 -- 11
				when "0001" =>
					nx_state <= s1;
					dato <= '1';
					data <= "01111";  --0 -- 15
				when others =>
					nx_state <= s2;
			end case;	
		when s2 =>
			columna <= "0010";
			case (fila) is
				when "1000" =>
					nx_state <= s2;
					dato <= '1';
					data <= "00010";  -- 3 --cambio a 2
				when "0100" =>
					nx_state <= s2;
					dato <= '1';
					data <= "00110";  -- 6 --
				when "0010" => 					
					nx_state <= s2;
					dato <= '1';
					data <= "01010";  -- 9
				when "0001" =>
					nx_state <= s2;
					dato <= '1';
					data <= "01110";  -- E
				when others =>
					nx_state <= s3;
			end case;	
		when s3 =>
			columna <= "0001";
			case (fila) is
				when "1000" =>
					nx_state <= s3;
					dato <= '1';
					data <= "00001";  -- A --cambio a 1
				when "0100" =>
					nx_state <= s3;
					dato <= '1';
					data <= "00101";  -- B --cambio a 5
				when "0010" => 					
					nx_state <= s3;
					dato <= '1';
					data <= "01001";  -- C --cambio a 9
				when "0001" =>
					nx_state <= s3;
					dato <= '1';
					data <= "01101";  --D -- cambio a 13
				when others =>
					nx_state <= s0;			
			end case;
	end case;
	
end process;
end ;