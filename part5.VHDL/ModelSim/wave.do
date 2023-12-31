onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label Clock /testbench/CLOCK_50
add wave -noupdate -label KEY /testbench/KEY
add wave -noupdate -label SW /testbench/SW
add wave -noupdate -divider proc
add wave -noupdate -label Resetn /testbench/U1/U3/Resetn
add wave -noupdate -label Run /testbench/U1/U3/Run
add wave -noupdate -label Clock /testbench/U1/U3/Clock
add wave -noupdate -label IR -radix hexadecimal /testbench/U1/U3/IR
add wave -noupdate -label W /testbench/U1/U3/W
add wave -noupdate -label Done /testbench/U1/U3/Done
add wave -noupdate -label PC -radix hexadecimal /testbench/U1/U3/PC
add wave -noupdate -label ADDR -radix hexadecimal /testbench/U1/U3/ADDR
add wave -noupdate -label inst_mem -radix hexadecimal /testbench/U1/inst_mem_q
add wave -noupdate -label DIN -radix hexadecimal /testbench/U1/U3/DIN
add wave -noupdate -label DOUT -radix hexadecimal -childformat {{/testbench/U1/U3/DOUT(15) -radix hexadecimal} {/testbench/U1/U3/DOUT(14) -radix hexadecimal} {/testbench/U1/U3/DOUT(13) -radix hexadecimal} {/testbench/U1/U3/DOUT(12) -radix hexadecimal} {/testbench/U1/U3/DOUT(11) -radix hexadecimal} {/testbench/U1/U3/DOUT(10) -radix hexadecimal} {/testbench/U1/U3/DOUT(9) -radix hexadecimal} {/testbench/U1/U3/DOUT(8) -radix hexadecimal} {/testbench/U1/U3/DOUT(7) -radix hexadecimal} {/testbench/U1/U3/DOUT(6) -radix hexadecimal} {/testbench/U1/U3/DOUT(5) -radix hexadecimal} {/testbench/U1/U3/DOUT(4) -radix hexadecimal} {/testbench/U1/U3/DOUT(3) -radix hexadecimal} {/testbench/U1/U3/DOUT(2) -radix hexadecimal} {/testbench/U1/U3/DOUT(1) -radix hexadecimal} {/testbench/U1/U3/DOUT(0) -radix hexadecimal}} -subitemconfig {/testbench/U1/U3/DOUT(15) {-radix hexadecimal} /testbench/U1/U3/DOUT(14) {-radix hexadecimal} /testbench/U1/U3/DOUT(13) {-radix hexadecimal} /testbench/U1/U3/DOUT(12) {-radix hexadecimal} /testbench/U1/U3/DOUT(11) {-radix hexadecimal} /testbench/U1/U3/DOUT(10) {-radix hexadecimal} /testbench/U1/U3/DOUT(9) {-radix hexadecimal} /testbench/U1/U3/DOUT(8) {-radix hexadecimal} /testbench/U1/U3/DOUT(7) {-radix hexadecimal} /testbench/U1/U3/DOUT(6) {-radix hexadecimal} /testbench/U1/U3/DOUT(5) {-radix hexadecimal} /testbench/U1/U3/DOUT(4) {-radix hexadecimal} /testbench/U1/U3/DOUT(3) {-radix hexadecimal} /testbench/U1/U3/DOUT(2) {-radix hexadecimal} /testbench/U1/U3/DOUT(1) {-radix hexadecimal} /testbench/U1/U3/DOUT(0) {-radix hexadecimal}} /testbench/U1/U3/DOUT
add wave -noupdate -label FSM /testbench/U1/U3/Tstep_Q
add wave -noupdate -label R0 -radix hexadecimal /testbench/U1/U3/R0
add wave -noupdate -label R1 -radix hexadecimal /testbench/U1/U3/R1
add wave -noupdate -label R2 -radix hexadecimal /testbench/U1/U3/R2
add wave -noupdate -label R3 -radix hexadecimal /testbench/U1/U3/R3
add wave -noupdate -label R4 -radix hexadecimal /testbench/U1/U3/R4
add wave -noupdate -label R5 -radix hexadecimal /testbench/U1/U3/R5
add wave -noupdate -label Buswires -radix hexadecimal /testbench/U1/U3/BusWires
add wave -noupdate -label Sel /testbench/U1/U3/Sel
add wave -noupdate -label z /testbench/U1/U3/z
add wave -noupdate -label c /testbench/U1/U3/c
add wave -noupdate -label timer_config -radix binary /testbench/U1/U3/timer_config
add wave -noupdate -label prescale_factor -radix binary /testbench/U1/U3/prescale_factor
add wave -noupdate -label prescaler_out /testbench/U1/U3/prescaler_out
add wave -noupdate -label psa_select /testbench/U1/U3/psa_select
add wave -noupdate -label psa_out /testbench/U1/U3/psa_out
add wave -noupdate -label timer_on /testbench/U1/U3/timer_on
add wave -noupdate -label timer_select_8_16 /testbench/U1/U3/timer_select_8_16
add wave -noupdate -label regntimer_out -radix binary /testbench/U1/U3/regntimer_out
add wave -noupdate -label interrupt_flag /testbench/U1/U3/interrupt_flag

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {504646 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 89
configure wave -valuecolwidth 64
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {535353 ps} {808223 ps}
