 /* ***********************************************************
                    Universidad de Costa Rica
                 Escuela de Ingenieria Electrica
                            IE-0323
                      Circuitos Digitales 1

                        phy_tx.v

Descripcion:
  Conexión de los módulos: recirculador, muxes L1 y L2, paralelo a serial y serial a paralelo

*********************************************************** */


`include "recirculador.v"
`include "Muxes.v"
`include "paralelo_serial.v"
`include "serial_paralelo.v"

module phy_tx (
    input [7:0] data_in0,   //DATOS DE ENTRADA
	input [7:0] data_in1,   //BUSES DE 8 BITS X 4
	input [7:0] data_in2,
	input [7:0] data_in3,

    input valid0,   //VALIDS DE ENTRADA X4
	input valid1,
	input valid2,
	input valid3,       

    input reset,    //RESET
    //input active,
    //input out_serial2_conductual, //entrada IDLIN de serial a conductual 
    input in_from_rx,             //entrada IDLIN de serial a conductual 

	input clk_f,    //Reloj f
    input clk_2f,   //Reloj 2f
	input clk_4f,   //Reloj 4xf
    input clk_32f,  //Reloj 32xf

    //output out_serial_conductual, //SALIDA DEL PARALELO-SERIAL A EL MODULO RX
    output out_to_rx, //SALIDA DEL PARALELO-SERIAL A EL MODULO RX
    
    output [7:0] recirculador_desactivado0,  //SALIDA PARA EL PROBADOR
    output [7:0] recirculador_desactivado1,
    output [7:0] recirculador_desactivado2,
    output [7:0] recirculador_desactivado3
);
    //BLOQUE1
    wire [7:0] Entrada0;    //salidas del recirculador
    wire [7:0] Entrada1;    //datos
    wire [7:0] Entrada2;    //entrada del muxL1
    wire [7:0] Entrada3;

    wire valid_out_recirculador0;   //salidas de valids
	wire valid_out_recirculador1;   // del recirculador
	wire valid_out_recirculador2;   //son tambien entradas
	wire valid_out_recirculador3;   //del mux L1

    
    //BLOQUE3
    wire [7:0] Salida_conductual;   //datos salida del L2
    wire validsalida;               //salida valid del L2
                                    //entrada paralelo a serial
    
    //SERIAL A PARALELO TX
    //input out_serial2_conductual es la entrada
    wire [7:0] data_serial_paraleloRX;      //salida de 8 bits de SaP
    wire active;          //
    wire IDLEOut;

recirculador recirculadorphy(
    /*AUTOINST*/
                //ENTRADAS
                
                .clk      		(clk_f),
                .data_in0       (data_in0),
                .data_in1       (data_in1),
                .data_in2       (data_in2),
                .data_in3       (data_in3),

                .valid0         (valid0),
                .valid1         (valid1),
                .valid2         (valid2),
                .valid3         (valid3),

                .reset          (reset),
                .active         (active),

                //SALIDAS

                .recirculador_activo0   (Entrada0 [7:0]),
                .recirculador_activo1   (Entrada1 [7:0]),
                .recirculador_activo2   (Entrada2 [7:0]),
                .recirculador_activo3   (Entrada3 [7:0]),

                .recirculador_desactivado0  (recirculador_desactivado0 [7:0]),
                .recirculador_desactivado1  (recirculador_desactivado1 [7:0]),
                .recirculador_desactivado2  (recirculador_desactivado2 [7:0]),
                .recirculador_desactivado3  (recirculador_desactivado3 [7:0]),

                .valid_out_recirculador0    (valid_out_recirculador0),
                .valid_out_recirculador1    (valid_out_recirculador1),
                .valid_out_recirculador2    (valid_out_recirculador2),
                .valid_out_recirculador3    (valid_out_recirculador3)

);

Muxes muxess(
			/*AUTOINST*/
			//ENTRADAS
			.validEntrada0	(valid_out_recirculador0),
			.validEntrada1	(valid_out_recirculador1),
			.validEntrada2	(valid_out_recirculador2),
			.validEntrada3	(valid_out_recirculador3),
			
			.clk_4f			(clk_4f),
			.clk_2f			(clk_2f),
			.clk_f			(clk_f),
			.reset  		(reset),
			
			.Entrada0		(Entrada0),
			.Entrada1		(Entrada1),
			.Entrada2		(Entrada2),
			.Entrada3		(Entrada3),
			
			//SALIDAS
			.Salida_conductual	(Salida_conductual [7:0]),
			.validsalida		(validsalida)
);


paralelo_serial p2s(
			/*AUTOINST*/
			//ENTRADAS
			
			.clk_4f			(clk_4f),
			.clk_32f		(clk_32f),
			.in_serial		(Salida_conductual [7:0]),
			.valid_in		(validsalida),
			.reset			(reset),
			
			//SALIDAS
			.out_serial_conductual (out_serial_conductual)
			
);


serial_paralelo s2p(
    /*AUTOINST*/
    //ENTRADAS
    .reset		(reset),
    .clk_32f	(clk_32f),
    .clk_4f    	(clk_4f),
    .IDLin      (out_serial2_conductual),

    //SALIDAS
    .data_serial_paraleloTX     (data_serial_paraleloRX [7:0]),
    .active_serial_paraleloTX   (active),
    .IDLEOut                    (IDLEOut)

);
endmodule
