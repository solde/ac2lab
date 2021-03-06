--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use work.cte_tipos_buffer_pkg.all;
use work.componentes_acceso_pkg.all;

entity acceso is
   port (reloj: in std_logic;
	pcero: in std_logic;
	escritura: in std_logic;
	lectura: in std_logic;
	PE: out std_logic;
	cabeza: out st_puntero;
	cola: out st_puntero);
end acceso;

architecture estruc of acceso is
-- senyales

begin
-- instantaciones punteros cola y cabeza

	reg_cola: puntero port map (reloj => reloj, pcero => pcero, condicion => escritura, punt => cola);
	reg_cabeza: puntero port map (reloj => reloj, pcero => pcero, condicion => lectura, punt => cabeza);
	PE <= escritura;

end;
