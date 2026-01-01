module clk_div_modN #(
    parameter N=7
)(
    input wire clk,
    input wire rst,
    output wire clk_out 
);
localparam W = $clog2(N);

reg [W-1:0] pst_cnt;
reg [W-1:0] neg_cnt;

// --------POSITIVE EDGE--------//

    always@(posedge clk) begin
    if(rst)
     pst_cnt<=0;
    else if (pst_cnt==N-1)
     pst_cnt<=0;
    else 
     pst_cnt<=pst_cnt+1;
end

// --------NEGATIVE EDGE--------//

    always@(negedge clk) begin
    if(rst)
     neg_cnt<=0;
        else if (neg_cnt==N-1)
     neg_cnt<=0;
    else 
     neg_cnt<=neg_cnt+1;
end

assign clk_out=(pst_cnt==N-1)|(neg_cnt==N-1);


endmodule //clk_div_modN
