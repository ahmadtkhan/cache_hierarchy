`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2025 04:54:42 PM
// Design Name: 
// Module Name: L2_cache_controller
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

module L2_cache_controller #(
    parameter addr_width = 16,
    parameter data_width = 8
) (
    input  logic                    clk,
    input  logic                    reset_n,
    input  logic                    req,    // burst request
    input  logic                    rw,     // 0 read, 1 write
    input  logic [addr_width-1:0]   addr,   // base address + burst_cnt
    input  logic [data_width-1:0]   din,    // data from L1 on write
    output logic                    ready,
    output logic                    din_sel,
    output logic [data_width-1:0]   dout    // data to L1 on read
);
localparam mem_size = 1 << addr_width;
logic [data_width-1:0] mem [0:mem_size-1];

    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            ready <= 0;
        end else begin
            if (req) begin // immediate read or write of single word
                if (rw) begin
                    mem[addr] <= din;
                    din_sel <= 1'b1;
                end else begin
                    dout <= mem[addr];
                    din_sel <= 1'b0;
                end
                ready <= 1;
            end else begin
                ready <= 0;
            end
        end
    end
endmodule

