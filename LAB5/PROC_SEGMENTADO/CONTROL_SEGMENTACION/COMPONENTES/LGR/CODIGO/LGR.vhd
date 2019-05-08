--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;

use work.cte_tipos_deco_camino_pkg.all;
use work.componentes_control_seg_pkg.all;
use work.retardos_cntl_seg_pkg.all;

entity LGR is
	port(RID, RS : in std_logic;
		bloqCP, bloqBDL, inyecBDL, inyecDLA: out std_logic);
end LGR;


architecture comportamiento of LGR is
signal or1,or2: std_logic;
signal not_rs: std_logic;

begin

	not_rs <= not rs;

	andd1: orv2 port map(a=>RID , b=>RS , s=>or1);
	andd2: orv2 port map(a=>RID , b=>not_rs , s=>or2 );
	
	bloqCP <= or1 after retLGR;
	bloqBDL <= or2 after retLGR;

	inyecDLA <= RID after retLGR;
	inyecBDL <= RS after retLGR;
	
end comportamiento;
