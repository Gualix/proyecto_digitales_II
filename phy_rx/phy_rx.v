`include "serial_paraleloRX.v"
`include "demuxes.v"
`include "PSRX.v"


module phy_rx(  input data_in,
            input clk_32f,
            input clk_4f,
            input clk_2f,
			input clk_f,
            input reset,
            output [7:0] out0,
            output [7:0] out1,
            output [7:0] out2,
            output [7:0] out3,
            output [7:0] data_serial_paraleloRX,

            output valid_datademuxL20,
            output valid_datademuxL21,
            output valid_datademuxL22,
            output valid_datademuxL23,            

            output out_serial2_conductual        
);

wire [7:0] data_serial_paraleloRX;
wire [15:0] salidaL1;
wire [7:0] salida1, salida2,salida3,salida4;
wire active_serial_paraleloRX,valid_serial_paraleloRX,valid_datademuxl10,valid_datademuxl11;


serial_paraleloRX serialparalelo(/*AUTOINST*/
				    // ENTRADAS
				    .reset		(reset),
				    .clk_4f		(clk_4f),
				    .clk_32f		(clk_32f),
				    .data_in		(data_in),
				    
				    // SALIDAS
				    .data_serial_paraleloRX		(data_serial_paraleloRX[7:0]),
				    .active_serial_paraleloRX	(active_serial_paraleloRX),
				    .valid_serial_paraleloRX	(valid_serial_paraleloRX)
                );



    demuxes demuxes(.Salida0	(out0[7:0]),
            .Salida1	(out1[7:0]),
             .Salida2	(out2[7:0]),
             .Salida3	(out3[7:0]),

		     .validsalida0	(valid_datademuxL20),
             .validsalida1	(valid_datademuxL21),
            .validsalida2	(valid_datademuxL22),
             .validsalida3	(valid_datademuxL23),

		     // Inputs
		     .validEntrada	(valid_serial_paraleloRX),
		     .Entrada(data_serial_paraleloRX[7:0]),

		     .clk_4f		(clk_4f),
		     .clk_2f		(clk_2f),
		     .clk_f		(clk_f),
                .clk_32f (clk_32f),

		     .reset		(reset));





    PSRX    Paralelo(   .clk_4f(clk_4f),
                        .clk_32f(clk_32f),
                        .active(active_serial_paraleloRX),
                        .out_serial2_conductual(out_serial2_conductual)
                        );


endmodule