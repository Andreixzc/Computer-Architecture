// -------------------------
// Exemplo_0701 - GATES
// Nome: Andrei Massaini
// Matricula: 749622
// -------------------------
// -------------------------
// f7_gate
// -------------------------
module f7 ( output s1, output s2, input a, input b );
  assign s1 = a&b;
  assign s2 = ~(a&b);
// descrever por portas
endmodule // f7// -------------------------
// -------------------------
module test_f7;
// ------------------------- definir dados
reg x;
reg y;
wire s1;
wire s2;
f7 modulo (s1, s2, x, y );
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0701 - Gustavo Pereira Cristfofaro - 704397");
$display("   x   	y    s1    s2");
x = 1'b0; y = 1'b0; 
// projetar testes do modulo
#1 $monitor("%4b %4b %4b  %4b", x, y, s1, s2);
#1 x=1'b0; y=1'b1;
#1 x=1'b1; y=1'b0;
#1 x=1'b1; y=1'b1;
end
endmodule // test_f7
