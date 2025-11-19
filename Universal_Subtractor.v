
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 15:18:33
// Design Name: 
// Module Name: Universal_Subtractor
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

// universal_subtractor.v
// Very Basic 4-bit Universal Subtractor (using 2’s complement)

module universal_subtractor (
    input  [3:0] A,
    input  [3:0] B,
    input        op,        // 0 = A-B, 1 = A-B-1 (borrow in)
    output [3:0] R,
    output       borrow
);

    wire [3:0] B_new;
    wire       bin;

    assign bin   = op;           // borrow input
    assign B_new = (~B) + 1 + bin;   // universal subtract

    assign {borrow, R} = A + B_new;

endmodule


