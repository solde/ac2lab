--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;

use work.param_disenyo_pkg.all;
use work.componentes_control_seg_pkg.all;
use work.retardos_cntl_seg_pkg.all;

entity LDRD is
	port(IDL1A, IDL1M, IDL1F, IDL1E: in std_logic;
		IDL2A, IDL2M, IDL2F, IDL2E: in std_logic;
		RD : out std_logic);
end LDRD;


architecture comportamiento of LDRD is

signal and1, and2, and3, and4, and12, and34, and1234: std_logic;
begin
	andc1: andv2 port map(a=>IDL1A , b=>IDL1M , s=>and1 );
	andc2: andv2 port map(a=>IDL1F , b=>IDL1E , s=>and2 );
	andc3: andv2 port map(a=>IDL2A , b=>IDL2M , s=>and3 );
	andc4: andv2 port map(a=>IDL2F , b=>IDL2E , s=>and4 );
	
	andc5: andv2 port map(a=>and1 , b=>and2 , s=>and12 );
	andc6: andv2 port map(a=>and3 , b=>and4 , s=>and34 );
	
	andc7: andv2 port map(a=>and12 , b=>and34 , s=>and1234 );
	
	RD <= and1234;
	
end comportamiento;
