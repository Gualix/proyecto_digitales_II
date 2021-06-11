
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
	
	//active<=1;
	{valid0, valid1, valid2, valid3, reset,in_from_rx} <= 0;
	{data_in0} <= 8'h00;
    {data_in1} <= 8'hEE;
    {data_in2} <= 8'hFF;
    {data_in3} <= 8'hFD;
    
	@(posedge clk_f);
	
	reset <= 1;
	valid0 <= 1;
	valid1 <= 1;
	valid2 <= 1;
	valid3 <= 1;
	data_in0 <= 8'hFC;
	data_in1 <= 8'hFD;
    data_in2 <= 8'hCA;
    data_in3 <= 8'h12;
	@(posedge clk_32f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;

	@(posedge clk_2f);

	valid0 <= 0;
	valid1 <= 0;
	valid2 <= 0;
	valid3 <= 0;
	data_in0 <= 8'hCC;
	data_in1 <= 8'hF0;
    data_in2 <= 8'hAA;
    data_in3 <= 8'h11;
	@(posedge clk_32f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;
	
	@(posedge clk_4f);

	@(posedge clk_32f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;

	@(posedge clk_2f);

	valid0 <= 1;
	valid1 <= 1;
	valid2 <= 1;
	valid3 <= 1;
	data_in0 <= 8'hCA;
	data_in1 <= 8'hF1;
    data_in2 <= 8'hCA;
    data_in3 <= 8'h05;
	@(posedge clk_32f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;

	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;

	@(posedge clk_f);
	{data_in0} <= 8'h10;
    {data_in1} <= 8'h2E;
    {data_in2} <= 8'h3F;
    {data_in3} <= 8'hF5;
	@(posedge clk_32f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;

	@(posedge clk_f);
	{data_in0} <= 8'h02;
    {data_in1} <= 8'h4C;
    {data_in2} <= 8'h89;
    {data_in3} <= 8'h10;
	@(posedge clk_32f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_f);
	{data_in0} <= 8'h85;
    {data_in1} <= 8'hBC;
    {data_in2} <= 8'hDF;
    {data_in3} <= 8'hEF;
	@(posedge clk_32f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_f);
	{data_in0} <= 8'h92;
    {data_in1} <= 8'hF1;
    {data_in2} <= 8'h05;
    {data_in3} <= 8'h56;
		@(posedge clk_4f);
	
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;


	@(posedge clk_4f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;

	@(posedge clk_4f);

	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;

	@(posedge clk_4f);
	in_from_rx<=1;

	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;

	@(posedge clk_4f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;

	@(posedge clk_4f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;

	@(posedge clk_4f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;

	@(posedge clk_4f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;

	@(posedge clk_4f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;

	@(posedge clk_4f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;
	
	@(posedge clk_4f);
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;

	@(posedge clk_4f);
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=0;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;
	@(posedge clk_32f)
	in_from_rx<=1;

	@(posedge clk_4f);
	in_from_rx<=1;

	
	@(posedge clk_f);
	
	@(posedge clk_f);


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
