INC_DIR	=external/include
INC	=$(patsubst %,-I%,$(INC_DIR))
LIBS	=$(wildcard $(LIB_DIR)/*)

ifeq ($(OS),Windows_NT)
include windows.mk
else
include nix.mk
endif

all: $(EXE)

$(EXE): platform_main.c
	$(CC) $(CFLAGS) $(INC) $^ -o $@ $(LIBS)

.PHONY: clean run
clean:
	$(CLEAN)

run: $(EXE)
	$^
