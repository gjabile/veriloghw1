`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2024 08:16:59 PM
// Design Name: 
// Module Name: q1_1008656
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
//!DO NOT EDIT MODULE NAME AND PORT NAME!
module decade_counter(
    input clk,
    input rst,
    output [3:0] count,
    output ten
);
//YOUR CODE HERE
reg [3:0] count_reg;
assign count = count_reg;
assign ten = (count_reg == 4'b1001) ? 1'b1 : 1'b0;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        count_reg <= 4'b0000;
    end else begin
        if (count_reg == 4'b1001) begin
            count_reg <= 4'b0000;
        end else begin
            count_reg <= count_reg + 1;
        end
    end
end  

endmodule