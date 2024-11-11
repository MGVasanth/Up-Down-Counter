`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2024 06:53:33 PM
// Design Name: 
// Module Name: encode
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


module encode(
    input [3:0] a,
    output reg [1:0] out,
    output reg parity
    );
  
  
  
  


    always @(*) begin
    // Priority Encoder
    case (a)
        4'b1000: out = 2'b11;
        4'b0100: out = 2'b10;
        4'b0010: out = 2'b01;
        4'b0001: out = 2'b00;
        default: out = 2'b00;  // Default case
    endcase
    parity = ^a;  
    
    
end

endmodule

   
    

