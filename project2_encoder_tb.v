`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2024 06:56:01 PM
// Design Name: 
// Module Name: encode_tb
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


module encode_tb(

    );
  reg [3:0] a;
  wire [1:0] out;
  wire parity;
  
  encode dut(a,out,parity);
  
  initial
  begin
  a=4'b0100;
  end
endmodule
