`timescale 1ns/1ns
module sqrt (clk,rst,strt,num,done,out,ram,odd,count);
input clk,rst,strt;
input wire[7:0] num;
output reg done;
output reg[3:0] out;
output reg[7:0] ram;
output reg[7:0] odd;
output reg[3:0] count;
parameter s1 =0,s2=1,idle=2 ,s0=3;
reg[1:0] state;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        done=0;out=0;ram=0;odd=0;count=0;state=idle;
    end
    else begin
            case (state)
                idle:  begin
                    if (strt) begin
                        state=s0;
                    end
                    else state=idle;
                end
                s0: begin
                    ram<=num;
                    odd<=1;
                    count<=0;
                    state<=s1;
                end
                s1: begin
                    ram<=ram-odd;
                    count++;
                    odd+=2;
                    if (odd>ram) begin
                        state<=s2;
                    end
                    else state<=s1;
                end 
                s2: begin
                    done<=1;
                    out<=count;
                    state<=idle;
                end
            endcase
        

    end
end
endmodule