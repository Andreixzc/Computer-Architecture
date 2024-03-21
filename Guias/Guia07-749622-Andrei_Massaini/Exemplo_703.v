// -------------------------
// Nome: Andrei Massaini
// Matricula: 749622
// -------------------------
// -------------------------
// f7_gate
// -------------------------
module f7 ( output s, input a, input b, input p, input g );
  assign s = (g==0)? ( (p==0)? (a&b) : (~(a&b)) ) : ( (p==0)? (a|b): ~(a|b));
  // descrever por portas
endmodule 
// f7// -------------------------
// ------------------------                              pg
/*  a b p g   s                    00 01 11 10          ab
    1 1 0 0   1 //AND           00        1  1
    0 0 1 0   1 //NAND          01     1  1
    0 1 0 1   1 //OR            11  1  1
    1 0 0 1   1 //OR            10     1  1
    1 1 0 1   1 //OR
    0 0 1 1   1 //NOR
    0 1 1 1   1 //NOR
    1 0 1 1   1 //NOR
    0 1 1 0   1 //NAND
    1 0 1 0   1 //NAND
*/
module test_f7;
// ------------------------- definir dados
reg x;
reg y;
reg porta;  //0 and ou 1 nand, 0 or ou 1 nor
reg grupo;  //0 and e nand ,  1 or e nor 
wire s;
f7 modulo (s, x, y, porta, grupo );
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0703 - Andrei Massaini - 704397");
$display("   x   	y    p    g    s");
//x = 1'b0; y = 1'b0; porta = 1'b0; grupo = 1'b0;
// projetar testes do modulo
#1 $monitor("%4b %4b %4b %4b %4b", x, y, porta, grupo, s);
#1 x=1'b0; y=1'b0; porta=1'b0; grupo=1'b0;
#1 x=1'b0; y=1'b1; porta=1'b1; grupo=1'b0;
#1 x=1'b1; y=1'b0; porta=1'b0; grupo=1'b1;
#1 x=1'b1; y=1'b1; porta=1'b1; grupo=1'b1;
end
endmodule // test_f7
