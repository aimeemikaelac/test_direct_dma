; ModuleID = '/D/xilinx_workspace/test_direct_dma/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str4 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [16 x i8] c"test_direct_dma\00"

define i32 @test_direct_dma(i72* %read_mover_V_V, i72* %write_mover_V_V, i128* %in_stream_V_V, i128* %out_stream_V_V, i32 %sourceAddress, i32 %destinationAddress, i32 %length_r, i1* %read_mover_halt, i1* %read_mover_halt_complete, i1* %write_mover_halt, i1* %write_mover_halt_complete) {
  call void (...)* @_ssdm_op_SpecBitsMap(i72* %read_mover_V_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i72* %write_mover_V_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %in_stream_V_V), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %out_stream_V_V), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %sourceAddress), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %destinationAddress), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %length_r), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %read_mover_halt), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %read_mover_halt_complete), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %write_mover_halt), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %write_mover_halt_complete), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !53
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @str) nounwind
  %length_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %length_r)
  %destinationAddress_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %destinationAddress)
  %sourceAddress_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %sourceAddress)
  %sourceAddress_assign = alloca i32, align 4
  %destinationAddress_assign = alloca i32, align 4
  %length_assign = alloca i32, align 4
  store volatile i32 %sourceAddress_read, i32* %sourceAddress_assign, align 4
  store volatile i32 %destinationAddress_read, i32* %destinationAddress_assign, align 4
  store volatile i32 %length_read, i32* %length_assign, align 4
  call void (...)* @_ssdm_op_SpecWire(i1* %write_mover_halt_complete, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %write_mover_halt, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %read_mover_halt_complete, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %read_mover_halt, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i72* %write_mover_V_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i72* %read_mover_V_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %length_r, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %length_r, [7 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %destinationAddress, [7 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %sourceAddress, [7 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i128* %out_stream_V_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i128* %in_stream_V_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %destinationAddress, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %sourceAddress, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %sourceOffset_0 = load volatile i32* %sourceAddress_assign, align 4
  %destOffset_0 = load volatile i32* %destinationAddress_assign, align 4
  %length_assign_load = load volatile i32* %length_assign, align 4
  %tmp = trunc i32 %length_assign_load to i28
  %read_length = shl i32 %length_assign_load, 4
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %read_mover_halt, i1 true)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %read_mover_halt_complete_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %read_mover_halt_complete)
  br i1 %read_mover_halt_complete_read, label %3, label %2

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %read_mover_halt, i1 false)
  br label %1

; <label>:3                                       ; preds = %1
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %write_mover_halt, i1 true)
  br label %4

; <label>:4                                       ; preds = %5, %3
  %write_mover_halt_complete_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %write_mover_halt_complete)
  br i1 %write_mover_halt_complete_read, label %6, label %5

; <label>:5                                       ; preds = %4
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %write_mover_halt, i1 false)
  br label %4

; <label>:6                                       ; preds = %4
  %p_Repl2_1 = load volatile i32* %sourceAddress_assign, align 4
  %p_Result_s = call i72 @_ssdm_op_BitConcatenate.i72.i8.i32.i28.i4(i8 0, i32 %p_Repl2_1, i28 %tmp, i4 0)
  call void @_ssdm_op_Write.axis.volatile.i72P(i72* %read_mover_V_V, i72 %p_Result_s)
  %p_Repl2_2 = load volatile i32* %destinationAddress_assign, align 4
  %p_Result_1 = call i72 @_ssdm_op_BitConcatenate.i72.i8.i32.i28.i4(i8 0, i32 %p_Repl2_2, i28 %tmp, i4 0)
  call void @_ssdm_op_Write.axis.volatile.i72P(i72* %write_mover_V_V, i72 %p_Result_1)
  br label %7

; <label>:7                                       ; preds = %8, %6
  %i = phi i32 [ 0, %6 ], [ %i_1, %8 ]
  %length_assign_load_1 = load volatile i32* %length_assign, align 4
  %tmp_2 = icmp slt i32 %i, %length_assign_load_1
  %i_1 = add nsw i32 %i, 1
  br i1 %tmp_2, label %8, label %9

; <label>:8                                       ; preds = %7
  %tmp_V_2 = call i128 @_ssdm_op_Read.axis.volatile.i128P(i128* %in_stream_V_V)
  call void @_ssdm_op_Write.axis.volatile.i128P(i128* %out_stream_V_V, i128 %tmp_V_2)
  br label %7

; <label>:9                                       ; preds = %7
  ret i32 %read_length
}

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak i72 @_ssdm_op_BitConcatenate.i72.i8.i32.i28.i4(i8, i32, i28, i4) nounwind readnone {
entry:
  %empty = zext i28 %2 to i32
  %empty_17 = zext i4 %3 to i32
  %empty_18 = trunc i32 %empty to i28
  %empty_19 = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %empty_17, i32 4, i32 31)
  %empty_20 = or i28 %empty_18, %empty_19
  %empty_21 = call i32 @_ssdm_op_PartSet.i32.i32.i28.i32.i32(i32 %empty_17, i28 %empty_20, i32 4, i32 31)
  %empty_22 = zext i32 %1 to i64
  %empty_23 = zext i32 %empty_21 to i64
  %empty_24 = trunc i64 %empty_22 to i32
  %empty_25 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %empty_23, i32 32, i32 63)
  %empty_26 = or i32 %empty_24, %empty_25
  %empty_27 = call i64 @_ssdm_op_PartSet.i64.i64.i32.i32.i32(i64 %empty_23, i32 %empty_26, i32 32, i32 63)
  %empty_28 = zext i8 %0 to i72
  %empty_29 = zext i64 %empty_27 to i72
  %empty_30 = trunc i72 %empty_28 to i8
  %empty_31 = call i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72 %empty_29, i32 64, i32 71)
  %empty_32 = or i8 %empty_30, %empty_31
  %empty_33 = call i72 @_ssdm_op_PartSet.i72.i72.i8.i32.i32(i72 %empty_29, i8 %empty_32, i32 64, i32 71)
  ret i72 %empty_33
}

define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

define weak void @_ssdm_op_Write.ap_none.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak void @_ssdm_op_Write.axis.volatile.i72P(i72*, i72) {
entry:
  store i72 %1, i72* %0
  ret void
}

define weak i128 @_ssdm_op_Read.axis.volatile.i128P(i128*) {
entry:
  %empty = load i128* %0
  ret i128 %empty
}

define weak void @_ssdm_op_Write.axis.volatile.i128P(i128*, i128) {
entry:
  store i128 %1, i128* %0
  ret void
}

define weak i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_34 = trunc i32 %empty to i28
  ret i28 %empty_34
}

declare i32 @_ssdm_op_BitConcatenate.i32.i28.i4(i28, i4) nounwind readnone

define weak i32 @_ssdm_op_PartSet.i32.i32.i28.i32.i32(i32, i28, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i28(i32 %0, i28 %1, i32 %2, i32 %3)
  ret i32 %empty
}

define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_35 = trunc i64 %empty to i32
  ret i32 %empty_35
}

define weak i64 @_ssdm_op_PartSet.i64.i64.i32.i32.i32(i64, i32, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.set.i64.i32(i64 %0, i32 %1, i32 %2, i32 %3)
  ret i64 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72, i32, i32) nounwind readnone {
entry:
  %empty = call i72 @llvm.part.select.i72(i72 %0, i32 %1, i32 %2)
  %empty_36 = trunc i72 %empty to i8
  ret i8 %empty_36
}

define weak i72 @_ssdm_op_PartSet.i72.i72.i8.i32.i32(i72, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i72 @llvm.part.set.i72.i8(i72 %0, i8 %1, i32 %2, i32 %3)
  ret i72 %empty
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i28(i32, i28, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i64 @llvm.part.set.i64.i32(i64, i32, i32, i32) nounwind readnone

declare i72 @llvm.part.select.i72(i72, i32, i32) nounwind readnone

declare i72 @llvm.part.set.i72.i8(i72, i8, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 71, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"read_mover.V.V", metadata !5, metadata !"uint72"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 71, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"write_mover.V.V", metadata !5, metadata !"uint72"}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 127, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"in_stream.V.V", metadata !5, metadata !"uint128"}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 127, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"out_stream.V.V", metadata !5, metadata !"uint128"}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"sourceAddress", metadata !27, metadata !"unsigned int"}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, i32 0}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"destinationAddress", metadata !27, metadata !"unsigned int"}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"length", metadata !27, metadata !"int"}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 0, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"read_mover_halt", metadata !5, metadata !"bool"}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 0, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"read_mover_halt_complete", metadata !5, metadata !"bool"}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 0, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"write_mover_halt", metadata !5, metadata !"bool"}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 0, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"write_mover_halt_complete", metadata !5, metadata !"bool"}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"return", metadata !57, metadata !"int"}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 1, i32 0}
