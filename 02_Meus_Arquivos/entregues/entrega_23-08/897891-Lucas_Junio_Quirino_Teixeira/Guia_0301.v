/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 03

 Arquivo: Guia_0301.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0301;

 reg [5:0] a;
 reg [7:0] b;
 reg [5:0] c;
 reg [6:0] d;
 reg [7:0] e;

 reg [5:0] ra;
 reg [7:0] rb;
 reg [5:0] rc;
 reg [6:0] rd;
 reg [7:0] re;

 initial
 begin : main

   $display ( "Guia_0301 - Tests" );

   a = 6'b001001;
   ra = ~a;
   $display ( "a.) C1,6 (1001) = %6b" , ra );

   b = 8'b00010100;
   rb = ~b;
   $display ( "b.) C1,8 (10100) = %8b" , rb );

   c = 6'b101011;
   rc = ~c + 1'b1;
   $display ( "c.) C2,6 (101011) = %6b" , rc );

   d = 7'b0101111;
   rd = ~d + 1'b1;
   $display ( "d.) C2,7 (101111) = %7b" , rd );

   e = 8'b00110010;
   re = ~e + 1'b1;
   $display ( "e.) C2,8 (110010) = %8b" , re );

 end

endmodule
