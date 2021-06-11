NOMBRE=Banco_phy
BANCO=$(NOMBRE).v
SYNTH=phy_Synth.v
VCD=phy.vcd
VC=iverilog

EJEC=out_Test
VR=vvp
FLAGSVC= -o $(EJEC)

FLAGSLIMP=rm *.vcd $(EJEC) $(SYNTH)

YOSYS=yosys
YOSFILE=yosy.ys
GTKCONFIG=config.gtkw
GTK=gtkwave

ORIG=phy_phy
FINAL=phy_phy_Synth
 

#all: sintetizar compilar visualizar limpiar

all: compilar visualizar
	

compilar:
	$(VC) $(BANCO) $(FLAGSVC)
	$(VR) $(EJEC)
visualizar:
	$(GTK) $(VCD) $(GTKCONFIG) 

limpiar: 
	$(FLAGSLIMP)

