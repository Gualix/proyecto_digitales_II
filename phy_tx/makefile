NOMBRE=bancopruebas_Tx
BANCO=$(NOMBRE).v
SYNTH=phy_txSynth.v
VCD=$(NOMBRE).vcd
VC=iverilog

EJEC=ResultadosProbador
VR=vvp
FLAGSVC= -o $(EJEC)

FLAGSLIMP=rm *.vcd $(EJEC) $(SYNTH)

YOSYS=yosys
YOSFILE=yosy.ys
GTKCONFIG=config.gtkw
GTK=gtkwave

ORIG=phy_tx
FINAL=phy_txSynth
 

all: sintetizar compilar visualizar limpiar
	

sintetizar:
	sed -i '1i\`include "mux2x1.v"\' phy_tx.v
	sed -i '1i\`include "muxL1v"\' phy_tx.v
	sed -i '1i\`include "muxL2v"\' phy_tx.v
	sed -i '1i\`include "paralelo_serial.v"\' phy_tx.v
	$(YOSYS) $(YOSFILE)
	sed -i 's/$(ORIG)/$(FINAL)/g' $(SYNTH)
	sed -i '1i\`include "mux2x1.v"\' phy_tx.v
	sed -i '1i\`include "muxL1v"\' phy_tx.v
	sed -i '1i\`include "muxL2v"\' phy_tx.v
	sed -i '1i\`include "paralelo_serial.v"\' phy_tx.v
	sed -i 's/cond/estruct/g' $(SYNTH)

compilar:
	$(VC) $(BANCO) $(FLAGSVC)
	$(VR) $(EJEC)
visualizar:
	$(GTK) $(VCD) $(GTKCONFIG) 

limpiar: 
	$(FLAGSLIMP)

