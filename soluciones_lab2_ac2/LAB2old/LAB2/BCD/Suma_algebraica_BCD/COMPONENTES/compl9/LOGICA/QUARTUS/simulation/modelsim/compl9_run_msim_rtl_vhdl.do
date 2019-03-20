transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/user/Desktop/LAB2/BCD/tipos_ctes_pkg/retardos_bcd_pkg.vhd}
vcom -93 -work work {C:/Users/user/Desktop/LAB2/BCD/tipos_ctes_pkg/cte_tipos_bcd_pkg.vhd}
vcom -93 -work work {C:/Users/user/Desktop/LAB2/BCD/Suma_algebraica_BCD/COMPONENTES/compl9/LOGICA/CODIGO/compl9.vhd}

vcom -93 -work work {C:/Users/user/Desktop/LAB2/BCD/Suma_algebraica_BCD/COMPONENTES/compl9/LOGICA/QUARTUS/../PRUEBAS/prueba_compl9.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  prueba_compl9

add wave *
view structure
view signals
run -all
