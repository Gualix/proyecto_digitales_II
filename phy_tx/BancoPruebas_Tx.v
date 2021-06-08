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
 
            );
        probador_Tx Probador(
            


        );

endmodule
