; ModuleID = '/home/abhinav/gpgpu.bechmarks/temp_src_code.cl'
source_filename = "/home/abhinav/gpgpu.bechmarks/temp_src_code.cl"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-nvcl"

; Function Attrs: convergent mustprogress nofree noinline norecurse nounwind willreturn
define dso_local spir_kernel void @A(float addrspace(1)* nocapture readonly %a, float addrspace(1)* nocapture readnone %b, float addrspace(1)* nocapture %c, i32 %d) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, %d
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add = shl i64 %call, 32
  %sext = add i64 %add, 8589934592
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds float, float addrspace(1)* %c, i64 %idxprom
  %0 = load float, float addrspace(1)* %arrayidx, align 4, !tbaa !9
  %idxprom2 = ashr exact i64 %add, 32
  %arrayidx3 = getelementptr inbounds float, float addrspace(1)* %c, i64 %idxprom2
  %1 = load float, float addrspace(1)* %arrayidx3, align 4, !tbaa !9
  %add4 = fadd float %0, %1
  store float %add4, float addrspace(1)* %arrayidx3, align 4, !tbaa !9
  %arrayidx6 = getelementptr inbounds float, float addrspace(1)* %a, i64 %idxprom2
  %2 = load float, float addrspace(1)* %arrayidx6, align 4, !tbaa !9
  %mul = fmul float %2, %2
  store float %mul, float addrspace(1)* %arrayidx3, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: convergent mustprogress nofree nounwind readnone willreturn
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

attributes #0 = { convergent mustprogress nofree noinline norecurse nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+ptx32,+sm_20" "uniform-work-group-size"="false" }
attributes #1 = { convergent mustprogress nofree nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+ptx32,+sm_20" }
attributes #2 = { convergent nounwind readnone willreturn }

!nvvm.annotations = !{!0}
!llvm.module.flags = !{!1, !2}
!opencl.ocl.version = !{!3}
!llvm.ident = !{!4}

!0 = !{void (float addrspace(1)*, float addrspace(1)*, float addrspace(1)*, i32)* @A, !"kernel", i32 1}
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
