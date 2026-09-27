/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 02

 Arquivo: Guia_0204.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0204;

 reg [5:0]  b6;
 reg [8:0]  b9;
 reg [11:0] b12;
 reg [13:0] b14;
 reg [19:0] b20;

 initial
 begin : main

   $display ( "Guia_0204 - Tests" );


   // a.) 0.312(4) = X(2)

   b6 = 6'b11_01_10;

   $display ( "a.) 0.312(4) = 0.%6b(2)" , b6 );


   // b.) 0.2B5(16) = X(4)

   b12 = 12'b0010_1011_0101;

   $display ( "b.) 0.2B5(16) = 0.%0d%0d%0d%0d%0d%0d(4)",
              b12[11:10],
              b12[9:8],
              b12[7:6],
              b12[5:4],
              b12[3:2],
              b12[1:0] );


   // c.) 0.713(8) = X(2)

   b9 = 9'b111_001_011;

   $display ( "c.) 0.713(8) = 0.%9b(2)" , b9 );


   // d.) 3.2657(8) = X(4)

   b14 = 14'b11_010_110_101_111;

   $display ( "d.) 3.2657(8) = %0d.%0d%0d%0d%0d%0d%0d(4)",
              b14[13:12],
              b14[11:10],
              b14[9:8],
              b14[7:6],
              b14[5:4],
              b14[3:2],
              b14[1:0] );


   // e.) D.ACB1(16) = X(4)

   b20 = 20'b1101_1010_1100_1011_0001;

   $display ( "e.) D.ACB1(16) = %0d%0d.%0d%0d%0d%0d%0d%0d%0d%0d(4)",
              b20[19:18],
              b20[17:16],
              b20[15:14],
              b20[13:12],
              b20[11:10],
              b20[9:8],
              b20[7:6],
              b20[5:4],
              b20[3:2],
              b20[1:0] );

 end

endmodule
