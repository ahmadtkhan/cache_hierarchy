`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2025 04:52:53 PM
// Design Name: 
// Module Name: CPU
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


typedef enum logic [2:0]{
    s_idle,
    s_update,
    s_cs,
    s_wait,
    s_complete,
    s_wrap
}cpu_state;

module CPU#(
        parameter address_width = 16,
        parameter data_width = 8,
        parameter pattern_control = 8
    )(
        input logic                         clk,
        input logic                         reset,
        input logic                         trig,
        output logic[address_width-1:0]     address,
        output logic                        wr_rd,
        output logic                        cs_n,
        output logic[data_width-1:0]        d_out          
    );

cpu_state present_state, next_state;

logic[2:0] pat_ctr;
logic   pattern_update;

logic trig_d;
wire  trig_r = trig & ~trig_d;

    always_ff @(posedge clk or negedge reset) begin
        if(!reset) //act low reset 
            present_state <= s_idle;
        else
            present_state <= next_state;
    end
    
    always_comb begin
        next_state = present_state;
        pattern_update = 1'b0;
        case (present_state)
            s_idle      : if(trig_r)    next_state = s_update;
            s_update    :               next_state = s_cs;
            s_cs        :               next_state = s_wait;
            s_wait      :               next_state = s_complete;
            s_wrap      :               next_state = s_idle;
            default     :               next_state = s_idle;
        endcase
    end
    
    always_ff @(posedge clk or negedge reset) begin
        if(!reset) begin
            pat_ctr <= pattern_control - 1;
            trig_d <= 1'b0;
        end else begin
            trig_d <= trig;
            if(present_state == s_idle && next_state == s_update)
                pat_ctr <= pat_ctr + 1;
        end 
    end
    
    assign cs_n = (present_state < s_cs)? 1'b1 : 1'b0;
    
    logic [address_width + data_width: 0] pat_rom [0:pattern_control-1];
    initial begin
        pat_rom[0] = 25'h9016_352; 
        pat_rom[1] = 25'h8E3F_101;
        pat_rom[2] = 25'h3483_2A3;
        pat_rom[3] = 25'h6921_7C3;
        pat_rom[4] = 25'h9016_352;
        pat_rom[5] = 25'h7390_7A1;
        pat_rom[6] = 25'hAC18_D28;
        pat_rom[7] = 25'h8E3F_101;
    end 
    
    wire[24:0] patOut = pat_rom[pat_ctr];
    
    assign address = patOut[24:9];
    assign d_out = patOut[8:1];
    assign wr_rd = patOut[0];     
    
endmodule