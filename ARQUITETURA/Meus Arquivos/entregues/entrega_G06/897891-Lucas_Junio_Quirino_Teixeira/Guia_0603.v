/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 06

 Arquivo: Guia_0603.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0603;

 reg x;
 reg y;
 reg w;
 reg z;

 integer i;

 // Mintermos de quatro variaveis
 wire m0  = (~x & ~y & ~w & ~z);
 wire m1  = (~x & ~y & ~w &  z);
 wire m2  = (~x & ~y &  w & ~z);
 wire m3  = (~x & ~y &  w &  z);
 wire m4  = (~x &  y & ~w & ~z);
 wire m5  = (~x &  y & ~w &  z);
 wire m6  = (~x &  y &  w & ~z);
 wire m7  = (~x &  y &  w &  z);
 wire m8  = ( x & ~y & ~w & ~z);
 wire m9  = ( x & ~y & ~w &  z);
 wire m10 = ( x & ~y &  w & ~z);
 wire m11 = ( x & ~y &  w &  z);
 wire m12 = ( x &  y & ~w & ~z);
 wire m13 = ( x &  y & ~w &  z);
 wire m14 = ( x &  y &  w & ~z);
 wire m15 = ( x &  y &  w &  z);

 // ------------------------------------------------------------
 // a) f(x,y,w,z) = Sum m(1,2,5,8,12,13)
 // Simplificada:
 // f = y.z.w' + x.w'.z' + x'.z.w' + x'.y'.w.z'
 // ------------------------------------------------------------
 wire fa_original =
   (m1 | m2 | m5 | m8 | m12 | m13);

 wire fa_simplificada =
   ((y & z & ~w) |
    (x & ~w & ~z) |
    (~x & z & ~w) |
    (~x & ~y & w & ~z));

 // ------------------------------------------------------------
 // b) f(x,y,w,z) = Sum m(0,1,3,5,9,13,15)
 // Simplificada:
 // f = z.w' + x.y.z + x'.y'.z + x'.y'.w'
 // ------------------------------------------------------------
 wire fb_original =
   (m0 | m1 | m3 | m5 | m9 | m13 | m15);

 wire fb_simplificada =
   ((z & ~w) |
    (x & y & z) |
    (~x & ~y & z) |
    (~x & ~y & ~w));

 // ------------------------------------------------------------
 // c) f(x,y,w,z) = Sum m(0,1,2,7,10,11,13,15)
 // Simplificada:
 // f = y.w.z + x.y.z + x.y'.w + y'.w.z' + x'.y'.w'
 // ------------------------------------------------------------
 wire fc_original =
   (m0 | m1 | m2 | m7 | m10 | m11 | m13 | m15);

 wire fc_simplificada =
   ((y & w & z) |
    (x & y & z) |
    (x & ~y & w) |
    (~y & w & ~z) |
    (~x & ~y & ~w));

 // ------------------------------------------------------------
 // d) f(x,y,w,z) = Sum m(2,3,5,7,11,12,15)
 // Simplificada:
 // f = w.z + x'.y.z + x'.y'.w + x.y.w'.z'
 // ------------------------------------------------------------
 wire fd_original =
   (m2 | m3 | m5 | m7 | m11 | m12 | m15);

 wire fd_simplificada =
   ((w & z) |
    (~x & y & z) |
    (~x & ~y & w) |
    (x & y & ~w & ~z));

 // ------------------------------------------------------------
 // e) f(x,y,w,z) = Sum m(0,1,3,5,7,8,11,13)
 // Simplificada:
 // f = x'.z + y'.w.z + y.w'.z + y'.w'.z'
 // ------------------------------------------------------------
 wire fe_original =
   (m0 | m1 | m3 | m5 | m7 | m8 | m11 | m13);

 wire fe_simplificada =
   ((~x & z) |
    (~y & w & z) |
    (y & ~w & z) |
    (~y & ~w & ~z));

 initial
 begin : main

   $display ( "Guia_0603 - Tests" );
   $display ( "" );

   $display ( "Simplificacoes:" );
   $display ( "a) Sum m(1,2,5,8,12,13)" );
   $display ( "   = y.z.w' + x.w'.z' + x'.z.w' + x'.y'.w.z'" );
   $display ( "b) Sum m(0,1,3,5,9,13,15)" );
   $display ( "   = z.w' + x.y.z + x'.y'.z + x'.y'.w'" );
   $display ( "c) Sum m(0,1,2,7,10,11,13,15)" );
   $display ( "   = y.w.z + x.y.z + x.y'.w + y'.w.z' + x'.y'.w'" );
   $display ( "d) Sum m(2,3,5,7,11,12,15)" );
   $display ( "   = w.z + x'.y.z + x'.y'.w + x.y.w'.z'" );
   $display ( "e) Sum m(0,1,3,5,7,8,11,13)" );
   $display ( "   = x'.z + y'.w.z + y.w'.z + y'.w'.z'" );
   $display ( "" );

   $display ( "          a     b     c     d     e" );
   $display ( "x y w z | O S | O S | O S | O S | O S" );
   $display ( "---------------------------------------" );

   for ( i = 0; i < 16; i = i + 1 )
   begin
     {x,y,w,z} = i;
     #1;

     $display (
       "%b %b %b %b | %b %b | %b %b | %b %b | %b %b | %b %b",
       x, y, w, z,
       fa_original, fa_simplificada,
       fb_original, fb_simplificada,
       fc_original, fc_simplificada,
       fd_original, fd_simplificada,
       fe_original, fe_simplificada
     );
   end

   $display ( "" );
   $display ( "O = forma original por mintermos" );
   $display ( "S = forma simplificada" );

 end

endmodule
