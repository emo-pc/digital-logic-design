`timescale 1ns/1ns
module alu(
    input wire[3:0] a,
    input wire[3:0] b,
    input wire[1:0] sel,
    output reg[3:0] res
);
    always @(*) begin
        if (sel==2'b00) 
            res=a+b;

       else if(sel==2'b01)
            res=a-b;

        else if(sel==2'b10)
            res=a&b;

        else
            res=a|b;
    end
    
endmodule