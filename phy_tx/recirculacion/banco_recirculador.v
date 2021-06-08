`timescale 1ms/100ps

`include "recirculador.v"
`include "probador_recirculador.v"
`include "cmos_cells.v"
`include "recirculadorsintetizado.v"

module banco_recirculador;
	wire valid0, valid1, valid2, valid3;
	wire [7:0] data_in0;
	wire [7:0] data_in1; 
	wire [7:0] data_in2;
	wire [7:0] data_in3;
	
	wire valid_out_recirculador0, valid_out_recirculador1, valid_out_recirculador2, valid_out_recirculador3;
	wire valid_out_recirculador0s, valid_out_recirculador1s, valid_out_recirculador2s, valid_out_recirculador3s;
	
	wire [7:0] recirculador_activo0;
	wire [7:0] recirculador_activo1; 
	wire [7:0] recirculador_activo2;
	wire [7:0] recirculador_activo3;
	
	wire [7:0] recirculador_activo0s;
	wire [7:0] recirculador_activo1s; 
	wire [7:0] recirculador_activo2s;
	wire [7:0] recirculador_activo3s;
	
	wire [7:0] recirculador_desactivado0;
	wire [7:0] recirculador_desactivado1;
	wire [7:0] recirculador_desactivado2;
	wire [7:0] recirculador_desactivado3;
	
	wire [7:0] recirculador_desactivado0s;
	wire [7:0] recirculador_desactivado1s;
	wire [7:0] recirculador_desactivado2s;
	wire [7:0] recirculador_desactivado3s;
	
	wire clk, active, reset;
	
	
	recirculador r1(/*AUTOINST*/
		//ENTRADAS	
			.clk 		(clk),
			.reset 		(reset),
			.active 	(active),
			
			.valid0 	(valid0),
			.valid1 	(valid1),
			.valid2 	(valid2),
			.valid3 	(valid3),
			
			.data_in0 	(data_in0[7:0]),			
			.data_in1 	(data_in1[7:0]),
			.data_in2 	(data_in2[7:0]),
			.data_in3 	(data_in3[7:0]),
			

		//SALIDAS
			.valid_out_recirculador0 	(valid_out_recirculador0),
			.valid_out_recirculador1 	(valid_out_recirculador1),
			.valid_out_recirculador2 	(valid_out_recirculador2),
			.valid_out_recirculador3 	(valid_out_recirculador3),
			
			.recirculador_activo0 	(recirculador_activo0[7:0]),
			.recirculador_activo1 	(recirculador_activo1[7:0]),
			.recirculador_activo2 	(recirculador_activo2[7:0]),
			.recirculador_activo3 	(recirculador_activo3[7:0]),
			
			.recirculador_desactivado0 	(recirculador_desactivado0[7:0]),
			.recirculador_desactivado1 	(recirculador_desactivado1[7:0]),
			.recirculador_desactivado2 	(recirculador_desactivado2[7:0]),
			.recirculador_desactivado3 	(recirculador_desactivado3[7:0])
			
	);
	
	probador_recirculador prob_rec (/*AUTOINST*/
			//SALIDAS
			.clk (clk),
			.reset (reset),
			.active (active),
			
			.valid0 (valid0),
			.valid1 (valid1),
			.valid2 (valid2),
			.valid3 (valid3),
			
			.data_in0 (data_in0[7:0]),			
			.data_in1 (data_in1[7:0]),
			.data_in2 (data_in2[7:0]),
			.data_in3 (data_in3[7:0]),
			
			//ENTRADAS
			
			.valid_out_recirculador0 (valid_out_recirculador0),
			.valid_out_recirculador1 (valid_out_recirculador1),
			.valid_out_recirculador2 (valid_out_recirculador2),
			.valid_out_recirculador3 (valid_out_recirculador3),
			
			.recirculador_activo0 (recirculador_activo0[7:0]),
			.recirculador_activo1 (recirculador_activo1[7:0]),
			.recirculador_activo2 (recirculador_activo2[7:0]),
			.recirculador_activo3 (recirculador_activo3[7:0]),
			
			.recirculador_desactivado0 (recirculador_desactivado0[7:0]),
			.recirculador_desactivado1 (recirculador_desactivado1[7:0]),
			.recirculador_desactivado2 (recirculador_desactivado2[7:0]),
			.recirculador_desactivado3 (recirculador_desactivado3[7:0])	
	);
	
	recirculador_sintetizado sint (/*AUTOINST*/
			//SALIDAS
			.clk (clk),
			.reset (reset),
			.active (active),
			
			.valid0 (valid0),
			.valid1 (valid1),
			.valid2 (valid2),
			.valid3 (valid3),
			
			.data_in0 (data_in0[7:0]),			
			.data_in1 (data_in1[7:0]),
			.data_in2 (data_in2[7:0]),
			.data_in3 (data_in3[7:0]),
			
			//ENTRADAS
			
			.valid_out_recirculadors0 (valid_out_recirculador0s),
			.valid_out_recirculadors1 (valid_out_recirculador1s),
			.valid_out_recirculadors2 (valid_out_recirculador2s),
			.valid_out_recirculadors3 (valid_out_recirculador3s),
			
			.recirculador_activo0s (recirculador_activo0s[7:0]),
			.recirculador_activo1s (recirculador_activo1s[7:0]),
			.recirculador_activo2s (recirculador_activo2s[7:0]),
			.recirculador_activo3s (recirculador_activo3s[7:0]),
			
			.recirculador_desactivado0s (recirculador_desactivado0s[7:0]),
			.recirculador_desactivado1s (recirculador_desactivado1s[7:0]),
			.recirculador_desactivado2s (recirculador_desactivado2s[7:0]),
			.recirculador_desactivado3s (recirculador_desactivado3s[7:0])	
	);
	
	

		
endmodule
