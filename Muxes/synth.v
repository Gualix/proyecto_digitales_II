/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* src = "mux2x1.v:1" *)
module synth1(Salida, validSalida, Entrada0, Entrada1, validEntrada0, validEntrada1, selector, clk, reset);
  (* src = "mux2x1.v:13" *)
  wire [7:0] _00_;
  wire [7:0] _01_;
  wire [7:0] _02_;
  wire [7:0] _03_;
  (* src = "mux2x1.v:4" *)
  input [7:0] Entrada0;
  (* src = "mux2x1.v:5" *)
  input [7:0] Entrada1;
  (* src = "mux2x1.v:1" *)
  output [7:0] Salida;
  reg [7:0] Salida;
  (* src = "mux2x1.v:9" *)
  input clk;
  (* src = "mux2x1.v:10" *)
  input reset;
  (* src = "mux2x1.v:8" *)
  input selector;
  (* src = "mux2x1.v:6" *)
  input validEntrada0;
  (* src = "mux2x1.v:7" *)
  input validEntrada1;
  (* src = "mux2x1.v:2" *)
  output validSalida;
  assign _03_[0] = validEntrada1 ? (* src = "mux2x1.v:24" *) Entrada1[0] : 1'h0;
  assign _03_[1] = validEntrada1 ? (* src = "mux2x1.v:24" *) Entrada1[1] : 1'h0;
  assign _03_[2] = validEntrada1 ? (* src = "mux2x1.v:24" *) Entrada1[2] : 1'h0;
  assign _03_[3] = validEntrada1 ? (* src = "mux2x1.v:24" *) Entrada1[3] : 1'h0;
  assign _03_[4] = validEntrada1 ? (* src = "mux2x1.v:24" *) Entrada1[4] : 1'h0;
  assign _03_[5] = validEntrada1 ? (* src = "mux2x1.v:24" *) Entrada1[5] : 1'h0;
  assign _03_[6] = validEntrada1 ? (* src = "mux2x1.v:24" *) Entrada1[6] : 1'h0;
  assign _03_[7] = validEntrada1 ? (* src = "mux2x1.v:24" *) Entrada1[7] : 1'h0;
  assign _01_[0] = validEntrada0 ? (* src = "mux2x1.v:18" *) Entrada0[0] : 1'h0;
  assign _01_[1] = validEntrada0 ? (* src = "mux2x1.v:18" *) Entrada0[1] : 1'h0;
  assign _01_[2] = validEntrada0 ? (* src = "mux2x1.v:18" *) Entrada0[2] : 1'h0;
  assign _01_[3] = validEntrada0 ? (* src = "mux2x1.v:18" *) Entrada0[3] : 1'h0;
  assign _01_[4] = validEntrada0 ? (* src = "mux2x1.v:18" *) Entrada0[4] : 1'h0;
  assign _01_[5] = validEntrada0 ? (* src = "mux2x1.v:18" *) Entrada0[5] : 1'h0;
  assign _01_[6] = validEntrada0 ? (* src = "mux2x1.v:18" *) Entrada0[6] : 1'h0;
  assign _01_[7] = validEntrada0 ? (* src = "mux2x1.v:18" *) Entrada0[7] : 1'h0;
  assign _02_[0] = selector ? (* src = "mux2x1.v:17" *) _03_[0] : _01_[0];
  assign _02_[1] = selector ? (* src = "mux2x1.v:17" *) _03_[1] : _01_[1];
  assign _02_[2] = selector ? (* src = "mux2x1.v:17" *) _03_[2] : _01_[2];
  assign _02_[3] = selector ? (* src = "mux2x1.v:17" *) _03_[3] : _01_[3];
  assign _02_[4] = selector ? (* src = "mux2x1.v:17" *) _03_[4] : _01_[4];
  assign _02_[5] = selector ? (* src = "mux2x1.v:17" *) _03_[5] : _01_[5];
  assign _02_[6] = selector ? (* src = "mux2x1.v:17" *) _03_[6] : _01_[6];
  assign _02_[7] = selector ? (* src = "mux2x1.v:17" *) _03_[7] : _01_[7];
  assign _00_[0] = reset ? (* src = "mux2x1.v:16" *) _02_[0] : 1'h0;
  assign _00_[1] = reset ? (* src = "mux2x1.v:16" *) _02_[1] : 1'h0;
  assign _00_[2] = reset ? (* src = "mux2x1.v:16" *) _02_[2] : 1'h0;
  assign _00_[3] = reset ? (* src = "mux2x1.v:16" *) _02_[3] : 1'h0;
  assign _00_[4] = reset ? (* src = "mux2x1.v:16" *) _02_[4] : 1'h0;
  assign _00_[5] = reset ? (* src = "mux2x1.v:16" *) _02_[5] : 1'h0;
  assign _00_[6] = reset ? (* src = "mux2x1.v:16" *) _02_[6] : 1'h0;
  assign _00_[7] = reset ? (* src = "mux2x1.v:16" *) _02_[7] : 1'h0;
  (* src = "mux2x1.v:13" *)
  always @(posedge clk)
      Salida[5] <= _00_[5];
  (* src = "mux2x1.v:13" *)
  always @(posedge clk)
      Salida[6] <= _00_[6];
  (* src = "mux2x1.v:13" *)
  always @(posedge clk)
      Salida[7] <= _00_[7];
  (* src = "mux2x1.v:13" *)
  always @(posedge clk)
      Salida[0] <= _00_[0];
  (* src = "mux2x1.v:13" *)
  always @(posedge clk)
      Salida[1] <= _00_[1];
  (* src = "mux2x1.v:13" *)
  always @(posedge clk)
      Salida[2] <= _00_[2];
  (* src = "mux2x1.v:13" *)
  always @(posedge clk)
      Salida[3] <= _00_[3];
  (* src = "mux2x1.v:13" *)
  always @(posedge clk)
      Salida[4] <= _00_[4];
endmodule

(* src = "muxL1.v:4" *)
module synth2(Salida0, Salida1, validSalida0, validSalida1, Entrada0, Entrada1, Entrada2, Entrada3, validEntrada0, validEntrada1, validEntrada2, validEntrada3, selector, clk, reset);
  (* src = "muxL1.v:9" *)
  input [7:0] Entrada0;
  (* src = "muxL1.v:10" *)
  input [7:0] Entrada1;
  (* src = "muxL1.v:11" *)
  input [7:0] Entrada2;
  (* src = "muxL1.v:12" *)
  input [7:0] Entrada3;
  (* src = "muxL1.v:5" *)
  output [7:0] Salida0;
  (* src = "muxL1.v:6" *)
  output [7:0] Salida1;
  (* src = "muxL1.v:18" *)
  input clk;
  (* src = "muxL1.v:19" *)
  input reset;
  (* src = "muxL1.v:17" *)
  input selector;
  (* src = "muxL1.v:13" *)
  input validEntrada0;
  (* src = "muxL1.v:14" *)
  input validEntrada1;
  (* src = "muxL1.v:15" *)
  input validEntrada2;
  (* src = "muxL1.v:16" *)
  input validEntrada3;
  (* src = "muxL1.v:7" *)
  output validSalida0;
  (* src = "muxL1.v:8" *)
  output validSalida1;
  (* module_not_derived = 32'd1 *)
  (* src = "muxL1.v:21" *)
  synth1 mux1 (
    .Entrada0(Entrada0),
    .Entrada1(Entrada1),
    .Salida(Salida0),
    .clk(clk),
    .reset(reset),
    .selector(selector),
    .validEntrada0(validEntrada0),
    .validEntrada1(validEntrada1),
    .validSalida(validSalida0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "muxL1.v:34" *)
  synth1 mux2 (
    .Entrada0(Entrada2),
    .Entrada1(Entrada3),
    .Salida(Salida1),
    .clk(clk),
    .reset(reset),
    .selector(selector),
    .validEntrada0(validEntrada2),
    .validEntrada1(validEntrada3),
    .validSalida(validSalida1)
  );
endmodule

(* src = "synth3.v:5" *)
module synth3(Salida, validSalida, Entrada0, Entrada1, validEntrada0, validEntrada1, selector, clk, reset);
  (* src = "synth3.v:8" *)
  input [7:0] Entrada0;
  (* src = "synth3.v:9" *)
  input [7:0] Entrada1;
  (* src = "synth3.v:6" *)
  output [7:0] Salida;
  (* src = "synth3.v:13" *)
  input clk;
  (* src = "synth3.v:14" *)
  input reset;
  (* src = "synth3.v:12" *)
  input selector;
  (* src = "synth3.v:10" *)
  input validEntrada0;
  (* src = "synth3.v:11" *)
  input validEntrada1;
  (* src = "synth3.v:7" *)
  output validSalida;
  (* module_not_derived = 32'd1 *)
  (* src = "synth3.v:16" *)
  synth1 mux1 (
    .Entrada0(Entrada0),
    .Entrada1(Entrada1),
    .Salida(Salida),
    .clk(clk),
    .reset(reset),
    .selector(selector),
    .validEntrada0(validEntrada0),
    .validEntrada1(validEntrada1),
    .validSalida(validSalida)
  );
endmodule

(* top =  1  *)
(* src = "Muxes.v:3" *)
module synth(Salida, validSalida0, validSalida1, validEntrada0, validEntrada1, validEntrada2, validEntrada3, Entrada0, Entrada1, Entrada2, Entrada3, selector, clk_4f, clk_2f, clk_f, reset);
  (* src = "Muxes.v:11" *)
  input [7:0] Entrada0;
  (* src = "Muxes.v:12" *)
  input [7:0] Entrada1;
  (* src = "Muxes.v:13" *)
  input [7:0] Entrada2;
  (* src = "Muxes.v:14" *)
  input [7:0] Entrada3;
  (* src = "Muxes.v:4" *)
  output [7:0] Salida;
  (* src = "Muxes.v:17" *)
  input clk_2f;
  (* src = "Muxes.v:16" *)
  input clk_4f;
  (* src = "Muxes.v:18" *)
  input clk_f;
  (* src = "Muxes.v:19" *)
  input reset;
  (* src = "Muxes.v:22" *)
  wire [7:0] salida0;
  (* src = "Muxes.v:22" *)
  wire [7:0] salida1;
  (* src = "Muxes.v:15" *)
  input selector;
  (* src = "Muxes.v:7" *)
  input validEntrada0;
  (* src = "Muxes.v:8" *)
  input validEntrada1;
  (* src = "Muxes.v:9" *)
  input validEntrada2;
  (* src = "Muxes.v:10" *)
  input validEntrada3;
  (* src = "Muxes.v:5" *)
  output validSalida0;
  (* src = "Muxes.v:6" *)
  output validSalida1;
  (* module_not_derived = 32'd1 *)
  (* src = "Muxes.v:40" *)
  synth3 muxitol2 (
    .Entrada0(salida0),
    .Entrada1(salida1),
    .Salida(Salida),
    .clk(clk_2f),
    .reset(reset),
    .selector(selector),
    .validEntrada0(validEntrada0),
    .validEntrada1(validEntrada1),
    .validSalida(validSalida0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "Muxes.v:23" *)
  synth2 muxl1 (
    .Entrada0(Entrada0),
    .Entrada1(Entrada0),
    .Entrada2(Entrada2),
    .Entrada3(Entrada3),
    .Salida0(salida0),
    .Salida1(salida1),
    .clk(clk_f),
    .reset(reset),
    .selector(selector),
    .validEntrada0(validEntrada0),
    .validEntrada1(validEntrada1),
    .validEntrada2(validEntrada2),
    .validEntrada3(validEntrada3),
    .validSalida0(validSalida0),
    .validSalida1(validSalida1)
  );
endmodule