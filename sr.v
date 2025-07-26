`include "nn4.v"
module sr(op,s,m,e,sr);
     input s;
     input [22:0]m;
     input [7:0]e;
     output [31:0]op;
     output reg[31:0]sr;

     
     nn4 n9(.sign4(s),.mantissa4(m),.exponent4(e),.operand4(op));
     
     always @(sr,op) begin
       sr= $sqrt(op);  
     end
     
   
endmodule