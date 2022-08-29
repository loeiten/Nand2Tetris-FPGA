@256
D=A
@SP
M=D
@0
D=A
@R14
M=D
@Sys.init
D=A
@R13
M=D
@return0
D=A
@CALL
0;JMP
(return0)
(HALT)
@HALT
0;JMP
(RETURN)
@LCL
D=M
@R13
M=D
@R13
D=M
@5
A=D-A
D=M
@R14
M=D
@SP
A=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R13
AM=M-1
D=M
@THAT
M=D
@R13
AM=M-1
D=M
@THIS
M=D
@R13
AM=M-1
D=M
@ARG
M=D
@R13
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
(CALL)
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@R14
A=M
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@R13
A=M
0;JMP

(Screen.init)
@0
D=A
(Screen.init_LOOP)
@Screen.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.init_LOOP
0;JMP
(Screen.init_END)

@8200  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@Screen.0
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@Screen.1
M=D
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@SP  //pop static
AM=M-1
D=M
@Screen.2
M=D
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeCommand
D=A
@R13
M=D
@return1
D=A
@CALL
0;JMP
(return1)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@72  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeData
D=A
@R13
M=D
@return2
D=A
@CALL
0;JMP
(return2)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@58  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeCommand
D=A
@R13
M=D
@return3
D=A
@CALL
0;JMP
(return3)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@85  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeData
D=A
@R13
M=D
@return4
D=A
@CALL
0;JMP
(return4)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@17  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeCommand
D=A
@R13
M=D
@return5
D=A
@CALL
0;JMP
(return5)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@500  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.wait
D=A
@R13
M=D
@return6
D=A
@CALL
0;JMP
(return6)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@41  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeCommand
D=A
@R13
M=D
@return7
D=A
@CALL
0;JMP
(return7)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@500  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.wait
D=A
@R13
M=D
@return8
D=A
@CALL
0;JMP
(return8)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Screen.clearScreen
D=A
@R13
M=D
@return9
D=A
@CALL
0;JMP
(return9)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.clearScreen)
@1
D=A
(Screen.clearScreen_LOOP)
@Screen.clearScreen_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.clearScreen_LOOP
0;JMP
(Screen.clearScreen_END)

@Screen.1   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Screen.2   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@Screen.1
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@240  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@320  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@R14
M=D
@Screen.drawRectangle
D=A
@R13
M=D
@return10
D=A
@CALL
0;JMP
(return10)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@Screen.1
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.drawPixel)
@0
D=A
(Screen.drawPixel_LOOP)
@Screen.drawPixel_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.drawPixel_LOOP
0;JMP
(Screen.drawPixel_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt0
D;JLT
@SP
A=M-1
M=0
(lt0)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@239  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt1
D;JGT
@SP
A=M-1
M=0
(gt1)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt2
D;JLT
@SP
A=M-1
M=0
(lt2)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@319  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt3
D;JGT
@SP
A=M-1
M=0
(gt3)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@SP
AM=M-1
D=M
@Screen.drawPixel$if1
D;JNE
@Screen.drawPixel$ifelse1
0;JMP
(Screen.drawPixel$if1)
@7  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return11
D=A
@CALL
0;JMP
(return11)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(Screen.drawPixel$ifelse1)
@42  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeCommand
D=A
@R13
M=D
@return12
D=A
@CALL
0;JMP
(return12)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeData16
D=A
@R13
M=D
@return13
D=A
@CALL
0;JMP
(return13)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeData16
D=A
@R13
M=D
@return14
D=A
@CALL
0;JMP
(return14)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@43  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeCommand
D=A
@R13
M=D
@return15
D=A
@CALL
0;JMP
(return15)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeData16
D=A
@R13
M=D
@return16
D=A
@CALL
0;JMP
(return16)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeData16
D=A
@R13
M=D
@return17
D=A
@CALL
0;JMP
(return17)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@44  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeCommand
D=A
@R13
M=D
@return18
D=A
@CALL
0;JMP
(return18)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@Screen.1   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeData16
D=A
@R13
M=D
@return19
D=A
@CALL
0;JMP
(return19)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.setColor)
@0
D=A
(Screen.setColor_LOOP)
@Screen.setColor_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.setColor_LOOP
0;JMP
(Screen.setColor_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@Screen.1
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.setBackColor)
@0
D=A
(Screen.setBackColor_LOOP)
@Screen.setBackColor_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.setBackColor_LOOP
0;JMP
(Screen.setBackColor_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@Screen.2
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.paintPixel)
@0
D=A
(Screen.paintPixel_LOOP)
@Screen.paintPixel_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.paintPixel_LOOP
0;JMP
(Screen.paintPixel_END)

@Screen.1   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeData16
D=A
@R13
M=D
@return20
D=A
@CALL
0;JMP
(return20)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.clearPixel)
@0
D=A
(Screen.clearPixel_LOOP)
@Screen.clearPixel_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.clearPixel_LOOP
0;JMP
(Screen.clearPixel_END)

@Screen.2   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeData16
D=A
@R13
M=D
@return21
D=A
@CALL
0;JMP
(return21)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.drawLine)
@4
D=A
(Screen.drawLine_LOOP)
@Screen.drawLine_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.drawLine_LOOP
0;JMP
(Screen.drawLine_END)

@ARG //push argument
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@ARG //push argument
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt4
D;JLT
@SP
A=M-1
M=0
(lt4)
@SP
AM=M-1
D=M
@Screen.drawLine$if1
D;JNE
@Screen.drawLine$ifelse1
0;JMP
(Screen.drawLine$if1)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@LCL //pop local
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Screen.drawLine$ifend1
0;JMP
(Screen.drawLine$ifelse1)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Screen.drawLine$ifend1)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt5
D;JLT
@SP
A=M-1
M=0
(lt5)
@SP
AM=M-1
D=M
@Screen.drawLine$if6
D;JNE
@Screen.drawLine$ifelse6
0;JMP
(Screen.drawLine$if6)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@LCL //pop local
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Screen.drawLine$ifend6
0;JMP
(Screen.drawLine$ifelse6)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Screen.drawLine$ifend6)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq6
D;JEQ
@SP
A=M-1
M=0
(eq6)
@SP
AM=M-1
D=M
@Screen.drawLine$if11
D;JNE
@Screen.drawLine$ifelse11
0;JMP
(Screen.drawLine$if11)
(Screen.drawLine$while13)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq7
D;JEQ
@SP
A=M-1
M=0
(eq7)
@SP  //not
A=M-1
M=!M
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Screen.drawLine$whileend13
D;JNE
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Screen.drawPixel
D=A
@R13
M=D
@return22
D=A
@CALL
0;JMP
(return22)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //pop argument
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Screen.drawLine$while13
0;JMP
(Screen.drawLine$whileend13)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Screen.drawPixel
D=A
@R13
M=D
@return23
D=A
@CALL
0;JMP
(return23)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.drawLine$ifelse11)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq8
D;JEQ
@SP
A=M-1
M=0
(eq8)
@SP
AM=M-1
D=M
@Screen.drawLine$if22
D;JNE
@Screen.drawLine$ifelse22
0;JMP
(Screen.drawLine$if22)
(Screen.drawLine$while24)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq9
D;JEQ
@SP
A=M-1
M=0
(eq9)
@SP  //not
A=M-1
M=!M
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Screen.drawLine$whileend24
D;JNE
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Screen.drawPixel
D=A
@R13
M=D
@return24
D=A
@CALL
0;JMP
(return24)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //pop argument
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Screen.drawLine$while24
0;JMP
(Screen.drawLine$whileend24)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Screen.drawPixel
D=A
@R13
M=D
@return25
D=A
@CALL
0;JMP
(return25)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.drawLine$ifelse22)
(Screen.drawLine$while34)
@ARG //push argument
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq10
D;JEQ
@SP
A=M-1
M=0
(eq10)
@ARG //push argument
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq11
D;JEQ
@SP
A=M-1
M=0
(eq11)
@SP  //and
AM=M-1
D=M
A=A-1
M=D&M
@SP  //not
A=M-1
M=!M
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Screen.drawLine$whileend34
D;JNE
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Screen.drawPixel
D=A
@R13
M=D
@return26
D=A
@CALL
0;JMP
(return26)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@ARG //push argument
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Math.multiply
D=A
@R13
M=D
@return27
D=A
@CALL
0;JMP
(return27)
@1
D=A
@R14
M=D
@Math.abs
D=A
@R13
M=D
@return28
D=A
@CALL
0;JMP
(return28)
@ARG //push argument
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Math.multiply
D=A
@R13
M=D
@return29
D=A
@CALL
0;JMP
(return29)
@1
D=A
@R14
M=D
@Math.abs
D=A
@R13
M=D
@return30
D=A
@CALL
0;JMP
(return30)
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt12
D;JGT
@SP
A=M-1
M=0
(gt12)
@SP
AM=M-1
D=M
@Screen.drawLine$if37
D;JNE
@Screen.drawLine$ifelse37
0;JMP
(Screen.drawLine$if37)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //pop argument
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Screen.drawLine$ifend37
0;JMP
(Screen.drawLine$ifelse37)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //pop argument
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Screen.drawLine$ifend37)
@Screen.drawLine$while34
0;JMP
(Screen.drawLine$whileend34)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Screen.drawPixel
D=A
@R13
M=D
@return31
D=A
@CALL
0;JMP
(return31)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.drawRectangle)
@2
D=A
(Screen.drawRectangle_LOOP)
@Screen.drawRectangle_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.drawRectangle_LOOP
0;JMP
(Screen.drawRectangle_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@R14
M=D
@Screen.setAddrWindow
D=A
@R13
M=D
@return32
D=A
@CALL
0;JMP
(return32)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Screen.drawRectangle$while4)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt13
D;JLT
@SP
A=M-1
M=0
(lt13)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Screen.drawRectangle$whileend4
D;JNE
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Screen.drawRectangle$while6)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt14
D;JLT
@SP
A=M-1
M=0
(lt14)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Screen.drawRectangle$whileend6
D;JNE
@Screen.1   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeData16
D=A
@R13
M=D
@return33
D=A
@CALL
0;JMP
(return33)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Screen.drawRectangle$while6
0;JMP
(Screen.drawRectangle$whileend6)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Screen.drawRectangle$while4
0;JMP
(Screen.drawRectangle$whileend4)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.drawCircle)
@4
D=A
(Screen.drawCircle_LOOP)
@Screen.drawCircle_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.drawCircle_LOOP
0;JMP
(Screen.drawCircle_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Screen.drawCircle$while2)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq15
D;JEQ
@SP
A=M-1
M=0
(eq15)
@SP  //not
A=M-1
M=!M
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Screen.drawCircle$whileend2
D;JNE
@ARG //push argument
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Math.multiply
D=A
@R13
M=D
@return34
D=A
@CALL
0;JMP
(return34)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Math.multiply
D=A
@R13
M=D
@return35
D=A
@CALL
0;JMP
(return35)
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@1
D=A
@R14
M=D
@Math.sqrt
D=A
@R13
M=D
@return36
D=A
@CALL
0;JMP
(return36)
@LCL //pop local
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@4
D=A
@R14
M=D
@Screen.drawLine
D=A
@R13
M=D
@return37
D=A
@CALL
0;JMP
(return37)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@4
D=A
@R14
M=D
@Screen.drawLine
D=A
@R13
M=D
@return38
D=A
@CALL
0;JMP
(return38)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Screen.drawCircle$while2
0;JMP
(Screen.drawCircle$whileend2)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.setAddrWindow)
@0
D=A
(Screen.setAddrWindow_LOOP)
@Screen.setAddrWindow_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.setAddrWindow_LOOP
0;JMP
(Screen.setAddrWindow_END)

@42  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeCommand
D=A
@R13
M=D
@return39
D=A
@CALL
0;JMP
(return39)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeData16
D=A
@R13
M=D
@return40
D=A
@CALL
0;JMP
(return40)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@1
D=A
@R14
M=D
@Screen.writeData16
D=A
@R13
M=D
@return41
D=A
@CALL
0;JMP
(return41)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@43  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeCommand
D=A
@R13
M=D
@return42
D=A
@CALL
0;JMP
(return42)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeData16
D=A
@R13
M=D
@return43
D=A
@CALL
0;JMP
(return43)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@1
D=A
@R14
M=D
@Screen.writeData16
D=A
@R13
M=D
@return44
D=A
@CALL
0;JMP
(return44)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@44  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Screen.writeCommand
D=A
@R13
M=D
@return45
D=A
@CALL
0;JMP
(return45)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.writeData)
@0
D=A
(Screen.writeData_LOOP)
@Screen.writeData_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.writeData_LOOP
0;JMP
(Screen.writeData_END)

@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Screen.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.writeData16)
@0
D=A
(Screen.writeData16_LOOP)
@Screen.writeData16_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.writeData16_LOOP
0;JMP
(Screen.writeData16_END)

@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Screen.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.writeCommand)
@0
D=A
(Screen.writeCommand_LOOP)
@Screen.writeCommand_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.writeCommand_LOOP
0;JMP
(Screen.writeCommand_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Screen.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.BLACK)
@0
D=A
(Screen.BLACK_LOOP)
@Screen.BLACK_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.BLACK_LOOP
0;JMP
(Screen.BLACK_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.NAVY)
@0
D=A
(Screen.NAVY_LOOP)
@Screen.NAVY_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.NAVY_LOOP
0;JMP
(Screen.NAVY_END)

@16  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.BLUE)
@0
D=A
(Screen.BLUE_LOOP)
@Screen.BLUE_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.BLUE_LOOP
0;JMP
(Screen.BLUE_END)

@31  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.GREEN)
@0
D=A
(Screen.GREEN_LOOP)
@Screen.GREEN_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.GREEN_LOOP
0;JMP
(Screen.GREEN_END)

@2016  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.CYAN)
@0
D=A
(Screen.CYAN_LOOP)
@Screen.CYAN_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.CYAN_LOOP
0;JMP
(Screen.CYAN_END)

@2047  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Screen.MAROON)
@0
D=A
(Screen.MAROON_LOOP)
@Screen.MAROON_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.MAROON_LOOP
0;JMP
(Screen.MAROON_END)

@32767  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //not
A=M-1
M=!M
@RETURN
0;JMP

(Screen.PURPLE)
@0
D=A
(Screen.PURPLE_LOOP)
@Screen.PURPLE_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.PURPLE_LOOP
0;JMP
(Screen.PURPLE_END)

@32752  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Screen.OLIVE)
@0
D=A
(Screen.OLIVE_LOOP)
@Screen.OLIVE_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.OLIVE_LOOP
0;JMP
(Screen.OLIVE_END)

@31744  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Screen.DARKGREY)
@0
D=A
(Screen.DARKGREY_LOOP)
@Screen.DARKGREY_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.DARKGREY_LOOP
0;JMP
(Screen.DARKGREY_END)

@31728  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Screen.LIGHTGREY)
@0
D=A
(Screen.LIGHTGREY_LOOP)
@Screen.LIGHTGREY_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.LIGHTGREY_LOOP
0;JMP
(Screen.LIGHTGREY_END)

@14824  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Screen.RED)
@0
D=A
(Screen.RED_LOOP)
@Screen.RED_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.RED_LOOP
0;JMP
(Screen.RED_END)

@2048  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Screen.MAGENTA)
@0
D=A
(Screen.MAGENTA_LOOP)
@Screen.MAGENTA_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.MAGENTA_LOOP
0;JMP
(Screen.MAGENTA_END)

@2017  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Screen.YELLOW)
@0
D=A
(Screen.YELLOW_LOOP)
@Screen.YELLOW_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.YELLOW_LOOP
0;JMP
(Screen.YELLOW_END)

@32  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Screen.ORANGE)
@0
D=A
(Screen.ORANGE_LOOP)
@Screen.ORANGE_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.ORANGE_LOOP
0;JMP
(Screen.ORANGE_END)

@736  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Screen.WHITE)
@0
D=A
(Screen.WHITE_LOOP)
@Screen.WHITE_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Screen.WHITE_LOOP
0;JMP
(Screen.WHITE_END)

@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Output.init)
@0
D=A
(Output.init_LOOP)
@Output.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Output.init_LOOP
0;JMP
(Output.init_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@Output.1
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@Output.0
M=D
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.new
D=A
@R13
M=D
@return46
D=A
@CALL
0;JMP
(return46)
@SP  //pop static
AM=M-1
D=M
@Output.2
M=D
@8  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Array.new
D=A
@R13
M=D
@return47
D=A
@CALL
0;JMP
(return47)
@SP  //pop static
AM=M-1
D=M
@Output.4
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Output.4   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Output.4   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Output.4   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Output.4   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@4  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@4  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Output.4   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@8  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Output.4   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@16  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Output.4   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@32  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@7  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Output.4   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@64  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0
D=A
@R14
M=D
@Output.initMap
D=A
@R13
M=D
@return48
D=A
@CALL
0;JMP
(return48)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Output.initMap)
@0
D=A
(Output.initMap_LOOP)
@Output.initMap_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Output.initMap_LOOP
0;JMP
(Output.initMap_END)

@127  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Array.new
D=A
@R13
M=D
@return49
D=A
@CALL
0;JMP
(return49)
@SP  //pop static
AM=M-1
D=M
@Output.3
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return50
D=A
@CALL
0;JMP
(return50)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@10  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return51
D=A
@CALL
0;JMP
(return51)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@32  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return52
D=A
@CALL
0;JMP
(return52)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@33  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return53
D=A
@CALL
0;JMP
(return53)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@34  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@20  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return54
D=A
@CALL
0;JMP
(return54)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@35  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@18  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@18  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@18  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@18  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@18  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@18  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return55
D=A
@CALL
0;JMP
(return55)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@36  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return56
D=A
@CALL
0;JMP
(return56)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@37  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@35  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@49  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return57
D=A
@CALL
0;JMP
(return57)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@38  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return58
D=A
@CALL
0;JMP
(return58)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@39  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return59
D=A
@CALL
0;JMP
(return59)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@40  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return60
D=A
@CALL
0;JMP
(return60)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@41  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return61
D=A
@CALL
0;JMP
(return61)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@42  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return62
D=A
@CALL
0;JMP
(return62)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@43  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return63
D=A
@CALL
0;JMP
(return63)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@44  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return64
D=A
@CALL
0;JMP
(return64)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@45  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return65
D=A
@CALL
0;JMP
(return65)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@46  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return66
D=A
@CALL
0;JMP
(return66)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@47  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@32  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return67
D=A
@CALL
0;JMP
(return67)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return68
D=A
@CALL
0;JMP
(return68)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@49  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@14  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return69
D=A
@CALL
0;JMP
(return69)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@50  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return70
D=A
@CALL
0;JMP
(return70)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@28  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return71
D=A
@CALL
0;JMP
(return71)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@52  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@16  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@28  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@26  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@25  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@60  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return72
D=A
@CALL
0;JMP
(return72)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@53  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@31  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return73
D=A
@CALL
0;JMP
(return73)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@28  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@31  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return74
D=A
@CALL
0;JMP
(return74)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@55  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@49  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return75
D=A
@CALL
0;JMP
(return75)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@56  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return76
D=A
@CALL
0;JMP
(return76)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@57  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@62  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@14  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return77
D=A
@CALL
0;JMP
(return77)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@58  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return78
D=A
@CALL
0;JMP
(return78)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@59  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return79
D=A
@CALL
0;JMP
(return79)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@60  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return80
D=A
@CALL
0;JMP
(return80)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@61  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return81
D=A
@CALL
0;JMP
(return81)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@62  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return82
D=A
@CALL
0;JMP
(return82)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@64  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@59  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@59  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@59  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return83
D=A
@CALL
0;JMP
(return83)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return84
D=A
@CALL
0;JMP
(return84)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@65  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return85
D=A
@CALL
0;JMP
(return85)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@66  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@31  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@31  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@31  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return86
D=A
@CALL
0;JMP
(return86)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@67  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@28  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@35  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@35  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@28  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return87
D=A
@CALL
0;JMP
(return87)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@68  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return88
D=A
@CALL
0;JMP
(return88)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@69  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@35  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@11  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@11  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@35  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return89
D=A
@CALL
0;JMP
(return89)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@70  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@35  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@11  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@11  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return90
D=A
@CALL
0;JMP
(return90)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@71  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@28  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@35  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@59  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@44  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return91
D=A
@CALL
0;JMP
(return91)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@72  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return92
D=A
@CALL
0;JMP
(return92)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@73  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return93
D=A
@CALL
0;JMP
(return93)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@74  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@60  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@14  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return94
D=A
@CALL
0;JMP
(return94)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@75  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return95
D=A
@CALL
0;JMP
(return95)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@76  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@35  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return96
D=A
@CALL
0;JMP
(return96)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@77  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@33  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return97
D=A
@CALL
0;JMP
(return97)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@78  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@55  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@55  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@59  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@59  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return98
D=A
@CALL
0;JMP
(return98)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@79  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return99
D=A
@CALL
0;JMP
(return99)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@80  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@31  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@31  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return100
D=A
@CALL
0;JMP
(return100)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@81  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@59  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return101
D=A
@CALL
0;JMP
(return101)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@82  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@31  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@31  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return102
D=A
@CALL
0;JMP
(return102)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@83  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@28  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return103
D=A
@CALL
0;JMP
(return103)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@84  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@45  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return104
D=A
@CALL
0;JMP
(return104)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@85  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return105
D=A
@CALL
0;JMP
(return105)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@86  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return106
D=A
@CALL
0;JMP
(return106)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@87  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@18  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return107
D=A
@CALL
0;JMP
(return107)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@88  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return108
D=A
@CALL
0;JMP
(return108)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@89  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return109
D=A
@CALL
0;JMP
(return109)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@90  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@49  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@35  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return110
D=A
@CALL
0;JMP
(return110)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@91  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return111
D=A
@CALL
0;JMP
(return111)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@92  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@32  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return112
D=A
@CALL
0;JMP
(return112)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@93  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return113
D=A
@CALL
0;JMP
(return113)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@94  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@8  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@28  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return114
D=A
@CALL
0;JMP
(return114)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@95  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return115
D=A
@CALL
0;JMP
(return115)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@96  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return116
D=A
@CALL
0;JMP
(return116)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@97  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@14  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return117
D=A
@CALL
0;JMP
(return117)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@98  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return118
D=A
@CALL
0;JMP
(return118)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@99  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return119
D=A
@CALL
0;JMP
(return119)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@100  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@60  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return120
D=A
@CALL
0;JMP
(return120)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@101  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return121
D=A
@CALL
0;JMP
(return121)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@102  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@28  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@38  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return122
D=A
@CALL
0;JMP
(return122)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@103  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@62  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return123
D=A
@CALL
0;JMP
(return123)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@104  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@55  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return124
D=A
@CALL
0;JMP
(return124)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@105  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@14  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return125
D=A
@CALL
0;JMP
(return125)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@106  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@56  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return126
D=A
@CALL
0;JMP
(return126)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@107  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return127
D=A
@CALL
0;JMP
(return127)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@108  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@14  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return128
D=A
@CALL
0;JMP
(return128)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@109  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@29  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@43  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@43  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@43  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@43  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return129
D=A
@CALL
0;JMP
(return129)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@110  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@29  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return130
D=A
@CALL
0;JMP
(return130)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@111  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return131
D=A
@CALL
0;JMP
(return131)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@112  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@31  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return132
D=A
@CALL
0;JMP
(return132)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@113  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@62  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return133
D=A
@CALL
0;JMP
(return133)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@114  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@29  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@55  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@7  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return134
D=A
@CALL
0;JMP
(return134)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@115  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return135
D=A
@CALL
0;JMP
(return135)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@116  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@4  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@28  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return136
D=A
@CALL
0;JMP
(return136)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@117  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return137
D=A
@CALL
0;JMP
(return137)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@118  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return138
D=A
@CALL
0;JMP
(return138)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@119  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@18  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return139
D=A
@CALL
0;JMP
(return139)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@120  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return140
D=A
@CALL
0;JMP
(return140)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@121  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@62  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@24  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return141
D=A
@CALL
0;JMP
(return141)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@122  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@27  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return142
D=A
@CALL
0;JMP
(return142)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@123  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@56  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@7  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@56  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return143
D=A
@CALL
0;JMP
(return143)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@124  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return144
D=A
@CALL
0;JMP
(return144)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@125  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@7  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@56  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@7  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return145
D=A
@CALL
0;JMP
(return145)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@126  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@38  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@45  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@25  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@12
D=A
@R14
M=D
@Output.create
D=A
@R13
M=D
@return146
D=A
@CALL
0;JMP
(return146)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Output.create)
@1
D=A
(Output.create_LOOP)
@Output.create_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Output.create_LOOP
0;JMP
(Output.create_END)

@11  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Array.new
D=A
@R13
M=D
@return147
D=A
@CALL
0;JMP
(return147)
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Output.3   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@4  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@7
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@7  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@8
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@8  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@9
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@9  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@10
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@10  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@11
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Output.drawChar)
@3
D=A
(Output.drawChar_LOOP)
@Output.drawChar_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Output.drawChar_LOOP
0;JMP
(Output.drawChar_END)

@Output.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@8  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Math.multiply
D=A
@R13
M=D
@return148
D=A
@CALL
0;JMP
(return148)
@Output.1   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@11  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Math.multiply
D=A
@R13
M=D
@return149
D=A
@CALL
0;JMP
(return149)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@8  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@11  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@4
D=A
@R14
M=D
@Screen.setAddrWindow
D=A
@R13
M=D
@return150
D=A
@CALL
0;JMP
(return150)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@Output.3   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Output.drawChar$while4)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@11  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt16
D;JLT
@SP
A=M-1
M=0
(lt16)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Output.drawChar$whileend4
D;JNE
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Output.drawChar$while6)
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@8  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt17
D;JLT
@SP
A=M-1
M=0
(lt17)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Output.drawChar$whileend6
D;JNE
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Output.4   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //and
AM=M-1
D=M
A=A-1
M=D&M
@SP
AM=M-1
D=M
@Output.drawChar$if7
D;JNE
@Output.drawChar$ifelse7
0;JMP
(Output.drawChar$if7)
@0
D=A
@R14
M=D
@Screen.paintPixel
D=A
@R13
M=D
@return151
D=A
@CALL
0;JMP
(return151)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@Output.drawChar$ifend7
0;JMP
(Output.drawChar$ifelse7)
@0
D=A
@R14
M=D
@Screen.clearPixel
D=A
@R13
M=D
@return152
D=A
@CALL
0;JMP
(return152)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(Output.drawChar$ifend7)
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Output.drawChar$while6
0;JMP
(Output.drawChar$whileend6)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Output.drawChar$while4
0;JMP
(Output.drawChar$whileend4)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Output.moveCursor)
@0
D=A
(Output.moveCursor_LOOP)
@Output.moveCursor_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Output.moveCursor_LOOP
0;JMP
(Output.moveCursor_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt18
D;JLT
@SP
A=M-1
M=0
(lt18)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@28  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt19
D;JGT
@SP
A=M-1
M=0
(gt19)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt20
D;JLT
@SP
A=M-1
M=0
(lt20)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@29  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt21
D;JGT
@SP
A=M-1
M=0
(gt21)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@SP
AM=M-1
D=M
@Output.moveCursor$if1
D;JNE
@Output.moveCursor$ifelse1
0;JMP
(Output.moveCursor$if1)
@20  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return153
D=A
@CALL
0;JMP
(return153)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(Output.moveCursor$ifelse1)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@Output.0
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@Output.1
M=D
@32  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Output.drawChar
D=A
@R13
M=D
@return154
D=A
@CALL
0;JMP
(return154)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Output.printChar)
@0
D=A
(Output.printChar_LOOP)
@Output.printChar_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Output.printChar_LOOP
0;JMP
(Output.printChar_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@13  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq22
D;JEQ
@SP
A=M-1
M=0
(eq22)
@SP
AM=M-1
D=M
@Output.printChar$if1
D;JNE
@Output.printChar$ifelse1
0;JMP
(Output.printChar$if1)
@0
D=A
@R14
M=D
@Output.println
D=A
@R13
M=D
@return155
D=A
@CALL
0;JMP
(return155)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@Output.printChar$ifend1
0;JMP
(Output.printChar$ifelse1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@127  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq23
D;JEQ
@SP
A=M-1
M=0
(eq23)
@SP
AM=M-1
D=M
@Output.printChar$if6
D;JNE
@Output.printChar$ifelse6
0;JMP
(Output.printChar$if6)
@0
D=A
@R14
M=D
@Output.backSpace
D=A
@R13
M=D
@return156
D=A
@CALL
0;JMP
(return156)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@Output.printChar$ifend6
0;JMP
(Output.printChar$ifelse6)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Output.drawChar
D=A
@R13
M=D
@return157
D=A
@CALL
0;JMP
(return157)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@Output.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop static
AM=M-1
D=M
@Output.0
M=D
@Output.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@30  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq24
D;JEQ
@SP
A=M-1
M=0
(eq24)
@SP
AM=M-1
D=M
@Output.printChar$if13
D;JNE
@Output.printChar$ifelse13
0;JMP
(Output.printChar$if13)
@0
D=A
@R14
M=D
@Output.println
D=A
@R13
M=D
@return158
D=A
@CALL
0;JMP
(return158)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(Output.printChar$ifelse13)
(Output.printChar$ifend6)
(Output.printChar$ifend1)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Output.printString)
@2
D=A
(Output.printString_LOOP)
@Output.printString_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Output.printString_LOOP
0;JMP
(Output.printString_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.length
D=A
@R13
M=D
@return159
D=A
@CALL
0;JMP
(return159)
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Output.printString$while2)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt25
D;JLT
@SP
A=M-1
M=0
(lt25)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Output.printString$whileend2
D;JNE
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.charAt
D=A
@R13
M=D
@return160
D=A
@CALL
0;JMP
(return160)
@1
D=A
@R14
M=D
@Output.printChar
D=A
@R13
M=D
@return161
D=A
@CALL
0;JMP
(return161)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Output.printString$while2
0;JMP
(Output.printString$whileend2)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Output.printInt)
@0
D=A
(Output.printInt_LOOP)
@Output.printInt_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Output.printInt_LOOP
0;JMP
(Output.printInt_END)

@Output.2   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.setInt
D=A
@R13
M=D
@return162
D=A
@CALL
0;JMP
(return162)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@Output.2   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Output.printString
D=A
@R13
M=D
@return163
D=A
@CALL
0;JMP
(return163)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Output.println)
@0
D=A
(Output.println_LOOP)
@Output.println_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Output.println_LOOP
0;JMP
(Output.println_END)

@Output.1   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop static
AM=M-1
D=M
@Output.1
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@Output.0
M=D
@Output.1   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@29  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq26
D;JEQ
@SP
A=M-1
M=0
(eq26)
@SP
AM=M-1
D=M
@Output.println$if1
D;JNE
@Output.println$ifelse1
0;JMP
(Output.println$if1)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@Output.1
M=D
(Output.println$ifelse1)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Output.backSpace)
@0
D=A
(Output.backSpace_LOOP)
@Output.backSpace_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Output.backSpace_LOOP
0;JMP
(Output.backSpace_END)

@Output.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt27
D;JGT
@SP
A=M-1
M=0
(gt27)
@SP
AM=M-1
D=M
@Output.backSpace$if1
D;JNE
@Output.backSpace$ifelse1
0;JMP
(Output.backSpace$if1)
@Output.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@SP  //pop static
AM=M-1
D=M
@Output.0
M=D
(Output.backSpace$ifelse1)
@32  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Output.drawChar
D=A
@R13
M=D
@return164
D=A
@CALL
0;JMP
(return164)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Memory.init)
@0
D=A
(Memory.init_LOOP)
@Memory.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Memory.init_LOOP
0;JMP
(Memory.init_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@Memory.0
M=D
@1024  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Memory.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@2816  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@1025  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Memory.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@1026  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Memory.peek)
@0
D=A
(Memory.peek_LOOP)
@Memory.peek_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Memory.peek_LOOP
0;JMP
(Memory.peek_END)

@Memory.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Memory.poke)
@0
D=A
(Memory.poke_LOOP)
@Memory.poke_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Memory.poke_LOOP
0;JMP
(Memory.poke_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Memory.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Memory.alloc)
@1
D=A
(Memory.alloc_LOOP)
@Memory.alloc_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Memory.alloc_LOOP
0;JMP
(Memory.alloc_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt28
D;JLT
@SP
A=M-1
M=0
(lt28)
@SP
AM=M-1
D=M
@Memory.alloc$if1
D;JNE
@Memory.alloc$ifelse1
0;JMP
(Memory.alloc$if1)
@5  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return165
D=A
@CALL
0;JMP
(return165)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(Memory.alloc$ifelse1)
@1024  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Memory.alloc$while7)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt29
D;JLT
@SP
A=M-1
M=0
(lt29)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Memory.alloc$whileend7
D;JNE
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Memory.alloc$while7
0;JMP
(Memory.alloc$whileend7)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@3836  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt30
D;JGT
@SP
A=M-1
M=0
(gt30)
@SP
AM=M-1
D=M
@Memory.alloc$if10
D;JNE
@Memory.alloc$ifelse10
0;JMP
(Memory.alloc$if10)
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return166
D=A
@CALL
0;JMP
(return166)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(Memory.alloc$ifelse10)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt31
D;JGT
@SP
A=M-1
M=0
(gt31)
@SP
AM=M-1
D=M
@Memory.alloc$if15
D;JNE
@Memory.alloc$ifelse15
0;JMP
(Memory.alloc$if15)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq32
D;JEQ
@SP
A=M-1
M=0
(eq32)
@SP
AM=M-1
D=M
@Memory.alloc$if16
D;JNE
@Memory.alloc$ifelse16
0;JMP
(Memory.alloc$if16)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@4  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Memory.alloc$ifend16
0;JMP
(Memory.alloc$ifelse16)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Memory.alloc$ifend16)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Memory.alloc$ifelse15)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@RETURN
0;JMP

(Memory.deAlloc)
@2
D=A
(Memory.deAlloc_LOOP)
@Memory.deAlloc_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Memory.deAlloc_LOOP
0;JMP
(Memory.deAlloc_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq33
D;JEQ
@SP
A=M-1
M=0
(eq33)
@SP
AM=M-1
D=M
@Memory.deAlloc$if1
D;JNE
@Memory.deAlloc$ifelse1
0;JMP
(Memory.deAlloc$if1)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Memory.deAlloc$ifend1
0;JMP
(Memory.deAlloc$ifelse1)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq34
D;JEQ
@SP
A=M-1
M=0
(eq34)
@SP
AM=M-1
D=M
@Memory.deAlloc$if4
D;JNE
@Memory.deAlloc$ifelse4
0;JMP
(Memory.deAlloc$if4)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Memory.deAlloc$ifend4
0;JMP
(Memory.deAlloc$ifelse4)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Memory.deAlloc$ifend4)
(Memory.deAlloc$ifend1)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Sys.init)
@0
D=A
(Sys.init_LOOP)
@Sys.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Sys.init_LOOP
0;JMP
(Sys.init_END)

@0
D=A
@R14
M=D
@GPIO.init
D=A
@R13
M=D
@return167
D=A
@CALL
0;JMP
(return167)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Memory.init
D=A
@R13
M=D
@return168
D=A
@CALL
0;JMP
(return168)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Array.init
D=A
@R13
M=D
@return169
D=A
@CALL
0;JMP
(return169)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Math.init
D=A
@R13
M=D
@return170
D=A
@CALL
0;JMP
(return170)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@UART.init
D=A
@R13
M=D
@return171
D=A
@CALL
0;JMP
(return171)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Screen.init
D=A
@R13
M=D
@return172
D=A
@CALL
0;JMP
(return172)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Output.init
D=A
@R13
M=D
@return173
D=A
@CALL
0;JMP
(return173)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Main.main
D=A
@R13
M=D
@return174
D=A
@CALL
0;JMP
(return174)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Sys.halt
D=A
@R13
M=D
@return175
D=A
@CALL
0;JMP
(return175)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Sys.halt)
@0
D=A
(Sys.halt_LOOP)
@Sys.halt_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Sys.halt_LOOP
0;JMP
(Sys.halt_END)

@0
D=A
@R14
M=D
@GPIO.getLed
D=A
@R13
M=D
@return176
D=A
@CALL
0;JMP
(return176)
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@1
D=A
@R14
M=D
@GPIO.setLed
D=A
@R13
M=D
@return177
D=A
@CALL
0;JMP
(return177)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(Sys.halt$while4)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Sys.halt$whileend4
D;JNE
@Sys.halt$while4
0;JMP
(Sys.halt$whileend4)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Sys.wait)
@1
D=A
(Sys.wait_LOOP)
@Sys.wait_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Sys.wait_LOOP
0;JMP
(Sys.wait_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt35
D;JLT
@SP
A=M-1
M=0
(lt35)
@SP
AM=M-1
D=M
@Sys.wait$if1
D;JNE
@Sys.wait$ifelse1
0;JMP
(Sys.wait$if1)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return178
D=A
@CALL
0;JMP
(return178)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(Sys.wait$ifelse1)
(Sys.wait$while7)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt36
D;JGT
@SP
A=M-1
M=0
(gt36)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Sys.wait$whileend7
D;JNE
@500  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Sys.wait$while9)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt37
D;JGT
@SP
A=M-1
M=0
(gt37)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Sys.wait$whileend9
D;JNE
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Sys.wait$while9
0;JMP
(Sys.wait$whileend9)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@ARG //pop argument
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Sys.wait$while7
0;JMP
(Sys.wait$whileend7)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Sys.error)
@0
D=A
(Sys.error_LOOP)
@Sys.error_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Sys.error_LOOP
0;JMP
(Sys.error_END)

@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@GPIO.setLed
D=A
@R13
M=D
@return179
D=A
@CALL
0;JMP
(return179)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.new
D=A
@R13
M=D
@return180
D=A
@CALL
0;JMP
(return180)
@69  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return181
D=A
@CALL
0;JMP
(return181)
@82  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return182
D=A
@CALL
0;JMP
(return182)
@82  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return183
D=A
@CALL
0;JMP
(return183)
@1
D=A
@R14
M=D
@UART.printString
D=A
@R13
M=D
@return184
D=A
@CALL
0;JMP
(return184)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@UART.printInt
D=A
@R13
M=D
@return185
D=A
@CALL
0;JMP
(return185)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Sys.halt
D=A
@R13
M=D
@return186
D=A
@CALL
0;JMP
(return186)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Array.init)
@0
D=A
(Array.init_LOOP)
@Array.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Array.init_LOOP
0;JMP
(Array.init_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Array.new)
@0
D=A
(Array.new_LOOP)
@Array.new_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Array.new_LOOP
0;JMP
(Array.new_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt38
D;JGT
@SP
A=M-1
M=0
(gt38)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Array.new$if1
D;JNE
@Array.new$ifelse1
0;JMP
(Array.new$if1)
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return187
D=A
@CALL
0;JMP
(return187)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(Array.new$ifelse1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Memory.alloc
D=A
@R13
M=D
@return188
D=A
@CALL
0;JMP
(return188)
@RETURN
0;JMP

(Array.dispose)
@0
D=A
(Array.dispose_LOOP)
@Array.dispose_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Array.dispose_LOOP
0;JMP
(Array.dispose_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@R3 //push pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Memory.deAlloc
D=A
@R13
M=D
@return189
D=A
@CALL
0;JMP
(return189)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.init)
@0
D=A
(String.init_LOOP)
@String.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.init_LOOP
0;JMP
(String.init_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.new)
@0
D=A
(String.new_LOOP)
@String.new_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.new_LOOP
0;JMP
(String.new_END)

@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Memory.alloc
D=A
@R13
M=D
@return190
D=A
@CALL
0;JMP
(return190)
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt39
D;JLT
@SP
A=M-1
M=0
(lt39)
@SP
AM=M-1
D=M
@String.new$if1
D;JNE
@String.new$ifelse1
0;JMP
(String.new$if1)
@14  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return191
D=A
@CALL
0;JMP
(return191)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.new$ifelse1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt40
D;JGT
@SP
A=M-1
M=0
(gt40)
@SP
AM=M-1
D=M
@String.new$if6
D;JNE
@String.new$ifelse6
0;JMP
(String.new$if6)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Array.new
D=A
@R13
M=D
@return192
D=A
@CALL
0;JMP
(return192)
@THIS    //pop this
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.new$ifelse6)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //pop this
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@THIS    //pop this
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@R3 //push pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.dispose)
@0
D=A
(String.dispose_LOOP)
@String.dispose_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.dispose_LOOP
0;JMP
(String.dispose_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@THIS    //push this
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt41
D;JGT
@SP
A=M-1
M=0
(gt41)
@SP
AM=M-1
D=M
@String.dispose$if1
D;JNE
@String.dispose$ifelse1
0;JMP
(String.dispose$if1)
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Array.dispose
D=A
@R13
M=D
@return193
D=A
@CALL
0;JMP
(return193)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.dispose$ifelse1)
@R3 //push pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Memory.deAlloc
D=A
@R13
M=D
@return194
D=A
@CALL
0;JMP
(return194)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.length)
@0
D=A
(String.length_LOOP)
@String.length_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.length_LOOP
0;JMP
(String.length_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.charAt)
@0
D=A
(String.charAt_LOOP)
@String.charAt_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.charAt_LOOP
0;JMP
(String.charAt_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt42
D;JLT
@SP
A=M-1
M=0
(lt42)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt43
D;JGT
@SP
A=M-1
M=0
(gt43)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq44
D;JEQ
@SP
A=M-1
M=0
(eq44)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@SP
AM=M-1
D=M
@String.charAt$if1
D;JNE
@String.charAt$ifelse1
0;JMP
(String.charAt$if1)
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return195
D=A
@CALL
0;JMP
(return195)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.charAt$ifelse1)
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.setCharAt)
@0
D=A
(String.setCharAt_LOOP)
@String.setCharAt_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.setCharAt_LOOP
0;JMP
(String.setCharAt_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt45
D;JLT
@SP
A=M-1
M=0
(lt45)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt46
D;JGT
@SP
A=M-1
M=0
(gt46)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq47
D;JEQ
@SP
A=M-1
M=0
(eq47)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@SP
AM=M-1
D=M
@String.setCharAt$if1
D;JNE
@String.setCharAt$ifelse1
0;JMP
(String.setCharAt$if1)
@16  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return196
D=A
@CALL
0;JMP
(return196)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.setCharAt$ifelse1)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.appendChar)
@0
D=A
(String.appendChar_LOOP)
@String.appendChar_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.appendChar_LOOP
0;JMP
(String.appendChar_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq48
D;JEQ
@SP
A=M-1
M=0
(eq48)
@SP
AM=M-1
D=M
@String.appendChar$if1
D;JNE
@String.appendChar$ifelse1
0;JMP
(String.appendChar$if1)
@17  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return197
D=A
@CALL
0;JMP
(return197)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.appendChar$ifelse1)
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@THIS    //pop this
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@R3 //push pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.eraseLastChar)
@0
D=A
(String.eraseLastChar_LOOP)
@String.eraseLastChar_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.eraseLastChar_LOOP
0;JMP
(String.eraseLastChar_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq49
D;JEQ
@SP
A=M-1
M=0
(eq49)
@SP
AM=M-1
D=M
@String.eraseLastChar$if1
D;JNE
@String.eraseLastChar$ifelse1
0;JMP
(String.eraseLastChar$if1)
@18  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return198
D=A
@CALL
0;JMP
(return198)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.eraseLastChar$ifelse1)
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@THIS    //pop this
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.intValue)
@5
D=A
(String.intValue_LOOP)
@String.intValue_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.intValue_LOOP
0;JMP
(String.intValue_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq50
D;JEQ
@SP
A=M-1
M=0
(eq50)
@SP
AM=M-1
D=M
@String.intValue$if1
D;JNE
@String.intValue$ifelse1
0;JMP
(String.intValue$if1)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.intValue$ifelse1)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@LCL //pop local
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@45  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq51
D;JEQ
@SP
A=M-1
M=0
(eq51)
@SP
AM=M-1
D=M
@String.intValue$if4
D;JNE
@String.intValue$ifelse4
0;JMP
(String.intValue$if4)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@LCL //pop local
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.intValue$ifelse4)
(String.intValue$while8)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt52
D;JLT
@SP
A=M-1
M=0
(lt52)
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //and
AM=M-1
D=M
A=A-1
M=D&M
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@String.intValue$whileend8
D;JNE
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@LCL //pop local
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt53
D;JLT
@SP
A=M-1
M=0
(lt53)
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@9  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt54
D;JGT
@SP
A=M-1
M=0
(gt54)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@SP  //not
A=M-1
M=!M
@LCL //pop local
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
@String.intValue$if9
D;JNE
@String.intValue$ifelse9
0;JMP
(String.intValue$if9)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@10  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Math.multiply
D=A
@R13
M=D
@return199
D=A
@CALL
0;JMP
(return199)
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.intValue$ifelse9)
@String.intValue$while8
0;JMP
(String.intValue$whileend8)
@LCL //push local
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
@String.intValue$if14
D;JNE
@String.intValue$ifelse14
0;JMP
(String.intValue$if14)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.intValue$ifelse14)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.setInt)
@4
D=A
(String.setInt_LOOP)
@String.setInt_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.setInt_LOOP
0;JMP
(String.setInt_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@THIS    //push this
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq55
D;JEQ
@SP
A=M-1
M=0
(eq55)
@SP
AM=M-1
D=M
@String.setInt$if1
D;JNE
@String.setInt$ifelse1
0;JMP
(String.setInt$if1)
@19  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return200
D=A
@CALL
0;JMP
(return200)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.setInt$ifelse1)
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Array.new
D=A
@R13
M=D
@return201
D=A
@CALL
0;JMP
(return201)
@LCL //pop local
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt56
D;JLT
@SP
A=M-1
M=0
(lt56)
@SP
AM=M-1
D=M
@String.setInt$if6
D;JNE
@String.setInt$ifelse6
0;JMP
(String.setInt$if6)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@LCL //pop local
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@ARG //pop argument
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.setInt$ifelse6)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.setInt$while10)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt57
D;JGT
@SP
A=M-1
M=0
(gt57)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@String.setInt$whileend10
D;JNE
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@10  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Math.divide
D=A
@R13
M=D
@return202
D=A
@CALL
0;JMP
(return202)
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@10  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Math.multiply
D=A
@R13
M=D
@return203
D=A
@CALL
0;JMP
(return203)
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //pop argument
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@String.setInt$while10
0;JMP
(String.setInt$whileend10)
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
@String.setInt$if13
D;JNE
@String.setInt$ifelse13
0;JMP
(String.setInt$if13)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@45  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.setInt$ifelse13)
@THIS    //push this
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt58
D;JLT
@SP
A=M-1
M=0
(lt58)
@SP
AM=M-1
D=M
@String.setInt$if16
D;JNE
@String.setInt$ifelse16
0;JMP
(String.setInt$if16)
@19  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return204
D=A
@CALL
0;JMP
(return204)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.setInt$ifelse16)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq59
D;JEQ
@SP
A=M-1
M=0
(eq59)
@SP
AM=M-1
D=M
@String.setInt$if21
D;JNE
@String.setInt$ifelse21
0;JMP
(String.setInt$if21)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@THIS    //pop this
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@String.setInt$ifend21
0;JMP
(String.setInt$ifelse21)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@THIS    //pop this
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.setInt$while25)
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt60
D;JLT
@SP
A=M-1
M=0
(lt60)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@String.setInt$whileend25
D;JNE
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@THIS    //pop this
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@String.setInt$while25
0;JMP
(String.setInt$whileend25)
(String.setInt$ifend21)
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Array.dispose
D=A
@R13
M=D
@return205
D=A
@CALL
0;JMP
(return205)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.newLine)
@0
D=A
(String.newLine_LOOP)
@String.newLine_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.newLine_LOOP
0;JMP
(String.newLine_END)

@128  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.backSpace)
@0
D=A
(String.backSpace_LOOP)
@String.backSpace_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.backSpace_LOOP
0;JMP
(String.backSpace_END)

@129  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.doubleQuote)
@0
D=A
(String.doubleQuote_LOOP)
@String.doubleQuote_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.doubleQuote_LOOP
0;JMP
(String.doubleQuote_END)

@34  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Main.main)
@1
D=A
(Main.main_LOOP)
@Main.main_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Main.main_LOOP
0;JMP
(Main.main_END)

@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.new
D=A
@R13
M=D
@return206
D=A
@CALL
0;JMP
(return206)
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@R14
M=D
@String.doubleQuote
D=A
@R13
M=D
@return207
D=A
@CALL
0;JMP
(return207)
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return208
D=A
@CALL
0;JMP
(return208)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@29  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Output.moveCursor
D=A
@R13
M=D
@return209
D=A
@CALL
0;JMP
(return209)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@66  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Output.printChar
D=A
@R13
M=D
@return210
D=A
@CALL
0;JMP
(return210)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@28  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Output.moveCursor
D=A
@R13
M=D
@return211
D=A
@CALL
0;JMP
(return211)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@67  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Output.printChar
D=A
@R13
M=D
@return212
D=A
@CALL
0;JMP
(return212)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@28  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@29  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Output.moveCursor
D=A
@R13
M=D
@return213
D=A
@CALL
0;JMP
(return213)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@68  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Output.printChar
D=A
@R13
M=D
@return214
D=A
@CALL
0;JMP
(return214)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@65  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Output.printChar
D=A
@R13
M=D
@return215
D=A
@CALL
0;JMP
(return215)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Output.moveCursor
D=A
@R13
M=D
@return216
D=A
@CALL
0;JMP
(return216)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@10  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.new
D=A
@R13
M=D
@return217
D=A
@CALL
0;JMP
(return217)
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return218
D=A
@CALL
0;JMP
(return218)
@49  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return219
D=A
@CALL
0;JMP
(return219)
@50  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return220
D=A
@CALL
0;JMP
(return220)
@51  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return221
D=A
@CALL
0;JMP
(return221)
@52  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return222
D=A
@CALL
0;JMP
(return222)
@53  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return223
D=A
@CALL
0;JMP
(return223)
@54  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return224
D=A
@CALL
0;JMP
(return224)
@55  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return225
D=A
@CALL
0;JMP
(return225)
@56  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return226
D=A
@CALL
0;JMP
(return226)
@57  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return227
D=A
@CALL
0;JMP
(return227)
@1
D=A
@R14
M=D
@Output.printString
D=A
@R13
M=D
@return228
D=A
@CALL
0;JMP
(return228)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Output.println
D=A
@R13
M=D
@return229
D=A
@CALL
0;JMP
(return229)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@53  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.new
D=A
@R13
M=D
@return230
D=A
@CALL
0;JMP
(return230)
@65  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return231
D=A
@CALL
0;JMP
(return231)
@66  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return232
D=A
@CALL
0;JMP
(return232)
@67  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return233
D=A
@CALL
0;JMP
(return233)
@68  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return234
D=A
@CALL
0;JMP
(return234)
@69  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return235
D=A
@CALL
0;JMP
(return235)
@70  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return236
D=A
@CALL
0;JMP
(return236)
@71  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return237
D=A
@CALL
0;JMP
(return237)
@72  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return238
D=A
@CALL
0;JMP
(return238)
@73  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return239
D=A
@CALL
0;JMP
(return239)
@74  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return240
D=A
@CALL
0;JMP
(return240)
@75  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return241
D=A
@CALL
0;JMP
(return241)
@76  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return242
D=A
@CALL
0;JMP
(return242)
@77  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return243
D=A
@CALL
0;JMP
(return243)
@78  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return244
D=A
@CALL
0;JMP
(return244)
@79  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return245
D=A
@CALL
0;JMP
(return245)
@80  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return246
D=A
@CALL
0;JMP
(return246)
@81  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return247
D=A
@CALL
0;JMP
(return247)
@82  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return248
D=A
@CALL
0;JMP
(return248)
@83  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return249
D=A
@CALL
0;JMP
(return249)
@84  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return250
D=A
@CALL
0;JMP
(return250)
@85  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return251
D=A
@CALL
0;JMP
(return251)
@86  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return252
D=A
@CALL
0;JMP
(return252)
@87  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return253
D=A
@CALL
0;JMP
(return253)
@88  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return254
D=A
@CALL
0;JMP
(return254)
@89  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return255
D=A
@CALL
0;JMP
(return255)
@90  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return256
D=A
@CALL
0;JMP
(return256)
@32  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return257
D=A
@CALL
0;JMP
(return257)
@97  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return258
D=A
@CALL
0;JMP
(return258)
@98  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return259
D=A
@CALL
0;JMP
(return259)
@99  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return260
D=A
@CALL
0;JMP
(return260)
@100  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return261
D=A
@CALL
0;JMP
(return261)
@101  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return262
D=A
@CALL
0;JMP
(return262)
@102  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return263
D=A
@CALL
0;JMP
(return263)
@103  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return264
D=A
@CALL
0;JMP
(return264)
@104  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return265
D=A
@CALL
0;JMP
(return265)
@105  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return266
D=A
@CALL
0;JMP
(return266)
@106  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return267
D=A
@CALL
0;JMP
(return267)
@107  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return268
D=A
@CALL
0;JMP
(return268)
@108  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return269
D=A
@CALL
0;JMP
(return269)
@109  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return270
D=A
@CALL
0;JMP
(return270)
@110  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return271
D=A
@CALL
0;JMP
(return271)
@111  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return272
D=A
@CALL
0;JMP
(return272)
@112  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return273
D=A
@CALL
0;JMP
(return273)
@113  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return274
D=A
@CALL
0;JMP
(return274)
@114  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return275
D=A
@CALL
0;JMP
(return275)
@115  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return276
D=A
@CALL
0;JMP
(return276)
@116  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return277
D=A
@CALL
0;JMP
(return277)
@117  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return278
D=A
@CALL
0;JMP
(return278)
@118  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return279
D=A
@CALL
0;JMP
(return279)
@119  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return280
D=A
@CALL
0;JMP
(return280)
@120  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return281
D=A
@CALL
0;JMP
(return281)
@121  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return282
D=A
@CALL
0;JMP
(return282)
@122  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return283
D=A
@CALL
0;JMP
(return283)
@1
D=A
@R14
M=D
@Output.printString
D=A
@R13
M=D
@return284
D=A
@CALL
0;JMP
(return284)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Output.println
D=A
@R13
M=D
@return285
D=A
@CALL
0;JMP
(return285)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@31  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.new
D=A
@R13
M=D
@return286
D=A
@CALL
0;JMP
(return286)
@33  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return287
D=A
@CALL
0;JMP
(return287)
@35  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return288
D=A
@CALL
0;JMP
(return288)
@36  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return289
D=A
@CALL
0;JMP
(return289)
@37  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return290
D=A
@CALL
0;JMP
(return290)
@38  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return291
D=A
@CALL
0;JMP
(return291)
@39  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return292
D=A
@CALL
0;JMP
(return292)
@40  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return293
D=A
@CALL
0;JMP
(return293)
@41  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return294
D=A
@CALL
0;JMP
(return294)
@42  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return295
D=A
@CALL
0;JMP
(return295)
@43  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return296
D=A
@CALL
0;JMP
(return296)
@44  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return297
D=A
@CALL
0;JMP
(return297)
@45  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return298
D=A
@CALL
0;JMP
(return298)
@46  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return299
D=A
@CALL
0;JMP
(return299)
@47  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return300
D=A
@CALL
0;JMP
(return300)
@58  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return301
D=A
@CALL
0;JMP
(return301)
@59  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return302
D=A
@CALL
0;JMP
(return302)
@60  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return303
D=A
@CALL
0;JMP
(return303)
@61  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return304
D=A
@CALL
0;JMP
(return304)
@62  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return305
D=A
@CALL
0;JMP
(return305)
@63  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return306
D=A
@CALL
0;JMP
(return306)
@64  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return307
D=A
@CALL
0;JMP
(return307)
@91  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return308
D=A
@CALL
0;JMP
(return308)
@92  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return309
D=A
@CALL
0;JMP
(return309)
@93  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return310
D=A
@CALL
0;JMP
(return310)
@94  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return311
D=A
@CALL
0;JMP
(return311)
@95  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return312
D=A
@CALL
0;JMP
(return312)
@96  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return313
D=A
@CALL
0;JMP
(return313)
@123  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return314
D=A
@CALL
0;JMP
(return314)
@124  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return315
D=A
@CALL
0;JMP
(return315)
@125  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return316
D=A
@CALL
0;JMP
(return316)
@126  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return317
D=A
@CALL
0;JMP
(return317)
@1
D=A
@R14
M=D
@Output.printString
D=A
@R13
M=D
@return318
D=A
@CALL
0;JMP
(return318)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Output.printString
D=A
@R13
M=D
@return319
D=A
@CALL
0;JMP
(return319)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Output.println
D=A
@R13
M=D
@return320
D=A
@CALL
0;JMP
(return320)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@12345  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@1
D=A
@R14
M=D
@Output.printInt
D=A
@R13
M=D
@return321
D=A
@CALL
0;JMP
(return321)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Output.backSpace
D=A
@R13
M=D
@return322
D=A
@CALL
0;JMP
(return322)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@6789  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Output.printInt
D=A
@R13
M=D
@return323
D=A
@CALL
0;JMP
(return323)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.init)
@0
D=A
(UART.init_LOOP)
@UART.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.init_LOOP
0;JMP
(UART.init_END)

@8194  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@UART.0
M=D
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.new
D=A
@R13
M=D
@return324
D=A
@CALL
0;JMP
(return324)
@SP  //pop static
AM=M-1
D=M
@UART.1
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.readChar)
@1
D=A
(UART.readChar_LOOP)
@UART.readChar_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.readChar_LOOP
0;JMP
(UART.readChar_END)

@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(UART.readChar$while2)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt61
D;JLT
@SP
A=M-1
M=0
(lt61)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@UART.readChar$whileend2
D;JNE
@UART.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@UART.readChar$while2
0;JMP
(UART.readChar$whileend2)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@UART.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.writeChar)
@1
D=A
(UART.writeChar_LOOP)
@UART.writeChar_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.writeChar_LOOP
0;JMP
(UART.writeChar_END)

@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(UART.writeChar$while2)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@UART.writeChar$whileend2
D;JNE
@UART.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@UART.writeChar$while2
0;JMP
(UART.writeChar$whileend2)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@UART.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.printString)
@1
D=A
(UART.printString_LOOP)
@UART.printString_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.printString_LOOP
0;JMP
(UART.printString_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(UART.printString$while2)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.length
D=A
@R13
M=D
@return325
D=A
@CALL
0;JMP
(return325)
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt62
D;JLT
@SP
A=M-1
M=0
(lt62)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@UART.printString$whileend2
D;JNE
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.charAt
D=A
@R13
M=D
@return326
D=A
@CALL
0;JMP
(return326)
@1
D=A
@R14
M=D
@UART.writeChar
D=A
@R13
M=D
@return327
D=A
@CALL
0;JMP
(return327)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@UART.printString$while2
0;JMP
(UART.printString$whileend2)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.printInt)
@0
D=A
(UART.printInt_LOOP)
@UART.printInt_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.printInt_LOOP
0;JMP
(UART.printInt_END)

@UART.1   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.setInt
D=A
@R13
M=D
@return328
D=A
@CALL
0;JMP
(return328)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@UART.1   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@UART.printString
D=A
@R13
M=D
@return329
D=A
@CALL
0;JMP
(return329)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.println)
@0
D=A
(UART.println_LOOP)
@UART.println_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.println_LOOP
0;JMP
(UART.println_END)

@13  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@UART.writeChar
D=A
@R13
M=D
@return330
D=A
@CALL
0;JMP
(return330)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@10  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@UART.writeChar
D=A
@R13
M=D
@return331
D=A
@CALL
0;JMP
(return331)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.readInt)
@2
D=A
(UART.readInt_LOOP)
@UART.readInt_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.readInt_LOOP
0;JMP
(UART.readInt_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@UART.readLine
D=A
@R13
M=D
@return332
D=A
@CALL
0;JMP
(return332)
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.intValue
D=A
@R13
M=D
@return333
D=A
@CALL
0;JMP
(return333)
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.dispose
D=A
@R13
M=D
@return334
D=A
@CALL
0;JMP
(return334)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.readLine)
@5
D=A
(UART.readLine_LOOP)
@UART.readLine_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.readLine_LOOP
0;JMP
(UART.readLine_END)

@80  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.new
D=A
@R13
M=D
@return335
D=A
@CALL
0;JMP
(return335)
@LCL //pop local
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@UART.printString
D=A
@R13
M=D
@return336
D=A
@CALL
0;JMP
(return336)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@UART.readChar
D=A
@R13
M=D
@return337
D=A
@CALL
0;JMP
(return337)
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(UART.readLine$while4)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@13  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq63
D;JEQ
@SP
A=M-1
M=0
(eq63)
@SP  //not
A=M-1
M=!M
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@UART.readLine$whileend4
D;JNE
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@UART.writeChar
D=A
@R13
M=D
@return338
D=A
@CALL
0;JMP
(return338)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@127  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq64
D;JEQ
@SP
A=M-1
M=0
(eq64)
@SP
AM=M-1
D=M
@UART.readLine$if7
D;JNE
@UART.readLine$ifelse7
0;JMP
(UART.readLine$if7)
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.eraseLastChar
D=A
@R13
M=D
@return339
D=A
@CALL
0;JMP
(return339)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@UART.readLine$ifend7
0;JMP
(UART.readLine$ifelse7)
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return340
D=A
@CALL
0;JMP
(return340)
@LCL //pop local
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(UART.readLine$ifend7)
@0
D=A
@R14
M=D
@UART.readChar
D=A
@R13
M=D
@return341
D=A
@CALL
0;JMP
(return341)
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@UART.readLine$while4
0;JMP
(UART.readLine$whileend4)
@0
D=A
@R14
M=D
@UART.println
D=A
@R13
M=D
@return342
D=A
@CALL
0;JMP
(return342)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(GPIO.init)
@0
D=A
(GPIO.init_LOOP)
@GPIO.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@GPIO.init_LOOP
0;JMP
(GPIO.init_END)

@8192  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@GPIO.0
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(GPIO.getBut)
@0
D=A
(GPIO.getBut_LOOP)
@GPIO.getBut_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@GPIO.getBut_LOOP
0;JMP
(GPIO.getBut_END)

@GPIO.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(GPIO.getLed)
@0
D=A
(GPIO.getLed_LOOP)
@GPIO.getLed_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@GPIO.getLed_LOOP
0;JMP
(GPIO.getLed_END)

@GPIO.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(GPIO.setLed)
@0
D=A
(GPIO.setLed_LOOP)
@GPIO.setLed_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@GPIO.setLed_LOOP
0;JMP
(GPIO.setLed_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@GPIO.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.init)
@2
D=A
(Math.init_LOOP)
@Math.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Math.init_LOOP
0;JMP
(Math.init_END)

@16  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Array.new
D=A
@R13
M=D
@return343
D=A
@CALL
0;JMP
(return343)
@SP  //pop static
AM=M-1
D=M
@Math.0
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Math.init$while2)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@16  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt65
D;JLT
@SP
A=M-1
M=0
(lt65)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Math.init$whileend2
D;JNE
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Math.init$while2
0;JMP
(Math.init$whileend2)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.abs)
@0
D=A
(Math.abs_LOOP)
@Math.abs_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Math.abs_LOOP
0;JMP
(Math.abs_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt66
D;JLT
@SP
A=M-1
M=0
(lt66)
@SP
AM=M-1
D=M
@Math.abs$if1
D;JNE
@Math.abs$ifelse1
0;JMP
(Math.abs$if1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Math.abs$ifelse1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.multiply)
@2
D=A
(Math.multiply_LOOP)
@Math.multiply_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Math.multiply_LOOP
0;JMP
(Math.multiply_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Math.multiply$while2)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@16  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt67
D;JLT
@SP
A=M-1
M=0
(lt67)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Math.multiply$whileend2
D;JNE
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //and
AM=M-1
D=M
A=A-1
M=D&M
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq68
D;JEQ
@SP
A=M-1
M=0
(eq68)
@SP
AM=M-1
D=M
@Math.multiply$if3
D;JNE
@Math.multiply$ifelse3
0;JMP
(Math.multiply$if3)
@Math.multiply$ifend3
0;JMP
(Math.multiply$ifelse3)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Math.multiply$ifend3)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //pop argument
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Math.multiply$while2
0;JMP
(Math.multiply$whileend2)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.divide)
@2
D=A
(Math.divide_LOOP)
@Math.divide_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Math.divide_LOOP
0;JMP
(Math.divide_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt69
D;JLT
@SP
A=M-1
M=0
(lt69)
@SP
AM=M-1
D=M
@Math.divide$if1
D;JNE
@Math.divide$ifelse1
0;JMP
(Math.divide$if1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Math.abs
D=A
@R13
M=D
@return344
D=A
@CALL
0;JMP
(return344)
@ARG //pop argument
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //not
A=M-1
M=!M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Math.divide$ifelse1)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt70
D;JLT
@SP
A=M-1
M=0
(lt70)
@SP
AM=M-1
D=M
@Math.divide$if4
D;JNE
@Math.divide$ifelse4
0;JMP
(Math.divide$if4)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Math.abs
D=A
@R13
M=D
@return345
D=A
@CALL
0;JMP
(return345)
@ARG //pop argument
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //not
A=M-1
M=!M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Math.divide$ifelse4)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt71
D;JLT
@SP
A=M-1
M=0
(lt71)
@SP
AM=M-1
D=M
@Math.divide$if7
D;JNE
@Math.divide$ifelse7
0;JMP
(Math.divide$if7)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.divide$ifelse7)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt72
D;JLT
@SP
A=M-1
M=0
(lt72)
@SP
AM=M-1
D=M
@Math.divide$if10
D;JNE
@Math.divide$ifelse10
0;JMP
(Math.divide$if10)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
@Math.divide$if11
D;JNE
@Math.divide$ifelse11
0;JMP
(Math.divide$if11)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Math.divide$ifelse11)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.divide$ifelse10)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@2
D=A
@R14
M=D
@Math.divide
D=A
@R13
M=D
@return346
D=A
@CALL
0;JMP
(return346)
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@2
D=A
@R14
M=D
@Math.multiply
D=A
@R13
M=D
@return347
D=A
@CALL
0;JMP
(return347)
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Math.divide
D=A
@R13
M=D
@return348
D=A
@CALL
0;JMP
(return348)
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
@Math.divide$if16
D;JNE
@Math.divide$ifelse16
0;JMP
(Math.divide$if16)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Math.divide$ifelse16)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.sqrt)
@3
D=A
(Math.sqrt_LOOP)
@Math.sqrt_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Math.sqrt_LOOP
0;JMP
(Math.sqrt_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt73
D;JLT
@SP
A=M-1
M=0
(lt73)
@SP
AM=M-1
D=M
@Math.sqrt$if1
D;JNE
@Math.sqrt$ifelse1
0;JMP
(Math.sqrt$if1)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.sqrt$ifelse1)
@7  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Math.sqrt$while5)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt74
D;JLT
@SP
A=M-1
M=0
(lt74)
@SP  //not
A=M-1
M=!M
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Math.sqrt$whileend5
D;JNE
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@2
D=A
@R14
M=D
@Math.multiply
D=A
@R13
M=D
@return349
D=A
@CALL
0;JMP
(return349)
@LCL //pop local
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt75
D;JLT
@SP
A=M-1
M=0
(lt75)
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt76
D;JGT
@SP
A=M-1
M=0
(gt76)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@SP
AM=M-1
D=M
@Math.sqrt$if6
D;JNE
@Math.sqrt$ifelse6
0;JMP
(Math.sqrt$if6)
@Math.sqrt$ifend6
0;JMP
(Math.sqrt$ifelse6)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Math.sqrt$ifend6)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Math.sqrt$while5
0;JMP
(Math.sqrt$whileend5)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.max)
@0
D=A
(Math.max_LOOP)
@Math.max_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Math.max_LOOP
0;JMP
(Math.max_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt77
D;JGT
@SP
A=M-1
M=0
(gt77)
@SP
AM=M-1
D=M
@Math.max$if1
D;JNE
@Math.max$ifelse1
0;JMP
(Math.max$if1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.max$ifelse1)
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.min)
@0
D=A
(Math.min_LOOP)
@Math.min_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Math.min_LOOP
0;JMP
(Math.min_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt78
D;JLT
@SP
A=M-1
M=0
(lt78)
@SP
AM=M-1
D=M
@Math.min$if1
D;JNE
@Math.min$ifelse1
0;JMP
(Math.min$if1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.min$ifelse1)
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

