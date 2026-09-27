/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 07

 Arquivo: Guia_0704.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

// -------------------------
// unidade logica
// OR / NOR / XOR / XNOR
// -------------------------
module lu0704 (
 output s,
 input a,
 input b,
 input [1:0] select
);

 wire or_s;
 wire nor_s;
 wire xor_s;
 wire xnor_s;

 wire not_s1;
 wire not_s0;

 wire w0;
 wire w1;
 wire w2;
 wire w3;

 // operacoes
 or   OR1   ( or_s,   a, b );
 nor  NOR1  ( nor_s,  a, b );
 xor  XOR1  ( xor_s,  a, b );
 xnor XNOR1 ( xnor_s, a, b );

 // selecao:
 // 00-OR
 // 01-NOR
 // 10-XNOR
 // 11-XOR
 not NOT1 ( not_s1, select[1] );
 not NOT2 ( not_s0, select[0] );

 and AND1 ( w0, or_s,   not_s1, not_s0 );
 and AND2 ( w1, nor_s,  not_s1, select[0] );
 and AND3 ( w2, xnor_s, select[1], not_s0 );
 and AND4 ( w3, xor_s,  select[1], select[0] );

 or OR2 ( s, w0, w1, w2, w3 );

endmodule // lu0704

// -------------------------
// modulo de testes
// -------------------------
module test_lu0704;

 reg x;
 reg y;
 reg [1:0] select;

 wire s;

 lu0704 modulo ( s, x, y, select );

 initial
 begin : main
   $display ( "Guia_0704 - Tests" );
   $display ( " x y select | s" );

   x = 1'b0; y = 1'b0; select = 2'b00;

   $monitor ( "%2b %1b %6b | %1b",
              x, y, select, s );

   #1 select = 2'b01;
   #1 select = 2'b10;
   #1 select = 2'b11;

   #1 x = 1'b0; y = 1'b1; select = 2'b00;
   #1 select = 2'b01;
   #1 select = 2'b10;
   #1 select = 2'b11;

   #1 x = 1'b1; y = 1'b0; select = 2'b00;
   #1 select = 2'b01;
   #1 select = 2'b10;
   #1 select = 2'b11;

   #1 x = 1'b1; y = 1'b1; select = 2'b00;
   #1 select = 2'b01;
   #1 select = 2'b10;
   #1 select = 2'b11;
 end

endmodule // test_lu0704
