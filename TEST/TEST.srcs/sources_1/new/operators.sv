`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2025 01:08:15 PM
// Design Name: 
// Module Name: operators
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


module operators;
    logic [7:0] a,b,c;

    initial
    begin
        $display("------------------------");
        a = 8'b11001111;
        $display("a = %b",a);
        $display("a >> 2: %b",(a >> 2));
        $display("a >>> 2: %b", (a >>> 2));
        $display("a << 2: %b",(a << 2));
        $display("a <<< 2: %b",(a <<< 2));
        $display("------------------------");
        a = 8'b01001111;
        $display("a = %b",a);
        $display("a >> 2: %b",(a >> 2));
        $display("a >>> 2: %b", (a >>> 2));
        $display("a << 2: %b",(a << 2));
        $display("a <<< 2: %b",(a <<< 2));
        
        $display("------------------------");
        $display("1'bx == 1'bx: ", (1'bz == 1'bz));
        $display("1'bx === 1'bx: ",  (1'bz === 1'bz));
        $display("------------------------");
        a = 4'b0010;
        b = 4'b1111;
        $display("a = %b",a);
        $display("b = %b",b);
        $display("a | b: %b", a | b);
        $display("a & b: %b", a & b);
        $display("------------------------");
        a = 8'b11111111;
        b = 8'b00000001;
        $display("(a + b) >> 1: %b", ((a + b) >> 1));
        $display("(0 + a + b) >> 1: %b", ((0 + a + b) >> 1));
        $display("------------------------");
    end
endmodule
