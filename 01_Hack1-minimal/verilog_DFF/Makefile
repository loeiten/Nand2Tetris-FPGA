# VARIABLE DEFINITION
# ==============================================================================
# Set the chip name
$(eval CHIP := $(shell find . -iname "*.cmp" | xargs -I{} basename {} .cmp))
# ==============================================================================



# SIMULATE
# ==============================================================================
# Simulate the circuit
${CHIP}.out: $(wildcard *.v)
	apio sim

# This is an alias for the above rule which will be run every time this is called
sim:
	apio sim
# ==============================================================================


# TEST
# ==============================================================================
# NOTE: Need SHELL := /bin/bash in order for <() to work
# https://stackoverflow.com/questions/50016974/escaping-parentheses-in-makefile-rule-with-bash-curl
test: SHELL := /bin/bash
test: ${CHIP}.out
	$(eval RESULT := $(shell diff <(tail -n 13 ${CHIP}.cmp) <(tail -n 13 ${CHIP}.out)))
# NOTE: This shell command is run as one command
	@if [ "${RESULT}" = "" ]; then\
		echo "\033[42;1mSuccess\033[0m"; \
	else \
		echo "${RESULT}"; \
		echo "\033[41;1mFail\033[0m"; \
	fi
# ==============================================================================
