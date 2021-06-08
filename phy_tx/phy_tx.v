`include "recirculador.v"
`include "Muxes.v"
`include "paralelo_serial.v"
`include "serialparalelotx.v"

module phy_TX (
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
    input out_serial2_conductual, //entrada IDLIN de serial a conductual 

    input clk_2f,  //RELOJ 2F
	input clk_f,    //RELOJ F
	input clk_4f,   //RELOJ 4F

    output reg out_serial_conductual, //SALIDA DEL PARALELO-SERIAL A EL MODULO RX
    
    output reg [7:0] recirculador_desactivado0,  //SALIDA PARA EL PROBADOR
    output reg [7:0] recirculador_desactivado1,
    output reg [7:0] recirculador_desactivado2,
    output reg [7:0] recirculador_desactivado3
);
    //BLOQUE1
    wire [7:0] Entrada0;    //salidas del recirculador
    wire [7:0] Entrada1;    //datos
    wire [7:0] Entrada2;    //entrada del muxL1
    wire [7:0] Entrada3;

    wire valid_out_recirculador0;   //salidas de valids
	wire valid_out_recirculador1;   //del recirculador
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



Muxes muxess(
			
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
			
			//ENTRADAS
			
			.clk_4f			(clk_4f),
			.clk_32f		(clk_32f),
			.in_serial		(Salida_conductual [7:0]),
			.valid_in		(validsalida),
			.reset			(reset),
			
			//SALIDAS
			.out_serial_conductual (out_serial_conductual)
			
);


serialparalelotx serialaparalelotx(
    /*AUTOINST*/
                //ENTRADAS
                .reset     (reset),
                .clk_32f    (clk_32f),
                .clk_4f    (clk_4f),
                .IDLin      (out_serial2_conductual),

                //SALIDAS
                .data_serial_paraleloTX (data_serial_paraleloRX [7:0]),
                .active_serial_paraleloTX   (active),
                .IDLEOut    (IDLEOut)
);
endmodule
