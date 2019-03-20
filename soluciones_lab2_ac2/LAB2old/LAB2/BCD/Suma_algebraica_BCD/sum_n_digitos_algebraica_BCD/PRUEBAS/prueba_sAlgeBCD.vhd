--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.cte_tipos_bcd_pkg.all;
use work.retardos_bcd_pkg.all;

entity prueba_sAlgeBCD is
end prueba_sAlgeBCD;

architecture prueba of prueba_sAlgeBCD is

component sAlgeBCD is
port (a: in st_ndig_bcd_mas_1;
	b: in st_ndig_bcd_mas_1;
	sumres: in std_logic;
	s: out st_ndig_bcd_mas_1;
	irre: out std_logic );
end component;

signal A, B, suma: st_ndig_bcd_mas_1;
signal sumres, irre: std_logic;

begin

snentBCD: sAlgeBCD port map(a => A, b =>B, sumres => sumres, s => suma, irre => irre);


estimulos: process
variable Adec, Bdec: natural;
variable sumacompexp, sumdig, sumexp: natural;
variable iexp, jexp: natural;
variable sumacompro: integer;
variable irrecomp: std_logic;
variable errores: natural := 0;
constant base_mod: integer := 2*(10**ndigitos);
constant emin: integer := -base_mod/2;
constant emax: integer := (base_mod/2) - 1;

begin

	for aca in 0 to 1 loop
		if aca = 0 then
			sumres <= '0';
		else
			sumres <= '1';
		end if;
		for i in -10**ndigitos to 10**ndigitos-1 loop
			for j in -10**ndigitos to 10**ndigitos -1 loop
				A(num_bits_ndigitos) <= '0';
				B(num_bits_ndigitos) <= '0'; 
				if i < 0 then
					A(num_bits_ndigitos) <= '1';
				end if;
				if j < 0 then
					B(num_bits_ndigitos) <= '1';
				end if;

				iexp := i mod base_mod;
				jexp := j mod base_mod;        
       			Adec := iexp;
				Bdec := jexp;
				for dig in 0 to ndigitos-1 loop
                	A((dig+1)*num_bcd-1 downto dig*num_bcd) <= std_logic_vector(to_unsigned(Adec mod 10,num_bcd));
                	B((dig+1)*num_bcd-1 downto dig*num_bcd) <= std_logic_vector(to_unsigned(Bdec mod 10,num_bcd));
					Adec := Adec/10;
					Bdec := Bdec/10;
				end loop;
                wait for 10*retsumbin;

				if sumres = '0' then
					sumacompro := i + j; 
					sumacompexp := (iexp + jexp) mod base_mod;
				else
					sumacompro := i - j; 
					sumacompexp := (iexp - jexp) mod base_mod; 
				end if;

				sumexp := 0;
				if suma(num_bits_ndigitos) = '1' then
					sumexp := 1;
				end if;
				for dig in ndigitos-1 downto 0 loop
					sumexp := sumexp*10 + to_integer(unsigned(suma((dig+1)*num_bcd-1 downto dig*num_bcd)));
				end loop;

				irrecomp := '0';
				if (sumacompro < emin) or (sumacompro > emax) then
					irrecomp := '1';
				end if; 

                if (sumacompexp /= sumexp) or (irrecomp /= irre) then
                    errores := errores + 1;
                end if; 

				if sumres = '0' then 
                	assert(sumacompexp = sumexp)
                	report "la comprobación de explicitos falla" & LF & CR &
					integer'image(iexp) & " + " & integer'image(jexp) & " = " & integer'image(sumexp) & "  /= res: " & integer'image(sumacompexp)
					severity failure;
					assert (irre = irrecomp)
	                report "la comprobación de irrepresentabilidad falla" & LF & CR &
					integer'image(i) & " + " & integer'image(j) & " = " & integer'image(sumacompro)
				& " irrecomp: " & std_logic'image(irrecomp) & " irre: " & std_logic'image(irre) 
					severity failure;
				else
                	assert(sumacompexp = sumexp)
                	report "la comprobación de explicitos falla" & LF & CR &
					integer'image(iexp) & " - " & integer'image(jexp) & " = " & integer'image(sumexp) & "  /= res: " & integer'image(sumacompexp)
					severity failure;
					assert (irre = irrecomp)
	                report "la comprobación de irrepresentabilidad falla" & LF & CR &
					integer'image(i) & " - " & integer'image(j) & " = " & integer'image(sumacompro)
				& " irrecomp: " & std_logic'image(irrecomp) & " irre: " & std_logic'image(irre) 
					severity failure;
				end if; 


            end loop;   
        end loop;
	end loop;
	wait;
end process;

end;

