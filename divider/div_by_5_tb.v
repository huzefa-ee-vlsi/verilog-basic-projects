`timescale 1ns/1ps

module div_by_5_tb;

reg clk;
reg rst;
wire clk_out;

div_by_5 uut(
    .clk(clk),
    .rst(rst),
    .clk_out(clk_out)
);
always #5 clk=~clk;

initial begin
    clk=0;
    rst=1;

    #20;
    rst=0;

    #300;

    $finish;
end

initial begin
    $dumpfile("div_by_5.vcd");
    $dumpvars(0, div_by_5_tb);
end


endmodule //div_by_5_tb