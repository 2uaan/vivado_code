`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 02:57:19 PM
// Design Name: 
// Module Name: light_logic
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


module light_logic(
        input logic [1:0] color,
        output logic red, green, yellow
    );
    
    always_comb begin
        case (color)
            2'b00: {red, green, yellow} = 3'b100;
            2'b01: {red, green, yellow} = 3'b010;
            2'b10: {red, green, yellow} = 3'b001;
            default: {red, green, yellow} = 3'b000;
        endcase
    end
endmodule
