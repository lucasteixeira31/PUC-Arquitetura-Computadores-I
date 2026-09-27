/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 06

 Arquivo: Guia_0601.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0601;

 reg x;
 reg y;
 reg z;

 integer i;

 // Mintermos de tres variaveis
 wire m0 = (~x & ~y & ~z);
 wire m1 = (~x & ~y &  z);
 wire m2 = (~x &  y & ~z);
 wire m3 = (~x &  y &  z);
 wire m4 = ( x & ~y & ~z);
 wire m5 = ( x & ~y &  z);
 wire m6 = ( x &  y & ~z);
 wire m7 = ( x &  y &  z);

 // ------------------------------------------------------------
 // a) f(x,y,z) = Sum m(1,6,7)
 // Simplificada: f = x.y + x'.y'.z
 // ------------------------------------------------------------
 wire fa_original     = (m1 | m6 | m7);
 wire fa_simplificada = ((x & y) | (~x & ~y & z));

 // ------------------------------------------------------------
 // b) f(x,y,z) = Sum m(0,2,6)
 // Simplificada: f = x'.z' + y.z'
 // ------------------------------------------------------------
 wire fb_original     = (m0 | m2 | m6);
 wire fb_simplificada = ((~x & ~z) | (y & ~z));

 // ------------------------------------------------------------
 // c) f(x,y,z) = Sum m(1,3,6,7)
 // Simplificada: f = x'.z + x.y
 // ------------------------------------------------------------
 wire fc_original     = (m1 | m3 | m6 | m7);
 wire fc_simplificada = ((~x & z) | (x & y));

 // ------------------------------------------------------------
 // d) f(x,y,z) = Sum m(1,2,4,6)
 // Simplificada: f = y.z' + x.z' + x'.y'.z
 // ------------------------------------------------------------
 wire fd_original     = (m1 | m2 | m4 | m6);
 wire fd_simplificada = ((y & ~z) | (x & ~z) | (~x & ~y & z));

 // ------------------------------------------------------------
 // e) f(x,y,z) = Sum m(0,1,5,7)
 // Simplificada: f = x'.y' + x.z
 // ------------------------------------------------------------
 wire fe_original     = (m0 | m1 | m5 | m7);
 wire fe_simplificada = ((~x & ~y) | (x & z));

 initial
 begin : main

   $display ( "Guia_0601 - Tests" );
   $display ( "" );

   $display ( "Simplificacoes:" );
   $display ( "a) Sum m(1,6,7)   = x.y + x'.y'.z" );
   $display ( "b) Sum m(0,2,6)   = x'.z' + y.z'" );
   $display ( "c) Sum m(1,3,6,7) = x'.z + x.y" );
   $display ( "d) Sum m(1,2,4,6) = y.z' + x.z' + x'.y'.z" );
   $display ( "e) Sum m(0,1,5,7) = x'.y' + x.z" );
   $display ( "" );

   $display ( "        a     b     c     d     e" );
   $display ( "x y z | O S | O S | O S | O S | O S" );
   $display ( "-------------------------------------" );

   for ( i = 0; i < 8; i = i + 1 )
   begin
     {x,y,z} = i;
     #1;

     $display (
       "%b %b %b | %b %b | %b %b | %b %b | %b %b | %b %b",
       x, y, z,
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
