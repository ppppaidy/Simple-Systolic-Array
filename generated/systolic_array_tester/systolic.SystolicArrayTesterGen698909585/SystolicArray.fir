;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit SystolicArray : 
  module SystolicArray : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip ain : SInt<32>[2], flip bin : SInt<32>[3], cout : SInt<32>[3][2]}
    
    reg reg1 : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array.scala 11:27]
    node _T = add(io.ain[0], io.bin[0]) @[systolic_array.scala 12:27]
    node _T_1 = tail(_T, 1) @[systolic_array.scala 12:27]
    node _T_2 = asSInt(_T_1) @[systolic_array.scala 12:27]
    reg1 <= _T_2 @[systolic_array.scala 12:14]
    io.cout[0][0] <= reg1 @[systolic_array.scala 15:39]
    io.cout[0][1] <= reg1 @[systolic_array.scala 15:39]
    io.cout[0][2] <= reg1 @[systolic_array.scala 15:39]
    io.cout[1][0] <= reg1 @[systolic_array.scala 15:39]
    io.cout[1][1] <= reg1 @[systolic_array.scala 15:39]
    io.cout[1][2] <= reg1 @[systolic_array.scala 15:39]
    
