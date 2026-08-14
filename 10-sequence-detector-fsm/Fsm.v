`timescale 1ns/1ns
module fstM (
    input in,
    input reset,
    input clk,
    output found
);
    reg[2:0] currentState,nextState;
    initial begin
        currentState=0;
    end
    parameter s1 =3'b000,
              s2=3'b001,
              s3=3'b010,
              s4=3'b011,
              s5=3'b100;
    always @(posedge clk) begin
        if (reset) begin
            currentState=s1;
        end
        else begin 
            currentState=nextState;
        end
    end

    always @(*) begin
        case (currentState)
            s1: nextState=(in) ? s2:s1;
            s2:nextState=(in) ? s3:s1;
            s3:nextState=(in) ? s3:s4;
            s4:nextState=(in) ? s5:s1;
            s5:nextState=(in) ? s3:s1;
            default: nextState=s1;
        endcase

    end
    
    assign found=(currentState==s5);   

endmodule