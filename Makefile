CFLAGS=-std=c11 -g -static

honenashichicken: honenashichicken.c

test: honenashichicken
        ./test.sh

clean:
        rm -f 9cc *.o *~ tmp*

.PHONY: test clean
