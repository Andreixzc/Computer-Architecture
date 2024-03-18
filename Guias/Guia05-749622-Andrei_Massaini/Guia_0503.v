//749622-Andrei_Massaini 
module Guia_0503 (
    input a,
    input b,
    output out
);

wire nota;
wire ab;

// Porta NOR para ~a
nor (nota, a, a);

// Porta NOR para ~a | b
nor (ab, nota, b);

// Saída
assign out = ab;

endmodule
