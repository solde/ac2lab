--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use work.cte_tipos_buffer_pkg.all;
use work.componentes_acceso_pkg.all;
--! @image html acceso.png 

entity acceso is
   port (reloj: in std_logic;
	pcero: in std_logic;
	escritura: in std_logic;
	lectura: in std_logic;
	PE: out std_logic;
	cabeza: out st_puntero;
	cola: out st_puntero;
	colaincr: out st_puntero);
end acceso;

architecture estruc of acceso is
-- senyales
signal val_B,listo_B, listo_C, val_P: st_puntero;
signal lleno, vacio, cond_esc, cond_lec :std_logic;
signal colaincr_pocho: st_puntero;

begin
-- instanciaciones punteros cola y cabeza
	
	reg_cola: puntero port map (reloj => reloj, pcero => pcero, condicion => escritura, puntincr => colaincr, punt => cola);
	reg_cabeza: puntero port map (reloj => reloj, pcero => pcero, condicion => lectura, puntincr => colaincr_pocho, punt => cabeza);

	PE <= escritura;
				
end;
