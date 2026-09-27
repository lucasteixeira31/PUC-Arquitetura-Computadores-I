/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 07

 Arquivo: Guia_0701.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

// -------------------------
// unidade logica AND / NAND
// -------------------------
module lu0701 (
 output and_s,
 output nand_s,
 output s,
 input a,
 input b,
 input select
);

 wire not_select;
 wire w0;
 wire w1;

 // duas respostas paralelas
 and  AND1  ( and_s,  a, b );
 nand NAND1 ( nand_s, a, b );

 // selecao: 0-NAND; 1-AND
 not NOT1 ( not_select, select );
 and AND2 ( w0, nand_s, not_select );
 and AND3 ( w1, and_s, select );
 or  OR1  ( s, w0, w1 );

endmodule // lu0701

// -------------------------
// modulo de testes
// -------------------------
module test_lu0701;

 reg x;
 reg y;
 reg select;

 wire and_s;
 wire nand_s;
 wire s;

 lu0701 modulo ( and_s, nand_s, s, x, y, select );

 initial
 begin : main
   $display ( "Guia_0701 - Tests" );
   $display ( " x y select | AND NAND | s" );

   x = 1'b0; y = 1'b0; select = 1'b0;
   $monitor ( "%2b %1b %6b | %3b %4b | %1b",
              x, y, select, and_s, nand_s, s );

   #1 select = 1'b1;

   #1 x = 1'b0; y = 1'b1; select = 1'b0;
   #1 select = 1'b1;

   #1 x = 1'b1; y = 1'b0; select = 1'b0;
   #1 select = 1'b1;

   #1 x = 1'b1; y = 1'b1; select = 1'b0;
   #1 select = 1'b1;
 end

endmodule // test_lu0701
