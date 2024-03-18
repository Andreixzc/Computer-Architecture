/*
Guia_0304
749622 - Andrei Massaini
*/


module contaSubtrair(output[7:0] r, input[7:0] n1, input[7:0] n2);
  assign r[7:0] = (n1-n2);
endmodule

module Guia_0304;
// define data
reg signed [7:0] a = 8'b00011001; // binary
reg signed [7:0] b = 8'b00001101; // binary
reg signed [11:0] a2= 12'h8E6;
reg signed [11:0] b2= 12'hA1B;
reg [3:0] f1 = 8'b0001;
reg [3:0] f2 = 8'b0100;
reg [3:0] f3;
wire[7:0] r1;
reg[15:0] r2;
contaSubtrair sub_1(r1, a, b);
// actions
initial
begin : main
  $display ( "Guia_0304 - Tests" ); 
  $display("x = a-b = %8b-%8b = %8b", a, b , r1);
  a=8'b00000_101; b=8'b00000_010; f3=f1-f2;
  $display("x = a-b = %8b.%4b-%8b.%4b = %4b.%4b", a[7:0], f1[3:0], b[7:0], f2[3:0] , r1[7:0], f3[3:0]);
  a=8'b00_101101; b=8'b00_011110;
  $display("x = a-b = %d%d%d(4)-%d%d%d(4) = %d%d%d", a[5:4], a[3:2], a[1:0], b[5:4], b[3:2], b[1:0], r1[5:4], r1[3:2], r1[1:0]);
  a=8'o321; b=8'o123;
  $display("x = a-b = %o(8)-%o(8) = %o(8)", a, b , r1);
  r2=a2-b2;
  $display("x = a-b = %h-%h = %h", a2, b2 , r2);






end // main
endmodule // Guia_0304
