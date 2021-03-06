// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="test_direct_dma,hls_ip_2014_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.518000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}" *)

module test_direct_dma (
        s_axi_AXILiteS_AWVALID,
        s_axi_AXILiteS_AWREADY,
        s_axi_AXILiteS_AWADDR,
        s_axi_AXILiteS_WVALID,
        s_axi_AXILiteS_WREADY,
        s_axi_AXILiteS_WDATA,
        s_axi_AXILiteS_WSTRB,
        s_axi_AXILiteS_ARVALID,
        s_axi_AXILiteS_ARREADY,
        s_axi_AXILiteS_ARADDR,
        s_axi_AXILiteS_RVALID,
        s_axi_AXILiteS_RREADY,
        s_axi_AXILiteS_RDATA,
        s_axi_AXILiteS_RRESP,
        s_axi_AXILiteS_BVALID,
        s_axi_AXILiteS_BREADY,
        s_axi_AXILiteS_BRESP,
        ap_clk,
        ap_rst_n,
        read_mover_V_V_TDATA,
        read_mover_V_V_TVALID,
        read_mover_V_V_TREADY,
        write_mover_V_V_TDATA,
        write_mover_V_V_TVALID,
        write_mover_V_V_TREADY,
        in_stream_V_V_TDATA,
        in_stream_V_V_TVALID,
        in_stream_V_V_TREADY,
        out_stream_V_V_TDATA,
        out_stream_V_V_TVALID,
        out_stream_V_V_TREADY,
        read_mover_halt,
        read_mover_halt_complete,
        write_mover_halt,
        write_mover_halt_complete,
        interrupt
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 3'b000;
parameter    ap_ST_st2_fsm_1 = 3'b1;
parameter    ap_ST_st3_fsm_2 = 3'b10;
parameter    ap_ST_st4_fsm_3 = 3'b11;
parameter    ap_ST_st5_fsm_4 = 3'b100;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    ap_const_int64_8 = 8;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 6;
parameter    C_DATA_WIDTH = 32;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_true = 1'b1;
parameter    C_S_AXI_AXILITES_WSTRB_WIDTH = (C_S_AXI_AXILITES_DATA_WIDTH / ap_const_int64_8);
parameter    C_WSTRB_WIDTH = (C_DATA_WIDTH / ap_const_int64_8);

input   s_axi_AXILiteS_AWVALID;
output   s_axi_AXILiteS_AWREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1 : 0] s_axi_AXILiteS_AWADDR;
input   s_axi_AXILiteS_WVALID;
output   s_axi_AXILiteS_WREADY;
input  [C_S_AXI_AXILITES_DATA_WIDTH - 1 : 0] s_axi_AXILiteS_WDATA;
input  [C_S_AXI_AXILITES_WSTRB_WIDTH - 1 : 0] s_axi_AXILiteS_WSTRB;
input   s_axi_AXILiteS_ARVALID;
output   s_axi_AXILiteS_ARREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1 : 0] s_axi_AXILiteS_ARADDR;
output   s_axi_AXILiteS_RVALID;
input   s_axi_AXILiteS_RREADY;
output  [C_S_AXI_AXILITES_DATA_WIDTH - 1 : 0] s_axi_AXILiteS_RDATA;
output  [1:0] s_axi_AXILiteS_RRESP;
output   s_axi_AXILiteS_BVALID;
input   s_axi_AXILiteS_BREADY;
output  [1:0] s_axi_AXILiteS_BRESP;
input   ap_clk;
input   ap_rst_n;
output  [71:0] read_mover_V_V_TDATA;
output   read_mover_V_V_TVALID;
input   read_mover_V_V_TREADY;
output  [71:0] write_mover_V_V_TDATA;
output   write_mover_V_V_TVALID;
input   write_mover_V_V_TREADY;
input  [127:0] in_stream_V_V_TDATA;
input   in_stream_V_V_TVALID;
output   in_stream_V_V_TREADY;
output  [127:0] out_stream_V_V_TDATA;
output   out_stream_V_V_TVALID;
input   out_stream_V_V_TREADY;
output   read_mover_halt;
input   read_mover_halt_complete;
output   write_mover_halt;
input   write_mover_halt_complete;
output   interrupt;

reg read_mover_V_V_TVALID;
reg write_mover_V_V_TVALID;
reg in_stream_V_V_TREADY;
reg out_stream_V_V_TVALID;
reg read_mover_halt;
reg write_mover_halt;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
reg   [2:0] ap_CS_fsm = 3'b000;
reg    ap_ready;
wire   [31:0] sourceAddress;
reg   [31:0] sourceAddress_in_sig;
reg   [31:0] sourceAddress_preg = 32'b00000000000000000000000000000000;
wire    sourceAddress_ap_vld;
reg    sourceAddress_ap_vld_in_sig;
reg    sourceAddress_ap_vld_preg = 1'b0;
wire   [31:0] destinationAddress;
reg   [31:0] destinationAddress_in_sig;
reg   [31:0] destinationAddress_preg = 32'b00000000000000000000000000000000;
wire    destinationAddress_ap_vld;
reg    destinationAddress_ap_vld_in_sig;
reg    destinationAddress_ap_vld_preg = 1'b0;
wire   [31:0] length_r;
reg   [31:0] length_r_in_sig;
reg   [31:0] length_r_preg = 32'b00000000000000000000000000000000;
wire    length_r_ap_vld;
reg    length_r_ap_vld_in_sig;
reg    length_r_ap_vld_preg = 1'b0;
wire   [31:0] ap_return;
wire   [27:0] tmp_fu_194_p1;
reg   [27:0] tmp_reg_258;
wire   [31:0] read_length_fu_198_p2;
reg   [31:0] read_length_reg_264;
wire   [31:0] i_1_fu_234_p2;
wire   [0:0] tmp_2_fu_228_p2;
reg    ap_sig_bdd_115;
reg    ap_sig_ioackin_out_stream_V_V_TREADY;
reg   [31:0] i_reg_158;
wire   [0:0] write_mover_halt_complete_read_read_fu_123_p2;
reg    ap_sig_ioackin_read_mover_V_V_TREADY;
reg    ap_sig_ioackin_write_mover_V_V_TREADY;
reg   [31:0] sourceAddress_assign_fu_70;
reg    ap_sig_bdd_148;
reg   [31:0] destinationAddress_assign_fu_74;
reg   [31:0] length_assign_fu_78;
reg    read_mover_halt_preg = 1'b0;
wire   [0:0] read_mover_halt_complete_read_read_fu_108_p2;
reg    write_mover_halt_preg = 1'b0;
reg    ap_reg_ioackin_read_mover_V_V_TREADY = 1'b0;
reg    ap_reg_ioackin_write_mover_V_V_TREADY = 1'b0;
reg    ap_reg_ioackin_out_stream_V_V_TREADY = 1'b0;
reg   [2:0] ap_NS_fsm;
reg    ap_sig_bdd_251;
reg    ap_sig_bdd_250;
reg    ap_sig_bdd_155;


test_direct_dma_AXILiteS_s_axi #(
    .C_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
test_direct_dma_AXILiteS_s_axi_U(
    .AWVALID( s_axi_AXILiteS_AWVALID ),
    .AWREADY( s_axi_AXILiteS_AWREADY ),
    .AWADDR( s_axi_AXILiteS_AWADDR ),
    .WVALID( s_axi_AXILiteS_WVALID ),
    .WREADY( s_axi_AXILiteS_WREADY ),
    .WDATA( s_axi_AXILiteS_WDATA ),
    .WSTRB( s_axi_AXILiteS_WSTRB ),
    .ARVALID( s_axi_AXILiteS_ARVALID ),
    .ARREADY( s_axi_AXILiteS_ARREADY ),
    .ARADDR( s_axi_AXILiteS_ARADDR ),
    .RVALID( s_axi_AXILiteS_RVALID ),
    .RREADY( s_axi_AXILiteS_RREADY ),
    .RDATA( s_axi_AXILiteS_RDATA ),
    .RRESP( s_axi_AXILiteS_RRESP ),
    .BVALID( s_axi_AXILiteS_BVALID ),
    .BREADY( s_axi_AXILiteS_BREADY ),
    .BRESP( s_axi_AXILiteS_BRESP ),
    .ACLK( ap_clk ),
    .ARESETN( ap_rst_n ),
    .ap_start( ap_start ),
    .interrupt( interrupt ),
    .ap_ready( ap_ready ),
    .ap_done( ap_done ),
    .ap_idle( ap_idle ),
    .ap_return( ap_return ),
    .sourceAddress( sourceAddress ),
    .sourceAddress_ap_vld( sourceAddress_ap_vld ),
    .destinationAddress( destinationAddress ),
    .destinationAddress_ap_vld( destinationAddress_ap_vld ),
    .length_r( length_r ),
    .length_r_ap_vld( length_r_ap_vld )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst_n == 1'b0) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_reg_ioackin_out_stream_V_V_TREADY assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ioackin_out_stream_V_V_TREADY
    if (ap_rst_n == 1'b0) begin
        ap_reg_ioackin_out_stream_V_V_TREADY <= ap_const_logic_0;
    end else begin
        if (ap_sig_bdd_250) begin
            if (~(ap_sig_bdd_115 | (~(tmp_2_fu_228_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_out_stream_V_V_TREADY)))) begin
                ap_reg_ioackin_out_stream_V_V_TREADY <= ap_const_logic_0;
            end else if (ap_sig_bdd_251) begin
                ap_reg_ioackin_out_stream_V_V_TREADY <= ap_const_logic_1;
            end
        end
    end
end

/// ap_reg_ioackin_read_mover_V_V_TREADY assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ioackin_read_mover_V_V_TREADY
    if (ap_rst_n == 1'b0) begin
        ap_reg_ioackin_read_mover_V_V_TREADY <= ap_const_logic_0;
    end else begin
        if (ap_sig_bdd_155) begin
            if (~((~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_sig_ioackin_read_mover_V_V_TREADY)) | (~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_sig_ioackin_write_mover_V_V_TREADY)))) begin
                ap_reg_ioackin_read_mover_V_V_TREADY <= ap_const_logic_0;
            end else if ((ap_const_logic_1 == read_mover_V_V_TREADY)) begin
                ap_reg_ioackin_read_mover_V_V_TREADY <= ap_const_logic_1;
            end
        end
    end
end

/// ap_reg_ioackin_write_mover_V_V_TREADY assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ioackin_write_mover_V_V_TREADY
    if (ap_rst_n == 1'b0) begin
        ap_reg_ioackin_write_mover_V_V_TREADY <= ap_const_logic_0;
    end else begin
        if (ap_sig_bdd_155) begin
            if (~((~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_sig_ioackin_read_mover_V_V_TREADY)) | (~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_sig_ioackin_write_mover_V_V_TREADY)))) begin
                ap_reg_ioackin_write_mover_V_V_TREADY <= ap_const_logic_0;
            end else if ((ap_const_logic_1 == write_mover_V_V_TREADY)) begin
                ap_reg_ioackin_write_mover_V_V_TREADY <= ap_const_logic_1;
            end
        end
    end
end

/// destinationAddress_ap_vld_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_destinationAddress_ap_vld_preg
    if (ap_rst_n == 1'b0) begin
        destinationAddress_ap_vld_preg <= ap_const_logic_0;
    end else begin
        if (((ap_ST_st5_fsm_4 == ap_CS_fsm) & (tmp_2_fu_228_p2 == ap_const_lv1_0) & ~(ap_sig_bdd_115 | (~(tmp_2_fu_228_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_out_stream_V_V_TREADY))))) begin
            destinationAddress_ap_vld_preg <= ap_const_logic_0;
        end else if ((~((ap_ST_st1_fsm_0 == ap_CS_fsm) & (ap_const_logic_0 == ap_start)) & (ap_const_logic_1 == destinationAddress_ap_vld))) begin
            destinationAddress_ap_vld_preg <= destinationAddress_ap_vld;
        end
    end
end

/// destinationAddress_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_destinationAddress_preg
    if (ap_rst_n == 1'b0) begin
        destinationAddress_preg <= ap_const_lv32_0;
    end else begin
        if ((~((ap_ST_st1_fsm_0 == ap_CS_fsm) & (ap_const_logic_0 == ap_start)) & (ap_const_logic_1 == destinationAddress_ap_vld))) begin
            destinationAddress_preg <= destinationAddress;
        end
    end
end

/// length_r_ap_vld_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_length_r_ap_vld_preg
    if (ap_rst_n == 1'b0) begin
        length_r_ap_vld_preg <= ap_const_logic_0;
    end else begin
        if (((ap_ST_st5_fsm_4 == ap_CS_fsm) & (tmp_2_fu_228_p2 == ap_const_lv1_0) & ~(ap_sig_bdd_115 | (~(tmp_2_fu_228_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_out_stream_V_V_TREADY))))) begin
            length_r_ap_vld_preg <= ap_const_logic_0;
        end else if ((~((ap_ST_st1_fsm_0 == ap_CS_fsm) & (ap_const_logic_0 == ap_start)) & (ap_const_logic_1 == length_r_ap_vld))) begin
            length_r_ap_vld_preg <= length_r_ap_vld;
        end
    end
end

/// length_r_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_length_r_preg
    if (ap_rst_n == 1'b0) begin
        length_r_preg <= ap_const_lv32_0;
    end else begin
        if ((~((ap_ST_st1_fsm_0 == ap_CS_fsm) & (ap_const_logic_0 == ap_start)) & (ap_const_logic_1 == length_r_ap_vld))) begin
            length_r_preg <= length_r;
        end
    end
end

/// read_mover_halt_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_read_mover_halt_preg
    if (ap_rst_n == 1'b0) begin
        read_mover_halt_preg <= ap_const_logic_0;
    end else begin
        if (((ap_ST_st3_fsm_2 == ap_CS_fsm) & (ap_const_lv1_0 == read_mover_halt_complete_read_read_fu_108_p2))) begin
            read_mover_halt_preg <= ap_const_lv1_0;
        end else if ((ap_ST_st2_fsm_1 == ap_CS_fsm)) begin
            read_mover_halt_preg <= ap_const_lv1_1;
        end
    end
end

/// sourceAddress_ap_vld_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_sourceAddress_ap_vld_preg
    if (ap_rst_n == 1'b0) begin
        sourceAddress_ap_vld_preg <= ap_const_logic_0;
    end else begin
        if (((ap_ST_st5_fsm_4 == ap_CS_fsm) & (tmp_2_fu_228_p2 == ap_const_lv1_0) & ~(ap_sig_bdd_115 | (~(tmp_2_fu_228_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_out_stream_V_V_TREADY))))) begin
            sourceAddress_ap_vld_preg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == sourceAddress_ap_vld) & ~((ap_ST_st1_fsm_0 == ap_CS_fsm) & (ap_const_logic_0 == ap_start)))) begin
            sourceAddress_ap_vld_preg <= sourceAddress_ap_vld;
        end
    end
end

/// sourceAddress_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_sourceAddress_preg
    if (ap_rst_n == 1'b0) begin
        sourceAddress_preg <= ap_const_lv32_0;
    end else begin
        if (((ap_const_logic_1 == sourceAddress_ap_vld) & ~((ap_ST_st1_fsm_0 == ap_CS_fsm) & (ap_const_logic_0 == ap_start)))) begin
            sourceAddress_preg <= sourceAddress;
        end
    end
end

/// write_mover_halt_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_write_mover_halt_preg
    if (ap_rst_n == 1'b0) begin
        write_mover_halt_preg <= ap_const_logic_0;
    end else begin
        if (((ap_ST_st4_fsm_3 == ap_CS_fsm) & (ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & ~((~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_sig_ioackin_read_mover_V_V_TREADY)) | (~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_sig_ioackin_write_mover_V_V_TREADY))))) begin
            write_mover_halt_preg <= ap_const_lv1_0;
        end else if (((ap_ST_st3_fsm_2 == ap_CS_fsm) & ~(ap_const_lv1_0 == read_mover_halt_complete_read_read_fu_108_p2))) begin
            write_mover_halt_preg <= ap_const_lv1_1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st5_fsm_4 == ap_CS_fsm) & ~(tmp_2_fu_228_p2 == ap_const_lv1_0) & ~(ap_sig_bdd_115 | (~(tmp_2_fu_228_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_out_stream_V_V_TREADY))))) begin
        i_reg_158 <= i_1_fu_234_p2;
    end else if (((ap_ST_st4_fsm_3 == ap_CS_fsm) & ~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & ~((~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_sig_ioackin_read_mover_V_V_TREADY)) | (~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_sig_ioackin_write_mover_V_V_TREADY))))) begin
        i_reg_158 <= ap_const_lv32_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~ap_sig_bdd_148)) begin
        destinationAddress_assign_fu_74 <= destinationAddress_in_sig;
        length_assign_fu_78 <= length_r_in_sig;
        sourceAddress_assign_fu_70 <= sourceAddress_in_sig;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st2_fsm_1 == ap_CS_fsm)) begin
        read_length_reg_264[4] <= read_length_fu_198_p2[4];
read_length_reg_264[5] <= read_length_fu_198_p2[5];
read_length_reg_264[6] <= read_length_fu_198_p2[6];
read_length_reg_264[7] <= read_length_fu_198_p2[7];
read_length_reg_264[8] <= read_length_fu_198_p2[8];
read_length_reg_264[9] <= read_length_fu_198_p2[9];
read_length_reg_264[10] <= read_length_fu_198_p2[10];
read_length_reg_264[11] <= read_length_fu_198_p2[11];
read_length_reg_264[12] <= read_length_fu_198_p2[12];
read_length_reg_264[13] <= read_length_fu_198_p2[13];
read_length_reg_264[14] <= read_length_fu_198_p2[14];
read_length_reg_264[15] <= read_length_fu_198_p2[15];
read_length_reg_264[16] <= read_length_fu_198_p2[16];
read_length_reg_264[17] <= read_length_fu_198_p2[17];
read_length_reg_264[18] <= read_length_fu_198_p2[18];
read_length_reg_264[19] <= read_length_fu_198_p2[19];
read_length_reg_264[20] <= read_length_fu_198_p2[20];
read_length_reg_264[21] <= read_length_fu_198_p2[21];
read_length_reg_264[22] <= read_length_fu_198_p2[22];
read_length_reg_264[23] <= read_length_fu_198_p2[23];
read_length_reg_264[24] <= read_length_fu_198_p2[24];
read_length_reg_264[25] <= read_length_fu_198_p2[25];
read_length_reg_264[26] <= read_length_fu_198_p2[26];
read_length_reg_264[27] <= read_length_fu_198_p2[27];
read_length_reg_264[28] <= read_length_fu_198_p2[28];
read_length_reg_264[29] <= read_length_fu_198_p2[29];
read_length_reg_264[30] <= read_length_fu_198_p2[30];
read_length_reg_264[31] <= read_length_fu_198_p2[31];
        tmp_reg_258 <= tmp_fu_194_p1;
    end
end

/// ap_done assign process. ///
always @ (ap_CS_fsm or tmp_2_fu_228_p2 or ap_sig_bdd_115 or ap_sig_ioackin_out_stream_V_V_TREADY)
begin
    if (((ap_ST_st5_fsm_4 == ap_CS_fsm) & (tmp_2_fu_228_p2 == ap_const_lv1_0) & ~(ap_sig_bdd_115 | (~(tmp_2_fu_228_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_out_stream_V_V_TREADY))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_CS_fsm)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_ST_st1_fsm_0 == ap_CS_fsm))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_CS_fsm or tmp_2_fu_228_p2 or ap_sig_bdd_115 or ap_sig_ioackin_out_stream_V_V_TREADY)
begin
    if (((ap_ST_st5_fsm_4 == ap_CS_fsm) & (tmp_2_fu_228_p2 == ap_const_lv1_0) & ~(ap_sig_bdd_115 | (~(tmp_2_fu_228_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_out_stream_V_V_TREADY))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_ioackin_out_stream_V_V_TREADY assign process. ///
always @ (out_stream_V_V_TREADY or ap_reg_ioackin_out_stream_V_V_TREADY)
begin
    if ((ap_const_logic_0 == ap_reg_ioackin_out_stream_V_V_TREADY)) begin
        ap_sig_ioackin_out_stream_V_V_TREADY = out_stream_V_V_TREADY;
    end else begin
        ap_sig_ioackin_out_stream_V_V_TREADY = ap_const_logic_1;
    end
end

/// ap_sig_ioackin_read_mover_V_V_TREADY assign process. ///
always @ (read_mover_V_V_TREADY or ap_reg_ioackin_read_mover_V_V_TREADY)
begin
    if ((ap_const_logic_0 == ap_reg_ioackin_read_mover_V_V_TREADY)) begin
        ap_sig_ioackin_read_mover_V_V_TREADY = read_mover_V_V_TREADY;
    end else begin
        ap_sig_ioackin_read_mover_V_V_TREADY = ap_const_logic_1;
    end
end

/// ap_sig_ioackin_write_mover_V_V_TREADY assign process. ///
always @ (write_mover_V_V_TREADY or ap_reg_ioackin_write_mover_V_V_TREADY)
begin
    if ((ap_const_logic_0 == ap_reg_ioackin_write_mover_V_V_TREADY)) begin
        ap_sig_ioackin_write_mover_V_V_TREADY = write_mover_V_V_TREADY;
    end else begin
        ap_sig_ioackin_write_mover_V_V_TREADY = ap_const_logic_1;
    end
end

/// destinationAddress_ap_vld_in_sig assign process. ///
always @ (destinationAddress_ap_vld or destinationAddress_ap_vld_preg)
begin
    if ((ap_const_logic_1 == destinationAddress_ap_vld)) begin
        destinationAddress_ap_vld_in_sig = destinationAddress_ap_vld;
    end else begin
        destinationAddress_ap_vld_in_sig = destinationAddress_ap_vld_preg;
    end
end

/// destinationAddress_in_sig assign process. ///
always @ (destinationAddress or destinationAddress_preg or destinationAddress_ap_vld)
begin
    if ((ap_const_logic_1 == destinationAddress_ap_vld)) begin
        destinationAddress_in_sig = destinationAddress;
    end else begin
        destinationAddress_in_sig = destinationAddress_preg;
    end
end

/// in_stream_V_V_TREADY assign process. ///
always @ (ap_CS_fsm or tmp_2_fu_228_p2 or ap_sig_bdd_115 or ap_sig_ioackin_out_stream_V_V_TREADY)
begin
    if (((ap_ST_st5_fsm_4 == ap_CS_fsm) & ~(tmp_2_fu_228_p2 == ap_const_lv1_0) & ~(ap_sig_bdd_115 | (~(tmp_2_fu_228_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_out_stream_V_V_TREADY))))) begin
        in_stream_V_V_TREADY = ap_const_logic_1;
    end else begin
        in_stream_V_V_TREADY = ap_const_logic_0;
    end
end

/// length_r_ap_vld_in_sig assign process. ///
always @ (length_r_ap_vld or length_r_ap_vld_preg)
begin
    if ((ap_const_logic_1 == length_r_ap_vld)) begin
        length_r_ap_vld_in_sig = length_r_ap_vld;
    end else begin
        length_r_ap_vld_in_sig = length_r_ap_vld_preg;
    end
end

/// length_r_in_sig assign process. ///
always @ (length_r or length_r_preg or length_r_ap_vld)
begin
    if ((ap_const_logic_1 == length_r_ap_vld)) begin
        length_r_in_sig = length_r;
    end else begin
        length_r_in_sig = length_r_preg;
    end
end

/// out_stream_V_V_TVALID assign process. ///
always @ (ap_CS_fsm or tmp_2_fu_228_p2 or ap_sig_bdd_115 or ap_reg_ioackin_out_stream_V_V_TREADY)
begin
    if (((ap_ST_st5_fsm_4 == ap_CS_fsm) & ~(tmp_2_fu_228_p2 == ap_const_lv1_0) & ~ap_sig_bdd_115 & (ap_const_logic_0 == ap_reg_ioackin_out_stream_V_V_TREADY))) begin
        out_stream_V_V_TVALID = ap_const_logic_1;
    end else begin
        out_stream_V_V_TVALID = ap_const_logic_0;
    end
end

/// read_mover_V_V_TVALID assign process. ///
always @ (ap_CS_fsm or write_mover_halt_complete_read_read_fu_123_p2 or ap_reg_ioackin_read_mover_V_V_TREADY)
begin
    if (((ap_ST_st4_fsm_3 == ap_CS_fsm) & ~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_reg_ioackin_read_mover_V_V_TREADY))) begin
        read_mover_V_V_TVALID = ap_const_logic_1;
    end else begin
        read_mover_V_V_TVALID = ap_const_logic_0;
    end
end

/// read_mover_halt assign process. ///
always @ (ap_CS_fsm or read_mover_halt_preg or read_mover_halt_complete_read_read_fu_108_p2)
begin
    if (((ap_ST_st3_fsm_2 == ap_CS_fsm) & (ap_const_lv1_0 == read_mover_halt_complete_read_read_fu_108_p2))) begin
        read_mover_halt = ap_const_lv1_0;
    end else if ((ap_ST_st2_fsm_1 == ap_CS_fsm)) begin
        read_mover_halt = ap_const_lv1_1;
    end else begin
        read_mover_halt = read_mover_halt_preg;
    end
end

/// sourceAddress_ap_vld_in_sig assign process. ///
always @ (sourceAddress_ap_vld or sourceAddress_ap_vld_preg)
begin
    if ((ap_const_logic_1 == sourceAddress_ap_vld)) begin
        sourceAddress_ap_vld_in_sig = sourceAddress_ap_vld;
    end else begin
        sourceAddress_ap_vld_in_sig = sourceAddress_ap_vld_preg;
    end
end

/// sourceAddress_in_sig assign process. ///
always @ (sourceAddress or sourceAddress_preg or sourceAddress_ap_vld)
begin
    if ((ap_const_logic_1 == sourceAddress_ap_vld)) begin
        sourceAddress_in_sig = sourceAddress;
    end else begin
        sourceAddress_in_sig = sourceAddress_preg;
    end
end

/// write_mover_V_V_TVALID assign process. ///
always @ (ap_CS_fsm or write_mover_halt_complete_read_read_fu_123_p2 or ap_reg_ioackin_write_mover_V_V_TREADY)
begin
    if (((ap_ST_st4_fsm_3 == ap_CS_fsm) & ~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_reg_ioackin_write_mover_V_V_TREADY))) begin
        write_mover_V_V_TVALID = ap_const_logic_1;
    end else begin
        write_mover_V_V_TVALID = ap_const_logic_0;
    end
end

/// write_mover_halt assign process. ///
always @ (ap_CS_fsm or write_mover_halt_complete_read_read_fu_123_p2 or ap_sig_ioackin_read_mover_V_V_TREADY or ap_sig_ioackin_write_mover_V_V_TREADY or read_mover_halt_complete_read_read_fu_108_p2 or write_mover_halt_preg)
begin
    if (((ap_ST_st4_fsm_3 == ap_CS_fsm) & (ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & ~((~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_sig_ioackin_read_mover_V_V_TREADY)) | (~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_sig_ioackin_write_mover_V_V_TREADY))))) begin
        write_mover_halt = ap_const_lv1_0;
    end else if (((ap_ST_st3_fsm_2 == ap_CS_fsm) & ~(ap_const_lv1_0 == read_mover_halt_complete_read_read_fu_108_p2))) begin
        write_mover_halt = ap_const_lv1_1;
    end else begin
        write_mover_halt = write_mover_halt_preg;
    end
end
always @ (ap_CS_fsm or tmp_2_fu_228_p2 or ap_sig_bdd_115 or ap_sig_ioackin_out_stream_V_V_TREADY or write_mover_halt_complete_read_read_fu_123_p2 or ap_sig_ioackin_read_mover_V_V_TREADY or ap_sig_ioackin_write_mover_V_V_TREADY or ap_sig_bdd_148 or read_mover_halt_complete_read_read_fu_108_p2)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
            if (~ap_sig_bdd_148) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        ap_ST_st2_fsm_1 : 
            ap_NS_fsm = ap_ST_st3_fsm_2;
        ap_ST_st3_fsm_2 : 
            if (~(ap_const_lv1_0 == read_mover_halt_complete_read_read_fu_108_p2)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        ap_ST_st4_fsm_3 : 
            if ((~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & ~((~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_sig_ioackin_read_mover_V_V_TREADY)) | (~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_sig_ioackin_write_mover_V_V_TREADY))))) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else if (((ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & ~((~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_sig_ioackin_read_mover_V_V_TREADY)) | (~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2) & (ap_const_logic_0 == ap_sig_ioackin_write_mover_V_V_TREADY))))) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        ap_ST_st5_fsm_4 : 
            if (((tmp_2_fu_228_p2 == ap_const_lv1_0) & ~(ap_sig_bdd_115 | (~(tmp_2_fu_228_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_out_stream_V_V_TREADY))))) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else if ((~(tmp_2_fu_228_p2 == ap_const_lv1_0) & ~(ap_sig_bdd_115 | (~(tmp_2_fu_228_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_out_stream_V_V_TREADY))))) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        default : 
            ap_NS_fsm = 'bx;
    endcase
end
assign ap_return = read_length_reg_264;

/// ap_sig_bdd_115 assign process. ///
always @ (in_stream_V_V_TVALID or tmp_2_fu_228_p2)
begin
    ap_sig_bdd_115 = ((in_stream_V_V_TVALID == ap_const_logic_0) & ~(tmp_2_fu_228_p2 == ap_const_lv1_0));
end

/// ap_sig_bdd_148 assign process. ///
always @ (ap_start or sourceAddress_ap_vld_in_sig or destinationAddress_ap_vld_in_sig or length_r_ap_vld_in_sig)
begin
    ap_sig_bdd_148 = ((length_r_ap_vld_in_sig == ap_const_logic_0) | (destinationAddress_ap_vld_in_sig == ap_const_logic_0) | (sourceAddress_ap_vld_in_sig == ap_const_logic_0) | (ap_start == ap_const_logic_0));
end

/// ap_sig_bdd_155 assign process. ///
always @ (ap_CS_fsm or write_mover_halt_complete_read_read_fu_123_p2)
begin
    ap_sig_bdd_155 = ((ap_ST_st4_fsm_3 == ap_CS_fsm) & ~(ap_const_lv1_0 == write_mover_halt_complete_read_read_fu_123_p2));
end

/// ap_sig_bdd_250 assign process. ///
always @ (ap_CS_fsm or tmp_2_fu_228_p2)
begin
    ap_sig_bdd_250 = ((ap_ST_st5_fsm_4 == ap_CS_fsm) & ~(tmp_2_fu_228_p2 == ap_const_lv1_0));
end

/// ap_sig_bdd_251 assign process. ///
always @ (out_stream_V_V_TREADY or ap_sig_bdd_115)
begin
    ap_sig_bdd_251 = ((ap_const_logic_1 == out_stream_V_V_TREADY) & ~ap_sig_bdd_115);
end
assign i_1_fu_234_p2 = (i_reg_158 + ap_const_lv32_1);
assign out_stream_V_V_TDATA = in_stream_V_V_TDATA;
assign read_length_fu_198_p2 = length_assign_fu_78 << ap_const_lv32_4;
assign read_mover_V_V_TDATA = {{{{ap_const_lv8_0}, {sourceAddress_assign_fu_70}}, {tmp_reg_258}}, {ap_const_lv4_0}};
assign read_mover_halt_complete_read_read_fu_108_p2 = read_mover_halt_complete;
assign tmp_2_fu_228_p2 = ($signed(i_reg_158) < $signed(length_assign_fu_78)? 1'b1: 1'b0);
assign tmp_fu_194_p1 = length_assign_fu_78[27:0];
assign write_mover_V_V_TDATA = {{{{ap_const_lv8_0}, {destinationAddress_assign_fu_74}}, {tmp_reg_258}}, {ap_const_lv4_0}};
assign write_mover_halt_complete_read_read_fu_123_p2 = write_mover_halt_complete;
always @ (posedge ap_clk)
begin
    read_length_reg_264[3:0] <= 4'b0000;
end



endmodule //test_direct_dma

