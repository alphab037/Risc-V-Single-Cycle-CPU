`timescale 1ns / 1ps

module mux4to1(
input jal, memtoReg, jalr,
input [31:0] Aluoutput,Rdata,PCA,
output reg [31:0] result
    );
always@(*)
    if (jal | jalr)
         result = PCA;
     else if(memtoReg)
        result = Rdata;
     else
        result = Aluoutput;

endmodule
