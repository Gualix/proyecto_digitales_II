/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "synth_PSRX.v:1" *)
module synth_PSRX(clk_4f, clk_32f, active, out_serial2_estructural);
  (* src = "synth_PSRX.v:9" *)
  wire _000_;
  (* src = "synth_PSRX.v:9" *)
  wire [2:0] _001_;
  (* src = "synth_PSRX.v:9" *)
  wire [2:0] _002_;
  (* src = "synth_PSRX.v:27" *)
  (* unused_bits = "3" *)
  wire [31:0] _003_;
  (* src = "synth_PSRX.v:44" *)
  (* unused_bits = "3" *)
  wire [31:0] _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire [1:0] _018_;
  wire _019_;
  wire _020_;
  wire [1:0] _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire [2:0] _025_;
  wire [2:0] _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  (* src = "synth_PSRX.v:27|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "2" *)
  wire [31:0] _059_;
  (* src = "synth_PSRX.v:44|PSRX.v:27|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "2" *)
  wire [31:0] _060_;
  (* src = "synth_PSRX.v:22|PSRX.v:14|<techmap.v>:445" *)
  wire _061_;
  (* src = "synth_PSRX.v:39|PSRX.v:31|<techmap.v>:445" *)
  wire _062_;
  (* src = "synth_PSRX.v:3" *)
  input active;
  (* src = "synth_PSRX.v:2" *)
  input clk_32f;
  (* src = "synth_PSRX.v:1" *)
  input clk_4f;
  (* src = "synth_PSRX.v:4" *)
  output out_serial2_estructural;
  reg out_serial2_estructural;
  (* src = "synth_PSRX.v:6" *)
  reg [2:0] selector;
  (* src = "synth_PSRX.v:7" *)
  reg [2:0] selector_2;
  assign _027_ = _009_ |(* src = "synth_PSRX.v:39|PSRX.v:31" *)  _025_[2];
  assign _028_ = _010_ |(* src = "synth_PSRX.v:38|PSRX.v:31" *)  _025_[2];
  assign _029_ = _011_ |(* src = "synth_PSRX.v:37|PSRX.v:31" *)  _025_[2];
  assign _030_ = _012_ |(* src = "synth_PSRX.v:36|PSRX.v:31" *)  _025_[2];
  assign _009_ = _004_[0] |(* src = "synth_PSRX.v:35|PSRX.v:31" *)  _025_[1];
  assign _031_ = _009_ |(* src = "synth_PSRX.v:35|PSRX.v:31" *)  selector[2];
  assign _010_ = selector[0] |(* src = "synth_PSRX.v:34|PSRX.v:31" *)  _025_[1];
  assign _032_ = _010_ |(* src = "synth_PSRX.v:34|PSRX.v:31" *)  selector[2];
  assign _011_ = _004_[0] |(* src = "synth_PSRX.v:33|PSRX.v:31" *)  selector[1];
  assign _033_ = _011_ |(* src = "synth_PSRX.v:33|PSRX.v:31" *)  selector[2];
  assign _013_ = _003_[0] |(* src = "synth_PSRX.v:22|PSRX.v:14" *)  _026_[1];
  assign _034_ = _013_ |(* src = "synth_PSRX.v:22|PSRX.v:14" *)  _026_[2];
  assign _014_ = selector_2[0] |(* src = "synth_PSRX.v:21|PSRX.v:14" *)  _026_[1];
  assign _035_ = _014_ |(* src = "synth_PSRX.v:21|PSRX.v:14" *)  _026_[2];
  assign _015_ = _003_[0] |(* src = "synth_PSRX.v:20|PSRX.v:14" *)  selector_2[1];
  assign _036_ = _015_ |(* src = "synth_PSRX.v:20|PSRX.v:14" *)  _026_[2];
  assign _037_ = _016_ |(* src = "synth_PSRX.v:19|PSRX.v:14" *)  _026_[2];
  assign _038_ = _013_ |(* src = "synth_PSRX.v:18|PSRX.v:14" *)  selector_2[2];
  assign _039_ = _014_ |(* src = "synth_PSRX.v:17|PSRX.v:14" *)  selector_2[2];
  assign _040_ = _015_ |(* src = "synth_PSRX.v:16|PSRX.v:14" *)  selector_2[2];
  assign _017_ = _053_ | _047_;
  assign _005_ = _017_ | _046_;
  assign _018_[0] = _052_ | _051_;
  assign _018_[1] = _050_ | _048_;
  assign _019_ = _018_[0] | _018_[1];
  assign _006_ = _019_ | _049_;
  assign _020_ = _043_ | _055_;
  assign _007_ = _020_ | _056_;
  assign _021_[0] = _044_ | _042_;
  assign _021_[1] = _041_ | _058_;
  assign _022_ = _021_[0] | _021_[1];
  assign _008_ = _022_ | _057_;
  assign _062_ = _007_ |(* src = "synth_PSRX.v:39|PSRX.v:31|<techmap.v>:445" *)  _008_;
  assign _061_ = _005_ |(* src = "synth_PSRX.v:22|PSRX.v:14|<techmap.v>:445" *)  _006_;
  assign _012_ = selector[0] |(* src = "synth_PSRX.v:32|PSRX.v:31" *)  selector[1];
  assign _023_ = _012_ |(* src = "synth_PSRX.v:32|PSRX.v:31" *)  selector[2];
  assign _016_ = selector_2[0] |(* src = "synth_PSRX.v:15|PSRX.v:14" *)  selector_2[1];
  assign _024_ = _016_ |(* src = "synth_PSRX.v:15|PSRX.v:14" *)  selector_2[2];
  assign _055_ = ~(* src = "synth_PSRX.v:39|PSRX.v:31" *) _027_;
  assign _056_ = ~(* src = "synth_PSRX.v:38|PSRX.v:31" *) _028_;
  assign _057_ = ~(* src = "synth_PSRX.v:37|PSRX.v:31" *) _029_;
  assign _058_ = ~(* src = "synth_PSRX.v:36|PSRX.v:31" *) _030_;
  assign _041_ = ~(* src = "synth_PSRX.v:35|PSRX.v:31" *) _031_;
  assign _042_ = ~(* src = "synth_PSRX.v:34|PSRX.v:31" *) _032_;
  assign _043_ = ~(* src = "synth_PSRX.v:33|PSRX.v:31" *) _033_;
  assign _044_ = ~(* src = "synth_PSRX.v:32|PSRX.v:31" *) _023_;
  assign _046_ = ~(* src = "synth_PSRX.v:22|PSRX.v:14" *) _034_;
  assign _047_ = ~(* src = "synth_PSRX.v:21|PSRX.v:14" *) _035_;
  assign _048_ = ~(* src = "synth_PSRX.v:20|PSRX.v:14" *) _036_;
  assign _049_ = ~(* src = "synth_PSRX.v:19|PSRX.v:14" *) _037_;
  assign _050_ = ~(* src = "synth_PSRX.v:18|PSRX.v:14" *) _038_;
  assign _051_ = ~(* src = "synth_PSRX.v:17|PSRX.v:14" *) _039_;
  assign _052_ = ~(* src = "synth_PSRX.v:16|PSRX.v:14" *) _040_;
  assign _053_ = ~(* src = "synth_PSRX.v:15|PSRX.v:14" *) _024_;
  assign _000_ = active ? (* src = "synth_PSRX.v:12" *) _045_ : _054_;
  assign _002_[0] = active ? (* src = "synth_PSRX.v:12" *) _003_[0] : 1'h0;
  assign _002_[1] = active ? (* src = "synth_PSRX.v:12" *) _003_[1] : 1'h0;
  assign _002_[2] = active ? (* src = "synth_PSRX.v:12" *) _003_[2] : 1'h0;
  assign _001_[0] = active ? (* src = "synth_PSRX.v:12" *) 1'h0 : _004_[0];
  assign _001_[1] = active ? (* src = "synth_PSRX.v:12" *) 1'h0 : _004_[1];
  assign _001_[2] = active ? (* src = "synth_PSRX.v:12" *) 1'h0 : _004_[2];
  assign _054_ = _062_ ? (* src = "synth_PSRX.v:39|PSRX.v:31|<techmap.v>:445" *) _008_ : 1'hx;
  assign _045_ = _061_ ? (* src = "synth_PSRX.v:22|PSRX.v:14|<techmap.v>:445" *) _006_ : 1'hx;
  (* src = "synth_PSRX.v:9" *)
  always @(posedge clk_32f)
      selector[0] <= _001_[0];
  (* src = "synth_PSRX.v:9" *)
  always @(posedge clk_32f)
      selector[1] <= _001_[1];
  (* src = "synth_PSRX.v:9" *)
  always @(posedge clk_32f)
      selector[2] <= _001_[2];
  (* src = "synth_PSRX.v:9" *)
  always @(posedge clk_32f)
      selector_2[0] <= _002_[0];
  (* src = "synth_PSRX.v:9" *)
  always @(posedge clk_32f)
      selector_2[1] <= _002_[1];
  (* src = "synth_PSRX.v:9" *)
  always @(posedge clk_32f)
      selector_2[2] <= _002_[2];
  (* src = "synth_PSRX.v:9" *)
  always @(posedge clk_32f)
      out_serial2_estructural <= _000_;
  assign _060_[1] = selector[1] &(* src = "synth_PSRX.v:44|PSRX.v:27|<techmap.v>:260|<techmap.v>:221" *)  selector[0];
  assign _025_[2] = selector[2] ^(* src = "synth_PSRX.v:36|PSRX.v:31" *)  1'h1;
  assign _025_[1] = selector[1] ^(* src = "synth_PSRX.v:34|PSRX.v:31" *)  1'h1;
  assign _004_[0] = selector[0] ^(* src = "synth_PSRX.v:33|PSRX.v:31" *)  1'h1;
  assign _026_[2] = selector_2[2] ^(* src = "synth_PSRX.v:19|PSRX.v:14" *)  1'h1;
  assign _026_[1] = selector_2[1] ^(* src = "synth_PSRX.v:17|PSRX.v:14" *)  1'h1;
  assign _003_[0] = selector_2[0] ^(* src = "synth_PSRX.v:16|PSRX.v:14" *)  1'h1;
  assign _003_[1] = selector_2[1] ^(* src = "synth_PSRX.v:27|<techmap.v>:263" *)  selector_2[0];
  assign _003_[2] = selector_2[2] ^(* src = "synth_PSRX.v:27|<techmap.v>:263" *)  _059_[1];
  assign _004_[1] = selector[1] ^(* src = "synth_PSRX.v:44|PSRX.v:27|<techmap.v>:263" *)  selector[0];
  assign _004_[2] = selector[2] ^(* src = "synth_PSRX.v:44|PSRX.v:27|<techmap.v>:263" *)  _060_[1];
  assign _059_[1] = selector_2[1] &(* src = "synth_PSRX.v:27|<techmap.v>:260|<techmap.v>:221" *)  selector_2[0];
  assign _003_[31:4] = 28'h0000000;
  assign _004_[31:4] = 28'h0000000;
  assign _025_[0] = selector[0];
  assign _026_[0] = _003_[0];
  assign { _059_[31:2], _059_[0] } = { 29'h00000000, _003_[3], selector_2[0] };
  assign { _060_[31:2], _060_[0] } = { 29'h00000000, _004_[3], selector[0] };
endmodule
