`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2025 
// Design Name: 
// Module Name: Traffic_Light_Controller_tb
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


module Traffic_Light_Controller_tb;
    
     reg clk, rst;
    wire [2:0] light_M1;
    wire [2:0] light_S;
    wire [2:0] light_MT;
    wire [2:0] light_M2;
    Traffic_Light_Controller dut (
        .clk(clk),
        .rst(rst),
        .light_M1(light_M1),
        .light_S(light_S),
        .light_MT(light_MT),
        .light_M2(light_M2)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end

    initial begin
       
        rst = 1;
        #20;
        rst = 0;
        #1000;
        $finish;
    end

endmodule
