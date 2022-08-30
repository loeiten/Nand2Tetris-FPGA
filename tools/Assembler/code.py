# uncompyle6 version 3.8.0
# Python bytecode 3.7.0 (3394)
# Decompiled from: Python 3.8.13 (default, Mar 28 2022, 06:16:26)
# [Clang 12.0.0 ]
# Embedded file name: /home/micha/git/gitlab/nand2tetris-13/tools/Assembler/code.py
# Compiled at: 2020-05-05 23:20:52
# Size of source mod 2**32: 1760 bytes


def dest(s):
    a = 0
    d = 0
    m = 0
    for c in s:
        if c == "M":
            m = 1
        if c == "D":
            d = 1
        if c == "A":
            a = 1

    return str(a) + str(d) + str(m)


def comp(s):
    if s == "0":
        return "0101010"
    if s == "1":
        return "0111111"
    if s == "-1":
        return "0111010"
    if s == "D":
        return "0001100"
    if s == "A":
        return "0110000"
    if s == "M":
        return "1110000"
    if s == "!D":
        return "0001101"
    if s == "!A":
        return "0110001"
    if s == "!M":
        return "1110001"
    if s == "-D":
        return "0001111"
    if s == "-A":
        return "0110011"
    if s == "-M":
        return "1110011"
    if s == "D+1":
        return "0011111"
    if s == "A+1":
        return "0110111"
    if s == "M+1":
        return "1110111"
    if s == "D-1":
        return "0001110"
    if s == "A-1":
        return "0110010"
    if s == "M-1":
        return "1110010"
    if s == "D+A":
        return "0000010"
    if s == "D+M":
        return "1000010"
    if s == "D-A":
        return "0010011"
    if s == "D-M":
        return "1010011"
    if s == "A-D":
        return "0000111"
    if s == "M-D":
        return "1000111"
    if s == "D&A":
        return "0000000"
    if s == "D&M":
        return "1000000"
    if s == "D|A":
        return "0010101"
    if s == "D|M":
        return "1010101"
    print("error assembler {:s}".format(s))
    return "0000000"


def jump(s):
    if s == "":
        return "000"
    if s == "JGT":
        return "001"
    if s == "JEQ":
        return "010"
    if s == "JGE":
        return "011"
    if s == "JLT":
        return "100"
    if s == "JNE":
        return "101"
    if s == "JLE":
        return "110"
    if s == "JMP":
        return "111"
    return "000"
