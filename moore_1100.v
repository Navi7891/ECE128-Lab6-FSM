`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh
// Engineer: Mahir Ashab Enan, Navjot Bains
//
// Create Date: 10/23/2026
// Design Name: lab 6
// Module Name: moore_1100
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

module moore_1100(x, clk, reset, z);
    input x, clk, reset;
    output reg z;

    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3, S4 = 4;
    reg [2:0] PS, NS;


    always @(posedge clk or posedge reset) begin
        if (reset)
            PS <= S0;
        else
            PS <= NS;
    end


    always @(PS or x) begin
        case (PS)
            S0: begin
                if (x) NS = S1;
                else   NS = S0;
            end
            S1: begin
                if (x) NS = S2;
                else   NS = S0;
            end
            S2: begin
                if (x) NS = S2;
                else   NS = S3;
            end
            S3: begin
                if (x) NS = S1;
                else   NS = S4;
            end
            S4: begin
                if (x) NS = S1;
                else   NS = S0;
            end
            default: NS = S0;
        endcase
    end


    always @(PS) begin
        case (PS)
            S4: z = 1'b1;
            default: z = 1'b0;
        endcase
    end
endmodule
