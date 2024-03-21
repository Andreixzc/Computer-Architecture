// -------------------------
// Nome: Andrei Massaini
// Matricula: 749622
// -------------------------
// -------------------------
// f7_gate
// -------------------------
module f7 ( output s, input a, input b, input p, input g );
  //assign s = (g==0)? ( (p==0)? (a&b) : (~(a&b)) ) : ( (p==0)? (a|b): ~(a|b));
  assign s = (g==0)? ((p==0)? (a^b):(~(a^b))) : (p==0)? (a|b): (~(a|b));
  //grupo 1 (XOR, XNOR) grupo 2(OR NOR);
  // descrever por portas
endmodule 
// f7// -------------------------
// ------------------------                              
/*  a b p g   s     
    0 0 0 0   0            
    0 1 0 1   0
    1 0 1 0   1
    1 1 1 1   0
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
$display("Exemplo_0704 - Andrei Massaini - 704397");
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
