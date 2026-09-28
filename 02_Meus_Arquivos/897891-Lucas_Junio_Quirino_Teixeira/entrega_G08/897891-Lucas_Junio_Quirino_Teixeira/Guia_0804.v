// ----------------------------------------------------------------------
// Guia_0804 - COMPARADOR DE DESIGUALDADE 5 BITS
// Nome: Lucas Junio Quirino Teixeira
// Matricula: 897891
// ----------------------------------------------------------------------

module comparator_not_equal_5bit (
    output is_not_equal,
    input [4:0] a,
    input [4:0] b
);
    wire [4:0] diff;

    xor XOR0 (diff[0], a[0], b[0]);
    xor XOR1 (diff[1], a[1], b[1]);
    xor XOR2 (diff[2], a[2], b[2]);
    xor XOR3 (diff[3], a[3], b[3]);
    xor XOR4 (diff[4], a[4], b[4]);

    or OR_ALL (is_not_equal, diff[0], diff[1], diff[2], diff[3], diff[4]);
endmodule // comparator_not_equal_5bit

module test_comparator_not_equal;
    reg [4:0] x;
    reg [4:0] y;
    wire neq;

    comparator_not_equal_5bit CMP (neq, x, y);

    initial begin
        $display("Guia_0804 - Lucas Junio Quirino Teixeira - 897891");
        $display("Test Comparator (Inequality 5 bits)\n");

        x = 5'b00101; y = 5'b00101; #1;
        $display("%b != %b -> Resultado: %b", x, y, neq);

        x = 5'b00101; y = 5'b00100; #1;
        $display("%b != %b -> Resultado: %b", x, y, neq);
    end
endmodule // test_comparator_not_equal
