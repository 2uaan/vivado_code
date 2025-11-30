`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 03:47:23 AM
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
    
    logic clk, reset;
    logic [7:0] q;
    
    binary_counter test (.*);
    
    always begin
        clk = 0;
        #5;
        clk = 1;
        #5;
    end
    
    initial
    begin
        reset = 1;
        @(negedge clk);
        
        reset = 0;
        @(negedge clk);
        
        wait(q == 8'b00001111);
        
        reset = 1;
        @(negedge clk);
                
        reset = 0;
        @(negedge clk);
        
        repeat(10) @(negedge clk);
        
        $stop;
    end
    
endmodule
