/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 05

 Arquivo: Guia_0505.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0505;

 reg a;
 reg b;

 wire n1;
 wire n2;
 wire n3;
 wire s;

 integer i;

 // Expressao: (a ^ b)
 // Implementacao usando apenas portas nativas NAND
 nand NAND1 ( n1, a, b );
 nand NAND2 ( n2, a, n1 );
 nand NAND3 ( n3, b, n1 );
 nand NAND4 ( s, n2, n3 );

 initial
 begin : main

   $display ( "Guia_0505 - Tests" );
   $display ( "" );
   $display ( "s = (a ^ b) usando apenas portas NAND" );
   $display ( "a b = s" );

   // Previsao:
   // 0 0 = 0
   // 0 1 = 1
   // 1 0 = 1
   // 1 1 = 0

   for ( i = 0; i < 4; i = i + 1 )
   begin
     {a,b} = i;
     #1;
     $display ( "%b %b = %b", a, b, s );
   end

 end

endmodule
