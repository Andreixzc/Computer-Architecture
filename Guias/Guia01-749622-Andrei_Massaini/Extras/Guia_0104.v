module BinToBasesConverter (
    input [7:0] binary_number,
    output reg [3:0] group1,
    output reg [3:0] group2
);

always @(*) begin
    case(binary_number)
        4'b0000: group1 = 4'b0000;
        4'b0001: group1 = 4'b0001;
        4'b0010: group1 = 4'b0010;
        4'b0011: group1 = 4'b0011;
        4'b0100: group1 = 4'b0100;
        4'b0101: group1 = 4'b0101;
        4'b0110: group1 = 4'b0110;
        4'b0111: group1 = 4'b0111;
        4'b1000: group1 = 4'b1000;
        4'b1001: group1 = 4'b1001;
        4'b1010: group1 = 4'b1010;
        4'b1011: group1 = 4'b1011;
        4'b1100: group1 = 4'b1100;
        4'b1101: group1 = 4'b1101;
        4'b1110: group1 = 4'b1110;
        4'b1111: group1 = 4'b1111;
    endcase

    // Conversão para base 16
    case(binary_number)
        4'b0000: group2 = 4'b0000;
        4'b0001: group2 = 4'b0001;
        4'b0010: group2 = 4'b0010;
        4'b0011: group2 = 4'b0011;
        4'b0100: group2 = 4'b0100;
        4'b0101: group2 = 4'b0101;
        4'b0110: group2 = 4'b0110;
        4'b0111: group2 = 4'b0111;
        4'b1000: group2 = 4'b1000;
        4'b1001: group2 = 4'b1001;
        4'b1010: group2 = 4'b1010;
        4'b1011: group2 = 4'b1011;
        4'b1100: group2 = 4'b1100;
        4'b1101: group2 = 4'b1101;
        4'b1110: group2 = 4'b1110;
        4'b1111: group2 = 4'b1111;
    endcase
end

endmodule

module Guia_0104;

reg [7:0] binary_number = 5'b10111;

reg [3:0] group1;
reg [3:0] group2;

BinToBasesConverter converter(.binary_number(binary_number), .group1(group1), .group2(group2));

initial begin
    $display("Binary Number: %b", binary_number);
    $display("Group 1 (Base 4): %b", group1);
    $display("Group 2 (Base 16): %b", group2);
end

endmodule
