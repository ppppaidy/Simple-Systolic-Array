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
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] reg1; // @[systolic_array.scala 11:27]
  wire [31:0] _T_2 = $signed(io_ain_0) + $signed(io_bin_0); // @[systolic_array.scala 12:27]
  assign io_cout_0_0 = reg1; // @[systolic_array.scala 15:39]
  assign io_cout_0_1 = reg1; // @[systolic_array.scala 15:39]
  assign io_cout_0_2 = reg1; // @[systolic_array.scala 15:39]
  assign io_cout_1_0 = reg1; // @[systolic_array.scala 15:39]
  assign io_cout_1_1 = reg1; // @[systolic_array.scala 15:39]
  assign io_cout_1_2 = reg1; // @[systolic_array.scala 15:39]
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
  reg1 = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg1 <= 32'sh0;
    end else begin
      reg1 <= _T_2;
    end
  end
endmodule
