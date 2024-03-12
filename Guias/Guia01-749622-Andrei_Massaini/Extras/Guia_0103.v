/*
Guia_0103.v
749622 - Andrei_Massaini
*/
module Guia_0103;
integer x = 13; // decimal
reg [7:0] b = 0; // binary
// actions
initial
begin : main
$display ( "Guia_0103 - Tests" );
$display ( "x = %d" , x );
$display ( "b = %8b", b );
b = x;
$display ( "b = %B (2) = %o (8) = %x (16) = %X (16)", b, b, b, b );


integer x1 = 67;
integer x2 = 58;
integer x3 = 76;
integer x4 = 157;
integer x5 = 735;

reg [7:0] b1 = 0;
reg [7:0] b2 = 0;
reg [7:0] b3 = 0;
reg [7:0] b4 = 0;
reg [7:0] b5 = 0;

b1 = x1;
b2 = x2;
b3 = x3;
b4 = x4;
b5 = x5;

$display ( "Conversões adicionais:" );
$display ( "67 em binário = %B", b1 );
$display ( "58 em binário = %B", b2 );
$display ( "76 em binário = %B", b3 );
$display ( "157 em binário = %B", b4 );
$display ( "735 em binário = %B", b5 );

end // main
endmodule // Guia_0103
