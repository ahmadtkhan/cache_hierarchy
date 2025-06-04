`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2025 04:28:05 PM
// Design Name: 
// Module Name: demux
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


module demux(
        input logic clk,
        input logic sel,
        input logic[7:0] in,
        output logic[7:0] out1,
        output logic[7:0] out2
    );
    
    always_ff @(posedge clk) begin
        if(sel == 1'b0) begin
            out1 <= in;
            out2 <= 8'bx;        
        end else if(sel == 1'b1) begin
            out1 <= 8'bx;
            out2 <= in;
        end else begin
            out1 <= 8'bx;
            out2 <= 8'bx;
        end
    end
endmodule