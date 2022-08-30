# uncompyle6 version 3.8.0
# Python bytecode 3.7.0 (3394)
# Decompiled from: Python 3.8.13 (default, Mar 28 2022, 06:16:26) 
# [Clang 12.0.0 ]
# Embedded file name: /home/micha/git/gitlab/nand2tetris-13/tools/VMTranslator/codeWriter.py
# Compiled at: 2020-05-05 23:21:09
# Size of source mod 2**32: 7554 bytes


class CodeWriter:

    def __init__(self, asmfile):
        self.functionName = 'Main'
        self.asm = open(asmfile, 'w')
        self.n = 0
        self.r = 0
        self.function = 'WTF'

    def close(self):
        self.asm.close()

    def setFilename(self, vmfile):
        self.vmfile = vmfile

    def writeKommentar(self, kommentar):
        print(kommentar, file=(self.asm))

    def writeInit(self):
        print('@256\nD=A\n@SP\nM=D', file=(self.asm))
        self.writeCall('Sys.init', 0)
        print('(HALT)\n@HALT\n0;JMP', file=(self.asm))
        print('(RETURN)\n@LCL\nD=M\n@R13\nM=D\n@R13\nD=M\n@5\nA=D-A\nD=M\n@R14\nM=D\n@SP\nA=M-1\nD=M\n@ARG\nA=M\nM=D\n@ARG\nD=M+1\n@SP\nM=D\n@R13\nAM=M-1\nD=M\n@THAT\nM=D\n@R13\nAM=M-1\nD=M\n@THIS\nM=D\n@R13\nAM=M-1\nD=M\n@ARG\nM=D\n@R13\nAM=M-1\nD=M\n@LCL\nM=D\n@R14\nA=M\n0;JMP',
          file=(self.asm))
        print('(CALL)\n@SP\nA=M\nM=D\n@SP\nM=M+1\n@LCL\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n@ARG\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n@THIS\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n@THAT\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n@SP\nD=M\n@5\nD=D-A\n@R14\nA=M\nD=D-A\n@ARG\nM=D\n@SP\nD=M\n@LCL\nM=D\n@R13\nA=M\n0;JMP\n',
          file=(self.asm))

    def writeFunction(self, functionName, numargs):
        self.function = functionName
        print(('(' + functionName + ')\n@' + str(numargs) + '\nD=A\n(' + functionName + '_LOOP)\n' + '@' + functionName + '_END\nD;JEQ\n@SP\nA=M\nM=0\n@SP\nM=M+1\nD=D-1\n' + '@' + functionName + '_LOOP\n0;JMP\n(' + functionName + '_END)\n'),
          file=(self.asm))

    def writeReturn(self):
        print('@RETURN\n0;JMP\n', file=(self.asm))

    def writeCall(self, functionName, numargs):
        print(('@' + str(numargs) + '\nD=A\n@R14\nM=D\n' + '@' + functionName + '\nD=A\n@R13\nM=D\n' + '@return' + str(self.r) + '\nD=A\n' + '@CALL\n0;JMP\n' + '(return' + str(self.r) + ')'),
          file=(self.asm))
        self.r = self.r + 1

    def writeLabel(self, label):
        print(('(' + self.function + '$' + label + ')'), file=(self.asm))

    def writeIf(self, label):
        print(('@SP\nAM=M-1\nD=M\n@' + self.function + '$' + label + '\nD;JNE'), file=(self.asm))

    def writeGoto(self, label):
        print(('@' + self.function + '$' + label + '\n0;JMP'), file=(self.asm))

    def writePop(self, segment, index):
        if segment == 'static':
            print(('@SP  //pop static\nAM=M-1\nD=M\n@' + self.vmfile + '.' + str(index) + '\n' + 'M=D'),
              file=(self.asm))
        else:
            if segment == 'local':
                print(('@LCL //pop local\nD=M\n@' + str(index) + '\n' + 'D=D+A\n@R13\nM=D\n@SP\nAM=M-1\nD=M\n@R13\nA=M\nM=D'),
                  file=(self.asm))
            else:
                if segment == 'argument':
                    print(('@ARG //pop argument\nD=M\n@' + str(index) + '\n' + 'D=D+A\n@R13\nM=D\n@SP\nAM=M-1\nD=M\n@R13\nA=M\nM=D'),
                      file=(self.asm))
                else:
                    if segment == 'this':
                        print(('@THIS    //pop this\nD=M\n@' + str(index) + '\n' + 'D=D+A\n@R13\nM=D\n@SP\nAM=M-1\nD=M\n@R13\nA=M\nM=D'),
                          file=(self.asm))
                    else:
                        if segment == 'that':
                            print(('@THAT    //pop that\nD=M\n@' + str(index) + '\n' + 'D=D+A\n@R13\nM=D\n@SP\nAM=M-1\nD=M\n@R13\nA=M\nM=D'),
                              file=(self.asm))
                        else:
                            if segment == 'temp':
                                r = 5 + index
                                print(('@SP  //pop temp\nAM=M-1\nD=M\n@R' + str(r) + '\n' + 'M=D'),
                                  file=(self.asm))
                            else:
                                if segment == 'pointer':
                                    if index == 0:
                                        r = 'THIS'
                                    else:
                                        if index == 1:
                                            r = 'THAT'
                                        else:
                                            print('Error codeWriter: pointer {:d}'.format(index))
                                    print(('@SP  //pop pointer\nAM=M-1\nD=M\n@' + r + '\n' + 'M=D'),
                                      file=(self.asm))
                                else:
                                    print('Error codeWriter Pop segment: {:s}'.format(segment))

    def writePush(self, segment, index):
        if segment == 'static':
            print(('@' + self.vmfile + '.' + str(index) + '   //push static\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1'),
              file=(self.asm))
        else:
            if segment == 'constant':
                print(('@' + str(index) + '  //push constant\nD=A\n@SP\nA=M\nM=D\n@SP\nM=M+1'), file=(self.asm))
            else:
                if segment == 'local':
                    print(('@LCL //push local\nD=M\n@' + str(index) + '\nA=D+A\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1'),
                      file=(self.asm))
                else:
                    if segment == 'argument':
                        print(('@ARG //push argument\nD=M\n@' + str(index) + '\nA=D+A\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1'),
                          file=(self.asm))
                    else:
                        if segment == 'this':
                            print(('@THIS    //push this\nD=M\n@' + str(index) + '\nA=D+A\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1'),
                              file=(self.asm))
                        else:
                            if segment == 'that':
                                print(('@THAT    //push that\nD=M\n@' + str(index) + '\nA=D+A\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1'),
                                  file=(self.asm))
                            else:
                                if segment == 'temp':
                                    r = 5 + index
                                    print(('@R' + str(r) + ' //push temp\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1'), file=(self.asm))
                                else:
                                    if segment == 'pointer':
                                        r = 3 + index
                                        print(('@R' + str(r) + ' //push pointer\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1'), file=(self.asm))
                                    else:
                                        print('Error codeWriter Push segment: {:s}'.format(segment))

    def writeArithmetic(self, command):
        if command == 'add':
            print('@SP  //add\nAM=M-1\nD=M\nA=A-1\nM=D+M', file=(self.asm))
        else:
            if command == 'and':
                print('@SP  //and\nAM=M-1\nD=M\nA=A-1\nM=D&M', file=(self.asm))
            else:
                if command == 'sub':
                    print('@SP  //sub\nAM=M-1\nD=M\nA=A-1\nM=M-D', file=(self.asm))
                else:
                    if command == 'or':
                        print('@SP  //or\nAM=M-1\nD=M\nA=A-1\nM=D|M', file=(self.asm))
                    else:
                        if command == 'not':
                            print('@SP  //not\nA=M-1\nM=!M', file=(self.asm))
                        else:
                            if command == 'neg':
                                print('@SP  //neg\nA=M-1\nM=-M', file=(self.asm))
                            else:
                                if command == 'eq':
                                    print(('@SP\nAM=M-1\nD=M\nA=A-1\nD=D-M\nM=-1\n@eq' + str(self.n) + '\nD;JEQ\n' + '@SP\nA=M-1\nM=0\n' + '(eq' + str(self.n) + ')'),
                                      file=(self.asm))
                                    self.n = self.n + 1
                                else:
                                    if command == 'gt':
                                        print(('@SP\nAM=M-1\nD=M\nA=A-1\nD=M-D\nM=-1\n@gt' + str(self.n) + '\nD;JGT\n' + '@SP\nA=M-1\nM=0\n' + '(gt' + str(self.n) + ')'),
                                          file=(self.asm))
                                        self.n = self.n + 1
                                    else:
                                        if command == 'lt':
                                            print(('@SP\nAM=M-1\nD=M\nA=A-1\nD=M-D\nM=-1\n@lt' + str(self.n) + '\nD;JLT\n' + '@SP\nA=M-1\nM=0\n' + '(lt' + str(self.n) + ')'),
                                              file=(self.asm))
                                            self.n = self.n + 1
                                        else:
                                            print('Error codeWriter command {:s}'.format(command))