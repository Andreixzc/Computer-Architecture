/*
Guia_0101.v
749622 - Andrei_Massaini
*/
module Guia_0101;
// define data
integer x1 = 23; // decimal
integer x2 = 57; // decimal
integer x3 = 732; // decimal
integer x4 = 321; // decimal
integer x5 = 364; // decimal
reg [7:0] b1 = 0; // binary (bits - little endian)
reg [7:0] b2 = 0; // binary (bits - little endian)
reg [7:0] b3 = 0; // binary (bits - little endian)
reg [7:0] b4 = 0; // binary (bits - little endian)
reg [7:0] b5 = 0; // binary (bits - little endian)
// actions
initial
begin : main
$display ( "Guia_0101 - Tests" );
$display ( "23 = %d" , x1 );
$display ( "57 = %d" , x2 );
$display ( "732 = %d" , x3 );
$display ( "321 = %d" , x4 );
$display ( "364 = %d" , x5 );
b1 = x1;
b2 = x2;
b3 = x3;
b4 = x4;
b5 = x5;
$display ( "23 em binario = %8b", b1 );
$display ( "57 em binario = %8b", b2 );
$display ( "732 em binario = %8b", b3 );
$display ( "321 em binario = %8b", b4 );
$display ( "364 em binario = %8b", b5 );
end // main
endmodule // Guia_0101
