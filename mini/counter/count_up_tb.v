
module count_up_tb();
    wire [3:0] counter;
    reg clk,reset; 

count_up DUT(.clk(clk),.reset(reset),.counter(counter));

initial begin
    clk = 0; 
    forever #5 clk = ~clk; 
end

initial begin 
    // $dumpfile("testbench.vcd");
    // $dumpvars(0,DUT);

    reset = 0; 
    #10
    reset = 1; 
    #10
    reset = 0;  
    #20
    reset = 1; 
    #10
    reset = 0; 
    #200
    $finish;
end

endmodule