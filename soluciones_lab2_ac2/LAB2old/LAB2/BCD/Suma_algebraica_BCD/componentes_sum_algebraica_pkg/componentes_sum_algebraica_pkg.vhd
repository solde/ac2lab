--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use work.cte_tipos_bcd_pkg.all;

package componentes_sum_algebraica_pkg is

component sentBCD is
port (a: in st_ndig_bcd_mas_1;
	b: in st_ndig_bcd_mas_1;
	cen: in std_logic;
	s: out st_ndig_bcd_mas_1;
	irre: out std_logic );
end component;

component compl9 is 
port (X: in st_bcd;
	Z: out st_bcd);
end component;

end package componentes_sum_algebraica_pkg;
