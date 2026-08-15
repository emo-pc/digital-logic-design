`timescale 1ns/1ns
module testFsm ();
    reg inp,clk,res;
    wire out;

    fsm uut(
        .in(inp),
        .clk(clk),
        .reset(res),
        .found(out)
    );

    initial begin
        clk=0;
        forever begin
            #5;
            clk=~clk;
        end
    end

    initial begin
        $dumpfile("finitesSM.vcd");
        $dumpvars(0,inp,res,clk,out);
        res=1;
        inp=0;
        #10
        res=0;
        #10;
        inp=1;
        #10
        inp=1;
        #10;
        inp=1;
        #10;
        inp=0;
        #10;
        inp=1;
        #10;
        $finish;

    end



endmodule
