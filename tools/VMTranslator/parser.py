# uncompyle6 version 3.8.0
# Python bytecode 3.7.0 (3394)
# Decompiled from: Python 3.8.13 (default, Mar 28 2022, 06:16:26)
# [Clang 12.0.0 ]
# Embedded file name: /home/micha/git/gitlab/Nand2Tetris-13/tools/VMTranslator/parser.py
# Compiled at: 2020-05-05 23:21:09
# Size of source mod 2**32: 2364 bytes


class Parse:

    def __init__--- This code section failed: ---

 L.   3         0  LOAD_STR                 ''
                2  LOAD_FAST                'self'
                4  STORE_ATTR               kommentar

 L.   4         6  LOAD_STR                 ''
                8  LOAD_FAST                'self'
               10  STORE_ATTR               arg1

 L.   5        12  LOAD_STR                 ''
               14  LOAD_FAST                'self'
               16  STORE_ATTR               arg2

 L.   6        18  LOAD_CONST               0
               20  LOAD_FAST                'self'
               22  STORE_ATTR               commandType

 L.   7        24  LOAD_STR                 ''
               26  LOAD_FAST                'self'
               28  STORE_ATTR               kommentar

 L.   8        30  LOAD_FAST                'line'
               32  LOAD_METHOD              strip
               34  CALL_METHOD_0         0  '0 positional arguments'
               36  STORE_FAST               'lin'

 L.   9        38  LOAD_STR                 '//'
               40  LOAD_FAST                'line'
               42  COMPARE_OP               in
               44  POP_JUMP_IF_FALSE    72  'to 72'

 L.  10        46  LOAD_FAST                'line'
               48  LOAD_FAST                'lin'
               50  LOAD_METHOD              index
               52  LOAD_STR                 '//'
               54  CALL_METHOD_1         1  '1 positional argument'
               56  LOAD_CONST               None
               58  BUILD_SLICE_2         2
               60  BINARY_SUBSCR
               62  LOAD_METHOD              strip
               64  LOAD_STR                 '\n'
               66  CALL_METHOD_1         1  '1 positional argument'
               68  LOAD_FAST                'self'
               70  STORE_ATTR               kommentar
             72_0  COME_FROM            44  '44'

 L.  11        72  LOAD_FAST                'lin'
               74  LOAD_METHOD              split
               76  LOAD_STR                 '//'
               78  CALL_METHOD_1         1  '1 positional argument'
               80  LOAD_CONST               0
               82  BINARY_SUBSCR
               84  STORE_FAST               'lin'

 L.  12        86  LOAD_FAST                'lin'
               88  LOAD_METHOD              strip
               90  CALL_METHOD_0         0  '0 positional arguments'
               92  STORE_FAST               'lin'

 L.  13        94  LOAD_FAST                'lin'
               96  LOAD_METHOD              split
               98  LOAD_STR                 ' '
              100  CALL_METHOD_1         1  '1 positional argument'
              102  STORE_FAST               'lin'

 L.  14       104  LOAD_GLOBAL              len
              106  LOAD_FAST                'lin'
              108  CALL_FUNCTION_1       1  '1 positional argument'
              110  LOAD_CONST               1
              112  COMPARE_OP               ==
              114  POP_JUMP_IF_FALSE   176  'to 176'

 L.  15       116  LOAD_FAST                'lin'
              118  LOAD_CONST               0
              120  BINARY_SUBSCR
              122  LOAD_METHOD              strip
              124  CALL_METHOD_0         0  '0 positional arguments'
              126  LOAD_FAST                'self'
              128  STORE_ATTR               arg1

 L.  16       130  LOAD_FAST                'self'
              132  LOAD_ATTR                arg1
              134  LOAD_STR                 'return'
              136  COMPARE_OP               ==
              138  POP_JUMP_IF_FALSE   150  'to 150'

 L.  17       140  LOAD_GLOBAL              Parser
              142  LOAD_ATTR                C_RETURN
              144  LOAD_FAST                'self'
              146  STORE_ATTR               commandType
              148  JUMP_FORWARD        470  'to 470'
            150_0  COME_FROM           138  '138'

 L.  18       150  LOAD_GLOBAL              len
              152  LOAD_FAST                'self'
              154  LOAD_ATTR                arg1
              156  CALL_FUNCTION_1       1  '1 positional argument'
              158  LOAD_CONST               0
              160  COMPARE_OP               >
              162  POP_JUMP_IF_FALSE   172  'to 172'

 L.  19       164  LOAD_GLOBAL              Parser
              166  LOAD_ATTR                C_ARITHMETIC
              168  LOAD_FAST                'self'
              170  STORE_ATTR               commandType
            172_0  COME_FROM           162  '162'
          172_174  JUMP_FORWARD        470  'to 470'
            176_0  COME_FROM           114  '114'

 L.  20       176  LOAD_GLOBAL              len
              178  LOAD_FAST                'lin'
              180  CALL_FUNCTION_1       1  '1 positional argument'
              182  LOAD_CONST               2
              184  COMPARE_OP               ==
          186_188  POP_JUMP_IF_FALSE   292  'to 292'

 L.  21       190  LOAD_FAST                'lin'
              192  LOAD_CONST               1
              194  BINARY_SUBSCR
              196  LOAD_METHOD              strip
              198  CALL_METHOD_0         0  '0 positional arguments'
              200  LOAD_FAST                'self'
              202  STORE_ATTR               arg1

 L.  22       204  LOAD_FAST                'lin'
              206  LOAD_CONST               0
              208  BINARY_SUBSCR
              210  LOAD_STR                 'label'
              212  COMPARE_OP               ==
              214  POP_JUMP_IF_FALSE   226  'to 226'

 L.  23       216  LOAD_GLOBAL              Parser
              218  LOAD_ATTR                C_LABEL
              220  LOAD_FAST                'self'
              222  STORE_ATTR               commandType
              224  JUMP_FORWARD        290  'to 290'
            226_0  COME_FROM           214  '214'

 L.  24       226  LOAD_FAST                'lin'
              228  LOAD_CONST               0
              230  BINARY_SUBSCR
              232  LOAD_STR                 'goto'
              234  COMPARE_OP               ==
              236  POP_JUMP_IF_FALSE   248  'to 248'

 L.  25       238  LOAD_GLOBAL              Parser
              240  LOAD_ATTR                C_GOTO
              242  LOAD_FAST                'self'
              244  STORE_ATTR               commandType
              246  JUMP_FORWARD        290  'to 290'
            248_0  COME_FROM           236  '236'

 L.  26       248  LOAD_FAST                'lin'
              250  LOAD_CONST               0
              252  BINARY_SUBSCR
              254  LOAD_STR                 'if-goto'
              256  COMPARE_OP               ==
          258_260  POP_JUMP_IF_FALSE   272  'to 272'

 L.  27       262  LOAD_GLOBAL              Parser
              264  LOAD_ATTR                C_IF
              266  LOAD_FAST                'self'
              268  STORE_ATTR               commandType
              270  JUMP_FORWARD        290  'to 290'
            272_0  COME_FROM           258  '258'

 L.  29       272  LOAD_GLOBAL              print
              274  LOAD_STR                 'Error: {:s}'
              276  LOAD_METHOD              format
              278  LOAD_GLOBAL              str
              280  LOAD_FAST                'lin'
              282  CALL_FUNCTION_1       1  '1 positional argument'
              284  CALL_METHOD_1         1  '1 positional argument'
              286  CALL_FUNCTION_1       1  '1 positional argument'
              288  POP_TOP
            290_0  COME_FROM           270  '270'
            290_1  COME_FROM           246  '246'
            290_2  COME_FROM           224  '224'
              290  JUMP_FORWARD        470  'to 470'
            292_0  COME_FROM           186  '186'

 L.  30       292  LOAD_GLOBAL              len
              294  LOAD_FAST                'lin'
              296  CALL_FUNCTION_1       1  '1 positional argument'
              298  LOAD_CONST               3
              300  COMPARE_OP               ==
          302_304  POP_JUMP_IF_FALSE   470  'to 470'

 L.  31       306  LOAD_FAST                'lin'
              308  LOAD_CONST               0
              310  BINARY_SUBSCR
              312  LOAD_METHOD              strip
              314  CALL_METHOD_0         0  '0 positional arguments'
              316  STORE_FAST               'comm'

 L.  32       318  LOAD_FAST                'lin'
              320  LOAD_CONST               1
              322  BINARY_SUBSCR
              324  LOAD_METHOD              strip
              326  CALL_METHOD_0         0  '0 positional arguments'
              328  LOAD_FAST                'self'
              330  STORE_ATTR               arg1

 L.  33       332  LOAD_FAST                'lin'
              334  LOAD_CONST               2
              336  BINARY_SUBSCR
              338  LOAD_METHOD              strip
              340  CALL_METHOD_0         0  '0 positional arguments'
              342  STORE_FAST               'arg2'

 L.  34       344  LOAD_FAST                'arg2'
              346  LOAD_METHOD              isnumeric
              348  CALL_METHOD_0         0  '0 positional arguments'
          350_352  POP_JUMP_IF_FALSE   372  'to 372'

 L.  35       354  LOAD_GLOBAL              int
              356  LOAD_FAST                'lin'
              358  LOAD_CONST               2
              360  BINARY_SUBSCR
              362  LOAD_METHOD              strip
              364  CALL_METHOD_0         0  '0 positional arguments'
              366  CALL_FUNCTION_1       1  '1 positional argument'
              368  LOAD_FAST                'self'
              370  STORE_ATTR               arg2
            372_0  COME_FROM           350  '350'

 L.  36       372  LOAD_FAST                'comm'
              374  LOAD_STR                 'push'
              376  COMPARE_OP               ==
          378_380  POP_JUMP_IF_FALSE   392  'to 392'

 L.  37       382  LOAD_GLOBAL              Parser
              384  LOAD_ATTR                C_PUSH
              386  LOAD_FAST                'self'
              388  STORE_ATTR               commandType
              390  JUMP_FORWARD        470  'to 470'
            392_0  COME_FROM           378  '378'

 L.  38       392  LOAD_FAST                'comm'
              394  LOAD_STR                 'pop'
              396  COMPARE_OP               ==
          398_400  POP_JUMP_IF_FALSE   412  'to 412'

 L.  39       402  LOAD_GLOBAL              Parser
              404  LOAD_ATTR                C_POP
              406  LOAD_FAST                'self'
              408  STORE_ATTR               commandType
              410  JUMP_FORWARD        470  'to 470'
            412_0  COME_FROM           398  '398'

 L.  40       412  LOAD_FAST                'comm'
              414  LOAD_STR                 'function'
              416  COMPARE_OP               ==
          418_420  POP_JUMP_IF_FALSE   432  'to 432'

 L.  41       422  LOAD_GLOBAL              Parser
              424  LOAD_ATTR                C_FUNCTION
              426  LOAD_FAST                'self'
              428  STORE_ATTR               commandType
              430  JUMP_FORWARD        470  'to 470'
            432_0  COME_FROM           418  '418'

 L.  42       432  LOAD_FAST                'comm'
              434  LOAD_STR                 'call'
              436  COMPARE_OP               ==
          438_440  POP_JUMP_IF_FALSE   452  'to 452'

 L.  43       442  LOAD_GLOBAL              Parser
            444_0  COME_FROM           148  '148'
              444  LOAD_ATTR                C_CALL
              446  LOAD_FAST                'self'
              448  STORE_ATTR               commandType
              450  JUMP_FORWARD        470  'to 470'
            452_0  COME_FROM           438  '438'

 L.  45       452  LOAD_GLOBAL              print
              454  LOAD_STR                 'Error Parser: {:s}'
              456  LOAD_METHOD              format
              458  LOAD_GLOBAL              str
              460  LOAD_FAST                'lin'
              462  CALL_FUNCTION_1       1  '1 positional argument'
              464  CALL_METHOD_1         1  '1 positional argument'
              466  CALL_FUNCTION_1       1  '1 positional argument'
              468  POP_TOP
            470_0  COME_FROM           450  '450'
            470_1  COME_FROM           430  '430'
            470_2  COME_FROM           410  '410'
            470_3  COME_FROM           390  '390'
            470_4  COME_FROM           302  '302'
            470_5  COME_FROM           290  '290'
            470_6  COME_FROM           172  '172'

Parse error at or near `LOAD_ATTR' instruction at offset 444


class Parser:
    C_ARITHMETIC = 1
    C_PUSH = 2
    C_POP = 3
    C_LABEL = 4
    C_GOTO = 5
    C_IF = 6
    C_FUNCTION = 7
    C_RETURN = 8
    C_CALL = 9

    def __init__(self, filename):
        self.fileasm = open(filename, 'r')
        self.lines = []
        self.line = -1
        for line in self.fileasm:
            parse = Parse(line)
            self.lines.append(parse)

        self.fileasm.close()

    def hasMoreCommands(self):
        return len(self.lines) > self.line + 1

    def advance(self):
        self.line += 1

    def commandType(self):
        return self.lines[self.line].commandType

    def arg1(self):
        return self.lines[self.line].arg1

    def arg2(self):
        return self.lines[self.line].arg2

    def kommentar(self):
        return self.lines[self.line].kommentar
