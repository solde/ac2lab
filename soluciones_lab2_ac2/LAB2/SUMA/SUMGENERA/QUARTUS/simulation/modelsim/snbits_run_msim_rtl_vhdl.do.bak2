transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/tmp/ac2/LAB2/SUMA/COMPONENTES/SUM1BIT/CODIGO/s1bit.vhd}
vcom -93 -work work {/tmp/ac2/LAB2/SUMA/SUMGENERA/CODIGO/snbits.vhd}

vcom -2008 -work work {/tmp/ac2/LAB2/SUMA/SUMGENERA/QUARTUS/../PRUEBAS/prueba_snbits_reloj.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  prueba_snbits_reloj

add wave *
view structure
view signals
run -all
