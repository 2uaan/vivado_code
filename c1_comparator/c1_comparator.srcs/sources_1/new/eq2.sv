`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2025 02:17:31 PM
// Design Name: 
// Module Name: eq2
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


module eq2(
        input logic [1:0] a,b,
        output logic aeqb
    );
    
    logic e0,e1;
    
    eq1 eq_bit0 (
        .i0(a[0]),
        .i1(b[0]),
        .eq(e0)
    );
    
    eq1 eq_bit1 (
        .i0(a[1]),
        .i1(b[1]),
        .eq(e1)
    );
    
    assign aeqb = e0 & e1;
    
endmodule
