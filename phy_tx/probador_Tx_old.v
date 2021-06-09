module probador_Tx (

	//Elementos que se generan por el probador (Salidas)
	output reg reset,			
	output reg clk_32f,			
	output reg clk_4f,			
	output reg clk_2f,
	output reg clk_f,

    output reg [7:0]Entrada0,		//Entradas para el recirculador
    output reg [7:0]Entrada1,		//Entradas para el recirculador
    output reg [7:0]Entrada2,		//Entradas para el recirculador			
    output reg [7:0]Entrada3,		//Entradas para el recirculador
	
    input [7:0]Salida_recirculador0,
    input [7:0]Salida_recirculador1,
    input [7:0]Salida_recirculador2,
    input [7:0]Salida_recirculador3,

    input [7:0]recirculador_desactivado0,
    input [7:0]recirculador_desactivado1,
    input [7:0]recirculador_desactivado2,
    input [7:0]recirculador_desactivado3, 
    
    output reg validEntrada0,
    output reg validEntrada1,
    output reg validEntrada2,
    output reg validEntrada3,


    input PSRX,
    output reg active_serial

	//Entradas para el probador (Entradas)
     	

	
);

	initial begin
	$dumpfile("ResultadosProbador.vcd");
	$dumpvars;
//	@(posedge clk_2f);

    {Entrada0} <= 8'h00;
    {Entrada1} <= 8'h00;
    {Entrada2} <= 8'h00;
    {Entrada3} <= 8'h00;
    	active_serial=1;
	@(posedge clk_f);
 
	//valid <= 1;
	//data_in <= 32'hEEFF9900;

	@(posedge clk_f);
	reset <= 1;
    validEntrada0 <= 1;
	validEntrada1 <= 1;
    validEntrada2 <= 1;
    validEntrada3 <= 1;


	/*Entrada <= 8'hEE;*/
    {Entrada0} <= 8'hEE;
    {Entrada1} <={Entrada1}+1;
    {Entrada2} <=8'hFF;
    {Entrada3} <=8'hFD;



	@(posedge clk_f);
	validEntrada0 <= 1;
    validEntrada1 <= 1;
    validEntrada2 <= 1;
    validEntrada3 <= 1;
    
	 
    
    {Entrada0} <={Entrada0}+1;
    {Entrada1} <={Entrada1}+1;
    {Entrada2} <={Entrada2}+1;
    {Entrada3} <={Entrada3}+1;
      
    @(posedge clk_f);


	@(posedge clk_f);
	validEntrada0 <= 1;
    validEntrada1 <= 1;
    validEntrada2 <= 1;
    validEntrada3 <= 1;


    {Entrada0} <={Entrada0}+1;
    {Entrada1} <={Entrada1}+1;
    {Entrada2} <={Entrada2}+1;
    {Entrada3} <={Entrada3}+1;


    
	@(posedge clk_f);
	validEntrada0 <= 1;
    validEntrada1 <= 1;
    validEntrada2 <= 1;
    validEntrada3 <= 1;


	{Entrada0} <={Entrada0}+1;
    {Entrada1} <={Entrada1}+1;
    {Entrada2} <={Entrada2}+1;
    {Entrada3} <={Entrada3}+1;

    @(posedge clk_f)

	@(posedge clk_f);
	validEntrada0 <= 1;
    validEntrada1 <= 1;
    validEntrada2 <= 1;
    validEntrada3 <= 1;


	{Entrada0} <={Entrada0}+1;
    {Entrada1} <={Entrada1}+1;
    {Entrada2} <={Entrada2}+1;
    {Entrada3} <={Entrada3}+1;
        selector<=selector+1;

	@(posedge clk_f);
	validEntrada0 <= 1;
    validEntrada1 <= 1;
    validEntrada2 <= 1;
    validEntrada3 <= 1;



	{Entrada0} <={Entrada0}+1;
    {Entrada1} <={Entrada1}+1;
    {Entrada2} <={Entrada2}+1;
    {Entrada3} <={Entrada3}+1;





	$finish;
	end

    initial clk_2f <= 0;
	always #32 clk_2f <= ~clk_2f;

	initial clk_2f <= 0;
	always #16 clk_2f <= ~clk_2f;


	initial clk_4f <= 1;
	always #8 clk_4f <= ~clk_4f;

	initial clk_32f <= 1;
	always #1 clk_32f <= ~cl