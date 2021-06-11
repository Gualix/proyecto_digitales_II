
dep3:	
	yosys -p "read_verilog phy_tx.v" -p " proc; opt; fsm; opt; memory; opt" -p "techmap; opt" 
	-p "dfflibmap -liberty cmos_cells.lib" -p "abc -liberty cmos_cells.lib" -p "clean" -p "write_verilog sintetizado.v"
dep4:	
	sed -i 's/phy_tx/phy_txsintetizado/' sintetizado.v
	sed -i 's/mux2x1/mux2x1sintetizado/' sintetizado.v
	sed -i 's/muxL1/muxL1sintetizado/' sintetizado.v
	sed -i 's/Muxes/Muxessintetizado/' sintetizado.v
	sed -i 's/muxL2/muxL2sintetizado/' sintetizado.v
	sed -i 's/paralelo_serial/paralelo_serialsintetizado/' sintetizado.v
	sed -i 's/recirculador/recirculadorsintetizado/' sintetizado.v
	sed -i 's/serial_paralelo/serial_paralelosintetizado/' sintetizado.v
dep5:
	iverilog -o gt Banco_phy.v cmos_cells.v
	vvp gt
	gtkwave PHY.vcd



