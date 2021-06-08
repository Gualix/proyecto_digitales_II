`include "muxL1.v"
`include "muxL2.v"

`include "paralelo_serial.v"
`include "SerialParalelo_Tx.v"


module phy_tx(  
            input clk_32f,
            input clk_4f,
            input clk_2f,
            input reset,

            input [7:0] in0,
            input [7:0] in1,
            input [7:0] in2,
            input [7:0] in3,

            input valid_0,
            input valid_1,
            input valid_2,
            input valid_3,  

            input valid_from_Rx,  
			input data_from_Rx,
			output data_to_rx
);

wire [7:0] data_sp;
wire [7:0] salidaDeMuxes;
wire [7:0] salidaA, salidaB;
wire validA, validB, validC;

wire active_sp;
wire valid_sp;
wire valid_mux0;
wire valid_mux1;


muxL1 muxA( 
	.clk_2f(clk_2f),
				
	.reset(reset),
				
	.Entrada0(in0),
    .Entrada1(in1),
	.Entrada2(in2),
	.Entrada3(in3),
			
	.validEntrada0(valid_0),
	.validEntrada1(valid_1),
	.validEntrada2(valid_2),
	.validEntrada3(valid_3),

	.Salida0(salidaA),
	.Salida1(salidaB),
				
	.validsalida0(validA),
	.validsalida1(validB)

);

muxL2 muxB(

	.clk_4f(clk_4f),
	.reset(reset),

	.Entrada0(salidaA),
	.Entrada1(salidaB),

	.validEntrada0(validA),
	.validEntrada1(validB),

	.validsalida(validC),

	.Salida_conductual(salidaDeMuxes)

);


paralelo_serial ps(

	.clk_4f(clk_4f),
	.clk_32f(clk_32f),
	.reset(reset),

	.valid_in(validC),
	.in_serial(salidaDeMuxes),
	.out_serial_conductual(data_to_rx)

);

SerialParalelo_Tx sp(/*AUTOINST*/		//Instanciando serial paralelo
				    // ENTRADAS
	.clk_4f(clk_4f),
	.clk_32f(clk_32f),

//	.active(),
	.out_serial2_conductual(data_from_Rx)
);




endmodule