//se incluye el mux mas pequeño
`include "demux1x2.v"    
//Se crea el mux de 4 entradas (bus de 8 bits cada una) y 2 salidas(bus de 8 bits),con sus respectivos valid tanto en entradas como salidas
module demuxL2(
	//salida 8 bits
    output [7:0]Salida_conductual0,
    output [7:0]Salida_conductual1,
    
    //salida valid
    output validsalida0,
    output validsalida1,
    
    //entradas
    //2 buses de bits de entrada 8 cada uno
    input [7:0]Entrada,
    
    //2 valids entrada
    input validEntrada,
    
    //clk
    input clk_2f,
    input clk_4f,
        input clk_32f,

    input reset);

    demux1x2 demux1(
        //Salidas
        .Salida_conductual0  (Salida_conductual0[7:0]), 
        .Salida_conductual1 (Salida_conductual1[7:0]),
        .validsalida0 (validsalida0),
        .validsalida1 (validsalida1),
        //Entradas
        .Entrada    (Entrada[7:0]),
        .validEntrada   (validEntrada),
        .clk       (clk_4f),
        .reset     (reset)
    );
endmodule
