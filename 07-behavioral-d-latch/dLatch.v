`timescale 1ns/1ns
module dLatch (
    input d,clk,
    output reg q,qPrime
);
always @(d or clk) begin
    if (clk==1) begin
        q<=d;
        qPrime<=~d;
    end
end
    
endmodule