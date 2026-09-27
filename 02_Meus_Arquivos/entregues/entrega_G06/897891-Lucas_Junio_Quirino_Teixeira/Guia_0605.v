/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 06

 Arquivo: Guia_0605.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0605;

 reg x;
 reg y;
 reg z;

 integer i;

 // ------------------------------------------------------------
 // Circuito original da questao 05
 //
 // w8  = y'
 // w9  = x'
 // w5  = w8 + w9
 // w3  = w5'
 //
 // w6  = x.y
 // w4  = w6'
 //
 // w1  = w3.w4
 //
 // w10 = y.z
 // w11 = x'
 // w7  = w10 + w11
 // w2  = w7'
 //
 // s = w1 + w2
 // ------------------------------------------------------------

 wire w8;
 wire w9;
 wire w5;
 wire w3;

 wire w6;
 wire w4;

 wire w1;

 wire w10;
 wire w11;
 wire w7;
 wire w2;

 wire s_original;
 wire s_simplificada;

 not NOT1 ( w8,  y );
 not NOT2 ( w9,  x );
 or  OR1  ( w5,  w8, w9 );
 not NOT3 ( w3,  w5 );

 and AND1 ( w6,  x, y );
 not NOT4 ( w4,  w6 );

 and AND2 ( w1,  w3, w4 );

 and AND3 ( w10, y, z );
 not NOT5 ( w11, x );
 or  OR2  ( w7,  w10, w11 );
 not NOT6 ( w2,  w7 );

 or  OR3  ( s_original, w1, w2 );

 // ------------------------------------------------------------
 // Simplificacao pelo mapa de Veitch-Karnaugh:
 //
 // s(x,y,z) = Sum m(4,5,6)
 //
 // s = x.y' + x.z'
 //   = x.(y' + z')
 // ------------------------------------------------------------

 assign s_simplificada = (x & ~y) | (x & ~z);

 initial
 begin : main

   $display ( "Guia_0605 - Tests" );
   $display ( "" );

   $display ( "Circuito original:" );
   $display ( "s = w1 + w2" );
   $display ( "" );

   $display ( "Forma canonica:" );
   $display ( "s(x,y,z) = Sum m(4,5,6)" );
   $display ( "" );

   $display ( "Forma simplificada:" );
   $display ( "s = x.y' + x.z'" );
   $display ( "s = x.(y' + z')" );
   $display ( "" );

   $display ( "x y z | Original Simplificada" );
   $display ( "-----------------------------" );

   for ( i = 0; i < 8; i = i + 1 )
   begin
     {x,y,z} = i;
     #1;

     $display (
       "%b %b %b |    %b         %b",
       x, y, z,
       s_original,
       s_simplificada
     );
   end

   $display ( "" );
   $display ( "Mintermos esperados com s = 1: 4, 5 e 6" );

 end

endmodule
