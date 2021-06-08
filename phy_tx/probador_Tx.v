

module probador_Tx (
			
	//entradas
	output reg data_in,			//entrada de datos a 32f
	output reg reset,			//
	output reg clk_32f,			//clock frecuencia 32
	output reg clk_4f,			//clock frecuencia 4
	output reg clk_2f,
	
	//Salidas
    input out_serial2_conductual,//salida de paralelo serial rx
    input out_serial2_conductual_s,//salida paralelo seria rx sint
    input [7:0]Salida0,//salida demux
    input [7:0]Salida1,//salida demux
    input [7:0]Salida2,//salida demux
    input [7:0]Salida3,//salida demux
    input validSalida0,
    input validSalida1,
    input validSalida2,
    input validSalida3,
    input [7:0]Salida0s,//salida demux sint
    input [7:0]Salida1s,//salida demux sint
    input [7:0]Salida2s,//salida demux sint
    input [7:0]Salida3s,//salida demux sint
    input validSalida0s,
    input validSalida1s,
    input validSalida2s,
    input validSalida3s
	
);

	initial begin
	$dumpfile("ResultadosProbador.vcd");
	$dumpvars;
	@(posedge clk_2f);


	@(posedge clk_4f);
	reset <= 0;
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;


			
	$finish;
	end
	initial clk_2f <= 0;
	always #16 clk_2f <= ~clk_2f;


	initial clk_4f <= 1;
	always #8 clk_4f <= ~clk_4f;

	initial clk_32f <= 1;
	always #1 clk_32f <= ~clk_32f;

endmodule
