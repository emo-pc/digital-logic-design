`timescale 1ns/1ns
module lsSrLatch (
    input s,r,en,
    output q,qPrime
);
    wire set,reset;
    and(set,en,s);
    and(reset,en,r);
    nor(q,reset,qPrime);
    nor(qPrime,set,q);
endmodule