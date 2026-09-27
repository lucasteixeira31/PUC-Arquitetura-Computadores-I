/*
 Pontificia Universidade Catolica de Minas Gerais
 Arquitetura de Computadores I
 Guia 01

 Arquivo: Guia_0105.v
 Matricula: 897891
 Nome: Lucas Junio Quirino Teixeira
*/

module Guia_0105;

 reg [71:0] s1;
 reg [55:0] s2;
 reg [39:0] s3;
 reg [39:0] s4;
 reg [39:0] s5;

 initial
 begin : main

   $display ( "Guia_0105 - Tests" );


   // a.) "PUC-Minas" = X(16_ASCII)

   s1 = "PUC-Minas";

   $display ( "a.) PUC-Minas =" );
   $display ( "%h %h %h %h %h %h %h %h %h",
              s1[71:64],
              s1[63:56],
              s1[55:48],
              s1[47:40],
              s1[39:32],
              s1[31:24],
              s1[23:16],
              s1[15:8],
              s1[7:0] );


   // b.) "2026-02" = X(16_ASCII)

   s2 = "2026-02";

   $display ( "b.) 2026-02 =" );
   $display ( "%h %h %h %h %h %h %h",
              s2[55:48],
              s2[47:40],
              s2[39:32],
              s2[31:24],
              s2[23:16],
              s2[15:8],
              s2[7:0] );


   // c.) "M. G." = X(2_ASCII)

   s3 = "M. G.";

   $display ( "c.) M. G. =" );
   $display ( "%8b %8b %8b %8b %8b",
              s3[39:32],
              s3[31:24],
              s3[23:16],
              s3[15:8],
              s3[7:0] );


   // d.) 124 101 122 104 105(8) = X(ASCII)

   s4 = {
          8'o124,
          8'o101,
          8'o122,
          8'o104,
          8'o105
        };

   $display ( "d.) 124 101 122 104 105(8) = %s" , s4 );


   // e.) 4D 61 6E 68 61(16) = X(ASCII)

   s5 = {
          8'h4D,
          8'h61,
          8'h6E,
          8'h68,
          8'h61
        };

   $display ( "e.) 4D 61 6E 68 61(16) = %s" , s5 );

 end

endmodule
