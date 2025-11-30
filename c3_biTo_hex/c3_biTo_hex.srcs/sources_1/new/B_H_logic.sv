`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2025 03:25:39 PM
// Design Name: 
// Module Name: B_H_logic
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


module B_H_logic(
        input logic [3:0] hex,
        output logic a, b, c, d
    );
    
    always_comb begin
        case (hex)
            4'h1: {a, b, c, d} = 4'b0001;
            4'h2: {a, b, c, d} = 4'b0010;
            4'h3: {a, b, c, d} = 4'b0011;
            4'h4: {a, b, c, d} = 4'b0100;
            4'h5: {a, b, c, d} = 4'b0101;
            4'h6: {a, b, c, d} = 4'b0110;
            4'h7: {a, b, c, d} = 4'b0111;
            4'h8: {a, b, c, d} = 4'b1000;
            4'h9: {a, b, c, d} = 4'b1001;
            4'ha: {a, b, c, d} = 4'b1010;
            4'hb: {a, b, c, d} = 4'b1011;
            4'hc: {a, b, c, d} = 4'b1100;
            4'hd: {a, b, c, d} = 4'b1101;
            4'he: {a, b, c, d} = 4'b1110;
            4'hf: {a, b, c, d} = 4'b1111;
            default {a, b, c, d} = 4'b0000;
        endcase 
    end
endmodule
