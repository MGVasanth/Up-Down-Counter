`timescale 1ns / 1ps
`include "threebit_adder.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2024 10:45:37 PM
// Design Name: 
// Module Name: threebit_multiplier
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


module threebit_multiplier(
    input [2:0] a,
    input [2:0] b,
    output [5:0] p
    );
    
   wire w1,w2,w3,w4,w5,w6,w7,w8,w9;
   wire [2:0] in1,in2,in3,in4,out1,out2,out3,out4;
   
   and a1(w1,a[0],b[1]);
   and a2(w2,a[1],b[1]);
   and a3(w3,a[2],b[1]);
   and a4(w4,a[0],b[0]);
   and a5(w5,a[1],b[0]);
   and a6(w6,a[2],b[0]);
   and a7(w7,a[0],b[2]);
   and a8(w8,a[1],b[2]);
   and a9(w9,a[2],b[2]);
   
   assign in1 = {w3,w2,w1};
   assign in2 = {0,w6,w5};
   
   threebit_adder t1(in1,in2,out1,out2);
   assign p[0] = w4;
   assign p[1] = out1[0];
   
   assign in3 = {w9,w8,w7};
   assign in4 = {out2[2],out1[2],out1[1]};
   
   threebit_adder t2(in4,in4,out3,out4);
   
   assign p[5] = out4[2];
   assign p[4] = out3[2];
   assign p[3] = out3[1];
   assign p[2] = out3[0];
   
endmodule
