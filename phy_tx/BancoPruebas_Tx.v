`timescale 1ms/100ps
`include "phy_tx.v"
`include "probador_Tx.v"

module BancoPruebas;

		wire data_in;
		wire clk_4f;
		wire clk_32f;
        wire clk_2f;
        wire [7:0] data_serial_paraleloRX;
        wire reset;
        wire [7:0] Salida0,Salida1,Salida2,Salida3;
        wire validSalida0, validSalida1,validSalida2,validSalida3,out_serial2_conductual;
        
        phy_tx transmisior(

            .data_in(data_in),
            .clk_32f(clk_32f),
            .clk_4f(clk_4f),
            .clk_2f(clk_2f),
            .data_serial_paraleloRX(data_serial_paraleloRX[7:0]),
            .reset(reset),
            .out0(Salida0[7:0]),
            .out1(Salida1),
            .out2(Salida2),
            .out3(Salida3),
            .valid_datademuxL20(validSalida0),
            .valid_datademuxL21(validSalida1),
            .valid_datademuxL22(validSalida2),
            .valid_datademuxL23(validSalida3),
                        

            .out_serial2_conductual()        
            );
        probador_Tx Probador(
            
            .data_in(data_in),			//entrada de datos a 32f
	        .reset(reset),			//
			.clk_32f(clk_32f),			//clock frecuencia 32
			.clk_4f(clk_4f),
            .clk_2f(clk_2f),
            .validSalida0(validSalida0),
            .validSalida1(validSalida1),
            .validSalida2(validSalida2),
            .validSalida3(validSalida3),
            .Salida0(Salida0),
            .Salida1(Salida1),
            .Salida2(Salida2),
            .Salida3(Salida3),
            .out_serial2_conductual(out_serial2_conductual)



        );

endmodule
