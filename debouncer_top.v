//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh
// Engineer: Mahir Ashab Enan, Navjot Bains
//
// Create Date: 10/23/2026
// Design Name: lab 6
// Module Name: debouncer_top
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

module debouncer_top(CLK, RAW, LED);
    input CLK, RAW;
    output LED;

    debouncing D0(.RAW(RAW), .CLK(CLK), .CLEAN(LED));
endmodule
