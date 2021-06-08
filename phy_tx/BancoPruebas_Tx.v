// Banco de pruebas, donde se conectan los datos generados por el probador y el phy_tx


`timescale 1ms/100ps
`include "phy_tx.v"
`include "probador_Tx.v"

module BancoPruebas;

        wire reset;
		wire clk_4f;
		wire clk_32f;
        wire clk_2f;

		wire data_out;                                      //Salida al receptor
        wire data_sp;                                       //Entrada al serial paralelo
        wire active;                                       //Entrada al serial paralelo
        wire [7:0] In_0, In_1, In_2, In_3;                  //Entradas para el modulo transmisor
        wire [7:0] res_In_0, res_In_1, res_In_2, res_In_3;                  //Entradas para el modulo transmisor
        wire validIn_0, validIn_1, validIn_2, validIn_3;    //Validadores de entrada
        

        phy_tx transmisior(
 
            .reset(reset),
            .active(active),
            .clk_f(clk_f),
            .clk_2f(clk_2f),
            .clk_4f(clk_4f),
            //.clk_32f(clk_32f),

            .data_in0(In_0),
            .data_in1(In_1),
            .data_in2(In_2),
            .data_in3(In_3),

            .valid0(validIn_0),
            .valid1(validIn_1),
            .valid2(validIn_2),
            .valid3(validIn_3),

            .out_serial_conductual(data_out),
            .out_serial2_conductual(data_sp),

            .recirculador_desactivado0(res_In_0),
            .recirculador_desactivado1(res_In_1),
            .recirculador_desactivado2(res_In_2),
            .recirculador_desactivado3(res_In_3)

);


        probador_tx Probador(
            
            .reset(reset),
            .clk_f(clk_f),
            .clk_2f(clk_2f),
            .clk_4f(clk_4f),
            .active(active),
            //.clk_32f(clk_32f),

            .data_in0(In_0),
            .data_in1(In_1),
            .data_in2(In_2),
            .data_in3(In_3),

            .valid0(validIn_0),
            .valid1(validIn_1),
            .valid2(validIn_2),
            .valid3(validIn_3),

            .recirculador_desactivado0(res_In_0),
            .recirculador_desactivado1(res_In_1),
            .recirculador_desactivado2(res_In_2),
            .recirculador_desactivado3(res_In_3),

            .out_serial2_conductual(data_sp),
            .out_serial_conductual(data_out)

        );

endmodule
