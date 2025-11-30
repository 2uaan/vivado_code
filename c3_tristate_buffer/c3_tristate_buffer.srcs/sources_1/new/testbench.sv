`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2025 09:05:07 PM
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
    logic in;
    logic oe;
    logic out;
    logic a;
    
    tristate_buffer test (.*);
    
    initial
    begin
        oe = 1;
        in = 0;
        #10;
        in = 1;
        #10;
        
        oe = 0;
        in = 1;
        #10; 
        in = 0;
        #10;
        
        $stop;
    end
endmodule
