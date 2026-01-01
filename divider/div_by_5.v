module div_by_5 (input clk,
input rst,
output  clk_out
);
reg [2:0] pos_cnt;
reg [2:0] neg_cnt;
always @(posedge clk) begin
    if(rst)
    pos_cnt<=0;
    else if (pos_cnt==4)
    pos_cnt<=0;
    else 
    pos_cnt<=pos_cnt+1;
end

always @(negedge clk) begin
    if(rst)
    neg_cnt<=0;
    else if (neg_cnt==4) 
    neg_cnt<=0;
    else
    neg_cnt=neg_cnt+1;
end
    
assign clk_out=(pos_cnt==4)|(neg_cnt==4);

endmodule //div_by_5