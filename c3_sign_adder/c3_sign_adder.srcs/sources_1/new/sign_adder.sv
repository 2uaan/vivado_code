`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 02:43:17 AM
// Design Name: 
// Module Name: sign_adder
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


module sign_adder #(parameter N = 4) (
        input logic [N-1:0] a,b,
        output logic [N-1:0] sum
    );
    
    logic [N-1:0] num_a, num_b, max, min, num_sum;
    logic sign_a, sign_b, sign_sum;
    
    always_comb begin
        num_a = a[N-2:0];
        num_b = b[N-2:0];
        sign_a = a[N-1];
        sign_b = b[N-1];
        
        if (num_a > num_b) begin
            max = num_a;
            min = num_b;
            sign_sum = sign_a;    
        end
        else begin
            max = num_b;
            min = num_a;
            sign_sum = sign_b;
        end
        
        if (sign_a == sign_b) num_sum = max + min;
        else num_sum = max - min;
        
        sum = {sign_sum, num_sum};
    end
endmodule
