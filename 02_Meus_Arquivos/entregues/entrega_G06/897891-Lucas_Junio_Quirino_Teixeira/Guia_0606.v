/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 06

 Arquivo: Guia_0606.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0606;

 reg x;
 reg y;
 reg w;
 reg z;

 integer i;

 // ------------------------------------------------------------
 // Circuito original da questao 06
 //
 // w8  = y'
 // w9  = x'
 // w5  = w8 + w + w9
 // w3  = w5'
 //
 // w10 = w'
 // w6  = x.y.w'
 // w4  = w6'
 //
 // w1  = w3.w4
 //
 // w11 = y.w.z
 // w12 = x'
 // w7  = w11 + w12
 // w2  = w7'
 //
 // s = w1 + w2
 // ------------------------------------------------------------

 wire w8;
 wire w9;
 wire w5;
 wire w3;

 wire w10;
 wire w6;
 wire w4;

 wire w1;

 wire w11;
 wire w12;
 wire w7;
 wire w2;

 wire s_original;
 wire s_simplificada;

 not NOT1 ( w8,  y );
 not NOT2 ( w9,  x );
 or  OR1  ( w5,  w8, w, w9 );
 not NOT3 ( w3,  w5 );

 not NOT4 ( w10, w );
 and AND1 ( w6,  x, y, w10 );
 not NOT5 ( w4,  w6 );

 and AND2 ( w1,  w3, w4 );

 and AND3 ( w11, y, w, z );
 not NOT6 ( w12, x );
 or  OR2  ( w7,  w11, w12 );
 not NOT7 ( w2,  w7 );

 or  OR3  ( s_original, w1, w2 );

 // ------------------------------------------------------------
 // Simplificacao pelo mapa de Veitch-Karnaugh:
 //
 // s(x,y,w,z) = Pi M(0,1,2,3,4,5,6,7,15)
 //
 // s = x.(y' + w' + z')
 // ------------------------------------------------------------

 assign s_simplificada = x & (~y | ~w | ~z);

 initial
 begin : main

   $display ( "Guia_0606 - Tests" );
   $display ( "" );

   $display ( "Circuito original:" );
   $display ( "s = w1 + w2" );
   $display ( "" );

   $display ( "Forma canonica:" );
   $display ( "s(x,y,w,z) = Pi M(0,1,2,3,4,5,6,7,15)" );
   $display ( "" );

   $display ( "Forma simplificada:" );
   $display ( "s = x.(y' + w' + z')" );
   $display ( "" );

   $display ( "x y w z | Original Simplificada" );
   $display ( "-------------------------------" );

   for ( i = 0; i < 16; i = i + 1 )
   begin
     {x,y,w,z} = i;
     #1;

     $display (
       "%b %b %b %b |    %b         %b",
       x, y, w, z,
       s_original,
       s_simplificada
     );
   end

   $display ( "" );
   $display ( "Maxtermos esperados com s = 0: 0,1,2,3,4,5,6,7,15" );

 end

endmodule
