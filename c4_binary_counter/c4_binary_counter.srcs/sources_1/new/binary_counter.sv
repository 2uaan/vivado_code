`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 03:43:26 AM
// Design Name: 
// Module Name: binary_counter
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


module binary_counter(
        input logic clk, reset,
        output logic [7:0] q
    );
    
    logic [7:0] r, r_next;
    
    always_ff @(posedge clk, posedge reset) begin
        if (reset) r <= 0;
        else r <= r_next;
    end
    assign r_next = r + 1;
    
    assign q = r_next;
endmodule
