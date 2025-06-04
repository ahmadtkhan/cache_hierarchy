// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu May 22 21:41:32 2025
// Host        : ahmad-khan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ahmad-khan/cache_hierarchy/cache_hierarchy.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20784)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
