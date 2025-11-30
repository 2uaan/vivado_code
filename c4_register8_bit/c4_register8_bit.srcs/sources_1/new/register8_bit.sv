`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 03:33:54 AM
// Design Name: 
// Module Name: register8_bit
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


module register8_bit(
        input logic clk, reset,en,
        input logic [7:0] d,
        output logic [7:0] q
    );
    
    always_ff @(posedge clk, posedge reset) begin
        if (reset) q <= 0;
        else if (en) q <= d;
        else q <= q;
    end
endmodule
