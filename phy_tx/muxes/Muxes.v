`include "muxL2.v"
`include "muxL1.v"
module Muxes(
                        //salida del L2
                        output  [7:0] Salida_conductual,
					    
					    output validsalida,
						//output validsalida1,
						
						//valids entrada primero L1
						input validEntrada0,
                        input validEntrada1,
                        input validEntrada2,
                        input validEntrada3,
                        
                        //entrada L1 DATOS
                        input [7:0] Entrada0,
						input [7:0] Entrada1,
                        input [7:0] Entrada2,
						input [7:0] Entrada3,
						
						//relojes
						input clk_4f,
						input clk_2f,
						input clk_f,
						input reset                     
    );
    //SALIDA DEL L1
    wire [7:0] Salida0, Salida1;
	wire validsalida0, validsalida1;
	
		muxL1 muxl1( 
			
			//ENTRADAS
			.clk_2f			(clk_2f),
			.reset			(reset),
			
			.validEntrada0	(validEntrada0),
			.validEntrada1	(validEntrada1),
			.validEntrada2	(validEntrada2),
			.validEntrada3	(validEntrada3),
			
			.Entrada0		(Entrada2[7:0]), 
			.Entrada1		(Entrada3[7:0]), 
			.Entrada2		(Entrada0[7:0]), 
			.Entrada3		(Entrada1[7:0]), 
			
			//SALIDAS
			.validsalida0	(validsalida0),
			.validsalida1	(validsalida1),
			
			.Salida0		(Salida0[7:0]),
			.Salida1		(Salida1[7:0])
			);


		muxL2 muxitol2( 
			
			//ENTRADAS
			.Entrada0			(Salida0	[7:0]),
			.Entrada1			(Salida1 	[7:0]),
			
			.validEntrada0		(validsalida0),
			.validEntrada1		(validsalida1),
			
			.clk_4f				(clk_4f),
			.reset 				(reset),
			
			.Salida_conductual	(Salida_conductual [7:0]),
			.validsalida		(validsalida0)
		
			);
			
endmodule 
