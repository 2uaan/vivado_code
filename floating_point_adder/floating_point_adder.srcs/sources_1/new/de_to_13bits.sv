`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2025 11:33:59 AM
// Design Name: 
// Module Name: de_to_13bits
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


module de_to_13bits(
        input logic [15:0] dema,
        input logic sign_in,
        output logic sign,
        output logic [3:0] exp,
        output logic [7:0] frac
    );
    
    assign sign = sign_in;
    
    always_comb begin
        if (dema[15]) exp = 16;
        else if (dema[14]) exp = 15;
        else if (dema[13]) exp = 14;
        else if (dema[12]) exp = 13;
        else if (dema[11]) exp = 12;
        else if (dema[10]) exp = 11;
        else if (dema[9]) exp = 10;
        else if (dema[8]) exp = 9;
        else if (dema[7]) exp = 8;
        else if (dema[6]) exp = 7;
        else if (dema[5]) exp = 6;
        else if (dema[4]) exp = 5;
        else if (dema[3]) exp = 4;
        else if (dema[2]) exp = 3;
        else if (dema[1]) exp = 2;
        else exp = 1;
        
        frac = dema >> (exp - 8);
    end
    
endmodule
