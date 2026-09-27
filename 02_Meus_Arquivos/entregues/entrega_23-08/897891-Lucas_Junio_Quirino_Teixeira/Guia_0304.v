/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 03

 Arquivo: Guia_0304.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0304;

 reg [5:0] a1, b1, r1;
 reg [7:0] a2, b2, r2;
 reg [6:0] a3, b3, r3;
 reg [9:0] a4, b4, r4;
 reg [12:0] a5, b5, r5, mag5;

 initial
 begin : main

   $display ( "Guia_0304 - Tests" );

   // a.) 11101(2) - 1011(2)
   a1 = 6'b011101;
   b1 = 6'b001011;
   r1 = a1 + (~b1 + 1'b1);
   $display ( "a.) 11101 - 1011 = %0b(2)" , r1 );

   // b.) 101.1011(2) - 10.01(2)
   // quatro bits reservados para a parte fracionaria
   a2 = 8'b0101_1011;
   b2 = 8'b0010_0100;
   r2 = a2 + (~b2 + 1'b1);
   $display ( "b.) 101.1011 - 10.01 = %0b.%4b(2)",
              r2[7:4], r2[3:0] );

   // c.) 312(4) - 132(4)
   a3 = 7'b0110110;
   b3 = 7'b0011110;
   r3 = a3 + (~b3 + 1'b1);
   $display ( "c.) 312(4) - 132(4) = %0d%0d%0d(4)",
              r3[5:4], r3[3:2], r3[1:0] );

   // d.) 647(8) - 256(8)
   a4 = 10'b0110100111;
   b4 = 10'b0010101110;
   r4 = a4 + (~b4 + 1'b1);
   $display ( "d.) 647(8) - 256(8) = %0o(8)" , r4 );

   // e.) A4C(16) - B7F(16)
   a5 = 13'b0_1010_0100_1100;
   b5 = 13'b0_1011_0111_1111;
   r5 = a5 + (~b5 + 1'b1);

   if ( r5[12] == 1'b1 )
   begin
     mag5 = ~r5 + 1'b1;
     $display ( "e.) A4C(16) - B7F(16) = -%0h(16)" , mag5 );
   end
   else
     $display ( "e.) A4C(16) - B7F(16) = %0h(16)" , r5 );

 end

endmodule
