`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2025 02:51:06 PM
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
    logic [1:0] in0, in1;
    logic result;
    
    eq2 test(
        .a(in0),
        .b(in1),
        .aeqb(result)
    );
    
    initial
    begin
        in0 = 2'b00;
        in1 = 2'b00;
        #10;
        
        in0 = 2'b01;
        in1 = 2'b00;
        #10;
        
        in0 = 2'b01;
        in1 = 2'b10;
        #10;
        
        in0 = 2'b01;
        in1 = 2'b01;
        #10;
        
        in0 = 2'b11;
        in1 = 2'b00;
        #10;
        
        in0 = 2'b01;
        in1 = 2'b00;
        #10;
        
        $stop;
    end
endmodule
