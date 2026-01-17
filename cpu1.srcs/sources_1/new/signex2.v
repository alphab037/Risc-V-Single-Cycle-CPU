module signex2(
    input[19:0] imm,
    output[31:0] imm_ext
);
assign imm_ext= {{11{imm[19]}}, imm[19:0],0};
endmodule