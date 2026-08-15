`timescale 1ns/1ns
module testMux ();
    reg input0;
    reg input1;
    reg select;
    wire o;

    mux variable_name(input0,input1,select,o);
    initial begin
        $dumpfile("muxtime.vcd");
        $dumpvars(0,input0,input1,select,o);
        input0=1'b1;input1=1'b0;
        select=1'b0;
        #10;
        select=1'b1;
        #10;
        $finish;
    end
endmodule
