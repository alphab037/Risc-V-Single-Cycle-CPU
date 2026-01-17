`timescale 1ns / 1ps
module adder_32bit(
    input [31:0] a, 
    input [31:0] b, 
    input cin, 
    output [31:0] sum,
    output N, 
    output Z,
    output C, 
    output V); 


likeadder iadder32(.a(a),.b(b),.cin(cin),.sum(sum),.N(N),.Z(Z),.C(C),.V(V));
endmodule
