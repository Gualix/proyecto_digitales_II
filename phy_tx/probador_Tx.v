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

    output reg reset,    //RESET
    output reg active,
    output reg out_serial2_conductual, //entrada IDLIN de serial a conductual 

    output reg clk_2f,  //RELOJ 2F
	output reg clk_f,    //RELOJ F
	output reg clk_4f,   //RELOJ 4F
	output reg clk_32f,   //RELOJ 4F
	//////
    input out_serial_conductual, //SALIDA DEL PARALELO-SERIAL A EL MODULO RX
    
    input [7:0] recirculador_desactivado0,  //SALIDA PARA EL PROBADOR
    input [7:0] recirculador_desactivado1,
    input [7:0] recirculador_desactivado2,
    input [7:0] recirculador_desactivado3
    );
    
    initial begin
	
	$dumpfile("PHYTX.vcd");
	$dumpvars;

    active<=1;
	
	{valid0, valid1, valid2, valid3, reset, out_serial2_conductual} <= 0;
	
	{data_in0} <= 8'h00;
    {data_in1} <= 8'h00;
    {data_in2} <= 8'h00;
    {data_in3} <= 8'h00;
    
	@(posedge clk_f);
	active <= 1;

	valid0 <= 1;
	valid1 <= 1;
	valid2 <= 1;
	valid3 <= 1;
	data_in0 <= 8'hCC;
	data_in1 <= 8'hFD;
    data_in2 <= 8'hAA;
    data_in3 <= 8'h12;
    @(posedge clk_2f);
	valid0 <= 0;
	@(posedge clk_2f);
	valid0 <= 1;
	@(posedge clk_2f);
	valid0 <= 0;
	@(posedge clk_2f);
	valid0 <= 1;


    @(posedge clk_4f);
    @(posedge clk_4f);
    @(posedge clk_2f);


	$finish;
	end
	
	initial clk_f <= 1;
	initial clk_2f <= 1;
	initial clk_4f <= 1;
	initial clk_32f <= 1;
	

	always #24 clk_f <= ~clk_f;
	always #16 clk_2f <= ~clk_2f;
	always #8 clk_4f <= ~clk_4f;
	always #1 clk_32f <= ~clk_32f;
	
	


endmodule