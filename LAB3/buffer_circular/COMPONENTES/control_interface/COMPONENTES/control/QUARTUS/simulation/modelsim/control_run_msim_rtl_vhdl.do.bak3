transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB3/buffer_circular/tipos_ctes_pkg/retardos_buffer_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB3/buffer_circular/tipos_ctes_pkg/cte_tipos_buffer_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB3/buffer_circular/COMPONENTES/control_interface/COMPONENTES/control/CODIGO/control.vhd}

vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB3/buffer_circular/COMPONENTES/control_interface/COMPONENTES/control/QUARTUS/../PRUEBAS/prueba_control.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  prueba_control

do /dades/david.soldevila.puigbi/aclab/LAB3/buffer_circular/COMPONENTES/control_interface/COMPONENTES/control/QUARTUS/../PRUEBAS/formato_ventanas.do
