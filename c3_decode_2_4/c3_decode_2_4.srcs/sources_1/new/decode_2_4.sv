`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2025 09:36:10 PM
// Design Name: 
// Module Name: decode_2_4
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


module decode_2_4(
        input logic en,
        input logic [1:0] a,
        output logic [3:0] y
    );
    
    assign y = (en)? (a[1]) ? (a[0]) ? 4'b1000 : 4'b0100 : (a[0]) ? 4'b0010 : 4'b0001 : 4'b0000;
endmodule
