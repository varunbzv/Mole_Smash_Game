`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module two_bit_counter(
    input clk,
    output [1:0] Q
    );
    
    reg [1:0] temp = 0 ;
    always @(posedge clk)
    begin
    temp = temp + 1 ;
    end 
    assign Q = temp ;
endmodule
