/*
Guia_0303
749622 - Andrei Massaini
*/
module Guia_0303;
// define data
reg signed [7:0] a = 8'b1111_1010; // binary
reg signed [6:0] b = 8'b1_010111 ; // binary
reg signed [5:0] c = 8'b1_10011; // binary
reg signed [4:0] d = 8'b1_0110; // binary
reg signed [7:0] e = 0; // binary
reg signed [6:0] f = 0; // binary
reg signed [5:0] g = 0; // binary
reg signed [4:0] h = 0; // binary
// actions
initial
begin : main
$display ( "Guia_0303 - Tests" );
h = ~d+1;
g = ~(d-1);
$display ( "a = %5b -> C1(a) = %5b -> C2(a) = %5b = %d = %d", d, ~d, h, h, g );
g = ~c+1;
f = ~(c-1);
$display ( "b = %6b -> C1(b) = %6b -> C2(b) = %6b = %d = %d", c, ~c, g, g, f );
c = 8'b1_11101;
g = ~c+1;
f = ~(c-1);
$display ( "c = %6b -> C1(c) = %6b -> C2(c) = %6b = %d = %d", c, ~c, g, g, f );

$display ( "d = %7b -> C1(c) = %7b -> C2(c) = %7b = %d = %d", c, ~c, g, g, f );

end // main end // main
endmodule // Guia_0303
