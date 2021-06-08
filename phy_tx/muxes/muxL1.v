//se incluye el mux mas pequeño



//Se crea el mux de 4 entradas (bus de 8 bits cada una) y 2 salidas(bus de 8 bits),con sus respectivos valid tanto en entradas como salidas

module muxL1(
    
    //salida buses de 8 bits 2
    output [7:0]Salida0,
    output [7:0]Salida1,
    //salida valids
    output validsalida0,
    output validsalida1,
    
    //buses de entrada, 4 de 8 bits
    input [7:0] Entrada0,
    input [7:0] Entrada1,
    input [7:0] Entrada2,
    input [7:0] Entrada3,
    
    //valids de entrada 4
    input validEntrada0,
    input validEntrada1,
    input validEntrada2,
    input validEntrada3,
    
    //reloj
    input clk_2f,
    input reset);

    mux2x1 mux1(
        //Salidas
        .Salida_conductual  (Salida0[7:0]),  
        .validsalida (validsalida0),
        //Entradas
        .Entrada0    (Entrada0[7:0]),
        .Entrada1   (Entrada1[7:0]),
        .validEntrada0   (validEntrada0),
        .validEntrada1    (validEntrada1),
        .clk       (clk_2f),
        .reset     (reset)
    );
    
    mux2x1 mux2(
        //Salidas
        .Salida_conductual  (Salida1[7:0]),  
        .validsalida (validsalida1),
        //Entradas
        .Entrada0    (Entrada2[7:0]),
        .Entrada1   (Entrada3[7:0]),
        .validEntrada0   (validEntrada2),
        .validEntrada1    (validEntrada3),

        .clk       (clk_2f),
        .reset     (reset)
    );
endmodule
