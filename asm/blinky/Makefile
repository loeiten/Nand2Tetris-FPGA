NAME = blinky

all: asm prog

asm:
	../../tools/Assembler/assembler.pyc $(NAME).asm
prog:
	cat $(NAME).hack > /dev/ttyACM0
clean:
	rm -f *.hack *~

.PHONY: all clean
