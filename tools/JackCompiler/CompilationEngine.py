# uncompyle6 version 3.8.0
# Python bytecode 3.7.0 (3394)
# Decompiled from: Python 3.8.13 (default, Mar 28 2022, 06:16:26)
# [Clang 12.0.0 ]
# Embedded file name: /home/micha/git/gitlab/nand2tetris-13/tools/JackCompiler/CompilationEngine.py
# Compiled at: 2020-05-05 23:21:19
# Size of source mod 2**32: 16543 bytes
import sys

from JackTokenizer import JackTokenizer
from SymbolTable import SymbolTable
from VMCodeWriter import VMCodeWriter


class CompilationEngine:
    def __init__(self, jackfile, vmf):
        self.jackfile = jackfile
        self.tokenizer = JackTokenizer(jackfile)
        self.vmfile = VMCodeWriter(vmf)
        self.table = SymbolTable()
        self.label = 1
        self.op = {}
        self.op["+"] = "add"
        self.op["-"] = "sub"
        self.op["*"] = "call Math.multiply 2"
        self.op["/"] = "call Math.divide 2"
        self.op["<"] = "lt"
        self.op[">"] = "gt"
        self.op["="] = "eq"
        self.op["&"] = "and"
        self.op["|"] = "or"
        self.unaryop = {}
        self.unaryop["-"] = "neg"
        self.unaryop["~"] = "not"

    def error(self, what):
        print(
            "Error CompilationEngine in line {:d} of {:s}: {:s}".format(
                self.tokenizer.line, self.jackfile, what
            )
        )
        sys.exit(-1)

    def getToken(self):
        self.tokenizer.advance(1)
        return self.tokenizer.tokenList[0]

    def nextToken(self):
        self.tokenizer.advance(2)
        return self.tokenizer.tokenList[1]

    def CompileKeyword(self, k):
        if self.getToken()[0] == "keyword":
            if self.getToken()[1] == k:
                self.tokenizer.tokenList.pop(0)
                return k

    def CompileSymbol(self, s):
        if self.getToken()[0] == "symbol":
            if self.getToken()[1] == s:
                self.tokenizer.tokenList.pop(0)
                return s

    def CompileIntegerConstant(self):
        t = self.getToken()
        if t[0] == "integerConstant":
            self.tokenizer.tokenList.pop(0)
            self.vmfile.writePush("constant", int(t[1]))
            return True

    def CompileStringConstant(self):
        t = self.getToken()
        if t[0] == "stringConstant":
            self.tokenizer.tokenList.pop(0)
            self.vmfile.writePush("constant", len(t[1]))
            self.vmfile.writeCall("String.new", 1)
            for i in t[1]:
                self.vmfile.writePush("constant", ord(i))
                self.vmfile.writeCall("String.appendChar", 2)

            return t[1]

    def CompileIdentifier(self):
        t = self.getToken()
        if t[0] == "identifier":
            self.tokenizer.tokenList.pop(0)
            return t[1]

    def CompileClass(self):
        if self.getToken() == ("keyword", "class"):
            if self.CompileKeyword("class"):
                self.name = self.CompileClassName()
                if self.name:
                    if self.CompileSymbol("{"):
                        while self.CompileClassVarDec():
                            pass

                        while self.CompileSubroutineDec():
                            pass

                        if self.CompileSymbol("}"):
                            return True
        self.error("class")

    def CompileClassVarDec(self):
        t = self.getToken()
        if t == ("keyword", "static") or t == ("keyword", "field"):
            if self.CompileKeyword("static") or self.CompileKeyword("field"):
                typ = self.CompileType()
                if typ:
                    if self.CompileVarNameDef(typ, t[1]):
                        while self.CompileSymbol(","):
                            if self.CompileVarNameDef(typ, t[1]):
                                continue
                            return False

                        if self.CompileSymbol(";"):
                            return True

    def CompileType(self):
        if self.CompileKeyword("int"):
            return "int"
        if self.CompileKeyword("char"):
            return "char"
        if self.CompileKeyword("boolean"):
            return "boolean"
        return self.CompileClassName()

    def CompileSubroutineDec(self):
        t = self.getToken()
        self.table.startSubroutine()
        self.label = 1
        if t in (
            ("keyword", "constructor"),
            ("keyword", "function"),
            ("keyword", "method"),
        ):
            if (
                self.CompileKeyword("constructor")
                or self.CompileKeyword("function")
                or self.CompileKeyword("method")
            ):
                typ = self.CompileKeyword("void") or self.CompileType()
                if typ:
                    subroutine = self.CompileSubroutineName()
                    if t[1] == "method":
                        self.table.Define("this", self.name, "arg")
                    if subroutine:
                        if self.CompileSymbol("("):
                            if self.CompileParameterList():
                                if self.CompileSymbol(")"):
                                    if self.CompileSubroutineBody(subroutine, t[1]):
                                        return True

    def CompileParameterList(self):
        typ = self.CompileType()
        if typ:
            if self.CompileVarNameDef(typ, "arg"):
                while self.CompileSymbol(","):
                    typ = self.CompileType()
                    if typ:
                        if self.CompileVarNameDef(typ, "arg"):
                            pass
                        else:
                            self.error("parameter list missing arg name")
                    else:
                        self.error("parameter list missing type")

                return True
            self.error("parameter list missing keyword arg")
        return True

    def CompileSubroutineBody(self, subroutine, cfm):
        if self.CompileSymbol("{"):
            while self.CompileVarDec():
                pass

            self.vmfile.writeFunction(
                self.name + "." + subroutine, self.table.VarCount("var")
            )
            if cfm == "method":
                self.vmfile.writePush("argument", 0)
                self.vmfile.writePop("pointer", 0)
            if cfm == "constructor":
                self.vmfile.writePush("constant", self.table.VarCount("field"))
                self.vmfile.writeCall("Memory.alloc", 1)
                self.vmfile.writePop("pointer", 0)
            self.CompileStatements()
            if self.CompileSymbol("}"):
                return True
        self.error("subroutine body")

    def CompileVarDec(self):
        if self.getToken() == ("keyword", "var"):
            if self.CompileKeyword("var"):
                typ = self.CompileType()
                if typ:
                    if self.CompileVarNameDef(typ, "var"):
                        while self.CompileSymbol(","):
                            if self.CompileVarNameDef(typ, "var"):
                                continue
                            return False

                        if self.CompileSymbol(";"):
                            return True

    def CompileClassName(self):
        return self.CompileIdentifier()

    def CompileSubroutineName(self):
        return self.CompileIdentifier()

    def CompileVarNameDef(self, typ, kind):
        name = self.CompileIdentifier()
        self.table.Define(name, typ, kind)
        return name

    def CompileVarName(self):
        name = self.CompileIdentifier()
        return name

    def CompileStatements(self):
        while self.CompileStatement():
            pass

        return True

    def CompileStatement(self):
        if self.CompileLetStatement():
            return True
        if self.CompileReturnStatement():
            return True
        if self.CompileIfStatement():
            return True
        if self.CompileWhileStatement():
            return True
        if self.CompileDoStatement():
            return True

    def CompileLetStatement(self):
        if self.getToken() == ("keyword", "let") and self.CompileKeyword("let"):
            varName = self.CompileVarName()
            if varName:
                if self.CompileSymbol("["):
                    if self.CompileExpression() and self.CompileSymbol("]"):
                        self.vmfile.writePush(
                            self.segment(self.table.KindOf(varName)),
                            self.table.IndexOf(varName),
                        )
                        self.vmfile.writeArithmetic("add")
                        ok = True
                        array = True
        else:
            ok = True
            array = False
        if ok:
            if self.CompileSymbol("="):
                if self.CompileExpression():
                    if self.CompileSymbol(";"):
                        if array:
                            self.vmfile.writePop("temp", 0)
                            self.vmfile.writePop("pointer", 1)
                            self.vmfile.writePush("temp", 0)
                            self.vmfile.writePop("that", 0)
                        else:
                            self.vmfile.writePop(
                                self.segment(self.table.KindOf(varName)),
                                self.table.IndexOf(varName),
                            )
                        return True

    def CompileIfStatement(self):
        n = str(self.label)
        self.label = self.label + 1
        if self.getToken() == ("keyword", "if"):
            if self.CompileKeyword("if"):
                if self.CompileSymbol("("):
                    if self.CompileExpression():
                        if self.CompileSymbol(")"):
                            self.vmfile.writeIf("if" + n)
                            self.vmfile.writeGoto("ifelse" + n)
                            self.vmfile.writeLabel("if" + n)
                            if self.CompileSymbol("{") and self.CompileStatements():
                                if self.CompileSymbol("}"):
                                    if self.CompileKeyword("else"):
                                        self.vmfile.writeGoto("ifend" + n)
                                        self.vmfile.writeLabel("ifelse" + n)
                                        if (
                                            self.CompileSymbol("{")
                                            and self.CompileStatements()
                                            and self.CompileSymbol("}")
                                        ):
                                            self.vmfile.writeLabel("ifend" + n)
                                            return True
                                    else:
                                        self.vmfile.writeLabel("ifelse" + n)
                                        return True

    def CompileWhileStatement(self):
        n = str(self.label)
        self.label = self.label + 1
        if self.getToken() == ("keyword", "while"):
            if self.CompileKeyword("while"):
                self.vmfile.writeLabel("while" + n)
                if self.CompileSymbol("("):
                    if self.CompileExpression():
                        if self.CompileSymbol(")"):
                            self.vmfile.writeArithmetic("not")
                            self.vmfile.writeIf("whileend" + n)
                            if self.CompileSymbol("{"):
                                self.CompileStatements()
                                if self.CompileSymbol("}"):
                                    self.vmfile.writeGoto("while" + n)
                                    self.vmfile.writeLabel("whileend" + n)
                                    return True

    def CompileDoStatement(self):
        if self.getToken() == ("keyword", "do"):
            if self.CompileKeyword("do"):
                if self.CompileSubroutineCall():
                    if self.CompileSymbol(";"):
                        self.vmfile.writePop("temp", 0)
                        return True

    def CompileReturnStatement(self):
        if self.getToken() == ("keyword", "return"):
            if self.CompileKeyword("return"):
                if self.CompileExpression():
                    pass
                else:
                    self.vmfile.writePush("constant", 0)
                if self.CompileSymbol(";"):
                    self.vmfile.writeReturn()
                    return True

    def CompileExpression(self):
        t = self.getToken()
        if t != ("symbol", ")"):
            if t != ("symbol", ";"):
                if self.CompileTerm():
                    op = self.CompileOp()
                    while op:
                        if self.CompileTerm():
                            self.vmfile.writeArithmetic(self.op[op])
                            op = self.CompileOp()
                        else:
                            return False

                    return True

    def CompileTerm(self):
        t = self.getToken()
        if self.CompileIntegerConstant():
            return True
        if self.CompileStringConstant():
            return True
        if self.CompileSubroutineCall():
            return True
        if self.CompileKeywordConstant():
            return True
        if self.CompileSymbol("("):
            if self.CompileExpression():
                if self.CompileSymbol(")"):
                    return True
            return False
        op = self.CompileUnaryOp()
        if op:
            if self.CompileTerm():
                self.vmfile.writeArithmetic(self.unaryop[op])
                return True
            return False
        varName = self.CompileVarName()
        if varName:
            self.vmfile.writePush(
                self.segment(self.table.KindOf(varName)), self.table.IndexOf(varName)
            )
            if self.CompileSymbol("["):
                if self.CompileExpression():
                    if self.CompileSymbol("]"):
                        self.vmfile.writeArithmetic("add")
                        self.vmfile.writePop("pointer", 1)
                        self.vmfile.writePush("that", 0)
                        return True
            return True

    def segment(self, kindof):
        if kindof == "var":
            return "local"
        if kindof == "field":
            return "this"
        if kindof == "arg":
            return "argument"
        if kindof == "static":
            return "static"

    def CompileSubroutineCall(self):
        if self.getToken()[0] == "identifier" and self.nextToken() == ("symbol", "("):
            sr = self.CompileSubroutineName()
            self.vmfile.writePush("pointer", 0)
            self.CompileSymbol("(")
            nargs = 1 + self.CompileExpressionList()
            if nargs > 0:
                if self.CompileSymbol(")"):
                    self.vmfile.writeCall(self.name + "." + sr, nargs)
                    return True
        else:
            if self.getToken()[0] == "identifier":
                if self.nextToken() == ("symbol", "."):
                    c = self.CompileClassName()
                    nargs = 0
                    if self.table.TypeOf(c):
                        self.vmfile.writePush(
                            self.segment(self.table.KindOf(c)), self.table.IndexOf(c)
                        )
                        c = self.table.TypeOf(c)
                        nargs = 1
                    self.CompileSymbol(".")
                    sr = self.CompileSubroutineName()
                    if sr and self.CompileSymbol("("):
                        nargs = nargs + self.CompileExpressionList()
                        if nargs > -1:
                            if self.CompileSymbol(")"):
                                self.vmfile.writeCall(c + "." + sr, nargs)
                                return True

    def CompileExpressionList(self):
        nargs = 0
        if self.CompileExpression():
            nargs = nargs + 1
            while self.CompileSymbol(","):
                if self.CompileExpression():
                    nargs = nargs + 1
                else:
                    return -1

            return nargs
        return nargs

    def CompileOp(self):
        t = self.getToken()
        if t[0] == "symbol":
            if t[1] in "+-*/|=&<>":
                return self.CompileSymbol(t[1])

    def CompileUnaryOp(self):
        t = self.getToken()
        if t[0] == "symbol":
            if t[1] in "~-":
                return self.CompileSymbol(t[1])

    def CompileKeywordConstant(self):
        t = self.getToken()
        if t[0] == "keyword":
            if t[1] in ("true", "false", "null", "this"):
                if t[1] == "true":
                    self.vmfile.writePush("constant", 1)
                    self.vmfile.writeArithmetic("neg")
                else:
                    if t[1] == "false":
                        self.vmfile.writePush("constant", 0)
                    else:
                        if t[1] == "this":
                            self.vmfile.writePush("pointer", 0)
                        else:
                            if t[1] == "null":
                                self.vmfile.writePush("constant", 0)
                return self.CompileKeyword(t[1])
