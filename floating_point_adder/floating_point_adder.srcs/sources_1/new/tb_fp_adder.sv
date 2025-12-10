`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2025 10:25:54 AM
// Design Name: 
// Module Name: tb_fp_adder
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


module tb_fp_adder;
    logic [15:0] dema1, dema2;
    logic sign1, sign2, signR, signde1, signde2;
    logic [3:0] exp1, exp2, expR;
    logic [7:0] frac1, frac2, fracR;
    
    de_to_13bits de1 (
        .dema(dema1),
        .sign_in(signde1),
        .sign(sign1),
        .exp(exp1),
        .frac(frac1)
    );
    de_to_13bits de2 (
        .dema(dema2),
        .sign_in(signde2),
        .sign(sign2),
        .exp(exp2),
        .frac(frac2)
    );
    
    fp_adder_logic test (.*);
    
    initial
    begin
        dema1 = 2340;
        dema2 = 2220;
        signde1 = 0;
        signde2 = 0;
        #10;
        
        dema1 = 2810;
        dema2 = 1606;
        signde1 = 0;
        signde2 = 0;
        #10;
        
        dema1 = 12810;
        dema2 = 11606;
        signde1 = 0;
        signde2 = 0;
        #10;
        
        $stop;
    end
endmodule
