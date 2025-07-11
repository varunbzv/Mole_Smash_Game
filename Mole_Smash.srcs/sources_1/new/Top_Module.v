`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: Top_Module
//////////////////////////////////////////////////////////////////////////////////


module Top_Module(
    input clk ,
    input [15:0] sw,
    input reset ,
    output [15:0] led ,
    output [3:0] an,
    output [6:0] seg,
    output [5:0] score_count
    );
    
    wire clk_out ;
    wire timer_clk_out ;
    wire [3:0] mux_out ;
    wire [1:0] counter_out ;

    wire [3:0] timer_count_ones, timer_count_tens, score_ones, score_tens ;
    wire [5:0] score_count ;
    wire [4:0] timer_count ;
    
    
    wire [1:0] dummy1, dummy2;

Binary_BCD_Converter UBCD1(
    .A({2'b00, score_count}), 
    .ones(score_ones), 
    .tens(score_tens), 
    .hundreds(dummy1) 
);

Binary_BCD_Converter UBCD2(
    .A({3'b000, timer_count}), 
    .ones(timer_count_ones), 
    .tens(timer_count_tens), 
    .hundreds(dummy2) 
);

    four_one_Mux UMUX(
    .A(score_ones),
    .B(score_tens),
    .C(timer_count_ones),
    .D(timer_count_tens),
    .SS(counter_out),
    .Y(mux_out)
);

    Slow_Clock USCK(clk, clk_out);
    two_bit_counter U2BC(clk_out, counter_out);
    Decoder UD(counter_out, an);
    BCD_Seven_Segment UBCDSEG(mux_out, seg);   
    timerClock UTCK(clk ,timer_clk_out);
    timerCount UTC (clk, reset, timer_count);


Mole_Smash_Game UMSG(
    .clk(clk),
    .sw(sw),
    .reset(reset),
    .led(led),
    .score_count(score_count)
);

    
endmodule
