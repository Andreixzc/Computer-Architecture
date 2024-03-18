module Guia_0501 (
    input a,
    input b,
    output out
);

wire nota;
wire ab;

// Porta NOR para ~b
nor (nota, b, b);

// Porta NOR para a & ~b
nor (ab, a, nota);

// Saída
assign out = ab;

endmodule
