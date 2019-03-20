--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.cte_tipos_bcd_pkg.all;
use work.retardos_bcd_pkg.all;

entity mayor9 is 
port (X: in st_bcd_mas_1;
	S: out st_bcd;
	csal: out std_logic);
end mayor9;

architecture comportamiento of mayor9 is
-- senyales

	component snbits is
	port (
		X: in  st_bcd;
		Y: in  st_bcd;
		cen: in std_logic;
		sum: out st_bcd;
		csal: out std_logic);
	end component;
	
	signal aux1:std_logic;
	signal aux2:std_logic;
	signal resta:st_bcd;
	signal senyal_inutil:std_logic;
	signal resul_menus_10:st_bcd;
	signal csal_pero_vhdl_te_retras:std_logic;
	
begin
	resta<= st_bcd(to_unsigned(6,4));
	aux1<=X(1)or X(2);
	aux2<=aux1 and X(3);
	csal_pero_vhdl_te_retras<=aux2 or X(4);
	csal<=csal_pero_vhdl_te_retras;
	suma:snbits
	port map (X=>X(3 downto 0), Y=>resta, cen=>'0', sum=>resul_menus_10 ,csal=>senyal_inutil);
	
	S<= resul_menus_10 when(csal_pero_vhdl_te_retras='1')else X(3 downto 0);
	--S <= (others => '0') after retmayor9;
	--csal <= '0' after retmayor9;

end comportamiento;


