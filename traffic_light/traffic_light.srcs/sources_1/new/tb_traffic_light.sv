`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 02:23:13 PM
// Design Name: 
// Module Name: tb_traffic_light
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


module tb_traffic_light;
    logic clk, reset, en;
    logic red, green, yellow;
    logic [7:0] digit1, digit2;
          
    traffic_light_logic test (.*);
    
    localparam T = 100;
    
    always 
    begin
        clk = 0;
        #(T/2);
        clk = 1;
        #(T/2);
    end
    
    initial
    begin
        reset = 1;
        en = 0;
        #T;
        reset = 0;
        en = 1;
        #T;
        
        #5000;
        
        $stop;
    end
endmodule
