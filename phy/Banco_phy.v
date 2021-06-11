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
`include "sintetizado.v"
//`include "cmos_cells.v"

module BancoPruebas;

    wire reset;
    wire clk_f;
    wire clk_2f;
	wire clk_4f;
	wire clk_32f;

    wire [7:0] In_0, In_1, In_2, In_3;                  //Entradas para el modulo transmisor
    wire [7:0] out0_rx, out1_rx, out2_rx, out3_rx;  //Entradas para el modulo transmisor
    wire [7:0] out0_rxS, out1_rxS, out2_rxS, out3_rxS;  //Entradas para el modulo transmisor
    wire validIn_0, validIn_1, validIn_2, validIn_3;    //Validadores de entrada

phy phy_general(

    .reset(reset),
    .clk_f(clk_f),
    .clk_2f(clk_2f),
    .clk_4f(clk_4f),
    .clk_32f(clk_32f),

    .in0_tx(In_0),
    .in1_tx(In_1),
    .in2_tx(In_2),
    .in3_tx(In_3),

    .valid_in0_tx(validIn_0),
    .valid_in1_tx(validIn_1),
    .valid_in2_tx(validIn_2),
    .valid_in3_tx(validIn_3),

    .out0_rx(out0_rx),
    .out1_rx(out1_rx),
    .out2_rx(out2_rx),
    .out3_rx(out3_rx)


);

probador_phy Probador(
    .reset(reset),
    .clk_f(clk_f),
    .clk_2f(clk_2f),
    .clk_4f(clk_4f),
    .clk_32f(clk_32f),

    .data_in0(In_0),
    .data_in1(In_1),
    .data_in2(In_2),
    .data_in3(In_3),

    .valid0(validIn_0),
    .valid1(validIn_1),
    .valid2(validIn_2),
    .valid3(validIn_3),


    .out0_rx(out0_rx),
    .out1_rx(out1_rx),
    .out2_rx(out2_rx),
    .out3_rx(out3_rx),
    
    .out0_rxS(out0_rxS),
    .out1_rxS(out1_rxS),
    .out2_rxS(out2_rxS),
    .out3_rxS(out3_rxS)

);



endmodule
