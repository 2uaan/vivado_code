`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2025 03:48:27 PM
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
    logic [3:0] hex;
    logic a, b, c, d;
    
    B_H_logic test(.*);
    
    initial
    begin
        hex = 4'h0;
        #10;
        
        hex = 4'h4;
        #10;
        
        hex = 4'hf;
        #10;
        
        hex = 4'h8;
        #10;
        
        $stop;
    end
endmodule
