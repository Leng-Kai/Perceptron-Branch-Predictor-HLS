// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="top,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=8.641000,HLS_SYN_LAT=2,HLS_SYN_TPT=3,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=193,HLS_SYN_LUT=651,HLS_VERSION=2020_1}" *)

module top (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        s_axi_bp0_AWVALID,
        s_axi_bp0_AWREADY,
        s_axi_bp0_AWADDR,
        s_axi_bp0_WVALID,
        s_axi_bp0_WREADY,
        s_axi_bp0_WDATA,
        s_axi_bp0_WSTRB,
        s_axi_bp0_ARVALID,
        s_axi_bp0_ARREADY,
        s_axi_bp0_ARADDR,
        s_axi_bp0_RVALID,
        s_axi_bp0_RREADY,
        s_axi_bp0_RDATA,
        s_axi_bp0_RRESP,
        s_axi_bp0_BVALID,
        s_axi_bp0_BREADY,
        s_axi_bp0_BRESP
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
parameter    C_S_AXI_BP0_DATA_WIDTH = 32;
parameter    C_S_AXI_BP0_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_BP0_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   s_axi_bp0_AWVALID;
output   s_axi_bp0_AWREADY;
input  [C_S_AXI_BP0_ADDR_WIDTH - 1:0] s_axi_bp0_AWADDR;
input   s_axi_bp0_WVALID;
output   s_axi_bp0_WREADY;
input  [C_S_AXI_BP0_DATA_WIDTH - 1:0] s_axi_bp0_WDATA;
input  [C_S_AXI_BP0_WSTRB_WIDTH - 1:0] s_axi_bp0_WSTRB;
input   s_axi_bp0_ARVALID;
output   s_axi_bp0_ARREADY;
input  [C_S_AXI_BP0_ADDR_WIDTH - 1:0] s_axi_bp0_ARADDR;
output   s_axi_bp0_RVALID;
input   s_axi_bp0_RREADY;
output  [C_S_AXI_BP0_DATA_WIDTH - 1:0] s_axi_bp0_RDATA;
output  [1:0] s_axi_bp0_RRESP;
output   s_axi_bp0_BVALID;
input   s_axi_bp0_BREADY;
output  [1:0] s_axi_bp0_BRESP;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] pc_V;
wire   [0:0] isBranch_V;
reg    isBranch_V_ap_vld;
wire   [0:0] result_V;
reg   [5:0] perceptron_V_4_address0;
reg    perceptron_V_4_ce0;
reg    perceptron_V_4_we0;
reg   [3:0] perceptron_V_4_d0;
wire   [3:0] perceptron_V_4_q0;
reg   [0:0] bht_0;
reg   [0:0] bht_1;
reg   [5:0] perceptron_V_0_address0;
reg    perceptron_V_0_ce0;
reg    perceptron_V_0_we0;
reg   [3:0] perceptron_V_0_d0;
wire   [3:0] perceptron_V_0_q0;
reg   [5:0] perceptron_V_1_address0;
reg    perceptron_V_1_ce0;
reg    perceptron_V_1_we0;
reg   [3:0] perceptron_V_1_d0;
wire   [3:0] perceptron_V_1_q0;
reg   [0:0] bht_2;
reg   [0:0] bht_3;
reg   [5:0] perceptron_V_2_address0;
reg    perceptron_V_2_ce0;
reg    perceptron_V_2_we0;
reg   [3:0] perceptron_V_2_d0;
wire   [3:0] perceptron_V_2_q0;
reg   [5:0] perceptron_V_3_address0;
reg    perceptron_V_3_ce0;
reg    perceptron_V_3_we0;
reg   [3:0] perceptron_V_3_d0;
wire   [3:0] perceptron_V_3_q0;
reg   [5:0] perceptron_V_4_addr_reg_458;
reg   [5:0] perceptron_V_0_addr_reg_463;
reg   [5:0] perceptron_V_1_addr_reg_468;
reg   [5:0] perceptron_V_2_addr_reg_473;
reg   [5:0] perceptron_V_3_addr_reg_478;
reg   [0:0] result_V_read_reg_483;
reg  signed [3:0] t_V_reg_491;
wire    ap_CS_fsm_state2;
reg   [0:0] bht_0_load_reg_499;
reg   [0:0] bht_1_load_reg_504;
wire   [0:0] xor_ln60_fu_187_p2;
reg   [0:0] xor_ln60_reg_509;
reg   [3:0] perceptron_V_0_load_reg_513;
reg   [3:0] perceptron_V_1_load_reg_521;
reg   [0:0] bht_2_load_reg_529;
reg   [0:0] bht_3_load_reg_535;
wire   [0:0] xor_ln60_1_fu_209_p2;
reg   [0:0] xor_ln60_1_reg_540;
reg   [3:0] perceptron_V_2_load_reg_544;
reg   [3:0] perceptron_V_3_load_reg_552;
wire   [5:0] add_ln70_1_fu_273_p2;
reg   [5:0] add_ln70_1_reg_560;
reg   [0:0] tmp_reg_566;
wire   [63:0] zext_ln544_fu_166_p1;
wire    ap_CS_fsm_state3;
wire   [0:0] and_ln15_fu_314_p2;
wire   [0:0] icmp_ln895_fu_320_p2;
wire   [3:0] add_ln701_fu_325_p2;
wire   [0:0] icmp_ln887_fu_331_p2;
wire   [3:0] add_ln700_fu_336_p2;
wire   [0:0] xor_ln879_fu_342_p2;
wire   [0:0] icmp_ln895_1_fu_368_p2;
wire   [3:0] add_ln701_1_fu_373_p2;
wire   [0:0] icmp_ln887_1_fu_379_p2;
wire   [3:0] add_ln700_1_fu_384_p2;
wire   [0:0] icmp_ln895_2_fu_346_p2;
wire   [3:0] add_ln701_2_fu_351_p2;
wire   [0:0] icmp_ln887_2_fu_357_p2;
wire   [3:0] add_ln700_2_fu_362_p2;
wire   [0:0] xor_ln879_1_fu_390_p2;
wire   [0:0] icmp_ln895_3_fu_416_p2;
wire   [3:0] add_ln701_3_fu_421_p2;
wire   [0:0] icmp_ln887_3_fu_427_p2;
wire   [3:0] add_ln700_3_fu_432_p2;
wire   [0:0] icmp_ln895_4_fu_394_p2;
wire   [3:0] add_ln701_4_fu_399_p2;
wire   [0:0] icmp_ln887_4_fu_405_p2;
wire   [3:0] add_ln700_4_fu_410_p2;
wire   [5:0] index_V_fu_162_p1;
wire  signed [3:0] sext_ln60_fu_175_p0;
wire   [3:0] select_ln60_fu_193_p3;
wire  signed [4:0] sext_ln1352_fu_223_p1;
wire   [4:0] sub_ln1352_fu_227_p2;
wire   [4:0] select_ln1352_fu_233_p3;
wire   [3:0] select_ln60_1_fu_215_p3;
wire  signed [4:0] sext_ln1352_2_fu_245_p1;
wire   [4:0] sub_ln1352_1_fu_249_p2;
wire   [4:0] select_ln1352_1_fu_255_p3;
wire  signed [4:0] sext_ln60_fu_175_p1;
wire   [4:0] add_ln70_fu_263_p2;
wire  signed [5:0] sext_ln70_fu_269_p1;
wire  signed [5:0] sext_ln1352_1_fu_241_p1;
wire   [5:0] sub_ln74_fu_293_p2;
wire   [5:0] select_ln74_fu_298_p3;
wire   [0:0] icmp_ln15_fu_308_p2;
wire   [0:0] xor_ln15_fu_304_p2;
reg   [2:0] ap_NS_fsm;
reg    ap_condition_444;
reg    ap_condition_450;
reg    ap_condition_455;
reg    ap_condition_460;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 bht_0 = 1'd0;
#0 bht_1 = 1'd0;
#0 bht_2 = 1'd0;
#0 bht_3 = 1'd0;
end

top_perceptron_V_4 #(
    .DataWidth( 4 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
perceptron_V_4_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(perceptron_V_4_address0),
    .ce0(perceptron_V_4_ce0),
    .we0(perceptron_V_4_we0),
    .d0(perceptron_V_4_d0),
    .q0(perceptron_V_4_q0)
);

top_perceptron_V_4 #(
    .DataWidth( 4 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
perceptron_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(perceptron_V_0_address0),
    .ce0(perceptron_V_0_ce0),
    .we0(perceptron_V_0_we0),
    .d0(perceptron_V_0_d0),
    .q0(perceptron_V_0_q0)
);

top_perceptron_V_4 #(
    .DataWidth( 4 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
perceptron_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(perceptron_V_1_address0),
    .ce0(perceptron_V_1_ce0),
    .we0(perceptron_V_1_we0),
    .d0(perceptron_V_1_d0),
    .q0(perceptron_V_1_q0)
);

top_perceptron_V_4 #(
    .DataWidth( 4 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
perceptron_V_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(perceptron_V_2_address0),
    .ce0(perceptron_V_2_ce0),
    .we0(perceptron_V_2_we0),
    .d0(perceptron_V_2_d0),
    .q0(perceptron_V_2_q0)
);

top_perceptron_V_4 #(
    .DataWidth( 4 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
perceptron_V_3_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(perceptron_V_3_address0),
    .ce0(perceptron_V_3_ce0),
    .we0(perceptron_V_3_we0),
    .d0(perceptron_V_3_d0),
    .q0(perceptron_V_3_q0)
);

top_bp0_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_BP0_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_BP0_DATA_WIDTH ))
top_bp0_s_axi_U(
    .AWVALID(s_axi_bp0_AWVALID),
    .AWREADY(s_axi_bp0_AWREADY),
    .AWADDR(s_axi_bp0_AWADDR),
    .WVALID(s_axi_bp0_WVALID),
    .WREADY(s_axi_bp0_WREADY),
    .WDATA(s_axi_bp0_WDATA),
    .WSTRB(s_axi_bp0_WSTRB),
    .ARVALID(s_axi_bp0_ARVALID),
    .ARREADY(s_axi_bp0_ARREADY),
    .ARADDR(s_axi_bp0_ARADDR),
    .RVALID(s_axi_bp0_RVALID),
    .RREADY(s_axi_bp0_RREADY),
    .RDATA(s_axi_bp0_RDATA),
    .RRESP(s_axi_bp0_RRESP),
    .BVALID(s_axi_bp0_BVALID),
    .BREADY(s_axi_bp0_BREADY),
    .BRESP(s_axi_bp0_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .pc_V(pc_V),
    .isBranch_V(isBranch_V),
    .isBranch_V_ap_vld(isBranch_V_ap_vld),
    .result_V(result_V)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln70_1_reg_560 <= add_ln70_1_fu_273_p2;
        bht_0_load_reg_499 <= bht_0;
        bht_1_load_reg_504 <= bht_1;
        bht_2_load_reg_529 <= bht_2;
        bht_3_load_reg_535 <= bht_3;
        perceptron_V_0_load_reg_513 <= perceptron_V_0_q0;
        perceptron_V_1_load_reg_521 <= perceptron_V_1_q0;
        perceptron_V_2_load_reg_544 <= perceptron_V_2_q0;
        perceptron_V_3_load_reg_552 <= perceptron_V_3_q0;
        t_V_reg_491 <= perceptron_V_4_q0;
        tmp_reg_566 <= add_ln70_1_fu_273_p2[32'd5];
        xor_ln60_1_reg_540 <= xor_ln60_1_fu_209_p2;
        xor_ln60_reg_509 <= xor_ln60_fu_187_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3))) begin
        bht_0 <= bht_1_load_reg_504;
        bht_1 <= bht_2_load_reg_529;
        bht_2 <= bht_3_load_reg_535;
        bht_3 <= result_V_read_reg_483;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        perceptron_V_0_addr_reg_463 <= zext_ln544_fu_166_p1;
        perceptron_V_1_addr_reg_468 <= zext_ln544_fu_166_p1;
        perceptron_V_2_addr_reg_473 <= zext_ln544_fu_166_p1;
        perceptron_V_3_addr_reg_478 <= zext_ln544_fu_166_p1;
        perceptron_V_4_addr_reg_458 <= zext_ln544_fu_166_p1;
        result_V_read_reg_483 <= result_V;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        isBranch_V_ap_vld = 1'b1;
    end else begin
        isBranch_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_1_fu_379_p2 == 1'd1) & (xor_ln879_fu_342_p2 == 1'd1) & (xor_ln60_reg_509 == 1'd1)) | ((xor_ln879_fu_342_p2 == 1'd0) & (1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_1_fu_368_p2 == 1'd1) & (xor_ln60_reg_509 == 1'd1)))) begin
        perceptron_V_0_address0 = perceptron_V_0_addr_reg_463;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        perceptron_V_0_address0 = zext_ln544_fu_166_p1;
    end else begin
        perceptron_V_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_1_fu_379_p2 == 1'd1) & (xor_ln879_fu_342_p2 == 1'd1) & (xor_ln60_reg_509 == 1'd1)) | ((xor_ln879_fu_342_p2 == 1'd0) & (1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_1_fu_368_p2 == 1'd1) & (xor_ln60_reg_509 == 1'd1)))) begin
        perceptron_V_0_ce0 = 1'b1;
    end else begin
        perceptron_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_444)) begin
        if (((icmp_ln887_1_fu_379_p2 == 1'd1) & (xor_ln879_fu_342_p2 == 1'd1))) begin
            perceptron_V_0_d0 = add_ln700_1_fu_384_p2;
        end else if (((xor_ln879_fu_342_p2 == 1'd0) & (icmp_ln895_1_fu_368_p2 == 1'd1))) begin
            perceptron_V_0_d0 = add_ln701_1_fu_373_p2;
        end else begin
            perceptron_V_0_d0 = 'bx;
        end
    end else begin
        perceptron_V_0_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_1_fu_379_p2 == 1'd1) & (xor_ln879_fu_342_p2 == 1'd1) & (xor_ln60_reg_509 == 1'd1)) | ((xor_ln879_fu_342_p2 == 1'd0) & (1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_1_fu_368_p2 == 1'd1) & (xor_ln60_reg_509 == 1'd1)))) begin
        perceptron_V_0_we0 = 1'b1;
    end else begin
        perceptron_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'd0 == and_ln15_fu_314_p2) & (xor_ln60_reg_509 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_2_fu_357_p2 == 1'd1) & (xor_ln879_fu_342_p2 == 1'd1)) | ((xor_ln879_fu_342_p2 == 1'd0) & (1'd0 == and_ln15_fu_314_p2) & (xor_ln60_reg_509 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_2_fu_346_p2 == 1'd1)))) begin
        perceptron_V_1_address0 = perceptron_V_1_addr_reg_468;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        perceptron_V_1_address0 = zext_ln544_fu_166_p1;
    end else begin
        perceptron_V_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'd0 == and_ln15_fu_314_p2) & (xor_ln60_reg_509 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_2_fu_357_p2 == 1'd1) & (xor_ln879_fu_342_p2 == 1'd1)) | ((xor_ln879_fu_342_p2 == 1'd0) & (1'd0 == and_ln15_fu_314_p2) & (xor_ln60_reg_509 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_2_fu_346_p2 == 1'd1)))) begin
        perceptron_V_1_ce0 = 1'b1;
    end else begin
        perceptron_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_450)) begin
        if (((icmp_ln887_2_fu_357_p2 == 1'd1) & (xor_ln879_fu_342_p2 == 1'd1))) begin
            perceptron_V_1_d0 = add_ln700_2_fu_362_p2;
        end else if (((xor_ln879_fu_342_p2 == 1'd0) & (icmp_ln895_2_fu_346_p2 == 1'd1))) begin
            perceptron_V_1_d0 = add_ln701_2_fu_351_p2;
        end else begin
            perceptron_V_1_d0 = 'bx;
        end
    end else begin
        perceptron_V_1_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'd0 == and_ln15_fu_314_p2) & (xor_ln60_reg_509 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_2_fu_357_p2 == 1'd1) & (xor_ln879_fu_342_p2 == 1'd1)) | ((xor_ln879_fu_342_p2 == 1'd0) & (1'd0 == and_ln15_fu_314_p2) & (xor_ln60_reg_509 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_2_fu_346_p2 == 1'd1)))) begin
        perceptron_V_1_we0 = 1'b1;
    end else begin
        perceptron_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_3_fu_427_p2 == 1'd1) & (xor_ln879_1_fu_390_p2 == 1'd1) & (xor_ln60_1_reg_540 == 1'd1)) | ((xor_ln879_1_fu_390_p2 == 1'd0) & (1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_3_fu_416_p2 == 1'd1) & (xor_ln60_1_reg_540 == 1'd1)))) begin
        perceptron_V_2_address0 = perceptron_V_2_addr_reg_473;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        perceptron_V_2_address0 = zext_ln544_fu_166_p1;
    end else begin
        perceptron_V_2_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_3_fu_427_p2 == 1'd1) & (xor_ln879_1_fu_390_p2 == 1'd1) & (xor_ln60_1_reg_540 == 1'd1)) | ((xor_ln879_1_fu_390_p2 == 1'd0) & (1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_3_fu_416_p2 == 1'd1) & (xor_ln60_1_reg_540 == 1'd1)))) begin
        perceptron_V_2_ce0 = 1'b1;
    end else begin
        perceptron_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_455)) begin
        if (((icmp_ln887_3_fu_427_p2 == 1'd1) & (xor_ln879_1_fu_390_p2 == 1'd1))) begin
            perceptron_V_2_d0 = add_ln700_3_fu_432_p2;
        end else if (((xor_ln879_1_fu_390_p2 == 1'd0) & (icmp_ln895_3_fu_416_p2 == 1'd1))) begin
            perceptron_V_2_d0 = add_ln701_3_fu_421_p2;
        end else begin
            perceptron_V_2_d0 = 'bx;
        end
    end else begin
        perceptron_V_2_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_3_fu_427_p2 == 1'd1) & (xor_ln879_1_fu_390_p2 == 1'd1) & (xor_ln60_1_reg_540 == 1'd1)) | ((xor_ln879_1_fu_390_p2 == 1'd0) & (1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_3_fu_416_p2 == 1'd1) & (xor_ln60_1_reg_540 == 1'd1)))) begin
        perceptron_V_2_we0 = 1'b1;
    end else begin
        perceptron_V_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'd0 == and_ln15_fu_314_p2) & (xor_ln60_1_reg_540 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_4_fu_405_p2 == 1'd1) & (xor_ln879_1_fu_390_p2 == 1'd1)) | ((xor_ln879_1_fu_390_p2 == 1'd0) & (1'd0 == and_ln15_fu_314_p2) & (xor_ln60_1_reg_540 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_4_fu_394_p2 == 1'd1)))) begin
        perceptron_V_3_address0 = perceptron_V_3_addr_reg_478;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        perceptron_V_3_address0 = zext_ln544_fu_166_p1;
    end else begin
        perceptron_V_3_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'd0 == and_ln15_fu_314_p2) & (xor_ln60_1_reg_540 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_4_fu_405_p2 == 1'd1) & (xor_ln879_1_fu_390_p2 == 1'd1)) | ((xor_ln879_1_fu_390_p2 == 1'd0) & (1'd0 == and_ln15_fu_314_p2) & (xor_ln60_1_reg_540 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_4_fu_394_p2 == 1'd1)))) begin
        perceptron_V_3_ce0 = 1'b1;
    end else begin
        perceptron_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_460)) begin
        if (((icmp_ln887_4_fu_405_p2 == 1'd1) & (xor_ln879_1_fu_390_p2 == 1'd1))) begin
            perceptron_V_3_d0 = add_ln700_4_fu_410_p2;
        end else if (((xor_ln879_1_fu_390_p2 == 1'd0) & (icmp_ln895_4_fu_394_p2 == 1'd1))) begin
            perceptron_V_3_d0 = add_ln701_4_fu_399_p2;
        end else begin
            perceptron_V_3_d0 = 'bx;
        end
    end else begin
        perceptron_V_3_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'd0 == and_ln15_fu_314_p2) & (xor_ln60_1_reg_540 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_4_fu_405_p2 == 1'd1) & (xor_ln879_1_fu_390_p2 == 1'd1)) | ((xor_ln879_1_fu_390_p2 == 1'd0) & (1'd0 == and_ln15_fu_314_p2) & (xor_ln60_1_reg_540 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_4_fu_394_p2 == 1'd1)))) begin
        perceptron_V_3_we0 = 1'b1;
    end else begin
        perceptron_V_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_fu_331_p2 == 1'd1) & (result_V_read_reg_483 == 1'd1)) | ((1'd0 == and_ln15_fu_314_p2) & (result_V_read_reg_483 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_fu_320_p2 == 1'd1)))) begin
        perceptron_V_4_address0 = perceptron_V_4_addr_reg_458;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        perceptron_V_4_address0 = zext_ln544_fu_166_p1;
    end else begin
        perceptron_V_4_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_fu_331_p2 == 1'd1) & (result_V_read_reg_483 == 1'd1)) | ((1'd0 == and_ln15_fu_314_p2) & (result_V_read_reg_483 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_fu_320_p2 == 1'd1)))) begin
        perceptron_V_4_ce0 = 1'b1;
    end else begin
        perceptron_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3))) begin
        if (((icmp_ln887_fu_331_p2 == 1'd1) & (result_V_read_reg_483 == 1'd1))) begin
            perceptron_V_4_d0 = add_ln700_fu_336_p2;
        end else if (((result_V_read_reg_483 == 1'd0) & (icmp_ln895_fu_320_p2 == 1'd1))) begin
            perceptron_V_4_d0 = add_ln701_fu_325_p2;
        end else begin
            perceptron_V_4_d0 = 'bx;
        end
    end else begin
        perceptron_V_4_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln887_fu_331_p2 == 1'd1) & (result_V_read_reg_483 == 1'd1)) | ((1'd0 == and_ln15_fu_314_p2) & (result_V_read_reg_483 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln895_fu_320_p2 == 1'd1)))) begin
        perceptron_V_4_we0 = 1'b1;
    end else begin
        perceptron_V_4_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln700_1_fu_384_p2 = (perceptron_V_0_load_reg_513 + 4'd2);

assign add_ln700_2_fu_362_p2 = (perceptron_V_1_load_reg_521 + 4'd2);

assign add_ln700_3_fu_432_p2 = (perceptron_V_2_load_reg_544 + 4'd2);

assign add_ln700_4_fu_410_p2 = (perceptron_V_3_load_reg_552 + 4'd2);

assign add_ln700_fu_336_p2 = ($signed(t_V_reg_491) + $signed(4'd1));

assign add_ln701_1_fu_373_p2 = ($signed(perceptron_V_0_load_reg_513) + $signed(4'd14));

assign add_ln701_2_fu_351_p2 = ($signed(perceptron_V_1_load_reg_521) + $signed(4'd14));

assign add_ln701_3_fu_421_p2 = ($signed(perceptron_V_2_load_reg_544) + $signed(4'd14));

assign add_ln701_4_fu_399_p2 = ($signed(perceptron_V_3_load_reg_552) + $signed(4'd14));

assign add_ln701_fu_325_p2 = ($signed(t_V_reg_491) + $signed(4'd15));

assign add_ln70_1_fu_273_p2 = ($signed(sext_ln70_fu_269_p1) + $signed(sext_ln1352_1_fu_241_p1));

assign add_ln70_fu_263_p2 = ($signed(select_ln1352_1_fu_255_p3) + $signed(sext_ln60_fu_175_p1));

assign and_ln15_fu_314_p2 = (xor_ln15_fu_304_p2 & icmp_ln15_fu_308_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_condition_444 = ((1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (xor_ln60_reg_509 == 1'd1));
end

always @ (*) begin
    ap_condition_450 = ((1'd0 == and_ln15_fu_314_p2) & (xor_ln60_reg_509 == 1'd0) & (1'b1 == ap_CS_fsm_state3));
end

always @ (*) begin
    ap_condition_455 = ((1'd0 == and_ln15_fu_314_p2) & (1'b1 == ap_CS_fsm_state3) & (xor_ln60_1_reg_540 == 1'd1));
end

always @ (*) begin
    ap_condition_460 = ((1'd0 == and_ln15_fu_314_p2) & (xor_ln60_1_reg_540 == 1'd0) & (1'b1 == ap_CS_fsm_state3));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign icmp_ln15_fu_308_p2 = (($signed(select_ln74_fu_298_p3) > $signed(6'd8)) ? 1'b1 : 1'b0);

assign icmp_ln887_1_fu_379_p2 = (($signed(perceptron_V_0_load_reg_513) < $signed(4'd6)) ? 1'b1 : 1'b0);

assign icmp_ln887_2_fu_357_p2 = (($signed(perceptron_V_1_load_reg_521) < $signed(4'd6)) ? 1'b1 : 1'b0);

assign icmp_ln887_3_fu_427_p2 = (($signed(perceptron_V_2_load_reg_544) < $signed(4'd6)) ? 1'b1 : 1'b0);

assign icmp_ln887_4_fu_405_p2 = (($signed(perceptron_V_3_load_reg_552) < $signed(4'd6)) ? 1'b1 : 1'b0);

assign icmp_ln887_fu_331_p2 = (($signed(t_V_reg_491) < $signed(4'd6)) ? 1'b1 : 1'b0);

assign icmp_ln895_1_fu_368_p2 = (($signed(perceptron_V_0_load_reg_513) > $signed(4'd9)) ? 1'b1 : 1'b0);

assign icmp_ln895_2_fu_346_p2 = (($signed(perceptron_V_1_load_reg_521) > $signed(4'd9)) ? 1'b1 : 1'b0);

assign icmp_ln895_3_fu_416_p2 = (($signed(perceptron_V_2_load_reg_544) > $signed(4'd9)) ? 1'b1 : 1'b0);

assign icmp_ln895_4_fu_394_p2 = (($signed(perceptron_V_3_load_reg_552) > $signed(4'd9)) ? 1'b1 : 1'b0);

assign icmp_ln895_fu_320_p2 = (($signed(t_V_reg_491) > $signed(4'd9)) ? 1'b1 : 1'b0);

assign index_V_fu_162_p1 = pc_V[5:0];

assign isBranch_V = (tmp_reg_566 ^ 1'd1);

assign select_ln1352_1_fu_255_p3 = ((bht_2[0:0] === 1'b1) ? sub_ln1352_1_fu_249_p2 : sext_ln1352_2_fu_245_p1);

assign select_ln1352_fu_233_p3 = ((bht_0[0:0] === 1'b1) ? sub_ln1352_fu_227_p2 : sext_ln1352_fu_223_p1);

assign select_ln60_1_fu_215_p3 = ((xor_ln60_1_fu_209_p2[0:0] === 1'b1) ? perceptron_V_2_q0 : perceptron_V_3_q0);

assign select_ln60_fu_193_p3 = ((xor_ln60_fu_187_p2[0:0] === 1'b1) ? perceptron_V_0_q0 : perceptron_V_1_q0);

assign select_ln74_fu_298_p3 = ((tmp_reg_566[0:0] === 1'b1) ? sub_ln74_fu_293_p2 : add_ln70_1_reg_560);

assign sext_ln1352_1_fu_241_p1 = $signed(select_ln1352_fu_233_p3);

assign sext_ln1352_2_fu_245_p1 = $signed(select_ln60_1_fu_215_p3);

assign sext_ln1352_fu_223_p1 = $signed(select_ln60_fu_193_p3);

assign sext_ln60_fu_175_p0 = perceptron_V_4_q0;

assign sext_ln60_fu_175_p1 = sext_ln60_fu_175_p0;

assign sext_ln70_fu_269_p1 = $signed(add_ln70_fu_263_p2);

assign sub_ln1352_1_fu_249_p2 = ($signed(5'd0) - $signed(sext_ln1352_2_fu_245_p1));

assign sub_ln1352_fu_227_p2 = ($signed(5'd0) - $signed(sext_ln1352_fu_223_p1));

assign sub_ln74_fu_293_p2 = (6'd0 - add_ln70_1_reg_560);

assign xor_ln15_fu_304_p2 = (tmp_reg_566 ^ result_V_read_reg_483);

assign xor_ln60_1_fu_209_p2 = (bht_3 ^ bht_2);

assign xor_ln60_fu_187_p2 = (bht_1 ^ bht_0);

assign xor_ln879_1_fu_390_p2 = (result_V_read_reg_483 ^ bht_2_load_reg_529);

assign xor_ln879_fu_342_p2 = (result_V_read_reg_483 ^ bht_0_load_reg_499);

assign zext_ln544_fu_166_p1 = index_V_fu_162_p1;

endmodule //top
