NOMBRE=BancoPruebas_Tx
BANCO=$(NOMBRE).v
SYNTH=phy_txSynth.v
VCD=PHYTX.vcd
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
 

#all: sintetizar compilar visualizar limpiar

all: compilar visualizar
	

compilar:
	$(VC) $(BANCO) $(FLAGSVC)
	$(VR) $(EJEC)
visualizar:
	$(GTK) $(VCD) $(GTKCONFIG) 

limpiar: 
	$(FLAGSLIMP)

