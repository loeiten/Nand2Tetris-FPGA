# uncompyle6 version 3.8.0
# Python bytecode 3.7.0 (3394)
# Decompiled from: Python 3.8.13 (default, Mar 28 2022, 06:16:26) 
# [Clang 12.0.0 ]
# Embedded file name: /home/micha/git/gitlab/nand2tetris-13/tools/JackCompiler/JackTokenizer.py
# Compiled at: 2020-05-05 23:21:19
# Size of source mod 2**32: 3284 bytes
import sys

class JackTokenizer:
    symbols = '{}()[].,;+-*/&|<>=~'
    digits = '0123456789'
    letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_'
    keywords = ['class', 'constructor', 'function', 'method', 'field', 'static', 'var', 'int', 'char', 'boolean', 'void', 'true', 'false', 'null', 'this', 'let', 'do', 'if', 'else', 'while', 'return']

    def __init__(self, filename):
        self.stream = open(filename, 'r')
        self.tokenList = []
        self.token = None
        self.status = 0
        self.line = 0

    def error(self, s):
        print('Error Tokenizer: {:s}'.format(s))
        sys.exit(-1)

    def readChar--- This code section failed: ---

 L.  22         0  LOAD_FAST                'c'
                2  LOAD_STR                 '\n'
                4  COMPARE_OP               ==
                6  POP_JUMP_IF_FALSE    20  'to 20'

 L.  23         8  LOAD_FAST                'self'
               10  LOAD_ATTR                line
               12  LOAD_CONST               1
               14  BINARY_ADD       
               16  LOAD_FAST                'self'
               18  STORE_ATTR               line
             20_0  COME_FROM             6  '6'

 L.  24        20  LOAD_FAST                'self'
               22  LOAD_ATTR                status
               24  LOAD_CONST               0
               26  COMPARE_OP               ==
               28  POP_JUMP_IF_FALSE   200  'to 200'

 L.  25        30  LOAD_FAST                'c'
               32  LOAD_STR                 ''
               34  COMPARE_OP               ==
               36  POP_JUMP_IF_FALSE    46  'to 46'

 L.  26        38  LOAD_CONST               10
               40  LOAD_FAST                'self'
               42  STORE_ATTR               status
               44  JUMP_FORWARD        742  'to 742'
             46_0  COME_FROM            36  '36'

 L.  27        46  LOAD_FAST                'c'
               48  LOAD_STR                 '/'
               50  COMPARE_OP               ==
               52  POP_JUMP_IF_FALSE    62  'to 62'

 L.  28        54  LOAD_CONST               5
               56  LOAD_FAST                'self'
               58  STORE_ATTR               status
               60  JUMP_FORWARD        742  'to 742'
             62_0  COME_FROM            52  '52'

 L.  29        62  LOAD_FAST                'c'
               64  LOAD_GLOBAL              JackTokenizer
               66  LOAD_ATTR                symbols
               68  COMPARE_OP               in
               70  POP_JUMP_IF_FALSE    96  'to 96'

 L.  30        72  LOAD_FAST                'self'
               74  LOAD_ATTR                tokenList
               76  LOAD_METHOD              append
               78  LOAD_STR                 'symbol'
               80  LOAD_FAST                'c'
               82  BUILD_TUPLE_2         2 
               84  CALL_METHOD_1         1  '1 positional argument'
               86  POP_TOP          

 L.  31        88  LOAD_CONST               0
               90  LOAD_FAST                'self'
               92  STORE_ATTR               status
               94  JUMP_FORWARD        742  'to 742'
             96_0  COME_FROM            70  '70'

 L.  32        96  LOAD_FAST                'c'
               98  LOAD_GLOBAL              JackTokenizer
              100  LOAD_ATTR                digits
              102  COMPARE_OP               in
              104  POP_JUMP_IF_FALSE   120  'to 120'

 L.  33       106  LOAD_FAST                'c'
              108  LOAD_FAST                'self'
              110  STORE_ATTR               token

 L.  34       112  LOAD_CONST               2
              114  LOAD_FAST                'self'
              116  STORE_ATTR               status
              118  JUMP_FORWARD        742  'to 742'
            120_0  COME_FROM           104  '104'

 L.  35       120  LOAD_FAST                'c'
              122  LOAD_GLOBAL              JackTokenizer
              124  LOAD_ATTR                letters
              126  COMPARE_OP               in
              128  POP_JUMP_IF_FALSE   144  'to 144'

 L.  36       130  LOAD_FAST                'c'
              132  LOAD_FAST                'self'
              134  STORE_ATTR               token

 L.  37       136  LOAD_CONST               3
              138  LOAD_FAST                'self'
              140  STORE_ATTR               status
              142  JUMP_FORWARD        742  'to 742'
            144_0  COME_FROM           128  '128'

 L.  38       144  LOAD_FAST                'c'
              146  LOAD_STR                 '"'
              148  COMPARE_OP               ==
              150  POP_JUMP_IF_FALSE   166  'to 166'

 L.  39       152  LOAD_STR                 ''
              154  LOAD_FAST                'self'
              156  STORE_ATTR               token

 L.  40       158  LOAD_CONST               4
              160  LOAD_FAST                'self'
              162  STORE_ATTR               status
              164  JUMP_FORWARD        742  'to 742'
            166_0  COME_FROM           150  '150'

 L.  41       166  LOAD_FAST                'c'
              168  LOAD_CONST               ('\n', '\t', ' ')
              170  COMPARE_OP               in
              172  POP_JUMP_IF_FALSE   176  'to 176'

 L.  42       174  JUMP_FORWARD        742  'to 742'
            176_0  COME_FROM           172  '172'

 L.  44       176  LOAD_FAST                'self'
              178  LOAD_METHOD              error
              180  LOAD_STR                 'symbol {:d}'
              182  LOAD_METHOD              format
              184  LOAD_GLOBAL              ord
              186  LOAD_FAST                'c'
              188  CALL_FUNCTION_1       1  '1 positional argument'
              190  CALL_METHOD_1         1  '1 positional argument'
              192  CALL_METHOD_1         1  '1 positional argument'
              194  POP_TOP          
          196_198  JUMP_FORWARD        742  'to 742'
            200_0  COME_FROM            28  '28'

 L.  45       200  LOAD_FAST                'self'
              202  LOAD_ATTR                status
              204  LOAD_CONST               2
              206  COMPARE_OP               ==
          208_210  POP_JUMP_IF_FALSE   320  'to 320'

 L.  46       212  LOAD_FAST                'c'
              214  LOAD_GLOBAL              JackTokenizer
              216  LOAD_ATTR                digits
              218  COMPARE_OP               in
              220  POP_JUMP_IF_FALSE   238  'to 238'

 L.  47       222  LOAD_FAST                'self'
              224  DUP_TOP          
              226  LOAD_ATTR                token
              228  LOAD_FAST                'c'
              230  INPLACE_ADD      
              232  ROT_TWO          
              234  STORE_ATTR               token
              236  JUMP_FORWARD        742  'to 742'
            238_0  COME_FROM           220  '220'

 L.  49       238  LOAD_GLOBAL              int
              240  LOAD_FAST                'self'
              242  LOAD_ATTR                token
              244  CALL_FUNCTION_1       1  '1 positional argument'
              246  LOAD_CONST               0
              248  COMPARE_OP               >=
          250_252  POP_JUMP_IF_FALSE   306  'to 306'
              254  LOAD_GLOBAL              int
              256  LOAD_FAST                'self'
              258  LOAD_ATTR                token
              260  CALL_FUNCTION_1       1  '1 positional argument'
              262  LOAD_CONST               32767
              264  COMPARE_OP               <=
          266_268  POP_JUMP_IF_FALSE   306  'to 306'

 L.  50       270  LOAD_FAST                'self'
              272  LOAD_ATTR                tokenList
              274  LOAD_METHOD              append
              276  LOAD_STR                 'integerConstant'
              278  LOAD_FAST                'self'
              280  LOAD_ATTR                token
              282  BUILD_TUPLE_2         2 
              284  CALL_METHOD_1         1  '1 positional argument'
              286  POP_TOP          

 L.  51       288  LOAD_CONST               0
              290  LOAD_FAST                'self'
              292  STORE_ATTR               status

 L.  52       294  LOAD_FAST                'self'
              296  LOAD_METHOD              readChar
              298  LOAD_FAST                'c'
              300  CALL_METHOD_1         1  '1 positional argument'
              302  POP_TOP          
              304  JUMP_FORWARD        742  'to 742'
            306_0  COME_FROM           266  '266'
            306_1  COME_FROM           250  '250'

 L.  54       306  LOAD_FAST                'self'
              308  LOAD_METHOD              error
              310  LOAD_STR                 'int'
              312  CALL_METHOD_1         1  '1 positional argument'
              314  POP_TOP          
          316_318  JUMP_FORWARD        742  'to 742'
            320_0  COME_FROM           208  '208'

 L.  55       320  LOAD_FAST                'self'
              322  LOAD_ATTR                status
              324  LOAD_CONST               3
              326  COMPARE_OP               ==
          328_330  POP_JUMP_IF_FALSE   444  'to 444'

 L.  56       332  LOAD_FAST                'c'
              334  LOAD_GLOBAL              JackTokenizer
              336  LOAD_ATTR                letters
              338  COMPARE_OP               in
          340_342  POP_JUMP_IF_TRUE    356  'to 356'
              344  LOAD_FAST                'c'
              346  LOAD_GLOBAL              JackTokenizer
              348  LOAD_ATTR                digits
              350  COMPARE_OP               in
          352_354  POP_JUMP_IF_FALSE   372  'to 372'
            356_0  COME_FROM           340  '340'

 L.  57       356  LOAD_FAST                'self'
              358  DUP_TOP          
              360  LOAD_ATTR                token
              362  LOAD_FAST                'c'
              364  INPLACE_ADD      
              366  ROT_TWO          
              368  STORE_ATTR               token
              370  JUMP_FORWARD        742  'to 742'
            372_0  COME_FROM           352  '352'

 L.  59       372  LOAD_FAST                'self'
              374  LOAD_ATTR                token
              376  LOAD_GLOBAL              JackTokenizer
              378  LOAD_ATTR                keywords
              380  COMPARE_OP               in
          382_384  POP_JUMP_IF_FALSE   406  'to 406'

 L.  60       386  LOAD_FAST                'self'
              388  LOAD_ATTR                tokenList
              390  LOAD_METHOD              append
              392  LOAD_STR                 'keyword'
              394  LOAD_FAST                'self'
              396  LOAD_ATTR                token
              398  BUILD_TUPLE_2         2 
              400  CALL_METHOD_1         1  '1 positional argument'
              402  POP_TOP          
              404  JUMP_FORWARD        424  'to 424'
            406_0  COME_FROM           382  '382'

 L.  62       406  LOAD_FAST                'self'
              408  LOAD_ATTR                tokenList
              410  LOAD_METHOD              append
              412  LOAD_STR                 'identifier'
              414  LOAD_FAST                'self'
              416  LOAD_ATTR                token
              418  BUILD_TUPLE_2         2 
              420  CALL_METHOD_1         1  '1 positional argument'
              422  POP_TOP          
            424_0  COME_FROM           404  '404'

 L.  63       424  LOAD_CONST               0
              426  LOAD_FAST                'self'
              428  STORE_ATTR               status

 L.  64       430  LOAD_FAST                'self'
              432  LOAD_METHOD              readChar
              434  LOAD_FAST                'c'
              436  CALL_METHOD_1         1  '1 positional argument'
              438  POP_TOP          
          440_442  JUMP_FORWARD        742  'to 742'
            444_0  COME_FROM           328  '328'

 L.  65       444  LOAD_FAST                'self'
              446  LOAD_ATTR                status
              448  LOAD_CONST               4
              450  COMPARE_OP               ==
          452_454  POP_JUMP_IF_FALSE   530  'to 530'

 L.  66       456  LOAD_FAST                'c'
              458  LOAD_STR                 '"'
              460  COMPARE_OP               ==
          462_464  POP_JUMP_IF_FALSE   492  'to 492'

 L.  67       466  LOAD_FAST                'self'
              468  LOAD_ATTR                tokenList
              470  LOAD_METHOD              append
              472  LOAD_STR                 'stringConstant'
              474  LOAD_FAST                'self'
              476  LOAD_ATTR                token
              478  BUILD_TUPLE_2         2 
              480  CALL_METHOD_1         1  '1 positional argument'
              482  POP_TOP          

 L.  68       484  LOAD_CONST               0
              486  LOAD_FAST                'self'
              488  STORE_ATTR               status
              490  JUMP_FORWARD        528  'to 528'
            492_0  COME_FROM           462  '462'

 L.  69       492  LOAD_FAST                'c'
              494  LOAD_STR                 '/n'
              496  COMPARE_OP               ==
          498_500  POP_JUMP_IF_FALSE   514  'to 514'

 L.  70       502  LOAD_FAST                'self'
              504  LOAD_METHOD              error
              506  LOAD_STR                 'string'
              508  CALL_METHOD_1         1  '1 positional argument'
              510  POP_TOP          
              512  JUMP_FORWARD        528  'to 528'
            514_0  COME_FROM           498  '498'

 L.  72       514  LOAD_FAST                'self'
              516  DUP_TOP          
              518  LOAD_ATTR                token
              520  LOAD_FAST                'c'
              522  INPLACE_ADD      
              524  ROT_TWO          
              526  STORE_ATTR               token
            528_0  COME_FROM           512  '512'
            528_1  COME_FROM           490  '490'
              528  JUMP_FORWARD        742  'to 742'
            530_0  COME_FROM           452  '452'

 L.  73       530  LOAD_FAST                'self'
              532  LOAD_ATTR                status
              534  LOAD_CONST               5
              536  COMPARE_OP               ==
          538_540  POP_JUMP_IF_FALSE   608  'to 608'

 L.  74       542  LOAD_FAST                'c'
              544  LOAD_STR                 '/'
              546  COMPARE_OP               ==
          548_550  POP_JUMP_IF_FALSE   560  'to 560'

 L.  75       552  LOAD_CONST               6
              554  LOAD_FAST                'self'
              556  STORE_ATTR               status
              558  JUMP_FORWARD        606  'to 606'
            560_0  COME_FROM           548  '548'

 L.  76       560  LOAD_FAST                'c'
              562  LOAD_STR                 '*'
              564  COMPARE_OP               ==
          566_568  POP_JUMP_IF_FALSE   578  'to 578'

 L.  77       570  LOAD_CONST               7
              572  LOAD_FAST                'self'
              574  STORE_ATTR               status
              576  JUMP_FORWARD        606  'to 606'
            578_0  COME_FROM           566  '566'

 L.  79       578  LOAD_FAST                'self'
              580  LOAD_ATTR                tokenList
              582  LOAD_METHOD              append
              584  LOAD_CONST               ('symbol', '/')
              586  CALL_METHOD_1         1  '1 positional argument'
            588_0  COME_FROM            44  '44'
              588  POP_TOP          

 L.  80       590  LOAD_CONST               0
              592  LOAD_FAST                'self'
              594  STORE_ATTR               status

 L.  81       596  LOAD_FAST                'self'
              598  LOAD_METHOD              readChar
              600  LOAD_FAST                'c'
              602  CALL_METHOD_1         1  '1 positional argument'
            604_0  COME_FROM            60  '60'
              604  POP_TOP          
            606_0  COME_FROM           576  '576'
            606_1  COME_FROM           558  '558'
              606  JUMP_FORWARD        742  'to 742'
            608_0  COME_FROM           538  '538'

 L.  82       608  LOAD_FAST                'self'
              610  LOAD_ATTR                status
              612  LOAD_CONST               6
              614  COMPARE_OP               ==
          616_618  POP_JUMP_IF_FALSE   638  'to 638'

 L.  83       620  LOAD_FAST                'c'
              622  LOAD_STR                 '\n'
              624  COMPARE_OP               ==
          626_628  POP_JUMP_IF_FALSE   742  'to 742'

 L.  84       630  LOAD_CONST               0
              632  LOAD_FAST                'self'
              634  STORE_ATTR               status
              636  JUMP_FORWARD        742  'to 742'
            638_0  COME_FROM           616  '616'
            638_1  COME_FROM            94  '94'

 L.  85       638  LOAD_FAST                'self'
              640  LOAD_ATTR                status
              642  LOAD_CONST               7
              644  COMPARE_OP               ==
          646_648  POP_JUMP_IF_FALSE   668  'to 668'

 L.  86       650  LOAD_FAST                'c'
              652  LOAD_STR                 '*'
              654  COMPARE_OP               ==
          656_658  POP_JUMP_IF_FALSE   742  'to 742'
            660_0  COME_FROM           236  '236'

 L.  87       660  LOAD_CONST               8
            662_0  COME_FROM           118  '118'
              662  LOAD_FAST                'self'
              664  STORE_ATTR               status
              666  JUMP_FORWARD        742  'to 742'
            668_0  COME_FROM           646  '646'

 L.  88       668  LOAD_FAST                'self'
            670_0  COME_FROM           370  '370'
              670  LOAD_ATTR                status
              672  LOAD_CONST               8
              674  COMPARE_OP               ==
          676_678  POP_JUMP_IF_FALSE   724  'to 724'

 L.  89       680  LOAD_FAST                'c'
              682  LOAD_STR                 '/'
              684  COMPARE_OP               ==
            686_0  COME_FROM           142  '142'
          686_688  POP_JUMP_IF_FALSE   698  'to 698'

 L.  90       690  LOAD_CONST               0
              692  LOAD_FAST                'self'
              694  STORE_ATTR               status
              696  JUMP_FORWARD        722  'to 722'
            698_0  COME_FROM           686  '686'

 L.  91       698  LOAD_FAST                'c'
              700  LOAD_STR                 '*'
              702  COMPARE_OP               ==
          704_706  POP_JUMP_IF_FALSE   716  'to 716'
            708_0  COME_FROM           164  '164'

 L.  92       708  LOAD_CONST               8
              710  LOAD_FAST                'self'
              712  STORE_ATTR               status
              714  JUMP_FORWARD        722  'to 722'
            716_0  COME_FROM           704  '704'

 L.  94       716  LOAD_CONST               7
            718_0  COME_FROM           174  '174'
              718  LOAD_FAST                'self'
              720  STORE_ATTR               status
            722_0  COME_FROM           714  '714'
            722_1  COME_FROM           696  '696'
              722  JUMP_FORWARD        742  'to 742'
            724_0  COME_FROM           676  '676'

 L.  96       724  LOAD_FAST                'self'
              726  LOAD_METHOD              error
            728_0  COME_FROM           304  '304'
              728  LOAD_STR                 'status {:d}'
              730  LOAD_METHOD              format
              732  LOAD_FAST                'self'
              734  LOAD_ATTR                status
              736  CALL_METHOD_1         1  '1 positional argument'
              738  CALL_METHOD_1         1  '1 positional argument'
              740  POP_TOP          
            742_0  COME_FROM           722  '722'
            742_1  COME_FROM           666  '666'
            742_2  COME_FROM           656  '656'
            742_3  COME_FROM           636  '636'
            742_4  COME_FROM           626  '626'
            742_5  COME_FROM           606  '606'
            742_6  COME_FROM           528  '528'
            742_7  COME_FROM           440  '440'
            742_8  COME_FROM           316  '316'
            742_9  COME_FROM           196  '196'

Parse error at or near `COME_FROM' instruction at offset 588_0

    def advance(self, n):
        while self.status != 10 and len(self.tokenList) < n:
            self.readChar(self.stream.read(1))