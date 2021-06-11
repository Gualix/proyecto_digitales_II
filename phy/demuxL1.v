
module demuxL1(
    
    //salida buses de 8 bits 2
    output [7:0]Salida0,
    output [7:0]Salida1,
    output [7:0]Salida2,
    output [7:0]Salida3,
    //salida valids
    output validsalida0,
    output validsalida1,
    output validsalida2,
    output validsalida3,   
    //buses de entrada, 4 de 8 bits
    input [7:0] Entrada0,
    input [7:0] Entrada1,
    
    //valids de entrada 4
    input validEntrada0,
    input validEntrada1,
    
    //reloj
    input clk_f,
    input reset);

    demux1x2 demuxL11(
  //salida 8 bits
    .Salida_conductual0(Salida0[7:0]),
    .Salida_conductual1(Salida1[7:0]),
    
    //salida valid
    .validsalida0(validsalida0),
    .validsalida1(validsalida1),
    
    //entradas
    //2 buses de bits de entrada 8 cada uno
    .Entrada(Entrada0[7:0]),
    
    //2 valids entrada
    .validEntrada(validEntrada0),
    
    //clk
    .clk(clk_f),
    .reset(reset)
    );
    
    demux1x2 demuxL12(
  //salida 8 bits
    .Salida_conductual0(Salida2[7:0]),
    .Salida_conductual1(Salida3[7:0]),
    
    //salida valid
    .validsalida0(validsalida2),
    .validsalida1(validsalida3),
    
    //entradas
    //2 buses de bits de entrada 8 cada uno
    .Entrada(Entrada1[7:0]),
    
    //2 valids entrada
    .validEntrada(validEntrada1),
    
    //clk
    .clk(clk_f),
    .reset(reset)
    );
endmodule
