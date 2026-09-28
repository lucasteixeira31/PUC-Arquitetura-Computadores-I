// ----------------------------------------------------------------------
// Guia_0802 - FULL SUBTRACTOR 5 BITS
// Nome: Lucas Junio Quirino Teixeira
// Matricula: 897891
// ----------------------------------------------------------------------

module halfDifference (
    output v, // borrowOut
    output d, // diferença
    input a,
    input b
);
    wire not_a;

    xor XOR1 (d, a, b);
    not NOT1 (not_a, a);
    and AND1 (v, not_a, b);
endmodule // halfDifference

module fullDifference (
    output v1, // borrowOut
    output d0, // diferença
    input a,
    input b,
    input borrowIn
);
    wire v_hd1, d_hd1, v_hd2;

    halfDifference HD1 (v_hd1, d_hd1, a, b);
    halfDifference HD2 (v_hd2, d0, d_hd1, borrowIn);
    or OR1 (v1, v_hd1, v_hd2);
endmodule // fullDifference

module fullSubtractor_5bit (
    output borrowOut,
    output [4:0] diff,
    input [4:0] a,
    input [4:0] b,
    input borrowIn
);
    wire [3:0] v;

    fullDifference FD0 (v[0], diff[0], a[0], b[0], borrowIn);
    fullDifference FD1 (v[1], diff[1], a[1], b[1], v[0]);
    fullDifference FD2 (v[2], diff[2], a[2], b[2], v[1]);
    fullDifference FD3 (v[3], diff[3], a[3], b[3], v[2]);
    fullDifference FD4 (borrowOut, diff[4], a[4], b[4], v[3]);
endmodule // fullSubtractor_5bit

module test_fullSubtractor;
    reg [4:0] x;
    reg [4:0] y;
    reg bin;
    wire [4:0] diff;
    wire bout;

    fullSubtractor_5bit FS5 (bout, diff, x, y, bin);

    initial begin
        $display("Guia_0802 - Lucas Junio Quirino Teixeira - 897891");
        $display("Test ALU's full subtractor (5 bits)\n");

        bin = 1'b0;
        x = 5'b00101; y = 5'b00011; #1; // 5 - 3 = 2
        $display("%b - %b (bin=%b) = %b (bout=%b)", x, y, bin, diff, bout);

        x = 5'b01000; y = 5'b00010; #1; // 8 - 2 = 6
        $display("%b - %b (bin=%b) = %b (bout=%b)", x, y, bin, diff, bout);

        x = 5'b00010; y = 5'b00100; #1; // 2 - 4 = -2 (borrow out = 1)
        $display("%b - %b (bin=%b) = %b (bout=%b)", x, y, bin, diff, bout);
    end
endmodule // test_fullSubtractor
