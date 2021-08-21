; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-nvcl"

; Function Attrs: convergent noinline norecurse nounwind
define dso_local spir_kernel void @A(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture readonly %b, float addrspace(1)* readnone %c, i32 %d) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #5
  %sext = shl i64 %call, 32
  %conv1 = ashr exact i64 %sext, 32
  %0 = inttoptr i64 %conv1 to float addrspace(1)*
  %cmp = icmp ult float addrspace(1)* %0, %c
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds float, float addrspace(1)* %a, i64 %conv1
  store float 0.000000e+00, float addrspace(1)* %arrayidx, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @_Z7barrierj(i32 1) #6
  %call3 = tail call i64 @_Z15get_global_sizej(i32 0) #5
  %sext19 = shl i64 %call3, 32
  %idxprom5 = ashr exact i64 %sext19, 32
  %arrayidx6 = getelementptr inbounds float, float addrspace(1)* %b, i64 %idxprom5
  %1 = load float, float addrspace(1)* %arrayidx6, align 4, !tbaa !9
  %add = fadd float %1, %1
  %arrayidx10 = getelementptr inbounds float, float addrspace(1)* %a, i64 %idxprom5
  store float %add, float addrspace(1)* %arrayidx10, align 4, !tbaa !9
  ret void
}

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #1

; Function Attrs: convergent mustprogress nofree nounwind readnone willreturn
declare dso_local i64 @_Z15get_global_sizej(i32) local_unnamed_addr #2

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i64 @_Z12get_group_idj(i32 %dim) local_unnamed_addr #3 {
entry:
  switch i32 %dim, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %conv = sext i32 %0 to i64
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  %conv2 = sext i32 %1 to i64
  br label %return

sw.bb3:                                           ; preds = %entry
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.z()
  %conv4 = sext i32 %2 to i64
  br label %return

return:                                           ; preds = %entry, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i64 [ %conv4, %sw.bb3 ], [ %conv2, %sw.bb1 ], [ %conv, %sw.bb ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #4

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.y() #4

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.z() #4

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i64 @_Z14get_local_sizej(i32 %dim) local_unnamed_addr #3 {
entry:
  switch i32 %dim, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %conv = sext i32 %0 to i64
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %conv2 = sext i32 %1 to i64
  br label %return

sw.bb3:                                           ; preds = %entry
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.z()
  %conv4 = sext i32 %2 to i64
  br label %return

return:                                           ; preds = %entry, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i64 [ %conv4, %sw.bb3 ], [ %conv2, %sw.bb1 ], [ %conv, %sw.bb ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #4

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.y() #4

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.z() #4

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i64 @_Z12get_local_idj(i32 %dim) local_unnamed_addr #3 {
entry:
  switch i32 %dim, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %conv = sext i32 %0 to i64
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %conv2 = sext i32 %1 to i64
  br label %return

sw.bb3:                                           ; preds = %entry
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.z()
  %conv4 = sext i32 %2 to i64
  br label %return

return:                                           ; preds = %entry, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i64 [ %conv4, %sw.bb3 ], [ %conv2, %sw.bb1 ], [ %conv, %sw.bb ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #4

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.y() #4

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.z() #4

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i64 @_Z14get_num_groupsj(i32 %dim) local_unnamed_addr #3 {
entry:
  switch i32 %dim, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x()
  %conv = sext i32 %0 to i64
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.y()
  %conv2 = sext i32 %1 to i64
  br label %return

sw.bb3:                                           ; preds = %entry
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.z()
  %conv4 = sext i32 %2 to i64
  br label %return

return:                                           ; preds = %entry, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i64 [ %conv4, %sw.bb3 ], [ %conv2, %sw.bb1 ], [ %conv, %sw.bb ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #4

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.nctaid.y() #4

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.nctaid.z() #4

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i64 @_Z13get_global_idj(i32 %dim) local_unnamed_addr #3 {
entry:
  switch i32 %dim, label %_Z12get_group_idj.exit [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %entry
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #7
  %conv.i = sext i32 %0 to i64
  br label %_Z12get_group_idj.exit

sw.bb1.i:                                         ; preds = %entry
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.y() #7
  %conv2.i = sext i32 %1 to i64
  br label %_Z12get_group_idj.exit

sw.bb3.i:                                         ; preds = %entry
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.z() #7
  %conv4.i = sext i32 %2 to i64
  br label %_Z12get_group_idj.exit

_Z12get_group_idj.exit:                           ; preds = %entry, %sw.bb.i, %sw.bb1.i, %sw.bb3.i
  %retval.0.i = phi i64 [ %conv4.i, %sw.bb3.i ], [ %conv2.i, %sw.bb1.i ], [ %conv.i, %sw.bb.i ], [ 0, %entry ]
  switch i32 %dim, label %_Z14get_local_sizej.exit [
    i32 0, label %sw.bb.i6
    i32 1, label %sw.bb1.i8
    i32 2, label %sw.bb3.i10
  ]

sw.bb.i6:                                         ; preds = %_Z12get_group_idj.exit
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #7
  %conv.i5 = sext i32 %3 to i64
  br label %_Z14get_local_sizej.exit

sw.bb1.i8:                                        ; preds = %_Z12get_group_idj.exit
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.y() #7
  %conv2.i7 = sext i32 %4 to i64
  br label %_Z14get_local_sizej.exit

sw.bb3.i10:                                       ; preds = %_Z12get_group_idj.exit
  %5 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.z() #7
  %conv4.i9 = sext i32 %5 to i64
  br label %_Z14get_local_sizej.exit

_Z14get_local_sizej.exit:                         ; preds = %_Z12get_group_idj.exit, %sw.bb.i6, %sw.bb1.i8, %sw.bb3.i10
  %retval.0.i11 = phi i64 [ %conv4.i9, %sw.bb3.i10 ], [ %conv2.i7, %sw.bb1.i8 ], [ %conv.i5, %sw.bb.i6 ], [ 0, %_Z12get_group_idj.exit ]
  switch i32 %dim, label %_Z12get_local_idj.exit [
    i32 0, label %sw.bb.i13
    i32 1, label %sw.bb1.i15
    i32 2, label %sw.bb3.i17
  ]

sw.bb.i13:                                        ; preds = %_Z14get_local_sizej.exit
  %6 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #7
  %conv.i12 = sext i32 %6 to i64
  br label %_Z12get_local_idj.exit

sw.bb1.i15:                                       ; preds = %_Z14get_local_sizej.exit
  %7 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.y() #7
  %conv2.i14 = sext i32 %7 to i64
  br label %_Z12get_local_idj.exit

sw.bb3.i17:                                       ; preds = %_Z14get_local_sizej.exit
  %8 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.z() #7
  %conv4.i16 = sext i32 %8 to i64
  br label %_Z12get_local_idj.exit

_Z12get_local_idj.exit:                           ; preds = %_Z14get_local_sizej.exit, %sw.bb.i13, %sw.bb1.i15, %sw.bb3.i17
  %retval.0.i18 = phi i64 [ %conv4.i16, %sw.bb3.i17 ], [ %conv2.i14, %sw.bb1.i15 ], [ %conv.i12, %sw.bb.i13 ], [ 0, %_Z14get_local_sizej.exit ]
  %mul = mul nsw i64 %retval.0.i11, %retval.0.i
  %add = add nsw i64 %retval.0.i18, %mul
  ret i64 %add
}

attributes #0 = { convergent noinline norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx32,+sm_20" "uniform-work-group-size"="false" }
attributes #1 = { convergent "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx32,+sm_20" }
attributes #2 = { convergent mustprogress nofree nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx32,+sm_20" }
attributes #3 = { alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+ptx32,+sm_20" }
attributes #4 = { nounwind readnone }
attributes #5 = { convergent nounwind readnone willreturn }
attributes #6 = { convergent nounwind }
attributes #7 = { nounwind }

!nvvm.annotations = !{!0}
!opencl.ocl.version = !{!1, !1}
!llvm.ident = !{!2, !2}
!llvm.module.flags = !{!3, !4}

!0 = !{void (float addrspace(1)*, float addrspace(1)*, float addrspace(1)*, i32)* @A, !"kernel", i32 1}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 13.0.0 (/hdd/abhinav/llvm-project/clang e2559e5dc62445a92a9a5344db79f78f735e1e61)"}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 1, i32 1, i32 1, i32 0}
!6 = !{!"none", !"none", !"none", !"none"}
!7 = !{!"float*", !"float*", !"float*", !"int"}
!8 = !{!"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
