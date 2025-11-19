`timescale 1ns/1ps

module tb_universal_subtractor;

    reg  [3:0] A, B;
    reg        op;
    wire [3:0] R;
    wire       borrow;

    universal_subtractor DUT (A, B, op, R, borrow);

    initial begin
        $monitor("time=%0dns  A=%d  B=%d  op=%b  →  R=%d  borrow=%b",
                   $time, A, B, op, R, borrow);

        op = 0; A = 9; B = 4; #10;    // 9 - 4 = 5
        op = 1; A = 9; B = 4; #10;    // 9 - 4 -1 = 4

        op = 0; A = 5; B = 9; #10;    // borrow case
        op = 1; A = 8; B = 7; #10;    // with borrow-in

        $finish;
    end

endmodule
