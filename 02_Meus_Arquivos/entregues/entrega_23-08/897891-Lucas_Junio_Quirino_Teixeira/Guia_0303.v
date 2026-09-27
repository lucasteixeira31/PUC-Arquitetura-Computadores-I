/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 03

 Arquivo: Guia_0303.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0303;

 reg [4:0] a;
 reg [5:0] b;
 reg [5:0] c;
 reg [6:0] d;
 reg [6:0] e;

 reg [4:0] ra;
 reg [5:0] rb;
 reg [5:0] rc;
 reg [6:0] rd;
 reg [6:0] re;

 initial
 begin : main

   $display ( "Guia_0303 - Tests" );

   a = 5'b10101;
   ra = ~(a - 1'b1);
   $display ( "a.) 10101(2) -> valor positivo = %0d(10)" , ra );

   b = 6'b110111;
   rb = ~(b - 1'b1);
   $display ( "b.) 110111(2) -> valor positivo = %0d(10)" , rb );

   c = 6'b100110;
   rc = ~(c - 1'b1);
   $display ( "c.) 100110(2) -> valor positivo = %6b(2)" , rc );

   d = 7'b1011101;
   rd = ~(d - 1'b1);
   $display ( "d.) 1011101(2) -> valor positivo = %7b(2)" , rd );

   e = 7'b1110111;
   re = ~(e - 1'b1);
   $display ( "e.) 1110111(2) -> valor positivo = %0h(16)" , re );

 end

endmodule
