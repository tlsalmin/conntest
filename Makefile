RM=rm -f
CC=cc
CFLAGS=-g -O3 -Wall -D_GNU_SOURCE

all: conntest

conntest: conntest.o ike.o
	$(CC) -o conntest conntest.o ike.o

clean: 
	-$(RM) conntest conntest.o ike.o
