module SystolicArrayCore(
  input         clock,
  input         reset,
  input  [31:0] io_ain,
  input  [31:0] io_bin,
  output [31:0] io_aout,
  output [31:0] io_bout,
  output [31:0] io_cout
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] regA; // @[systolic_array_core.scala 13:27]
  reg [31:0] regB; // @[systolic_array_core.scala 14:27]
  reg [31:0] regC; // @[systolic_array_core.scala 15:27]
  wire [63:0] _T = $signed(regA) * $signed(regB); // @[systolic_array_core.scala 21:30]
  wire [31:0] nodeAfterMul = _T[31:0]; // @[systolic_array_core.scala 20:32 systolic_array_core.scala 21:22]
  wire [31:0] nodeAfterPlus = $signed(regC) + $signed(nodeAfterMul); // @[systolic_array_core.scala 23:31]
  assign io_aout = regA; // @[systolic_array_core.scala 18:17]
  assign io_bout = regB; // @[systolic_array_core.scala 19:17]
  assign io_cout = regC; // @[systolic_array_core.scala 25:17]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regA = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  regB = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  regC = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      regA <= 32'sh0;
    end else begin
      regA <= io_ain;
    end
    if (reset) begin
      regB <= 32'sh0;
    end else begin
      regB <= io_bin;
    end
    if (reset) begin
      regC <= 32'sh0;
    end else begin
      regC <= nodeAfterPlus;
    end
  end
endmodule
module SystolicArray(
  input         clock,
  input         reset,
  input  [31:0] io_ain_0,
  input  [31:0] io_ain_1,
  input  [31:0] io_bin_0,
  input  [31:0] io_bin_1,
  input  [31:0] io_bin_2,
  output [31:0] io_cout_0_0,
  output [31:0] io_cout_0_1,
  output [31:0] io_cout_0_2,
  output [31:0] io_cout_1_0,
  output [31:0] io_cout_1_1,
  output [31:0] io_cout_1_2
);
  wire  SystolicArrayCore_clock; // @[systolic_array.scala 11:51]
  wire  SystolicArrayCore_reset; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_io_ain; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_io_bin; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_io_aout; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_io_bout; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_io_cout; // @[systolic_array.scala 11:51]
  wire  SystolicArrayCore_1_clock; // @[systolic_array.scala 11:51]
  wire  SystolicArrayCore_1_reset; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_1_io_ain; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_1_io_bin; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_1_io_aout; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_1_io_bout; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_1_io_cout; // @[systolic_array.scala 11:51]
  wire  SystolicArrayCore_2_clock; // @[systolic_array.scala 11:51]
  wire  SystolicArrayCore_2_reset; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_2_io_ain; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_2_io_bin; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_2_io_aout; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_2_io_bout; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_2_io_cout; // @[systolic_array.scala 11:51]
  wire  SystolicArrayCore_3_clock; // @[systolic_array.scala 11:51]
  wire  SystolicArrayCore_3_reset; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_3_io_ain; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_3_io_bin; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_3_io_aout; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_3_io_bout; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_3_io_cout; // @[systolic_array.scala 11:51]
  wire  SystolicArrayCore_4_clock; // @[systolic_array.scala 11:51]
  wire  SystolicArrayCore_4_reset; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_4_io_ain; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_4_io_bin; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_4_io_aout; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_4_io_bout; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_4_io_cout; // @[systolic_array.scala 11:51]
  wire  SystolicArrayCore_5_clock; // @[systolic_array.scala 11:51]
  wire  SystolicArrayCore_5_reset; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_5_io_ain; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_5_io_bin; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_5_io_aout; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_5_io_bout; // @[systolic_array.scala 11:51]
  wire [31:0] SystolicArrayCore_5_io_cout; // @[systolic_array.scala 11:51]
  SystolicArrayCore SystolicArrayCore ( // @[systolic_array.scala 11:51]
    .clock(SystolicArrayCore_clock),
    .reset(SystolicArrayCore_reset),
    .io_ain(SystolicArrayCore_io_ain),
    .io_bin(SystolicArrayCore_io_bin),
    .io_aout(SystolicArrayCore_io_aout),
    .io_bout(SystolicArrayCore_io_bout),
    .io_cout(SystolicArrayCore_io_cout)
  );
  SystolicArrayCore SystolicArrayCore_1 ( // @[systolic_array.scala 11:51]
    .clock(SystolicArrayCore_1_clock),
    .reset(SystolicArrayCore_1_reset),
    .io_ain(SystolicArrayCore_1_io_ain),
    .io_bin(SystolicArrayCore_1_io_bin),
    .io_aout(SystolicArrayCore_1_io_aout),
    .io_bout(SystolicArrayCore_1_io_bout),
    .io_cout(SystolicArrayCore_1_io_cout)
  );
  SystolicArrayCore SystolicArrayCore_2 ( // @[systolic_array.scala 11:51]
    .clock(SystolicArrayCore_2_clock),
    .reset(SystolicArrayCore_2_reset),
    .io_ain(SystolicArrayCore_2_io_ain),
    .io_bin(SystolicArrayCore_2_io_bin),
    .io_aout(SystolicArrayCore_2_io_aout),
    .io_bout(SystolicArrayCore_2_io_bout),
    .io_cout(SystolicArrayCore_2_io_cout)
  );
  SystolicArrayCore SystolicArrayCore_3 ( // @[systolic_array.scala 11:51]
    .clock(SystolicArrayCore_3_clock),
    .reset(SystolicArrayCore_3_reset),
    .io_ain(SystolicArrayCore_3_io_ain),
    .io_bin(SystolicArrayCore_3_io_bin),
    .io_aout(SystolicArrayCore_3_io_aout),
    .io_bout(SystolicArrayCore_3_io_bout),
    .io_cout(SystolicArrayCore_3_io_cout)
  );
  SystolicArrayCore SystolicArrayCore_4 ( // @[systolic_array.scala 11:51]
    .clock(SystolicArrayCore_4_clock),
    .reset(SystolicArrayCore_4_reset),
    .io_ain(SystolicArrayCore_4_io_ain),
    .io_bin(SystolicArrayCore_4_io_bin),
    .io_aout(SystolicArrayCore_4_io_aout),
    .io_bout(SystolicArrayCore_4_io_bout),
    .io_cout(SystolicArrayCore_4_io_cout)
  );
  SystolicArrayCore SystolicArrayCore_5 ( // @[systolic_array.scala 11:51]
    .clock(SystolicArrayCore_5_clock),
    .reset(SystolicArrayCore_5_reset),
    .io_ain(SystolicArrayCore_5_io_ain),
    .io_bin(SystolicArrayCore_5_io_bin),
    .io_aout(SystolicArrayCore_5_io_aout),
    .io_bout(SystolicArrayCore_5_io_bout),
    .io_cout(SystolicArrayCore_5_io_cout)
  );
  assign io_cout_0_0 = SystolicArrayCore_io_cout; // @[systolic_array.scala 14:39]
  assign io_cout_0_1 = SystolicArrayCore_1_io_cout; // @[systolic_array.scala 14:39]
  assign io_cout_0_2 = SystolicArrayCore_2_io_cout; // @[systolic_array.scala 14:39]
  assign io_cout_1_0 = SystolicArrayCore_3_io_cout; // @[systolic_array.scala 14:39]
  assign io_cout_1_1 = SystolicArrayCore_4_io_cout; // @[systolic_array.scala 14:39]
  assign io_cout_1_2 = SystolicArrayCore_5_io_cout; // @[systolic_array.scala 14:39]
  assign SystolicArrayCore_clock = clock;
  assign SystolicArrayCore_reset = reset;
  assign SystolicArrayCore_io_ain = io_ain_0; // @[systolic_array.scala 11:28]
  assign SystolicArrayCore_io_bin = io_bin_0; // @[systolic_array.scala 11:28]
  assign SystolicArrayCore_1_clock = clock;
  assign SystolicArrayCore_1_reset = reset;
  assign SystolicArrayCore_1_io_ain = SystolicArrayCore_io_aout; // @[systolic_array.scala 11:28]
  assign SystolicArrayCore_1_io_bin = io_bin_1; // @[systolic_array.scala 11:28]
  assign SystolicArrayCore_2_clock = clock;
  assign SystolicArrayCore_2_reset = reset;
  assign SystolicArrayCore_2_io_ain = SystolicArrayCore_1_io_aout; // @[systolic_array.scala 11:28]
  assign SystolicArrayCore_2_io_bin = io_bin_2; // @[systolic_array.scala 11:28]
  assign SystolicArrayCore_3_clock = clock;
  assign SystolicArrayCore_3_reset = reset;
  assign SystolicArrayCore_3_io_ain = io_ain_1; // @[systolic_array.scala 11:28]
  assign SystolicArrayCore_3_io_bin = SystolicArrayCore_io_bout; // @[systolic_array.scala 11:28]
  assign SystolicArrayCore_4_clock = clock;
  assign SystolicArrayCore_4_reset = reset;
  assign SystolicArrayCore_4_io_ain = SystolicArrayCore_3_io_aout; // @[systolic_array.scala 11:28]
  assign SystolicArrayCore_4_io_bin = SystolicArrayCore_1_io_bout; // @[systolic_array.scala 11:28]
  assign SystolicArrayCore_5_clock = clock;
  assign SystolicArrayCore_5_reset = reset;
  assign SystolicArrayCore_5_io_ain = SystolicArrayCore_4_io_aout; // @[systolic_array.scala 11:28]
  assign SystolicArrayCore_5_io_bin = SystolicArrayCore_2_io_bout; // @[systolic_array.scala 11:28]
endmodule
