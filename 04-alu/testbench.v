`timescale 1ns/1ns
module testbench();

    reg[3:0] aa;
    reg[3:0] bb;
    reg[1:0] sell;
    wire[3:0] ress;


    alu uut(
        .a(aa),
        .b(bb),
        .sel(sell),
        .res(ress)
    );
    initial begin
        #10;
        $dumpfile("timingDiagram.vcd");
        $dumpvars(0,aa,bb,sell,ress);
        aa=4'b0000; bb = 4'b0000; sell = 2'b00;
        #10; aa = 4'd5; bb = 4'd3; sell = 2'b00;
        #10; aa = 4'd10; bb = 4'd4; sell = 2'b01;
        #10; aa = 4'b1100; bb = 4'b1010; sell = 2'b10;
        #10; aa = 4'b1100; bb = 4'b1010; sell = 2'b11;
        #10;
        $finish;

    end
endmodule
