/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 02

 Arquivo: Guia_0201.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0201;

 real x;
 real power2;
 integer y;
 reg [7:0] b;

 initial
 begin : main

   $display ( "Guia_0201 - Tests" );

   // a.) 0.00101(2) = X(10)

   x = 0.0;
   power2 = 1.0;
   y = 7;
   b = 8'b00101000;

   while ( y >= 0 )
   begin
     power2 = power2 / 2.0;
     if ( b[y] == 1 )
       x = x + power2;
     y = y - 1;
   end

   $display ( "a.) 0.00101(2) = %f(10)" , x );


   // b.) 0.01011(2) = X(10)

   x = 0.0;
   power2 = 1.0;
   y = 7;
   b = 8'b01011000;

   while ( y >= 0 )
   begin
     power2 = power2 / 2.0;
     if ( b[y] == 1 )
       x = x + power2;
     y = y - 1;
   end

   $display ( "b.) 0.01011(2) = %f(10)" , x );


   // c.) 0.10111(2) = X(10)

   x = 0.0;
   power2 = 1.0;
   y = 7;
   b = 8'b10111000;

   while ( y >= 0 )
   begin
     power2 = power2 / 2.0;
     if ( b[y] == 1 )
       x = x + power2;
     y = y - 1;
   end

   $display ( "c.) 0.10111(2) = %f(10)" , x );


   // d.) 1.01101(2) = X(10)

   x = 1.0;
   power2 = 1.0;
   y = 7;
   b = 8'b01101000;

   while ( y >= 0 )
   begin
     power2 = power2 / 2.0;
     if ( b[y] == 1 )
       x = x + power2;
     y = y - 1;
   end

   $display ( "d.) 1.01101(2) = %f(10)" , x );


   // e.) 10.11001(2) = X(10)

   x = 2.0;
   power2 = 1.0;
   y = 7;
   b = 8'b11001000;

   while ( y >= 0 )
   begin
     power2 = power2 / 2.0;
     if ( b[y] == 1 )
       x = x + power2;
     y = y - 1;
   end

   $display ( "e.) 10.11001(2) = %f(10)" , x );

 end

endmodule
