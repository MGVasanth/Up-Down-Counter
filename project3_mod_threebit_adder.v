`timescale 1ns / 1ps
`include "fulladder.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2024 10:29:13 PM
// Design Name: 
// Module Name: threebit_adder
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


module threebit_adder(
    input [2:0] a,
    input [2:0] b,
    
    output [2:0] s,
    output [2:0] ca
    );
    
    fulladder f1(a[0],b[0],0,s[0],ca[0]);
    fulladder f2(a[1],b[1],ca[0],s[1],ca[1]);
    fulladder f3(a[2],b[2],ca[1],s[2],ca[2]);
    
    
endmodule
