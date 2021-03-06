`include "serial_paraleloRX.v"
`include "demuxL1.v"
`include "demuxL2.v"
`include "PSRX.v"


module Rx(  input data_in,
            input clk_32f,
            input clk_4f,
            input clk_2f,
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
    demuxL1 L2(
        
                .clk_4f(clk_4f),
				.clk_2f(clk_2f),
				.data_serial_paralelo(data_serial_paraleloRX),
				.valid_serial_paralelo(valid_serial_paraleloRX),
				.reset(reset),
				.datademuxl1(salidaL1),
				.valid_datademuxl10(valid_datademuxl10),
				.valid_datademuxl11(valid_datademuxl11)


    );


    demuxL2 L1( .clk_2f(clk_2f),
				.clk_f(clk_f),
				
				.data_L1(salidaL1),
				
				.valid_L10(valid_datademuxl10),
				.valid_L11(valid_datademuxl11),

				.reset(reset),
				
				.datademuxL2_1(out0),
      			.datademuxL2_2(out1),
				.datademuxL2_3(out2),
				.datademuxL2_4(out3),

				.valid_datademuxL20(valid_datademuxL20),
				.valid_datademuxL21(valid_datademuxL21),
				.valid_datademuxL22(valid_datademuxL22),
				.valid_datademuxL23(valid_datademuxL23)

    );

    PSRX    Paralelo(   .clk_4f(clk_4f),
                        .clk_32f(clk_32f),
                        .active(active_serial_paraleloRX),
                        .out_serial2_conductual(out_serial2_conductual)
                        );


endmodule