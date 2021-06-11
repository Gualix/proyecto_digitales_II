module probador_demux(
    input [7:0]Salida0,
    input [7:0]Salida1,
    input [7:0]Salida2,
    input [7:0]Salida3,

    input validsalida0,
    input validsalida1,
    input validsalida2,
    input validsalida3, 


    output reg validEntrada,
    output reg [7:0] Entrada,
    output reg clk_32f,
    output reg clk_2f,
    output reg clk_4f,
    output reg clk_f,
    output reg reset);

    initial begin
        $dumpfile ("demux.vcd");
        $dumpvars;


        {reset} = 1'b1;
        {validEntrada} = 1'b1;
        {Entrada} = 8'b00000000;
          {Entrada} = 8'h00;
           @(posedge clk_2f);
        
         {Entrada} = 8'h10;

            @(posedge clk_2f);
         {Entrada} = 8'h02;
            @(posedge clk_2f);
         {Entrada} = 8'hF0;
            @(posedge clk_2f);
         {Entrada} = 8'hAC;
            @(posedge clk_2f);
         {Entrada} = 8'hDB;
            @(posedge clk_2f);
                {Entrada} = 8'h00;
           @(posedge clk_2f);
         {Entrada} = 8'h10;
            @(posedge clk_2f);
         {Entrada} = 8'h02;
            @(posedge clk_2f);
         {Entrada} = 8'hF0;
            @(posedge clk_2f);
         {Entrada} = 8'hAC;
            @(posedge clk_2f);
         {Entrada} = 8'hDB;
            @(posedge clk_2f);
        @(posedge clk_2f);
        @(posedge clk_2f);
         {Entrada} = 8'h00;
           @(posedge clk_2f);
         {Entrada} = 8'h10;
            @(posedge clk_2f);
         {Entrada} = 8'h02;
            @(posedge clk_2f);
         {Entrada} = 8'hF0;
            @(posedge clk_2f);
         {Entrada} = 8'hAC;
            @(posedge clk_2f);
         {Entrada} = 8'hDB;
            @(posedge clk_2f);
            
         {Entrada} = 8'h29;
            @(posedge clk_2f);
         @(posedge clk_2f);
         {Entrada} = 8'hA8;
            @(posedge clk_2f);
         {Entrada} = 8'hF9;
            @(posedge clk_2f);
         {Entrada} = 8'h00;
            @(posedge clk_2f);
         {Entrada} = 8'h00;
         
            @(posedge clk_2f);
         {Entrada} = 8'h01;
            @(posedge clk_2f);
         {Entrada} = 8'h75;
            @(posedge clk_2f);
         {Entrada} = 8'h43;
            @(posedge clk_2f);
         {Entrada} = 8'hF9;
            @(posedge clk_2f);
            @(posedge clk_2f);  
          @(posedge clk_2f);
         @(posedge clk_f);
        @(posedge clk_2f);
             @(posedge clk_2f);
        @(posedge clk_2f);
        @(posedge clk_2f);
         {Entrada} = 8'h00;
           @(posedge clk_2f);
         {Entrada} = 8'h10;
            @(posedge clk_2f);
         {Entrada} = 8'h02;
            @(posedge clk_2f);
         {Entrada} = 8'hF0;
            @(posedge clk_2f);
         {Entrada} = 8'hAC;
            @(posedge clk_2f);
         {Entrada} = 8'hDB;
            @(posedge clk_2f);
            
         {Entrada} = 8'h29;
            @(posedge clk_2f);
         @(posedge clk_2f);
         {Entrada} = 8'hA8;
            @(posedge clk_2f);
         {Entrada} = 8'hF9;
            @(posedge clk_2f);
         {Entrada} = 8'h00;
            @(posedge clk_2f);
         {Entrada} = 8'h00;
         
            @(posedge clk_2f);
         {Entrada} = 8'h01;
            @(posedge clk_2f);
         {Entrada} = 8'h75;
            @(posedge clk_2f);
         {Entrada} = 8'h43;
            @(posedge clk_2f);
         {Entrada} = 8'hF9;
            @(posedge clk_2f);
            @(posedge clk_2f);  
          @(posedge clk_2f);
       
        $finish;
    end

  
	
	initial clk_f <= 1;
	initial clk_2f <= 1;
	initial clk_4f <= 1;
	initial clk_32f <= 1;
	

	always #32 clk_f <= ~clk_f;
	always #16 clk_2f <= ~clk_2f;
	always #8 clk_4f <= ~clk_4f;
	always #1 clk_32f <= ~clk_32f;
endmodule