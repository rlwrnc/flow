CC	=zig cc
CFLAGS	=-static

LIB_DIR +=external/libraries/windows
LIBS	+=-lgdi32

EXE	=main.exe

CLEAN	=del *.exe *.pdb *.obj
