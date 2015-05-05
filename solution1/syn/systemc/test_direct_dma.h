// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _test_direct_dma_HH_
#define _test_direct_dma_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "test_direct_dma_AXILiteS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 6,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct test_direct_dma : public sc_module {
    // Port declarations 36
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_lv<72> > read_mover_V_V_TDATA;
    sc_out< sc_logic > read_mover_V_V_TVALID;
    sc_in< sc_logic > read_mover_V_V_TREADY;
    sc_out< sc_lv<72> > write_mover_V_V_TDATA;
    sc_out< sc_logic > write_mover_V_V_TVALID;
    sc_in< sc_logic > write_mover_V_V_TREADY;
    sc_in< sc_lv<128> > in_stream_V_V_TDATA;
    sc_in< sc_logic > in_stream_V_V_TVALID;
    sc_out< sc_logic > in_stream_V_V_TREADY;
    sc_out< sc_lv<128> > out_stream_V_V_TDATA;
    sc_out< sc_logic > out_stream_V_V_TVALID;
    sc_in< sc_logic > out_stream_V_V_TREADY;
    sc_out< sc_logic > read_mover_halt;
    sc_in< sc_logic > read_mover_halt_complete;
    sc_out< sc_logic > write_mover_halt;
    sc_in< sc_logic > write_mover_halt_complete;
    sc_out< sc_logic > interrupt;


    // Module declarations
    test_direct_dma(sc_module_name name);
    SC_HAS_PROCESS(test_direct_dma);

    ~test_direct_dma();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    test_direct_dma_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* test_direct_dma_AXILiteS_s_axi_U;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<32> > sourceAddress;
    sc_signal< sc_lv<32> > sourceAddress_in_sig;
    sc_signal< sc_lv<32> > sourceAddress_preg;
    sc_signal< sc_logic > sourceAddress_ap_vld;
    sc_signal< sc_logic > sourceAddress_ap_vld_in_sig;
    sc_signal< sc_logic > sourceAddress_ap_vld_preg;
    sc_signal< sc_lv<32> > destinationAddress;
    sc_signal< sc_lv<32> > destinationAddress_in_sig;
    sc_signal< sc_lv<32> > destinationAddress_preg;
    sc_signal< sc_logic > destinationAddress_ap_vld;
    sc_signal< sc_logic > destinationAddress_ap_vld_in_sig;
    sc_signal< sc_logic > destinationAddress_ap_vld_preg;
    sc_signal< sc_lv<32> > length_r;
    sc_signal< sc_lv<32> > length_r_in_sig;
    sc_signal< sc_lv<32> > length_r_preg;
    sc_signal< sc_logic > length_r_ap_vld;
    sc_signal< sc_logic > length_r_ap_vld_in_sig;
    sc_signal< sc_logic > length_r_ap_vld_preg;
    sc_signal< sc_lv<32> > ap_return;
    sc_signal< sc_lv<28> > tmp_fu_194_p1;
    sc_signal< sc_lv<28> > tmp_reg_258;
    sc_signal< sc_lv<32> > read_length_fu_198_p2;
    sc_signal< sc_lv<32> > read_length_reg_264;
    sc_signal< sc_lv<32> > i_1_fu_234_p2;
    sc_signal< sc_lv<1> > tmp_2_fu_228_p2;
    sc_signal< bool > ap_sig_bdd_115;
    sc_signal< sc_logic > ap_sig_ioackin_out_stream_V_V_TREADY;
    sc_signal< sc_lv<32> > i_reg_158;
    sc_signal< sc_lv<1> > write_mover_halt_complete_read_read_fu_123_p2;
    sc_signal< sc_logic > ap_sig_ioackin_read_mover_V_V_TREADY;
    sc_signal< sc_logic > ap_sig_ioackin_write_mover_V_V_TREADY;
    sc_signal< sc_lv<32> > sourceAddress_assign_fu_70;
    sc_signal< bool > ap_sig_bdd_148;
    sc_signal< sc_lv<32> > destinationAddress_assign_fu_74;
    sc_signal< sc_lv<32> > length_assign_fu_78;
    sc_signal< sc_logic > read_mover_halt_preg;
    sc_signal< sc_lv<1> > read_mover_halt_complete_read_read_fu_108_p2;
    sc_signal< sc_logic > write_mover_halt_preg;
    sc_signal< sc_logic > ap_reg_ioackin_read_mover_V_V_TREADY;
    sc_signal< sc_logic > ap_reg_ioackin_write_mover_V_V_TREADY;
    sc_signal< sc_logic > ap_reg_ioackin_out_stream_V_V_TREADY;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< bool > ap_sig_bdd_251;
    sc_signal< bool > ap_sig_bdd_250;
    sc_signal< bool > ap_sig_bdd_155;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_st1_fsm_0;
    static const sc_lv<3> ap_ST_st2_fsm_1;
    static const sc_lv<3> ap_ST_st3_fsm_2;
    static const sc_lv<3> ap_ST_st4_fsm_3;
    static const sc_lv<3> ap_ST_st5_fsm_4;
    static const sc_lv<32> ap_const_lv32_0;
    static const int C_DATA_WIDTH;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_bdd_115();
    void thread_ap_sig_bdd_148();
    void thread_ap_sig_bdd_155();
    void thread_ap_sig_bdd_250();
    void thread_ap_sig_bdd_251();
    void thread_ap_sig_ioackin_out_stream_V_V_TREADY();
    void thread_ap_sig_ioackin_read_mover_V_V_TREADY();
    void thread_ap_sig_ioackin_write_mover_V_V_TREADY();
    void thread_destinationAddress_ap_vld_in_sig();
    void thread_destinationAddress_in_sig();
    void thread_i_1_fu_234_p2();
    void thread_in_stream_V_V_TREADY();
    void thread_length_r_ap_vld_in_sig();
    void thread_length_r_in_sig();
    void thread_out_stream_V_V_TDATA();
    void thread_out_stream_V_V_TVALID();
    void thread_read_length_fu_198_p2();
    void thread_read_mover_V_V_TDATA();
    void thread_read_mover_V_V_TVALID();
    void thread_read_mover_halt();
    void thread_read_mover_halt_complete_read_read_fu_108_p2();
    void thread_sourceAddress_ap_vld_in_sig();
    void thread_sourceAddress_in_sig();
    void thread_tmp_2_fu_228_p2();
    void thread_tmp_fu_194_p1();
    void thread_write_mover_V_V_TDATA();
    void thread_write_mover_V_V_TVALID();
    void thread_write_mover_halt();
    void thread_write_mover_halt_complete_read_read_fu_123_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif