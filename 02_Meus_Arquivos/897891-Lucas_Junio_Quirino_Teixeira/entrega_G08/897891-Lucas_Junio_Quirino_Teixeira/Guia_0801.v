// ----------------------------------------------------------------------
// Guia_0801 - FULL ADDER 5 BITS
// Nome: Lucas Junio Quirino Teixeira
// Matricula: 897891
// ----------------------------------------------------------------------

module halfAdder (
    output s1, // carryOut
    output s0, // soma
    input a,
    input b
);
    xor XOR1 (s0, a, b);
    and AND1 (s1, a, b);
endmodule // halfAdder

module fullAdder (
    output s1, // carryOut
    output s0, // soma
    input a,
    input b,
    input carryIn
);
    wire c1, s_ha1, c2;

    halfAdder HA1 (c1, s_ha1, a, b);
    halfAdder HA2 (c2, s0, s_ha1, carryIn);
    or OR1 (s1, c1, c2);
endmodule // fullAdder

module fullAdder_5bit (
    output carryOut,
    output [4:0] soma,
    input [4:0] a,
    input [4:0] b,
    input carryIn
);
    wire [3:0] c;

    fullAdder FA0 (c[0], soma[0], a[0], b[0], carryIn);
    fullAdder FA1 (c[1], soma[1], a[1], b[1], c[0]);
    fullAdder FA2 (c[2], soma[2], a[2], b[2], c[1]);
    fullAdder FA3 (c[3], soma[3], a[3], b[3], c[2]);
    fullAdder FA4 (carryOut, soma[4], a[4], b[4], c[3]);
endmodule // fullAdder_5bit

module test_fullAdder;
    reg [4:0] x;
    reg [4:0] y;
    reg c_in;
    wire [4:0] soma;
    wire c_out;

    fullAdder_5bit FA5 (c_out, soma, x, y, c_in);

    initial begin
        $display("Guia_0801 - Lucas Junio Quirino Teixeira - 897891");
        $display("Test ALU's full adder (5 bits)\n");

        c_in = 1'b0;
        x = 5'b00010; y = 5'b00011; #1;
        $display("%b + %b (cin=%b) = %b%b", x, y, c_in, c_out, soma);

        x = 5'b00101; y = 5'b00101; #1;
        $display("%b + %b (cin=%b) = %b%b", x, y, c_in, c_out, soma);

        x = 5'b01111; y = 5'b00001; #1;
        $display("%b + %b (cin=%b) = %b%b", x, y, c_in, c_out, soma);
    end
endmodule // test_fullAdder
