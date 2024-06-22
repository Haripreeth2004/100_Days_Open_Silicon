// Half Adder Module
module half_adder (
    input wire a,     // Input bit a
    input wire b,     // Input bit b
    output wire sum,  // Sum output
    output wire carry // Carry output
);

    // Sum is the XOR of a and b
    assign sum = a ^ b;

    // Carry is the AND of a and b
    assign carry = a & b;

endmodule
