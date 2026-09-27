/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 06

 Arquivo: Guia_0602.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0602;

 reg X;
 reg Y;
 reg Z;

 integer i;

 // Maxtermos de tres variaveis
 // Cada Mj vale 0 apenas na combinacao correspondente ao indice j.
 wire M0 = ( X |  Y |  Z);
 wire M1 = ( X |  Y | ~Z);
 wire M2 = ( X | ~Y |  Z);
 wire M3 = ( X | ~Y | ~Z);
 wire M4 = (~X |  Y |  Z);
 wire M5 = (~X |  Y | ~Z);
 wire M6 = (~X | ~Y |  Z);
 wire M7 = (~X | ~Y | ~Z);

 // ------------------------------------------------------------
 // a) F(X,Y,Z) = Pi M(0,4,5)
 // Simplificada: F = (Y + Z).(Y + X')
 // ------------------------------------------------------------
 wire Fa_original     = (M0 & M4 & M5);
 wire Fa_simplificada = ((Y | Z) & (Y | ~X));

 // ------------------------------------------------------------
 // b) F(X,Y,Z) = Pi M(0,1,5)
 // Simplificada: F = (X + Y).(Y + Z')
 // ------------------------------------------------------------
 wire Fb_original     = (M0 & M1 & M5);
 wire Fb_simplificada = ((X | Y) & (Y | ~Z));

 // ------------------------------------------------------------
 // c) F(X,Y,Z) = Pi M(1,2,3,6)
 // Simplificada: F = (X + Z').(Z + Y')
 // ------------------------------------------------------------
 wire Fc_original     = (M1 & M2 & M3 & M6);
 wire Fc_simplificada = ((X | ~Z) & (Z | ~Y));

 // ------------------------------------------------------------
 // d) F(X,Y,Z) = Pi M(0,1,3,5)
 // Simplificada: F = (X + Y).(X + Z').(Y + Z')
 // ------------------------------------------------------------
 wire Fd_original     = (M0 & M1 & M3 & M5);
 wire Fd_simplificada = ((X | Y) & (X | ~Z) & (Y | ~Z));

 // ------------------------------------------------------------
 // e) F(X,Y,Z) = Pi M(0,1,6,7)
 // Simplificada: F = (X + Y).(X' + Y')
 // ------------------------------------------------------------
 wire Fe_original     = (M0 & M1 & M6 & M7);
 wire Fe_simplificada = ((X | Y) & (~X | ~Y));

 initial
 begin : main

   $display ( "Guia_0602 - Tests" );
   $display ( "" );

   $display ( "Simplificacoes:" );
   $display ( "a) Pi M(0,4,5)   = (Y + Z).(Y + X')" );
   $display ( "b) Pi M(0,1,5)   = (X + Y).(Y + Z')" );
   $display ( "c) Pi M(1,2,3,6) = (X + Z').(Z + Y')" );
   $display ( "d) Pi M(0,1,3,5) = (X + Y).(X + Z').(Y + Z')" );
   $display ( "e) Pi M(0,1,6,7) = (X + Y).(X' + Y')" );
   $display ( "" );

   $display ( "        a     b     c     d     e" );
   $display ( "X Y Z | O S | O S | O S | O S | O S" );
   $display ( "-------------------------------------" );

   for ( i = 0; i < 8; i = i + 1 )
   begin
     {X,Y,Z} = i;
     #1;

     $display (
       "%b %b %b | %b %b | %b %b | %b %b | %b %b | %b %b",
       X, Y, Z,
       Fa_original, Fa_simplificada,
       Fb_original, Fb_simplificada,
       Fc_original, Fc_simplificada,
       Fd_original, Fd_simplificada,
       Fe_original, Fe_simplificada
     );
   end

   $display ( "" );
   $display ( "O = forma original por maxtermos" );
   $display ( "S = forma simplificada" );

 end

endmodule
