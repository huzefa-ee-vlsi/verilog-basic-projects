module div_by_2 (
    input clk,
    input rst,
    output reg clk_out
    
);
always@(posedge clk)begin
 if (rst)
  clk_out<=1'b0;
 else
  clk_out<=~clk_out;
end

endmodule //div_by_2