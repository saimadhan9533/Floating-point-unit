`include "add.v"
`include "sub.v"
`include "mul.v"
`include "div.v"
`include "sr.v"
module flu(c,s,s0,e,e0,m,m0,op,op0,add1,sub1,mul1,quo1,rem1,sr1);
    input s,s0;
    input [2:0]c;
    input [7:0]e,e0;
    input [22:0]m,m0;
    inout [31:0]op,op0;
    output reg [31:0]add1,sub1,mul1,quo1,rem1,sr1;

    wire [31:0]add,sub,mul,quo,rem,sr;

    add a1(.s(s),.s0(s0),.e(e),.e0(e0),.m(m),.m0(m0),.op(op),.op0(op0),.add(add));
    sub ss1(.s(s),.s0(s0),.e(e),.e0(e0),.m(m),.m0(m0),.op(op),.op0(op0),.sub(sub));
    mul mm(.s(s),.s0(s0),.e(e),.e0(e0),.m(m),.m0(m0),.op(op),.op0(op0),.mul(mul));
    div d1(.s(s),.s0(s0),.e(e),.e0(e0),.m(m),.m0(m0),.op(op),.op0(op0),.quo(quo),.rem(rem));
    sr ss(.s(s),.e(e),.m(m),.op(op),.sr(sr));

    always @(*) begin
      case(c) 
        3'b000: begin
          add1=add;
          sub1=0;
          mul1=0;
          quo1=0;
          rem1=0;
          sr1=0;
        end
        3'b001: begin
          add1=0;
          sub1=sub;
          mul1=0;
          quo1=0;
          rem1=0;
          sr1=0;
        end
        3'b010: begin
          add1=0;
          sub1=0;
          mul1=mul;
          quo1=0;
          rem1=0;
          sr1=0;
        end
        3'b011: begin
          add1=0;
          sub1=0;
          mul1=0;
          quo1=quo;
          rem1=rem;
          sr1=0;
        end
        3'b100: begin
          add1=0;
          sub1=0;
          mul1=0;
          quo1=0;
          rem1=0;
          sr1=sr;
        end
        default: begin
          add1=0;
          sub1=0;
          mul1=0;
          quo1=0;
          rem1=0;
          sr1=0;
          $display("enter between 000 to 101");
        end
      endcase
     
    end



endmodule