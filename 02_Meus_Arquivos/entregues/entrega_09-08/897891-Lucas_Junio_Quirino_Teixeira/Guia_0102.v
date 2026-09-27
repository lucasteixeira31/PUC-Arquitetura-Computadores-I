/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 01

 Arquivo: Guia_0101.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/


module Guia_0102;

 integer x;
 reg [7:0] b = 0; 

 initial
 begin : main
   $display ( " Guia_0102 - Tests");
   
   b = 6'b010011;
   $display ( "b = %6b" , b );
   x = b;
   $display ( "x = %d" , x );

   b = 6'b010100;
   $display ( "b = %6b" , b );	
   x = b;
   $display ( "x = %d" , x );

   b = 6'b010111;
   $display ( "b = %6b" , b );
   x = b;
   $display ( "x = %d" , x );

   b = 6'b101111;
   $display ( "b = %6b", b );
   x = b;
   $display ( "x = %d" , x );
 
   b = 6'b111100;
   $display ( "b = %6b" , b );
   x = b;
   $display ( "x = %d" , x);

 end

endmodule
