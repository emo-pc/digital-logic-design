`timescale 1ns/1ns
module testMuxB ();

    reg input0;
    reg input1;
    reg select;
    wire outt;

    muxB behavioral_instance(input0,input1,select,outt);

    initial begin
        $dumpfile("muxB.vcd");
        $dumpvars(0,input0,input1,select,outt);

        input0=1'b0;
        input1=1'b1;

        select=1'b0;
        #10;
        select=1'b1;
        #10;
        $finish;

    end
    
endmodule