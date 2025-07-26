`include "nn1.v"
module sub(s,s0,e,e0,m,m0,op,op0,sub);
   input s,s0;
   input [7:0]e,e0;
   input [22:0]m,m0;
   output [31:0]op,op0;
   output reg[31:0]sub;

   nn1 n3(.sign1(s),.exponent1(e),.mantissa1(m),.operand1(op));
   nn1 n4(.sign1(s0),.exponent1(e0),.mantissa1(m0),.operand1(op0));

   always @(sub,op,op0) begin
     sub=op-op0;
   end

endmodule