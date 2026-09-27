/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 02

 Arquivo: Guia_0203.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0203;

 reg [7:0] b;
 reg [3:0] i;

 initial
 begin : main

   $display ( "Guia_0203 - Tests" );


   // a.) 0.001001(2) = X(4)

   b = 8'b00100100;

   $display ( "a.) b = 0.%6b(2)" , b[7:2] );
   $display ( "    base 4 = 0.%0d%0d%0d(4)",
              b[7:6], b[5:4], b[3:2] );


   // b.) 0.100001(2) = X(8)

   b = 8'b10000100;

   $display ( "b.) b = 0.%6b(2)" , b[7:2] );
   $display ( "    base 8 = 0.%o%o(8)",
              b[7:5], b[4:2] );


   // c.) 0.101101(2) = X(16)

   b = 8'b10110100;

   $display ( "c.) b = 0.%6b(2)" , b[7:2] );
   $display ( "    base 16 = 0.%x%x(16)",
              b[7:4], b[3:0] );


   // d.) 1.110011(2) = X(8)

   b = 8'b11001100;

   $display ( "d.) b = 1.%6b(2)" , b[7:2] );
   $display ( "    base 8 = 1.%o%o(8)",
              b[7:5], b[4:2] );


   // e.) 1101.0101(2) = X(16)

   i = 4'b1101;
   b = 8'b01010000;

   $display ( "e.) b = %4b.%4b(2)" , i, b[7:4] );
   $display ( "    base 16 = %x.%x(16)",
              i, b[7:4] );

 end

endmodule
