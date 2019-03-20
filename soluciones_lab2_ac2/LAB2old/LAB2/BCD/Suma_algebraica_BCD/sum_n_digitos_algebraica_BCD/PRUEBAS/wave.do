onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal -childformat {{/prueba_salgebcd/A(8) -radix hexadecimal} {/prueba_salgebcd/A(7) -radix hexadecimal} {/prueba_salgebcd/A(6) -radix hexadecimal} {/prueba_salgebcd/A(5) -radix hexadecimal} {/prueba_salgebcd/A(4) -radix hexadecimal} {/prueba_salgebcd/A(3) -radix hexadecimal} {/prueba_salgebcd/A(2) -radix hexadecimal} {/prueba_salgebcd/A(1) -radix hexadecimal} {/prueba_salgebcd/A(0) -radix hexadecimal}} -subitemconfig {/prueba_salgebcd/A(8) {-radix hexadecimal} /prueba_salgebcd/A(7) {-radix hexadecimal} /prueba_salgebcd/A(6) {-radix hexadecimal} /prueba_salgebcd/A(5) {-radix hexadecimal} /prueba_salgebcd/A(4) {-radix hexadecimal} /prueba_salgebcd/A(3) {-radix hexadecimal} /prueba_salgebcd/A(2) {-radix hexadecimal} /prueba_salgebcd/A(1) {-radix hexadecimal} /prueba_salgebcd/A(0) {-radix hexadecimal}} /prueba_salgebcd/A
add wave -noupdate -radix hexadecimal /prueba_salgebcd/B
add wave -noupdate -radix hexadecimal /prueba_salgebcd/suma
add wave -noupdate -format Literal -radix hexadecimal /prueba_salgebcd/sumres
add wave -noupdate -format Literal -radix hexadecimal /prueba_salgebcd/irre
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {63007 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 201
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1028006 ps}
