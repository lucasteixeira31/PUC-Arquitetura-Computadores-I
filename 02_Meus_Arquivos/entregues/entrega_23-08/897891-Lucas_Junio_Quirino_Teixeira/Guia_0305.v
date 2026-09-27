/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 03

 Arquivo: Guia_0305.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0305;

 reg [7:0] a;
 reg [7:0] b;
 reg [7:0] r;

 initial
 begin : main

   $display ( "Guia_0305 - Tests" );

   // a.) 110101(2) - 1101(2)
   a = 8'b00110101;
   b = 8'b00001101;
   r = a + (~b + 1'b1);
   $display ( "a.) 110101 - 1101 = %8b" , r );

   // b.) 101.1001(2) - 4.5(8)
   // quatro bits reservados para a parte fracionaria
   a = 8'b01011001;
   b = 8'b01001010;
   r = a + (~b + 1'b1);
   $display ( "b.) 101.1001(2) - 4.5(8) = %8b" , r );

   // c.) 213(4) - 6B(16)
   a = 8'b00100111;
   b = 8'b01101011;
   r = a + (~b + 1'b1);
   $display ( "c.) 213(4) - 6B(16) = %8b" , r );

   // d.) A6E(16) - 1011001(2)
   // A6E nao cabe em 8 bits; o registrador guarda os 8 bits menos significativos
   a = 12'hA6E;
   b = 8'b01011001;
   r = a + (~b + 1'b1);
   $display ( "d.) A6E(16) armazenado em 8 bits = %8b" , a );
   $display ( "    resultado em 8 bits = %8b" , r );

   // e.) 5A(16) - C6(16)
   a = 8'h5A;
   b = 8'hC6;
   r = a + (~b + 1'b1);
   $display ( "e.) 5A(16) - C6(16) = %8b" , r );

 end

endmodule
