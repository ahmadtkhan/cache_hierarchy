// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu May 22 21:41:31 2025
// Host        : ahmad-khan running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20816)
`pragma protect data_block
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
CGDNZgeHrKKForc=
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
