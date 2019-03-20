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
		
component snbits is 		
	generic (n: positive:= 4;
	tam: positive:= 4);
	port (a: in std_logic_vector ( tam-1 downto 0);
		b: in std_logic_vector ( tam-1 downto 0);
		cen: in std_logic;
		s: out std_logic_vector ( tam-1 downto 0);
		csal: out std_logic );
end component;	
			
-- senyales
signal a,b,s : std_logic_vector (3 downto 0);
signal cen,csal  : std_logic;

begin
-- instanciacion y frentes de onda
--A <= "UUUU", "0000" after 200 ns, "UUUU" after 400 ns, "0000" after 600 ns, "UUUU" after 800 ns, "0000" after 1000 ns, "UUUU" after 1200 ns;
--B <= "UUUU", "0000" after 200 ns, "UUUU" after 400 ns, "0100" after 600 ns, "UUUU" after 800 ns, "0100" after 1000 ns, "UUUU" after 1200 ns;
--cen <= 'U', '0' after 200 ns, 'U' after 400 ns, '0' after 600 ns, 'U' after 800 ns, '1' after 1000 ns, 'U' after 1200 ns;

sum4: snbits port map(a=>a, b=>b, cen=>cen, s=>s, csal=>csal);
a <= "UUUU", "0000" after 200 ns, "UUUU" after 400 ns, "0000" after 600 ns, "UUUU" after 800 ns, "0000" after 1000 ns, "UUUU" after 1200 ns;
b <= "UUUU", "0000" after 200 ns, "UUUU" after 400 ns, "0100" after 600 ns, "UUUU" after 800 ns, "0100" after 1000 ns, "UUUU" after 1200 ns;
cen <= 'U', '0' after 200 ns, 'U' after 400 ns, '0' after 600 ns, 'U' after 800 ns, '1' after 1000 ns, 'U' after 1200 ns;

end prueba;