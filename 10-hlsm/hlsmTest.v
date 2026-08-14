`timescale 1ns/1ns
module testbench ();
reg clk,rst,strt;
reg[7:0] num;
wire done;
wire[3:0] out,count;
wire[7:0] ram, odd; 
sqrt v(clk,rst,strt,num,done,out,ram,odd,count);
always #10 clk=~clk;

initial begin
    $dumpfile("time.vcd");
    $dumpvars(0,clk,rst,strt,num,done,out,ram,odd,count);
    clk=0;
    @(negedge clk);
    rst=1;num=0;strt=0;
    #10;
    @(negedge clk);
    rst=0;
    strt=1;
    num=36;
    #20;
    #400;
    $finish;
end
always @(posedge clk) begin
    #2;
    $display("ram: %d |odd: %d |count: %d |out: %d |done: %d",ram,odd,count,out,done);
    end
endmodule