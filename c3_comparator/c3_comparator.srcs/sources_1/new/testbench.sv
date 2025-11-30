`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2025 04:15:07 PM
// Design Name: 
// Module Name: testbench
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


module testbench;
    logic a, b;
    logic eq, gt, lt;
    
    comparator_logic test(.*);
    
    initial
    begin
        a = 0;
        b = 0;
        #10;
        
        a = 1;
        b = 0;
        #10;
        
        a = 0;
        b = 1;
        #10;
        
        a = 1;
        b = 1;
        #10;
        $stop;
    end
endmodule
