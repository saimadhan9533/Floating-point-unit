module nn3(sign3,mantissa3,exponent3,operand3);
    input sign3;
    input [7:0]exponent3;
    input [22:0]mantissa3;
    output reg[31:0]operand3;

    always @(*) begin
      operand3[31]=sign3;
      operand3[30:23]=exponent3;
      operand3[22:0]=mantissa3;
    end

endmodule