//749622-Andrei_Massaini 
module Guia_0505 (
    input a,
    input b,
    output out
);

wire xor_ab;
wire not_xor_ab;

// Porta XOR para a ^ b
xor (xor_ab, a, b);

// Porta NOR para ~(a ^ b)
nor (not_xor_ab, xor_ab, xor_ab);

// Saída
assign out = not_xor_ab;

endmodule
