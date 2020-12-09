package systolic
 
object SystolicArrayGen extends App {
	chisel3.Driver.execute(args, () => new SystolicArray(args(0).toInt, args(1).toInt))
}
