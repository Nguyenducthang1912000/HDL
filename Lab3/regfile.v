module regfile(input clock, input [2:0] address, input en_write, inout [7:0] data);

// Register file storage
reg [7:0] registers[7:0];

// Read and write from register file
always @(posedge clock)
    if (en_write)
        registers[address] <= data;
    else
        out_val <= registers[address];

// Output data if not writing. If we are writing,
// do not drive output pins. This is denoted
// by assigning 'z' to the output pins.
reg [7:0] out_val;
assign data = en_write ? 8'bz : out_val;

endmodule