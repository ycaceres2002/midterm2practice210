stackpractice1.o: stackpractice1.s
	as -g stackpractice1.s -o stackpractice1.o
stackpractice1: stackpractice1.o
	ld -g stackpractice1.o -o stackpractice1
