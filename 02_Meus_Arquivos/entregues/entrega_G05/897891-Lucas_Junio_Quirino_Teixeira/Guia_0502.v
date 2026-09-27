/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 05

 Arquivo: Guia_0502.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0502;

 reg a;
 reg b;

 wire not_b;
 wire nor_ab;
 wire s;

 integer i;

 // Expressao: (a | ~b)
 // Implementacao usando apenas portas nativas NOR
 nor NOR1 ( not_b, b, b );
 nor NOR2 ( nor_ab, a, not_b );
 nor NOR3 ( s, nor_ab, nor_ab );

 initial
 begin : main

   $display ( "Guia_0502 - Tests" );
   $display ( "" );
   $display ( "s = (a | ~b) usando apenas portas NOR" );
   $display ( "a b = s" );

   // Previsao:
   // 0 0 = 1
   // 0 1 = 0
   // 1 0 = 1
   // 1 1 = 1

   for ( i = 0; i < 4; i = i + 1 )
   begin
     {a,b} = i;
     #1;
     $display ( "%b %b = %b", a, b, s );
   end

 end

endmodule
