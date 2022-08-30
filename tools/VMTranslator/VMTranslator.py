# uncompyle6 version 3.8.0
# Python bytecode 3.7.0 (3394)
# Decompiled from: Python 3.8.13 (default, Mar 28 2022, 06:16:26) 
# [Clang 12.0.0 ]
# Embedded file name: VMTranslator.py
# Compiled at: 2020-05-05 23:21:09
# Size of source mod 2**32: 2385 bytes
import sys, os
from parser import Parser
from codeWriter import CodeWriter

def isCommand(l):
    if len(l) == 0:
        return False
    if l[0] == '/':
        return False
    if l[0] == '(':
        return False
    return True


def wc(fn):
    f = open(fn)
    n = 0
    for line in f:
        if isCommand(line):
            n = n + 1

    return n


if len(sys.argv) != 2:
    print('usage: {:s} <file/dir>'.format(sys.argv[0]))
    sys.exit(0)
filename = sys.argv[1]
files = []
outname = ''
if os.path.isdir(filename):
    ll = os.listdir(filename)
    for name in ll:
        if len(name) > 3 and name[-3:] == '.vm':
            files.append(filename + name)

    if filename[(-1)] != '/':
        filename = filename + '/'
    dirname = filename.split('/')[(-2)]
    if dirname == '.':
        dirname = 'out'
    outname = filename + dirname + '.asm'
else:
    if len(filename) > 3 and filename[-3:] == '.vm':
        files.append(filename)
        outname = files[0].replace('.vm', '.asm')
    else:
        print('usage: {:s} <filename>.vm'.format(sys.argv[0]))
        sys.exit(0)
cw = CodeWriter(outname)
cw.writeInit()
for filename in files:
    fvm = Parser(filename)
    fasm = filename.split('/')[(-1)].split('.')[0]
    cw.setFilename(fasm)
    while fvm.hasMoreCommands():
        fvm.advance()
        if fvm.commandType() == 0:
            cw.writeKommentar(fvm.kommentar())
        elif fvm.commandType() == Parser.C_PUSH:
            cw.writePush(fvm.arg1(), fvm.arg2())
        elif fvm.commandType() == Parser.C_POP:
            cw.writePop(fvm.arg1(), fvm.arg2())
        elif fvm.commandType() == Parser.C_ARITHMETIC:
            cw.writeArithmetic(fvm.arg1())
        elif fvm.commandType() == Parser.C_LABEL:
            cw.writeLabel(fvm.arg1())
        elif fvm.commandType() == Parser.C_IF:
            cw.writeIf(fvm.arg1())
        elif fvm.commandType() == Parser.C_GOTO:
            cw.writeGoto(fvm.arg1())
        elif fvm.commandType() == Parser.C_FUNCTION:
            cw.writeFunction(fvm.arg1(), fvm.arg2())
        elif fvm.commandType() == Parser.C_CALL:
            cw.writeCall(fvm.arg1(), fvm.arg2())
        elif fvm.commandType() == Parser.C_RETURN:
            cw.writeReturn()
        else:
            print('Error VMTranslator commandType: {:d}'.format(fvm.commandType()))

cw.close()
print('Translated to {:s} with {:d} commands'.format(outname, wc(outname)))