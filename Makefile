EXECS= k_means
CC=gcc
MPICC=mpicc

FLAGS=-O3 -Wall -g -lm 

all: ${EXECS}

k_means: k_means.c
	${MPICC} ${FLAGS} -o k_means $^ 

clean:
	rm -r k_means k_means.dSYM
