--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;

use work.cte_tipos_deco_camino_pkg.all;
use work.componentes_control_seg_pkg.all;
use work.retardos_cntl_seg_pkg.all;

entity LDRS is
	port(opsecDL, opsecA : in st_opSEC;
		RS: out std_logic);
end LDRS;


architecture comportamiento of LDRS is
signal or1 :std_logic;

begin
	ori: orv2 port map(a=>opsecDL(3), b=>opsecA(3) , s=>or1 );
	
	RS <=or1;
	
end comportamiento;
