;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit SystolicArray : 
  module SystolicArrayCore : 
    input clock : Clock
    input reset : Reset
    output io : {flip ain : SInt<32>, flip bin : SInt<32>, aout : SInt<32>, bout : SInt<32>, cout : SInt<32>}
    
    reg regA : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 13:27]
    reg regB : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 14:27]
    reg regC : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 15:27]
    regA <= io.ain @[systolic_array_core.scala 16:14]
    regB <= io.bin @[systolic_array_core.scala 17:14]
    io.aout <= regA @[systolic_array_core.scala 18:17]
    io.bout <= regB @[systolic_array_core.scala 19:17]
    wire nodeAfterMul : SInt<32> @[systolic_array_core.scala 20:32]
    node _T = mul(regA, regB) @[systolic_array_core.scala 21:30]
    nodeAfterMul <= _T @[systolic_array_core.scala 21:22]
    wire nodeAfterPlus : SInt<32> @[systolic_array_core.scala 22:33]
    node _T_1 = add(regC, nodeAfterMul) @[systolic_array_core.scala 23:31]
    node _T_2 = tail(_T_1, 1) @[systolic_array_core.scala 23:31]
    node _T_3 = asSInt(_T_2) @[systolic_array_core.scala 23:31]
    nodeAfterPlus <= _T_3 @[systolic_array_core.scala 23:23]
    regC <= nodeAfterPlus @[systolic_array_core.scala 24:14]
    io.cout <= regC @[systolic_array_core.scala 25:17]
    
  module SystolicArrayCore_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip ain : SInt<32>, flip bin : SInt<32>, aout : SInt<32>, bout : SInt<32>, cout : SInt<32>}
    
    reg regA : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 13:27]
    reg regB : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 14:27]
    reg regC : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 15:27]
    regA <= io.ain @[systolic_array_core.scala 16:14]
    regB <= io.bin @[systolic_array_core.scala 17:14]
    io.aout <= regA @[systolic_array_core.scala 18:17]
    io.bout <= regB @[systolic_array_core.scala 19:17]
    wire nodeAfterMul : SInt<32> @[systolic_array_core.scala 20:32]
    node _T = mul(regA, regB) @[systolic_array_core.scala 21:30]
    nodeAfterMul <= _T @[systolic_array_core.scala 21:22]
    wire nodeAfterPlus : SInt<32> @[systolic_array_core.scala 22:33]
    node _T_1 = add(regC, nodeAfterMul) @[systolic_array_core.scala 23:31]
    node _T_2 = tail(_T_1, 1) @[systolic_array_core.scala 23:31]
    node _T_3 = asSInt(_T_2) @[systolic_array_core.scala 23:31]
    nodeAfterPlus <= _T_3 @[systolic_array_core.scala 23:23]
    regC <= nodeAfterPlus @[systolic_array_core.scala 24:14]
    io.cout <= regC @[systolic_array_core.scala 25:17]
    
  module SystolicArrayCore_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip ain : SInt<32>, flip bin : SInt<32>, aout : SInt<32>, bout : SInt<32>, cout : SInt<32>}
    
    reg regA : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 13:27]
    reg regB : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 14:27]
    reg regC : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 15:27]
    regA <= io.ain @[systolic_array_core.scala 16:14]
    regB <= io.bin @[systolic_array_core.scala 17:14]
    io.aout <= regA @[systolic_array_core.scala 18:17]
    io.bout <= regB @[systolic_array_core.scala 19:17]
    wire nodeAfterMul : SInt<32> @[systolic_array_core.scala 20:32]
    node _T = mul(regA, regB) @[systolic_array_core.scala 21:30]
    nodeAfterMul <= _T @[systolic_array_core.scala 21:22]
    wire nodeAfterPlus : SInt<32> @[systolic_array_core.scala 22:33]
    node _T_1 = add(regC, nodeAfterMul) @[systolic_array_core.scala 23:31]
    node _T_2 = tail(_T_1, 1) @[systolic_array_core.scala 23:31]
    node _T_3 = asSInt(_T_2) @[systolic_array_core.scala 23:31]
    nodeAfterPlus <= _T_3 @[systolic_array_core.scala 23:23]
    regC <= nodeAfterPlus @[systolic_array_core.scala 24:14]
    io.cout <= regC @[systolic_array_core.scala 25:17]
    
  module SystolicArrayCore_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip ain : SInt<32>, flip bin : SInt<32>, aout : SInt<32>, bout : SInt<32>, cout : SInt<32>}
    
    reg regA : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 13:27]
    reg regB : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 14:27]
    reg regC : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 15:27]
    regA <= io.ain @[systolic_array_core.scala 16:14]
    regB <= io.bin @[systolic_array_core.scala 17:14]
    io.aout <= regA @[systolic_array_core.scala 18:17]
    io.bout <= regB @[systolic_array_core.scala 19:17]
    wire nodeAfterMul : SInt<32> @[systolic_array_core.scala 20:32]
    node _T = mul(regA, regB) @[systolic_array_core.scala 21:30]
    nodeAfterMul <= _T @[systolic_array_core.scala 21:22]
    wire nodeAfterPlus : SInt<32> @[systolic_array_core.scala 22:33]
    node _T_1 = add(regC, nodeAfterMul) @[systolic_array_core.scala 23:31]
    node _T_2 = tail(_T_1, 1) @[systolic_array_core.scala 23:31]
    node _T_3 = asSInt(_T_2) @[systolic_array_core.scala 23:31]
    nodeAfterPlus <= _T_3 @[systolic_array_core.scala 23:23]
    regC <= nodeAfterPlus @[systolic_array_core.scala 24:14]
    io.cout <= regC @[systolic_array_core.scala 25:17]
    
  module SystolicArrayCore_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip ain : SInt<32>, flip bin : SInt<32>, aout : SInt<32>, bout : SInt<32>, cout : SInt<32>}
    
    reg regA : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 13:27]
    reg regB : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 14:27]
    reg regC : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 15:27]
    regA <= io.ain @[systolic_array_core.scala 16:14]
    regB <= io.bin @[systolic_array_core.scala 17:14]
    io.aout <= regA @[systolic_array_core.scala 18:17]
    io.bout <= regB @[systolic_array_core.scala 19:17]
    wire nodeAfterMul : SInt<32> @[systolic_array_core.scala 20:32]
    node _T = mul(regA, regB) @[systolic_array_core.scala 21:30]
    nodeAfterMul <= _T @[systolic_array_core.scala 21:22]
    wire nodeAfterPlus : SInt<32> @[systolic_array_core.scala 22:33]
    node _T_1 = add(regC, nodeAfterMul) @[systolic_array_core.scala 23:31]
    node _T_2 = tail(_T_1, 1) @[systolic_array_core.scala 23:31]
    node _T_3 = asSInt(_T_2) @[systolic_array_core.scala 23:31]
    nodeAfterPlus <= _T_3 @[systolic_array_core.scala 23:23]
    regC <= nodeAfterPlus @[systolic_array_core.scala 24:14]
    io.cout <= regC @[systolic_array_core.scala 25:17]
    
  module SystolicArrayCore_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip ain : SInt<32>, flip bin : SInt<32>, aout : SInt<32>, bout : SInt<32>, cout : SInt<32>}
    
    reg regA : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 13:27]
    reg regB : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 14:27]
    reg regC : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 15:27]
    regA <= io.ain @[systolic_array_core.scala 16:14]
    regB <= io.bin @[systolic_array_core.scala 17:14]
    io.aout <= regA @[systolic_array_core.scala 18:17]
    io.bout <= regB @[systolic_array_core.scala 19:17]
    wire nodeAfterMul : SInt<32> @[systolic_array_core.scala 20:32]
    node _T = mul(regA, regB) @[systolic_array_core.scala 21:30]
    nodeAfterMul <= _T @[systolic_array_core.scala 21:22]
    wire nodeAfterPlus : SInt<32> @[systolic_array_core.scala 22:33]
    node _T_1 = add(regC, nodeAfterMul) @[systolic_array_core.scala 23:31]
    node _T_2 = tail(_T_1, 1) @[systolic_array_core.scala 23:31]
    node _T_3 = asSInt(_T_2) @[systolic_array_core.scala 23:31]
    nodeAfterPlus <= _T_3 @[systolic_array_core.scala 23:23]
    regC <= nodeAfterPlus @[systolic_array_core.scala 24:14]
    io.cout <= regC @[systolic_array_core.scala 25:17]
    
  module SystolicArray : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip ain : SInt<32>[2], flip bin : SInt<32>[3], cout : SInt<32>[3][2]}
    
    inst SystolicArrayCore of SystolicArrayCore @[systolic_array.scala 11:51]
    SystolicArrayCore.clock <= clock
    SystolicArrayCore.reset <= reset
    inst SystolicArrayCore_1 of SystolicArrayCore_1 @[systolic_array.scala 11:51]
    SystolicArrayCore_1.clock <= clock
    SystolicArrayCore_1.reset <= reset
    inst SystolicArrayCore_2 of SystolicArrayCore_2 @[systolic_array.scala 11:51]
    SystolicArrayCore_2.clock <= clock
    SystolicArrayCore_2.reset <= reset
    inst SystolicArrayCore_3 of SystolicArrayCore_3 @[systolic_array.scala 11:51]
    SystolicArrayCore_3.clock <= clock
    SystolicArrayCore_3.reset <= reset
    inst SystolicArrayCore_4 of SystolicArrayCore_4 @[systolic_array.scala 11:51]
    SystolicArrayCore_4.clock <= clock
    SystolicArrayCore_4.reset <= reset
    inst SystolicArrayCore_5 of SystolicArrayCore_5 @[systolic_array.scala 11:51]
    SystolicArrayCore_5.clock <= clock
    SystolicArrayCore_5.reset <= reset
    wire cores : {flip ain : SInt<32>, flip bin : SInt<32>, aout : SInt<32>, bout : SInt<32>, cout : SInt<32>}[6] @[systolic_array.scala 11:28]
    cores[0].cout <= SystolicArrayCore.io.cout @[systolic_array.scala 11:28]
    cores[0].bout <= SystolicArrayCore.io.bout @[systolic_array.scala 11:28]
    cores[0].aout <= SystolicArrayCore.io.aout @[systolic_array.scala 11:28]
    SystolicArrayCore.io.bin <= cores[0].bin @[systolic_array.scala 11:28]
    SystolicArrayCore.io.ain <= cores[0].ain @[systolic_array.scala 11:28]
    cores[1].cout <= SystolicArrayCore_1.io.cout @[systolic_array.scala 11:28]
    cores[1].bout <= SystolicArrayCore_1.io.bout @[systolic_array.scala 11:28]
    cores[1].aout <= SystolicArrayCore_1.io.aout @[systolic_array.scala 11:28]
    SystolicArrayCore_1.io.bin <= cores[1].bin @[systolic_array.scala 11:28]
    SystolicArrayCore_1.io.ain <= cores[1].ain @[systolic_array.scala 11:28]
    cores[2].cout <= SystolicArrayCore_2.io.cout @[systolic_array.scala 11:28]
    cores[2].bout <= SystolicArrayCore_2.io.bout @[systolic_array.scala 11:28]
    cores[2].aout <= SystolicArrayCore_2.io.aout @[systolic_array.scala 11:28]
    SystolicArrayCore_2.io.bin <= cores[2].bin @[systolic_array.scala 11:28]
    SystolicArrayCore_2.io.ain <= cores[2].ain @[systolic_array.scala 11:28]
    cores[3].cout <= SystolicArrayCore_3.io.cout @[systolic_array.scala 11:28]
    cores[3].bout <= SystolicArrayCore_3.io.bout @[systolic_array.scala 11:28]
    cores[3].aout <= SystolicArrayCore_3.io.aout @[systolic_array.scala 11:28]
    SystolicArrayCore_3.io.bin <= cores[3].bin @[systolic_array.scala 11:28]
    SystolicArrayCore_3.io.ain <= cores[3].ain @[systolic_array.scala 11:28]
    cores[4].cout <= SystolicArrayCore_4.io.cout @[systolic_array.scala 11:28]
    cores[4].bout <= SystolicArrayCore_4.io.bout @[systolic_array.scala 11:28]
    cores[4].aout <= SystolicArrayCore_4.io.aout @[systolic_array.scala 11:28]
    SystolicArrayCore_4.io.bin <= cores[4].bin @[systolic_array.scala 11:28]
    SystolicArrayCore_4.io.ain <= cores[4].ain @[systolic_array.scala 11:28]
    cores[5].cout <= SystolicArrayCore_5.io.cout @[systolic_array.scala 11:28]
    cores[5].bout <= SystolicArrayCore_5.io.bout @[systolic_array.scala 11:28]
    cores[5].aout <= SystolicArrayCore_5.io.aout @[systolic_array.scala 11:28]
    SystolicArrayCore_5.io.bin <= cores[5].bin @[systolic_array.scala 11:28]
    SystolicArrayCore_5.io.ain <= cores[5].ain @[systolic_array.scala 11:28]
    io.cout[0][0] <= cores[0].cout @[systolic_array.scala 14:39]
    cores[0].ain <= io.ain[0] @[systolic_array.scala 15:54]
    cores[0].bin <= io.bin[0] @[systolic_array.scala 17:54]
    io.cout[0][1] <= cores[1].cout @[systolic_array.scala 14:39]
    cores[1].ain <= cores[0].aout @[systolic_array.scala 16:48]
    cores[1].bin <= io.bin[1] @[systolic_array.scala 17:54]
    io.cout[0][2] <= cores[2].cout @[systolic_array.scala 14:39]
    cores[2].ain <= cores[1].aout @[systolic_array.scala 16:48]
    cores[2].bin <= io.bin[2] @[systolic_array.scala 17:54]
    io.cout[1][0] <= cores[3].cout @[systolic_array.scala 14:39]
    cores[3].ain <= io.ain[1] @[systolic_array.scala 15:54]
    cores[3].bin <= cores[0].bout @[systolic_array.scala 18:48]
    io.cout[1][1] <= cores[4].cout @[systolic_array.scala 14:39]
    cores[4].ain <= cores[3].aout @[systolic_array.scala 16:48]
    cores[4].bin <= cores[1].bout @[systolic_array.scala 18:48]
    io.cout[1][2] <= cores[5].cout @[systolic_array.scala 14:39]
    cores[5].ain <= cores[4].aout @[systolic_array.scala 16:48]
    cores[5].bin <= cores[2].bout @[systolic_array.scala 18:48]
    
