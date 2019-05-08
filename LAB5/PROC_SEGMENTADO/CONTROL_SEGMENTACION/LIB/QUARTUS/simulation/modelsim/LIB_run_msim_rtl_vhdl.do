transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/tipos_constantes_pkg/retardos_RegDes_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB4/PROC_SERIE/tipos_constantes_pkg/riscv32_coop_funct_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/tipos_constantes_pkg/retardos_cntl_seg_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/tipos_constantes_pkg/cte_tipos_deco_camino_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB4/PROC_SERIE/tipos_constantes_pkg/param_disenyo_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/PUERTAS/CODIGO/andv3.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/PUERTAS/CODIGO/andv2.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/PUERTAS/CODIGO/orv2.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB4/PROC_SERIE/tipos_constantes_pkg/cte_tipos_UF_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/REGISTRO_DESACOPLO/RegDes_pkg/RegDes_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/componentes_cntl_seg_pkg/componentes_control_seg_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/REGISTRO_DESACOPLO/CODIGO/RDB_N.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/REGISTRO_DESACOPLO/CODIGO/RDI_N.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/REGISTRO_DESACOPLO/CODIGO/RD_N.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/REGISTRO_DESACOPLO/CODIGO/RDI_1.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/REGISTRO_DESACOPLO/CODIGO/RD_1.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/VALIDACION/CODIGO/valreg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/COMPARADOR/CODIGO/cmp.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/CODIGO/LIB.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/DECO_PBR_opSEC/CODIGO/RdecoPBRopSEC.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/DECO_PBR_opSEC/CODIGO/decoPBRopSEC.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/ENSAM_RD/CODIGO/ensam_RD.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/SENYALES_CNTL/CODIGO/senya_cntlRD.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/LDD/CODIGO/LDD.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/LDRD/CODIGO/LDRD.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/ENSAM_RS/CODIGO/ensam_RS.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/SENYALES_CNTL/CODIGO/senya_cntlRS.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/LDRS/CODIGO/LDRS.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/COMPONENTES/LGR/CODIGO/LGR.vhd}

vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../../../../../LAB4/PROC_SERIE/UTILIDADES_pkg/generar_impri_instruc_pkg/codificar_instrucciones_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../../../../../LAB4/PROC_SERIE/UTILIDADES_pkg/generar_impri_instruc_pkg/imprimir_inst_ascii_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../../../../../LAB4/PROC_SERIE/UTILIDADES_pkg/impri_instruc_pkg/deco_Inst_impri_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../../componentes_cntl_seg_pkg/componentes_control_seg_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../../../tipos_constantes_pkg/retardos_cntl_seg_pkg.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../../COMPONENTES/PUERTAS/CODIGO/andv2.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../../COMPONENTES/PUERTAS/CODIGO/andv1n.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../../COMPONENTES/PUERTAS/CODIGO/andv3.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../../COMPONENTES/PUERTAS/CODIGO/orv2.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../../COMPONENTES/PUERTAS/CODIGO/orvn.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../../COMPONENTES/COMPARADOR/CODIGO/cmp.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../PRUEBAS/VHDL_P/enc_LDD.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../PRUEBAS/VHDL_P/enc_LDRD.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../PRUEBAS/VHDL_P/enc_LDRS.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../PRUEBAS/VHDL_P/enc_LGR.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../PRUEBAS/VHDL_P/enc_ensam_RD.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../PRUEBAS/VHDL_P/enc_ensam_RS.vhd}
vcom -93 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../PRUEBAS/VHDL_P/enc_LIB.vhd}
vcom -2008 -work work {/dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../PRUEBAS/prueba_LIB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  prueba_LIB

do /dades/david.soldevila.puigbi/aclab/LAB5/PROC_SEGMENTADO/CONTROL_SEGMENTACION/LIB/QUARTUS/../PRUEBAS/formato_ventanas.do
