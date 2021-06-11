<<<<<<< HEAD
module probador_phy(

    input [7:0]out0_rx,
      input [7:0] out1_rx,
        input [7:0] out2_rx,
          input [7:0] out3_rx,
          
			input [7:0] out0_rxS,
			input [7:0] out1_rxS,
			input [7:0] out2_rxS,
			input [7:0] out3_rxS,


	output reg clk_f,    	//Reloj f
    output reg clk_2f,  	//Reloj 2xf
	output reg clk_4f,   	//Reloj 4xf
	output reg clk_32f,

    output reg [7:0] data_in0,
    output reg [7:0] data_in1,
    output reg [7:0] data_in2,
    output reg  [7:0] data_in3,

    output reg valid0,
    output reg valid1,
    output reg valid2,
    output reg valid3,

    output reg reset

);

    initial begin
	
	$dumpfile("PHY.vcd");
	$dumpvars;

	{valid0,valid1,valid2,valid3, reset} <= 0;
	{data_in0} <= 8'h00;
    {data_in1} <= 8'h00;
    {data_in2} <= 8'h00;
    {data_in3} <= 8'h00;

 
 
	
	@(posedge clk_2f);

 
	//valid <= 1;
	//data_in <= 32'hEEFF9900;

	@(posedge clk_f);
	reset <= 1;
    valid0 <= 1;
	valid1 <= 1;
    valid2 <= 1;
    valid3 <= 1;


	/*Entrada <= 8'hEE;*/
    {data_in0} <= 8'hEE;
    {data_in1} <={data_in1}+1;
    {data_in2} <=8'hFF;
    {data_in3} <=8'hFD;



	@(posedge clk_f);
	valid0 <= 1;
    valid1 <= 1;
    valid2 <= 1;
    valid3 <= 1;
    
	 
    
    {data_in0} <={data_in0}+1;
    {data_in1} <={data_in1}+1;
    {data_in2} <={data_in2}+1;
    {data_in3} <={data_in3}+1;
      

 

	@(posedge clk_f);
	valid0 <= 1;
    valid1 <= 1;
    valid2 <= 1;
    valid3 <= 1;


    {data_in0} <={data_in0}+1;
    {data_in1} <={data_in1}+1;
    {data_in2} <={data_in2}+1;
    {data_in3} <={data_in3}+1;




    
	@(posedge clk_f);
	valid0 <= 1;
    valid1 <= 1;
    valid2 <= 1;
    valid3 <= 1;


	{data_in0} <={data_in0}+1;
    {data_in1} <={data_in1}+1;
    {data_in2} <={data_in2}+1;
    {data_in3} <={data_in3}+1;


	@(posedge clk_f);
	valid0 <= 1;
    valid1 <= 1;
    valid2 <= 1;
    valid3 <= 1;


	{data_in0} <={data_in0}+1;
    {data_in1} <={data_in1}+1;
    {data_in2} <={data_in2}+1;
    {data_in3} <={data_in3}+1;
     

	@(posedge clk_f);
	valid0 <= 1;
    valid1 <= 1;
    valid2 <= 1;
    valid3 <= 1;



	{data_in0} <={data_in0}+1;
    {data_in1} <={data_in1}+1;
    {data_in2} <={data_in2}+1;
    {data_in3} <={data_in3}+1;

	@(posedge clk_f);
	valid0 <= 1;
    valid1 <= 1;
    valid2 <= 1;
    valid3 <= 1;


    {data_in0} <={data_in0}+1;
    {data_in1} <={data_in1}+1;
    {data_in2} <={data_in2}+1;
    {data_in3} <={data_in3}+1;


	@(posedge clk_f);
	valid0 <= 1;
    valid1 <= 1;
    valid2 <= 1;
    valid3 <= 1;


    {data_in0} <={data_in0}+1;
    {data_in1} <={data_in1}+1;
    {data_in2} <={data_in2}+1;
    {data_in3} <={data_in3}+1;


	@(posedge clk_f);
	valid0 <= 1;
    valid1 <= 1;
    valid2 <= 1;
    valid3 <= 1;


    {data_in0} <={data_in0}+1;
    {data_in1} <={data_in1}+1;
    {data_in2} <={data_in2}+1;
    {data_in3} <={data_in3}+1;


	@(posedge clk_f);
	valid0 <= 1;
    valid1 <= 1;
    valid2 <= 1;
    valid3 <= 1;


    {data_in0} <={data_in0}+1;
    {data_in1} <={data_in1}+1;
    {data_in2} <={data_in2}+1;
    {data_in3} <={data_in3}+1;


	@(posedge clk_f);
	valid0 <= 1;
    valid1 <= 1;
    valid2 <= 1;
    valid3 <= 1;


    {data_in0} <={data_in0}+1;
    {data_in1} <={data_in1}+1;
    {data_in2} <={data_in2}+1;
    {data_in3} <={data_in3}+1;


	@(posedge clk_f);
	valid0 <= 1;
    valid1 <= 1;
    valid2 <= 1;
    valid3 <= 1;


    {data_in0} <={data_in0}+1;
    {data_in1} <={data_in1}+1;
    {data_in2} <={data_in2}+1;
    {data_in3} <={data_in3}+1;


	@(posedge clk_f);
	valid0 <= 1;
    valid1 <= 1;
    valid2 <= 1;
    valid3 <= 1;


    {data_in0} <={data_in0}+1;
    {data_in1} <={data_in1}+1;
    {data_in2} <={data_in2}+1;
    {data_in3} <={data_in3}+1;


	@(posedge clk_f);
	valid0 <= 1;
    valid1 <= 1;
    valid2 <= 1;
    valid3 <= 1;


    {data_in0} <={data_in0}+1;
    {data_in1} <={data_in1}+1;
    {data_in2} <={data_in2}+1;
    {data_in3} <={data_in3}+1;



	@(posedge clk_f);
	$finish;
	end
	
		
=======

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
	
>>>>>>> fe90fb26041a45386c1f93e80221dcb88cbbcc8e
	initial clk_f <= 1;
	initial clk_2f <= 1;
	initial clk_4f <= 1;
	initial clk_32f <= 1;
	

	always #32 clk_f <= ~clk_f;
	always #16 clk_2f <= ~clk_2f;
	always #8 clk_4f <= ~clk_4f;
<<<<<<< HEAD
	always #1 clk_32f <= ~clk_32f;


endmodule

=======
	//always #1 clk_32f <= ~clk_32f;
	
	
endmodule
>>>>>>> fe90fb26041a45386c1f93e80221dcb88cbbcc8e
