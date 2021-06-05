/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "synth.v:4" *)
module synth(Salida_estructural, validsalida0, validsalida1, validEntrada0, validEntrada1, validEntrada2, validEntrada3, Entrada0, Entrada1, Entrada2, Entrada3, clk_4f, clk_2f, clk_f, reset);
  (* src = "synth.v:12" *)
  input [7:0] Entrada0;
  (* src = "synth.v:13" *)
  input [7:0] Entrada1;
  (* src = "synth.v:14" *)
  input [7:0] Entrada2;
  (* src = "synth.v:15" *)
  input [7:0] Entrada3;
  (* src = "synth.v:22" *)
  wire [7:0] Salida0;
  (* src = "synth.v:22" *)
  wire [7:0] Salida1;
  (* src = "synth.v:5" *)
  output [7:0] Salida_estructural;
  (* src = "synth.v:17" *)
  input clk_2f;
  (* src = "synth.v:16" *)
  input clk_4f;
  (* src = "synth.v:18" *)
  input clk_f;
  (* src = "synth.v:19" *)
  input reset;
  (* src = "synth.v:8" *)
  input validEntrada0;
  (* src = "synth.v:9" *)
  input validEntrada1;
  (* src = "synth.v:10" *)
  input validEntrada2;
  (* src = "synth.v:11" *)
  input validEntrada3;
  (* src = "synth.v:6" *)
  output validsalida0;
  (* src = "synth.v:7" *)
  output validsalida1;
  (* module_not_derived = 32'd1 *)
  (* src = "synth.v:39" *)
  synth3 muxitol2 (
    .Entrada0(Salida0),
    .Entrada1(Salida1),
    .Salida_estructural(Salida_estructural),
    .clk_4f(clk_4f),
    .reset(reset),
    .validEntrada0(validEntrada0),
    .validEntrada1(validEntrada1),
    .validsalida(validsalida0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "synth.v:23" *)
  synth2 muxl1 (
    .Entrada0(Entrada0),
    .Entrada1(Entrada1),
    .Entrada2(Entrada2),
    .Entrada3(Entrada3),
    .Salida0(Salida0),
    .Salida1(Salida1),
    .clk_2f(clk_2f),
    .reset(reset),
    .validEntrada0(validEntrada0),
    .validEntrada1(validEntrada1),
    .validEntrada2(validEntrada2),
    .validEntrada3(validEntrada3),
    .validsalida0(validsalida0),
    .validsalida1(validsalida1)
  );
endmodule

(* src = "synth1.v:1" *)
module synth1(Salida_estructural, validsalida, Entrada0, Entrada1, validEntrada0, validEntrada1, clk, reset);
  (* src = "synth1.v:12" *)
  wire [7:0] _00_;
  (* src = "synth1.v:12" *)
  wire _01_;
  wire [7:0] _02_;
  wire [7:0] _03_;
  wire _04_;
  wire [7:0] _05_;
  (* src = "synth1.v:4" *)
  input [7:0] Entrada0;
  (* src = "synth1.v:5" *)
  input [7:0] Entrada1;
  (* src = "synth1.v:1" *)
  output [7:0] Salida_estructural;
  reg [7:0] Salida_estructural;
  (* src = "synth1.v:8" *)
  input clk;
  (* src = "synth1.v:9" *)
  input reset;
  (* src = "synth1.v:11" *)
  reg selector;
  (* src = "synth1.v:6" *)
  input validEntrada0;
  (* src = "synth1.v:7" *)
  input validEntrada1;
  (* src = "synth1.v:2" *)
  output validsalida;
  always @(posedge clk)
      selector <= _01_;
  always @(posedge clk)
      Salida_estructural <= _00_;
  assign _02_ = validEntrada0 ? (* full_case = 32'd1 *) (* src = "synth1.v:17" *) Entrada0 : 8'h00;
  assign _03_ = selector ? (* full_case = 32'd1 *) (* src = "synth1.v:16" *) _05_ : _02_;
  assign _00_ = reset ? (* full_case = 32'd1 *) (* src = "synth1.v:15" *) _03_ : 8'h00;
  assign _04_ = selector ? (* full_case = 32'd1 *) (* src = "synth1.v:16" *) 1'h0 : 1'h1;
  assign _01_ = reset ? (* full_case = 32'd1 *) (* src = "synth1.v:15" *) _04_ : selector;
  assign _05_ = validEntrada1 ? (* full_case = 32'd1 *) (* src = "synth1.v:25" *) Entrada1 : 8'h00;
endmodule

(* src = "synth2.v:4" *)
module synth2(Salida0, Salida1, validsalida0, validsalida1, Entrada0, Entrada1, Entrada2, Entrada3, validEntrada0, validEntrada1, validEntrada2, validEntrada3, clk_2f, reset);
  (* src = "synth2.v:9" *)
  input [7:0] Entrada0;
  (* src = "synth2.v:10" *)
  input [7:0] Entrada1;
  (* src = "synth2.v:11" *)
  input [7:0] Entrada2;
  (* src = "synth2.v:12" *)
  input [7:0] Entrada3;
  (* src = "synth2.v:5" *)
  output [7:0] Salida0;
  (* src = "synth2.v:6" *)
  output [7:0] Salida1;
  (* src = "synth2.v:17" *)
  input clk_2f;
  (* src = "synth2.v:18" *)
  input reset;
  (* src = "synth2.v:13" *)
  input validEntrada0;
  (* src = "synth2.v:14" *)
  input validEntrada1;
  (* src = "synth2.v:15" *)
  input validEntrada2;
  (* src = "synth2.v:16" *)
  input validEntrada3;
  (* src = "synth2.v:7" *)
  output validsalida0;
  (* src = "synth2.v:8" *)
  output validsalida1;
  (* module_not_derived = 32'd1 *)
  (* src = "synth2.v:20" *)
  synth1 mux1 (
    .Entrada0(Entrada0),
    .Entrada1(Entrada1),
    .Salida_estructural(Salida0),
    .clk(clk_2f),
    .reset(reset),
    .validEntrada0(validEntrada0),
    .validEntrada1(validEntrada1),
    .validsalida(validsalida0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "synth2.v:32" *)
  synth1 mux2 (
    .Entrada0(Entrada2),
    .Entrada1(Entrada3),
    .Salida_estructural(Salida1),
    .clk(clk_2f),
    .reset(reset),
    .validEntrada0(validEntrada2),
    .validEntrada1(validEntrada3),
    .validsalida(validsalida1)
  );
endmodule

(* src = "synth3.v:5" *)
module synth3(Salida_estructural, validsalida, Entrada0, Entrada1, validEntrada0, validEntrada1, clk_4f, reset);
  (* src = "synth3.v:8" *)
  input [7:0] Entrada0;
  (* src = "synth3.v:9" *)
  input [7:0] Entrada1;
  (* src = "synth3.v:6" *)
  output [7:0] Salida_estructural;
  (* src = "synth3.v:12" *)
  input clk_4f;
  (* src = "synth3.v:13" *)
  input reset;
  (* src = "synth3.v:10" *)
  input validEntrada0;
  (* src = "synth3.v:11" *)
  input validEntrada1;
  (* src = "synth3.v:7" *)
  output validsalida;
  (* module_not_derived = 32'd1 *)
  (* src = "synth3.v:15" *)
  synth1 mux1 (
    .Entrada0(Entrada0),
    .Entrada1(Entrada1),
    .Salida_estructural(Salida_estructural),
    .clk(clk_4f),
    .reset(reset),
    .validEntrada0(validEntrada0),
    .validEntrada1(validEntrada1),
    .validsalida(validsalida)
  );
endmodule
