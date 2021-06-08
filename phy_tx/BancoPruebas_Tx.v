// Banco de pruebas, donde se conectan los datos generados por el probador y el phy_tx


`timescale 1ms/100ps
`include "phy_tx.v"
`include "probador_Tx.v"

module BancoPruebas;

        wire reset;
		wire clk_4f;
		wire clk_32f;
        wire clk_2f;

		wire data_out;                  //Salida al receptor
        wire [7:0] data_sp;             //Entrada al paralelo serial
        wire [7:0] in0, in1, in2, in3;  //Entradas para el modulo transmisor
        wire validin0, validin1, validin2, validin3;    //Validadores de entrada
        wire recir;
        
        phy_tx transmisior(
 
            );
        probador_Tx Probador(
            


        );

endmodule
