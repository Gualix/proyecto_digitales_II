
dep3:	
	yosys -s yosys.ys
dep4:	
	sed -i 's/phy_tx/phy_txsintetizado/' sintetizado.v
	sed -i 's/phy_rx/phy_txsintetizado/' sintetizado.v
	sed -i 's/mux2x1/mux2x1sintetizado/' sintetizado.v
	sed -i 's/muxL1/muxL1sintetizado/' sintetizado.v
	sed -i 's/muxL2/muxL2sintetizado/' sintetizado.v
	sed -i 's/Muxes/Muxessintetizado/' sintetizado.v
	sed -i 's/demux1x2/demux1x2Sintetizado/' sintetizado.v
	sed -i 's/demuxes/demuxesSintetizado/' sintetizado.v
	sed -i 's/demuxL1/demuxL1sintetizado/' sintetizado.v
	sed -i 's/demuxL2/demuxL2sintetizado/' sintetizado.v
	sed -i 's/paralelo_serial/paralelo_serialsintetizado/' sintetizado.v
	sed -i 's/recirculador/recirculadorsintetizado/' sintetizado.v
	sed -i 's/serial_paralelo/serial_paralelosintetizado/' sintetizado.v
	sed -i 's/PSRX/PSRXsintetizado/' sintetizado.v
	sed -i 's/serial_paraleloRX/serial_paraleloRXsintetizado/' sintetizado.v

dep5:
	iverilog -o gt Banco_phy.v cmos_cells.v
	vvp gt
	gtkwave PHY.vcd



