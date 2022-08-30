# uncompyle6 version 3.8.0
# Python bytecode 3.7.0 (3394)
# Decompiled from: Python 3.8.13 (default, Mar 28 2022, 06:16:26)
# [Clang 12.0.0 ]
# Embedded file name: /home/micha/git/gitlab/nand2tetris-13/tools/Assembler/symbolTable.py
# Compiled at: 2020-05-05 23:20:52
# Size of source mod 2**32: 672 bytes


class SymbolTable:
    def __init__(self):
        self.m = {}
        self.m["SP"] = 0
        self.m["LCL"] = 1
        self.m["ARG"] = 2
        self.m["THIS"] = 3
        self.m["THAT"] = 4
        for i in range(16):
            self.m["R" + str(i)] = i

        self.m["SCREEN"] = 16384
        self.m["KBD"] = 24576

    def addEntry(self, symbol, address):
        self.m[symbol] = address

    def contains(self, symbol):
        return symbol in self.m

    def getAddress(self, symbol):
        return self.m[symbol]

    def __str__(self):
        res = "symbol           val\n--------------------------------\n"
        for s in self.m:
            res = res + "{:16s} {:d}\n".format(s, self.m[s])

        return res
