all: iverilog gtkwave

iverilog: 
	iverilog -o test.vpp Banco_phy.v
	vvp test.vvp
gtkwave:
	gtkwave PHY.gtkw
