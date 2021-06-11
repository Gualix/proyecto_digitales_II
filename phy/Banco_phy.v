 /* ***********************************************************
                    Universidad de Costa Rica
                 Escuela de Ingenieria Electrica
                            IE-0325
                      Circuitos Digitales 2

                        Banco_phy.v

Descripcion:
  Banco de pruebas, donde se conectan los datos generados por el probador y el phy.v

*********************************************************** */

`timescale 1ms/100ps
`include "phy.v"
`include "probador_phy.v"

module BancoPruebas;

    wire reset;
    wire clk_f;
    wire clk_2f;
	wire clk_4f;
	wire clk_32f;

    wire [7:0] In_0, In_1, In_2, In_3;                      //Entradas para el modulo transmisor
    wire validIn_0, validIn_1, validIn_2, validIn_3;        //Validadores de entrada
    
    wire [7:0] res_In_0, res_In_1, res_In_2, res_In_3;      //Salidas del recirculadorpara el modulo transmisor
    wire validRes_0, validRes_1, validRes_2, validRes_3;    //Validadores de salida del recirculador

    wire [7:0] Out_0, Out_1, Out_2, Out_3;                      //Salidas del receptor
    wire validOut_0, validOut_1, validOut_2, validOut_3;    //Validadores de entrada

phy phy_general(/*AUTOINST*/

    .reset(reset),
    .clk_f(clk_f),
    .clk_2f(clk_2f),
    .clk_4f(clk_4f),
    .clk_32f(clk_32f),

    .in0_tx(In_0),              // Se conectan las entradas al transmisor
    .in1_tx(In_1),
    .in2_tx(In_2),
    .in3_tx(In_3),

    .valid_in0_tx(validIn_0),   // Se conectan los valids de entradas al transmisor
    .valid_in1_tx(validIn_1),
    .valid_in2_tx(validIn_2),
    .valid_in3_tx(validIn_3),

    .out0_tx(res_In_0),          // Se conectan las salidas del recirculador a las entradas
    .out1_tx(res_In_1),
    .out2_tx(res_In_2),
    .out3_tx(res_In_3),

    .valid_out0_tx(validRes_0),  // Se conectan los valids a las entradas
    .valid_out1_tx(validRes_1),
    .valid_out2_tx(validRes_2),
    .valid_out3_tx(validRes_3),

    .out0_rx(Out_0),            // Conexión de las salidas del receptor
    .out1_rx(Out_1),
    .out2_rx(Out_2),
    .out3_rx(Out_3),

    .valid_out0_rx(validOut_0), // Conexión de los valids de salidas del receptor
    .valid_out1_rx(validOut_1),
    .valid_out2_rx(validOut_2),
    .valid_out3_rx(validOut_3)

);

probador_tx Probador(/*AUTOINST*/
    .reset(reset),
    .clk_f(clk_f),
    .clk_2f(clk_2f),
    .clk_4f(clk_4f),
    .clk_32f(clk_32f),

    .in0_tx(In_0),              // Se conectan las entradas al transmisor
    .in1_tx(In_1),
    .in2_tx(In_2),
    .in3_tx(In_3),

    .valid_in0_tx(validIn_0),   // Se conectan los valids de entradas al transmisor
    .valid_in1_tx(validIn_1),
    .valid_in2_tx(validIn_2),
    .valid_in3_tx(validIn_3),

    .out0_tx(res_In_0),          // Se conectan las salidas del recirculador a las entradas
    .out1_tx(res_In_1),
    .out2_tx(res_In_2),
    .out3_tx(res_In_3),

    .valid_out0_tx(validRes_0),  // Se conectan los valids a las entradas
    .valid_out1_tx(validRes_1),
    .valid_out2_tx(validRes_2),
    .valid_out3_tx(validRes_3),

    .out0_rx(Out_0),            // Conexión de las salidas del receptor
    .out1_rx(Out_1),
    .out2_rx(Out_2),
    .out3_rx(Out_3),

    .valid_out0_rx(validOut_0), // Conexión de los valids de salidas del receptor
    .valid_out1_rx(validOut_1),
    .valid_out2_rx(validOut_2),
    .valid_out3_rx(validOut_3)

);

endmodule