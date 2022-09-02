EXECUTABLE_NAME := jack

BUILD_DIR := build
VM_DIR := $(BUILD_DIR)/vm_files
ASM_DIR := $(BUILD_DIR)/asm_file
INPUTS := $(wildcard *.jack)
OUTPUT := $(BUILD_DIR)/$(EXECUTABLE_NAME).hack

all: $(OUTPUT)

# Upload the hack executable to the device
upload:
	cat $(OUTPUT) > /dev/ttyACM0

# Create the hack executable
$(OUTPUT): $(ASM_DIR)/$(EXECUTABLE_NAME).asm
	PYTHONPATH=$(abspath ../tools/assembler) python3 -m assembler.assembler $(ASM_DIR)/$(EXECUTABLE_NAME).asm
	mv $(ASM_DIR)/$(EXECUTABLE_NAME).hack $(OUTPUT)

# Create the mnemonic/symbolic assembly
$(ASM_DIR)/$(EXECUTABLE_NAME).asm: $(VM_DIR)
	PYTHONPATH=$(abspath ../tools/vm_translator) python3 -m vm_translator.vm_translator $(VM_DIR)
	mkdir -p $(ASM_DIR)
	mv $(VM_DIR)/vm_files.asm $(ASM_DIR)/$(EXECUTABLE_NAME).asm

# Create the VM
$(VM_DIR): $(INPUTS)
	PYTHONPATH=$(abspath ../tools/jack_compiler) python3 -m jack_compiler.jack_compiler ./
	rm -f $(wildcard *.xml)
	mkdir -p $(VM_DIR)
	mv $(wildcard *.vm) $(VM_DIR)

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean upload
