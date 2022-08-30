# uncompyle6 version 3.8.0
# Python bytecode 3.7.0 (3394)
# Decompiled from: Python 3.8.13 (default, Mar 28 2022, 06:16:26) 
# [Clang 12.0.0 ]
# Embedded file name: /home/micha/git/gitlab/nand2tetris-13/tools/JackCompiler/SymbolTable.py
# Compiled at: 2020-05-05 23:21:19
# Size of source mod 2**32: 1302 bytes


class SymbolTable:

    def __init__(self):
        self.symbols = {}
        self.n = {}
        self.n['static'] = 0
        self.n['field'] = 0
        self.startSubroutine()

    def startSubroutine(self):
        self.subroutineSymbols = {}
        self.n['arg'] = 0
        self.n['var'] = 0

    def Define(self, name, typ, kind):
        if kind in ('static', 'field'):
            self.symbols[name] = (
             typ, kind, self.n[kind])
            self.n[kind] = self.n[kind] + 1
        if kind in ('var', 'arg'):
            self.subroutineSymbols[name] = (
             typ, kind, self.n[kind])
            self.n[kind] = self.n[kind] + 1

    def VarCount(self, kind):
        return self.n[kind]

    def KindOf(self, name):
        if name in self.symbols:
            return self.symbols[name][1]
        if name in self.subroutineSymbols:
            return self.subroutineSymbols[name][1]

    def TypeOf(self, name):
        if name in self.symbols:
            return self.symbols[name][0]
        if name in self.subroutineSymbols:
            return self.subroutineSymbols[name][0]

    def IndexOf(self, name):
        if name in self.symbols:
            return self.symbols[name][2]
        if name in self.subroutineSymbols:
            return self.subroutineSymbols[name][2]