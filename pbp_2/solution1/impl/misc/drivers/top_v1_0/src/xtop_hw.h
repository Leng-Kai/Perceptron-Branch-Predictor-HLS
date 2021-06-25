// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// bp0
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of pc_V
//        bit 31~0 - pc_V[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of isBranch_V
//        bit 0  - isBranch_V[0] (Read)
//        others - reserved
// 0x1c : Control signal of isBranch_V
//        bit 0  - isBranch_V_ap_vld (Read/COR)
//        others - reserved
// 0x20 : Data signal of result_V
//        bit 0  - result_V[0] (Read/Write)
//        others - reserved
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XTOP_BP0_ADDR_PC_V_DATA       0x10
#define XTOP_BP0_BITS_PC_V_DATA       32
#define XTOP_BP0_ADDR_ISBRANCH_V_DATA 0x18
#define XTOP_BP0_BITS_ISBRANCH_V_DATA 1
#define XTOP_BP0_ADDR_ISBRANCH_V_CTRL 0x1c
#define XTOP_BP0_ADDR_RESULT_V_DATA   0x20
#define XTOP_BP0_BITS_RESULT_V_DATA   1

