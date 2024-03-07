/*
Guia_0102.v
749622 - Andrei_Massaini
*/
module Guia_0102;
// define data
integer x1 = 0; // decimal
integer x2 = 0; // decimal
integer x3 = 0; // decimal
integer x4 = 0; // decimal
integer x5 = 0; // decimal
reg [7:0] b1 = 8'b10011; // binary (bits - little endian)
reg [7:0] b2 = 8'b11101; // binary (bits - little endian)
reg [7:0] b3 = 8'b10110; // binary (bits - little endian)
reg [7:0] b4 = 8'b101101; // binary (bits - little endian)
reg [7:0] b5 = 8'b110011; // binary (bits - little endian)
// actions
initial
begin : main
$display ( "Guia_0102 - Tests" );
$display ( "10011 em binario = %8b", b1 );
$display ( "11101 em binario = %8b", b2 );
$display ( "10110 em binario = %8b", b3 );
$display ( "101101 em binario = %8b", b4 );
$display ( "110011 em binario = %8b", b5 );
x1 = b1;
x2 = b2;
x3 = b3;
x4 = b4;
x5 = b5;
$display ( "10011 em decimal = %d", x1 );
$display ( "11101 em decimal = %d", x2 );
$display ( "10110 em decimal = %d", x3 );
$display ( "101101 em decimal = %d", x4 );
$display ( "110011 em decimal = %d", x5 );
end // main
endmodule // Guia_0102
