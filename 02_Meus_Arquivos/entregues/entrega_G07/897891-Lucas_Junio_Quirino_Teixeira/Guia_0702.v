/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 07

 Arquivo: Guia_0702.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

// -------------------------
// unidade logica OR / NOR
// -------------------------
module lu0702 (
 output s,
 input a,
 input b,
 input select
);

 wire or_s;
 wire nor_s;
 wire not_select;
 wire w0;
 wire w1;

 // duas operacoes
 or  OR1  ( or_s,  a, b );
 nor NOR1 ( nor_s, a, b );

 // selecao: 0-NOR; 1-OR
 not NOT1 ( not_select, select );
 and AND1 ( w0, nor_s, not_select );
 and AND2 ( w1, or_s, select );
 or  OR2  ( s, w0, w1 );

endmodule // lu0702

// -------------------------
// modulo de testes
// -------------------------
module test_lu0702;

 reg x;
 reg y;
 reg select;

 wire s;

 lu0702 modulo ( s, x, y, select );

 initial
 begin : main
   $display ( "Guia_0702 - Tests" );
   $display ( " x y select | s" );

   x = 1'b0; y = 1'b0; select = 1'b0;
   $monitor ( "%2b %1b %6b | %1b",
              x, y, select, s );

   #1 select = 1'b1;

   #1 x = 1'b0; y = 1'b1; select = 1'b0;
   #1 select = 1'b1;

   #1 x = 1'b1; y = 1'b0; select = 1'b0;
   #1 select = 1'b1;

   #1 x = 1'b1; y = 1'b1; select = 1'b0;
   #1 select = 1'b1;
 end

endmodule // test_lu0702
