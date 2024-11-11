`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2024 10:03:11 PM
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
    /* reg a,b,c;
     wire s,ca;
    fulladder dut(a,b,c,s,ca);          //full adder
    initial
    begin
     a=0;b=0;c=0;
     #10 a=1;b=1;c=1;
    #1000
    $finish;
    end */ 
    
    /*reg [2:0] a,b;
    
    wire [2:0] s,ca;
    threebit_adder dut(a,b,s,ca);         //three bit adder
    initial
    begin
    a=011;b=100;
    
    end */
    
    reg [2:0] a,b;
    wire [5:0] p;
    
    threebit_multiplier dut(a,b,p);
    initial
    begin
    a=000;b=000;
    
    #10 a=011;b=011;
    end
    
endmodule
