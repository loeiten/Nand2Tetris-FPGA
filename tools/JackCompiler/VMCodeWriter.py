# uncompyle6 version 3.8.0
# Python bytecode 3.7.0 (3394)
# Decompiled from: Python 3.8.13 (default, Mar 28 2022, 06:16:26)
# [Clang 12.0.0 ]
# Embedded file name: /home/micha/git/gitlab/Nand2Tetris-13/tools/JackCompiler/VMCodeWriter.py
# Compiled at: 2020-05-05 23:21:19
# Size of source mod 2**32: 988 bytes


class VMCodeWriter:
    def __init__(self, name):
        self.fvm = open(name, "w")

    def writePush(self, segment, index):
        self.fvm.write("push {:s} {:d}\n".format(segment, index))

    def writePop(self, segment, index):
        self.fvm.write("pop {:s} {:d}\n".format(segment, index))

    def writeArithmetic(self, command):
        self.fvm.write("{:s}\n".format(command))

    def writeLabel(self, label):
        self.fvm.write("label {:s}\n".format(label))

    def writeGoto(self, label):
        self.fvm.write("goto {:s}\n".format(label))

    def writeIf(self, label):
        self.fvm.write("if-goto {:s}\n".format(label))

    def writeCall(self, label, nArgs):
        self.fvm.write("call {:s} {:d}\n".format(label, nArgs))

    def writeFunction(self, label, nArgs):
        self.fvm.write("function {:s} {:d}\n".format(label, nArgs))

    def writeReturn(self):
        self.fvm.write("return\n")

    def close(self):
        self.fm.close()
