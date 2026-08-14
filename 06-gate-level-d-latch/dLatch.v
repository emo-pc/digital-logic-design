`timescale 1ns/1ns
module dLatch (
    input d,clk,
    output q,qPrime
);
wire set,reset,dNot;
not(dNot,d);
and(set,d,clk);
and (reset,dNot,clk);
nor(q,reset,qPrime);
nor(qPrime,set,q);
endmodule