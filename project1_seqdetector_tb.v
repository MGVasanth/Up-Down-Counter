`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2024 11:17:17 PM
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
    
    
  reg clk,reset,in;
  wire out;
  seqdet dut(clk,reset,in,out);
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  initial begin
     in = 0;
    reset = 1;
    #10 reset=0;
    #10 in=1;
    #10 in=0;
    #10 in=1;
    #10 in=1;
    #10 in=0;
    #10 in=1;
    #10 in=0;
    #10 in=1;
    #10 in=0;
    #10 in=1;
    #10 in=1;
    #100 $finish;
  end
endmodule
