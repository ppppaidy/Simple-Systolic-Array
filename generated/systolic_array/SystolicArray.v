module SystolicArray(
  input         clock,
  input         reset,
  input  [31:0] io_ain_0,
  input  [31:0] io_ain_1,
  input  [31:0] io_ain_2,
  input  [31:0] io_bin_0,
  input  [31:0] io_bin_1,
  input  [31:0] io_bin_2,
  input  [31:0] io_bin_3,
  input  [31:0] io_bin_4,
  output [31:0] io_cout_0_0,
  output [31:0] io_cout_0_1,
  output [31:0] io_cout_0_2,
  output [31:0] io_cout_0_3,
  output [31:0] io_cout_0_4,
  output [31:0] io_cout_1_0,
  output [31:0] io_cout_1_1,
  output [31:0] io_cout_1_2,
  output [31:0] io_cout_1_3,
  output [31:0] io_cout_1_4,
  output [31:0] io_cout_2_0,
  output [31:0] io_cout_2_1,
  output [31:0] io_cout_2_2,
  output [31:0] io_cout_2_3,
  output [31:0] io_cout_2_4
);
  assign io_cout_0_0 = io_ain_0 + io_bin_0; // @[systolic_array.scala 13:39]
  assign io_cout_0_1 = io_ain_0 + io_bin_1; // @[systolic_array.scala 13:39]
  assign io_cout_0_2 = io_ain_0 + io_bin_2; // @[systolic_array.scala 13:39]
  assign io_cout_0_3 = io_ain_0 + io_bin_3; // @[systolic_array.scala 13:39]
  assign io_cout_0_4 = io_ain_0 + io_bin_4; // @[systolic_array.scala 13:39]
  assign io_cout_1_0 = io_ain_1 + io_bin_0; // @[systolic_array.scala 13:39]
  assign io_cout_1_1 = io_ain_1 + io_bin_1; // @[systolic_array.scala 13:39]
  assign io_cout_1_2 = io_ain_1 + io_bin_2; // @[systolic_array.scala 13:39]
  assign io_cout_1_3 = io_ain_1 + io_bin_3; // @[systolic_array.scala 13:39]
  assign io_cout_1_4 = io_ain_1 + io_bin_4; // @[systolic_array.scala 13:39]
  assign io_cout_2_0 = io_ain_2 + io_bin_0; // @[systolic_array.scala 13:39]
  assign io_cout_2_1 = io_ain_2 + io_bin_1; // @[systolic_array.scala 13:39]
  assign io_cout_2_2 = io_ain_2 + io_bin_2; // @[systolic_array.scala 13:39]
  assign io_cout_2_3 = io_ain_2 + io_bin_3; // @[systolic_array.scala 13:39]
  assign io_cout_2_4 = io_ain_2 + io_bin_4; // @[systolic_array.scala 13:39]
endmodule
