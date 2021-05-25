module Mux2x1 (output reg Salida,
            output validSalida,
            input  Entrada0,
            input  Entrada1,
            input validEntrada0,
            input validEntrada1,
            input selector, 
            input clk,
            input reset);
            
            always@(posedge clk) begin
                if (reset_L==1) //Si el reset es 1 el flop puede tomar el valor de alguna de las dos entradas
                    if(selector==0)
                        Salida<=Entrada0; // Segun el valor del selector este dato irá a la salida del flop
                    else
                        Salida<=Entrada1;
                else
                Salida<=2'b00; //Condicion dada en el enunciado, si el reset es cero el flop toma valor de 00
            end
endmodule