module rv32i_cpu(
input CLK,
input reset,
input [31:0] Mux4,
output reg [31:0] PC);

always @(posedge CLK, posedge reset)
begin
    if (reset) PC<=32'h0;
    else PC<=Mux4;
end
endmodule