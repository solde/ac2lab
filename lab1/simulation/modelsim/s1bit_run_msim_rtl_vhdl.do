transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/David Soldevila/Desktop/ac2lab/lab1/CODIGO/s1bit.vhd}

