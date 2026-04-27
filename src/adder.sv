module adder (
    input wire [3:0] val1,
    input wire [3:0] val2,
    output logic [4:0] res
);

    assign res = ~val1 + ~val2;

endmodule