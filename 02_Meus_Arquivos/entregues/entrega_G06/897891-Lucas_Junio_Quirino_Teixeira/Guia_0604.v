/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 06

 Arquivo: Guia_0604.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0604;

 reg X;
 reg Y;
 reg W;
 reg Z;

 integer i;

 // Maxtermos de quatro variaveis
 // Cada Mj vale 0 apenas na combinacao correspondente ao indice j.
 wire M0  = ( X |  Y |  W |  Z);
 wire M1  = ( X |  Y |  W | ~Z);
 wire M2  = ( X |  Y | ~W |  Z);
 wire M3  = ( X |  Y | ~W | ~Z);
 wire M4  = ( X | ~Y |  W |  Z);
 wire M5  = ( X | ~Y |  W | ~Z);
 wire M6  = ( X | ~Y | ~W |  Z);
 wire M7  = ( X | ~Y | ~W | ~Z);
 wire M8  = (~X |  Y |  W |  Z);
 wire M9  = (~X |  Y |  W | ~Z);
 wire M10 = (~X |  Y | ~W |  Z);
 wire M11 = (~X |  Y | ~W | ~Z);
 wire M12 = (~X | ~Y |  W |  Z);
 wire M13 = (~X | ~Y |  W | ~Z);
 wire M14 = (~X | ~Y | ~W |  Z);
 wire M15 = (~X | ~Y | ~W | ~Z);

 // ------------------------------------------------------------
 // a) F(X,Y,W,Z) = Pi M(2,6,7,14)
 // Simplificada:
 // F = (X + Z + W').(X + W' + Y').(Z + W' + Y')
 // ------------------------------------------------------------
 wire Fa_original =
   (M2 & M6 & M7 & M14);

 wire Fa_simplificada =
   ((X | Z | ~W) &
    (X | ~W | ~Y) &
    (Z | ~W | ~Y));

 // ------------------------------------------------------------
 // b) F(X,Y,W,Z) = Pi M(4,7,9,13,15)
 // Simplificada:
 // F = (W + X' + Z').(W + X + Z + Y').(W' + Y' + Z')
 // ------------------------------------------------------------
 wire Fb_original =
   (M4 & M7 & M9 & M13 & M15);

 wire Fb_simplificada =
   ((W | ~X | ~Z) &
    (W | X | Z | ~Y) &
    (~W | ~Y | ~Z));

 // ------------------------------------------------------------
 // c) F(X,Y,W,Z) = Pi M(4,6,8,14,15)
 // Simplificada:
 // F = (X + Z + Y').(W + Y + Z + X').(W' + X' + Y')
 // ------------------------------------------------------------
 wire Fc_original =
   (M4 & M6 & M8 & M14 & M15);

 wire Fc_simplificada =
   ((X | Z | ~Y) &
    (W | Y | Z | ~X) &
    (~W | ~X | ~Y));

 // ------------------------------------------------------------
 // d) F(X,Y,W,Z) = Pi M(1,5,7,12,13,15)
 // Simplificada:
 // F = (Y' + Z').(W + X + Z').(W + X' + Y')
 // ------------------------------------------------------------
 wire Fd_original =
   (M1 & M5 & M7 & M12 & M13 & M15);

 wire Fd_simplificada =
   ((~Y | ~Z) &
    (W | X | ~Z) &
    (W | ~X | ~Y));

 // ------------------------------------------------------------
 // e) F(X,Y,W,Z) = Pi M(2,3,4,6,11,12,14)
 // Simplificada:
 // F = (Z + Y').(X + Y + W').(Y + W' + Z')
 // ------------------------------------------------------------
 wire Fe_original =
   (M2 & M3 & M4 & M6 & M11 & M12 & M14);

 wire Fe_simplificada =
   ((Z | ~Y) &
    (X | Y | ~W) &
    (Y | ~W | ~Z));

 initial
 begin : main

   $display ( "Guia_0604 - Tests" );
   $display ( "" );

   $display ( "Simplificacoes:" );
   $display ( "a) Pi M(2,6,7,14)" );
   $display ( "   = (X + Z + W').(X + W' + Y').(Z + W' + Y')" );
   $display ( "b) Pi M(4,7,9,13,15)" );
   $display ( "   = (W + X' + Z').(W + X + Z + Y').(W' + Y' + Z')" );
   $display ( "c) Pi M(4,6,8,14,15)" );
   $display ( "   = (X + Z + Y').(W + Y + Z + X').(W' + X' + Y')" );
   $display ( "d) Pi M(1,5,7,12,13,15)" );
   $display ( "   = (Y' + Z').(W + X + Z').(W + X' + Y')" );
   $display ( "e) Pi M(2,3,4,6,11,12,14)" );
   $display ( "   = (Z + Y').(X + Y + W').(Y + W' + Z')" );
   $display ( "" );

   $display ( "          a     b     c     d     e" );
   $display ( "X Y W Z | O S | O S | O S | O S | O S" );
   $display ( "---------------------------------------" );

   for ( i = 0; i < 16; i = i + 1 )
   begin
     {X,Y,W,Z} = i;
     #1;

     $display (
       "%b %b %b %b | %b %b | %b %b | %b %b | %b %b | %b %b",
       X, Y, W, Z,
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
