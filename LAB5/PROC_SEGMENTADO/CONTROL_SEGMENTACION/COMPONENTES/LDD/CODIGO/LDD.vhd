--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;

use work.param_disenyo_pkg.all;
use work.cte_tipos_deco_camino_pkg.all;
use work.componentes_control_seg_pkg.all;
use work.retardos_cntl_seg_pkg.all;

entity LDD is
	port(IDL1, IDL2 : in dir_reg; 
		valIDL1, valIDL2 : in std_logic;
		rdA, rdM, rdF, rdE : in dir_reg; 
		PBRA, PBRM, PBRF, PBRE : in st_PBR;
		IDL1A, IDL1M, IDL1F, IDL1E: out std_logic;
		IDL2A, IDL2M, IDL2F, IDL2E: out std_logic);
end LDD;


architecture estructural of LDD is
constant r0: dir_reg:= (others => '0');

type t_idreg is record
	reg: dir_reg;
	v: std_logic;
end record t_idreg;

type t_reg_font is array (1 to 2) of t_idreg;	-- L1 L2
type t_reg_dest is array (1 to 4) of t_idreg;	-- A M F E
signal reg_font: t_reg_font;
signal reg_dest: t_reg_dest;

type t_mat_dep is array (1 to 2, 1 to 4) of std_logic;
signal dep: t_mat_dep;
signal mat_comp: t_mat_dep;


	begin 
	reg_font	<= (1 => (IDL1, valIDL1), 2 => (IDL2, valIDL2));
	reg_dest <= (1 => (rdA, PBRA), 2 => (rdM, PBRM), 3 => (rdF, PBRF), 4 => (rdE, PBRE)); 

	gen_fori:
		for i in 1 to 2 generate
		gen_forj:
			for j in 1 to 4 generate
				comp: cmp port map(a=>reg_font(i).reg, b=>reg_dest(j).reg, ig => mat_comp(i,j));
				ando: andv3 port map(a=>reg_font(i).v, b=>reg_dest(j).v, c=>mat_comp(i,j), s=>dep(i,j) );
		end generate gen_forj;
	end generate gen_fori;
	
	


	
	IDL1A <= dep(1,1) after retLDD;
	IDL1M <= dep(1,2) after retLDD;
	IDL1F <= dep(1,3) after retLDD;
	IDL1E <= dep(1,4) after retLDD;
	IDL2A <= dep(2,1) after retLDD;
	IDL2M <= dep(2,2) after retLDD;
	IDL2F <= dep(2,3) after retLDD;
	IDL2E <= dep(2,4) after retLDD;
	
end estructural;
