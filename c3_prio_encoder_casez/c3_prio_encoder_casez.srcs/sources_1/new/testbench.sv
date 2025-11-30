`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 01:11:01 AM
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
    logic [3:0] r;
    logic [2:0] pcode;
    
    prio_encoder_casez test(.*);
    
    initial
    begin
        r = 4'b0100;
        #10;
        r = 4'b1100;
        #10;
        r = 4'b0110;
        #10;
        r = 4'b0000;
        #10;
        r = 4'b0001;
        #10;
        r = 4'b0111;
        #10;
        $stop;
    end
endmodule
