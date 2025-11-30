`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2025 04:10:21 PM
// Design Name: 
// Module Name: comparator_logic
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


module comparator_logic(
        input logic a,b,
        output logic eq, lt, gt
    );
    
    always_comb begin
        eq = 0;
        lt = 0;
        gt = 0;
        
        if (a == b) eq = 1;
        else if (a > b) gt = 1;
        else lt = 1;
    end
endmodule
