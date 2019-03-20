--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use work.cte_tipos_bcd_pkg.all;
use work.retardos_bcd_pkg.all;

entity compl9 is 
port ( X: in st_bcd;
	Z: out st_bcd);
end compl9;

architecture comportamiento of compl9 is
begin

	Z(0) <= not(X(0));
	Z(1) <= X(1);
	Z(2) <= X(1) xor X(2);
	Z(3) <= (X(1) and X(3)) or (X(2) and X(3)) or (not(X(1)) and not(X(2)) and not(X(3)));
	

end comportamiento;

