`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2025 09:56:31 AM
// Design Name: 
// Module Name: fp_adder_logic
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


module fp_adder_logic(
        input logic sign1, sign2,
        input logic [3:0] exp1, exp2,
        input logic [7:0] frac1, frac2,
        output logic signR,
        output logic [3:0] expR,
        output logic [7:0] fracR
    );
    
    logic signb, signs;
    logic [3:0] expb, exps, expn, exp_diff;
    logic [7:0] fracb, fracs, fraca, fracn, sum_norm;
    logic [8:0] sum;
    logic [2:0] lead;
    
    always_comb begin
        if ({exp1, frac1} > {exp2, frac2}) begin
            signb = sign1;
            signs = sign2;
            expb = exp1;
            exps = exp2;
            fracb = frac1;
            fracs = frac2;
        end
        else begin
            signb = sign1;
            signs = sign2;
            expb = exp1;
            exps = exp2;
            fracb = frac1;
            fracs = frac2;
        end
        
        exp_diff = expb - exps;
        fraca = fracs >> exp_diff;
        
        if (signb == signs)
            sum = {1'b0, fracb} + {1'b0, fraca};
        else sum = {1'b0, fracb} - {1'b0, fraca};
        
        if (sum[7]) lead = 3'o0;
        else if (sum[6]) lead = 3'o1;
        else if (sum[5]) lead = 3'o2;
        else if (sum[4]) lead = 3'o3;
        else if (sum[3]) lead = 3'o4;
        else if (sum[2]) lead = 3'o5;
        else if (sum[1]) lead = 3'o6;
        else lead = 3'o7;
        
        sum_norm = sum << lead;
        
        if (sum[8]) begin
            expn = expb + 1;
            fracn = sum[8:1];
        end
        else if (lead > expb) begin
            expn = 0;
            fracn = 0;
        end
        else begin
            expn = expb - lead;
            fracn = sum_norm;
        end
        
        signR = signb;
        expR = expn;
        fracR = fracn;
    end
    
    
endmodule
