`timescale 1ns/1ns
module fsm (x,rst,clk,y);
    //aabb,aaaa detector
    input x,rst,clk;
    output reg y;
    parameter s_off =0,
    s_1 =1,
    s_11=2,
    s_111=3,
    s_0=4,
    s_00=5,
    s_000=6,
    s_10=7,
    s_100=8,
    s_101=9,
    s_01=10,
    s_011=11,
    s_010=12,
    s_001=13,
    s_110=14;
    reg[3:0] state,nextState;
    always @(state,x) begin
        case (state)
            s_off: begin
                if (x) begin
                    nextState<=s_1;
                    y<=0;
                end
                else begin
                    nextState<=s_0;
                    y<=0;
                end
            end 
            s_1: begin
                if (x) begin
                    nextState<=s_11;
                    y<=0;
                end
                else begin
                    nextState<=s_10;
                    y<=0;
                end
            end
            s_11: begin
                if (x) begin
                    nextState<=s_111;
                    y<=0;
                end
                else begin
                    nextState<=s_110;
                    y<=0;
                end
            end
            s_111: begin
                if (x) begin
                    nextState<=s_111;
                    y<=1;
                end
                else begin
                    nextState<=s_110;
                    y<=0;
                end
            end
            s_0: begin
                if (x) begin
                    nextState<=s_01;
                    y<=0;
                end
                else begin
                    nextState<=s_00;
                    y<=0;
                end
            end
            s_00: begin
                if (x) begin
                    nextState<=s_001;
                    y<=0;
                end
                else begin
                    nextState<=s_000;
                    y<=0;
                end
            end
            s_000: begin
                if (x) begin
                    nextState<=s_001;
                    y<=0;
                end
                else begin
                    nextState<=s_000;
                    y<=1;
                end
            end
            s_10: begin
                if (x) begin
                    nextState<=s_101;
                    y<=0;
                end
                else begin
                    nextState<=s_100;
                    y<=0;
                end
            end
            s_100: begin
                if (x) begin
                    nextState<=s_001;
                    y<=0;
                end
                else begin
                    nextState<=s_000;
                    y<=0;
                end
            end
            s_101: begin
                if (x) begin
                    nextState<=s_011;
                    y<=0;
                end
                else begin
                    nextState<=s_010;
                    y<=0;
                end
            end
            s_01: begin
                if (x) begin
                    nextState<=s_011;
                    y<=0;
                end
                else begin
                    nextState<=s_010;
                    y<=0;
                end
            end
            s_011: begin
                if (x) begin
                    nextState<=s_111;
                    y<=0;
                end
                else begin
                    nextState<=s_110;
                    y<=0;
                end
            end
            s_010: begin
                if (x) begin
                    nextState<=s_101;
                    y<=0;
                end
                else begin
                    nextState<=s_100;
                    y<=0;
                end
            end
            s_001: begin
                if (x) begin
                    nextState<=s_011;
                    y<=1;
                end
                else begin
                    nextState<=s_010;
                    y<=0;
                end
            end
            s_110: begin
                if (x) begin
                    nextState<=s_101;
                    y<=0;
                end
                else begin
                    nextState<=s_100;
                    y<=1;
                end
            end
        endcase
    end

    always @(posedge clk) begin
        if(rst) begin
            state=s_off;
        end
        else state=nextState;
    end

endmodule