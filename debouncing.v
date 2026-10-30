//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh
// Engineer: Mahir Ashab Enan, Navjot Bains
//
// Create Date: 10/23/2026
// Design Name: lab 6
// Module Name: debouncing
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

module debouncing(RAW, CLK, CLEAN);
    input RAW, CLK;
    output reg CLEAN;

    reg [2:0] counter;
    wire TC;


    always @(posedge CLK) begin
        if (~RAW)
            counter <= 3'b000;
        else
            counter <= counter + 3'b001;
    end

    assign TC = (counter == 3'b111);


    always @(posedge CLK) begin
        if (~RAW)
            CLEAN <= 1'b0;
        else if (TC)
            CLEAN <= 1'b1;
    end
endmodule
