# Simple-Systolic-Array


This is a simple systolic array for matrix product

It can compute C = A\*B+D where A is an array of N1\*N3, B is an array of N3\*N2, and C and D are two arrays of N1\*N2

It is an implement of Figure 12.13 in the book(?)'s Chapter 12.Systolic System

------

The design of each index is in ```src/main/scala/systolic_array_core.scala```

The whole design of the systolic array is in ```src/main/scala/systolic_array.scala```

The tester is in ```src/main/scala/systolic_array_tester.scala```

------

The tester generates three arrays a(i)(j)=i\*N3+j and b(i)(j)=d(i)(j)=i\*N2+j, and then puts them into the systolic array and test the results

You can use ```sbt 'test:runMain systolic.SystolicArrayTesterGen -td ./generated/systolic_array_tester --is-verbose'``` to see the results, and you can also modify the parameters in the tester

------

I didn't write the RAM for input and output because it doesn't matter with the systolic array. I just wrote a PokePeekTester to test the results

