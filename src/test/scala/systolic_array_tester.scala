package systolic
 
import scala.util._
import chisel3.iotesters._

class SystolicArrayTester(s : SystolicArray, N1 : Int, N2 : Int, N3 : Int) extends PeekPokeTester(s){
	val a = Array.ofDim[Int](N1, N3)
	val b = Array.ofDim[Int](N3, N2)
	val c = Array.ofDim[Int](N1, N2)
	val d = Array.ofDim[Int](N1, N2)
	val c_std = Array.ofDim[Int](N1, N2)
	
	for(i <- 0 until N1)
		for(j <- 0 until N3)
			a(i)(j) = i*N3 + j
	for(i <- 0 until N3)
		for(j <- 0 until N2)
			b(i)(j) = i*N2 + j
	for(i <- 0 until N1)
		for(j <- 0 until N2)
			d(i)(j) = i*N2 + j
	for(i <- 0 until N1)
		for(j <- 0 until N2){
			c_std(i)(j) = d(i)(j)
			for(k <- 0 until N3)
				c_std(i)(j) += a(i)(k)*b(k)(j)
		}
		
	for(time <- 1 to 3*N1+N2+N3){
		for(i <- 1 to N1)
			if(i+N1 <= time && time < i+N1+N3)
				poke(s.io.ain(i-1), a(i-1)(time-i-N1))
			else poke(s.io.ain(i-1), 0)
		
		for(i <- 1 to N2)
			if(i+N1 <= time && time < i+N1+N3)
				poke(s.io.bin(i-1), b(time-i-N1)(i-1))
			else if (i <= time && time < i+N1)
				poke(s.io.bin(i-1), d(N1-time+i-1)(i-1))
			else poke(s.io.bin(i-1), 0)
		
		if(time <= N1 || time > N1+N3) poke(s.io.sin, 1)
		else poke(s.io.sin, 0)
		
		for(i <- 0 until N2)
			if(i+2*N1+N3+1 <= time && time < i+3*N1+N3+1)
				expect(s.io.cout(i),c_std(N1-time+i+2*N1+N3)(i))

		step(1)
	}
	/*for(i <- 0 until N1){
		for(j <- 0 until N2)
			print(s"${c(i)(j)} ")
		println("")
	}*/
}

object SystolicArrayTesterGen extends App{
	val N1 = 2
	val N2 = 3
	val N3 = 4
	chisel3.iotesters.Driver.execute(args, () => new SystolicArray(N1,N2))(s => new SystolicArrayTester(s,N1,N2,N3))
}
