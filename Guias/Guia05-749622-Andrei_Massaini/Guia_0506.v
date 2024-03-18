//749622-Andrei_Massaini 
module Guia_0506 (
    input a,
    input b,
    output out
);

wire xor_ab;

// Porta XOR para a ^ b
xor (xor_ab, a, b);

// Porta NAND para a ^ b
nand (out, xor_ab, xor_ab);

endmodule
