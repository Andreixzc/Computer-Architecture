//749622-Andrei_Massaini 
module Guia_0504 (
    input a,
    input b,
    output out
);

wire nota;
wire ab;

// Porta NAND para ~b
nand (nota, b, b);

// Porta NAND para a & ~b
nand (ab, a, nota);

// Porta NAND para ~(a & ~b)
nand (out, ab, ab);

endmodule
