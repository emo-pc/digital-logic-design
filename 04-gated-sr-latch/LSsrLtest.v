`timescale 1ns/1ns
module lsSrLtest ();
    reg s,r,en;
    wire q,qPrime;

    lsSrLatch uut(
        .s(s),
        .r(r),
        .en(en),
        .q(q),
        .qPrime(qPrime)
    );
    initial begin
        $dumpfile("timeDiagram.vcd");
        $dumpvars(0,s,r,en,q,qPrime);
        s=1;r=1;en=1;#10;
        s=0;r=0;en=0;#10;
        s=1;#10;s=0;
        r=1;#10;r=0;
        en=1;#10;
        s=1;#10;s=0;
        r=1;#10;
        $finish;
    end
    
endmodule