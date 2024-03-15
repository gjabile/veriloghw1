`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2024 08:16:59 PM
// Design Name: 
// Module Name: q2_tb_1008656
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decade_counter_tb();

reg clk;
reg rst;
wire [3:0]count;
wire ten;

decade_counter decade_counter_u0(
    .clk(clk),
    .rst(rst),
    .count(count),
    .ten(ten)
);

always begin
    //YOUR CODE HERE - Generate 20 unit time clock;
    // Generate 20 unit time clock
    #10 clk = 1; // Half period
    #10 clk = 0; // Half period
end

initial begin
    //YOUR CODE HERE - Initialize the clk, rst;
    clk = 0;
    rst = 1; // Active high reset
    #30 rst = 0; 
    repeat (10) begin
        #20; 
    end
end

endmodule
