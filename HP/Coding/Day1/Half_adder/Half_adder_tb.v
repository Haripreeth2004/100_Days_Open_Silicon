// Testbench for Half Adder
module tb_half_adder;

    // Inputs
    reg a;
    reg b;

    // Outputs
    wire sum;
    wire carry;

    // Instantiate the Half Adder
    half_adder uut (
        .a(a), 
        .b(b), 
        .sum(sum), 
        .carry(carry)
    );

    // Test Vector
    initial begin
        // Initialize inputs
        a = 0;
        b = 0;

        // Generate waveform file
        $dumpfile("half_adder.vcd");
        $dumpvars(0, tb_half_adder);

        // Display header
        $display("a b | sum carry");
        $display("-------------");

        // Test cases
        a = 0; b = 0; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 0; b = 1; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 1; b = 0; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 1; b = 1; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        // Finish simulation
        $finish;
    end

endmodule
