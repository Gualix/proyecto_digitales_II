`include "recirculador.v"
`include "muxL1.v"
`include "muxL2.v"
`include "paralelo_serial.v"
`include "seriaparalelotx.v"

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
	wire valid_out_recirculador1;   // del recirculador
	wire valid_out_recirculador2;   //son tambien entradas
	wire valid_out_recirculador3;   //del mux L1

    //BLOQUE2
    wire [7:0] Salida0;             //salida del L1
    wire [7:0] Salida1;             //entrada del L2

    wire validsalida0;              //salida del L1
    wire validsalida1;              //entrada del L2 VALIDS.
    
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
                
                .input clk      (clk_f),
                .data_in0       (data_in0),
                .data_in1       (data_in1),
                .data_in2       (data_in2),
                .data_in3       (data_in3),

                .valid0         (valid0),
                .valid1         (valid1),
                .valid2         (valid2),
                .valid3         (valid3),

                .reset          (reset),
                .active         (active)

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
                .valid_out_recirculador3    (valid_out_recirculador3),

);

muxL1 muxnumero1(
    /*AUTOINST*/
                //ENTRADAS
                .Entrada0   (Entrada0 [7:0]),
                .Entrada1   (Entrada1 [7:0]),
                .Entrada2   (Entrada2 [7:0]),
                .Entrada3   (Entrada3 [7:0]),

                .validEntrada0  (valid_out_recirculador0),
                .validEntrada1  (valid_out_recirculador1),
                .validEntrada2  (valid_out_recirculador2),
                .validEntrada3  (valid_out_recirculador3),

                .clk_2f (clk_2f),
                .reset  (reset),

                //SALIDAS
                .Salida0    (Salida0),
                .Salida1    (Salida1),

                .validsalida0 (validsalida0),
                .validsalida1   (validsalida1)
);

muxL2 muxnumero2(
    /*AUTOINST*/
                //ENTRADAS
                .clk_2f         (clk_2f),
                .reset          (reset),
                
                .Entrada0       (Salida0 [7:0]),
                .Entrada1       (Salida1 [7:0]),
                
                .validEntrada0  (validsalida0),
                .validEntrada1  (validsalida1),

                //SALIDAS
                .validsalida    (validsalida),
                .Salida_conductual  (Salida_conductual [7:0])
);

paralelo_serial paraleloaserialtx (
    /*AUTOINST*/
                //ENTRADAS
                .clk_4f     (clk_4f),
                .in_serial  (Salida_conductual),
                .valid_in   (validsalida),
                .reset      (reset),
                
                //SALIDAS    
                .out_serial_conductual (out_serial_conductual)
);


serialparalelotx serialaparalelotx(
    /*AUTOINST*/
                //ENTRADAS
                .reset     (reset),
                .clk_32f    (clk_32f),
                .IDLin      (out_serial2_conductual),

                //SALIDAS
                .data_serial_paraleloRX (data_serial_paraleloRX [7:0]),
                .active_serial_paraleloRX   (active),
                .IDLEOut    (IDLEOut)
);











    
    

    




