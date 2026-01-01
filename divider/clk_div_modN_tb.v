`timescale 1ns/1ps
module clk_div_modN_tb;

reg clk;
reg rst;
wire clk_out;

clk_div_modN #(.N(7)) uut (
    .clk(clk),
    .rst(rst),
    .clk_out(clk_out)
);

always #5 clk=~clk;

initial begin
    clk=0;
    rst=1;
    #20 rst=0;
    #600 $finish;
end

initial begin
    $dumpfile("clk_div_modN.vcd");
    $dumpvars(0, clk_div_modN_tb);
end

endmodule //clk_div_modN_tb