--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use work.cte_tipos_bcd_pkg.all;
use work.componentes_digito_bcd_pkg.all;

entity s1bcd is
port (X: in st_bcd;
	Y: in st_bcd;
	cen: in std_logic;
	S: out st_bcd;
	csal: out std_logic);
end s1bcd;

architecture compor of s1bcd is 
-- senyales

	component snbits is
	port (X: in  st_bcd;
		Y: in  st_bcd;
		cen: in std_logic;
		sum: out st_bcd;
		csal: out std_logic);
	end component;
		 
	component mayor9 is 
			port (X: in st_bcd_mas_1;
			S: out st_bcd;
			csal: out std_logic);
	end component;
	 
	
	
	signal res:st_bcd;
	signal csalaux:std_logic;
	signal csal_res:st_bcd_mas_1;

begin

	s4bits1:snbits
	port map(X=>X,Y=>Y, cen=>cen, SUM=>res, csal=>csalaux);
	
	csal_res <= csalaux & res;
	cosa:mayor9
	port map(X=>csal_res, S=>S, csal=>csal);
		

	--S <= (others => '0');
	--csal <= '0';

end;

