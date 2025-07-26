module nn1(sign1,mantissa1,exponent1,operand1);
    input sign1;
    input [7:0]exponent1;
    input [22:0]mantissa1;
    output reg[31:0]operand1;

    always @(*) begin
      operand1[31]=sign1;
      operand1[30:23]=exponent1;
      operand1[22:0]=mantissa1;
    end

endmodule