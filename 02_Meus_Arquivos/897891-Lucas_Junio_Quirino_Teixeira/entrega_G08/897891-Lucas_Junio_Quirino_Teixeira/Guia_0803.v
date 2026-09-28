// ----------------------------------------------------------------------
// Guia_0803 - COMPARADOR DE IGUALDADE 5 BITS
// Nome: Lucas Junio Quirino Teixeira
// Matricula: 897891
// ----------------------------------------------------------------------

module comparator_equal_5bit (
    output is_equal,
    input [4:0] a,
    input [4:0] b
);
    wire [4:0] eq;

    xnor XNOR0 (eq[0], a[0], b[0]);
    xnor XNOR1 (eq[1], a[1], b[1]);
    xnor XNOR2 (eq[2], a[2], b[2]);
    xnor XNOR3 (eq[3], a[3], b[3]);
    xnor XNOR4 (eq[4], a[4], b[4]);

    and AND_ALL (is_equal, eq[0], eq[1], eq[2], eq[3], eq[4]);
endmodule // comparator_equal_5bit

module test_comparator_equal;
    reg [4:0] x;
    reg [4:0] y;
    wire eq;

    comparator_equal_5bit CMP (eq, x, y);

    initial begin
        $display("Guia_0803 - Lucas Junio Quirino Teixeira - 897891");
        $display("Test Comparator (Equality 5 bits)\n");

        x = 5'b00101; y = 5'b00101; #1;
        $display("%b == %b -> Resultado: %b", x, y, eq);

        x = 5'b00101; y = 5'b00100; #1;
        $display("%b == %b -> Resultado: %b", x, y, eq);
    end
endmodule // test_comparator_equal
