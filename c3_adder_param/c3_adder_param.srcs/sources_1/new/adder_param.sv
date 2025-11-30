`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 01:35:48 AM
// Design Name: 
// Module Name: adder_param
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


module adder_param #(parameter N = 8)(
        input logic [N-1:0] a, b,
        output logic [N-1:0] sum
    );
    
    assign sum = {1'b0, a} + {1'b0, b};
endmodule
