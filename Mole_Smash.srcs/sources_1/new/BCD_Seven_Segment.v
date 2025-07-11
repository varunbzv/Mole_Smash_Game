`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////


module BCD_Seven_Segment(
    input [3:0] Y,
    output reg [6:0] disp
    );
    
    always @(Y)
    begin
    case(Y)
    
    0: disp = 7'b0000001 ;
    1: disp = 7'b1001111 ;
    2: disp = 7'b0010010 ;
    3: disp = 7'b0000110 ;
    4: disp = 7'b1001100 ;
    5: disp = 7'b0100100 ;
    6: disp = 7'b0100000 ;
    7: disp = 7'b0001111 ;
    8: disp = 7'b0000000 ;
    9: disp = 7'b0001100 ;
    endcase
    end 
    
endmodule
