`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2025 04:30:48 PM
// Design Name: 
// Module Name: L1_cache_controller
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

typedef enum logic [2:0] {
    idle,
    check_hit,
    read_hit,
    write_hit,
    miss,
    evict,
    fill,
    complete
} state_t;

module L1_cache_controller #(
    parameter addr_width    = 16,
    parameter data_width    = 8,
    parameter blocks        = 8,
    parameter offset_bits   = 5,
    parameter index_bits    = $clog2(blocks),
    parameter tag_bits      = addr_width - index_bits - offset_bits
) (
    input  logic                     clk,
    input  logic                     reset_n,
    //cpu signals
    input  logic                     cpu_valid,
    input  logic                     cpu_rw, // 0 read, 1 write
    input  logic [addr_width-1:0]    cpu_addr,
    input  logic [data_width-1:0]    cpu_wdata,
    output logic                     cpu_ready,
    //ram signals
    input  logic [data_width-1:0]    mem_rdata,
    output logic                     mem_we, 
    output logic [index_bits+offset_bits-1:0] mem_addr,
    output logic [data_width-1:0]    mem_wdata,
    //l2 cache signals
    input  logic                     l2_ready,
    input  logic [data_width-1:0]    l2_rdata,
    output logic                     l2_req,
    output logic                     l2_rw, // 0 read, 1 write
    output logic [addr_width-1:0]    l2_addr
);

typedef struct packed {
    logic valid;
    logic dirty;
    logic [tag_bits-1:0] tag;
}tag_line_t;

tag_line_t tags [0:blocks-1];

logic [7:0] cpu_rdata;

wire [offset_bits-1:0] cpu_offset = cpu_addr[offset_bits-1:0];
wire [index_bits-1:0] cpu_index  = cpu_addr[offset_bits +: index_bits];
wire [tag_bits-1:0] cpu_tag    = cpu_addr[addr_width-1 -: tag_bits];

localparam int block_size = (1 << offset_bits);
logic [$clog2(block_size)-1:0] burst_cnt;

state_t state, next_state;

    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            state      <= idle;
            cpu_ready  <= 1;
            burst_cnt  <= '0; // initalizing at 0
            for (int i = 0; i < blocks; i++) begin
                tags[i].valid <= 1'b0;
                tags[i].dirty <= 1'b0;
                tags[i].tag   <= '0;
            end
        end else begin
            state <= next_state; // tag updates on fill or write-hit
            if (state == complete) begin
                tags[cpu_index].valid <= 1'b1;
                tags[cpu_index].tag   <= cpu_tag;
                tags[cpu_index].dirty <= cpu_rw;
                cpu_ready             <= 1;
            end else if (state == write_hit) begin
                tags[cpu_index].dirty <= 1'b1;
            end 
            if (state == evict || state == fill) begin // burst counter control
                if (burst_cnt == block_size-1)
                    burst_cnt <= '0;
                else
                    burst_cnt <= burst_cnt + 1;
            end else begin
                burst_cnt <= '0;
            end
        end
    end


    always_comb begin
        next_state  = state;
        cpu_rdata   = '0;
        mem_we      = 1'b0;
        mem_addr    = '0;
        mem_wdata   = '0;
        l2_req      = 1'b0;
        l2_rw       = 1'b0;
        l2_addr     = '0;

        case (state)
            idle: begin
                cpu_ready = 1;
                if (cpu_valid && cpu_ready) begin
                    next_state = check_hit;
                    cpu_ready  = 0;
                end
            end
            check_hit: begin
                if (tags[cpu_index].valid && tags[cpu_index].tag == cpu_tag) begin
                    next_state = cpu_rw ? write_hit : read_hit;
                end else begin
                    next_state = miss;
                end
            end
            write_hit: begin // write single byte to L1
                mem_we    = 1'b1;
                mem_addr  = {cpu_index, cpu_offset};
                mem_wdata = cpu_wdata;
                next_state = complete;
            end

            read_hit: begin // read single byte from L1
                mem_we   = 1'b0;
                mem_addr = {cpu_index, cpu_offset};
                cpu_rdata = mem_rdata;
                next_state = complete;
            end
            miss: begin
                if (tags[cpu_index].dirty)
                    next_state = evict;
                else
                    next_state = fill;
            end
            evict: begin
                l2_req  = 1'b1;
                l2_rw   = 1'b1;
                l2_addr = {tags[cpu_index].tag, cpu_index, burst_cnt}; // read from L1 to l2 via mem_rdata
                mem_we    = 0;
                mem_addr  = {cpu_index, burst_cnt};
                next_state = (burst_cnt == block_size-1) ? fill : evict;
            end
            fill: begin
                l2_req  = 1'b1;
                l2_rw   = 1'b0;
                l2_addr = {cpu_tag, cpu_index, burst_cnt};
                if (l2_ready) begin // write into L1
                    mem_we    = 1'b1;
                    mem_addr  = {cpu_index, burst_cnt};
                    mem_wdata = l2_rdata;
                    next_state = (burst_cnt == block_size-1) ? (cpu_rw ? write_hit : read_hit): fill;
                end
            end
            complete: begin
                next_state = idle;
            end
            default: next_state = idle;
        endcase
    end
endmodule
