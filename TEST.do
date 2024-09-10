quit -sim
vcom ShiftRegister.vhd
vsim shift_register

add wave rst
add wave clk
add wave OP
add wave Din
add wave Qout

force rst 0 
run

force rst 1
force OP 01
force Din 11111111
force clk 0
run

force clk 1
run 
force clk 0
run

force OP 10
run 
force clk 1
run 
force clk 0
run
force clk 1
run 
force clk 0
run

force OP 01
run 
force clk 1
run 
force clk 0
run
force clk 1
run 
force clk 0
run


force OP 11
run 
force clk 1
run 
force clk 0
run
force clk 1
run 
force clk 0
run

force OP 00
run 
force clk 1
run 
force clk 0
run
force clk 1
run 
force clk 0
run

force rst 0
force clk 1
run 
force clk 0
run
force clk 1
run 
force clk 0
run
run
