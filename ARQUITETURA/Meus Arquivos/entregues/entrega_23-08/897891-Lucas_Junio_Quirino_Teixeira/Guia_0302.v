/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 03

 Arquivo: Guia_0302.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0302;

 reg [5:0] a;
 reg [7:0] b;
 reg [5:0] c;
 reg [9:0] d;
 reg [7:0] e;

 reg [5:0] ra;
 reg [7:0] rb;
 reg [5:0] rc;
 reg [9:0] rd;
 reg [7:0] re;

 initial
 begin : main

   $display ( "Guia_0302 - Tests" );

   // 132(4) = 011110(2)
   a = 6'b011110;
   ra = ~a;
   $display ( "a.) C1,6 (132(4)) = %6b" , ra );

   b = 8'hE7;
   rb = ~b;
   $display ( "b.) C1,8 (E7(16)) = %8b" , rb );

   // 231(4) = 101101(2)
   c = 6'b101101;
   rc = ~c + 1'b1;
   $display ( "c.) C2,6 (231(4)) = %6b" , rc );

   // 176(8) = 001111110(2), ajustado para 10 bits
   d = 10'b0001111110;
   rd = ~d + 1'b1;
   $display ( "d.) C2,10 (176(8)) = %10b" , rd );

   e = 8'h7A;
   re = ~e + 1'b1;
   $display ( "e.) C2,8 (7A(16)) = %8b" , re );

 end

endmodule
