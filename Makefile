stackpractice1.o: stackpractice1.s
	as -g stackpractice1.s -o stackpractice1.o
stackpractice1: stackpractice1.o
	ld -g stackpractice1.o -o stackpractice1

problem3.o: problem3.s
	as -g problem3.s -o problem3.o
problem3: problem3.o
	ld -g problem3.o -o problem3
