`timescale 1ns/1ns
module mux (
    input wire[3:0] i,
    input wire[1:0] s,
    output reg out
);
    always @(*) begin
        if (s==2'b00) begin
            out=i[0];
        end
        else if (s==2'b01) begin
            out=i[1];
        end
        else if (s==2'b10) begin
            out=i[2];
        end
        else begin
            out=i[3];
        end

    end
    
endmodule
