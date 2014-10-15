# Makefile

EXE1 = d2q9-bgk.exe
EXES = $(EXE1)

TCC = tau_cc.sh
CC = gcc-4.9
CFLAGS = -O2 -lm -fopenmp -Wall -DDEBUG

all: $(EXES)

$(EXES): %.exe : %.c
	$(CC) $(CFLAGS) $^ -o $@

.PHONY: all clean

clean:
	\rm -f $(EXES)

