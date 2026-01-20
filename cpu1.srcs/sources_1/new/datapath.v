module datapath(
    input clk,
    input reset,
    output wire[31:0] rData, PC,instruction, rs1_data, rs2_data, imm_ext,ALU_output,
    output RegWrite, memtoReg, memWrite, ALUsrc,beq,bne,blt,bge,bltu,bgeu,jal,jalr,btaken,N,Z,C,V,
    output [4:0] ALUcontrol,
    output [31:0] x1, x2,x3, Mux1, Mux2, Mux3
);

rv32i_cpu uut1(.CLK(clk),.reset(reset),.Mux4(Mux3),.PC(PC));
memoryI uut2(.Addr(PC), .rData(instruction));

memoryd uut3(.Addr(ALU_output),.memwrite(memWrite),.funct3(instruction[14:12]),.clk(clk),.wData(rs2_data),.rData(rData));
regfile uut4(.clk(clk),.we(RegWrite), .rs1(instruction[19:15]), .rs2(instruction[24:20]), .rd(instruction[11:7]), .rd_data(Mux2), .rs1_data(rs1_data), .rs2_data(rs2_data), .x1(x1), .x2(x2), .x3(x3));
alu uut6(.a(rs1_data),.b(Mux1),.alucont(ALUcontrol),.result(ALU_output),.N(N),.Z(Z),.C(C),.V(V));

mux2to1 uut7(.a(rs2_data),.b(imm_ext),.s1(ALUsrc),.o(Mux1));
mux4to1 uut8(.jal(jal),.memtoReg(memtoReg),.jalr(jalr),.Aluoutput(ALU_output),.Rdata(rData),.PCA(PC+4),.result(Mux2));
mux3to1 uut9(.a(btaken),.b(jal),.c(jalr),.x1(imm_ext+PC),.x2(imm_ext+rs1_data),.x3(PC+4),.r(Mux3));

maindec uut5(.opcode(instruction[6:0]),.funct3(instruction[14:12]), .RegWrite(RegWrite),.memWrite(memWrite),.memtoReg(memtoReg),.ALUsrc(ALUsrc),.beq(beq),.bne(bne),.blt(blt),.bge(bge),.bltu(bltu),.bgeu(bgeu),.jal(jal),.jalr(jalr));
aludec uut9(.opcode(instruction[6:0]),.funct7(instruction[31:25]),.funct3(instruction[14:12]),.ALUcontrol(ALUcontrol));
branchdec v1(.beq(beq),.bne(bne),.blt(blt),.bge(bge),.bltu(bltu),.bgeu(bgeu),.N(N),.C(C),.Z(Z),.V(V),.btaken(btaken));

signex uut10(.instr(instruction),.PC(PC),.imm_ext(imm_ext));



endmodule
