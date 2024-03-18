/*
Guia_0302
749622 - Andrei Massaini
*/
module Guia_0302;
// define data
reg [7:0] a = 8'h5E ; // hexadecimal
reg [6:0] b = 8'o127 ; // octal
reg [5:0] c = 8'b011110 ;// base 4
reg [7:0] d = 0; // binary
reg [6:0] e = 0; // binary
reg [5:0] f = 0; // binary
// actions
initial
begin : main
$display ( "Guia_0302 - Tests" );
f = ~c+1;
$display ( "a = %d%d%d -> C1(a) = %6b -> C2(a) = %6b", c[5:4], c[3:2], c[1:0], ~c, f );
d = ~a+1;
$display ( "b = %h%h -> C1(b) = %8b -> C2(b) = %8b", a[7:4], a[3:0], ~a, d );
c= 8'b110001;
f = ~c+1;
$display ( "c = %d%d%d -> C1(c) = %6b -> C2(c) = %6b", c[5:4], c[3:2], c[1:0], ~c, f );
e = ~b+1;
$display ( "d = %o -> C1(d) = %7b -> C2(d) = %7b", b, ~b, e );
a = 8'hC7;
d = ~a+1;
$display ( "e = %h%h -> C1(e) = %8b -> C2(e) = %8b", a[7:4], a[3:0], ~a, d );

end
// main
endmodule // Guia_0302
