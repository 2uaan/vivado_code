`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 01:06:55 AM
// Design Name: 
// Module Name: prio_encoder_casez
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


module prio_encoder_casez(
        input logic [3:0] r,
        output logic [2:0] pcode
    );
    
    always_comb begin
        casez (r)
            4'b1???: pcode = 3'b100;
            4'b01??: pcode = 3'b011;
            4'b001?: pcode = 3'b010;
            4'b0001: pcode = 3'b001;
            default: pcode = 3'b000;
        endcase
    end
endmodule
