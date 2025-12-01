`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 01:35:00 PM
// Design Name: 
// Module Name: traffic_light_logic
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


module traffic_light_logic(
        input logic clk, reset, en,
        output logic red, green, yellow,
        output logic [7:0] digit1, digit2
    );
    
    logic [2:0][4:0] light_time;
    assign light_time[0] = 5'd18;
    assign light_time[2] = 5'd3;
    assign light_time[1] = 5'd15;
    
    typedef enum logic [1:0] {RED = 0, GREEN = 1,  YELLOW = 2} color_type;
    color_type color, color_next; 
    logic [4:0] count, count_next;
    
    always_ff @(posedge clk, posedge reset) begin
        if (reset) begin
            count <= light_time[0];
            color <= RED;
        end else if (~en) begin
            count <= count;
            color <= color;
        end else begin
            count <= count_next;
            color <= color_next;
        end
    end
    
    always_comb begin
        color_next = color;
        count_next = count - 1;
        
        if (count == 0) begin
            case (color)
                RED:color_next = GREEN;
                GREEN:color_next = YELLOW;
                YELLOW: color_next = RED;
                default: color_next = RED;
            endcase 
            count_next = light_time[color_next];
        end     
    end
    
    light_logic light (
        .color(color),
        .red(red),
        .green(green),
        .yellow(yellow)
    );
    
    seven_segment d1 (
        .count(count/10),
        .dp(0),
        .digit(digit1)
    );
    seven_segment d2 (
        .count(count%10),
        .dp(0),
        .digit(digit2)
    );
endmodule
