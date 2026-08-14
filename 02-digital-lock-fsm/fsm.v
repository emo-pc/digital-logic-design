`timescale 1ns/1ns
module fsm (b_in,clk,rst,unlock);
    input b_in,clk,rst;
    output reg unlock;
    parameter s_off =0,s_1=1,s_2=2,s_3=3 ;
    reg[1:0] State,StateNext;
    always @(State,b_in) begin
        case (State)
            s_off: begin
                unlock<=0;
                if (b_in==0) begin
                    StateNext<=s_off;
                end 
                else begin
                    StateNext<=s_1;
                end
            end
            s_1: begin
                unlock<=0;
                if (b_in==0) begin
                    StateNext<=s_2;
                end
                else begin
                    StateNext<=s_1;
                end
            end
            s_2: begin
                unlock<=0;
                if (b_in==0) begin
                    StateNext<=s_off;
                end
                else begin
                    StateNext<=s_3;
                end
            end
            s_3: begin
                unlock<=1;
                if (b_in==0) begin
                    StateNext<=s_2;
                end
                else begin
                    StateNext<=s_1;
                end
            end
            default: begin
                StateNext<=s_off;
            end
        endcase
    end
    always @(posedge clk) begin
        if (rst) begin
            State<=s_off;
        end
        else begin
            State<=StateNext;
        end
    end


endmodule