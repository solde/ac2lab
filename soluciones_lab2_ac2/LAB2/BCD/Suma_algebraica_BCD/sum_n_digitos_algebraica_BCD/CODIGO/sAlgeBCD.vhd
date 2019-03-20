--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use work.cte_tipos_bcd_pkg.all;
use work.retardos_bcd_pkg.all;
use work.componentes_sum_algebraica_pkg.all;

entity sAlgeBCD is
port (a: in st_ndig_bcd_mas_1;
	b: in st_ndig_bcd_mas_1;
	sumres: in std_logic;
	s: out st_ndig_bcd_mas_1;
	irre: out std_logic);
end sAlgeBCD;

architecture estructural of sAlgeBCD is

signal Z, bcomp: st_ndig_bcd_mas_1;

begin
-- instanciacion compl9 mediante sentencias generate
	cmp_ndigts: for i in 0 to ndigitos-1 generate	
		cmpl9i: compl9 port map (X => b(num_bcd*(i+1)-1 downto num_bcd*i), Z => Z(num_bcd*(i+1)-1 downto num_bcd*i));
	end generate;

-- seleccion operando B
	bcomp((num_bits_ndigitos)-1 downto 0) <= b((num_bits_ndigitos)-1 downto 0) after retmux when sumres ='0' else Z((num_bits_ndigitos)-1 downto 0) after retmux;

-- instantacion sumador
	sumn : sentBCD port map (a => a, b => bcomp, cen => sumres, s => s, irre => irre);

	bcomp(num_bits_ndigitos) <= b(num_bits_ndigitos) xor sumres;

end estructural;