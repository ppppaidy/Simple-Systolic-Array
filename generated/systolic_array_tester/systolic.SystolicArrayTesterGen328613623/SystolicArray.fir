;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit SystolicArray : 
  module SystolicArrayCore : 
    input clock : Clock
    input reset : Reset
    output io : {flip ain : SInt<32>, flip bin : SInt<32>, flip sin : UInt<1>, sout : UInt<1>, aout : SInt<32>, bout : SInt<32>}
    
    reg regA : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 14:27]
    reg regB : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 15:27]
    reg regC : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 16:27]
    reg regS : UInt<1>, clock with : (reset => (reset, UInt<1>("h01"))) @[systolic_array_core.scala 17:27]
    regA <= io.ain @[systolic_array_core.scala 18:14]
    regB <= io.bin @[systolic_array_core.scala 19:14]
    regS <= io.sin @[systolic_array_core.scala 20:14]
    io.aout <= regA @[systolic_array_core.scala 21:17]
    io.sout <= regS @[systolic_array_core.scala 22:17]
    wire nodeAfterMul : SInt<32> @[systolic_array_core.scala 23:32]
    node _T = mul(regA, regB) @[systolic_array_core.scala 24:30]
    nodeAfterMul <= _T @[systolic_array_core.scala 24:22]
    wire nodeAfterPlus : SInt<32> @[systolic_array_core.scala 25:33]
    node _T_1 = add(regC, nodeAfterMul) @[systolic_array_core.scala 26:31]
    node _T_2 = tail(_T_1, 1) @[systolic_array_core.scala 26:31]
    node _T_3 = asSInt(_T_2) @[systolic_array_core.scala 26:31]
    nodeAfterPlus <= _T_3 @[systolic_array_core.scala 26:23]
    node _T_4 = mux(regS, regB, nodeAfterPlus) @[systolic_array_core.scala 27:20]
    regC <= _T_4 @[systolic_array_core.scala 27:14]
    node _T_5 = mux(regS, regC, regB) @[systolic_array_core.scala 28:23]
    io.bout <= _T_5 @[systolic_array_core.scala 28:17]
    
  module SystolicArrayCore_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip ain : SInt<32>, flip bin : SInt<32>, flip sin : UInt<1>, sout : UInt<1>, aout : SInt<32>, bout : SInt<32>}
    
    reg regA : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 14:27]
    reg regB : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 15:27]
    reg regC : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 16:27]
    reg regS : UInt<1>, clock with : (reset => (reset, UInt<1>("h01"))) @[systolic_array_core.scala 17:27]
    regA <= io.ain @[systolic_array_core.scala 18:14]
    regB <= io.bin @[systolic_array_core.scala 19:14]
    regS <= io.sin @[systolic_array_core.scala 20:14]
    io.aout <= regA @[systolic_array_core.scala 21:17]
    io.sout <= regS @[systolic_array_core.scala 22:17]
    wire nodeAfterMul : SInt<32> @[systolic_array_core.scala 23:32]
    node _T = mul(regA, regB) @[systolic_array_core.scala 24:30]
    nodeAfterMul <= _T @[systolic_array_core.scala 24:22]
    wire nodeAfterPlus : SInt<32> @[systolic_array_core.scala 25:33]
    node _T_1 = add(regC, nodeAfterMul) @[systolic_array_core.scala 26:31]
    node _T_2 = tail(_T_1, 1) @[systolic_array_core.scala 26:31]
    node _T_3 = asSInt(_T_2) @[systolic_array_core.scala 26:31]
    nodeAfterPlus <= _T_3 @[systolic_array_core.scala 26:23]
    node _T_4 = mux(regS, regB, nodeAfterPlus) @[systolic_array_core.scala 27:20]
    regC <= _T_4 @[systolic_array_core.scala 27:14]
    node _T_5 = mux(regS, regC, regB) @[systolic_array_core.scala 28:23]
    io.bout <= _T_5 @[systolic_array_core.scala 28:17]
    
  module SystolicArrayCore_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip ain : SInt<32>, flip bin : SInt<32>, flip sin : UInt<1>, sout : UInt<1>, aout : SInt<32>, bout : SInt<32>}
    
    reg regA : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 14:27]
    reg regB : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 15:27]
    reg regC : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 16:27]
    reg regS : UInt<1>, clock with : (reset => (reset, UInt<1>("h01"))) @[systolic_array_core.scala 17:27]
    regA <= io.ain @[systolic_array_core.scala 18:14]
    regB <= io.bin @[systolic_array_core.scala 19:14]
    regS <= io.sin @[systolic_array_core.scala 20:14]
    io.aout <= regA @[systolic_array_core.scala 21:17]
    io.sout <= regS @[systolic_array_core.scala 22:17]
    wire nodeAfterMul : SInt<32> @[systolic_array_core.scala 23:32]
    node _T = mul(regA, regB) @[systolic_array_core.scala 24:30]
    nodeAfterMul <= _T @[systolic_array_core.scala 24:22]
    wire nodeAfterPlus : SInt<32> @[systolic_array_core.scala 25:33]
    node _T_1 = add(regC, nodeAfterMul) @[systolic_array_core.scala 26:31]
    node _T_2 = tail(_T_1, 1) @[systolic_array_core.scala 26:31]
    node _T_3 = asSInt(_T_2) @[systolic_array_core.scala 26:31]
    nodeAfterPlus <= _T_3 @[systolic_array_core.scala 26:23]
    node _T_4 = mux(regS, regB, nodeAfterPlus) @[systolic_array_core.scala 27:20]
    regC <= _T_4 @[systolic_array_core.scala 27:14]
    node _T_5 = mux(regS, regC, regB) @[systolic_array_core.scala 28:23]
    io.bout <= _T_5 @[systolic_array_core.scala 28:17]
    
  module SystolicArrayCore_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip ain : SInt<32>, flip bin : SInt<32>, flip sin : UInt<1>, sout : UInt<1>, aout : SInt<32>, bout : SInt<32>}
    
    reg regA : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 14:27]
    reg regB : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 15:27]
    reg regC : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 16:27]
    reg regS : UInt<1>, clock with : (reset => (reset, UInt<1>("h01"))) @[systolic_array_core.scala 17:27]
    regA <= io.ain @[systolic_array_core.scala 18:14]
    regB <= io.bin @[systolic_array_core.scala 19:14]
    regS <= io.sin @[systolic_array_core.scala 20:14]
    io.aout <= regA @[systolic_array_core.scala 21:17]
    io.sout <= regS @[systolic_array_core.scala 22:17]
    wire nodeAfterMul : SInt<32> @[systolic_array_core.scala 23:32]
    node _T = mul(regA, regB) @[systolic_array_core.scala 24:30]
    nodeAfterMul <= _T @[systolic_array_core.scala 24:22]
    wire nodeAfterPlus : SInt<32> @[systolic_array_core.scala 25:33]
    node _T_1 = add(regC, nodeAfterMul) @[systolic_array_core.scala 26:31]
    node _T_2 = tail(_T_1, 1) @[systolic_array_core.scala 26:31]
    node _T_3 = asSInt(_T_2) @[systolic_array_core.scala 26:31]
    nodeAfterPlus <= _T_3 @[systolic_array_core.scala 26:23]
    node _T_4 = mux(regS, regB, nodeAfterPlus) @[systolic_array_core.scala 27:20]
    regC <= _T_4 @[systolic_array_core.scala 27:14]
    node _T_5 = mux(regS, regC, regB) @[systolic_array_core.scala 28:23]
    io.bout <= _T_5 @[systolic_array_core.scala 28:17]
    
  module SystolicArrayCore_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip ain : SInt<32>, flip bin : SInt<32>, flip sin : UInt<1>, sout : UInt<1>, aout : SInt<32>, bout : SInt<32>}
    
    reg regA : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 14:27]
    reg regB : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 15:27]
    reg regC : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 16:27]
    reg regS : UInt<1>, clock with : (reset => (reset, UInt<1>("h01"))) @[systolic_array_core.scala 17:27]
    regA <= io.ain @[systolic_array_core.scala 18:14]
    regB <= io.bin @[systolic_array_core.scala 19:14]
    regS <= io.sin @[systolic_array_core.scala 20:14]
    io.aout <= regA @[systolic_array_core.scala 21:17]
    io.sout <= regS @[systolic_array_core.scala 22:17]
    wire nodeAfterMul : SInt<32> @[systolic_array_core.scala 23:32]
    node _T = mul(regA, regB) @[systolic_array_core.scala 24:30]
    nodeAfterMul <= _T @[systolic_array_core.scala 24:22]
    wire nodeAfterPlus : SInt<32> @[systolic_array_core.scala 25:33]
    node _T_1 = add(regC, nodeAfterMul) @[systolic_array_core.scala 26:31]
    node _T_2 = tail(_T_1, 1) @[systolic_array_core.scala 26:31]
    node _T_3 = asSInt(_T_2) @[systolic_array_core.scala 26:31]
    nodeAfterPlus <= _T_3 @[systolic_array_core.scala 26:23]
    node _T_4 = mux(regS, regB, nodeAfterPlus) @[systolic_array_core.scala 27:20]
    regC <= _T_4 @[systolic_array_core.scala 27:14]
    node _T_5 = mux(regS, regC, regB) @[systolic_array_core.scala 28:23]
    io.bout <= _T_5 @[systolic_array_core.scala 28:17]
    
  module SystolicArrayCore_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip ain : SInt<32>, flip bin : SInt<32>, flip sin : UInt<1>, sout : UInt<1>, aout : SInt<32>, bout : SInt<32>}
    
    reg regA : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 14:27]
    reg regB : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 15:27]
    reg regC : SInt<32>, clock with : (reset => (reset, asSInt(UInt<32>("h00")))) @[systolic_array_core.scala 16:27]
    reg regS : UInt<1>, clock with : (reset => (reset, UInt<1>("h01"))) @[systolic_array_core.scala 17:27]
    regA <= io.ain @[systolic_array_core.scala 18:14]
    regB <= io.bin @[systolic_array_core.scala 19:14]
    regS <= io.sin @[systolic_array_core.scala 20:14]
    io.aout <= regA @[systolic_array_core.scala 21:17]
    io.sout <= regS @[systolic_array_core.scala 22:17]
    wire nodeAfterMul : SInt<32> @[systolic_array_core.scala 23:32]
    node _T = mul(regA, regB) @[systolic_array_core.scala 24:30]
    nodeAfterMul <= _T @[systolic_array_core.scala 24:22]
    wire nodeAfterPlus : SInt<32> @[systolic_array_core.scala 25:33]
    node _T_1 = add(regC, nodeAfterMul) @[systolic_array_core.scala 26:31]
    node _T_2 = tail(_T_1, 1) @[systolic_array_core.scala 26:31]
    node _T_3 = asSInt(_T_2) @[systolic_array_core.scala 26:31]
    nodeAfterPlus <= _T_3 @[systolic_array_core.scala 26:23]
    node _T_4 = mux(regS, regB, nodeAfterPlus) @[systolic_array_core.scala 27:20]
    regC <= _T_4 @[systolic_array_core.scala 27:14]
    node _T_5 = mux(regS, regC, regB) @[systolic_array_core.scala 28:23]
    io.bout <= _T_5 @[systolic_array_core.scala 28:17]
    
  module SystolicArray : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip ain : SInt<32>[2], flip bin : SInt<32>[3], flip sin : UInt<1>, cout : SInt<32>[3]}
    
    inst SystolicArrayCore of SystolicArrayCore @[systolic_array.scala 12:51]
    SystolicArrayCore.clock <= clock
    SystolicArrayCore.reset <= reset
    inst SystolicArrayCore_1 of SystolicArrayCore_1 @[systolic_array.scala 12:51]
    SystolicArrayCore_1.clock <= clock
    SystolicArrayCore_1.reset <= reset
    inst SystolicArrayCore_2 of SystolicArrayCore_2 @[systolic_array.scala 12:51]
    SystolicArrayCore_2.clock <= clock
    SystolicArrayCore_2.reset <= reset
    inst SystolicArrayCore_3 of SystolicArrayCore_3 @[systolic_array.scala 12:51]
    SystolicArrayCore_3.clock <= clock
    SystolicArrayCore_3.reset <= reset
    inst SystolicArrayCore_4 of SystolicArrayCore_4 @[systolic_array.scala 12:51]
    SystolicArrayCore_4.clock <= clock
    SystolicArrayCore_4.reset <= reset
    inst SystolicArrayCore_5 of SystolicArrayCore_5 @[systolic_array.scala 12:51]
    SystolicArrayCore_5.clock <= clock
    SystolicArrayCore_5.reset <= reset
    wire cores : {flip ain : SInt<32>, flip bin : SInt<32>, flip sin : UInt<1>, sout : UInt<1>, aout : SInt<32>, bout : SInt<32>}[6] @[systolic_array.scala 12:28]
    cores[0].bout <= SystolicArrayCore.io.bout @[systolic_array.scala 12:28]
    cores[0].aout <= SystolicArrayCore.io.aout @[systolic_array.scala 12:28]
    cores[0].sout <= SystolicArrayCore.io.sout @[systolic_array.scala 12:28]
    SystolicArrayCore.io.sin <= cores[0].sin @[systolic_array.scala 12:28]
    SystolicArrayCore.io.bin <= cores[0].bin @[systolic_array.scala 12:28]
    SystolicArrayCore.io.ain <= cores[0].ain @[systolic_array.scala 12:28]
    cores[1].bout <= SystolicArrayCore_1.io.bout @[systolic_array.scala 12:28]
    cores[1].aout <= SystolicArrayCore_1.io.aout @[systolic_array.scala 12:28]
    cores[1].sout <= SystolicArrayCore_1.io.sout @[systolic_array.scala 12:28]
    SystolicArrayCore_1.io.sin <= cores[1].sin @[systolic_array.scala 12:28]
    SystolicArrayCore_1.io.bin <= cores[1].bin @[systolic_array.scala 12:28]
    SystolicArrayCore_1.io.ain <= cores[1].ain @[systolic_array.scala 12:28]
    cores[2].bout <= SystolicArrayCore_2.io.bout @[systolic_array.scala 12:28]
    cores[2].aout <= SystolicArrayCore_2.io.aout @[systolic_array.scala 12:28]
    cores[2].sout <= SystolicArrayCore_2.io.sout @[systolic_array.scala 12:28]
    SystolicArrayCore_2.io.sin <= cores[2].sin @[systolic_array.scala 12:28]
    SystolicArrayCore_2.io.bin <= cores[2].bin @[systolic_array.scala 12:28]
    SystolicArrayCore_2.io.ain <= cores[2].ain @[systolic_array.scala 12:28]
    cores[3].bout <= SystolicArrayCore_3.io.bout @[systolic_array.scala 12:28]
    cores[3].aout <= SystolicArrayCore_3.io.aout @[systolic_array.scala 12:28]
    cores[3].sout <= SystolicArrayCore_3.io.sout @[systolic_array.scala 12:28]
    SystolicArrayCore_3.io.sin <= cores[3].sin @[systolic_array.scala 12:28]
    SystolicArrayCore_3.io.bin <= cores[3].bin @[systolic_array.scala 12:28]
    SystolicArrayCore_3.io.ain <= cores[3].ain @[systolic_array.scala 12:28]
    cores[4].bout <= SystolicArrayCore_4.io.bout @[systolic_array.scala 12:28]
    cores[4].aout <= SystolicArrayCore_4.io.aout @[systolic_array.scala 12:28]
    cores[4].sout <= SystolicArrayCore_4.io.sout @[systolic_array.scala 12:28]
    SystolicArrayCore_4.io.sin <= cores[4].sin @[systolic_array.scala 12:28]
    SystolicArrayCore_4.io.bin <= cores[4].bin @[systolic_array.scala 12:28]
    SystolicArrayCore_4.io.ain <= cores[4].ain @[systolic_array.scala 12:28]
    cores[5].bout <= SystolicArrayCore_5.io.bout @[systolic_array.scala 12:28]
    cores[5].aout <= SystolicArrayCore_5.io.aout @[systolic_array.scala 12:28]
    cores[5].sout <= SystolicArrayCore_5.io.sout @[systolic_array.scala 12:28]
    SystolicArrayCore_5.io.sin <= cores[5].sin @[systolic_array.scala 12:28]
    SystolicArrayCore_5.io.bin <= cores[5].bin @[systolic_array.scala 12:28]
    SystolicArrayCore_5.io.ain <= cores[5].ain @[systolic_array.scala 12:28]
    cores[0].ain <= io.ain[0] @[systolic_array.scala 15:54]
    cores[0].bin <= io.bin[0] @[systolic_array.scala 17:54]
    cores[0].sin <= io.sin @[systolic_array.scala 21:57]
    cores[1].ain <= cores[0].aout @[systolic_array.scala 16:48]
    cores[1].bin <= io.bin[1] @[systolic_array.scala 17:54]
    cores[1].sin <= cores[0].sout @[systolic_array.scala 22:51]
    cores[2].ain <= cores[1].aout @[systolic_array.scala 16:48]
    cores[2].bin <= io.bin[2] @[systolic_array.scala 17:54]
    cores[2].sin <= cores[1].sout @[systolic_array.scala 22:51]
    cores[3].ain <= io.ain[1] @[systolic_array.scala 15:54]
    cores[3].bin <= cores[0].bout @[systolic_array.scala 18:48]
    io.cout[0] <= cores[3].bout @[systolic_array.scala 19:50]
    cores[3].sin <= cores[0].sout @[systolic_array.scala 23:48]
    cores[4].ain <= cores[3].aout @[systolic_array.scala 16:48]
    cores[4].bin <= cores[1].bout @[systolic_array.scala 18:48]
    io.cout[1] <= cores[4].bout @[systolic_array.scala 19:50]
    cores[4].sin <= cores[1].sout @[systolic_array.scala 23:48]
    cores[5].ain <= cores[4].aout @[systolic_array.scala 16:48]
    cores[5].bin <= cores[2].bout @[systolic_array.scala 18:48]
    io.cout[2] <= cores[5].bout @[systolic_array.scala 19:50]
    cores[5].sin <= cores[2].sout @[systolic_array.scala 23:48]
    
