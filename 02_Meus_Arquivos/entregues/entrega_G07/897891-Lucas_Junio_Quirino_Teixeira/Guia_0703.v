/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 07

 Arquivo: Guia_0703.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

// -------------------------
// unidade logica
// AND/NAND e OR/NOR
// -------------------------
module lu0703 (
 output s,
 input a,
 input b,
 input select_porta,
 input select_grupo
);

 wire and_s;
 wire nand_s;
 wire or_s;
 wire nor_s;

 wire not_select_porta;
 wire not_select_grupo;

 wire w0;
 wire w1;
 wire grupo_and;

 wire w2;
 wire w3;
 wire grupo_or;

 wire w4;
 wire w5;

 // operacoes
 and  AND1  ( and_s,  a, b );
 nand NAND1 ( nand_s, a, b );
 or   OR1   ( or_s,   a, b );
 nor  NOR1  ( nor_s,  a, b );

 // selecao da porta
 // 0-NAND/NOR
 // 1-AND/OR
 not NOT1 ( not_select_porta, select_porta );

 and AND2 ( w0, nand_s, not_select_porta );
 and AND3 ( w1, and_s, select_porta );
 or  OR2  ( grupo_and, w0, w1 );

 and AND4 ( w2, nor_s, not_select_porta );
 and AND5 ( w3, or_s, select_porta );
 or  OR3  ( grupo_or, w2, w3 );

 // selecao do grupo
 // 0-OR/NOR
 // 1-AND/NAND
 not NOT2 ( not_select_grupo, select_grupo );

 and AND6 ( w4, grupo_or, not_select_grupo );
 and AND7 ( w5, grupo_and, select_grupo );
 or  OR4  ( s, w4, w5 );

endmodule // lu0703

// -------------------------
// modulo de testes
// -------------------------
module test_lu0703;

 reg x;
 reg y;
 reg select_porta;
 reg select_grupo;

 wire s;

 lu0703 modulo (
   s,
   x,
   y,
   select_porta,
   select_grupo
 );

 initial
 begin : main
   $display ( "Guia_0703 - Tests" );
   $display ( " x y porta grupo | s" );

   x = 1'b0; y = 1'b0;
   select_porta = 1'b0;
   select_grupo = 1'b0;

   $monitor ( "%2b %1b %5b %5b | %1b",
              x, y, select_porta, select_grupo, s );

   #1 select_porta = 1'b1;
   #1 select_porta = 1'b0; select_grupo = 1'b1;
   #1 select_porta = 1'b1;

   #1 x = 1'b0; y = 1'b1;
      select_porta = 1'b0; select_grupo = 1'b0;
   #1 select_porta = 1'b1;
   #1 select_porta = 1'b0; select_grupo = 1'b1;
   #1 select_porta = 1'b1;

   #1 x = 1'b1; y = 1'b0;
      select_porta = 1'b0; select_grupo = 1'b0;
   #1 select_porta = 1'b1;
   #1 select_porta = 1'b0; select_grupo = 1'b1;
   #1 select_porta = 1'b1;

   #1 x = 1'b1; y = 1'b1;
      select_porta = 1'b0; select_grupo = 1'b0;
   #1 select_porta = 1'b1;
   #1 select_porta = 1'b0; select_grupo = 1'b1;
   #1 select_porta = 1'b1;
 end

endmodule // test_lu0703
