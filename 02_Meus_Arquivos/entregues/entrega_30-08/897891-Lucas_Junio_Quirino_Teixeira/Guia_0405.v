/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 04

 Arquivo: Guia_0405.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0405;

 reg x;
 reg y;
 reg w;
 reg z;

 wire sa_sop;
 wire sa_pos;
 wire sb_sop;
 wire sb_pos;
 wire sc_sop;
 wire sc_pos;
 wire sd_sop;
 wire sd_pos;
 wire se_sop;
 wire se_pos;

 integer i;

 // a.) SoP(1,3) e PoS(0,2)
 assign sa_sop = (~x &  y) |
                 ( x &  y);
 assign sa_pos = ( x |  y) &
                 (~x |  y);

 // b.) SoP(0,2,3) e PoS(1)
 assign sb_sop = (~x & ~y) |
                 ( x & ~y) |
                 ( x &  y);
 assign sb_pos = (x | ~y);

 // c.) SoP(0,1,2,6,7) e PoS(3,4,5)
 assign sc_sop = (~x & ~y & ~z) |
                 (~x & ~y &  z) |
                 (~x &  y & ~z) |
                 ( x &  y & ~z) |
                 ( x &  y &  z);
 assign sc_pos = ( x | ~y | ~z) &
                 (~x |  y |  z) &
                 (~x |  y | ~z);

 // d.) SoP(0,2,4,6) e PoS(1,3,5,7)
 assign sd_sop = (~x & ~y & ~z) |
                 (~x &  y & ~z) |
                 ( x & ~y & ~z) |
                 ( x &  y & ~z);
 assign sd_pos = ( x |  y | ~z) &
                 ( x | ~y | ~z) &
                 (~x |  y | ~z) &
                 (~x | ~y | ~z);

 // e.) SoP(0,1,4,5,6,10,11,12,15) e PoS(2,3,7,8,9,13,14)
 assign se_sop = (~x & ~y & ~w & ~z) |
                 (~x & ~y & ~w &  z) |
                 (~x &  y & ~w & ~z) |
                 (~x &  y & ~w &  z) |
                 (~x &  y &  w & ~z) |
                 ( x & ~y &  w & ~z) |
                 ( x & ~y &  w &  z) |
                 ( x &  y & ~w & ~z) |
                 ( x &  y &  w &  z);
 assign se_pos = ( x |  y | ~w |  z) &
                 ( x |  y | ~w | ~z) &
                 ( x | ~y | ~w | ~z) &
                 (~x |  y |  w |  z) &
                 (~x |  y |  w | ~z) &
                 (~x | ~y |  w | ~z) &
                 (~x | ~y | ~w |  z);

 initial
 begin : main

   $display ( "Guia_0405 - Tests" );

   $display ( "" );
   $display ( "a.) SoP(1,3) e PoS(0,2)" );
   $display ( "n x y = SoP PoS" );
   for ( i = 0; i < 4; i = i + 1 )
   begin
     {x,y} = i;
     #1;
     $display ( "%0d %b %b =  %b   %b", i, x, y, sa_sop, sa_pos );
   end

   $display ( "" );
   $display ( "b.) SoP(0,2,3) e PoS(1)" );
   $display ( "n x y = SoP PoS" );
   for ( i = 0; i < 4; i = i + 1 )
   begin
     {x,y} = i;
     #1;
     $display ( "%0d %b %b =  %b   %b", i, x, y, sb_sop, sb_pos );
   end

   $display ( "" );
   $display ( "c.) SoP(0,1,2,6,7) e PoS(3,4,5)" );
   $display ( "n x y z = SoP PoS" );
   for ( i = 0; i < 8; i = i + 1 )
   begin
     {x,y,z} = i;
     #1;
     $display ( "%0d %b %b %b =  %b   %b", i, x, y, z, sc_sop, sc_pos );
   end

   $display ( "" );
   $display ( "d.) SoP(0,2,4,6) e PoS(1,3,5,7)" );
   $display ( "n x y z = SoP PoS" );
   for ( i = 0; i < 8; i = i + 1 )
   begin
     {x,y,z} = i;
     #1;
     $display ( "%0d %b %b %b =  %b   %b", i, x, y, z, sd_sop, sd_pos );
   end

   $display ( "" );
   $display ( "e.) SoP(0,1,4,5,6,10,11,12,15) e PoS(2,3,7,8,9,13,14)" );
   $display ( "n  x y w z = SoP PoS" );
   for ( i = 0; i < 16; i = i + 1 )
   begin
     {x,y,w,z} = i;
     #1;
     $display ( "%2d %b %b %b %b =  %b   %b", i, x, y, w, z, se_sop, se_pos );
   end

 end

endmodule
