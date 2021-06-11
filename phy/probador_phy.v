
module probador_phy(
	
	//input cond				
	output clk_f,             //Reloj f
    output clk_2f,            //Reloj 2f
    output clk_4f,            //Reloj 4f
    output clk_32f,           //Reloj 32f

    output reset,             //Reinicio del circuito

    output [7:0] in0_tx,      //Entrada 0 al transmisor
    output [7:0] in1_tx,      //Entrada 1 al transmisor
    output [7:0] in2_tx,      //Entrada 2 al transmisor
    output [7:0] in3_tx,      //Entrada 3 al transmisor

    output valid_in0_tx,      //Valid de entrada 0 al transmisor
	output valid_in1_tx,      //Valid de entrada 1 al transmisor
	output valid_in2_tx,      //Valid de entrada 2 al transmisor
	output valid_in3_tx,      //Valid de entrada 3 al transmisor
	
	//output cond
	
    input [7:0] out0_tx,    //Salida del recirculador 0 
    input [7:0] out1_tx,    //Salida del recirculador 1 
    input [7:0] out2_tx,    //Salida del recirculador 2 
    input [7:0] out3_tx,    //Salida del recirculador 3 
    input valid_out0_tx,    //Valid de salida del recirculador 0 
    input valid_out1_tx,    //Valid de salida del recirculador 1  
    input valid_out2_tx,    //Valid de salida del recirculador 2  
    input valid_out3_tx,    //Valid de salida del recirculador 3 

    input [7:0] out0_rx,    //Salida 0 al transmisor
    input [7:0] out1_rx,    //Salida 1 al transmisor
    input [7:0] out2_rx,    //Salida 2 al transmisor
    input [7:0] out3_rx,    //Salida 3 al transmisor
    input valid_out0_rx,    //Validad de salida 0 al transmisor
	input valid_out1_rx,    //Validad de salida 1 al transmisor
	input valid_out2_rx,    //Validad de salida 2 al transmisor
	input valid_out3_rx     //Validad de salida 3 al transmisor
);

	initial begin
	$dumpfile("phy.vcd");
	$dumpvars;
	
	{valid_in0_tx, valid_in1_tx, valid_in2_tx, valid_in3_tx} <= 0;
	{in0_tx} <= 8'h00;
    	{in1_tx} <= 8'hEE;
    	{in2_tx} <= 8'hFF;
    	{in3_tx} <= 8'hFD;
    
			repeat (1) begin
		
		@(posedge clk_f);
		reset<=1;
		end
		
	@(posedge clk_f)
		reset <= 1;
		in0_tx <= 8'b00000000;
		in1_tx <= 8'b00001110;
		in2_tx <= 8'b00001110;
		in3_tx <= 8'b01001110;
		
		valid_in0_tx <= 1;
		valid_in1_tx <= 1;
		valid_in2_tx <= 1;
		valid_in3_tx <= 1;
		
		@(posedge clk_f)
		reset <= 1;

		in0_tx <= 8'b11000000;
		in1_tx <= 8'b10001110;
		in2_tx <= 8'b10001110;
		in3_tx <= 8'b00001010;
		
		valid_in0_tx <= 1;
		valid_in1_tx <= 1;
		valid_in2_tx <= 1;
		valid_in3_tx <= 1;
		
		@(posedge clk_f)
		reset <= 0;

		in0_tx <= 8'b11000000;
		in1_tx <= 8'b10001110;
		in2_tx <= 8'b10001110;
		in3_tx <= 8'b00001010;
		
		valid_in0_tx <= 0;
		valid_in1_tx <= 0;
		valid_in2_tx <= 0;
		valid_in3_tx <= 0;
		
		@(posedge clk_f)
		reset <= 0;

		in0_tx <= 8'b11000000;
		in1_tx <= 8'b10001110;
		in2_tx <= 8'b10001110;
		in3_tx <= 8'b00001010;
		
		valid_in0_tx <= 1;
		valid_in1_tx <= 1;
		valid_in2_tx <= 1;
		valid_in3_tx <= 1;
		
		
		@(posedge clk_f)
		reset <= 0;

		in0_tx <= 8'b11000100;
		in1_tx <= 8'b10011110;
		in2_tx <= 8'b10001110;
		in3_tx <= 8'b00001010;
		
		valid_in0_tx <= 0;
		valid_in1_tx <= 0;
		valid_in2_tx <= 0;
		valid_in3_tx <= 0;
		
		@(posedge clk_f)
		reset <= 1;
		in0_tx <= 8'b00000000;
		in1_tx <= 8'b00001110;
		in2_tx <= 8'b00001110;
		in3_tx <= 8'b01001110;
		
		valid_in0_tx <= 1;
		valid_in1_tx <= 1;
		valid_in2_tx <= 1;
		valid_in3_tx <= 1;
		
		@(posedge clk_f)
		reset <= 1;

		in0_tx <= 8'b11000000;
		in1_tx <= 8'b10001110;
		in2_tx <= 8'b10001110;
		in3_tx <= 8'b00001010;
		
		valid_in0_tx <= 0;
		valid_in1_tx <= 0;
		valid_in2_tx <= 0;
		valid_in3_tx <= 0;
		
		@(posedge clk_f)
		reset <= 0;

		in0_tx <= 8'b11000000;
		in1_tx <= 8'b10001110;
		in2_tx <= 8'b10001110;
		in3_tx <= 8'b00001010;
		
		valid_in0_tx <= 1;
		valid_in1_tx <= 1;
		valid_in2_tx <= 1;
		valid_in3_tx <= 1;
		
		@(posedge clk_f)
		reset <= 0;

		in0_tx <= 8'b11000000;
		in1_tx <= 8'b10001110;
		in2_tx <= 8'b10001110;
		in3_tx <= 8'b00001010;
		
		valid_in0_tx <= 1;
		valid_in1_tx <= 1;
		valid_in2_tx <= 1;
		valid_in3_tx <= 1;
	
	@(posedge clk_f);
	@(posedge clk_f);
	@(posedge clk_f);
	@(posedge clk_f);
	@(posedge clk_f);

	$finish;
	end
	
	initial clk_f <= 1;
	initial clk_2f <= 1;
	initial clk_4f <= 1;
	initial clk_32f <= 1;
	

	always #32 clk_f <= ~clk_f;
	always #16 clk_2f <= ~clk_2f;
	always #8 clk_4f <= ~clk_4f;
	//always #1 clk_32f <= ~clk_32f;
	
	
endmodule
