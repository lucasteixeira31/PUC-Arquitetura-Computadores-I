/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 05

 Arquivo: Guia_0501.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0501;

 reg a;
 reg b;

 wire not_a;
 wire nand_ab;
 wire s;

 integer i;

 // Expressao: (~a & b)
 // Implementacao usando apenas portas nativas NAND
 nand NAND1 ( not_a, a, a );
 nand NAND2 ( nand_ab, not_a, b );
 nand NAND3 ( s, nand_ab, nand_ab );

 initial
 begin : main

   $display ( "Guia_0501 - Tests" );
   $display ( "" );
   $display ( "s = (~a & b) usando apenas portas NAND" );
   $display ( "a b = s" );

   // Previsao:
   // 0 0 = 0
   // 0 1 = 1
   // 1 0 = 0
   // 1 1 = 0

   for ( i = 0; i < 4; i = i + 1 )
   begin
     {a,b} = i;
     #1;
     $display ( "%b %b = %b", a, b, s );
   end

 end

endmodule
