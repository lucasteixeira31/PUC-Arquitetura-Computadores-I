/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 02

 Arquivo: Guia_0205.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0205;

 reg [7:0] a;
 reg [7:0] b;
 reg [7:0] c;

 reg [5:0] m1;
 reg [5:0] m2;
 reg [11:0] produto;

 reg [31:0] dividendo;
 reg [31:0] divisor;
 reg [31:0] quociente;

 initial
 begin : main

   $display ( "Guia_0205 - Tests" );


   // a.) 100.101(2) + 10.11(2) = X(2)
   // tres bits reservados para a parte fracionaria

   a = 8'b0010_0101; // 100.101
   b = 8'b0001_0110; // 010.110
   c = a + b;

   $display ( "a.) 100.101 + 10.11 = %0b.%3b(2)",
              c[7:3], c[2:0] );


   // b.) 1010.11(2) - 11.001(2) = X(2)
   // tres bits reservados para a parte fracionaria

   a = 8'b0101_0110; // 1010.110
   b = 8'b0001_1001; // 0011.001
   c = a - b;

   $display ( "b.) 1010.11 - 11.001 = %0b.%3b(2)",
              c[7:3], c[2:0] );


   // c.) 101.111(2) * 10.011(2) = X(2)
   // cada operando possui tres bits fracionarios
   // o produto possui seis bits fracionarios

   m1 = 6'b101111; // 101.111
   m2 = 6'b010011; // 010.011
   produto = m1 * m2;

   $display ( "c.) 101.111 * 10.011 = %0b.%6b(2)",
              produto[11:6], produto[5:0] );


   // d.) 10100.01(2) / 11.01(2) = X(2)
   // retirando as duas virgulas:
   // 1010001(2) / 1101(2)
   // calculamos 12 bits para a parte fracionaria

   dividendo = 32'b1010001;
   divisor   = 32'b1101;

   quociente = ( dividendo << 12 ) / divisor;

   $display ( "d.) 10100.01 / 11.01 = %0b.%12b...(2)",
              quociente[31:12], quociente[11:0] );


   // e.) 1100001(2) %% 1101(2) = X(2)

   a = 8'b01100001;
   b = 8'b00001101;
   c = a % b;

   $display ( "e.) 1100001 %% 1101 = %0b(2)" , c );

 end

endmodule
