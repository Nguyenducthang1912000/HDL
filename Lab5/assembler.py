import re
# Global val
PC = -1
LABEL_Num = 0
LINE_Num = -1
opcode = {"ADD": "00010", "SUB": "00011", "AND": "00100", "OR": "00101", "XOR": "00110", "SR": "01000", "SRA": "01001", "SL": "01010",
          "ADDI": "10010", "ANDI": "10100", "ORI": "10101", "XORI": "10110", "LW": "11100", "SW": "11101", "BEQ": "11110", "BNE": "11111"}
REG = {"R0": "000", "R1": "001", "R2": "010", "R3": "011",
       "R4": "100", "R5": "101", "R6": "110", "R7": "111"}


def DectoBinary5bit(DecNum):  # doi 1 so thanh 5 bit
    intDec = int(DecNum)
    x = bin(int(DecNum))
    t = x.split("b")
    if(intDec > 0):
        while (len(t[1]) < 5):
            t[1] = "0"+t[1]
    if(intDec < 0):
        while (len(t[1]) < 5):
            t[1] = "1"+t[1]
    return t[1]


def translate(Instruction):  # Nhan dien lenh
    DEL = re.sub(", ", ",", Instruction)
    x = DEL.split()
    if x[0] in opcode:
        all_val = x[1]
        Op = opcode[x[0]]
        if Op in ("00010", "00011", "00100", "00101", "00110", "01000", "01001", "01010"):  # lenh R type
            variable = all_val.split(",")
            DR = REG[variable[0]]
            SA = REG[variable[1]]
            SB = REG[variable[2]]
            return(Op+DR+SA+SB+"00")
        elif Op in ("10010", "10100", "10101", "10110"):  # lenh I type tru lw sw bne beq
            variable = all_val.split(",")
            if(variable[2].isdigit() == True):
                DR = REG[variable[0]]
                SA = REG[variable[1]]
                CONSTANT = DectoBinary5bit(variable[2])
                return(Op+DR+SA+CONSTANT)
        elif Op in ("11100", "11101"):  # lenh lw and sw
            variable = all_val.split(",")
            cut_string = re.sub(r"\)", "", variable[1])
            new_string = cut_string.split("(")
            DR = REG[variable[0]]
            SA = REG[new_string[1]]
            if(new_string[0] == "0"):
                CONSTANT = "00000"
            else:
                CONSTANT = DectoBinary5bit(new_string[0])
            return(Op+DR+SA+CONSTANT)
        elif Op in ("11110", "11111"):  # bne va bqe
            return 1
    else:
        return 0


def runcode(Instruction, LABEL_Num, LINE_Num):  # trinh bien dich tong
    if(translate(Instruction) != 1 and translate(Instruction) != 0):
        return(translate(Instruction))
    elif(translate(Instruction) == 1):
        DEL = re.sub(", ", ",", Instruction)
        x = DEL.split()
        if x[0] in opcode:
            all_val = x[1]
            Op = opcode[x[0]]
            variable = all_val.split(",")
            ADDR = LABEL_Num-LINE_Num
            DR = REG[variable[0]]
            SA = REG[variable[1]]
            CONSTANT = DectoBinary5bit(ADDR)
            return(Op+DR+SA+CONSTANT)


def main():
    global PC, LINE_Num
    with open("InstructionTestAssembler.asm", "r") as rf:  # Quet lay dia chi cua LABEL
        for line in rf:
            if(translate(line) != 0):
                PC += 1
            elif(translate(line) == 0):
                LABEL_Num = PC+1

    with open("InstructionTestAssembler.asm", "r") as rf:  # In vao thu muc binary.txt
        with open("binary.txt", "w") as wf:
            for code in rf:
                if(translate(code) != 0):
                    LINE_Num += 1
                    wf.write(str(runcode(code, LABEL_Num, LINE_Num))+"\n")


if __name__ == '__main__':
    main()
