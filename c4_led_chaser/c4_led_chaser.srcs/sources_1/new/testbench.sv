`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 05:04:44 AM
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
    localparam T = 20;
    logic clk, reset, en;
    logic [7:0] q; 
    
    led_chaser uut (.*);

    
    always begin
        clk = 0;
        #(T/2);
        clk = 1;
        #(T/2);
    end

    initial begin
        
        reset = 1;
        en = 0;
        @(negedge clk); 
        
        
        reset = 0;
        en = 1; 
        
        repeat(100) @(negedge clk);
        
        $stop;
    end
endmodule
