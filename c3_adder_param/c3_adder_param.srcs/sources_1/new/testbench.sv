`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 01:38:09 AM
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
    localparam WIDTH1 = 8;
    localparam WIDTH2 = 16;
    
    logic [WIDTH1-1:0] a1, b1, sum1;
    logic [WIDTH2-1:0] a2, b2, sum2;
    
    adder_param #() test1 (
        .a(a1),
        .b(b1),
        .sum(sum1)
    );
    
    adder_param #(.N(16)) test2 (
        .a(a2),
        .b(b2),
        .sum(sum2)
    );
    
    initial
    begin
        a1 = 10;
        b1 = 40;
        a2 = 30;
        b2 = 20;
        #10;
        
        a1 = 15;
        b1 = 60;
        a2 = 45;
        b2 = 30;
        #10;
        
        a1 = 1;
        b1 = 2;
        a2 = 3;
        b2 = 4;
        #10;
        $stop;
    end

    
endmodule
