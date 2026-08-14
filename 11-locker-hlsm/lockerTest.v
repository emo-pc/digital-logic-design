`timescale 1ns/1ns
module testBench ();
reg rst,clk,enter;
reg[3:0] num;
wire unlocked,alarm;
wire[15:0] attempt;
wire[2:0] digit_cnt;

locker v(rst,clk,enter,num,unlocked,alarm,attempt,digit_cnt);
always #10 clk=~clk;
always @(posedge clk) begin
    #2;
    $display("num: %d|attempt: %b|digit count: %d|unlocked: %d|alarm: %d",num,attempt,digit_cnt,unlocked,alarm);
end
initial begin
    $dumpfile("time.vcd");
    $dumpvars(0,rst,clk,enter,num,unlocked,alarm,attempt,digit_cnt);
    clk=0;
    rst=1;enter=0;
    @(negedge clk);
    rst=0;enter=1;num=9;
    @(negedge clk);
    num=7;
    @(negedge clk);
    num=6;
    @(negedge clk);
    num=2;
    @(negedge clk);
    num=1;
    @(negedge clk);
    num=2;
    @(negedge clk);
    num=3;
    @(negedge clk);
    num=4;
    #30;
    $finish;
end
endmodule