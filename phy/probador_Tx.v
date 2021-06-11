//Módulo donde se generan los datos para realizar las pruebas a la conexión del phy_tx


module probador_tx (

	output reg [7:0] data_in0,   //DATOS DE ENTRADA
	output reg [7:0] data_in1,   //BUSES DE 8 BITS X 4
	output reg [7:0] data_in2,
	output reg [7:0] data_in3,

    output reg valid0,   //VALIDS DE ENTRADA X4
	output reg valid1,
	output reg valid2,
	output reg valid3,       

    output reg reset,    //Reset

    //output reg active,

    output reg in_from_rx, //Entrada de datos que vienen del receptor

	output reg clk_f,    	//Reloj f
    output reg clk_2f,  	//Reloj 2xf
	output reg clk_4f,   	//Reloj 4xf
	output reg clk_32f,   	//Reloj 32xf
	
	//Salida del Tx (No se usa)
    input out_to_rx, 	//Salida de datos del transmisor
    
    input [7:0] recirculador_desactivado0,  //SALIDA PARA EL PROBADOR
    input [7:0] recirculador_desactivado1,
    input [7:0] recirculador_desactivado2,
    input [7:0] recirculador_desactivado3
    );
    
    initial begin
	
	$dumpfile("PHY_TX.vcd");
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

/*

	// primero

	@(posedge clk_4f);
	//reset <= 0;
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

	// Segundo

	@(posedge clk_4f);
	//reset <= 0;
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

	// Tercero

	@(posedge clk_4f);
	//reset <= 0;
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

	// Cuarto

	@(posedge clk_4f);
	//reset <= 0;
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

	// Quinto

	@(posedge clk_4f);
	//reset <= 0;
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

	*/
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