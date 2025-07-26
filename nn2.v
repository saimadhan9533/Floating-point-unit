module nn2(sign2,mantissa2,exponent2,operand2);
    input sign2;
    input [7:0]exponent2;
    input [22:0]mantissa2;
    output reg[31:0]operand2;

    always @(*) begin
      operand2[31]=sign2;
      operand2[30:23]=exponent2;
      operand2[22:0]=mantissa2;
    end

endmodule