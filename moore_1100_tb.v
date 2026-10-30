//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh
// Engineer: Mahir Ashab Enan, Navjot Bains
//
// Create Date: 10/23/2026
// Design Name: lab 6
// Module Name: moore_1100_tb
// Project Name: lab 6
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
`timescale 1ns / 1ps
module moore_1100_tb;
    reg x, clk, reset;
    wire z;

    moore_1100 uut(.x(x), .clk(clk), .reset(reset), .z(z));

    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
        reset = 1'b1;
        x = 1'b0;
        #12 reset = 1'b0;
        #8  x = 1'b1;
        #10 x = 1'b1;
        #10 x = 1'b0;
        #10 x = 1'b0;
        #10 x = 1'b0;
        #10 x = 1'b1;
        #10 x = 1'b1;
        #10 x = 1'b0;
        #10 x = 1'b1;
        #10 x = 1'b1;
        #10 x = 1'b0;
        #10 x = 1'b0;
        #10 x = 1'b0;
        #10 reset = 1'b1;
        #10 reset = 1'b0;
        #20 $finish;
    end
endmodule
