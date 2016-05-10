all:
	gcc -c main.c
	ar rvs mylib.a main.o
	nim c --passL:mylib.a -r main.nim
