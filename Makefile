# Makefile

EXE1 = d2q9-bgk.exe
EXES = $(EXE1)

TCC = tau_cc.sh
CC = gcc-4.9
CFLAGS = -Ofast -fopenmp -lm -Wall

all: $(EXES)

$(EXES): %.exe : %.c
	$(CC) $^ -o $@

.PHONY: all clean

clean:
	\rm -f $(EXES)

