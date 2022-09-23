PORT := /dev/ttyACM0
ALT_PORT := /dev/cu.usbmodem143201

# Set the chip name
$(eval CHIP := $(shell find . -iname "*.cmp" | xargs -I{} basename {} .cmp))

# Build the files
# This is a grouped target:
# https://www.gnu.org/software/make/manual/html_node/Multiple-Targets.html
hardware.asc hardware.bin hardware.json &: $(wildcard *.v) $(wildcard *.pcf)
	apio build

# This is an alias for the above rule which will be run every time this is called
build:
	apio build

# Simulate the circuit
${CHIP}.out: $(wildcard *.v)
	apio sim

# This is an alias for the above rule which will be run every time this is called
sim:
	apio sim

test: ${CHIP}.out
	$(eval RESULT := $(shell diff ${CHIP}.cmp ${CHIP}.out))
# NOTE: This shell command is run as one command
	@if [ "${RESULT}" = "" ]; then\
		echo "\033[42;1mSuccess\033[0m"; \
	else \
		echo "${RESULT}"; \
		echo "\033[41;1mFail\033[0m"; \
	fi


# Upload the hack executable to the device
# We check whether the programmer is connected to the standard ports
# If none of them is found, throw an error
# NOTE: Makefile conditionals won't work for what we try to do here
# https://stackoverflow.com/a/27270023/2786884
upload:
# These evaluation runs separately from the shell commands, and is therefore placed first
	$(eval CUR_PORT := $(shell ls -l  /dev/tty* | grep -o $(PORT)))
	$(eval CUR_ALT_PORT := $(shell ls -l  /dev/tty* | grep -o $(ALT_PORT)))
# NOTE: This shell command is run as one command
	@if [ "$(CUR_PORT)" = "$(PORT)" ]; then \
		echo "Programmer found in $(PORT)"; \
		iceprogduino -I$(PORT) -r hardware.bin; \
	else \
		echo "Programmer not found in $(PORT), checking $(ALT_PORT)"; \
		if [ "$(CUR_ALT_PORT)" = "$(ALT_PORT)" ]; then \
			echo "Programmer found in $(ALT_PORT)"; \
			iceprogduino -I$(ALT_PORT) -r hardware.bin; \
		else \
			echo "Could not find the programmer in port $(PORT) or $(ALT_PORT). Check the port in the Arduino IDE and change the PORT variable of this Makefile"; \
			exit 1; \
		fi \
	fi

clean:
	rm -rf .*.dblite *.out *.orig *.vcd *.asc *.bin *.json

all: build upload

.PHONY: all clean sim upload build test
