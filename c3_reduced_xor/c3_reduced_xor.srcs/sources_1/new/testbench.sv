`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 02:06:48 AM
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
    localparam TEST_WIDTH = 8;
    
    logic [TEST_WIDTH-1:0] in;
    logic rs;
    
    reduced_xor #(.N(TEST_WIDTH)) test (
        .in(in),  // N?i dây 'in' vào c?ng 'a
        .rs(rs)   // N?i dây 'rs' vào c?ng 'y'
    );
    
    initial
    begin
        in = 89;
        #10; 
        
        in = 100;
        #10;
                
        in = 14;
        #10;
        
        in = 78;
        #10;
        
        $stop;    
    end
endmodule
