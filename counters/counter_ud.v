module counter_ud (
    input [3:0] data,
    input clk,rst,up,load,en,
    output reg [3:0] count
    
);


always@(posedge clk,negedge rst)begin
    
 if(!rst)
  count<=4'b0000;
 else if(load)
  count<=data;
 else if(en) begin 
  if(up)
   count<=count+1'b1;
  else
   count<=count-1'b1;
 end
end 
endmodule //counter ud