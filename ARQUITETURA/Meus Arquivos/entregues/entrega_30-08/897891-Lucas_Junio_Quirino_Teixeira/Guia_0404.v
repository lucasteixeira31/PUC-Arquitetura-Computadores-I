/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 04

 Arquivo: Guia_0404.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0404;

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

 // a.) F(x,y,z) = Produto M(1,2,4,6)
 assign sa = ( x |  y | ~z) &
             ( x | ~y |  z) &
             (~x |  y |  z) &
             (~x | ~y |  z);

 // b.) F(x,y,z) = Produto M(0,2,3,7)
 assign sb = ( x |  y |  z) &
             ( x | ~y |  z) &
             ( x | ~y | ~z) &
             (~x | ~y | ~z);

 // c.) F(x,y,w,z) = Produto M(0,1,2,6,7,8,11,13)
 assign sc = ( x |  y |  w |  z) &
             ( x |  y |  w | ~z) &
             ( x |  y | ~w |  z) &
             ( x | ~y | ~w |  z) &
             ( x | ~y | ~w | ~z) &
             (~x |  y |  w |  z) &
             (~x |  y | ~w | ~z) &
             (~x | ~y |  w | ~z);

 // d.) F(x,y,w,z) = Produto M(1,2,4,6,8,12,14)
 assign sd = ( x |  y |  w | ~z) &
             ( x |  y | ~w |  z) &
             ( x | ~y |  w |  z) &
             ( x | ~y | ~w |  z) &
             (~x |  y |  w |  z) &
             (~x | ~y |  w |  z) &
             (~x | ~y | ~w |  z);

 // e.) F(x,y,w,z) = Produto M(0,1,2,4,7,12,15)
 assign se = ( x |  y |  w |  z) &
             ( x |  y |  w | ~z) &
             ( x |  y | ~w |  z) &
             ( x | ~y |  w |  z) &
             ( x | ~y | ~w | ~z) &
             (~x | ~y |  w |  z) &
             (~x | ~y | ~w | ~z);

 initial
 begin : main

   $display ( "Guia_0404 - Tests" );

   $display ( "" );
   $display ( "a.) F(x,y,z) = Produto M(1,2,4,6)" );
   $display ( "M x y z = F" );
   for ( i = 0; i < 8; i = i + 1 )
   begin
     {x,y,z} = i;
     #1;
     $display ( "%0d %b %b %b = %b", i, x, y, z, sa );
   end

   $display ( "" );
   $display ( "b.) F(x,y,z) = Produto M(0,2,3,7)" );
   $display ( "M x y z = F" );
   for ( i = 0; i < 8; i = i + 1 )
   begin
     {x,y,z} = i;
     #1;
     $display ( "%0d %b %b %b = %b", i, x, y, z, sb );
   end

   $display ( "" );
   $display ( "c.) F(x,y,w,z) = Produto M(0,1,2,6,7,8,11,13)" );
   $display ( "M  x y w z = F" );
   for ( i = 0; i < 16; i = i + 1 )
   begin
     {x,y,w,z} = i;
     #1;
     $display ( "%2d %b %b %b %b = %b", i, x, y, w, z, sc );
   end

   $display ( "" );
   $display ( "d.) F(x,y,w,z) = Produto M(1,2,4,6,8,12,14)" );
   $display ( "M  x y w z = F" );
   for ( i = 0; i < 16; i = i + 1 )
   begin
     {x,y,w,z} = i;
     #1;
     $display ( "%2d %b %b %b %b = %b", i, x, y, w, z, sd );
   end

   $display ( "" );
   $display ( "e.) F(x,y,w,z) = Produto M(0,1,2,4,7,12,15)" );
   $display ( "M  x y w z = F" );
   for ( i = 0; i < 16; i = i + 1 )
   begin
     {x,y,w,z} = i;
     #1;
     $display ( "%2d %b %b %b %b = %b", i, x, y, w, z, se );
   end

 end

endmodule
