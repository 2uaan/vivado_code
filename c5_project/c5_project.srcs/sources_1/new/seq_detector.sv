`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 11:11:33 AM
// Design Name: 
// Module Name: seq_detector
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


module seq_detector (
    input  logic clk, reset, d_in,
    output logic tick
);
    // Chu?i c?n tìm: 1011
    // N[3]=1, N[2]=0, N[1]=1, N[0]=1

    typedef enum {s0, s1, s2, s3, s4} state_type;
    state_type state_r, state_next;

    // 1. State Register
    always_ff @(posedge clk, posedge reset) begin
        if (reset) state_r <= s0;
        else       state_r <= state_next;
    end

    // 2. Next-state Logic & Output Logic
    always_comb begin
        // Gán m?c ??nh
        state_next = state_r;
        tick = 0;

        case (state_r)
            s0: // Ch? s? 1 ??u tiên
                if (d_in) state_next = s1;
                else      state_next = s0;

            s1: // ?ã có 1. C?n 0.
                if (~d_in) state_next = s2; // Có 10 -> Sang s2
                else       state_next = s1; // Có 11 -> V?n gi? ? s1 (l?y s? 1 sau làm ??u)

            s2: // ?ã có 10. C?n 1.
                if (d_in)  state_next = s3; // Có 101 -> Sang s3
                else       state_next = s0; // Có 100 -> H?ng h?t -> V? s0

            s3: // ?ã có 101. C?n 1.
                if (d_in) begin
                     state_next = s4; // Có 1011 -> ?ích
                     // tick = 1; // (Mealy output - tick ngay l?p t?c)
                end else begin
                     state_next = s2; // Có 1010 -> Gi? ???c 10 -> V? s2
                end

            s4: // Tr?ng thái ?ích (Moore output - tick ? ?ây ?n ??nh h?n)
                begin
                    tick = 1; // Output Moore
                    if (d_in) state_next = s1; // 1011-1 -> L?y s? 1 làm ??u -> V? s1
                    else      state_next = s2; // 1011-0 -> L?y 10 làm ??u -> V? s2 (Overlapping)
                end
            
            default: state_next = s0;
        endcase
    end
endmodule