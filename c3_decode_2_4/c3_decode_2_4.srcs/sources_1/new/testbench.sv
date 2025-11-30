`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2025 09:45:16 PM
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
    logic [1:0] a;
    logic en;
    logic [3:0] y;
    
    decode_2_4 test (.*);
    
    initial
    begin
        en = 0;
        a = 2'b00;
        #10;
        a = 2'b01;
        #10;
        a = 2'b10;
        #10;
        a = 2'b11;
        #30;
        
        en = 1;
        a = 2'b00;
        #10;
        a = 2'b01;
        #10;
        a = 2'b10;
        #10;
        a = 2'b11;
        #10;
        
        $stop;
    end
endmodule
