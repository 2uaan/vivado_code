`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 04:47:12 AM
// Design Name: 
// Module Name: led_chaser
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


module led_chaser(
    input  logic clk, reset,
    input  logic en,         
    output logic [7:0] q     
);
    logic dir_reg; 

    
    always_ff @(posedge clk, posedge reset) begin
        if (reset) 
            dir_reg <= 1; 
        else begin
            
            if (q[6] == 1)      
                dir_reg <= 0;
            
            else if (q[1] == 1) 
                dir_reg <= 1;
            
        end
    end

    
    universal_shift_reg u_shift (
        .dir(dir_reg), 
        .* );

endmodule
