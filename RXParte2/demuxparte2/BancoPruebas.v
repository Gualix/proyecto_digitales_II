`include "demuxes.v"
`include "probador_demux.v"

`timescale 	1ns	/ 1ns
module Banco_demux;

	wire [7:0] Salida0,Salida1,Salida2,Salida3;
	wire [7:0] Entrada;
	wire clk_f,clk_2f, clk_4f, clk_32f,validSalida0, validSalida1,validSalida2,validSalida3, validEntrada;


      

        demuxes demuxes(/*AUTOINST*/
		     // Outputs
		     .Salida0	(Salida0[7:0]),
            .Salida1	(Salida1[7:0]),
             .Salida2	(Salida2[7:0]),
             .Salida3	(Salida3[7:0]),

		     .validsalida0	(validsalida0),
             .validsalida1	(validsalida1),
            .validsalida2	(validsalida2),
             .validsalida3	(validsalida3),

		     // Inputs
		     .validEntrada	(validEntrada),
		     .Entrada(Entrada[7:0]),

		     .clk_4f		(clk_4f),
		     .clk_2f		(clk_2f),
		     .clk_f		(clk_f),
                .clk_32f (clk_32f),

		     .reset		(reset));



     

    probador_demux probador(/*AUTOINST*/
			  // Outputs
		    .Salida0	(Salida0[7:0]),
            .Salida1	(Salida1[7:0]),
             .Salida2	(Salida2[7:0]),
             .Salida3	(Salida3[7:0]),

		     .validsalida0	(validsalida0),
             .validsalida1	(validsalida1),
            .validsalida2	(validsalida2),
             .validsalida3	(validsalida3),

		     // Inputs
		     .validEntrada	(validEntrada),
		     .Entrada(Entrada[7:0]),

		     .clk_4f		(clk_4f),
		     .clk_2f		(clk_2f),
		     .clk_f		(clk_f),
             .clk_32f (clk_32f),
		     .reset		(reset));

endmodule