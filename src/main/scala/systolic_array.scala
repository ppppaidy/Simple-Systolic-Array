package systolic
 
import chisel3._
 
class SystolicArray(N1: Int, N2: Int) extends Module {
	val io = IO(new Bundle {
		val ain = Input(Vec(N1, SInt(32.W)))
		val bin = Input(Vec(N2, SInt(32.W)))
		val sin = Input(Bool())
		val cout = Output(Vec(N2, SInt(32.W)))
	})
	val cores = VecInit(Seq.fill(N1*N2)(Module(new SystolicArrayCore).io))
	for(i <- 0 until N1)
		for(j <- 0 until N2){
			if(j == 0) cores(i*N2+j).ain := io.ain(i)
			else cores(i*N2+j).ain := cores(i*N2+j-1).aout
			if(i == 0) cores(i*N2+j).bin := io.bin(j)
			else cores(i*N2+j).bin := cores((i-1)*N2+j).bout
			if(i == N1-1) io.cout(j) := cores(i*N2+j).bout
			if(i == 0)
				if(j == 0) cores(0).sin := io.sin
				else cores(j).sin := cores(j-1).sout
			else cores(i*N2+j).sin := cores((i-1)*N2+j).sout
		}
}
