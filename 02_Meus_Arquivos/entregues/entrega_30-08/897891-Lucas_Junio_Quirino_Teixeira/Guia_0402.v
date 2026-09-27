/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 04

 Arquivo: Guia_0402.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0402;

 reg x;
 reg y;
 reg z;

 wire oa;
 wire sa;
 wire ob;
 wire sb;
 wire oc;
 wire sc;
 wire od;
 wire sd;
 wire oe;
 wire se;

 integer i;

 // a.) x . ( x' + y )' = x . y'
 assign oa = x & ~(~x | y);
 assign sa = x & ~y;

 // b.) ( x' + y' ) + ( x . y ) = 1
 assign ob = (~x | ~y) | (x & y);
 assign sb = 1'b1;

 // c.) ( x . y )' . ( x + y' ) = y'
 assign oc = ~(x & y) & (x | ~y);
 assign sc = ~y;

 // d.) ( x' . y )' + ( x + y' )' = 1
 assign od = ~(~x & y) | ~(x | ~y);
 assign sd = 1'b1;

 // e.) ( y + x' + z' ) . ( y' + x + z )' = y . x' . z'
 assign oe = (y | ~x | ~z) & ~(~y | x | z);
 assign se = y & ~x & ~z;

 initial
 begin : main

   $display ( "Guia_0402 - Tests" );

   $display ( "" );
   $display ( "a.) x . ( x' + y )' = x . y'" );
   $display ( "x y = original simplificada" );
   for ( i = 0; i < 4; i = i + 1 )
   begin
     {x,y} = i;
     #1;
     $display ( "%b %b =    %b          %b", x, y, oa, sa );
   end

   $display ( "" );
   $display ( "b.) ( x' + y' ) + ( x . y ) = 1" );
   $display ( "x y = original simplificada" );
   for ( i = 0; i < 4; i = i + 1 )
   begin
     {x,y} = i;
     #1;
     $display ( "%b %b =    %b          %b", x, y, ob, sb );
   end

   $display ( "" );
   $display ( "c.) ( x . y )' . ( x + y' ) = y'" );
   $display ( "x y = original simplificada" );
   for ( i = 0; i < 4; i = i + 1 )
   begin
     {x,y} = i;
     #1;
     $display ( "%b %b =    %b          %b", x, y, oc, sc );
   end

   $display ( "" );
   $display ( "d.) ( x' . y )' + ( x + y' )' = 1" );
   $display ( "x y = original simplificada" );
   for ( i = 0; i < 4; i = i + 1 )
   begin
     {x,y} = i;
     #1;
     $display ( "%b %b =    %b          %b", x, y, od, sd );
   end

   $display ( "" );
   $display ( "e.) ( y + x' + z' ) . ( y' + x + z )' = y . x' . z'" );
   $display ( "x y z = original simplificada" );
   for ( i = 0; i < 8; i = i + 1 )
   begin
     {x,y,z} = i;
     #1;
     $display ( "%b %b %b =    %b          %b", x, y, z, oe, se );
   end

 end

endmodule
