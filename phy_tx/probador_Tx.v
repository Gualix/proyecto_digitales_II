//Módulo donde se generan los datos para realizar las pruebas a la conexión del phy_tx


module probador_Tx (

	//Elementos que se generan por el probador (Salidas)
	output reg reset,			
	output reg clk_32f,			
	output reg clk_4f,			
	output reg clk_2f,
    output [7:0]In0,		//Entradas para el recirculador
    output [7:0]In1,		//Entradas para el recirculador
    output [7:0]In2,		//Entradas para el recirculador			
    output [7:0]In3,		//Entradas para el recirculador
	output validIn0,
    output validIn1,
    output validIn2,
    output validIn3,

	//Entradas para el probador (Entradas)
    input in_to_sp, 	

	
);

	initial begin
	$dumpfile("ResultadosProbador.vcd");
	$dumpvars;
//	@(posedge clk_2f);

	$finish;
	end
	initial clk_2f <= 0;
	always #16 clk_2f <= ~clk_2f;


	initial clk_4f <= 1;
	always #8 clk_4f <= ~clk_4f;

	initial clk_32f <= 1;
	always #1 clk_32f <= ~clk_32f;

endmodule
