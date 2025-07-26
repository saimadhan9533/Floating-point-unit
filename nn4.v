module nn4(sign4,mantissa4,exponent4,operand4);
    input sign4;
    input [7:0]exponent4;
    input [22:0]mantissa4;
    output reg[31:0]operand4;

    always @(*) begin
      operand4[31]=sign4;
      operand4[30:23]=exponent4;
      operand4[22:0]=mantissa4;
    end

endmodule