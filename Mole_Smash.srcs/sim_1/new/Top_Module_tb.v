`timescale 1ns / 1ps

module Top_Module_tb;

    reg clk;
    reg reset;
    reg [15:0] sw;
    
    wire [15:0] led;
    wire [3:0] an;
    wire [6:0] seg;

    Top_Module uut (
        .clk(clk),
        .sw(sw),
        .reset(reset),
        .led(led),
        .an(an),
        .seg(seg)
    );

    // 100MHz clock => 10ns period
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        // Simulation Starting 
        $display("Starting Simulation...");
        reset = 1;
        sw = 0;

        #20 reset = 0;

        // Simulate pressing switches in order 
        //DEMO 
        #100 sw[1] = 1; #20 sw[1] = 0;
        #100 sw[11] = 1; #20 sw[11] = 0;
        #100 sw[2] = 1; #20 sw[2] = 0;
        #100 sw[12] = 1; #20 sw[12] = 0;
        #100 sw[8] = 1; #20 sw[8] = 0;
        #100 sw[7] = 1; #20 sw[7] = 0;
        #100 sw[5] = 1; #20 sw[5] = 0;
        #100 sw[3] = 1; #20 sw[3] = 0;
        
        // Continue as needed...

        #1000 $finish;
    end

endmodule
