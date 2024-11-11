`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2024 10:57:01 PM
// Design Name: 
// Module Name: updown
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


module updown(
    input clk,
    input reset,
    output reg [3:0] down_count,
    output reg [3:0] up_count
    );
    

// Asynchronous up counter
    //reg [3:0] up_count;

    always @(posedge clk or posedge reset)
    begin
    if (reset)
    begin
        up_count <= 0;
    end 
    else
     begin
        if (up_count == 15) 
        begin
            up_count <= 0;
        end 
        else 
        begin
            up_count <= up_count + 1;
        end
        end
        end

// Asynchronous down counter
    always @(posedge clk or posedge reset)
    begin
    if (reset) 
    begin
       down_count <= 4'b1111;
    end
    else 
    begin
     if (up_count == 12) 
     begin
        down_count <= down_count - 1;
     end
     end
    end

endmodule

