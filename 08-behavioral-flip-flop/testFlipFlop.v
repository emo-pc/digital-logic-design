`timescale 1ns/1ns
module flipFlopTest ();
    reg d,clk;
    wire q;
    flipflop uut(
        .d(d),
        .clk(clk),
        .q(q)
    );
    always #5 clk=~clk;
    initial begin
        $dumpfile("timingDia.vcd");
        $dumpvars(0,d,clk,q);
        clk<=0;
        d<=1;
        #10;
        d<=0;
        #10;
        $finish;
    end
endmodule