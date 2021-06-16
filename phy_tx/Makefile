all: yosys sed iverilog vvp gtkwave 

yosys: script
	yosys -s script
	
sed: synth_tx.v		
	sed -i 's/phy_tx/phy_tx_estructural/' synth_tx.v		
	sed -i 's/Muxes/Muxes_estructural/' synth_tx.v		
	sed -i 's/serial_paralelo/serial_paralelo_estructural/' synth_tx.v		
		
	sed -i 's/paralelo_serial/paralelo_serial_estructural/' synth_tx.v
	sed -i 's/recirculador/recirculador_estructural/' synth_tx.v
			
iverilog: BancoPruebas_Tx.v 
	iverilog -o test.vvp BancoPruebas_Tx.v

vvp: test.vvp
	vvp test.vvp

gtkwave: Phy_tx.vcd.gtkw
	gtkwave Phy_tx.vcd.gtkw
