`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2025 03:07:33 PM
// Design Name: 
// Module Name: cache_testbench
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


module cache_testbench;
    logic clk, reset_n;

    //cpu signals
    logic cpu_valid;
    logic cpu_rw;    
    logic [15:0] cpu_addr;
    logic [7:0] cpu_wdata;
    logic cpu_ready;
    
    //block ram signals
    logic mem_we;
    logic [7:0] mem_addr;
    logic [7:0] mem_wdata;
    logic [7:0] mem_rdata;
    logic [7:0] mem_out;
    
    //l2 cache signals
    logic l2_req;
    logic l2_rw;
    logic [15:0] l2_addr;
    logic l2_ready;
    logic [7:0] l2_din;
    logic [7:0] l2_rdata;
    
    //demux signals
    logic dout_sel;


    CPU cpu0(
        .clk(clk), 
        .reset(reset_n),
        .trig(cpu_ready),
        .address(cpu_addr),
        .wr_rd(cpu_rw),
        .cs_n(cpu_valid),
        .d_out(cpu_wdata)
    );
    
    blk_mem_gen_0 ram0(
        .clka(clk),
        .ena(1'b1),
        .wea(mem_we),
        .addra(mem_addr),
        .dina(mem_wdata),
        .douta(mem_out)
    );
    
    
    L1_cache_controller l1_cache(
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
    
    L2_cache_controller l2_cache(
        .clk     (clk),
        .reset_n (reset_n),
        .req     (l2_req),
        .rw      (l2_rw),
        .addr    (l2_addr),
        .din     (l2_din),
        .ready   (l2_ready),
        .din_sel (dout_sel),
        .dout    (l2_rdata)
    );
    
    demux demux1(
        .clk(clk),
        .sel(dout_sel),
        .in(mem_out),
        .out1(mem_rdata),
        .out2(l2_din)
    );
    
     initial begin
        clk = 0;
        forever #5 clk = ~clk;
      end

      initial begin
        reset_n = 0;
        cpu_ready    = 0;
        repeat (2) @(posedge clk);  
        reset_n = 1;
      end
        
      initial begin
        @(posedge reset_n);
        forever begin
          for (int i = 0; i < 8; i++) begin
            repeat (5) @(posedge clk);
            @(posedge clk);
              cpu_ready = 1;
            @(posedge clk);
              cpu_ready = 0;
          end
        end
      end


endmodule
