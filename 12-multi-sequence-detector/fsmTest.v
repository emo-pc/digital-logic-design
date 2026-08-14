`timescale 1ns/1ns
module test();
reg clk,rst,x;
wire  y;

fsm uut(
    .clk(clk),
    .rst(rst),
    .x(x),
    .y(y)
);
always  begin
    clk=1;
    #10;
    clk=0;
    #10;
end

parameter testCase =16'b1100111101010000;
integer i;
initial begin
    rst=1;#15;rst=0;
    $dumpfile("time.vcd");
    $dumpvars(0,clk,rst,x,y);
    for (i =15 ;i>=0 ;i-- ) begin
        @(negedge clk);
        x=testCase[i];
        @(posedge clk);
        #2;
        $display("x: %d | y: %d",x,y);
    end
    $finish;
end

endmodule