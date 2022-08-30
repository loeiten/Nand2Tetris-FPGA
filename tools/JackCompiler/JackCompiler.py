# uncompyle6 version 3.8.0
# Python bytecode 3.7.0 (3394)
# Decompiled from: Python 3.8.13 (default, Mar 28 2022, 06:16:26)
# [Clang 12.0.0 ]
# Embedded file name: JackCompiler.py
# Compiled at: 2020-05-05 23:21:19
# Size of source mod 2**32: 825 bytes
import os
import sys

from CompilationEngine import CompilationEngine
from JackTokenizer import JackTokenizer
from SymbolTable import SymbolTable

if len(sys.argv) != 2:
    print("usage: {:s} <file/dir>".format(sys.argv[0]))
    sys.exit(0)
else:
    filename = sys.argv[1]
    files = []
    if os.path.isdir(filename):
        ll = os.listdir(filename)
        for name in ll:
            if len(name) > 5 and name[-5:] == ".jack":
                files.append(filename + name)

        if filename[(-1)] != "/":
            filename = filename + "/"
    else:
        if len(filename) > 5 and filename[-5:] == ".jack":
            files.append(filename)
        else:
            print("usage: {:s} <filename>.jack".format(sys.argv[0]))
            sys.exit(0)
for jackfile in files:
    vmfile = jackfile.replace(".jack", ".vm")
    c = CompilationEngine(jackfile, vmfile)
    c.CompileClass()
