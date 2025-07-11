`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module timerCount(
    input clk,
    input reset,
    output reg [4:0] count
    );

    wire clk_out;
    timerClock UTC(clk, clk_out);

    reg [4:0] current_count = 20;

    always @(posedge clk_out) begin
        if (reset)
            current_count <= 20;
        else if (current_count == 0)
            current_count <= current_count;
        else if (current_count >= 1)
            current_count <= current_count - 1;
        else
            current_count <= current_count;

        //Only 
        count <= current_count;
    end

endmodule
