`timescale 1ns/1ns
module dLatchTest();
    reg d,clk;
    wire q,qPrime;
    dLatch uut(
        .d(d),
        .clk(clk),
        .q(q),
        .qPrime(qPrime)
    );
    initial begin
        $dumpfile("timingDiagram.vcd");
        $dumpvars(0,d,clk,q,qPrime);
        clk=1;d=0;
        #10;
        d=1;#10;
        clk=0;
        #10;
        d=0;#10;
        d=1;#10;
        $finish;
    end
endmodule