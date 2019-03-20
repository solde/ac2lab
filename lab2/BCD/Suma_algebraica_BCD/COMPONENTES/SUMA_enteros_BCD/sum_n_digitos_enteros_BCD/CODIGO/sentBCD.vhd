--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
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
--senyales
	component S4bits 
			port (A: in std_logic;
			B: in std_logic;
			cen: in std_logic;
			SUM: out std_logic;
			csal: out std_logic);
	end component;
	 
	 
	component muxn generic (n: positive);
			port (e0, e1: in std_logic_vector(n-1 downto 0);
         selec : in std_logic;
         sal: out std_logic_vector(n-1 downto 0));
	end component; 
	
	signal sum_nat:st_ndig_bcd;
	signal csal_nat:std_logic;
	signal signe:std_logic;
begin

	sum:snBCD port map ( a=>a(num_bits_ndigitos-1 downto 0), b=>b(num_bits_ndigitos-1 downto 0), cen=>cen, s=>sum_nat, csal=>csal_nat );
	sumsigne:s1bit port map (x=>a(num_bits_ndigitos), y=>b(num_bits_ndigitos), cen=>csal_nat, s=>signe);
	s<=signe & sum_nat;
	irre <= (signe and (not a(num_bits_ndigitos)) and (not b(num_bits_ndigitos))) or ((not signe) and a(num_bits_ndigitos) and b(num_bits_ndigitos));
	
end estructural;

