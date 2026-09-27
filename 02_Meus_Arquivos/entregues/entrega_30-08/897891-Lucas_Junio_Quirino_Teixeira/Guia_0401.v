/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 04

 Arquivo: Guia_0401.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0401;

 reg x;
 reg y;
 reg z;

 wire sa;
 wire sb;
 wire sc;
 wire sd;
 wire se;

 integer i;

 // a.) x . ( y + z' )'
 assign sa = x & ~(y | ~z);

 // b.) ( x + y' )' . z
 assign sb = ~(x | ~y) & z;

 // c.) ( x' . y )' . z'
 assign sc = ~(~x & y) & ~z;

 // d.) ( x' . y )' . z
 assign sd = ~(~x & y) & z;

 // e.) ( x' + y' ) . ( y + z' )'
 assign se = (~x | ~y) & ~(y | ~z);

 initial
 begin : main

   $display ( "Guia_0401 - Tests" );

   $display ( "" );
   $display ( "a.) x . ( y + z' )'" );
   $display ( "x y z = s" );
   for ( i = 0; i < 8; i = i + 1 )
   begin
     {x,y,z} = i;
     #1;
     $display ( "%b %b %b = %b", x, y, z, sa );
   end

   $display ( "" );
   $display ( "b.) ( x + y' )' . z" );
   $display ( "x y z = s" );
   for ( i = 0; i < 8; i = i + 1 )
   begin
     {x,y,z} = i;
     #1;
     $display ( "%b %b %b = %b", x, y, z, sb );
   end

   $display ( "" );
   $display ( "c.) ( x' . y )' . z'" );
   $display ( "x y z = s" );
   for ( i = 0; i < 8; i = i + 1 )
   begin
     {x,y,z} = i;
     #1;
     $display ( "%b %b %b = %b", x, y, z, sc );
   end

   $display ( "" );
   $display ( "d.) ( x' . y )' . z" );
   $display ( "x y z = s" );
   for ( i = 0; i < 8; i = i + 1 )
   begin
     {x,y,z} = i;
     #1;
     $display ( "%b %b %b = %b", x, y, z, sd );
   end

   $display ( "" );
   $display ( "e.) ( x' + y' ) . ( y + z' )'" );
   $display ( "x y z = s" );
   for ( i = 0; i < 8; i = i + 1 )
   begin
     {x,y,z} = i;
     #1;
     $display ( "%b %b %b = %b", x, y, z, se );
   end

 end

endmodule
