

module probador_Tx (
			
	
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
