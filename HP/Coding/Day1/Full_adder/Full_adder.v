// Full Adder Module
module full_adder (
    input wire a,      // Input bit a
    input wire b,      // Input bit b
    input wire cin,    // Carry-in bit
    output wire sum,   // Sum output
    output wire cout   // Carry-out output
);

    // Internal signals
    wire sum1, c1, c2;

    // Half Adder for a and b
    assign sum1 = a ^ b;
    assign c1 = a & b;

    // Half Adder for sum1 and cin
    assign sum = sum1 ^ cin;
    assign c2 = sum1 & cin;

    // Carry-out
    assign cout = c1 | c2;

endmodule
