`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 04:48:13 AM
// Design Name: 
// Module Name: universal_shift_reg
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


module universal_shift_reg(
    input  logic en, dir, clk, reset,
    output logic [7:0] q
);
    logic [7:0] r_reg, r_next;

    always_ff @(posedge clk, posedge reset) begin
        if (reset) 
            r_reg <= 8'b00000001; 
        else 
            r_reg <= r_next;
    end

    
    always_comb begin
        if (en) begin
            if (dir) r_next = {r_reg[6:0], 1'b0}; // D?ch trái
            else     r_next = {1'b0, r_reg[7:1]}; // D?ch ph?i
        end else begin
            r_next = r_reg; 
        end
    end

    assign q = r_reg; 
endmodule
