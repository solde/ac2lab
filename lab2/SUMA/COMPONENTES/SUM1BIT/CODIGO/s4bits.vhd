-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity S4bits is
 generic (tam: positive := 4 );
 port (
	A: in std_logic_vector (tam -1 downto 0);
	B: in std_logic_vector (tam -1 downto 0);
	cen: in std_logic;
	SUM: out std_logic_vector (tam -1 downto 0);
	csal: out std_logic );
end S4bits;

architecture comportamiento of S4bits is

constant retardo: time := 60 ns;
signal SINTER: std_logic_vector (4 downto 0);
begin
	SINTER <= std_logic_vector(('0' & unsigned(A)) + ('0' & unsigned(B)) + ("0000" & cen)) after retardo;
	csal <= SINTER(4);
	SUM <= SINTER (3 downto 0);
end comportamiento;


architecture structural of S4bits is
component S1bit
	port (x, y, cen : in std_logic; s, csal : out std_logic);
end component;

signal c1, c2, c3, c4: std_logic;
begin
	S1bit0: S1bit port map(x=>A(0), y=>B(0), cen=>cen, csal=>c1, s=>SUM(0));
	S1bit1: S1bit port map(x=>A(1), y=>B(1), cen=>c1, csal=>c2, s=>SUM(1));
	S1bit2: S1bit port map(x=>A(2), y=>B(2), cen=>c2, csal=>c3, s=>SUM(2));
	S1bit3: S1bit port map(x=>A(3), y=>B(3), cen=>c3, csal=>c4, s=>SUM(3));
	csal <= c4;
end structural;
