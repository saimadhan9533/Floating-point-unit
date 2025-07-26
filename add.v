`include "nn.v"
module add(op,op0,s,s0,m,m0,e,e0,add);
     input s,s0;
     input [22:0]m,m0;
     input [7:0]e,e0;
     output  [31:0]op,op0;
     output reg[31:0]add;

     
     nn n1(.sign(s),.mantissa(m),.exponent(e),.operand(op));
     nn n2(.sign(s0),.mantissa(m0),.exponent(e0),.operand(op0));

     always @(add,op,op0) begin
       add=op + op0;  
     end
     
   
endmodule