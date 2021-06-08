module demuxL1(
                input clk_4f,
				input clk_2f,
				input [7:0] data_serial_paralelo,
				input valid_serial_paralelo,
				input reset,
				output reg [15:0] datademuxl1,
				output reg valid_datademuxl10,
				output reg valid_datademuxl11); //tiene que ser reg para poder ser l-value

	reg [15:0] buffer;
	integer contador;


	always @(posedge clk_4f) 
    begin
		if(reset == 0) begin
			contador <= 0;
			valid_datademuxl10 <= 0;
			valid_datademuxl11 <= 0;
			datademuxl1 <= 0;
			buffer <= 0;
		end
		else begin
			if(valid_serial_paralelo == 1) begin
				buffer = {buffer[15:0], data_serial_paralelo};
				if (contador <= 3) begin
					datademuxl1 <= buffer;
					valid_datademuxl10 <= 1;
					valid_datademuxl11 <= 1;
				end
				contador <= contador + 1;

				if(contador == 3) contador <= 0;
			end
			else begin			//Caso valid_serial_paralelo 0
				if (contador == 4) begin
					valid_datademuxl10 <= 0;
					valid_datademuxl11 <= 0;
					contador <= 0;
				end
				contador= contador+1;
			end
		end
	end


endmodule