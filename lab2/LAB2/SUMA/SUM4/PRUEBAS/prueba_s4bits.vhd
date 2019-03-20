--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;		
use ieee.std_logic_1164.all;		
use work.all;		
		
entity prueba_S4bits is 		

end prueba_S4bits;		

architecture comp of prueba_S4bits is
signal A, B : std_logic_vector(3 downto 0);
signal cen: std_logic;
begin


prueba_s: process

begin
a <= "UUUU", "1111" after 200ns;
b <= "UUUU", "0000" after 200ns;
cen <= 'U', '0' after 200ns;
wait for 200 ns;
a <= "1111";
b <= "0000";
cen <= '1';
wait for 200 ns;
wait;
end process;
end comp;
