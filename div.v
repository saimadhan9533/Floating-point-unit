`include "nn3.v"
module div(s,s0,e,e0,m,m0,op,op0,rem,quo);
   input s,s0;
   input [7:0]e,e0;
   input [22:0]m,m0;
   output [31:0]op,op0;
   output reg[31:0]rem,quo;

   nn3 n7(.sign3(s),.exponent3(e),.mantissa3(m),.operand3(op));
   nn3 n8(.sign3(s0),.exponent3(e0),.mantissa3(m0),.operand3(op0));

   always @(quo,rem,op,op0) begin
     quo=op/op0;
     rem=op%op0;
   end

endmodule