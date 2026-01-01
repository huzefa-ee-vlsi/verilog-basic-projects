module div_by_2_tb;

reg clk;
reg rst;
wire clk_out;

div_by_2 uut(
    .clk(clk),
    .rst(rst),
    .clk_out(clk_out));

always #5 clk=~clk;//100 MHz clk


initial begin
    clk=0;
    rst=1;
    #20 rst=0;
    #200 $finish;
 
end

initial begin
    $dumpfile("div_by_2.vcd");
    $dumpvars(0, div_by_2_tb);
end
endmodule //div_by_2_tb