`timescale 1ns/1ns
module fsmTest ();
    reg b_in,rst,clk;
    wire unlock;
    always begin
        clk=1;
        #10;
        clk=0;
        #10;
    end
    fsm uut(
        .b_in(b_in),
        .clk(clk),
        .rst(rst),
        .unlock(unlock)
    );
    parameter in=16'b1010001010101001;
    integer i;
    initial begin
        $dumpfile("Time.vcd");
        $dumpvars(0,b_in,clk,rst,unlock);
        rst=1;b_in=0;#10;rst=0;
        for (i = 0;i<16 ;i++ ) begin
            @(negedge clk);
            b_in=in[i];
            @(posedge clk);
            #2;
            $display("b_in: %d | unlock: %d",b_in,unlock);
        end
        $finish;
    end

endmodule