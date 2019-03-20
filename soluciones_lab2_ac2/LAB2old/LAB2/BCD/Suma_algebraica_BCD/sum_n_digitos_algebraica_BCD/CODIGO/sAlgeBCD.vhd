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
	irre: out std_logic );
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

estimulos: process
variable t_retardo: time;
begin
	sumres <= 'U'; 
	a <= "UUUUUUUUU";
	b <= "UUUUUUUUU";
	wait for 40 ns;   --triga menys de 10ns en fer l'operació
	sumres <= '1'; 
	a <= "110011001";
	b <= "010011001";
	wait for 40 ns;
	t_retardo := 40 ns - s'last_event;
	report "retardo_min_max:"& CR &LF &
			to_string(t_retardo, ns) & CR & LF &
	wait;
end process;

rlj: process 	
variable iter : integer := 0;	
begin	
	reloj <= '0'; wait for periododiv2;	
	reloj <= '1'; wait for periododiv2;	
	if final = '1' then	
			wait;	
	end if;	
end process;