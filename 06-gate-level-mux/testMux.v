`timescale 1ns/1ns
module testMuxG ();
    reg input0;
    reg input1;
    reg select;
    wire o;

    muxG variable_name(input0,input1,select,o);
    initial begin
        $dumpfile("muxGtime.vcd");
        $dumpvars(0,input0,input1,select,o);
        input0=1'b1;input1=1'b0;
        select=1'b0;
        #10;
        select=1'b1;
        #10;
        $finish;
    end
endmodule