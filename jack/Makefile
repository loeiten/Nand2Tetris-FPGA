all: jack vm asm prog

jack:
	python3 ../tools/jack_compiler/jack_compiler.py ./

vm:
	python3 ../tools/vm_translator/vm_translator.py ./

asm:
	python3 ../tools/assembler/assembler.py jack.asm

prog:
	cat jack.hack > /dev/ttyACM0

clean:
	rm -f *.vm *.asm *.hack *~

.PHONY: all clean
