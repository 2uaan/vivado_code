`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 03:22:14 PM
// Design Name: 
// Module Name: seven_segment
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


module seven_segment(
        input logic [3:0] count,
        input logic dp,
        output logic [7:0] digit
    );
    
    always_comb begin
            case (count)
                4'h0: digit[6:0] = 7'b1000000;
                4'h1: digit[6:0] = 7'b1111001;
                4'h2: digit[6:0] = 7'b0100100;
                4'h3: digit[6:0] = 7'b0110000;
                4'h4: digit[6:0] = 7'b0011001;
                4'h5: digit[6:0] = 7'b0010010;
                4'h6: digit[6:0] = 7'b0000010;
                4'h7: digit[6:0] = 7'b1111000;
                4'h8: digit[6:0] = 7'b0000000;
                4'h9: digit[6:0] = 7'b0010000;
                default: digit[6:0] = 7'b1111111; 
            endcase
            digit[7] = dp; 
        end
endmodule
