package systolic
 
import chisel3._
 
class SystolicArrayCore extends Module {
	val io = IO(new Bundle {
		val ain = Input(SInt(32.W))
		val bin = Input(SInt(32.W))
		val sin = Input(Bool())
		val sout = Output(Bool())
		val aout = Output(SInt(32.W))
		val bout = Output(SInt(32.W))
	})
	val regA = RegInit(0.S(32.W))
	val regB = RegInit(0.S(32.W))
	val regC = RegInit(0.S(32.W))
	val regS = RegInit(true.B)
	regA := io.ain
	regB := io.bin
	regS := io.sin
	io.aout := regA
	io.sout := regS
	val nodeAfterMul = Wire(SInt(32.W))
	nodeAfterMul := regA * regB
	val nodeAfterPlus = Wire(SInt(32.W))
	nodeAfterPlus := regC + nodeAfterMul
	regC := Mux(regS, regB, nodeAfterPlus)
	io.bout := Mux(regS, regC, regB)
}
