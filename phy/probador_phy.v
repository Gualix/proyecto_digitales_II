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
	
		
	initial clk_f <= 1;
	initial clk_2f <= 1;
	initial clk_4f <= 1;
	initial clk_32f <= 1;
	

	always #32 clk_f <= ~clk_f;
	always #16 clk_2f <= ~clk_2f;
	always #8 clk_4f <= ~clk_4f;
	always #1 clk_32f <= ~clk_32f;


endmodule

