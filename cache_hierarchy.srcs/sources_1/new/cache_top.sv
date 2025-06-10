`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2025 02:57:50 PM
// Design Name: 
// Module Name: cache_top
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


module cache_top (
    input  wire        clk,
    input  wire        reset_n,
    input  wire        cpu_valid,
    input  wire        cpu_rw,
    input  wire [15:0] cpu_addr,
    input  wire [7:0]  cpu_wdata,
    output wire        cpu_ready
);

  wire        mem_we;
  wire [7:0]  mem_addr;
  wire [7:0]  mem_wdata;
  wire [7:0]  mem_out;
  wire [7:0]  mem_rdata;
  
  wire        mem1_we;
  wire [7:0]  mem1_addr;
  wire [7:0]  mem1_wdata;
  wire [7:0]  mem1_out;
  wire [7:0]  mem1_rdata;

  wire        l2_req;
  wire        l2_rw;
  wire [15:0] l2_addr;
  wire        l2_ready;
  wire [7:0]  l2_din;
  wire [7:0]  l2_rdata;

  wire        dout_sel;


  CPU cpu0 (
    .clk     (clk),
    .reset   (reset_n),
    .trig    (cpu_ready),
    .address (cpu_addr),
    .wr_rd   (cpu_rw),
    .cs_n    (cpu_valid),
    .d_out   (cpu_wdata)
  );


  L1_cache_controller l1_cache (
    .clk        (clk),
    .reset_n    (reset_n),
    .cpu_valid  (cpu_valid),
    .cpu_rw     (cpu_rw),
    .cpu_addr   (cpu_addr),
    .cpu_wdata  (cpu_wdata),
    .cpu_ready  (cpu_ready),

    .mem_we     (mem_we),
    .mem_addr   (mem_addr),
    .mem_wdata  (mem_wdata),
    .mem_rdata  (mem_rdata),

    .l2_req     (l2_req),
    .l2_rw      (l2_rw),
    .l2_addr    (l2_addr),
    .l2_ready   (l2_ready),
    .l2_rdata   (l2_rdata)
  );


  blk_mem_gen_0 ram0 (
    .clka   (clk),
    .ena    (1'b1),
    .wea    (mem_we),
    .addra  (mem_addr),
    .dina   (mem_wdata),
    .douta  (mem_out)
  );
    
  blk_mem_gen_0 ram1 (
    .clka   (clk),
    .ena    (1'b1),
    .wea    (mem1_we),
    .addra  (mem1_addr),
    .dina   (mem1_wdata),
    .douta  (mem1_rdata)
  ); 

  demux demux1 (
    .clk   (clk),
    .sel   (dout_sel),
    .in    (mem_out),
    .out1  (mem_rdata),
    .out2  (l2_din)
  );

  L2_cache_controller l2_cache (
    .clk       (clk),
    .reset_n   (reset_n),
    .req       (l2_req),
    .rw        (l2_rw),
    .addr      (l2_addr),
    .din       (l2_din),
    .ready     (l2_ready),
    .din_sel   (dout_sel),
    .dout      (l2_rdata),
    .mem_we    (mem1_we),
    .mem_addr  (mem1_addr),
    .mem_wdata (mem1_wdata),
    .mem_rdata (mem1_rdata)
  );

endmodule