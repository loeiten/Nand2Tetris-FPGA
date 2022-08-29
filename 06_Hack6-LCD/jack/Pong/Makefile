all: jack vm asm prog

jack:
	../../../tools/JackCompiler/JackCompiler.pyc ./
vm:
	../../../tools/VMTranslator/VMTranslator.pyc ./
asm:
	../../../tools/Assembler/assembler.pyc out.asm
prog:
	cat out.hack > /dev/ttyACM0
clean:
	rm -f *.vm *.asm *.hack *~

.PHONY: all clean
