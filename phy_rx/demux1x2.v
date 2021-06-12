module demux1x2 (output reg [7:0] Salida_conductual0,
            output reg [7:0] Salida_conductual1,
            output reg validsalida0,
            output reg validsalida1,
            
	        input [7:0] Entrada,
            input validEntrada,
            input clk,
            input clk_2f,
            input reset);
            
reg selector;        
        always@(posedge clk) begin
           
       
                if (reset==1)begin //Si el reset es 1 el flop puede tomar el valor de alguna de las dos entradas
                    selector <= ~selector;
                    case(selector)
                        0:  begin
                            
                          if (validEntrada==1)begin
                              
                             Salida_conductual0<=Entrada; // Segun el valor del selector este dato irá a la salida del flop
                             validsalida0<=1;   
                          end

                                else begin
                                Salida_conductual0<=0;
                                end
                
                         
                        end

                        1:   begin
                                if(validEntrada==1)begin 
                                 Salida_conductual1<=Entrada;
                                 validsalida1<=1;  
                                end
                            else begin
                            
                                Salida_conductual1<=0;
                                end
                             //Cambia para tomar entrada 0
                        end
                    endcase
                end    
                else begin
                Salida_conductual0<=0; //Condicion dada en el enunciado, si el reset es cero el flop toma valor de 00
                Salida_conductual1<=0;
                selector<=0;

                end
            end
/*

always@(posedge clk_2f)begin
 selector <= 1;
        if (selector==1)begin
        selector<=0;
        end
        else begin
            selector<=1;
        end
end*/
endmodule