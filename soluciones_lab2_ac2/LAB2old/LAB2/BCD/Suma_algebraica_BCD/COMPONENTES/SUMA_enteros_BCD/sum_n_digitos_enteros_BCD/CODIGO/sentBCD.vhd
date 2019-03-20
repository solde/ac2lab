--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use work.cte_tipos_bcd_pkg.all;
use work.componentes_snBCD_pkg.all;

entity sentBCD is
port (a: in st_ndig_bcd_mas_1;
	b: in st_ndig_bcd_mas_1;
	cen: in std_logic;
	s: out st_ndig_bcd_mas_1;
	irre: out std_logic );
end sentBCD;

architecture estructural of sentBCD is

component snBCD
port (a: in st_ndig_bcd;
	b: in st_ndig_bcd;
	cen: in std_logic;
	s: out st_ndig_bcd;
	csal: out std_logic );
end component;

component s1bit
port(x: in  std_logic;
	y: in  std_logic;
	cen: in std_logic;
	s: out  std_logic;
	csal: out  std_logic);
end component;

--senyales
signal csal_inter: std_logic;
signal s_bit : std_logic;
signal s_sal: st_ndig_bcd;
--
begin
	sum_n_nat : snBCD port map (a => a(num_bits_ndigitos-1 downto 0),b => b(num_bits_ndigitos-1 downto 0),  cen=>cen, s => s_sal, csal => csal_inter);
	sig_car : s1bit port map (x => a(num_bits_ndigitos), y => b(num_bits_ndigitos), cen=> csal_inter, s => s_bit); 
	s <= s_bit&s_sal;
	irre <= (s_bit and (not a(num_bits_ndigitos)) and (not b(num_bits_ndigitos))) or ((not s_bit) and a(num_bits_ndigitos) and b(num_bits_ndigitos));

end estructural;

