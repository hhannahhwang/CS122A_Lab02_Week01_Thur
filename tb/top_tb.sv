`include "src/top.sv"
`timescale 1ns/1ps         // Set tick to 1ns. Set sim resolution to 1ps.

/**
 * Note:
 *  The TB below is only an example of a testbench written in SV.
 *  Adapt this for your lab assignments as you see fit.
 *  An example clk signal has been added to show what a signal decl and usage looks like.
 *     You are welcome to delete the clk signal if it's not needed.
 *     For instance, purely combinational circuits do not need clks.
 *     So for labs without sequential elements, you can remove them.
 */

module top_tb;

/** declare tb signals below */
logic [3:0] bcd_tb;   //input
logic [6:0] seg7_tb;  //output

/** declare module(s) below */
top dut                    // declare an inst of top called "dut" (device under test)
(
    .bcd(bcd_tb),
    .seg7(seg7_tb)
);

initial begin
    $dumpfile("build/top.vcd"); // intermediate file for waveform generation
    $dumpvars(0, top_tb);       // capture all signals under top_tb
end

initial begin
    /** testbench logic goes below */
    $display("Starting BCD-to-7SEG Siulation...");
    $display("---------------");

    for (int i = 0; i < 16; i++) begin
        bcd_tb = i;
        #10;
    end

    $display("Simulation Finished.");
    $finish;            // end simulation, otherwise it runs indefinitely
end

endmodule
