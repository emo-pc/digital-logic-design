`timescale 1ns/1ns
module dlatchTest ();
    reg d,clk;
    wire q,qPrime;
    dLatch variable_name(d,clk,q,qPrime);
    always #5 clk=~clk;
    initial begin
        $dumpfile("timingDia.vcd");
        $dumpvars(0,d,clk,q,qPrime);
        clk<=0;
        d=0;
        #3;d=1;
        $display("time:%t | d:%b | q:%b",$time,d,q);
        #3;
        $display("time:%t | d:%b | q:%b",$time,d,q);
        d=0;
        #3;
        $display("time:%t | d:%b | q:%b",$time,d,q);
        #2;
        d=1;
        $display("time:%t | d:%b | q:%b",$time,d,q);
        #5;
        $display("time:%t | d:%b | q:%b",$time,d,q);

        $finish;
    end
endmodule