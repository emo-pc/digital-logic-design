module locker (rst,clk,enter,digit_in,unlocked,alarm,attempt,digit_cnt);
input rst,clk,enter;
input wire[3:0] digit_in;
output reg unlocked,alarm;
output reg[15:0] attempt;
output reg[2:0] digit_cnt;
reg[1:0] error_cnt;
parameter read =0,check=1,Alarm=2 ;
localparam password =16'b0001001000110100 ;
reg[1:0] state;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        unlocked=0;alarm=0;attempt=0;digit_cnt=0;error_cnt=0;
        state<=read;
    end
    else begin
        case (state)
            read: begin
                if (enter) begin
                    attempt<= {attempt[11:0],digit_in};
                    digit_cnt++;
                    if (digit_cnt==4) begin
                        state<=check;
                    end
                end
            end 
            check: begin
                if (password==attempt) begin
                    unlocked=1;
                    error_cnt=0;
                    digit_cnt=0;
                    attempt=0;
                    state<=read;
                end
                else begin
                    error_cnt++;
                    digit_cnt=0;
                    unlocked=0;
                    attempt=0;
                    if (error_cnt==3) begin
                        state<=Alarm;
                    end
                    state<=read;
                end
            end
            Alarm: begin
                alarm<=1;
                state<=Alarm;
            end
        endcase
    end
end
    
endmodule