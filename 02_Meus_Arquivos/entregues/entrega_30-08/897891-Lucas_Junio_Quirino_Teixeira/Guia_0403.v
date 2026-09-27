/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 04

 Arquivo: Guia_0403.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0403;

 reg x;
 reg y;
 reg w;
 reg z;

 wire sa;
 wire sb;
 wire sc;
 wire sd;
 wire se;

 integer i;

 // a.) f(x,y,z) = Somatorio m(1,3,4,7)
 assign sa = (~x & ~y &  z) |
             (~x &  y &  z) |
             ( x & ~y & ~z) |
             ( x &  y &  z);

 // b.) f(x,y,z) = Somatorio m(2,3,5,6)
 assign sb = (~x &  y & ~z) |
             (~x &  y &  z) |
             ( x & ~y &  z) |
             ( x &  y & ~z);

 // c.) f(x,y,w,z) = Somatorio m(1,2,4,6,7,13,15)
 assign sc = (~x & ~y & ~w &  z) |
             (~x & ~y &  w & ~z) |
             (~x &  y & ~w & ~z) |
             (~x &  y &  w & ~z) |
             (~x &  y &  w &  z) |
             ( x &  y & ~w &  z) |
             ( x &  y &  w &  z);

 // d.) f(x,y,w,z) = Somatorio m(0,2,4,6,12,13,14)
 assign sd = (~x & ~y & ~w & ~z) |
             (~x & ~y &  w & ~z) |
             (~x &  y & ~w & ~z) |
             (~x &  y &  w & ~z) |
             ( x &  y & ~w & ~z) |
             ( x &  y & ~w &  z) |
             ( x &  y &  w & ~z);

 // e.) f(x,y,w,z) = Somatorio m(0,1,8,9,12,15)
 assign se = (~x & ~y & ~w & ~z) |
             (~x & ~y & ~w &  z) |
             ( x & ~y & ~w & ~z) |
             ( x & ~y & ~w &  z) |
             ( x &  y & ~w & ~z) |
             ( x &  y &  w &  z);

 initial
 begin : main

   $display ( "Guia_0403 - Tests" );

   $display ( "" );
   $display ( "a.) f(x,y,z) = Somatorio m(1,3,4,7)" );
   $display ( "m x y z = f" );
   for ( i = 0; i < 8; i = i + 1 )
   begin
     {x,y,z} = i;
     #1;
     $display ( "%0d %b %b %b = %b", i, x, y, z, sa );
   end

   $display ( "" );
   $display ( "b.) f(x,y,z) = Somatorio m(2,3,5,6)" );
   $display ( "m x y z = f" );
   for ( i = 0; i < 8; i = i + 1 )
   begin
     {x,y,z} = i;
     #1;
     $display ( "%0d %b %b %b = %b", i, x, y, z, sb );
   end

   $display ( "" );
   $display ( "c.) f(x,y,w,z) = Somatorio m(1,2,4,6,7,13,15)" );
   $display ( "m  x y w z = f" );
   for ( i = 0; i < 16; i = i + 1 )
   begin
     {x,y,w,z} = i;
     #1;
     $display ( "%2d %b %b %b %b = %b", i, x, y, w, z, sc );
   end

   $display ( "" );
   $display ( "d.) f(x,y,w,z) = Somatorio m(0,2,4,6,12,13,14)" );
   $display ( "m  x y w z = f" );
   for ( i = 0; i < 16; i = i + 1 )
   begin
     {x,y,w,z} = i;
     #1;
     $display ( "%2d %b %b %b %b = %b", i, x, y, w, z, sd );
   end

   $display ( "" );
   $display ( "e.) f(x,y,w,z) = Somatorio m(0,1,8,9,12,15)" );
   $display ( "m  x y w z = f" );
   for ( i = 0; i < 16; i = i + 1 )
   begin
     {x,y,w,z} = i;
     #1;
     $display ( "%2d %b %b %b %b = %b", i, x, y, w, z, se );
   end

 end

endmodule
