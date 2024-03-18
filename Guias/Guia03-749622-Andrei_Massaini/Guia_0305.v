/*
Guia_0304
749622 - Andrei Massaini
*/


module contaSubtrair(output[7:0] r, input[7:0] n1, input[7:0] n2);
  assign r[7:0] = (n1-n2);
endmodule

module Guia_0304;
// define data
reg signed [7:0] a = 8'b00_100010; // binary
reg signed [7:0] b = 8'b0000_1101; // binary
reg [3:0] f1 = 8'b1101;
reg [3:0] f2 = 8'b1000;
wire[7:0] r1;
reg [3:0] f3;
contaSubtrair sub_1(r1, a, b);
// actions
initial
begin : main
  $display ( "Guia_0304 - Tests" ); 
  $display("x = a-b = %8b(2)-%8b(2) = %8b(2)", a, b , r1);
  a=8'b00000101; b=8'b00000010; f3=f1-f2;
  $display("x = a-b = %8b.%4b(2)-%8b.%4b(2) = %4b.%4b(2)", a[7:0], f1[3:0], b[7:0], f2[3:0] , r1[7:0], f3[3:0]);
  a=8'b00100111; b=8'b00001101;
  $display("x = a-b = %d%d%d(4)-%h(4) = %8b", a[5:4], a[3:2], a[1:0], b[3:0], r1[7:0]);
  a=8'hAC; b=8'b01001111;
  $display("x = a-b = %h(16)-%8b(2) = %8b(2)", a, b , r1);
  a=37; b=8'h2A;
  $display("x = a-b = %d(10)-%h(16) = %8b(2)", a, b , r1);







end // main
endmodule // Guia_0304
