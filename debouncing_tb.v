//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh
// Engineer: Mahir Ashab Enan, Navjot Bains
//
// Create Date: 10/23/2026
// Design Name: lab 6
// Module Name: debouncing_tb
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
module debouncing_tb;
    reg RAW, CLK;
    wire CLEAN;

    debouncing uut(.RAW(RAW), .CLK(CLK), .CLEAN(CLEAN));

    initial CLK = 1'b0;
    always #5 CLK = ~CLK;

    initial begin
        RAW = 1'b0;
        #20; RAW = 1'b1;
        #40; RAW = 1'b0;
        #20; RAW = 1'b1;
        #100; RAW = 1'b0;
        #20; RAW = 1'b1;
        #20; RAW = 1'b0;
        #10; RAW = 1'b1;
        #20; RAW = 1'b0;
        #20; RAW = 1'b1;
        #100; RAW = 1'b0;
        #20; $finish;
    end
endmodule
