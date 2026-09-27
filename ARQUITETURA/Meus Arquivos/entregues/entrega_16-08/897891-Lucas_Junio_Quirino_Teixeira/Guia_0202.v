/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 02

 Arquivo: Guia_0202.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0202;

 real x;
 integer y;
 reg [7:0] b;

 initial
 begin : main

   $display ( "Guia_0202 - Tests" );


   // a.) 0.125000(10) = X(2)

   x = 0.125;
   y = 7;
   b = 0;

   while ( x > 0 && y >= 0 )
   begin
     if ( x*2.0 >= 1.0 )
     begin
       b[y] = 1;
       x = x*2.0 - 1.0;
     end
     else
     begin
       b[y] = 0;
       x = x*2.0;
     end
     y = y - 1;
   end

   $display ( "a.) 0.125000(10) = 0.%3b(2)" , b[7:5] );


   // b.) 1.875000(10) = X(2)

   x = 0.875;
   y = 7;
   b = 0;

   while ( x > 0 && y >= 0 )
   begin
     if ( x*2.0 >= 1.0 )
     begin
       b[y] = 1;
       x = x*2.0 - 1.0;
     end
     else
     begin
       b[y] = 0;
       x = x*2.0;
     end
     y = y - 1;
   end

   $display ( "b.) 1.875000(10) = 1.%3b(2)" , b[7:5] );


   // c.) 2.750000(10) = X(2)

   x = 0.750;
   y = 7;
   b = 0;

   while ( x > 0 && y >= 0 )
   begin
     if ( x*2.0 >= 1.0 )
     begin
       b[y] = 1;
       x = x*2.0 - 1.0;
     end
     else
     begin
       b[y] = 0;
       x = x*2.0;
     end
     y = y - 1;
   end

   $display ( "c.) 2.750000(10) = 10.%2b(2)" , b[7:6] );


   // d.) 4.250000(10) = X(2)

   x = 0.250;
   y = 7;
   b = 0;

   while ( x > 0 && y >= 0 )
   begin
     if ( x*2.0 >= 1.0 )
     begin
       b[y] = 1;
       x = x*2.0 - 1.0;
     end
     else
     begin
       b[y] = 0;
       x = x*2.0;
     end
     y = y - 1;
   end

   $display ( "d.) 4.250000(10) = 100.%2b(2)" , b[7:6] );


   // e.) 5.625000(10) = X(2)

   x = 0.625;
   y = 7;
   b = 0;

   while ( x > 0 && y >= 0 )
   begin
     if ( x*2.0 >= 1.0 )
     begin
       b[y] = 1;
       x = x*2.0 - 1.0;
     end
     else
     begin
       b[y] = 0;
       x = x*2.0;
     end
     y = y - 1;
   end

   $display ( "e.) 5.625000(10) = 101.%3b(2)" , b[7:5] );

 end

endmodule
