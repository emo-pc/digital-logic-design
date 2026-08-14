`timescale 1ns/1ns
module flipflopTest();
    reg d,clk;
    wire q,qPrime;
    flipFlop variable_name(d,clk,q,qPrime);
    initial begin
        $dumpfile("timingDiagram.vcd");
        $dumpvars(0,d,clk,q,qPrime);
        clk=0;d=0;#10;
        d=1;clk=1;#10;
        d=0;
        #10;
        clk=0;#10;
        clk=1;#10;
        $finish;
    end

endmodule