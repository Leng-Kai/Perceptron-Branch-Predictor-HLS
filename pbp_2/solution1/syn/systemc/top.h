// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _top_HH_
#define _top_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "top_perceptron_V_4.h"
#include "top_bp0_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_BP0_ADDR_WIDTH = 6,
         unsigned int C_S_AXI_BP0_DATA_WIDTH = 32>
struct top : public sc_module {
    // Port declarations 23
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_logic > s_axi_bp0_AWVALID;
    sc_out< sc_logic > s_axi_bp0_AWREADY;
    sc_in< sc_uint<C_S_AXI_BP0_ADDR_WIDTH> > s_axi_bp0_AWADDR;
    sc_in< sc_logic > s_axi_bp0_WVALID;
    sc_out< sc_logic > s_axi_bp0_WREADY;
    sc_in< sc_uint<C_S_AXI_BP0_DATA_WIDTH> > s_axi_bp0_WDATA;
    sc_in< sc_uint<C_S_AXI_BP0_DATA_WIDTH/8> > s_axi_bp0_WSTRB;
    sc_in< sc_logic > s_axi_bp0_ARVALID;
    sc_out< sc_logic > s_axi_bp0_ARREADY;
    sc_in< sc_uint<C_S_AXI_BP0_ADDR_WIDTH> > s_axi_bp0_ARADDR;
    sc_out< sc_logic > s_axi_bp0_RVALID;
    sc_in< sc_logic > s_axi_bp0_RREADY;
    sc_out< sc_uint<C_S_AXI_BP0_DATA_WIDTH> > s_axi_bp0_RDATA;
    sc_out< sc_lv<2> > s_axi_bp0_RRESP;
    sc_out< sc_logic > s_axi_bp0_BVALID;
    sc_in< sc_logic > s_axi_bp0_BREADY;
    sc_out< sc_lv<2> > s_axi_bp0_BRESP;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    top(sc_module_name name);
    SC_HAS_PROCESS(top);

    ~top();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    top_perceptron_V_4* perceptron_V_4_U;
    top_perceptron_V_4* perceptron_V_0_U;
    top_perceptron_V_4* perceptron_V_1_U;
    top_perceptron_V_4* perceptron_V_2_U;
    top_perceptron_V_4* perceptron_V_3_U;
    top_bp0_s_axi<C_S_AXI_BP0_ADDR_WIDTH,C_S_AXI_BP0_DATA_WIDTH>* top_bp0_s_axi_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > pc_V;
    sc_signal< sc_lv<1> > isBranch_V;
    sc_signal< sc_logic > isBranch_V_ap_vld;
    sc_signal< sc_lv<1> > result_V;
    sc_signal< sc_lv<6> > perceptron_V_4_address0;
    sc_signal< sc_logic > perceptron_V_4_ce0;
    sc_signal< sc_logic > perceptron_V_4_we0;
    sc_signal< sc_lv<4> > perceptron_V_4_d0;
    sc_signal< sc_lv<4> > perceptron_V_4_q0;
    sc_signal< sc_lv<1> > bht_0;
    sc_signal< sc_lv<1> > bht_1;
    sc_signal< sc_lv<6> > perceptron_V_0_address0;
    sc_signal< sc_logic > perceptron_V_0_ce0;
    sc_signal< sc_logic > perceptron_V_0_we0;
    sc_signal< sc_lv<4> > perceptron_V_0_d0;
    sc_signal< sc_lv<4> > perceptron_V_0_q0;
    sc_signal< sc_lv<6> > perceptron_V_1_address0;
    sc_signal< sc_logic > perceptron_V_1_ce0;
    sc_signal< sc_logic > perceptron_V_1_we0;
    sc_signal< sc_lv<4> > perceptron_V_1_d0;
    sc_signal< sc_lv<4> > perceptron_V_1_q0;
    sc_signal< sc_lv<1> > bht_2;
    sc_signal< sc_lv<1> > bht_3;
    sc_signal< sc_lv<6> > perceptron_V_2_address0;
    sc_signal< sc_logic > perceptron_V_2_ce0;
    sc_signal< sc_logic > perceptron_V_2_we0;
    sc_signal< sc_lv<4> > perceptron_V_2_d0;
    sc_signal< sc_lv<4> > perceptron_V_2_q0;
    sc_signal< sc_lv<6> > perceptron_V_3_address0;
    sc_signal< sc_logic > perceptron_V_3_ce0;
    sc_signal< sc_logic > perceptron_V_3_we0;
    sc_signal< sc_lv<4> > perceptron_V_3_d0;
    sc_signal< sc_lv<4> > perceptron_V_3_q0;
    sc_signal< sc_lv<6> > perceptron_V_4_addr_reg_458;
    sc_signal< sc_lv<6> > perceptron_V_0_addr_reg_463;
    sc_signal< sc_lv<6> > perceptron_V_1_addr_reg_468;
    sc_signal< sc_lv<6> > perceptron_V_2_addr_reg_473;
    sc_signal< sc_lv<6> > perceptron_V_3_addr_reg_478;
    sc_signal< sc_lv<1> > result_V_read_reg_483;
    sc_signal< sc_lv<4> > t_V_reg_491;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > bht_0_load_reg_499;
    sc_signal< sc_lv<1> > bht_1_load_reg_504;
    sc_signal< sc_lv<1> > xor_ln60_fu_187_p2;
    sc_signal< sc_lv<1> > xor_ln60_reg_509;
    sc_signal< sc_lv<4> > perceptron_V_0_load_reg_513;
    sc_signal< sc_lv<4> > perceptron_V_1_load_reg_521;
    sc_signal< sc_lv<1> > bht_2_load_reg_529;
    sc_signal< sc_lv<1> > bht_3_load_reg_535;
    sc_signal< sc_lv<1> > xor_ln60_1_fu_209_p2;
    sc_signal< sc_lv<1> > xor_ln60_1_reg_540;
    sc_signal< sc_lv<4> > perceptron_V_2_load_reg_544;
    sc_signal< sc_lv<4> > perceptron_V_3_load_reg_552;
    sc_signal< sc_lv<6> > add_ln70_1_fu_273_p2;
    sc_signal< sc_lv<6> > add_ln70_1_reg_560;
    sc_signal< sc_lv<1> > tmp_reg_566;
    sc_signal< sc_lv<64> > zext_ln544_fu_166_p1;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > and_ln15_fu_314_p2;
    sc_signal< sc_lv<1> > icmp_ln895_fu_320_p2;
    sc_signal< sc_lv<4> > add_ln701_fu_325_p2;
    sc_signal< sc_lv<1> > icmp_ln887_fu_331_p2;
    sc_signal< sc_lv<4> > add_ln700_fu_336_p2;
    sc_signal< sc_lv<1> > xor_ln879_fu_342_p2;
    sc_signal< sc_lv<1> > icmp_ln895_1_fu_368_p2;
    sc_signal< sc_lv<4> > add_ln701_1_fu_373_p2;
    sc_signal< sc_lv<1> > icmp_ln887_1_fu_379_p2;
    sc_signal< sc_lv<4> > add_ln700_1_fu_384_p2;
    sc_signal< sc_lv<1> > icmp_ln895_2_fu_346_p2;
    sc_signal< sc_lv<4> > add_ln701_2_fu_351_p2;
    sc_signal< sc_lv<1> > icmp_ln887_2_fu_357_p2;
    sc_signal< sc_lv<4> > add_ln700_2_fu_362_p2;
    sc_signal< sc_lv<1> > xor_ln879_1_fu_390_p2;
    sc_signal< sc_lv<1> > icmp_ln895_3_fu_416_p2;
    sc_signal< sc_lv<4> > add_ln701_3_fu_421_p2;
    sc_signal< sc_lv<1> > icmp_ln887_3_fu_427_p2;
    sc_signal< sc_lv<4> > add_ln700_3_fu_432_p2;
    sc_signal< sc_lv<1> > icmp_ln895_4_fu_394_p2;
    sc_signal< sc_lv<4> > add_ln701_4_fu_399_p2;
    sc_signal< sc_lv<1> > icmp_ln887_4_fu_405_p2;
    sc_signal< sc_lv<4> > add_ln700_4_fu_410_p2;
    sc_signal< sc_lv<6> > index_V_fu_162_p1;
    sc_signal< sc_lv<4> > sext_ln60_fu_175_p0;
    sc_signal< sc_lv<4> > select_ln60_fu_193_p3;
    sc_signal< sc_lv<5> > sext_ln1352_fu_223_p1;
    sc_signal< sc_lv<5> > sub_ln1352_fu_227_p2;
    sc_signal< sc_lv<5> > select_ln1352_fu_233_p3;
    sc_signal< sc_lv<4> > select_ln60_1_fu_215_p3;
    sc_signal< sc_lv<5> > sext_ln1352_2_fu_245_p1;
    sc_signal< sc_lv<5> > sub_ln1352_1_fu_249_p2;
    sc_signal< sc_lv<5> > select_ln1352_1_fu_255_p3;
    sc_signal< sc_lv<5> > sext_ln60_fu_175_p1;
    sc_signal< sc_lv<5> > add_ln70_fu_263_p2;
    sc_signal< sc_lv<6> > sext_ln70_fu_269_p1;
    sc_signal< sc_lv<6> > sext_ln1352_1_fu_241_p1;
    sc_signal< sc_lv<6> > sub_ln74_fu_293_p2;
    sc_signal< sc_lv<6> > select_ln74_fu_298_p3;
    sc_signal< sc_lv<1> > icmp_ln15_fu_308_p2;
    sc_signal< sc_lv<1> > xor_ln15_fu_304_p2;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< bool > ap_condition_444;
    sc_signal< bool > ap_condition_450;
    sc_signal< bool > ap_condition_455;
    sc_signal< bool > ap_condition_460;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<6> ap_const_lv6_8;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_E;
    static const sc_lv<4> ap_const_lv4_2;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln700_1_fu_384_p2();
    void thread_add_ln700_2_fu_362_p2();
    void thread_add_ln700_3_fu_432_p2();
    void thread_add_ln700_4_fu_410_p2();
    void thread_add_ln700_fu_336_p2();
    void thread_add_ln701_1_fu_373_p2();
    void thread_add_ln701_2_fu_351_p2();
    void thread_add_ln701_3_fu_421_p2();
    void thread_add_ln701_4_fu_399_p2();
    void thread_add_ln701_fu_325_p2();
    void thread_add_ln70_1_fu_273_p2();
    void thread_add_ln70_fu_263_p2();
    void thread_and_ln15_fu_314_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_condition_444();
    void thread_ap_condition_450();
    void thread_ap_condition_455();
    void thread_ap_condition_460();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_icmp_ln15_fu_308_p2();
    void thread_icmp_ln887_1_fu_379_p2();
    void thread_icmp_ln887_2_fu_357_p2();
    void thread_icmp_ln887_3_fu_427_p2();
    void thread_icmp_ln887_4_fu_405_p2();
    void thread_icmp_ln887_fu_331_p2();
    void thread_icmp_ln895_1_fu_368_p2();
    void thread_icmp_ln895_2_fu_346_p2();
    void thread_icmp_ln895_3_fu_416_p2();
    void thread_icmp_ln895_4_fu_394_p2();
    void thread_icmp_ln895_fu_320_p2();
    void thread_index_V_fu_162_p1();
    void thread_isBranch_V();
    void thread_isBranch_V_ap_vld();
    void thread_perceptron_V_0_address0();
    void thread_perceptron_V_0_ce0();
    void thread_perceptron_V_0_d0();
    void thread_perceptron_V_0_we0();
    void thread_perceptron_V_1_address0();
    void thread_perceptron_V_1_ce0();
    void thread_perceptron_V_1_d0();
    void thread_perceptron_V_1_we0();
    void thread_perceptron_V_2_address0();
    void thread_perceptron_V_2_ce0();
    void thread_perceptron_V_2_d0();
    void thread_perceptron_V_2_we0();
    void thread_perceptron_V_3_address0();
    void thread_perceptron_V_3_ce0();
    void thread_perceptron_V_3_d0();
    void thread_perceptron_V_3_we0();
    void thread_perceptron_V_4_address0();
    void thread_perceptron_V_4_ce0();
    void thread_perceptron_V_4_d0();
    void thread_perceptron_V_4_we0();
    void thread_select_ln1352_1_fu_255_p3();
    void thread_select_ln1352_fu_233_p3();
    void thread_select_ln60_1_fu_215_p3();
    void thread_select_ln60_fu_193_p3();
    void thread_select_ln74_fu_298_p3();
    void thread_sext_ln1352_1_fu_241_p1();
    void thread_sext_ln1352_2_fu_245_p1();
    void thread_sext_ln1352_fu_223_p1();
    void thread_sext_ln60_fu_175_p0();
    void thread_sext_ln60_fu_175_p1();
    void thread_sext_ln70_fu_269_p1();
    void thread_sub_ln1352_1_fu_249_p2();
    void thread_sub_ln1352_fu_227_p2();
    void thread_sub_ln74_fu_293_p2();
    void thread_xor_ln15_fu_304_p2();
    void thread_xor_ln60_1_fu_209_p2();
    void thread_xor_ln60_fu_187_p2();
    void thread_xor_ln879_1_fu_390_p2();
    void thread_xor_ln879_fu_342_p2();
    void thread_zext_ln544_fu_166_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
