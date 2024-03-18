//749622-Andrei_Massaini 
module Guia_0502 (
    input a,
    input b,
    output out
);

wire nota;
wire ab;

// Porta NAND para ~a
nand (nota, a, a);

// Porta NAND para ~a | b
nand (ab, nota, b);

// Saída
assign out = ab;

endmodule
