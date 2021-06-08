module demuxL2(
                input clk_2f,
				input clk_f,
				
				input [15:0] data_L1,
				
				input valid_L10,
				input valid_L11,

				input reset,
				
				output reg [7:0] datademuxL2_1,
				output reg [7:0] datademuxL2_2,
				output reg [7:0] datademuxL2_3,
				output reg [7:0] datademuxL2_4,


				output reg valid_datademuxL20,
				output reg valid_datademuxL21,
				output reg valid_datademuxL22,
				output reg valid_datademuxL23); //tiene que ser reg para poder ser l-value

	reg [31:0] buffer;
	integer contador;


	always @(posedge clk_2f) 
    begin
		if(reset == 0) begin
			contador <= 0;
			valid_datademuxL20 <= 0;
			valid_datademuxL21 <= 0;
			valid_datademuxL22 <= 0;
			valid_datademuxL23 <= 0;
			datademuxL2_1 <= 0;
			datademuxL2_2 <= 0;
			datademuxL2_3 <= 0;
			datademuxL2_4 <= 0;
			buffer <= 0;
		end
		else begin
			if(valid_L10 == 1 && valid_L11 ==1) begin
				buffer = {buffer[31:0], data_L1};
				if (contador <= 7) begin
					datademuxL2_1[7:0] <= buffer[7:0];
					datademuxL2_2[7:0] <= buffer[15:8];
					datademuxL2_3[7:0] <= buffer[23:16];
					datademuxL2_4[7:0] <= buffer[31:24];
					valid_datademuxL20 <= 1;
					valid_datademuxL21 <= 1;
					valid_datademuxL22 <= 1;
					valid_datademuxL23 <= 1;
				end
				contador <= contador + 1;

				if(contador == 7) contador <= 0;
			end
			else begin			//Caso valid_L10 0
				if (contador == 8) begin
					valid_datademuxL20 <= 0;
					valid_datademuxL21 <= 0;
					valid_datademuxL22 <= 0;
					valid_datademuxL23 <= 0;
					contador <= 0;
				end
				contador= contador+1;
			end
		end
	end


endmodule