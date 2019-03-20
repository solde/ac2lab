--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use work.cte_tipos_bcd_pkg.all;
use work.retardos_bcd_pkg.all;

entity mayor9 is 
port (X: in st_bcd_mas_1;
	S: out st_bcd;
	csal: out std_logic);
end mayor9;

architecture comportamiento of mayor9 is
-- senyales
	signal csal_buf : std_logic;
begin
	csal_buf <= (X(4) or (X(3) and X(1)) or (X(3) and X(2))) after retmayor9;

	S(0) <= '0' after retmayor9;
	S(1) <= csal_buf after retmayor9;
	S(2) <= csal_buf after retmayor9;
	S(3) <= '0' after retmayor9;
	csal <= csal_buf;

end comportamiento;