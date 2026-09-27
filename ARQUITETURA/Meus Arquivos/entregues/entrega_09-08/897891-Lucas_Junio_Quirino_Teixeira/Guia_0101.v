/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 01

 Arquivo: Guia_0101.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0101;

 integer x; 
 reg [9:0] b = 0; 

 initial
 begin : main
   $display ( "Guia_0101 - Tests" );
   
   x = 29;
   $display ( "x = %d" , x ); 
   b = x;
   $display ( "b = %10b" , b );
   
   x = 53; 
   $display ( "x = %d" , x);
   b = x;
   $display ( "b = %10b" , b);

   x = 761;
   $display ( "x = %d" , x);
   b = x;
   $display ( "b = %10b" , b);

   x = 213;
   $display ( "x = %d" , x);
   b = x;
   $display ( "b = %10b" , b);
   
   x = 365;
   $display ( "x = %d" , x);
   b = x;
   $display ( "b = %10b" , b);
 end

endmodule
