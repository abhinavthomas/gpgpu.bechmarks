; ModuleID = '/home/abhinav/gpgpu.bechmarks/temp_src_code.ll'
source_filename = "/home/abhinav/gpgpu.bechmarks/temp_src_code.cl"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-nvcl"

; Function Attrs: convergent mustprogress nofree noinline norecurse nounwind willreturn
define dso_local spir_kernel void @wibble(float addrspace(1)* nocapture readonly %arg, float addrspace(1)* nocapture %arg18, float addrspace(1)* %arg19, i32 %arg20) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
bb:
  %tmp = tail call i64 @hoge(i32 0) #2
  %tmp21 = shl i64 %tmp, 32
  %tmp22 = ashr exact i64 %tmp21, 32
  %tmp23 = inttoptr i64 %tmp22 to float addrspace(1)*
  %tmp24 = icmp ult float addrspace(1)* %tmp23, %arg19
  %tmp25 = getelementptr inbounds float, float addrspace(1)* %arg18, i64 %tmp22
  br i1 %tmp24, label %bb28, label %bb26

bb26:                                             ; preds = %bb
  %tmp27 = load float, float addrspace(1)* %tmp25, align 4, !tbaa !9
  br label %bb29

bb28:                                             ; preds = %bb
  store float 0.000000e+00, float addrspace(1)* %tmp25, align 4, !tbaa !9
  br label %bb29

bb29:                                             ; preds = %bb28, %bb26
  %tmp30 = phi float [ %tmp27, %bb26 ], [ 0.000000e+00, %bb28 ]
  %tmp31 = getelementptr inbounds float, float addrspace(1)* %arg, i64 %tmp22
  %tmp32 = load float, float addrspace(1)* %tmp31, align 4, !tbaa !9
  %tmp33 = fadd float %tmp30, %tmp32
  %tmp34 = getelementptr inbounds float, float addrspace(1)* %arg19, i64 %tmp22
  store float %tmp33, float addrspace(1)* %tmp34, align 4, !tbaa !9
  ret void
}

; Function Attrs: convergent mustprogress nofree nounwind readnone willreturn
declare dso_local i64 @hoge(i32) local_unnamed_addr #1

attributes #0 = { convergent mustprogress nofree noinline norecurse nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx32,+sm_20" "uniform-work-group-size"="false" }
attributes #1 = { convergent mustprogress nofree nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx32,+sm_20" }
attributes #2 = { convergent nounwind readnone willreturn }

!nvvm.annotations = !{!0}
!llvm.module.flags = !{!1, !2}
!opencl.ocl.version = !{!3}
!llvm.ident = !{!4}

!0 = !{void (float addrspace(1)*, float addrspace(1)*, float addrspace(1)*, i32)* @wibble, !"kernel", i32 1}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{i32 2, i32 0}
!4 = !{!"clang version 13.0.0 (/hdd/abhinav/llvm-project/clang e2559e5dc62445a92a9a5344db79f78f735e1e61)"}
!5 = !{i32 1, i32 1, i32 1, i32 0}
!6 = !{!"none", !"none", !"none", !"none"}
!7 = !{!"float*", !"float*", !"float*", !"int"}
!8 = !{!"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
