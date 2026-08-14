`timescale 1ns/1ns
module flipFlop (
    input d,clk,
    output q,qPrime
);
    wire clkNot,setMst,resetMst,dNot;
    not(clkNot,clk);
    not(dNot,d);
    and(setMst,clkNot,d);
    and(resetMst,clkNot,dNot);
    wire q1,q1Prime;
    nor(q1Prime,setMst,q1);
    nor(q1,resetMst,q1Prime);
    wire setSnt,resetSnt,q1Not;
    not(q1Not,q1);
    and(setSnt,q1,clk);
    and(resetSnt,q1Not,clk);
    nor(qPrime,setSnt,q);
    nor(q,resetSnt,qPrime);

endmodule