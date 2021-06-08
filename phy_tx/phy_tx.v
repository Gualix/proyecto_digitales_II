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
			input data_from_Rx,

			output data_in,
);

wire [7:0] data_sp;
wire [15:0] salidaL1;
wire [7:0] salida1, salida2,salida3,salida4;
wire active_sp;
wire valid_sp;
wire valid_mux0;
wire valid_mux1;


SerialParalelo_Tx sp(/*AUTOINST*/		//Instanciando serial paralelo
				    // ENTRADAS

                );
muxL2 muxB(

);


muxL1 muxA( 
	.clk_2f(clk_2f),
				
	.data_L1(salidaL1),
				
	.valid_L10(valid_datademuxl10),
	.valid_L11(valid_datademuxl11),

	.reset(reset),
				
	.Entrada0(in0),
    .Entrada1(in1),
	.Entrada2(in2),
	.Entrada3(in3),
			
	.valid_0(validEntrada0),
	.valid_1(validEntrada1),
	.valid_2(validEntrada2),
	.valid_3(validEntrada3)

);

SerialParalelo_Tx paralelo(   

);


endmodule