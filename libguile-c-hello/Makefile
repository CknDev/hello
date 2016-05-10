# Use GCC, if you have it installed.
CC=gcc

# Tell the C compiler where to find <libguile.h>
CFLAGS=`pkg-config --cflags guile-2.0`

# Tell the linker what libraries to use and where to find them.
LIBS=`pkg-config --libs guile-2.0`

main: main.o
	${CC} main.o ${LIBS} -o main

main.o: main.c
	${CC} -c ${CFLAGS} main.c
