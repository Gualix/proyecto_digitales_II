`include "demuxL2.v"
`include "demuxL1.v"
module demuxes(
                        //salida del L2
                        output [7:0]Salida0,
                       output [7:0]Salida1,
                        output [7:0]Salida2,
                        output [7:0]Salida3,
					    
					    output validsalida0,
                        output validsalida1,
                        output validsalida2,
                        output validsalida3, 
						//output validsalida1,
						
						//valids entrada primero L1
						input [7:0]Entrada,
    
                    //2 valids entrada
                        input validEntrada,
    
						//relojes
                        input clk_32f,
						input clk_4f,
						input clk_2f,
						input clk_f,
						input reset                     
    );
    //SALIDA DEL L1
    wire [7:0] Entrada0, Entrada1;
	wire validsalida0L1, validsalida1L1;
	
		demuxL1 demuxitl1( 
			
			//ENTRADAS
			.clk_f			(clk_f),
			.reset			(reset),
			
			.validEntrada0	(validsalida0L1),
			.validEntrada1	(validsalida1L1),
			
			.Entrada0		(Entrada0[7:0]), 
			.Entrada1		(Entrada1[7:0]), 
			
			//SALIDAS
			.validsalida0	(validsalida0),
			.validsalida1	(validsalida1),
            .validsalida2	(validsalida2),
            .validsalida3	(validsalida3),
			
			.Salida0		(Salida0[7:0]),
			.Salida1		(Salida1[7:0]),
            .Salida3		(Salida2[7:0]),
			.Salida2		(Salida3[7:0])
			);


		demuxL2 demuxitoL2( 
			
			//ENTRADAS
			.Entrada			(Entrada[7:0]),
			
            .validEntrada (validEntrada),

				.clk_2f				(clk_2f),
			.clk_4f				(clk_4f),
            .clk_32f				(clk_32f),
			.reset 				(reset),
			//Salidas
			.Salida_conductual0	    (Entrada0 [7:0]),
			.Salida_conductual1		(Entrada1[7:0]),
            .validsalida0(validsalida0L1),
            .validsalida1(validsalida1L1)
           
		
			);
			
endmodule 
