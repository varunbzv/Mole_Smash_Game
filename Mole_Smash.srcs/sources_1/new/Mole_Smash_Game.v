`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module Mole_Smash_Game(
    input clk,
    input [15:0] sw,
    input reset,
    output reg [15:0] led,
    output reg [5:0] score_count );
    
    localparam 
    S000000 = 0,
    S000001 = 1,
    S000010 = 2,
    S000011 = 3,
    S000100 = 4,
    S000101 = 5,
    S000110 = 6,
    S000111 = 7,
    S001000 = 8,
    S001001 = 9,
    S001010 = 10,
    S001011 = 11,
    S001100 = 12,
    S001101 = 13,
    S001110 = 14,
    S001111 = 15,
    S010000 = 16,
    S010001 = 17,
    S010010 = 18,
    S010011 = 19,
    S010100 = 20,
    S010101 = 21,
    S010110 = 22,
    S010111 = 23,
    S011000 = 24,
    S011001 = 25,
    S011010 = 26,
    S011011 = 27,
    S011100 = 28,
    S011101 = 29,
    S011110 = 30,
    S011111 = 31,
    S100000 = 32;
    
    reg [5:0] current_state = 0;
    reg [5:0] next_state = 0;
    
    always @(posedge clk) begin
    if (reset)
    current_state <= S000000 ;
    else
    current_state <= next_state ;
    end
    
    always @(posedge clk) begin
    
    end
    
    always @(current_state ,sw[15:0])
    begin
    case(current_state)
    
  S000000 : begin 
    next_state <= S000000 ;
    led[15:0] <= 0 ;
    score_count <= 6'b000000 ;
    
    
    led[1] <= 1 ; // led[2] will also work 
    if(sw[1])
    next_state <= S000001 ;
    else 
    next_state <= S000000 ; 
    end
    
  S000001 : begin
  
    score_count <= 6'b000001 ;
    led[15:0] <= 0 ;
    led[11] <= 1 ;
    if(sw[11])
    next_state <= S000010 ;
    else
    next_state <= S000001 ;
    end
    
  S000010 : begin
  
    score_count <= 6'b000010 ;
    led[15:0] <= 0 ;
    led[2] <= 1 ;
    if(sw[2])
    next_state <= S000011 ;
    else
    next_state <= S000010 ;
    end
    
    S000011 : begin
  
    score_count <= 6'b000011 ;
    led[15:0] <= 0 ;
    led[12] <= 1 ;
    if(sw[12])
    next_state <= S000100 ;
    else
    next_state <= S000011 ;
    end
    
    S000100 : begin

    score_count <= 6'b000100 ;
    led[15:0] <= 0 ;
    led[8] <= 1 ;
    if(sw[8])
    next_state <= S000101 ;
    else
    next_state <= S000100 ;
    end

    
    S000101 : begin
  
    score_count <= 6'b000101 ;
    led[15:0] <= 0 ;
    led[7] <= 1 ;
    if(sw[7])
    next_state <= S000110 ;
    else
    next_state <= S000101 ;
    end
    
    S000110 : begin
  
    score_count <= 6'b000110 ;
    led[15:0] <= 0 ;
    led[5] <= 1 ;
    if(sw[5])
    next_state <= S000111 ;
    else
    next_state <= S000110 ;
    end
    
    S000111 : begin
  
    score_count <= 6'b000111 ;
    led[15:0] <= 0 ;
    led[3] <= 1 ;
    if(sw[3])
    next_state <= S001000 ;
    else
    next_state <= S000111 ;
    end
    
    S001000 : begin
  
    score_count <= 6'b001000 ;
    led[15:0] <= 0 ;
    led[6] <= 1 ;
    if(sw[6])
    next_state <= S001001 ;
    else
    next_state <= S001000 ;
    end
    
    S001001 : begin
  
    score_count <= 6'b001001 ;
    led[15:0] <= 0 ;
    led[6] <= 1 ;
    if(sw[6])
    next_state <= S001010 ;
    else
    next_state <= S001001 ;
    end
    
    S001010 : begin
  
    score_count <= 6'b001010 ;
    led[15:0] <= 0 ;
    led[2] <= 1 ;
    if(sw[2])
    next_state <= S001011 ;
    else
    next_state <= S001010 ;
    end
    
    S001011 : begin
  
    score_count <= 6'b001011 ;
    led[15:0] <= 0 ;
    led[1] <= 1 ;
    if(sw[1])
    next_state <= S001100 ;
    else
    next_state <= S001011 ;
    end
    
    S001100 : begin

    score_count <= 6'b001100 ;
    led[15:0] <= 0 ;
    led[14] <= 1 ;
    if(sw[14])
    next_state <= S001101 ;
    else
    next_state <= S001100 ;
    end

    
    S001101 : begin
  
    score_count <= 6'b001101 ;
    led[15:0] <= 0 ;
    led[11] <= 1 ;
    if(sw[11])
    next_state <= S001110 ;
    else
    next_state <= S001101 ;
    end
    
    S001110 : begin
  
    score_count <= 6'b001110 ;
    led[15:0] <= 0 ;
    led[5] <= 1 ;
    if(sw[5])
    next_state <= S001111 ;
    else
    next_state <= S001110 ;
    end
    
    S001111 : begin
  
    score_count <= 6'b001111 ;
    led[15:0] <= 0 ;
    led[9] <= 1 ;
    if(sw[9])
    next_state <= S010000 ;
    else
    next_state <= S001111 ;
    end
    
    S010000 : begin
  
    score_count <= 6'b010000 ;
    led[15:0] <= 0 ;
    led[3] <= 1 ;
    if(sw[3])
    next_state <= S010001 ;
    else
    next_state <= S010000 ;
    end
    
    
    S010001 : begin
  
    score_count <= 6'b010001 ;
    led[15:0] <= 0 ;
    led[1] <= 1 ;
    if(sw[1])
    next_state <= S010010 ;
    else
    next_state <= S010001 ;
    end
    
    
    S010010 : begin
  
    score_count <= 6'b010010 ;
    led[15:0] <= 0 ;
    led[2] <= 1 ;
    if(sw[2])
    next_state <= S010011 ;
    else
    next_state <= S010010 ;
    end
    
    S010011 : begin
  
    score_count <= 6'b010011 ;
    led[15:0] <= 0 ;
    led[12] <= 1 ;
    if(sw[12])
    next_state <= S010100 ;
    else
    next_state <= S010011 ;
    end
    
    S010100 : begin

    score_count <= 6'b010100 ;
    led[15:0] <= 0 ;
    led[8] <= 1 ;
    if(sw[8])
    next_state <= S010101 ;
    else
    next_state <= S010100 ;
    end

    
    S010101 : begin
  
    score_count <= 6'b010101 ;
    led[15:0] <= 0 ;
    led[7] <= 1 ;
    if(sw[7])
    next_state <= S010110 ;
    else
    next_state <= S010101 ;
    end
    
    S010110 : begin
  
    score_count <= 6'b010110 ;
    led[15:0] <= 0 ;
    led[5] <= 1 ;
    if(sw[5])
    next_state <= S010111 ;
    else
    next_state <= S010110 ;
    end
    
    S010111 : begin
  
    score_count <= 6'b010111 ;
    led[15:0] <= 0 ;
    led[3] <= 1 ;
    if(sw[3])
    next_state <= S011000 ;
    else
    next_state <= S010111 ;
    end
    
    S011000 : begin
  
    score_count <= 6'b011000 ;
    led[15:0] <= 0 ;
    led[6] <= 1 ;
    if(sw[6])
    next_state <= S011001 ;
    else
    next_state <= S011000 ;
    end
    
    S011001 : begin
  
    score_count <= 6'b011001 ;
    led[15:0] <= 0 ;
    led[6] <= 1 ;
    if(sw[6])
    next_state <= S011010 ;
    else
    next_state <= S011001 ;
    end
    
    S011010 : begin
  
    score_count <= 6'b011010 ;
    led[15:0] <= 0 ;
    led[2] <= 1 ;
    if(sw[2])
    next_state <= S011011 ;
    else
    next_state <= S011010 ;
    end
    
    S011011 : begin
  
    score_count <= 6'b011011 ;
    led[15:0] <= 0 ;
    led[1] <= 1 ;
    if(sw[1])
    next_state <= S011100 ;
    else
    next_state <= S011011 ;
    end
    
    S011100 : begin

    score_count <= 6'b011100 ;
    led[15:0] <= 0 ;
    led[14] <= 1 ;
    if(sw[14])
    next_state <= S011101 ;
    else
    next_state <= S011100 ;
    end

    
    S011101 : begin
  
    score_count <= 6'b011101 ;
    led[15:0] <= 0 ;
    led[11] <= 1 ;
    if(sw[11])
    next_state <= S011110 ;
    else
    next_state <= S011101 ;
    end
    
    S011110 : begin
  
    score_count <= 6'b011110 ;
    led[15:0] <= 0 ;
    led[5] <= 1 ;
    if(sw[5])
    next_state <= S011111 ;
    else
    next_state <= S011110 ;
    end
    
    S011111 : begin
  
    score_count <= 6'b011111 ;
    led[15:0] <= 0 ;
    led[9] <= 1 ;
    if(sw[9])
    next_state <= S100000 ;
    else
    next_state <= S011111 ;
    end
    
    S100000 : begin
    next_state <= S100000 ;
    score_count <= 32 ;
    led[15:0] <= 0 ;
    end
    
    default : begin
    next_state = S000000 ;
    end
    
    endcase 
    end 
endmodule
