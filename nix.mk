CC	=gcc
CFLAGS	=-g

LIB_DIR =external/libraries/nix
LIBS	+=-lm

EXE	=main

CLEAN	=rm -rf $(EXE) *.o
