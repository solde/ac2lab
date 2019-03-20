library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.cte_tipos_bcd_pkg.all;
use work.retardos_bcd_pkg.all;

entity prueba_sentBCD is
end prueba_sentBCD;

architecture prueba of prueba_sentBCD is

component sentBCD is
port (a: in st_ndig_bcd_mas_1;
	b: in st_ndig_bcd_mas_1;
	cen: in std_logic;
	s: out st_ndig_bcd_mas_1;
	irre: out std_logic );
end component;

signal A, B, suma: st_ndig_bcd_mas_1;
signal cen, irre: std_logic;

begin

snentBCD: sentBCD port map(a => A, b => B, cen => cen, s => suma, irre => irre);

estimulos: process
variable t_retardo: time;
begin
	cen <= 'U'; 
	A <= "UUUUUUUUU";
	B <= "UUUUUUUUU";
	wait for 40 ns;   --triga menys de 10ns en fer l'operació
	cen <= '1'; 
	A <= "110011001";
	B <= "010011001";
	wait for 40 ns;
	t_retardo := 40 ns - suma'last_event;
	report "retardo_min_max:"& CR &LF &
			to_string(t_retardo, ns);
	wait for 40 ns;
	
		cen <= 'U'; 
	A <= "UUUUUUUUU";
	B <= "UUUUUUUUU";
	wait for 40 ns;   --triga menys de 10ns en fer l'operació
	cen <= '0'; 
	A <= "000000000";
	B <= "000000000";
	wait for 40 ns;
	t_retardo := 40 ns - suma'last_event;
	report "retardo_min_max:"& CR &LF &
			to_string(t_retardo, ns);
	wait;
end process;

end;

