`timescale 1ns/1ns
module muxB (
    input wire i0,
    input wire i1,
    input wire sel,
    output reg out
);
    always @(*) begin
        if (sel==1'b0) begin
            out=i0;
        end
        else if (sel==1'b1) begin
            out=i1;
        end
    end
    
endmodule