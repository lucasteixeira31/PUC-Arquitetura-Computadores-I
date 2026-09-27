/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 07

 Arquivo: Guia_0705.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

// -------------------------
// unidade logica
// NOT / AND / NAND / OR / NOR / XOR / XNOR
// -------------------------
module lu0705 (
 output s,
 input a,
 input b,
 input [2:0] select
);

 wire not_a;
 wire and_s;
 wire nand_s;
 wire or_s;
 wire nor_s;
 wire xor_s;
 wire xnor_s;
 wire not_b;

 wire not_s2;
 wire not_s1;
 wire not_s0;

 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire w4;
 wire w5;
 wire w6;
 wire w7;

 // operacoes
 not  NOTA  ( not_a,  a );
 and  AND1  ( and_s,  a, b );
 nand NAND1 ( nand_s, a, b );
 or   OR1   ( or_s,   a, b );
 nor  NOR1  ( nor_s,  a, b );
 xor  XOR1  ( xor_s,  a, b );
 xnor XNOR1 ( xnor_s, a, b );
 not  NOTB  ( not_b,  b );

 // inversoes da selecao
 not NOTS2 ( not_s2, select[2] );
 not NOTS1 ( not_s1, select[1] );
 not NOTS0 ( not_s0, select[0] );

 // selecao:
 // 000-NOT a
 // 001-AND
 // 010-NAND
 // 011-OR
 // 100-NOR
 // 101-XOR
 // 110-XNOR
 // 111-NOT b

 and AND2 ( w0, not_a,  not_s2, not_s1, not_s0 );
 and AND3 ( w1, and_s,   not_s2, not_s1, select[0] );
 and AND4 ( w2, nand_s,  not_s2, select[1], not_s0 );
 and AND5 ( w3, or_s,    not_s2, select[1], select[0] );

 and AND6 ( w4, nor_s,   select[2], not_s1, not_s0 );
 and AND7 ( w5, xor_s,   select[2], not_s1, select[0] );
 and AND8 ( w6, xnor_s,  select[2], select[1], not_s0 );
 and AND9 ( w7, not_b,   select[2], select[1], select[0] );

 or OR2 ( s, w0, w1, w2, w3, w4, w5, w6, w7 );

endmodule // lu0705

// -------------------------
// modulo de testes
// -------------------------
module test_lu0705;

 reg x;
 reg y;
 reg [2:0] select;

 wire s;

 lu0705 modulo ( s, x, y, select );

 initial
 begin : main
   $display ( "Guia_0705 - Tests" );
   $display ( " x y select | s" );

   x = 1'b0; y = 1'b0; select = 3'b000;

   $monitor ( "%2b %1b %6b | %1b",
              x, y, select, s );

   #1 select = 3'b001;
   #1 select = 3'b010;
   #1 select = 3'b011;
   #1 select = 3'b100;
   #1 select = 3'b101;
   #1 select = 3'b110;
   #1 select = 3'b111;

   #1 x = 1'b0; y = 1'b1; select = 3'b000;
   #1 select = 3'b001;
   #1 select = 3'b010;
   #1 select = 3'b011;
   #1 select = 3'b100;
   #1 select = 3'b101;
   #1 select = 3'b110;
   #1 select = 3'b111;

   #1 x = 1'b1; y = 1'b0; select = 3'b000;
   #1 select = 3'b001;
   #1 select = 3'b010;
   #1 select = 3'b011;
   #1 select = 3'b100;
   #1 select = 3'b101;
   #1 select = 3'b110;
   #1 select = 3'b111;

   #1 x = 1'b1; y = 1'b1; select = 3'b000;
   #1 select = 3'b001;
   #1 select = 3'b010;
   #1 select = 3'b011;
   #1 select = 3'b100;
   #1 select = 3'b101;
   #1 select = 3'b110;
   #1 select = 3'b111;
 end

endmodule // test_lu0705
