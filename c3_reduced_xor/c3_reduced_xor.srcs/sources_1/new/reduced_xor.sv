`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 02:00:27 AM
// Design Name: 
// Module Name: reduced_xor
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


module reduced_xor #(parameter N = 8) (
        input [N-1:0] in,
        output logic rs
    );
//    logic [N:0] temp;   
//    assign temp[0] = 1'b0;
    
//    genvar i;
//    generate
//        for (i = 0; i < N; i = i + 1) begin : xor_loop
//            assign temp[i + 1] = temp[i] ^ in[i];
//        end
//    endgenerate
    
//    assign rs = temp[N-1];
    
    always_comb begin
        logic temp = 0;
        temp = 1'b0;
        
        for (int i = 0; i < N; i = i +1) begin
            temp = temp ^ in[i];
        end
        
        rs = temp;
    end
endmodule
