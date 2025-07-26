`include "nn2.v"
module mul(s,s0,e,e0,m,m0,op,op0,mul);
   input s,s0;
   input [7:0]e,e0;
   input [22:0]m,m0;
   output [31:0]op,op0;
   output reg[31:0]mul;

   nn2 n5(.sign2(s),.exponent2(e),.mantissa2(m),.operand2(op));
   nn2 n6(.sign2(s0),.exponent2(e0),.mantissa2(m0),.operand2(op0));

   always @(mul,op,op0) begin
     mul=op*op0;
   end

endmodule