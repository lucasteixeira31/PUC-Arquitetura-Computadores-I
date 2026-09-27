/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 01

 Arquivo: Guia_0104.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0104;

 reg [5:0] b = 0;

 initial
 begin : main

   integer q1;
   integer q2;
   integer q3;

   $display ( "Guia_0104 - Tests" );

   // a.) 10011(2) = X(4)

   b = 6'b010011;

   q1 = b[5:4];
   q2 = b[3:2];
   q3 = b[1:0];

   $display ( "b = %6b" , b );
   $display ( "base 4 = %0d%0d%0d" , q1 , q2 , q3 );


   // b.) 11001(2) = X(8)

   b = 6'b011001;

   $display ( "b = %6b" , b );
   $display ( "base 8 = %o" , b );


   // c.) 100011(2) = X(16)

   b = 6'b100011;

   $display ( "b = %6b" , b );
   $display ( "base 16 = %X" , b );


   // d.) 101001(2) = X(8)

   b = 6'b101001;

   $display ( "b = %6b" , b );
   $display ( "base 8 = %o" , b );


   // e.) 110011(2) = X(4)

   b = 6'b110011;

   q1 = b[5:4];
   q2 = b[3:2];
   q3 = b[1:0];

   $display ( "b = %6b" , b );
   $display ( "base 4 = %0d%0d%0d" , q1 , q2 , q3 );

 end

endmodule
