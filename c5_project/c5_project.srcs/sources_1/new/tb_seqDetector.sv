`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 11:29:43 AM
// Design Name: 
// Module Name: tb_seqDetector
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


module tb_seqDetector;

    localparam T = 20;
    logic clk, reset, d_in, tick;
    
    seq_detector test (.*);
    always
    begin
        clk = 0;
        #(T/2);
        clk = 1;
        #(T/2);
    end
    
    initial
    begin    
        reset = 0;
        #(T/2);
        reset = 1;
        #(T/2);
        
        d_in = 0;
        @(negedge clk);
        d_in = 1;
        @(negedge clk);
        d_in = 1;
        @(negedge clk);
        d_in = 0;
        @(negedge clk);
        d_in = 1;
        @(negedge clk);
        d_in = 0;
        @(negedge clk);
        d_in = 1;
        @(negedge clk);
        d_in = 1;
        @(negedge clk);
        d_in = 0;
        @(negedge clk);
        d_in = 0;
        @(negedge clk);
        d_in = 0;
        @(negedge clk);
        d_in = 0;
        @(negedge clk);
        
        $stop;
    end
    
endmodule
