--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;		
use ieee.std_logic_1164.all;		
use work.all;		
		
entity prueba_S4bits is 		

end prueba_S4bits;		
		
architecture prueba of prueba_S4bits is		
		
component S4bits is 		
generic(ret_xor: time := 15 ns; ret_and: time := 10 ns; ret_or: time := 10 ns; tam: positive := 4);
port (A: in std_logic_vector (tam-1 downto 0);
	B: in std_logic_vector (tam-1 downto 0);
	cen: in	std_logic;
	SUM: out std_logic_vector (tam-1 downto 0);
	csal: out std_logic);
end component;	
			
-- senyales
signal a,b,sum : std_logic_vector (3 downto 0);
signal cen,csal  : std_logic;

begin
-- instanciacion y frentes de onda
--A <= "UUUU", "0000" after 200 ns, "UUUU" after 400 ns, "0000" after 600 ns, "UUUU" after 800 ns, "0000" after 1000 ns, "UUUU" after 1200 ns;
--B <= "UUUU", "0000" after 200 ns, "UUUU" after 400 ns, "0100" after 600 ns, "UUUU" after 800 ns, "0100" after 1000 ns, "UUUU" after 1200 ns;
--cen <= 'U', '0' after 200 ns, 'U' after 400 ns, '0' after 600 ns, 'U' after 800 ns, '1' after 1000 ns, 'U' after 1200 ns;

sum4: S4bits port map(a=>A, b=>B, cen=>cen, SUM=>sum, csal=>csal);
estimulos: process
begin
	cen <= '0'; 
	a <= "0000";
	b <= "0000";
	wait for 200 ns;
	b <= "0100";
	wait for 200 ns;
	wait;
end process;

end prueba;