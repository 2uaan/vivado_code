`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 02:55:28 AM
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
    localparam TEST_WIDTH = 4;
    
    logic [TEST_WIDTH-1:0] a,b,sum;
    
    sign_adder #(.N(TEST_WIDTH)) test (.*);
    
    initial
    begin
        a = 6;
        b = 14;
        #10;
        
        a = 10;
        b= 3;
        #10;
        
        a = 1;
        b = 7;
        #10;
        
        a = 11;
        b = 12;
        #10;
        
        $stop;
    end
endmodule
