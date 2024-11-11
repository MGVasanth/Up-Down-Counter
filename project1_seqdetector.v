`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2024 10:59:09 PM
// Design Name: 
// Module Name: seqdet
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


module seqdet(
    input clk,reset,in,
    output reg out
    );
    
    reg a,b,c,d,e,state,nstate;
    
    always @(posedge clk,posedge reset)
    begin
    if(reset==1)
        state=a;
    else
        state=nstate;
    end
    
    
    always @(state,in)
    begin
    case(state)
      a : begin 
        if(in == 1'b0)
          nstate = a;
        else
          nstate = b;
      end
      b : begin
        if(in == 1'b0)
          nstate = c;
        else
          nstate = b;
      end
      c : begin
        if(in == 1'b0)
          nstate = a;
        else
          nstate = d;
      end
      d : begin
        if(in == 1'b0)
          nstate = c;
        else 
          nstate = e;
      end
      e : begin
        if(in == 1'b0)
          nstate = c;
        else
          nstate = b;
          end
      default:
      nstate=a;
      endcase
      end
        
  
  always@(state) begin
    case(state)
      a : begin out = 0;
      end
      b : begin out = 0;
      end
      c : begin out = 0;
      end
      d : begin out = 0;
      end
      e : begin out = 1;
      end
      default:out=0;
      endcase
      end
endmodule
