//se incluye el mux mas pequeño
`include "mux2x1.v"    
//Se crea el mux de 4 entradas (bus de 8 bits cada una) y 2 salidas(bus de 8 bits),con sus respectivos valid tanto en entradas como salidas
module muxL2(
	//salida 8 bits
    output [7:0]Salida_conductual,
    //salida valid
    output validsalida,
    
    //entradas
    //2 buses de bits de entrada 8 cada uno
    input [7:0]Entrada0,
    input [7:0]Entrada1,
    
    //2 valids entrada
    input validEntrada0,
    input validEntrada1,
    
    //clk
    input clk_4f,
    input reset);

    mux2x1 mux1(
        //Salidas
        .Salida_conductual  (Salida_conductual[7:0]),  
        .validsalida (validsalida),
        //Entradas
        .Entrada0    (Entrada0[7:0]),
        .Entrada1   (Entrada1[7:0]),
        .validEntrada0   (validEntrada0),
        .validEntrada1    (validEntrada1),
        .clk       (clk_4f),
        .reset     (reset)
    );
endmodule
