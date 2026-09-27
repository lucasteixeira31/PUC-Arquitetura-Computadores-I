/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 01

 Arquivo: Guia_0103.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0103;

 integer x;
 reg [9:0] b = 0;

 initial
 begin : main

   integer q1;
   integer q2;
   integer q3;

   $display ( "Guia_0103 - Tests" );

   x = 45;
   b = x;

   q1 = b % 4;
   b = b / 4;

   q2 = b % 4; 
   b = b / 4;

   q3 = b % 4;

   $display ( "x = %d" , x );
   $display ( "b = %0d%0d%0d" , q3 , q2 , q1 );

   x = 67;
   $display ( "x = %d" , x );
   b = x;
   $display ( "b = %o" , b );
   
   x = 79;
   $display ( "x = %d" , x );
   b = x; 
   $display ( "b = %X" , b );

   x = 153;
   $display ( "x = %d" , x );
   b = x;
   $display ( "b = %X" , b );

   x = 741;
   $display ( "x = %d" , x ); 
   b = x;
   $display ( "b = %X" , b );
 end

endmodule
