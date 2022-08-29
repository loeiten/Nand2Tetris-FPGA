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
@Main.main
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
@0
D=A
@R14
M=D
@Sys.halt
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

(Sys.halt$while2)
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
@Sys.halt$whileend2
D;JNE
@Sys.halt$while2
0;JMP
(Sys.halt$whileend2)
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

(Sys.wait$while2)
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
@gt0
D;JGT
@SP
A=M-1
M=0
(gt0)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Sys.wait$whileend2
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
(Sys.wait$while4)
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
@gt1
D;JGT
@SP
A=M-1
M=0
(gt1)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Sys.wait$whileend4
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
@Sys.wait$while4
0;JMP
(Sys.wait$whileend4)
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
@Sys.wait$while2
0;JMP
(Sys.wait$whileend2)
@0  //push constant
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

@0
D=A
@R14
M=D
@Main.systemResetCommand
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
@2000  //push constant
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
@55  //push constant
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
@77  //push constant
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
@88  //push constant
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
@99  //push constant
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
@111  //push constant
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
@5  //push constant
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
@Main.writeBufferMemory
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
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Main.systemResetCommand)
@0
D=A
(Main.systemResetCommand_LOOP)
@Main.systemResetCommand_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Main.systemResetCommand_LOOP
0;JMP
(Main.systemResetCommand_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Main.0   //push static
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
@512  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@255  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
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
@Main.0   //push static
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
@256  //push constant
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

(Main.bitFieldClear)
@0
D=A
(Main.bitFieldClear_LOOP)
@Main.bitFieldClear_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Main.bitFieldClear_LOOP
0;JMP
(Main.bitFieldClear_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Main.0   //push static
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
@512  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@160  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
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
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
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
@Main.0   //push static
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
@512  //push constant
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
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
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
@Main.0   //push static
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
@256  //push constant
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

(Main.bitFieldSet)
@0
D=A
(Main.bitFieldSet_LOOP)
@Main.bitFieldSet_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Main.bitFieldSet_LOOP
0;JMP
(Main.bitFieldSet_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Main.0   //push static
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
@512  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@128  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
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
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
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
@Main.0   //push static
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
@512  //push constant
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
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
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
@Main.0   //push static
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
@256  //push constant
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

(Main.writeBufferMemory)
@1
D=A
(Main.writeBufferMemory_LOOP)
@Main.writeBufferMemory_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Main.writeBufferMemory_LOOP
0;JMP
(Main.writeBufferMemory_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Main.0   //push static
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
@512  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@122  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
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
(Main.writeBufferMemory$while2)
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
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Main.writeBufferMemory$whileend2
D;JNE
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Main.0   //push static
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
@512  //push constant
D=A
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
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
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
@Main.writeBufferMemory$while2
0;JMP
(Main.writeBufferMemory$whileend2)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Main.0   //push static
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
@256  //push constant
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

(Main.readBufferMemory)
@1
D=A
(Main.readBufferMemory_LOOP)
@Main.readBufferMemory_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Main.readBufferMemory_LOOP
0;JMP
(Main.readBufferMemory_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Main.0   //push static
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
@512  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@58  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
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
(Main.readBufferMemory$while2)
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
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt3
D;JLT
@SP
A=M-1
M=0
(lt3)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Main.readBufferMemory$whileend2
D;JNE
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Main.0   //push static
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
@512  //push constant
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
@Main.0   //push static
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
@Main.readBufferMemory$while2
0;JMP
(Main.readBufferMemory$whileend2)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Main.0   //push static
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
@256  //push constant
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

(Main.writeControlRegister)
@0
D=A
(Main.writeControlRegister_LOOP)
@Main.writeControlRegister_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Main.writeControlRegister_LOOP
0;JMP
(Main.writeControlRegister_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Main.0   //push static
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
@512  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@64  //push constant
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
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
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
@Main.0   //push static
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
@512  //push constant
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
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
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
@Main.0   //push static
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
@256  //push constant
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

(Main.readControlRegister)
@1
D=A
(Main.readControlRegister_LOOP)
@Main.readControlRegister_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Main.readControlRegister_LOOP
0;JMP
(Main.readControlRegister_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Main.0   //push static
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
@512  //push constant
D=A
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
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
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
@Main.0   //push static
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
@512  //push constant
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
@Main.0   //push static
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
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Main.0   //push static
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
@256  //push constant
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
@RETURN
0;JMP

