module nn(sign,mantissa,exponent,operand);
    input sign;
    input [7:0]exponent;
    input [22:0]mantissa;
    output reg[31:0]operand;

    always @(*) begin
      operand[31]=sign;
      operand[30:23]=exponent;
      operand[22:0]=mantissa;
    end

endmodule