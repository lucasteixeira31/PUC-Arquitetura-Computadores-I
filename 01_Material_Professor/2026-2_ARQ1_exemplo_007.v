/*
Type  : 4
SoP   : 0,1,2,5,6,8,10,12,13,15
PoS   : 3,4,7,9,11,14

SoP_2 : b'd'+a'c'd+a'cd'+abd+ac'd'
SoP_3 : b'd'+a'c'd+a'cd'+abd+abc' 

PoS_2 : (A+B'+C+D)(A+C'+D')(A'+B+D')(A'+B'+C'+D)

*/

module PoS_1 ( output S, input A, input B, input C, input D );
 assign S = ( A| B|~C|~D)  // ( 3)
          & ( A|~B| C| D)  // ( 4)
          & ( A|~B|~C|~D)  // ( 7)
          & (~A| B| C|~D)  // ( 9)
          & (~A| B|~C|~D)  // (11)
          & (~A|~B|~C| D); // (14)
endmodule

module PoS_2 ( output S, input A, input B, input C, input D );
 assign S = ( A|~B| C| D)  // ( 4)
          & ( A   |~C|~D)  // (3, 7)
          & (~A| B   |~D)  // (9,11)
          & (~A|~B|~C| D); // (14)
endmodule

module SoP_1 ( output s, input a, input b, input c, input d );
 assign s = ~a&~b&~c&~d // 0
          | ~a&~b&~c& d // 1
          | ~a&~b& c&~d // 2
          | ~a& b&~c& d // 5
          | ~a& b& c&~d // 6
          |  a&~b&~c&~d // 8
          |  a&~b& c&~d // 10
          |  a& b&~c&~d // 12
          |  a& b&~c& d // 13
          |  a& b& c& d;// 15
endmodule

module SoP_2 ( output s, input a, input b, input c, input d );
 assign s = ~a&    c&~d // ( 2, 6)
          |  a& b   & d // (13,15)
          |    ~b   &~d // ( 0, 2, 8,10)
          | ~a&~b&~c    // ( 0, 1)
          |  a   &~c&~d // ( 8,12) //
          | ~a   &~c& d;// ( 1, 5)
endmodule

module SoP_3 ( output s, input a, input b, input c, input d );
 assign s = ~a&    c&~d // ( 2, 6)
          |  a& b   & d // (13,15)
          |    ~b   &~d // ( 0, 2, 8,10)
          | ~a&~b&~c    // ( 0, 1)
          |  a& b&~c    // (12,13) //
          | ~a   &~c& d;// ( 1, 5)
endmodule

module teste;
 reg         a , b , c , d;
 wire        s1, s2, s3;
 wire        S4, S5, S6;
 integer     m , p;
 reg [4:0]   q;

 SoP_1 F1 ( s1, a, b, c, d );
 SoP_2 F2 ( s2, a, b, c, d );
 SoP_3 F3 ( s3, a, b, c, d );

 PoS_1 F4 ( S4, a, b, c, d );
 PoS_2 F5 ( S5, a, b, c, d );

 initial
  begin
   a = 1'bx; b = 1'bx; c = 1'bx; d = 1'bx;
   m =-1;
  end

 initial
  begin
  $display ( " m  a b c d   s1 s2 s3  S1 S2" );
  $monitor ( "%2d: %b %b %b %b   %b  %b  %b   %b  %b",
                m,  a, b, c, d,  s1, s2, s3,  S4, S5 );
   for ( p=0; p<16; p++ )
    begin
    // q=p; a=q[3]; b=q[2]; c=q[1]; d=q[0]; m=m+1; #1;
       {a,b,c,d} = p; m=m+1; #1;
    end
  end
endmodule