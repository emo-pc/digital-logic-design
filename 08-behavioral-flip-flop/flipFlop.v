`timescale 1ns/1ns
module flipflop (
    input d,clk,
    output reg q
);
always @(posedge clk) begin
    q<=d;
end
    
endmodule