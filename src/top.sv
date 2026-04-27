`include "src/decoder.sv"
`include "src/adder.sv"

module top (
    /** Input/Output Ports */
    input wire [3:0] val1,
    input wire [3:0] val2,
    output logic [7:0] segs
);

    wire [4:0] result;

    adder adder (
        .val1(val1),
        .val2(val2),
        .res(result)
    );

    decoder decoder (
        .bcd(result[3:0]),
        .segs(segs[6:0])
    );

    assign segs[7] = result[4];

endmodule