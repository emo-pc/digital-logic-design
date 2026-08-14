`timescale 1ns/1ns
module muxG (
    input wire i0,
    input wire i1,
    input wire sel,
    output reg out
);
    wire n_sel;
    not(n_sel,sel);
    wire n_sel_and_i0;
    and(n_sel_and_i0,n_sel,i0);
    wire sel_and_i1;
    and(sel_and_i1,sel,i1);

    always @(*) begin
        out=sel_and_i1|n_sel_and_i0;
    end
    
endmodule