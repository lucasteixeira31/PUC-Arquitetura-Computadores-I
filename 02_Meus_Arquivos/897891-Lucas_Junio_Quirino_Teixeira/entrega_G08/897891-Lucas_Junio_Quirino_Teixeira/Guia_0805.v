// ----------------------------------------------------------------------
// Guia_0805 - COMPLEMENTO DE 2 (5 BITS)
// Nome: Lucas Junio Quirino Teixeira
// Matricula: 897891
// ----------------------------------------------------------------------

module halfAdder (output s1, output s0, input a, input b);
    xor XOR1 (s0, a, b);
    and AND1 (s1, a, b);
endmodule

module fullAdder (output s1, output s0, input a, input b, input carryIn);
    wire c1, s_ha1, c2;
    halfAdder HA1 (c1, s_ha1, a, b);
    halfAdder HA2 (c2, s0, s_ha1, carryIn);
    or OR1 (s1, c1, c2);
endmodule

module complement2_5bit (
    output [4:0] out,
    input [4:0] in
);
    wire [4:0] c1; // complemento de 1
    wire [3:0] carry;
    wire cout_unused;

    // Complemento de 1 (Inversão)
    not NOT0 (c1[0], in[0]);
    not NOT1 (c1[1], in[1]);
    not NOT2 (c1[2], in[2]);
    not NOT3 (c1[3], in[3]);
    not NOT4 (c1[4], in[4]);

    // Soma de +1 (via carryIn no primeiro bit)
    fullAdder FA0 (carry[0], out[0], c1[0], 1'b0, 1'b1);
    fullAdder FA1 (carry[1], out[1], c1[1], 1'b0, carry[0]);
    fullAdder FA2 (carry[2], out[2], c1[2], 1'b0, carry[1]);
    fullAdder FA3 (carry[3], out[3], c1[3], 1'b0, carry[2]);
    fullAdder FA4 (cout_unused, out[4], c1[4], 1'b0, carry[3]);
endmodule // complement2_5bit

module test_complement2;
    reg [4:0] in;
    wire [4:0] out;

    complement2_5bit C2 (out, in);

    initial begin
        $display("Guia_0805 - Lucas Junio Quirino Teixeira - 897891");
        $display("Test Two's Complement (5 bits)\n");

        in = 5'b00001; #1; // 1 -> C2 = -1 (11111)
        $display("Complemento de 2 de %b = %b", in, out);

        in = 5'b00100; #1; // 4 -> C2 = -4 (11100)
        $display("Complemento de 2 de %b = %b", in, out);
    end
endmodule // test_complement2
