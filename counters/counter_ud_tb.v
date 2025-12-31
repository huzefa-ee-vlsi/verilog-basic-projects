module counter_ud_tb;
 reg clk;
 reg rst;
 reg up;
 reg load;
 reg en;
 reg [3:0] data;
 wire [3:0] count;
 counter_ud dut(
    .clk(clk),
    .rst(rst),
    .en(en),
    .up(up),
    .load(load),
    .data(data),
    .count(count)
 );
 always #5 clk=~clk;
 initial begin
    clk=0;
    rst=0;
    en=0;
    up=0;
    load=0;
    data=4'b0000;

    $dumpfile("counter_ud.vcd");
    $dumpvars(0, counter_ud_tb);

    

    #10 rst=1;
    #10 load=1; 
        data=4'd5;

    #10 load=0;

    #10 en=1; up=1;
    #40;

    #10 up=0;
    #40;

    #10 en=0;  
    #20;
    $finish;
    
 end

endmodule //counter_ud_tb