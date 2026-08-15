`timescale 1ns/1ns
module testMux ();

    reg[3:0] in;
    reg[1:0] sel;
    wire o;

    mux behavioral_instance(in,sel,o);

    initial begin
        $dumpfile("Time.vcd");
        $dumpvars(0,in,sel,o);
        in=4'b0001;sel=2'b00;
        #10;
        in=4'b0010;sel=2'b01;
        #10;
        in=4'b0100;sel=2'b10;
        #10;
        in=4'b1000;sel=2'b11;
        #10;

        $finish;


        
    end
    
endmodule
