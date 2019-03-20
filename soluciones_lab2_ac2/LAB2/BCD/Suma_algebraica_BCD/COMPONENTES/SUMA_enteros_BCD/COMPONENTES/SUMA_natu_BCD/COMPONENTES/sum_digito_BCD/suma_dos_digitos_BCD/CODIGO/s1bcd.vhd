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
	component snbits	
	port (X: in  st_bcd;
	Y: in  st_bcd;
	cen: in std_logic;
	sum: out st_bcd;
	csal: out std_logic);
	end component;

	component mayor9
	port (X: in st_bcd_mas_1;
	S: out st_bcd;
	csal: out std_logic);
	end component;

signal sum_mas_car : st_bcd_mas_1;
signal S_inter : st_bcd;
signal S_inter2 : st_bcd;
signal csal_inter : std_logic;
begin

	sum1: snbits port map (X => X, Y => Y, cen => cen, sum => S_inter, csal => csal_inter);
	sum2: snbits port map (X => S_inter2, Y => S_inter, cen => '0', sum => S);
	m9: mayor9 port map (X => sum_mas_car, S => S_inter2, csal => csal);
	sum_mas_car <= csal_inter & S_inter;

end;