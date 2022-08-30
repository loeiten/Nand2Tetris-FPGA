# uncompyle6 version 3.8.0
# Python bytecode 3.7.0 (3394)
# Decompiled from: Python 3.8.13 (default, Mar 28 2022, 06:16:26)
# [Clang 12.0.0 ]
# Embedded file name: /home/micha/git/gitlab/nand2tetris-13/tools/Assembler/parser.py
# Compiled at: 2020-05-05 23:20:52
# Size of source mod 2**32: 2412 bytes


class DEA:

    def __init__(self, word):
        self.state = 0
        self.commandType = 0
        self.symbol = ''
        self.comp = ''
        self.jump = ''
        self.dest = ''
        for c in word:
            if c != ' ' and c != '\t' and c != '\n':
                self.next(c)

    def next--- This code section failed: ---

 L.  13         0  LOAD_FAST                'self'
                2  LOAD_ATTR                state
                4  LOAD_CONST               0
                6  COMPARE_OP               ==
                8  POP_JUMP_IF_FALSE   106  'to 106'

 L.  14        10  LOAD_FAST                'c'
               12  LOAD_STR                 '@'
               14  COMPARE_OP               ==
               16  POP_JUMP_IF_FALSE    34  'to 34'

 L.  15        18  LOAD_GLOBAL              Parser
               20  LOAD_ATTR                A_COMMAND
               22  LOAD_FAST                'self'
               24  STORE_ATTR               commandType

 L.  16        26  LOAD_CONST               1
               28  LOAD_FAST                'self'
               30  STORE_ATTR               state
               32  JUMP_FORWARD        406  'to 406'
             34_0  COME_FROM            16  '16'

 L.  17        34  LOAD_FAST                'c'
               36  LOAD_STR                 '/'
               38  COMPARE_OP               ==
               40  POP_JUMP_IF_FALSE    50  'to 50'

 L.  18        42  LOAD_CONST               2
               44  LOAD_FAST                'self'
               46  STORE_ATTR               state
               48  JUMP_FORWARD        406  'to 406'
             50_0  COME_FROM            40  '40'

 L.  19        50  LOAD_FAST                'c'
               52  LOAD_STR                 '('
               54  COMPARE_OP               ==
               56  POP_JUMP_IF_FALSE    74  'to 74'

 L.  20        58  LOAD_GLOBAL              Parser
               60  LOAD_ATTR                L_COMMAND
               62  LOAD_FAST                'self'
               64  STORE_ATTR               commandType

 L.  21        66  LOAD_CONST               3
               68  LOAD_FAST                'self'
               70  STORE_ATTR               state
               72  JUMP_FORWARD        406  'to 406'
             74_0  COME_FROM            56  '56'

 L.  23        74  LOAD_GLOBAL              Parser
               76  LOAD_ATTR                C_COMMAND
               78  LOAD_FAST                'self'
               80  STORE_ATTR               commandType

 L.  24        82  LOAD_FAST                'self'
               84  DUP_TOP
               86  LOAD_ATTR                comp
               88  LOAD_FAST                'c'
               90  INPLACE_ADD
               92  ROT_TWO
               94  STORE_ATTR               comp

 L.  25        96  LOAD_CONST               4
               98  LOAD_FAST                'self'
              100  STORE_ATTR               state
          102_104  JUMP_FORWARD        406  'to 406'
            106_0  COME_FROM             8  '8'

 L.  27       106  LOAD_FAST                'self'
              108  LOAD_ATTR                state
              110  LOAD_CONST               1
              112  COMPARE_OP               ==
              114  POP_JUMP_IF_FALSE   150  'to 150'

 L.  28       116  LOAD_FAST                'c'
              118  LOAD_STR                 '/'
              120  COMPARE_OP               ==
              122  POP_JUMP_IF_FALSE   132  'to 132'

 L.  29       124  LOAD_CONST               7
              126  LOAD_FAST                'self'
              128  STORE_ATTR               state
              130  JUMP_FORWARD        406  'to 406'
            132_0  COME_FROM           122  '122'

 L.  31       132  LOAD_FAST                'self'
              134  DUP_TOP
              136  LOAD_ATTR                symbol
              138  LOAD_FAST                'c'
              140  INPLACE_ADD
              142  ROT_TWO
              144  STORE_ATTR               symbol
          146_148  JUMP_FORWARD        406  'to 406'
            150_0  COME_FROM           114  '114'

 L.  32       150  LOAD_FAST                'self'
              152  LOAD_ATTR                state
              154  LOAD_CONST               3
              156  COMPARE_OP               ==
              158  POP_JUMP_IF_FALSE   192  'to 192'

 L.  33       160  LOAD_FAST                'c'
              162  LOAD_STR                 ')'
              164  COMPARE_OP               ==
              166  POP_JUMP_IF_FALSE   176  'to 176'

 L.  34       168  LOAD_CONST               7
              170  LOAD_FAST                'self'
              172  STORE_ATTR               state
              174  JUMP_FORWARD        190  'to 190'
            176_0  COME_FROM           166  '166'

 L.  36       176  LOAD_FAST                'self'
              178  DUP_TOP
              180  LOAD_ATTR                symbol
              182  LOAD_FAST                'c'
              184  INPLACE_ADD
              186  ROT_TWO
              188  STORE_ATTR               symbol
            190_0  COME_FROM           174  '174'
              190  JUMP_FORWARD        406  'to 406'
            192_0  COME_FROM           158  '158'

 L.  37       192  LOAD_FAST                'self'
              194  LOAD_ATTR                state
              196  LOAD_CONST               4
              198  COMPARE_OP               ==
          200_202  POP_JUMP_IF_FALSE   284  'to 284'

 L.  38       204  LOAD_FAST                'c'
              206  LOAD_STR                 '='
              208  COMPARE_OP               ==
              210  POP_JUMP_IF_FALSE   234  'to 234'

 L.  39       212  LOAD_FAST                'self'
              214  LOAD_ATTR                comp
              216  LOAD_FAST                'self'
              218  STORE_ATTR               dest

 L.  40       220  LOAD_STR                 ''
              222  LOAD_FAST                'self'
              224  STORE_ATTR               comp

 L.  41       226  LOAD_CONST               5
              228  LOAD_FAST                'self'
              230  STORE_ATTR               state
              232  JUMP_FORWARD        282  'to 282'
            234_0  COME_FROM           210  '210'

 L.  42       234  LOAD_FAST                'c'
              236  LOAD_STR                 ';'
              238  COMPARE_OP               ==
              240  POP_JUMP_IF_FALSE   250  'to 250'

 L.  43       242  LOAD_CONST               6
              244  LOAD_FAST                'self'
              246  STORE_ATTR               state
              248  JUMP_FORWARD        282  'to 282'
            250_0  COME_FROM           240  '240'

 L.  44       250  LOAD_FAST                'c'
              252  LOAD_STR                 '/'
              254  COMPARE_OP               ==
          256_258  POP_JUMP_IF_FALSE   268  'to 268'

 L.  45       260  LOAD_CONST               7
              262  LOAD_FAST                'self'
              264  STORE_ATTR               state
              266  JUMP_FORWARD        282  'to 282'
            268_0  COME_FROM           256  '256'

 L.  47       268  LOAD_FAST                'self'
              270  DUP_TOP
              272  LOAD_ATTR                comp
              274  LOAD_FAST                'c'
              276  INPLACE_ADD
              278  ROT_TWO
              280  STORE_ATTR               comp
            282_0  COME_FROM           266  '266'
            282_1  COME_FROM           248  '248'
            282_2  COME_FROM           232  '232'
              282  JUMP_FORWARD        406  'to 406'
            284_0  COME_FROM           200  '200'

 L.  48       284  LOAD_FAST                'self'
              286  LOAD_ATTR                state
              288  LOAD_CONST               5
              290  COMPARE_OP               ==
          292_294  POP_JUMP_IF_FALSE   348  'to 348'

 L.  49       296  LOAD_FAST                'c'
              298  LOAD_STR                 ';'
              300  COMPARE_OP               ==
          302_304  POP_JUMP_IF_FALSE   314  'to 314'

 L.  50       306  LOAD_CONST               6
              308  LOAD_FAST                'self'
              310  STORE_ATTR               state
              312  JUMP_FORWARD        346  'to 346'
            314_0  COME_FROM           302  '302'

 L.  51       314  LOAD_FAST                'c'
              316  LOAD_STR                 '/'
              318  COMPARE_OP               ==
          320_322  POP_JUMP_IF_FALSE   332  'to 332'

 L.  52       324  LOAD_CONST               7
              326  LOAD_FAST                'self'
              328  STORE_ATTR               state
              330  JUMP_FORWARD        346  'to 346'
            332_0  COME_FROM           320  '320'

 L.  54       332  LOAD_FAST                'self'
            334_0  COME_FROM            32  '32'
              334  DUP_TOP
              336  LOAD_ATTR                comp
              338  LOAD_FAST                'c'
              340  INPLACE_ADD
              342  ROT_TWO
              344  STORE_ATTR               comp
            346_0  COME_FROM           330  '330'
            346_1  COME_FROM           312  '312'
              346  JUMP_FORWARD        406  'to 406'
            348_0  COME_FROM           292  '292'

 L.  55       348  LOAD_FAST                'self'
            350_0  COME_FROM            48  '48'
              350  LOAD_ATTR                state
              352  LOAD_CONST               6
              354  COMPARE_OP               ==
          356_358  POP_JUMP_IF_FALSE   394  'to 394'

 L.  56       360  LOAD_FAST                'c'
              362  LOAD_STR                 '/'
              364  COMPARE_OP               ==
          366_368  POP_JUMP_IF_FALSE   378  'to 378'

 L.  57       370  LOAD_CONST               7
              372  LOAD_FAST                'self'
            374_0  COME_FROM            72  '72'
              374  STORE_ATTR               state
              376  JUMP_FORWARD        392  'to 392'
            378_0  COME_FROM           366  '366'

 L.  59       378  LOAD_FAST                'self'
              380  DUP_TOP
              382  LOAD_ATTR                jump
              384  LOAD_FAST                'c'
              386  INPLACE_ADD
            388_0  COME_FROM           130  '130'
              388  ROT_TWO
              390  STORE_ATTR               jump
            392_0  COME_FROM           376  '376'
              392  JUMP_FORWARD        406  'to 406'
            394_0  COME_FROM           356  '356'

 L.  60       394  LOAD_FAST                'self'
              396  LOAD_ATTR                state
              398  LOAD_CONST               7
              400  COMPARE_OP               ==
          402_404  POP_JUMP_IF_FALSE   406  'to 406'
            406_0  COME_FROM           402  '402'
            406_1  COME_FROM           392  '392'
            406_2  COME_FROM           346  '346'
            406_3  COME_FROM           282  '282'
            406_4  COME_FROM           190  '190'
            406_5  COME_FROM           146  '146'
            406_6  COME_FROM           102  '102'

Parse error at or near `DUP_TOP' instruction at offset 334


class Parser:
    A_COMMAND = 1
    C_COMMAND = 2
    L_COMMAND = 3

    def __init__(self, filename):
        self.fileasm = open(filename, 'r')
        self.lines = []
        self.line = -1
        for line in self.fileasm:
            dea = DEA(line)
            self.lines.append(dea)

        self.fileasm.close()

    def hasMoreCommands(self):
        return len(self.lines) > self.line + 1

    def advance(self):
        self.line += 1

    def commandType(self):
        return self.lines[self.line].commandType

    def symbol(self):
        return self.lines[self.line].symbol

    def dest(self):
        return self.lines[self.line].dest

    def comp(self):
        return self.lines[self.line].comp

    def jump(self):
        return self.lines[self.line].jump
