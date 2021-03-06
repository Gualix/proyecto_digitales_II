/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "paralelo_serial_estructural.v:4" *)
module paralelo_serial_estructural(reset, clk_4f, clk_32f, valid_in, in_serial, out_serial_conductual);
  (* src = "paralelo_serial_estructural.v:15" *)
  wire _000_;
  (* src = "paralelo_serial_estructural.v:15" *)
  wire [2:0] _001_;
  (* src = "paralelo_serial_estructural.v:15" *)
  wire [2:0] _002_;
  (* src = "paralelo_serial_estructural.v:33" *)
  (* unused_bits = "3" *)
  wire [31:0] _003_;
  (* src = "paralelo_serial_estructural.v:50" *)
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
  wire [1:0] _015_;
  wire _016_;
  wire _017_;
  wire [3:0] _018_;
  wire [1:0] _019_;
  wire [3:0] _020_;
  wire [1:0] _021_;
  wire _022_;
  wire _023_;
  wire [2:0] _024_;
  wire [2:0] _025_;
  wire [2:0] _026_;
  wire [2:0] _027_;
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
  wire [2:0] _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  (* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:432" *)
  wire [7:0] _052_;
  (* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:428" *)
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire [2:0] _064_;
  (* src = "paralelo_serial_estructural.v:33|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "2" *)
  wire [31:0] _065_;
  (* src = "paralelo_serial_estructural.v:50|paralelo_serial.v:33|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "2" *)
  wire [31:0] _066_;
  (* src = "paralelo_serial_estructural.v:45|paralelo_serial.v:37|<techmap.v>:445" *)
  wire _067_;
  (* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:445" *)
  wire _068_;
  (* src = "paralelo_serial_estructural.v:7" *)
  input clk_32f;
  (* src = "paralelo_serial_estructural.v:6" *)
  input clk_4f;
  (* src = "paralelo_serial_estructural.v:9" *)
  input [7:0] in_serial;
  (* src = "paralelo_serial_estructural.v:10" *)
  output out_serial_conductual;
  reg out_serial_conductual;
  (* src = "paralelo_serial_estructural.v:5" *)
  input reset;
  (* src = "paralelo_serial_estructural.v:12" *)
  reg [2:0] selector;
  (* src = "paralelo_serial_estructural.v:13" *)
  reg [2:0] selector_2;
  (* src = "paralelo_serial_estructural.v:8" *)
  input valid_in;
  assign _028_ = _007_ |(* src = "paralelo_serial_estructural.v:22|paralelo_serial.v:20" *)  selector_2[2];
  assign _029_ = _008_ |(* src = "paralelo_serial_estructural.v:23|paralelo_serial.v:20" *)  selector_2[2];
  assign _030_ = _009_ |(* src = "paralelo_serial_estructural.v:24|paralelo_serial.v:20" *)  selector_2[2];
  assign _010_ = selector_2[0] |(* src = "paralelo_serial_estructural.v:25|paralelo_serial.v:20" *)  selector_2[1];
  assign _031_ = _010_ |(* src = "paralelo_serial_estructural.v:25|paralelo_serial.v:20" *)  _025_[2];
  assign _007_ = _003_[0] |(* src = "paralelo_serial_estructural.v:26|paralelo_serial.v:20" *)  selector_2[1];
  assign _032_ = _007_ |(* src = "paralelo_serial_estructural.v:26|paralelo_serial.v:20" *)  _025_[2];
  assign _008_ = selector_2[0] |(* src = "paralelo_serial_estructural.v:27|paralelo_serial.v:20" *)  _024_[1];
  assign _033_ = _008_ |(* src = "paralelo_serial_estructural.v:27|paralelo_serial.v:20" *)  _025_[2];
  assign _009_ = _003_[0] |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20" *)  _024_[1];
  assign _034_ = _009_ |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20" *)  _025_[2];
  assign _035_ = _011_ |(* src = "paralelo_serial_estructural.v:39|paralelo_serial.v:37" *)  selector[2];
  assign _012_ = selector[0] |(* src = "paralelo_serial_estructural.v:40|paralelo_serial.v:37" *)  _026_[1];
  assign _036_ = _012_ |(* src = "paralelo_serial_estructural.v:40|paralelo_serial.v:37" *)  selector[2];
  assign _013_ = _004_[0] |(* src = "paralelo_serial_estructural.v:41|paralelo_serial.v:37" *)  _026_[1];
  assign _037_ = _013_ |(* src = "paralelo_serial_estructural.v:41|paralelo_serial.v:37" *)  selector[2];
  assign _014_ = selector[0] |(* src = "paralelo_serial_estructural.v:42|paralelo_serial.v:37" *)  selector[1];
  assign _038_ = _014_ |(* src = "paralelo_serial_estructural.v:42|paralelo_serial.v:37" *)  _027_[2];
  assign _011_ = _004_[0] |(* src = "paralelo_serial_estructural.v:43|paralelo_serial.v:37" *)  selector[1];
  assign _039_ = _011_ |(* src = "paralelo_serial_estructural.v:43|paralelo_serial.v:37" *)  _027_[2];
  assign _015_[0] = _046_ | _047_;
  assign _015_[1] = _048_ | _049_;
  assign _016_ = _015_[0] | _015_[1];
  assign _006_ = _016_ | _051_;
  assign _040_ = _012_ |(* src = "paralelo_serial_estructural.v:44|paralelo_serial.v:37" *)  _027_[2];
  assign _017_ = _044_ | _045_;
  assign _005_ = _017_ | _050_;
  assign _041_ = _013_ |(* src = "paralelo_serial_estructural.v:45|paralelo_serial.v:37" *)  _027_[2];
  assign _018_[0] = _052_[0] |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:441" *)  _052_[1];
  assign _018_[1] = _052_[2] |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:441" *)  _052_[3];
  assign _018_[2] = _052_[4] |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:441" *)  _052_[5];
  assign _018_[3] = _052_[6] |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:441" *)  _052_[7];
  assign _019_[0] = _018_[0] |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:441" *)  _018_[1];
  assign _019_[1] = _018_[2] |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:441" *)  _018_[3];
  assign _053_ = _019_[0] |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:441" *)  _019_[1];
  assign _020_[0] = _055_ |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:445" *)  _056_;
  assign _020_[1] = _057_ |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:445" *)  _058_;
  assign _020_[2] = _059_ |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:445" *)  _060_;
  assign _020_[3] = _061_ |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:445" *)  _062_;
  assign _021_[0] = _020_[0] |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:445" *)  _020_[1];
  assign _021_[1] = _020_[2] |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:445" *)  _020_[3];
  assign _068_ = _021_[0] |(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:445" *)  _021_[1];
  assign _067_ = _005_ |(* src = "paralelo_serial_estructural.v:45|paralelo_serial.v:37|<techmap.v>:445" *)  _006_;
  assign _022_ = _010_ |(* src = "paralelo_serial_estructural.v:21|paralelo_serial.v:20" *)  selector_2[2];
  assign _023_ = _014_ |(* src = "paralelo_serial_estructural.v:38|paralelo_serial.v:37" *)  selector[2];
  assign _062_ = ~(* src = "paralelo_serial_estructural.v:21|paralelo_serial.v:20" *) _022_;
  assign _061_ = ~(* src = "paralelo_serial_estructural.v:22|paralelo_serial.v:20" *) _028_;
  assign _060_ = ~(* src = "paralelo_serial_estructural.v:23|paralelo_serial.v:20" *) _029_;
  assign _059_ = ~(* src = "paralelo_serial_estructural.v:24|paralelo_serial.v:20" *) _030_;
  assign _058_ = ~(* src = "paralelo_serial_estructural.v:25|paralelo_serial.v:20" *) _031_;
  assign _057_ = ~(* src = "paralelo_serial_estructural.v:26|paralelo_serial.v:20" *) _032_;
  assign _051_ = ~(* src = "paralelo_serial_estructural.v:38|paralelo_serial.v:37" *) _023_;
  assign _056_ = ~(* src = "paralelo_serial_estructural.v:27|paralelo_serial.v:20" *) _033_;
  assign _055_ = ~(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20" *) _034_;
  assign _050_ = ~(* src = "paralelo_serial_estructural.v:39|paralelo_serial.v:37" *) _035_;
  assign _049_ = ~(* src = "paralelo_serial_estructural.v:40|paralelo_serial.v:37" *) _036_;
  assign _048_ = ~(* src = "paralelo_serial_estructural.v:41|paralelo_serial.v:37" *) _037_;
  assign _047_ = ~(* src = "paralelo_serial_estructural.v:42|paralelo_serial.v:37" *) _038_;
  assign _046_ = ~(* src = "paralelo_serial_estructural.v:43|paralelo_serial.v:37" *) _039_;
  assign _045_ = ~(* src = "paralelo_serial_estructural.v:44|paralelo_serial.v:37" *) _040_;
  assign _044_ = ~(* src = "paralelo_serial_estructural.v:45|paralelo_serial.v:37" *) _041_;
  assign _000_ = reset ? (* src = "paralelo_serial_estructural.v:17" *) _063_ : 1'h0;
  assign _064_[0] = valid_in ? (* src = "paralelo_serial_estructural.v:18" *) _003_[0] : 1'h0;
  assign _064_[1] = valid_in ? (* src = "paralelo_serial_estructural.v:18" *) _003_[1] : 1'h0;
  assign _064_[2] = valid_in ? (* src = "paralelo_serial_estructural.v:18" *) _003_[2] : 1'h0;
  assign _063_ = valid_in ? (* src = "paralelo_serial_estructural.v:18" *) _054_ : _043_;
  assign _001_[0] = reset ? (* src = "paralelo_serial_estructural.v:17" *) _042_[0] : 1'h0;
  assign _001_[1] = reset ? (* src = "paralelo_serial_estructural.v:17" *) _042_[1] : 1'h0;
  assign _001_[2] = reset ? (* src = "paralelo_serial_estructural.v:17" *) _042_[2] : 1'h0;
  assign _002_[0] = reset ? (* src = "paralelo_serial_estructural.v:17" *) _064_[0] : 1'h0;
  assign _002_[1] = reset ? (* src = "paralelo_serial_estructural.v:17" *) _064_[1] : 1'h0;
  assign _002_[2] = reset ? (* src = "paralelo_serial_estructural.v:17" *) _064_[2] : 1'h0;
  assign _042_[0] = valid_in ? (* src = "paralelo_serial_estructural.v:18" *) 1'h0 : _004_[0];
  assign _042_[1] = valid_in ? (* src = "paralelo_serial_estructural.v:18" *) 1'h0 : _004_[1];
  assign _042_[2] = valid_in ? (* src = "paralelo_serial_estructural.v:18" *) 1'h0 : _004_[2];
  assign _054_ = _068_ ? (* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:445" *) _053_ : 1'hx;
  assign _043_ = _067_ ? (* src = "paralelo_serial_estructural.v:45|paralelo_serial.v:37|<techmap.v>:445" *) _006_ : 1'hx;
  (* src = "paralelo_serial_estructural.v:15" *)
  always @(posedge clk_32f)
      out_serial_conductual <= _000_;
  (* src = "paralelo_serial_estructural.v:15" *)
  always @(posedge clk_32f)
      selector_2[0] <= _002_[0];
  (* src = "paralelo_serial_estructural.v:15" *)
  always @(posedge clk_32f)
      selector_2[1] <= _002_[1];
  (* src = "paralelo_serial_estructural.v:15" *)
  always @(posedge clk_32f)
      selector_2[2] <= _002_[2];
  (* src = "paralelo_serial_estructural.v:15" *)
  always @(posedge clk_32f)
      selector[0] <= _001_[0];
  (* src = "paralelo_serial_estructural.v:15" *)
  always @(posedge clk_32f)
      selector[1] <= _001_[1];
  (* src = "paralelo_serial_estructural.v:15" *)
  always @(posedge clk_32f)
      selector[2] <= _001_[2];
  assign _066_[1] = selector[1] &(* src = "paralelo_serial_estructural.v:50|paralelo_serial.v:33|<techmap.v>:260|<techmap.v>:221" *)  selector[0];
  assign _003_[0] = selector_2[0] ^(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20" *)  1'h1;
  assign _024_[1] = selector_2[1] ^(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20" *)  1'h1;
  assign _025_[2] = selector_2[2] ^(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20" *)  1'h1;
  assign _004_[0] = selector[0] ^(* src = "paralelo_serial_estructural.v:45|paralelo_serial.v:37" *)  1'h1;
  assign _026_[1] = selector[1] ^(* src = "paralelo_serial_estructural.v:45|paralelo_serial.v:37" *)  1'h1;
  assign _027_[2] = selector[2] ^(* src = "paralelo_serial_estructural.v:45|paralelo_serial.v:37" *)  1'h1;
  assign _052_[4] = in_serial[4] &(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:434" *)  _059_;
  assign _052_[7] = in_serial[7] &(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:434" *)  _062_;
  assign _052_[6] = in_serial[6] &(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:434" *)  _061_;
  assign _052_[5] = in_serial[5] &(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:434" *)  _060_;
  assign _052_[3] = in_serial[3] &(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:434" *)  _058_;
  assign _052_[2] = in_serial[2] &(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:434" *)  _057_;
  assign _052_[1] = in_serial[1] &(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:434" *)  _056_;
  assign _052_[0] = in_serial[0] &(* src = "paralelo_serial_estructural.v:28|paralelo_serial.v:20|<techmap.v>:434" *)  _055_;
  assign _003_[1] = selector_2[1] ^(* src = "paralelo_serial_estructural.v:33|<techmap.v>:263" *)  selector_2[0];
  assign _003_[2] = selector_2[2] ^(* src = "paralelo_serial_estructural.v:33|<techmap.v>:263" *)  _065_[1];
  assign _004_[1] = selector[1] ^(* src = "paralelo_serial_estructural.v:50|paralelo_serial.v:33|<techmap.v>:263" *)  selector[0];
  assign _004_[2] = selector[2] ^(* src = "paralelo_serial_estructural.v:50|paralelo_serial.v:33|<techmap.v>:263" *)  _066_[1];
  assign _065_[1] = selector_2[1] &(* src = "paralelo_serial_estructural.v:33|<techmap.v>:260|<techmap.v>:221" *)  selector_2[0];
  assign _003_[31:4] = 28'h0000000;
  assign _004_[31:4] = 28'h0000000;
  assign { _024_[2], _024_[0] } = { selector_2[2], selector_2[0] };
  assign _025_[1:0] = selector_2[1:0];
  assign { _026_[2], _026_[0] } = { selector[2], selector[0] };
  assign _027_[1:0] = selector[1:0];
  assign { _065_[31:2], _065_[0] } = { 29'h00000000, _003_[3], selector_2[0] };
  assign { _066_[31:2], _066_[0] } = { 29'h00000000, _004_[3], selector[0] };
endmodule
