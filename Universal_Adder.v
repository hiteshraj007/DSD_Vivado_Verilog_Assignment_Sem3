// universal_adder.v
// Very Basic 4-bit Universal Adder

module universal_adder (
    input  [3:0] A,
    input  [3:0] B,
    input        op,     // 0 = normal add, 1 = add with carry-in
    output [3:0] R,
    output       carry
);

    wire cin;
    assign cin = op;     // universal control

    assign {carry, R} = A + B + cin;

endmodule
