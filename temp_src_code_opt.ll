; ModuleID = '/home/abhinav/gpgpu.bechmarks/temp_src_code.ll'
source_filename = "/home/abhinav/gpgpu.bechmarks/temp_src_code.cl"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-nvcl"

@_llvm_order_file_buffer = linkonce_odr global [131072 x i64] zeroinitializer, section "__llvm_orderfile"
@_llvm_order_file_buffer_idx = linkonce_odr global i32 0
@bitmap_0 = private global [0 x i8] zeroinitializer

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 13.0.0 (/hdd/abhinav/llvm-project/clang e2559e5dc62445a92a9a5344db79f78f735e1e61)"}
