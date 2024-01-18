
module count_up(
	input 				clk 	,
	input 				reset 	,
	output reg 	[3:0] 	counter
);



always @(posedge clk) begin
    if(reset) 
        counter <= 0;
    else 
        counter <= counter + 1;
end

// Dump waves
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, count_up);
end

endmodule

//run
// iverilog -o count_up_output count_up.v count_up_tb.v
// vvp count_up