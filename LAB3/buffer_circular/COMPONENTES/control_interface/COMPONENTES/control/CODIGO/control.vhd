--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

use ieee.numeric_std.all;
use work.cte_tipos_buffer_pkg.all;
use work.retardos_buffer_pkg.all;
--! @image html control.png 

entity control is
   port (cabeza: in st_puntero;
	cola, colaincr: in st_puntero;
	vacio: out std_logic;
	lleno: out std_logic);
end control;

architecture compor of control is
signal modco: std_logic_vector(num_reg -1 downto 0);
signal modca: std_logic_vector(num_reg -1 downto 0);
begin
-- utilice sentencias de asignacion de senyal condicional para las comparaciones
	--modco<=cola(num_reg-1 downto 0);
	--modca<=cabeza(num_reg-1 downto 0);
	vacio <= '1' when cola = cabeza else '0' after retcontrol;
	
	lleno <= '1' when (to_integer(unsigned(cola)) = (to_integer(unsigned(cabeza-1)) mod num_reg) and to_integer(unsigned(cola)) = (to_integer(unsigned(cabeza+(num_reg-1))) mod num_reg) ) or (to_integer(unsigned(cola + 1)) mod num_reg) = to_integer(unsigned(cabeza)) else '0' after retcontrol;
	
	--lleno <= '0' when cola =cabeza & "011111" or cola+1 & "011111" else '1' after retcontrol;
	--lleno <= '0' after retcontrol;
	--vacio <= '0' after retcontrol; 
end;
