# uncompyle6 version 3.8.0
# Python bytecode 3.7.0 (3394)
# Decompiled from: Python 3.8.13 (default, Mar 28 2022, 06:16:26)
# [Clang 12.0.0 ]
# Embedded file name: assembler.py
# Compiled at: 2020-05-05 23:20:52
# Size of source mod 2**32: 2772 bytes
import sys
from code import *
from parser import Parser

from symbolTable import SymbolTable

if len(sys.argv) != 2:
    print("usage: {:s} <filename>".format(sys.argv[0]))
    sys.exit(0)
fhack = open(sys.argv[1].replace(".asm", ".hack"), "w")
fasm = Parser(sys.argv[1])
t = SymbolTable()
ram = 16
i = 0
while fasm.hasMoreCommands():
    fasm.advance()
    if fasm.commandType() == Parser.A_COMMAND:
        if fasm.symbol().isnumeric():
            i += 1
        else:
            if not t.contains(fasm.symbol()):
                i += 2
            else:
                if t.getAddress(fasm.symbol()) < 32768:
                    i += 1
                else:
                    i += 2
    elif fasm.commandType() == Parser.C_COMMAND:
        i += 1
    elif fasm.commandType() == Parser.L_COMMAND:
        if t.contains(fasm.symbol()):
            print(
                "ERR: Symbol {:s} in {:s}, Line {:d}".format(
                    fasm.symbol(), sys.argv[1], i
                )
            )
            exit(0)
        else:
            t.addEntry(fasm.symbol(), i)

opti = False
run = 0
while opti == False:
    opti = True
    run += 1
    print(run)
    fasm.line = -1
    i = 0
    while fasm.hasMoreCommands():
        fasm.advance()
        if fasm.commandType() == Parser.A_COMMAND:
            if fasm.symbol().isnumeric():
                i += 1
            else:
                if not t.contains(fasm.symbol()):
                    t.addEntry(fasm.symbol(), ram)
                    ram += 1
                    i += 1
                else:
                    if t.getAddress(fasm.symbol()) < 32768:
                        i += 1
                    else:
                        i += 2
        elif fasm.commandType() == Parser.C_COMMAND:
            i += 1
        else:
            if fasm.commandType() == Parser.L_COMMAND:
                if t.contains(fasm.symbol()):
                    if t.getAddress(fasm.symbol()) != i:
                        t.addEntry(fasm.symbol(), i)
                        opti = False
                else:
                    print("WTF")

fasm.line = -1
i = 0
print(t)
while fasm.hasMoreCommands():
    fasm.advance()
    if fasm.commandType() == Parser.A_COMMAND:
        if fasm.symbol().isnumeric():
            s = int(fasm.symbol())
        else:
            if not t.contains(fasm.symbol()):
                t.addEntry(fasm.symbol(), ram)
                ram += 1
            s = t.getAddress(fasm.symbol())
        if s < 32768:
            binary = "{0:016b}".format(s)
            print(binary, file=fhack)
        else:
            binary = "{0:016b}".format(65535 - s)
            print(binary, file=fhack)
            print("1110110001100000", file=fhack)
    elif fasm.commandType() == Parser.C_COMMAND:
        binary = "111" + comp(fasm.comp()) + dest(fasm.dest()) + jump(fasm.jump())
        print(binary, file=fhack)

print("", file=fhack)
fhack.close()
