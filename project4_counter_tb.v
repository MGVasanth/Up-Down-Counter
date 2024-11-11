`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2024 11:03:25 PM
// Design Name: 
// Module Name: tb
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


module tb(

    );
    
    reg clk,reset;
    wire [3:0] down_count,up_count;
    
    updown dut(clk,reset,down_count,up_count);
    
    always
    begin
    #0.5 clk<=0;
    #0.5 clk<=1;
    end
    
    initial
    begin
    
    #10 reset=1;
    #10 reset = 0;
    
    end
endmodule
