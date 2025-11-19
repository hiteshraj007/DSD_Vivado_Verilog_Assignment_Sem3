
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 15:19:41
// Design Name: 
// Module Name: tb_Universal_Adder
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

`timescale 1ns/1ps

module tb_universal_adder;

    reg  [3:0] A, B;
    reg        op;
    wire [3:0] R;
    wire       carry;

    universal_adder DUT (A, B, op, R, carry);

    initial begin
        $monitor("time=%0dns  A=%d  B=%d  op=%b  →  R=%d  carry=%b",
                   $time, A, B, op, R, carry);

        op = 0; A = 5; B = 3; #10;    // normal add = 8
        op = 1; A = 7; B = 6; #10;    // add with carry-in = 14

        op = 0; A = 9; B = 8; #10;    // 17 (carry)
        op = 1; A = 4; B = 9; #10;    // 14 (with carry)

        $finish;
    end

endmodule
