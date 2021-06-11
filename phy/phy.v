 /* ***********************************************************
                    Universidad de Costa Rica
                 Escuela de Ingenieria Electrica
                            IE-0325
                      Circuitos Digitales 2

                            phy.v

Descripcion:
  Conexión de los módulos: phy_rx y el phy_tx

*********************************************************** */

`include "phy_tx.v"     //Se incluye el módulo del circuito transmisor
`include "phy_rx.v"     //Se incluye el módulo del circuito receptor

module phy (

    // ---------- Entradas al phy ------------------------

	input clk_f,             //Reloj f
    input clk_2f,            //Reloj 2f
    input clk_4f,            //Reloj 4f
    input clk_32f,           //Reloj 32f

    input reset,             //Reinicio del circuito

    input [7:0] in0_tx,      //Entrada 0 al transmisor
    input [7:0] in1_tx,      //Entrada 1 al transmisor
    input [7:0] in2_tx,      //Entrada 2 al transmisor
    input [7:0] in3_tx,      //Entrada 3 al transmisor

    input valid_in0_tx,      //Valid de entrada 0 al transmisor
	input valid_in1_tx,      //Valid de entrada 1 al transmisor
	input valid_in2_tx,      //Valid de entrada 2 al transmisor
	input valid_in3_tx,      //Valid de entrada 3 al transmisor
    
    // ---------- Salidas del phy ------------------------

    output [7:0] out0_tx,    //Salida del recirculador 0 
    output [7:0] out1_tx,    //Salida del recirculador 1 
    output [7:0] out2_tx,    //Salida del recirculador 2 
    output [7:0] out3_tx,    //Salida del recirculador 3 
    output valid_out0_tx,    //Valid de salida del recirculador 0 
    output valid_out1_tx,    //Valid de salida del recirculador 1  
    output valid_out2_tx,    //Valid de salida del recirculador 2  
    output valid_out3_tx,    //Valid de salida del recirculador 3 

    output [7:0] out0_rx,    //Salida 0 al transmisor
    output [7:0] out1_rx,    //Salida 1 al transmisor
    output [7:0] out2_rx,    //Salida 2 al transmisor
    output [7:0] out3_rx,    //Salida 3 al transmisor
    output valid_out0_rx,    //Validad de salida 0 al transmisor
	output valid_out1_rx,    //Validad de salida 1 al transmisor
	output valid_out2_rx,    //Validad de salida 2 al transmisor
	output valid_out3_rx     //Validad de salida 3 al transmisor

);

    //---------- Interconexión entre módulos ------------------------

    wire out_tx;         //Salida de datos del tx para el rx
    wire out_rx;         //Salida de datos del rx para el tx


phy_tx transmisor(
    /*AUTOINST*/

    // Se interconectan los clocks
    .clk_f(clk_f),
    .clk_2f(clk_2f),
    .clk_4f(clk_4f),
    .clk_32f(clk_32f),
    // Reinicio del circuito
    .reset(reset),

    // Se interconectan las entradas de datos
    .data_in0(in0_tx),
    .data_in1(in1_tx),
    .data_in2(in2_tx),
    .data_in3(in3_tx),
    // Se interconectan los valids de las entradas de datos
    .valid0(valid_in0_tx),
    .valid1(valid_in1_tx),
    .valid2(valid_in2_tx),
    .valid3(valid_in3_tx),
    // Se interconectan las salidas del recirculador
    .recirculador_desactivado0(out0_tx),
    .recirculador_desactivado1(out1_tx),
    .recirculador_desactivado2(out2_tx),
    .recirculador_desactivado3(out3_tx),

    //Entrada de datos del rx
    .in_from_rx(out_rx),
    //Salida de datos al rx
    .out_to_rx(out_tx)

);

phy_rx receptor(
	/*AUTOINST*/
	
    // Se interconectan los clocks
    //.clk_f(clk_f),        // No se usa en el receptor
    .clk_2f(clk_2f),
    .clk_4f(clk_4f),
    .clk_32f(clk_32f),
    // Reinicio del circuito
    .reset(reset),

    // Se interconectan las entradas de datos
    .out0(out0_rx),
    .out1(out1_rx),
    .out2(out2_rx),
    .out3(out3_rx),
    // Se interconectan los valids de las entradas de datos
    .valid_datademuxL20(valid_out0_rx),
    .valid_datademuxL21(valid_out1_rx),
    .valid_datademuxL22(valid_out2_rx),
    .valid_datademuxL23(valid_out3_rx),

    //Entrada de datos del rx
    .out_serial2_conductual(out_rx),
    //Salida de datos al tx
    .data_in(out_tx)

);

endmodule